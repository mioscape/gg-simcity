local ArchInfo64 = gg.getTargetInfo()["x64"]
if ArchInfo64 == false then
    ArchInfoResult = 32
end
if ArchInfo64 == true then
    ArchInfoResult = 64
end

local GameVersion = "1.53.1.121316"
local ScriptVersion = "0.10.1-dev"
local ScriptDescription =
    "[SimCity BuildIt " .. GameVersion .. " " .. ArchInfoResult .. " bit | Mioscape SimCity v" .. ScriptVersion .. "]"

local FactoryValue = "-1935981107"
local VuPassValue = "-7995824390300544013"
local MayorPassValue = "-7992622555426941375"
local MAXIS = "925375395"

local TAMAN = "4635382469820688998"
local ITEMOFFSET = "-3527480595996367819"
local OFFSET1 = "0x60"
local OFFSET2 = "0x40"
local EDUKASI = "-1881032548"
local HIBURAN = "-447372290"
local PERJUDIAN = "-691412735"
local TRANSPORT = "1813794920"
local TERKENAL = "-113962678"
local PANTAI = "-1999290445"
local GUNUNG = "995463179"

local RUMAH = "1522778650"
local LATIN = "-537490833"
local ART = "1920513178"
local PARIS = "2050186616"
local LONDON = "-1203406301"
local OLD = "-1562421476"
local TOKYO = "1493262871"
local OMEGA = "-1430868908"

local GREEN = "973877747"
local CANYON = "-1528167776"
local ISLAND = "-1220248775"
local FROZEN = "-2038647854"
local LIMINSTONE = "46404375"

local DefaultAlert = "Apakah kamu yakin ingin melanjutkan?\n-----\nAre you sure you want to continue?"
local MaxCityStorageMenuAlert =
    "Pastikan City Storage masih di angka 40 (termasuk Bangunan City Storage)\n-----\nMake sure City Storage is still at 40 (including City Storage Buildings)"
local MaxOmegaStorageMenuAlert =
    "Pastikan Omega Storage masih di angka 15 (termasuk Bangunan Omega Storage)\n-----\nMake sure Omega Storage is still at 15 (including Omega Storage Buildings)"
local MaxNeoBankMenuAlert =
    "Pastikan Neo Bank masih di angka 8000 (termasuk Bangunan Neo Bank)\n-----\nMake sure Neo Bank is still at 8000 (including Neo Bank Buildings)"
local ExpfromMetalMenuAlert =
    "Experience dari Metal akan berubah sampai tombol bertulisan Sx ditekan\n-----\nExperience from Metal will change until the button labeled Sx is pressed"
local MayorPassMenuAlert =
    "Script ini akan membuat point Plumbob menjadi Mines (-)\n-----\nThis script will make the Plumbob point into Mines (-)"
local PopulationNewResidentialZoneAlert =
    "10.000.000 Populasi dari Membangun Bangunan Baru Zona Residensial. Tidak Permanen, akan reset setelah login ulang.\n-----\n10.000.000 Population from Building New Residential Zone. It's not permanent, it will reset after re-login."
local Season38Alert =
    "Pastikan Anda hanya menaruh tempat yang ingin diganti\n-----\nMake sure you only put the thing you want to change"

gg.setRanges(gg.REGION_C_HEAP | gg.REGION_OTHER | gg.REGION_C_ALLOC)
function GGPrompt(title)
    Prompt =
        gg.prompt(
        {
            title
        },
        {""},
        {"number"}
    )

    local isNumber = tonumber(Prompt)

    if Prompt == nil then
        Arm64v8a()
    elseif Prompt[1] == "" then
        gg.alert("The value cannot be empty")
        ExpfromMetal()
    elseif isNumber == nil then
        gg.alert("The value cannot be non-numeric")
        ExpfromMetal()
    else
        return Prompt[1]
    end
end

function Alert(message, trueButton, falseButton, trueFunction, falseFunction)
    local Alert = gg.alert(message, trueButton, falseButton)
    if Alert == 1 then
        trueFunction()
    end
    if Alert == 2 then
        falseFunction()
    end
end

function Main()
    while true do
        if gg.isVisible(true) then
            MIO = 1
            gg.setVisible(false)
        end
        if MIO == 1 then
            MENU =
                gg.choice(
                {
                    "\n[SimCity General]\n",
                    "\n[SimCity Building]\n",
                    "\n[Back to Loader]\n"
                },
                nil,
                ScriptDescription
            )
            if MENU == nil then
            else
                if MENU == 1 then
                    Arm64v8a()
                end
                if MENU == 2 then
                    Arm64v8aBuilding()
                end
                if MENU == 3 then
                    TG = gg.makeRequest("https://ihya.dev/gg-loader/mioscape-loader.lua").content
                    if not TG then
                        os.exit()
                    else
                        pcall(load(TG))
                    end
                end
            end
        end
        MIO = -1
    end
end

-- arm64-v8a | 64bit Start

function Arm64v8a()
    while true do
        if gg.isVisible(true) then
            MIO = 1
            gg.setVisible(false)
        end
        if MIO == 1 then
            MENU =
                gg.choice(
                {
                    "\n[Max City Storage]\n",
                    "\n[Max Omega Storage]\n",
                    "\n[Max Neo Bank]\n",
                    "\n[Experience from Metal]\n",
                    "\n[Omega Services]\n",
                    "\n[Unlock Neo Mall]\n",
                    "\n[Unlock Air Port]\n",
                    "\n[Unlock Vu's Tower Max Level]\n",
                    "\n[Unlock Cargo Ship]\n",
                    "\n[Unlock Vu's Pass]\n",
                    "\n[Unlock Mayor Pass]\n",
                    "\n[Upgrade Shop Building]\n",
                    "\n[Instant Production Time & Exclude Item Requirement]\n",
                    "\n[NEW!] | [Buldozing & Keeping Restricted Building]\n",
                    "\n[NEW!] | [10.000.000 Population from New Residential Zone]\n",
                    "\n[Back]\n"
                },
                nil,
                ScriptDescription
            )
            if MENU == nil then
            else
                if MENU == 1 then
                    Alert(MaxCityStorageMenuAlert, "Next", "Cancel", CityStorage, Arm64v8a)
                end
                if MENU == 2 then
                    Alert(MaxOmegaStorageMenuAlert, "Next", "Cancel", OmegaStorage, Arm64v8a)
                end
                if MENU == 3 then
                    Alert(MaxNeoBankMenuAlert, "Next", "Cancel", NeoBank, Arm64v8a)
                end
                if MENU == 4 then
                    Alert(ExpfromMetalMenuAlert, "Next", "Cancel", ExpfromMetal, Arm64v8a)
                end
                if MENU == 5 then
                    OmegaServices()
                end
                if MENU == 6 then
                    Alert(DefaultAlert, "Next", "Cancel", NeoMall, Arm64v8a)
                end
                if MENU == 7 then
                    Alert(DefaultAlert, "Next", "Cancel", AirPort, Arm64v8a)
                end
                if MENU == 8 then
                    Alert(DefaultAlert, "Next", "Cancel", VuTower, Arm64v8a)
                end
                if MENU == 9 then
                    Alert(DefaultAlert, "Next", "Cancel", CargoShip, Arm64v8a)
                end
                if MENU == 10 then
                    Alert(DefaultAlert, "Next", "Cancel", VuPass, Arm64v8a)
                end
                if MENU == 11 then
                    Alert(MayorPassMenuAlert, "Next", "Cancel", MayorPass, Arm64v8a)
                end
                if MENU == 12 then
                    UpgradeShopLevel()
                end
                if MENU == 13 then
                    Alert(DefaultAlert, "Next", "Cancel", InstantProductionTime, Arm64v8a)
                end
                if MENU == 14 then
                    Alert(DefaultAlert, "Next", "Cancel", BuldozingKeepingRestrictedBuilding, Arm64v8a)
                end
                if MENU == 15 then
                    Alert(PopulationNewResidentialZoneAlert, "Next", "Cancel", PopulationNewResidentialZone, Arm64v8a)
                end
                if MENU == 16 then
                    Main()
                end
            end
        end
        MIO = -1
    end
end

function CityStorage()
    gg.clearResults()
    gg.searchNumber("1785034572 ", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("-1223401015 ", gg.TYPE_DWORD)
    gg.clearResults()
    gg.toast("City Storage Maxed Out")
    gg.sleep(2000)
    gg.toast("Please Go To Daniel's City")
end

function OmegaStorage()
    gg.clearResults()
    gg.searchNumber("-5428496", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
    gg.getResults(200)
    gg.editAll("-179140214", gg.TYPE_DWORD)
    gg.clearResults()
    gg.toast("Omega Storage Maxed Out")
    gg.sleep(2000)
    gg.toast("Please Go To Daniel's City")
end

function NeoBank()
    gg.clearResults()
    gg.searchNumber("1148880551", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
    gg.getResults(200)
    gg.editAll("-741647361", gg.TYPE_DWORD)
    gg.clearResults()
    gg.toast("Neo Bank Maxed Out")
    gg.sleep(2000)
    gg.toast("Please Go To Daniel's City")
end

function ExpfromMetal()
    GGPrompt("Amount Experience From Metal")
    gg.clearResults()
    gg.clearList()
    gg.searchNumber(FactoryValue, gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)

    local t = gg.getResults(gg.getResultsCount())
    gg.clearResults()
    gg.addListItems(t)

    local t = gg.getListItems()
    gg.clearList()

    for i, v in ipairs(t) do
        v.address = v.address - 0x48
    end
    gg.addListItems(t)
    gg.loadResults(t)
    gg.clearList()

    gg.refineNumber("16", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)

    local t = gg.getResults(1)
    gg.clearResults()
    gg.addListItems(t)

    local t = gg.getListItems()
    gg.clearList()

    for i, v in ipairs(t) do
        v.address = v.address + 0x1F0
    end

    gg.addListItems(t)

    local t = gg.getListItems()
    gg.clearList()
    for i, v in ipairs(t) do
        v.value = Prompt[1]
        v.name = "Level_Form_Metal"
    end

    gg.addListItems(t)
    gg.setValues(t)
    gg.toast("Experience From Metal Changed")
    gg.showUiButton()
    while true do
        if gg.isClickedUiButton() then
            local tc = gg.getListItems(t)
            gg.clearList()
            for i, v in ipairs(tc) do
                v.value = "0"
            end

            gg.addListItems(tc)
            gg.setValues(tc)
            gg.clearResults()
            gg.clearList()
            gg.alert("Experience From Metal Reset")
            gg.hideUiButton()
            Arm64v8a()
        end
    end
end

function OmegaServices()
    local OmegaServicesCheckbox =
        gg.prompt(
        {
            "\n[Wind Power Plant > OMEGA Power Plant]\n",
            "\n[Basic Water Tower > OMEGA Water Tower]\n",
            "\n[Small Sewage Outflow Pipe > OMEGA Sewage Treatment]\n",
            "\n[Small Garbage Dump > OMEGA Recycling Center]\n",
            "\n[Small Fire Station > Maxis Manor]\n",
            "\n[Small Factory > Nano Factory]\n"
        },
        nil,
        {"checkbox", "checkbox", "checkbox", "checkbox", "checkbox", "checkbox"}
    )
    if OmegaServicesCheckbox == nil then
        gg.toast("Canceled")
        Arm64v8a()
    else
        if OmegaServicesCheckbox[1] then
            gg.clearResults()
            gg.searchNumber("751144117", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
            gg.getResults(100)
            gg.editAll(" -857301703 ", gg.TYPE_DWORD)
            gg.clearResults()
            gg.toast("Wind Power Plant > OMEGA Power Plant")
        end
        if OmegaServicesCheckbox[2] then
            gg.clearResults()
            gg.searchNumber(" 139346164 ", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
            gg.getResults(100)
            gg.editAll(" -1257426322 ", gg.TYPE_DWORD)
            gg.clearResults()
            gg.toast("Basic Water Tower > OMEGA Water Tower")
        end
        if OmegaServicesCheckbox[3] then
            gg.clearResults()
            gg.searchNumber(" 182280403 ", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
            gg.getResults(100)
            gg.editAll(" -212043960 ", gg.TYPE_DWORD)
            gg.clearResults()
            gg.toast("Small Sewage Outflow Pipe > OMEGA Sewage Treatment")
        end
        if OmegaServicesCheckbox[4] then
            gg.clearResults()
            gg.searchNumber("-741284489", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
            gg.getResults(100)
            gg.editAll("-535421151", gg.TYPE_DWORD)
            gg.clearResults()
            gg.toast("Small Garbage Dump > OMEGA Recycling Center")
        end
        if OmegaServicesCheckbox[5] then
            gg.clearResults()
            gg.searchNumber("583140736", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
            gg.getResults(100)
            gg.editAll("925375395", gg.TYPE_DWORD)
            gg.clearResults()
            gg.toast("Small Fire Station > Maxis Manor")
        end
        if OmegaServicesCheckbox[6] then
            gg.clearResults()
            gg.searchNumber("612373322", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
            gg.getResults(100)
            gg.editAll("734850349 ", gg.TYPE_DWORD)
            gg.clearResults()
            gg.toast("Small Factory > Nano Factory")
        end
        if
            OmegaServicesCheckbox[1] == false and OmegaServicesCheckbox[2] == false and
                OmegaServicesCheckbox[3] == false and
                OmegaServicesCheckbox[4] == false and
                OmegaServicesCheckbox[5] == false and
                OmegaServicesCheckbox[6] == false
         then
            gg.alert("Tick at least one checkbox")
            OmegaServices()
        else
            gg.sleep(2000)
            gg.toast("Please Go To Daniel's City")
        end
    end
end

function NeoMall()
    gg.clearResults()
    gg.searchNumber("424671600 ", 4)
    gg.getResults(100)
    gg.editAll("2087261488 ", 4)
    gg.clearResults()
    gg.toast("Neo Mall Unlocked")
    gg.sleep(2000)
    gg.toast("Please Go To Daniel's City")
end

function AirPort()
    gg.clearResults()
    gg.searchNumber("680556997 ", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("734824390 ", gg.TYPE_DWORD)
    gg.clearResults()
    gg.toast("Air Port Unlocked")
    gg.sleep(2000)
    gg.toast("Please Go To Daniel's City")
end

function VuTower()
    gg.clearResults()
    gg.searchNumber("2019791904 ", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("1362697172 ", gg.TYPE_DWORD)
    gg.clearResults()
    gg.toast("Vu's Tower Max Level Unlocked")
    gg.sleep(2000)
    gg.toast("Please Go To Daniel's City")
end

function CargoShip()
    gg.clearResults()
    gg.searchNumber("1156002580", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("667465812", gg.TYPE_DWORD)
    gg.clearResults()
    gg.toast("Cargo Ship Unlocked")
    gg.sleep(2000)
    gg.toast("Please Go To Daniel's City")
end

function VuPass()
    gg.searchNumber(VuPassValue, gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
    gg.searchPointer(0)
    gg.searchPointer(0)

    local t = gg.getResults(gg.getResultsCount())
    gg.clearResults()
    gg.addListItems(t)

    local t = gg.getListItems()
    gg.clearList()

    for i, v in ipairs(t) do
        v.address = v.address + 0x1A8
        v.flags = gg.TYPE_QWORD
        v.value = "-1"
    end

    gg.addListItems(t)
    gg.setValues(t)
    gg.clearList()

    gg.toast("Vu's Pass Unlocked")
end

function MayorPass()
    gg.searchNumber(MayorPassValue, gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
    gg.searchPointer(0)
    gg.searchPointer(0)

    local t = gg.getResults(gg.getResultsCount())
    gg.clearResults()
    gg.addListItems(t)

    local t = gg.getListItems()
    gg.clearList()

    for i, v in ipairs(t) do
        v.address = v.address + 0x1A8
        v.flags = gg.TYPE_QWORD
        v.value = "-1"
    end

    gg.addListItems(t)
    gg.setValues(t)
    gg.clearList()

    gg.toast("Mayor Pass Unlocked")
end

function UpgradeShopLevel()
    local UpgradeShopLevelCheckbox =
        gg.prompt(
        {
            "\n[Building Supplies Store]\n",
            "\n[Hardware Store]\n",
            "\n[Farmer's Market]\n",
            "\n[Furniture Store]\n",
            "\n[Gardening Supplies Store]\n",
            "\n[Donut Shop]\n",
            "\n[Fashion Store]\n",
            "\n[Fast Food Restaurant]\n",
            "\n[Home Appliances Store]\n"
        },
        nil,
        {
            "checkbox",
            "checkbox",
            "checkbox",
            "checkbox",
            "checkbox",
            "checkbox",
            "checkbox",
            "checkbox",
            "checkbox"
        }
    )
    if UpgradeShopLevelCheckbox == nil then
        gg.toast("Canceled")
        Arm64v8a()
    else
        if UpgradeShopLevelCheckbox[1] then
            gg.clearResults()
            gg.clearList()
            gg.searchNumber("960415804", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
            gg.getResults(200)
            gg.editAll("105664762", gg.TYPE_DWORD)
            gg.toast("Building Supplies Store Maxed Out")
        end
        if UpgradeShopLevelCheckbox[2] then
            gg.clearResults()
            gg.searchNumber("-187177827", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
            gg.getResults(200)
            gg.editAll("-690676293", gg.TYPE_DWORD)
            gg.toast("Hardware Store Maxed Out")
        end
        if UpgradeShopLevelCheckbox[3] then
            gg.clearResults()
            gg.searchNumber("2030607321", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
            gg.getResults(200)
            gg.editAll("-1853924489", gg.TYPE_DWORD)
            gg.toast("Farmer's Market Maxed Out")
        end
        if UpgradeShopLevelCheckbox[4] then
            gg.clearResults()
            gg.searchNumber("1444038310", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
            gg.getResults(200)
            gg.editAll("-1684984028", gg.TYPE_DWORD)
            gg.toast("Furniture Store Maxed Out")
        end
        if UpgradeShopLevelCheckbox[5] then
            gg.clearResults()
            gg.searchNumber("-1603072541", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
            gg.getResults(200)
            gg.editAll("-1221457599", gg.TYPE_DWORD)
            gg.toast("Gardening Supplies Store Maxed Out")
        end
        if UpgradeShopLevelCheckbox[6] then
            gg.clearResults()
            gg.searchNumber("271162441", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
            gg.getResults(200)
            gg.editAll("-516045337", gg.TYPE_DWORD)
            gg.toast("Donut Shop Maxed Out")
        end
        if UpgradeShopLevelCheckbox[7] then
            gg.clearResults()
            gg.searchNumber("-1470979549", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
            gg.getResults(200)
            gg.editAll("-134466175", gg.TYPE_DWORD)
            gg.toast("Fashion Store Maxed Out")
        end
        if UpgradeShopLevelCheckbox[8] then
            gg.clearResults()
            gg.searchNumber("-1568621139", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
            gg.getResults(200)
            gg.editAll("-92005173", gg.TYPE_DWORD)
            gg.toast("Fast Food Restaurant Maxed Out")
        end
        if UpgradeShopLevelCheckbox[9] then
            gg.clearResults()
            gg.searchNumber("-278168705", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
            gg.getResults(200)
            gg.editAll("2135220573", gg.TYPE_DWORD)
            gg.toast("Home Appliances Store Maxed Out")
        end
        if
            UpgradeShopLevelCheckbox[1] == false and UpgradeShopLevelCheckbox[2] == false and
                UpgradeShopLevelCheckbox[3] == false and
                UpgradeShopLevelCheckbox[4] == false and
                UpgradeShopLevelCheckbox[5] == false and
                UpgradeShopLevelCheckbox[6] == false and
                UpgradeShopLevelCheckbox[7] == false and
                UpgradeShopLevelCheckbox[8] == false and
                UpgradeShopLevelCheckbox[9] == false
         then
            gg.alert("Tick at least one checkbox")
            UpgradeShopLevel()
        else
            gg.sleep(2000)
            gg.toast("Please Go To Daniel's City")
        end
    end
end

function InstantProductionTime()
    gg.clearList()
    gg.clearResults()
    gg.searchNumber(FactoryValue, gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)

    local t = gg.getResults(gg.getResultsCount())
    gg.clearResults()
    gg.addListItems(t)

    local t = gg.getListItems()
    gg.clearList()

    for i, v in ipairs(t) do
        v.address = v.address - 0x48
    end
    gg.addListItems(t)
    gg.loadResults(t)
    gg.clearList()

    gg.refineNumber("16", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)

    local t = gg.getResults(1)
    gg.clearResults()
    gg.addListItems(t)
    local tb = gg.getListItems()
    gg.clearList()

    for i, v in ipairs(tb) do
        v.address = v.address - 0x8
    end
    gg.addListItems(tb)

    gg.sleep(500)
    local ttt = gg.getListItems()
    gg.clearList()

    gg.searchNumber(ttt[1].value, gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)

    local t = gg.getResults(116)
    gg.clearResults()
    gg.addListItems(t)

    local t = gg.getListItems()
    gg.clearList()

    for i, v in ipairs(t) do
        v.address = v.address + 0x9C
        v.flags = gg.TYPE_DWORD
        v.value = "1000"
    end

    gg.addListItems(t)
    gg.setValues(t)

    gg.sleep(1000)
    gg.clearList()
    ExcludeItemRequirement()
end

function ExcludeItemRequirement()
    gg.clearList()
    gg.clearResults()
    gg.searchNumber(FactoryValue, gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)

    local t = gg.getResults(gg.getResultsCount())
    gg.clearResults()
    gg.addListItems(t)

    local t = gg.getListItems()
    gg.clearList()

    for i, v in ipairs(t) do
        v.address = v.address - 0x48
    end
    gg.addListItems(t)
    gg.loadResults(t)
    gg.clearList()

    gg.refineNumber("16", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)

    local t = gg.getResults(1)
    gg.clearResults()
    gg.addListItems(t)
    local tb = gg.getListItems()
    gg.clearList()

    for i, v in ipairs(tb) do
        v.address = v.address - 0x8
    end
    gg.addListItems(tb)

    gg.sleep(500)
    local ttt = gg.getListItems()
    gg.clearList()

    gg.searchNumber(ttt[1].value, gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)

    local t = gg.getResults(116)
    gg.clearResults()
    gg.addListItems(t)

    local t = gg.getListItems()
    gg.clearList()

    for i, v in ipairs(t) do
        v.address = v.address + 0x1B8
        v.flags = gg.TYPE_DWORD
        v.value = "0"
    end

    gg.addListItems(t)
    gg.setValues(t)

    local t = gg.getListItems()

    for i, v in ipairs(t) do
        v.address = v.address + 0x8
        v.flags = gg.TYPE_DWORD
        v.value = "0"
    end

    gg.addListItems(t)
    gg.setValues(t)

    local t = gg.getListItems()

    for i, v in ipairs(t) do
        v.address = v.address + 0x8
        v.flags = gg.TYPE_DWORD
        v.value = "0"
    end

    gg.addListItems(t)
    gg.setValues(t)

    gg.sleep(1000)
    gg.clearList()
    gg.toast("Instant Production Time & Exclude Item Requirement")
end

function BuldozingKeepingRestrictedBuilding()
    gg.clearList()
    gg.clearResults()
    gg.searchNumber(MAXIS, gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)

    local t = gg.getResults(gg.getResultsCount())
    gg.clearResults()
    gg.addListItems(t)

    local t = gg.getListItems()
    gg.clearList()

    for i, v in ipairs(t) do
        v.address = v.address - 0x48
    end
    gg.addListItems(t)
    gg.loadResults(t)
    gg.clearList()

    gg.refineNumber("3", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)

    local t = gg.getResults(1)
    gg.clearResults()
    gg.addListItems(t)
    local tb = gg.getListItems()
    gg.clearList()

    for i, v in ipairs(tb) do
        v.address = v.address - 0x8
    end
    gg.addListItems(tb)

    gg.sleep(500)
    local ttt = gg.getListItems()
    gg.clearList()

    gg.searchNumber(ttt[1].value, gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)

    local t = gg.getResults(2000)
    gg.clearResults()
    gg.addListItems(t)

    local t = gg.getListItems()
    gg.clearList()

    for i, v in ipairs(t) do
        v.address = v.address + 0x328
        v.flags = gg.TYPE_DWORD
        v.value = "-1"
    end

    gg.addListItems(t)
    gg.setValues(t)

    gg.sleep(1000)
    gg.clearList()
    gg.toast("Buldozer Succes")
end

function PopulationNewResidentialZone()
    gg.searchNumber("-302186785", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)

    local t = gg.getResults(gg.getResultsCount())
    gg.clearResults()
    gg.addListItems(t)

    local t = gg.getListItems()
    gg.clearList()

    for i, v in ipairs(t) do
        v.address = v.address - 0x48
    end
    gg.addListItems(t)
    gg.loadResults(t)
    gg.clearList()

    gg.refineNumber("15", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)

    local t = gg.getResults(1)
    gg.clearResults()
    gg.addListItems(t)

    local t = gg.getListItems()
    gg.clearList()

    for i, v in ipairs(t) do
        v.address = v.address + 0x94
        v.flags = gg.TYPE_DWORD
        v.value = "10000000"
    end

    gg.addListItems(t)
    gg.setValues(t)
    gg.clearList()
end

function Arm64v8aBuilding()
    while true do
        if gg.isVisible(true) then
            MIO = 1
            gg.setVisible(false)
        end
        if MIO == 1 then
            MENU =
                gg.choice(
                {
                    "\n[Residential Zone]\n",
                    "\n[Epic Building]\n",
                    "\n[Regional Building]\n",
                    "\n[Mayor Pass Building]\n",
                    "\n[Back]\n"
                },
                nil,
                ScriptDescription
            )
            if MENU == nil then
            else
                if MENU == 1 then
                    Armebiv7a()
                end
                if MENU == 2 then
                    Armebiv7a()
                end
                if MENU == 3 then
                    Armebiv7a()
                end
                if MENU == 4 then
                    MayorPassBuilding()
                end
                if MENU == 5 then
                    Main()
                end
            end
        end
        MIO = -1
    end
end

function MayorPassBuilding()
    while true do
        if gg.isVisible(true) then
            MIO = 1
            gg.setVisible(false)
        end
        if MIO == 1 then
            MENU =
                gg.choice(
                {
                    "\n[Season 38 | Historic Prague]\n",
                    "\n[Back]\n"
                },
                nil,
                ScriptDescription
            )
            if MENU == nil then
            else
                if MENU == 1 then
                    Alert(Season38Alert, "Next", "Cancel", Season38, MayorPassBuilding)
                end
                if MENU == 2 then
                    Arm64v8aBuilding()
                end
            end
        end
        MIO = -1
    end
end

function Season38()
    local Season38Checkbox =
        gg.prompt(
        {
            "\n[Wind Power Plant > Prague Powder Tower]\n",
            "\n[Basic Water Tower > Prague Charles Bridge]\n",
            "\n[Small Sewage Outflow Pipe > Prague Quadrio Center]\n",
            "\n[Small Garbage Dump > Prague Petrin Tower]\n",
            "\n[Small Fire Station > Prague Old Town Square]\n",
            "\n[Small Police Station > Prague Castleu]\n",
            "\n[Small Health Clinic > Prague National Theatre]\n",
            "\n[Small Fountain Park > Prague Zizkov Tower]\n",
            "\n[Coal Power Plant > Prague Petrin Cathedral]\n"
        },
        nil,
        {
            "checkbox",
            "checkbox",
            "checkbox",
            "checkbox",
            "checkbox",
            "checkbox",
            "checkbox",
            "checkbox",
            "checkbox"
        }
    )
    if Season38Checkbox == nil then
        gg.toast("Canceled")
        MayorPassBuilding()
    else
        if Season38Checkbox[1] then
            gg.clearResults()
            gg.searchNumber(" 751144117 ", gg.TYPE_DWORD)
            gg.getResults(200)
            gg.editAll("-1042592443", gg.TYPE_DWORD)
            gg.toast("Wind Power Plant > Prague Powder Tower")
        end
        if Season38Checkbox[2] then
            gg.clearResults()
            gg.searchNumber(" 139346164 ", gg.TYPE_DWORD)
            gg.getResults(200)
            gg.editAll("-971391086", gg.TYPE_DWORD)
            gg.toast("Basic Water Tower > Prague Charles Bridge")
        end
        if Season38Checkbox[3] then
            gg.clearResults()
            gg.searchNumber("182280403", gg.TYPE_DWORD)
            gg.getResults(200)
            gg.editAll("-84591751", gg.TYPE_DWORD)
            gg.toast("Small Sewage Outflow Pipe > Prague Quadrio Center")
        end
        if Season38Checkbox[4] then
            gg.clearResults()
            gg.searchNumber("-741284489", gg.TYPE_DWORD)
            gg.getResults(200)
            gg.editAll("1544098790", gg.TYPE_DWORD)
            gg.toast("Small Garbage Dump > Prague Petrin Tower")
        end
        if Season38Checkbox[5] then
            gg.clearResults()
            gg.searchNumber("583140736", gg.TYPE_DWORD)
            gg.getResults(200)
            gg.editAll("-2099908710", gg.TYPE_DWORD)
            gg.toast("Small Fire Station > Prague Old Town Square")
        end
        if Season38Checkbox[6] then
            gg.clearResults()
            gg.searchNumber(" -150077002", gg.TYPE_DWORD)
            gg.getResults(200)
            gg.editAll("1073072576", gg.TYPE_DWORD)
            gg.toast("Small Police Station > Prague Castleu")
        end
        if Season38Checkbox[7] then
            gg.clearResults()
            gg.searchNumber(" -66177429", gg.TYPE_DWORD)
            gg.getResults(200)
            gg.editAll("367160678", gg.TYPE_DWORD)
            gg.toast("Small Health Clinic > Prague National Theatre")
        end
        if Season38Checkbox[8] then
            gg.clearResults()
            gg.searchNumber(" -1672104106", gg.TYPE_DWORD)
            gg.getResults(200)
            gg.editAll("892518849", gg.TYPE_DWORD)
            gg.toast("Small Fountain Park > Prague Zizkov Tower")
        end
        if Season38Checkbox[9] then
            gg.clearResults()
            gg.searchNumber(" -1297331478", gg.TYPE_DWORD)
            gg.getResults(200)
            gg.editAll("404602461", gg.TYPE_DWORD)
            gg.toast("Coal Power Plant > Prague Petrin Cathedral")
        end
        if
            Season38Checkbox[1] == false and Season38Checkbox[2] == false and Season38Checkbox[3] == false and
                Season38Checkbox[4] == false and
                Season38Checkbox[5] == false and
                Season38Checkbox[6] == false and
                Season38Checkbox[7] == false and
                Season38Checkbox[8] == false and
                Season38Checkbox[9] == false
         then
            gg.alert("Tick at least one checkbox")
            UpgradeShopLevel()
        else
            gg.sleep(2000)
            gg.toast("Please Go To Daniel's City")
        end
    end
end

-- arm64-v8a | 64bit End

-- armebi-v7a | 32bit Start
function Armebiv7a()
    gg.alert("Coming Soon!")
end

-- armebi-v7a | 32bit End

while true do
    if gg.isVisible(true) then
        MIO = 1
        gg.setVisible(false)
    end
    if MIO == 1 then
        Main()
    end
end
