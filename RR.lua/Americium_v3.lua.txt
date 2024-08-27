function AOBRep(search, change)
local aob = AOBScan(search)
if aob then
  for i=0,aob.Count-1 do
    autoAssemble(aob[i]..':\ndb '..change)
  end
  aob.Destroy()
end
end

NepMain = createForm(true)
NepMain.Width = 200
NepMain.Height = 600
NepMain.Color=0x252526
NepMain.Caption="DEBUG"

Fanta = createPanel(NepMain)
Fanta.Caption="Americium v3.0"
Fanta.Width = 120
Fanta.Height = 20
Fanta.Font.Size=12
Fanta.Font.Color=0xe695d3
Fanta.Top = 520
Fanta.Left = 40
Fanta.BevelWidth=0

By = createPanel(NepMain)
By.Caption="made by:"
By.Width = 100
By.Height = 20
By.BevelWidth=0
By.Font.Size=12
By.Font.Color=0xe695d3
By.Top = 540
By.Left = 50

Credits = createPanel(NepMain)
Credits.Caption="neptune#1995"
Credits.Width = 200
Credits.Height = 20
Credits.Font.Size=12
Credits.Font.Color=0xe695d3
Credits.Top = 560
Credits.BevelWidth=0

-- height 45 diff 90 x2
All = createButton(NepMain)
All.Left = 37.5
All.Top = 15
All.Width = 60
All.Height = 40
All.onClick = EnableInv
All.Caption = 'All ON'
All.Color=0xe695d3

AllL = createButton(NepMain)
AllL.Left = 102.5
AllL.Top = 15
AllL.Width = 60
AllL.Height = 40
AllL.onClick = EnableInvL
AllL.Caption = 'All OFF'
AllL.Color=0xe695d3

Inv123 = createButton(NepMain)
Inv123.Left = 37.5
Inv123.Top = 60
Inv123.Width = 60
Inv123.Height = 40
Inv123.onClick = Inv1
Inv123.onClick = Inv2
Inv123.onClick = Inv3
Inv123.Caption = 'Inv123ON'
Inv123.Color=0xe695d3

Inv123L = createButton(NepMain)
Inv123L.Left = 102.5
Inv123L.Top = 60
Inv123L.Width = 60
Inv123L.Height = 40
Inv123L.onClick = Inv1L
Inv123L.onClick = Inv2L
Inv123L.onClick = Inv3L
Inv123L.Caption = 'Inv123OFF'
Inv123L.Color=0xe695d3

Inv321 = createButton(NepMain)
Inv321.Left = 37.5
Inv321.Top = 105
Inv321.Width = 60
Inv321.Height = 40
Inv321.onClick = Inv3
Inv321.onClick = Inv2
Inv321.onClick = Inv1
Inv321.Caption = 'Inv321ON'
Inv321.Color=0xe695d3

Inv321L = createButton(NepMain)
Inv321L.Left = 102.5
Inv321L.Top = 105
Inv321L.Width = 60
Inv321L.Height = 40
Inv321L.onClick = Inv3L
Inv321L.onClick = Inv2L
Inv321L.onClick = Inv1L
Inv321L.Caption = 'Inv321OFF'
Inv321L.Color=0xe695d3

Inv1 = createButton(NepMain)
Inv1.Left = 37.5
Inv1.Top = 150
Inv1.Width = 60
Inv1.Height = 40
Inv1.onClick = Inv1
Inv1.Caption = 'Inv1 ON'
Inv1.Color=0xe695d3

Inv1L = createButton(NepMain)
Inv1L.Left = 102.5
Inv1L.Top = 150
Inv1L.Width = 60
Inv1L.Height = 40
Inv1L.onClick = Inv1L
Inv1L.Caption = 'Inv1 OFF'
Inv1L.Color=0xe695d3

Inv2 = createButton(NepMain)
Inv2.Left = 37.5
Inv2.Top = 195
Inv2.Width = 62
Inv2.Height = 40
Inv2.onClick = Inv2
Inv2.Caption = 'Inv2 ON'
Inv2.Color=0xe695d3

Inv1L = createButton(NepMain)
Inv1L.Left = 102.5
Inv1L.Top = 195
Inv1L.Width = 60
Inv1L.Height = 40
Inv1L.onClick = Inv2L
Inv1L.Caption = 'Inv2 OFF'
Inv1L.Color=0xe695d3

Inv3 = createButton(NepMain)
Inv3.Left = 37.5
Inv3.Top = 240
Inv3.Width = 62
Inv3.Height = 40
Inv3.onClick = Inv3
Inv3.Caption = 'Inv3 ON'
Inv3.Color=0xe695d3

Inv3L = createButton(NepMain)
Inv3L.Left = 102.5
Inv3L.Top = 240
Inv3L.Width = 60
Inv3L.Height = 40
Inv3L.onClick = Inv3L
Inv3L.Caption = 'Inv3 OFF'
Inv3L.Color=0xe695d3

Fly = createButton(NepMain)
Fly.Left = 37.5
Fly.Top = 285
Fly.Width = 62
Fly.Height = 40
Fly.onClick = Fly
Fly.Caption = 'Fly ON'
Fly.Color=0xe695d3

FlyL = createButton(NepMain)
FlyL.Left = 102.5
FlyL.Top = 285
FlyL.Width = 60
FlyL.Height = 40
FlyL.onClick = FlyL
FlyL.Caption = 'Fly OFF'
FlyL.Color=0xe695d3

Kick = createButton(NepMain)
Kick.Left = 37.5
Kick.Top = 330
Kick.Width = 62
Kick.Height = 40
Kick.onClick = Kick
Kick.Caption = 'Kick ON'
Kick.Color=0xe695d3

KickL = createButton(NepMain)
KickL.Left = 102.5
KickL.Top = 330
KickL.Width = 60
KickL.Height = 40
KickL.onClick = KickL
KickL.Caption = 'Kick OFF'
KickL.Color=0xe695d3

Saveable = createButton(NepMain)
Saveable.Left = 37.5
Saveable.Top = 375
Saveable.Width = 62
Saveable.Height = 40
Saveable.onClick = Saveable
Saveable.Caption = 'Saveable'
Saveable.Color=0xe695d3

SaveableL = createButton(NepMain)
SaveableL.Left = 102.5
SaveableL.Top = 375
SaveableL.Width = 60
SaveableL.Height = 40
SaveableL.onClick = SaveableL
SaveableL.Caption = 'Saveless'
SaveableL.Color=0xe695d3

Test1 = createButton(NepMain)
Test1.Left = 37.5
Test1.Top = 420
Test1.Width = 62
Test1.Height = 40
Test1.onClick = Test1
Test1.Caption = 'Test1 ON'
Test1.Color=0xe695d3

Test1L = createButton(NepMain)
Test1L.Left = 102.5
Test1L.Top = 420
Test1L.Width = 60
Test1L.Height = 40
Test1L.onClick = Test1L
Test1L.Caption = 'Test1 OFF'
Test1L.Color=0xe695d3

Test2 = createButton(NepMain)
Test2.Left = 37.5
Test2.Top = 465
Test2.Width = 62
Test2.Height = 40
Test2.onClick = Test2
Test2.Caption = 'Test2 ON'
Test2.Color=0xe695d3

Test2L = createButton(NepMain)
Test2L.Left = 102.5
Test2L.Top = 465
Test2L.Width = 60
Test2L.Height = 40
Test2L.onClick = Test2L
Test2L.Caption = 'Test2 OFF'
Test2L.Color=0xe695d3

--Enable
function EnableInv()
searchV = '62 00 00 00 01 00 01 00 00 00'
replaceV = '02 00 00 00 01 01 01 00 00 00'
AOBRep(searchV,replaceV)
end
function Inv1()
searchV = '62 00 00 00 01 00 01 00 70 00'
replaceV = '02 00 00 00 01 01 01 00 70 00'
AOBRep(searchV,replaceV)
end
function Inv2()
searchV = '62 00 00 00 01 00 01 00 6D 00'
replaceV = '02 00 00 00 01 01 01 00 6D 00'
AOBRep(searchV,replaceV)
end
function Inv3()
searchV = '62 00 00 00 01 00 01 00 5C 00'
replaceV = '02 00 00 00 01 01 01 00 5C 00'
AOBRep(searchV,replaceV)
end
function Fly()
searchV = '62 00 00 00 01 00 01 00 00 00'
replaceV = '02 00 00 00 01 01 01 00 00 00'
AOBRep(searchV,replaceV)
end
function Kick()
searchV = '1C C8 06 00 01 00 00 00 00 00'
replaceV = '1D C8 06 00 01 00 00 00 01 00'
AOBRep(searchV,replaceV)
end
function Saveable()
searchV = '9A 01 00 00 C0 16 C5 0E 9C 01'
replaceV = '9C 01 00 00 60 DC AF 0E 9C 01'
AOBRep(searchV,replaceV)
searchV = '01 00 00 00 00 00 00 00 60 A9'
replaceV = '00 00 00 00 00 00 00 00 60 A9'
AOBRep(searchV,replaceV)
end
function Test1()
searchV = '62 00 00 00 01 00 01 00 38 00'
replaceV = '02 00 00 00 01 01 01 00 38 00'
AOBRep(searchV,replaceV)
searchV = '62 00 00 00 01 00 01 00 38 00'
replaceV = '01 01 01 00 38 00 30 00 34 00'
AOBRep(searchV,replaceV)
end
function Test2()
searchV = '02 00 00 00 01 01 01 00 00 00'
replaceV = '62 00 00 00 01 00 01 00 00 00'
AOBRep(searchV,replaceV)
searchV = '01 01 01 00 00 00 00 00 00 00'
replaceV = '01 00 01 00 00 00 00 00 00 00'
AOBRep(searchV,replaceV)
end

--Reverse
function EnableInvL()
searchV = '02 00 00 00 01 01 01 00 00 00'
replaceV = '62 00 00 00 01 00 01 00 00 00'
AOBRep(searchV,replaceV)
end
function Inv1L()
searchV = '62 00 00 00 01 00 01 00 00 00'
replaceV = '02 00 00 00 01 01 01 00 00 00'
AOBRep(searchV,replaceV)
end
function Inv2L()
searchV = '02 00 00 00 01 01 01 00 6D 00'
replaceV = '62 00 00 00 01 00 01 00 6D 00'
AOBRep(searchV,replaceV)
end
function Inv3L()
searchV = '02 00 00 00 01 01 01 00 5C 00'
replaceV = '62 00 00 00 01 00 01 00 5C 00'
AOBRep(searchV,replaceV)
end
function FlyL()
searchV = '02 00 00 00 01 01 01 00 00 00'
replaceV = '62 00 00 00 01 00 01 00 00 00'
AOBRep(searchV,replaceV)
end
function KickL()
searchV = '1D C8 06 00 01 00 00 00 01 00'
replaceV = '1C C8 06 00 01 00 00 00 00 00'
AOBRep(searchV,replaceV)
end
function SaveableL()
searchV = '9C 01 00 00 60 DC AF 0E 9C 01'
replaceV = '9A 01 00 00 C0 16 C5 0E 9C 01'
AOBRep(searchV,replaceV)
searchV = '00 00 00 00 00 00 00 00 60 A9'
replaceV = '01 00 00 00 00 00 00 00 60 A9'
AOBRep(searchV,replaceV)
end
function Test1L()
searchV = '02 00 00 00 01 01 01 00 38 00'
replaceV = '62 00 00 00 01 00 01 00 38 00'
AOBRep(searchV,replaceV)
searchV = '01 01 01 00 38 00 30 00 34 00'
replaceV = '62 00 00 00 01 00 01 00 38 00'
AOBRep(searchV,replaceV)
end
function Test2L()
searchV = '62 00 00 00 01 00 01 00 00 00'
replaceV = '02 00 00 00 01 01 01 00 00 00'
AOBRep(searchV,replaceV)
searchV = '01 00 01 00 00 00 00 00 00 00'
replaceV = '01 01 01 00 00 00 00 00 00 00'
AOBRep(searchV,replaceV)
end