import io
import json
import requests
import webbrowser 

# How to use?
# 1. Save an image and place it in the same directory as the script.
# 2. Run this python script (Installing required dependencies if needed.)
# 3. Authorize the url that opens (Log into rec.net if you havent yet.)
# 4. Press enter to continue.
# 5. Enter the image name you saved.
# 6. The image link will be printed into the console if successful.

def readfile(path):
    with open(path, 'rb') as file:
        return io.BytesIO(file.read())

def upload(token,filename):
    url = "https://accounts.rec.net/account/me/bannerimage"
    json_data = {
        "playerIds": [],
        "savedImageType": 1,
        "roomId": 1,
        "playerEventId": 0,
        "accessibility": 1
    }
    headers = {
        "Authorization": f"Bearer {token}",
        "User-Agent": "BestHTTP"
    }

    filee = readfile(filename)
    files = {
        "imgMeta": (None, json.dumps(json_data), "application/json"),
        "image": ("file.bin", filee, "image/jpeg")
    }

    response = requests.post(url, headers=headers, files=files)
    if response.status_code != 200:
        print(f"Error: {response.status_code}")
        return {"ImageName": "1"}
    else:
        print("The request was successful.")
        return response.json()


url = "https://auth.rec.net/connect/deviceauthorization"
payload = {'client_id': 'recroom.studio', 'client_secret': "54oc5C4BH7jpqp42KhChkNZOLP0U3yTx"}
headers = {
    'Accept': 'application/json',
    'Content-Type': 'application/x-www-form-urlencoded',
    'User-Agent':'BestHTTP'
}   
response = requests.post(url, data=payload, headers=headers)
data = response.json()

devicecode = data["device_code"]
askauthurl = data["verification_uri_complete"]

webbrowser.open(askauthurl)

input("Press any key to continue.")

authurl = "https://auth.rec.net/connect/token"

authpayload = {
    'client_id': 'recroom.studio',
    'client_secret': '54oc5C4BH7jpqp42KhChkNZOLP0U3yTx',
    'grant_type': 'urn:ietf:params:oauth:grant-type:device_code',
    'device_code': devicecode,
}
response = requests.post(authurl, data=authpayload, headers=headers)
authdata = response.json()

token = authdata["access_token"]

response = upload(token,input("Image File Name: "))

if response["ImageName"]=="1":
    print("The upload has failed.")
else:
    print("https://img.rec.net/"+response["ImageName"])

# this code is like skidded or some shit :skull:
# ass code fr fr! Potato was here