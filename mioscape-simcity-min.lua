local a=gg.getTargetInfo()["x64"]if a==false then ArchInfoResult=32 end;if a==true then ArchInfoResult=64 end;local b="1.53.7.122261"local c="0.11.0-dev"local d="[SimCity BuildIt "..b.." "..ArchInfoResult.." bit | Mioscape SimCity v"..c.."]"if gg.getTargetInfo().versionName==b then else gg.alert("WARNING: Game update detected. This script is made for SimCity BuildIt "..b.." only. Some pointers cant be work! Be carefully.")end;local e="-1935981107"local f="-7995824390300544013"local g="-7992622555426941375"local h="925375395"local i="612373322"local j="751144117"local k="139346164"local l="182280403"local m="-741284489"local n="583140736"local o="-1470979549"local p="-1568621139"local q="-278168705"local r="960415804"local s="43959869"local t="4635382469820688998"local u="-3527480595996367819"local v="0x60"local w="0x40"local x="-1881032548"local y="-447372290"local z="-691412735"local A="1813794920"local B="-113962678"local C="-1999290445"local D="995463179"local E="1522778650"local F="-537490833"local G="1920513178"local H="2050186616"local I="-1203406301"local J="-1562421476"local K="1493262871"local L="-1430868908"local M="973877747"local N="-1528167776"local O="-1220248775"local P="-2038647854"local Q="46404375"local R="Apakah kamu yakin ingin melanjutkan?\n-----\nAre you sure you want to continue?"local S="Pastikan City Storage masih di angka 40 (termasuk Bangunan City Storage)\n-----\nMake sure City Storage is still at 40 (including City Storage Buildings)"local T="Pastikan Omega Storage masih di angka 15 (termasuk Bangunan Omega Storage)\n-----\nMake sure Omega Storage is still at 15 (including Omega Storage Buildings)"local U="Pastikan Neo Bank masih di angka 8000 (termasuk Bangunan Neo Bank)\n-----\nMake sure Neo Bank is still at 8000 (including Neo Bank Buildings)"local V="Experience dari Metal akan berubah sampai tombol bertulisan Sx ditekan\n-----\nExperience from Metal will change until the button labeled Sx is pressed"local W="Script ini akan membuat point Plumbob menjadi Mines (-)\n-----\nThis script will make the Plumbob point into Mines (-)"local X="10.000.000 Populasi dari Membangun Bangunan Baru Zona Residensial. Tidak Permanen, akan reset setelah login ulang.\n-----\n10.000.000 Population from Building New Residential Zone. It's not permanent, it will reset after re-login."local Y="Pastikan Anda hanya menaruh tempat yang ingin diganti\n-----\nMake sure you only put the thing you want to change"gg.setRanges(gg.REGION_C_HEAP|gg.REGION_OTHER|gg.REGION_C_ALLOC)function GGPrompt(Z)Prompt=gg.prompt({Z},{""},{"number"})local _=tonumber(Prompt)if Prompt==nil then Arm64v8a()elseif Prompt[1]==""then gg.alert("The value cannot be empty")ExpfromMetal()elseif _==nil then gg.alert("The value cannot be non-numeric")ExpfromMetal()else return Prompt[1]end end;function Alert(a0,a1,a2,a3,a4)local Alert=gg.alert(a0,a1,a2)if Alert==1 then a3()end;if Alert==2 then a4()end end;function Main()while true do if gg.isVisible(true)then MIO=1;gg.setVisible(false)end;if MIO==1 then MENU=gg.choice({"\n[SimCity General]\n","\n[SimCity Building]\n","\n[Back to Loader]\n"},nil,d)if MENU==nil then else if MENU==1 then Arm64v8a()end;if MENU==2 then Arm64v8aBuilding()end;if MENU==3 then TG=gg.makeRequest("https://ihya.dev/gg-loader/mioscape-loader.lua").content;if not TG then os.exit()else pcall(load(TG))end end end end;MIO=-1 end end;function Arm64v8a()while true do if gg.isVisible(true)then MIO=1;gg.setVisible(false)end;if MIO==1 then MENU=gg.choice({"\n[Max City Storage]\n","\n[Max Omega Storage]\n","\n[Max Neo Bank]\n","\n[Experience from Metal]\n","\n[Omega Services]\n","\n[Unlock Neo Mall]\n","\n[Unlock Air Port]\n","\n[Unlock Vu's Tower Max Level]\n","\n[Unlock Cargo Ship]\n","\n[Unlock Vu's Pass]\n","\n[Unlock Mayor Pass]\n","\n[Upgrade Shop Building]\n","\n[Instant Production Time & Exclude Item Requirement]\n","\n[NEW!] | [Buldozing & Keeping Restricted Building]\n","\n[NEW!] | [10.000.000 Population from New Residential Zone]\n","\n[Back]\n"},nil,d)if MENU==nil then else if MENU==1 then Alert(S,"Next","Cancel",CityStorage,Arm64v8a)end;if MENU==2 then Alert(T,"Next","Cancel",OmegaStorage,Arm64v8a)end;if MENU==3 then Alert(U,"Next","Cancel",NeoBank,Arm64v8a)end;if MENU==4 then Alert(V,"Next","Cancel",ExpfromMetal,Arm64v8a)end;if MENU==5 then OmegaServices()end;if MENU==6 then Alert(R,"Next","Cancel",NeoMall,Arm64v8a)end;if MENU==7 then Alert(R,"Next","Cancel",AirPort,Arm64v8a)end;if MENU==8 then Alert(R,"Next","Cancel",VuTower,Arm64v8a)end;if MENU==9 then Alert(R,"Next","Cancel",CargoShip,Arm64v8a)end;if MENU==10 then Alert(R,"Next","Cancel",VuPass,Arm64v8a)end;if MENU==11 then Alert(W,"Next","Cancel",MayorPass,Arm64v8a)end;if MENU==12 then UpgradeShopLevel()end;if MENU==13 then Alert(R,"Next","Cancel",InstantProductionTime,Arm64v8a)end;if MENU==14 then Alert(R,"Next","Cancel",BuldozingKeepingRestrictedBuilding,Arm64v8a)end;if MENU==15 then Alert(X,"Next","Cancel",PopulationNewResidentialZone,Arm64v8a)end;if MENU==16 then Main()end end end;MIO=-1 end end;function CityStorage()gg.clearResults()gg.searchNumber("1785034572 ",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)gg.getResults(100)gg.editAll("-1223401015 ",gg.TYPE_DWORD)gg.clearResults()gg.toast("City Storage Maxed Out")gg.sleep(2000)gg.toast("Please Go To Daniel's City")end;function OmegaStorage()gg.clearResults()gg.searchNumber("-5428496",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1,0)gg.getResults(200)gg.editAll("-179140214",gg.TYPE_DWORD)gg.clearResults()gg.toast("Omega Storage Maxed Out")gg.sleep(2000)gg.toast("Please Go To Daniel's City")end;function NeoBank()gg.clearResults()gg.searchNumber("1148880551",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1,0)gg.getResults(200)gg.editAll("-741647361",gg.TYPE_DWORD)gg.clearResults()gg.toast("Neo Bank Maxed Out")gg.sleep(2000)gg.toast("Please Go To Daniel's City")end;function ExpfromMetal()GGPrompt("Amount Experience From Metal")gg.clearResults()gg.clearList()gg.searchNumber(e,gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1,0)local a5=gg.getResults(gg.getResultsCount())gg.clearResults()gg.addListItems(a5)local a5=gg.getListItems()gg.clearList()for a6,a7 in ipairs(a5)do a7.address=a7.address-0x48 end;gg.addListItems(a5)gg.loadResults(a5)gg.clearList()gg.refineNumber("16",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1,0)local a5=gg.getResults(1)gg.clearResults()gg.addListItems(a5)local a5=gg.getListItems()gg.clearList()for a6,a7 in ipairs(a5)do a7.address=a7.address+0x1F0 end;gg.addListItems(a5)local a5=gg.getListItems()gg.clearList()for a6,a7 in ipairs(a5)do a7.value=Prompt[1]a7.name="Level_Form_Metal"end;gg.addListItems(a5)gg.setValues(a5)gg.toast("Experience From Metal Changed")gg.showUiButton()while true do if gg.isClickedUiButton()then local a8=gg.getListItems(a5)gg.clearList()for a6,a7 in ipairs(a8)do a7.value="0"end;gg.addListItems(a8)gg.setValues(a8)gg.clearResults()gg.clearList()gg.alert("Experience From Metal Reset")gg.hideUiButton()Arm64v8a()end end end;function OmegaServices()local a9=gg.prompt({"\n[Wind Power Plant > OMEGA Power Plant]\n","\n[Basic Water Tower > OMEGA Water Tower]\n","\n[Small Sewage Outflow Pipe > OMEGA Sewage Treatment]\n","\n[Small Garbage Dump > OMEGA Recycling Center]\n","\n[Small Fire Station > Maxis Manor]\n","\n[Small Factory > Nano Factory]\n"},nil,{"checkbox","checkbox","checkbox","checkbox","checkbox","checkbox"})if a9==nil then gg.toast("Canceled")Arm64v8a()else if a9[1]then gg.clearResults()gg.searchNumber(j,gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)gg.getResults(100)gg.editAll(" -857301703 ",gg.TYPE_DWORD)gg.clearResults()gg.toast("Wind Power Plant > OMEGA Power Plant")end;if a9[2]then gg.clearResults()gg.searchNumber(k,gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)gg.getResults(100)gg.editAll(" -1257426322 ",gg.TYPE_DWORD)gg.clearResults()gg.toast("Basic Water Tower > OMEGA Water Tower")end;if a9[3]then gg.clearResults()gg.searchNumber(l,gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)gg.getResults(100)gg.editAll(" -212043960 ",gg.TYPE_DWORD)gg.clearResults()gg.toast("Small Sewage Outflow Pipe > OMEGA Sewage Treatment")end;if a9[4]then gg.clearResults()gg.searchNumber(m,gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)gg.getResults(100)gg.editAll("-535421151",gg.TYPE_DWORD)gg.clearResults()gg.toast("Small Garbage Dump > OMEGA Recycling Center")end;if a9[5]then gg.clearResults()gg.searchNumber(n,gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)gg.getResults(100)gg.editAll("925375395",gg.TYPE_DWORD)gg.clearResults()gg.toast("Small Fire Station > Maxis Manor")end;if a9[6]then gg.clearResults()gg.searchNumber(i,gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)gg.getResults(100)gg.editAll("734850349 ",gg.TYPE_DWORD)gg.clearResults()gg.toast("Small Factory > Nano Factory")end;if a9[1]==false and a9[2]==false and a9[3]==false and a9[4]==false and a9[5]==false and a9[6]==false then gg.alert("Tick at least one checkbox")OmegaServices()else gg.sleep(2000)gg.toast("Please Go To Daniel's City")end end end;function NeoMall()gg.clearResults()gg.searchNumber("424671600 ",4)gg.getResults(100)gg.editAll("2087261488 ",4)gg.clearResults()gg.toast("Neo Mall Unlocked")gg.sleep(2000)gg.toast("Please Go To Daniel's City")end;function AirPort()gg.clearResults()gg.searchNumber("680556997 ",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)gg.getResults(100)gg.editAll("734824390 ",gg.TYPE_DWORD)gg.clearResults()gg.toast("Air Port Unlocked")gg.sleep(2000)gg.toast("Please Go To Daniel's City")end;function VuTower()gg.clearResults()gg.searchNumber("2019791904 ",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)gg.getResults(100)gg.editAll("1362697172 ",gg.TYPE_DWORD)gg.clearResults()gg.toast("Vu's Tower Max Level Unlocked")gg.sleep(2000)gg.toast("Please Go To Daniel's City")end;function CargoShip()gg.clearResults()gg.searchNumber("1156002580",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)gg.getResults(100)gg.editAll("667465812",gg.TYPE_DWORD)gg.clearResults()gg.toast("Cargo Ship Unlocked")gg.sleep(2000)gg.toast("Please Go To Daniel's City")end;function VuPass()gg.searchNumber(f,gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0,-1,0)gg.searchPointer(0)gg.searchPointer(0)local a5=gg.getResults(gg.getResultsCount())gg.clearResults()gg.addListItems(a5)local a5=gg.getListItems()gg.clearList()for a6,a7 in ipairs(a5)do a7.address=a7.address+0x1A8;a7.flags=gg.TYPE_QWORD;a7.value="-1"end;gg.addListItems(a5)gg.setValues(a5)gg.clearList()gg.toast("Vu's Pass Unlocked")end;function MayorPass()gg.searchNumber(g,gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0,-1,0)gg.searchPointer(0)gg.searchPointer(0)local a5=gg.getResults(gg.getResultsCount())gg.clearResults()gg.addListItems(a5)local a5=gg.getListItems()gg.clearList()for a6,a7 in ipairs(a5)do a7.address=a7.address+0x1A8;a7.flags=gg.TYPE_QWORD;a7.value="-1"end;gg.addListItems(a5)gg.setValues(a5)gg.clearList()gg.toast("Mayor Pass Unlocked")end;function UpgradeShopLevel()local aa=gg.prompt({"\n[Building Supplies Store]\n","\n[Hardware Store]\n","\n[Farmer's Market]\n","\n[Furniture Store]\n","\n[Gardening Supplies Store]\n","\n[Donut Shop]\n","\n[Fashion Store]\n","\n[Fast Food Restaurant]\n","\n[Home Appliances Store]\n"},nil,{"checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox"})if aa==nil then gg.toast("Canceled")Arm64v8a()else if aa[1]then gg.clearResults()gg.clearList()gg.searchNumber("960415804",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1,0)gg.getResults(200)gg.editAll("105664762",gg.TYPE_DWORD)gg.toast("Building Supplies Store Maxed Out")end;if aa[2]then gg.clearResults()gg.searchNumber("-187177827",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1,0)gg.getResults(200)gg.editAll("-690676293",gg.TYPE_DWORD)gg.toast("Hardware Store Maxed Out")end;if aa[3]then gg.clearResults()gg.searchNumber("2030607321",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1,0)gg.getResults(200)gg.editAll("-1853924489",gg.TYPE_DWORD)gg.toast("Farmer's Market Maxed Out")end;if aa[4]then gg.clearResults()gg.searchNumber("1444038310",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1,0)gg.getResults(200)gg.editAll("-1684984028",gg.TYPE_DWORD)gg.toast("Furniture Store Maxed Out")end;if aa[5]then gg.clearResults()gg.searchNumber("-1603072541",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1,0)gg.getResults(200)gg.editAll("-1221457599",gg.TYPE_DWORD)gg.toast("Gardening Supplies Store Maxed Out")end;if aa[6]then gg.clearResults()gg.searchNumber("271162441",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1,0)gg.getResults(200)gg.editAll("-516045337",gg.TYPE_DWORD)gg.toast("Donut Shop Maxed Out")end;if aa[7]then gg.clearResults()gg.searchNumber("-1470979549",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1,0)gg.getResults(200)gg.editAll("-134466175",gg.TYPE_DWORD)gg.toast("Fashion Store Maxed Out")end;if aa[8]then gg.clearResults()gg.searchNumber("-1568621139",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1,0)gg.getResults(200)gg.editAll("-92005173",gg.TYPE_DWORD)gg.toast("Fast Food Restaurant Maxed Out")end;if aa[9]then gg.clearResults()gg.searchNumber("-278168705",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1,0)gg.getResults(200)gg.editAll("2135220573",gg.TYPE_DWORD)gg.toast("Home Appliances Store Maxed Out")end;if aa[1]==false and aa[2]==false and aa[3]==false and aa[4]==false and aa[5]==false and aa[6]==false and aa[7]==false and aa[8]==false and aa[9]==false then gg.alert("Tick at least one checkbox")UpgradeShopLevel()else gg.sleep(2000)gg.toast("Please Go To Daniel's City")end end end;function InstantProductionTime()gg.clearList()gg.clearResults()gg.searchNumber(e,gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1,0)local a5=gg.getResults(gg.getResultsCount())gg.clearResults()gg.addListItems(a5)local a5=gg.getListItems()gg.clearList()for a6,a7 in ipairs(a5)do a7.address=a7.address-0x48 end;gg.addListItems(a5)gg.loadResults(a5)gg.clearList()gg.refineNumber("16",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1,0)local a5=gg.getResults(1)gg.clearResults()gg.addListItems(a5)local ab=gg.getListItems()gg.clearList()for a6,a7 in ipairs(ab)do a7.address=a7.address-0x8 end;gg.addListItems(ab)gg.sleep(500)local ac=gg.getListItems()gg.clearList()gg.searchNumber(ac[1].value,gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1,0)local a5=gg.getResults(116)gg.clearResults()gg.addListItems(a5)local a5=gg.getListItems()gg.clearList()for a6,a7 in ipairs(a5)do a7.address=a7.address+0x9C;a7.flags=gg.TYPE_DWORD;a7.value="1000"end;gg.addListItems(a5)gg.setValues(a5)gg.sleep(1000)gg.clearList()ExcludeItemRequirement()end;function ExcludeItemRequirement()gg.clearList()gg.clearResults()gg.searchNumber(e,gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1,0)local a5=gg.getResults(gg.getResultsCount())gg.clearResults()gg.addListItems(a5)local a5=gg.getListItems()gg.clearList()for a6,a7 in ipairs(a5)do a7.address=a7.address-0x48 end;gg.addListItems(a5)gg.loadResults(a5)gg.clearList()gg.refineNumber("16",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1,0)local a5=gg.getResults(1)gg.clearResults()gg.addListItems(a5)local ab=gg.getListItems()gg.clearList()for a6,a7 in ipairs(ab)do a7.address=a7.address-0x8 end;gg.addListItems(ab)gg.sleep(500)local ac=gg.getListItems()gg.clearList()gg.searchNumber(ac[1].value,gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1,0)local a5=gg.getResults(116)gg.clearResults()gg.addListItems(a5)local a5=gg.getListItems()gg.clearList()for a6,a7 in ipairs(a5)do a7.address=a7.address+0x1B8;a7.flags=gg.TYPE_DWORD;a7.value="0"end;gg.addListItems(a5)gg.setValues(a5)local a5=gg.getListItems()for a6,a7 in ipairs(a5)do a7.address=a7.address+0x8;a7.flags=gg.TYPE_DWORD;a7.value="0"end;gg.addListItems(a5)gg.setValues(a5)local a5=gg.getListItems()for a6,a7 in ipairs(a5)do a7.address=a7.address+0x8;a7.flags=gg.TYPE_DWORD;a7.value="0"end;gg.addListItems(a5)gg.setValues(a5)gg.sleep(1000)gg.clearList()gg.toast("Instant Production Time & Exclude Item Requirement")end;function BuldozingKeepingRestrictedBuilding()gg.clearList()gg.clearResults()gg.searchNumber(h,gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1,0)local a5=gg.getResults(gg.getResultsCount())gg.clearResults()gg.addListItems(a5)local a5=gg.getListItems()gg.clearList()for a6,a7 in ipairs(a5)do a7.address=a7.address-0x48 end;gg.addListItems(a5)gg.loadResults(a5)gg.clearList()gg.refineNumber("3",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1,0)local a5=gg.getResults(1)gg.clearResults()gg.addListItems(a5)local ab=gg.getListItems()gg.clearList()for a6,a7 in ipairs(ab)do a7.address=a7.address-0x8 end;gg.addListItems(ab)gg.sleep(500)local ac=gg.getListItems()gg.clearList()gg.searchNumber(ac[1].value,gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1,0)local a5=gg.getResults(2000)gg.clearResults()gg.addListItems(a5)local a5=gg.getListItems()gg.clearList()for a6,a7 in ipairs(a5)do a7.address=a7.address+0x328;a7.flags=gg.TYPE_DWORD;a7.value="-1"end;gg.addListItems(a5)gg.setValues(a5)gg.sleep(1000)gg.clearList()gg.toast("Buldozer Succes")end;function PopulationNewResidentialZone()gg.searchNumber("-302186785",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1,0)local a5=gg.getResults(gg.getResultsCount())gg.clearResults()gg.addListItems(a5)local a5=gg.getListItems()gg.clearList()for a6,a7 in ipairs(a5)do a7.address=a7.address-0x48 end;gg.addListItems(a5)gg.loadResults(a5)gg.clearList()gg.refineNumber("15",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1,0)local a5=gg.getResults(1)gg.clearResults()gg.addListItems(a5)local a5=gg.getListItems()gg.clearList()for a6,a7 in ipairs(a5)do a7.address=a7.address+0x94;a7.flags=gg.TYPE_DWORD;a7.value="10000000"end;gg.addListItems(a5)gg.setValues(a5)gg.clearList()end;function Arm64v8aBuilding()while true do if gg.isVisible(true)then MIO=1;gg.setVisible(false)end;if MIO==1 then MENU=gg.choice({"\n[Mayor Pass Building]\n","\n[Back]\n"},nil,d)if MENU==nil then else if MENU==1 then MayorPassBuilding()end;if MENU==2 then Main()end end end;MIO=-1 end end;function MayorPassBuilding()while true do if gg.isVisible(true)then MIO=1;gg.setVisible(false)end;if MIO==1 then MENU=gg.choice({"\n[Season 38 | Historic Prague]\n","\n[Season 37 | Thailand]\n","\n[Season 36 | Lapland of Today]\n","\n[Season 35 | Super Services]\n","\n[Season 34 | Tokyo]\n","\n[Season 33 | London]\n","\n[Back]\n"},nil,d)if MENU==nil then else if MENU==1 then Alert(Y,"Next","Cancel",Season38,MayorPassBuilding)end;if MENU==2 then Alert(Y,"Next","Cancel",Season37,MayorPassBuilding)end;if MENU==3 then Alert(Y,"Next","Cancel",Season36,MayorPassBuilding)end;if MENU==4 then Alert(Y,"Next","Cancel",Season35,MayorPassBuilding)end;if MENU==5 then Alert(Y,"Next","Cancel",Season34,MayorPassBuilding)end;if MENU==6 then Alert(Y,"Next","Cancel",Season33,MayorPassBuilding)end;if MENU==7 then Arm64v8aBuilding()end end end;MIO=-1 end end;function Season33()local ad=gg.prompt({"\n[Wind Power Plant > Columbia Road Flower Market]\n","\n[Basic Water Tower > Red House]\n","\n[Small Sewage Outflow Pipe > Fragment]\n","\n[Small Garbage Dump > Kensington Palace]\n","\n[Small Fire Station > Westminster Abbey]\n","\n[Small Police Station > Tower Bridge]\n","\n[Small Health Clinic > Tower of London]\n","\n[Small Fountain Park > British Museum]\n"},nil,{"checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox"})if ad==nil then gg.toast("Canceled")MayorPassBuilding()else if ad[1]then gg.clearResults()gg.searchNumber(j,gg.TYPE_DWORD)gg.getResults(200)gg.editAll("-1729576167",gg.TYPE_DWORD)gg.toast("Wind Power Plant > Columbia Road Flower Market")end;if ad[2]then gg.clearResults()gg.searchNumber(k,gg.TYPE_DWORD)gg.getResults(200)gg.editAll("816337669",gg.TYPE_DWORD)gg.toast("Basic Water Tower > Red House")end;if ad[3]then gg.clearResults()gg.searchNumber(l,gg.TYPE_DWORD)gg.getResults(200)gg.editAll("-784692519",gg.TYPE_DWORD)gg.toast("Small Sewage Outflow Pipe > Fragment")end;if ad[4]then gg.clearResults()gg.searchNumber(m,gg.TYPE_DWORD)gg.getResults(200)gg.editAll("2069092396",gg.TYPE_DWORD)gg.toast("Small Garbage Dump > Kensington Palace")end;if ad[5]then gg.clearResults()gg.searchNumber(n,gg.TYPE_DWORD)gg.getResults(200)gg.editAll("980195054",gg.TYPE_DWORD)gg.toast("Small Fire Station > Westminster Abbey")end;if ad[6]then gg.clearResults()gg.searchNumber(o,gg.TYPE_DWORD)gg.getResults(200)gg.editAll("1526054020",gg.TYPE_DWORD)gg.toast("Small Police Station > Tower Bridge")end;if ad[7]then gg.clearResults()gg.searchNumber(p,gg.TYPE_DWORD)gg.getResults(200)gg.editAll("1914030145",gg.TYPE_DWORD)gg.toast("Small Health Clinic > Tower of London")end;if ad[8]then gg.clearResults()gg.searchNumber(q,gg.TYPE_DWORD)gg.getResults(200)gg.editAll("-1460626377",gg.TYPE_DWORD)gg.toast("Small Fountain Park > British Museum")end;if ad[1]==false and ad[2]==false and ad[3]==false and ad[4]==false and ad[5]==false and ad[6]==false and ad[7]==false and ad[8]==false then gg.alert("Tick at least one checkbox")UpgradeShopLevel()else gg.sleep(2000)gg.toast("Please Go To Daniel's City")end end end;function Season34()local ae=gg.prompt({"\n[Wind Power Plant > Tokyo Taki Plaza]\n","\n[Basic Water Tower > Tokyo Shakaden]\n","\n[Small Sewage Outflow Pipe > Tokyo Akihabara]\n","\n[Small Garbage Dump > Coffin House]\n","\n[Small Fire Station > Witch Tree House]\n","\n[Small Police Station > Pumpkin Balloon]\n","\n[Small Health Clinic > Chomper Backyard]\n","\n[Small Fountain Park > Museum Land Beach M]\n","\n[Coal Power Plant > Thanksgiving Fields]\n"},nil,{"checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox"})if ae==nil then gg.toast("Canceled")MayorPassBuilding()else if ae[1]then gg.clearResults()gg.searchNumber(j,gg.TYPE_DWORD)gg.getResults(200)gg.editAll("614170228",gg.TYPE_DWORD)gg.toast("Wind Power Plant > Tokyo Taki Plaza")end;if ae[2]then gg.clearResults()gg.searchNumber(k,gg.TYPE_DWORD)gg.getResults(200)gg.editAll("-1854842861",gg.TYPE_DWORD)gg.toast("Basic Water Tower > Tokyo Shakaden")end;if ae[3]then gg.clearResults()gg.searchNumber(l,gg.TYPE_DWORD)gg.getResults(200)gg.editAll("-1267520952",gg.TYPE_DWORD)gg.toast("Small Sewage Outflow Pipe > Tokyo Akihabara")end;if ae[4]then gg.clearResults()gg.searchNumber(m,gg.TYPE_DWORD)gg.getResults(200)gg.editAll("243322819",gg.TYPE_DWORD)gg.toast("Small Garbage Dump > Coffin House")end;if ae[5]then gg.clearResults()gg.searchNumber(n,gg.TYPE_DWORD)gg.getResults(200)gg.editAll("367631164",gg.TYPE_DWORD)gg.toast("Small Fire Station > Witch Tree House")end;if ae[6]then gg.clearResults()gg.searchNumber(o,gg.TYPE_DWORD)gg.getResults(200)gg.editAll("391362933",gg.TYPE_DWORD)gg.toast("Small Police Station > Pumpkin Balloon")end;if ae[7]then gg.clearResults()gg.searchNumber(p,gg.TYPE_DWORD)gg.getResults(200)gg.editAll("1420845900",gg.TYPE_DWORD)gg.toast("Small Health Clinic > Chomper Backyard")end;if ae[8]then gg.clearResults()gg.searchNumber(q,gg.TYPE_DWORD)gg.getResults(200)gg.editAll("275335866",gg.TYPE_DWORD)gg.toast("Small Fountain Park > Museum Land Beach M")end;if ae[9]then gg.clearResults()gg.searchNumber(r,gg.TYPE_DWORD)gg.getResults(200)gg.editAll("404044642",gg.TYPE_DWORD)gg.toast("Coal Power Plant > Thanksgiving Fields")end;if ae[1]==false and ae[2]==false and ae[3]==false and ae[4]==false and ae[5]==false and ae[6]==false and ae[7]==false and ae[8]==false and ae[9]==false then gg.alert("Tick at least one checkbox")UpgradeShopLevel()else gg.sleep(2000)gg.toast("Please Go To Daniel's City")end end end;function Season35()local af=gg.prompt({"\n[Wind Power Plant > Garbage Incinerator V2]\n","\n[Basic Water Tower > Sewage Plant V2]\n","\n[Small Sewage Outflow Pipe > Solar Power Farm V1]\n","\n[Small Garbage Dump > Water Pumping Station V2]\n","\n[Small Fire Station > Large Fire Station V2]\n","\n[Small Police Station > Police Precinct V2]\n","\n[Small Health Clinic > Hospital V2]\n","\n[Small Fountain Park > Maxis HQ]\n"},nil,{"checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox"})if af==nil then gg.toast("Canceled")MayorPassBuilding()else if af[1]then gg.clearResults()gg.searchNumber(j,gg.TYPE_DWORD)gg.getResults(200)gg.editAll("-1415031566",gg.TYPE_DWORD)gg.toast("Wind Power Plant > Garbage Incinerator V2")end;if af[2]then gg.clearResults()gg.searchNumber(k,gg.TYPE_DWORD)gg.getResults(200)gg.editAll("-12118106",gg.TYPE_DWORD)gg.toast("Basic Water Tower > Sewage Plant V2")end;if af[3]then gg.clearResults()gg.searchNumber(l,gg.TYPE_DWORD)gg.getResults(200)gg.editAll("-747375459",gg.TYPE_DWORD)gg.toast("Small Sewage Outflow Pipe > Solar Power Farm V1")end;if af[4]then gg.clearResults()gg.searchNumber(m,gg.TYPE_DWORD)gg.getResults(200)gg.editAll("1575952079",gg.TYPE_DWORD)gg.toast("Small Garbage Dump > Water Pumping Station V2")end;if af[5]then gg.clearResults()gg.searchNumber(n,gg.TYPE_DWORD)gg.getResults(200)gg.editAll("1840116317",gg.TYPE_DWORD)gg.toast("Small Fire Station > Large Fire Station V2")end;if af[6]then gg.clearResults()gg.searchNumber(o,gg.TYPE_DWORD)gg.getResults(200)gg.editAll("898048097",gg.TYPE_DWORD)gg.toast("Small Police Station > Police Precinct V2")end;if af[7]then gg.clearResults()gg.searchNumber(p,gg.TYPE_DWORD)gg.getResults(200)gg.editAll("850245360",gg.TYPE_DWORD)gg.toast("Small Health Clinic > Hospital V2")end;if af[8]then gg.clearResults()gg.searchNumber(q,gg.TYPE_DWORD)gg.getResults(200)gg.editAll("1579400415",gg.TYPE_DWORD)gg.toast("Small Fountain Park > Maxis HQ")end;if af[1]==false and af[2]==false and af[3]==false and af[4]==false and af[5]==false and af[6]==false and af[7]==false and af[8]==false then gg.alert("Tick at least one checkbox")UpgradeShopLevel()else gg.sleep(2000)gg.toast("Please Go To Daniel's City")end end end;function Season36()local ag=gg.prompt({"\n[Wind Power Plant > Nordic Church]\n","\n[Basic Water Tower > Northern Museum]\n","\n[Small Sewage Outflow Pipe > Arctic Aquarium]\n","\n[Small Garbage Dump > Lofoten]\n","\n[Small Fire Station > Lean Library]\n","\n[Small Police Station > Treehouse Resort]\n","\n[Small Health Clinic > Reindeer Sled Ride]\n","\n[Small Fountain Park > Swimming Sauna]\n","\n[Coal Power Plant > Aurora Shack]\n","\n[Solar Power Plant > Ice Castle]\n"},nil,{"checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox"})if ag==nil then gg.toast("Canceled")MayorPassBuilding()else if ag[1]then gg.clearResults()gg.searchNumber(j,gg.TYPE_DWORD)gg.getResults(200)gg.editAll("-1961743034",gg.TYPE_DWORD)gg.toast("Wind Power Plant > Nordic Church")end;if ag[2]then gg.clearResults()gg.searchNumber(k,gg.TYPE_DWORD)gg.getResults(200)gg.editAll("649295752",gg.TYPE_DWORD)gg.toast("Basic Water Tower > Northern Museum")end;if ag[3]then gg.clearResults()gg.searchNumber(l,gg.TYPE_DWORD)gg.getResults(200)gg.editAll("-638228376",gg.TYPE_DWORD)gg.toast("Small Sewage Outflow Pipe > Arctic Aquarium")end;if ag[4]then gg.clearResults()gg.searchNumber(m,gg.TYPE_DWORD)gg.getResults(200)gg.editAll("-1515743305",gg.TYPE_DWORD)gg.toast("Small Garbage Dump > Lofoten")end;if ag[5]then gg.clearResults()gg.searchNumber(n,gg.TYPE_DWORD)gg.getResults(200)gg.editAll("2138768342",gg.TYPE_DWORD)gg.toast("Small Fire Station > Lean Library")end;if ag[6]then gg.clearResults()gg.searchNumber(o,gg.TYPE_DWORD)gg.getResults(200)gg.editAll("26934349",gg.TYPE_DWORD)gg.toast("Small Police Station > Treehouse Resort")end;if ag[7]then gg.clearResults()gg.searchNumber(p,gg.TYPE_DWORD)gg.getResults(200)gg.editAll("-952555316",gg.TYPE_DWORD)gg.toast("Small Health Clinic > Reindeer Sled Ride")end;if ag[8]then gg.clearResults()gg.searchNumber(q,gg.TYPE_DWORD)gg.getResults(200)gg.editAll("466163634",gg.TYPE_DWORD)gg.toast("Small Fountain Park > Swimming Sauna")end;if ag[9]then gg.clearResults()gg.searchNumber(r,gg.TYPE_DWORD)gg.getResults(200)gg.editAll("-1487561462",gg.TYPE_DWORD)gg.toast("Coal Power Plant > Aurora Shack")end;if ag[10]then gg.clearResults()gg.searchNumber(s,gg.TYPE_DWORD)gg.getResults(200)gg.editAll("1708275201",gg.TYPE_DWORD)gg.toast("Solar Power Plant > Ice Castle")end;if ag[1]==false and ag[2]==false and ag[3]==false and ag[4]==false and ag[5]==false and ag[6]==false and ag[7]==false and ag[8]==false and ag[9]==false and ag[10]==false then gg.alert("Tick at least one checkbox")UpgradeShopLevel()else gg.sleep(2000)gg.toast("Please Go To Daniel's City")end end end;function Season37()local ah=gg.prompt({"\n[Wind Power Plant > Temple of Dawn]\n","\n[Basic Water Tower > Tusk Tower]\n","\n[Small Sewage Outflow Pipe > Pixel Tower]\n","\n[Small Garbage Dump > Dragon Temple]\n","\n[Small Fire Station > Robo Tower]\n","\n[Small Police Station > Phi Phi Island]\n"},nil,{"checkbox","checkbox","checkbox","checkbox","checkbox","checkbox"})if ah==nil then gg.toast("Canceled")MayorPassBuilding()else if ah[1]then gg.clearResults()gg.searchNumber(j,gg.TYPE_DWORD)gg.getResults(200)gg.editAll("-518370055",gg.TYPE_DWORD)gg.toast("Wind Power Plant > Temple of Dawn")end;if ah[2]then gg.clearResults()gg.searchNumber(k,gg.TYPE_DWORD)gg.getResults(200)gg.editAll("-811436871",gg.TYPE_DWORD)gg.toast("Basic Water Tower > Tusk Tower")end;if ah[3]then gg.clearResults()gg.searchNumber(l,gg.TYPE_DWORD)gg.getResults(200)gg.editAll("208677870",gg.TYPE_DWORD)gg.toast("Small Sewage Outflow Pipe > Pixel Tower")end;if ah[4]then gg.clearResults()gg.searchNumber(m,gg.TYPE_DWORD)gg.getResults(200)gg.editAll("-1129122371",gg.TYPE_DWORD)gg.toast("Small Garbage Dump > Dragon Temple")end;if ah[5]then gg.clearResults()gg.searchNumber(n,gg.TYPE_DWORD)gg.getResults(200)gg.editAll("1072852587",gg.TYPE_DWORD)gg.toast("Small Fire Station > Robo Tower")end;if ah[6]then gg.clearResults()gg.searchNumber(o,gg.TYPE_DWORD)gg.getResults(200)gg.editAll("1747127097",gg.TYPE_DWORD)gg.toast("Small Police Station > Phi Phi Island")end;if ah[1]==false and ah[2]==false and ah[3]==false and ah[4]==false and ah[5]==false and ah[6]==false then gg.alert("Tick at least one checkbox")UpgradeShopLevel()else gg.sleep(2000)gg.toast("Please Go To Daniel's City")end end end;function Season38()local ai=gg.prompt({"\n[Wind Power Plant > Prague Powder Tower]\n","\n[Basic Water Tower > Prague Charles Bridge]\n","\n[Small Sewage Outflow Pipe > Prague Quadrio Center]\n","\n[Small Garbage Dump > Prague Petrin Tower]\n","\n[Small Fire Station > Prague Old Town Square]\n","\n[Small Police Station > Prague Castleu]\n","\n[Small Health Clinic > Prague National Theatre]\n","\n[Small Fountain Park > Prague Zizkov Tower]\n","\n[Coal Power Plant > Prague Petrin Cathedral]\n"},nil,{"checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox"})if ai==nil then gg.toast("Canceled")MayorPassBuilding()else if ai[1]then gg.clearResults()gg.searchNumber(j,gg.TYPE_DWORD)gg.getResults(200)gg.editAll("-1042592443",gg.TYPE_DWORD)gg.toast("Wind Power Plant > Prague Powder Tower")end;if ai[2]then gg.clearResults()gg.searchNumber(k,gg.TYPE_DWORD)gg.getResults(200)gg.editAll("-971391086",gg.TYPE_DWORD)gg.toast("Basic Water Tower > Prague Charles Bridge")end;if ai[3]then gg.clearResults()gg.searchNumber(l,gg.TYPE_DWORD)gg.getResults(200)gg.editAll("-84591751",gg.TYPE_DWORD)gg.toast("Small Sewage Outflow Pipe > Prague Quadrio Center")end;if ai[4]then gg.clearResults()gg.searchNumber(m,gg.TYPE_DWORD)gg.getResults(200)gg.editAll("1544098790",gg.TYPE_DWORD)gg.toast("Small Garbage Dump > Prague Petrin Tower")end;if ai[5]then gg.clearResults()gg.searchNumber(n,gg.TYPE_DWORD)gg.getResults(200)gg.editAll("-2099908710",gg.TYPE_DWORD)gg.toast("Small Fire Station > Prague Old Town Square")end;if ai[6]then gg.clearResults()gg.searchNumber(o,gg.TYPE_DWORD)gg.getResults(200)gg.editAll("1073072576",gg.TYPE_DWORD)gg.toast("Small Police Station > Prague Castleu")end;if ai[7]then gg.clearResults()gg.searchNumber(p,gg.TYPE_DWORD)gg.getResults(200)gg.editAll("367160678",gg.TYPE_DWORD)gg.toast("Small Health Clinic > Prague National Theatre")end;if ai[8]then gg.clearResults()gg.searchNumber(q,gg.TYPE_DWORD)gg.getResults(200)gg.editAll("892518849",gg.TYPE_DWORD)gg.toast("Small Fountain Park > Prague Zizkov Tower")end;if ai[9]then gg.clearResults()gg.searchNumber(r,gg.TYPE_DWORD)gg.getResults(200)gg.editAll("404602461",gg.TYPE_DWORD)gg.toast("Coal Power Plant > Prague Petrin Cathedral")end;if ai[1]==false and ai[2]==false and ai[3]==false and ai[4]==false and ai[5]==false and ai[6]==false and ai[7]==false and ai[8]==false and ai[9]==false then gg.alert("Tick at least one checkbox")UpgradeShopLevel()else gg.sleep(2000)gg.toast("Please Go To Daniel's City")end end end;function Armebiv7a()gg.alert("Coming Soon!")end;while true do if gg.isVisible(true)then MIO=1;gg.setVisible(false)end;if MIO==1 then Main()end end
