local ArchInfo64 = gg.getTargetInfo()["x64"]
if ArchInfo64 == false then ArchInfoResult = 32 end
if ArchInfo64 == true then ArchInfoResult = 64 end
local ScriptDescription = "[SimCity BuildIt 1.53.1.121316 " .. ArchInfoResult .. " bit | Mioscape SimCity 0.7.3-beta]"

local FactoryValue = "-1935981107"
local MAXIS = "925375395"
local VuPassValue = "-7995824390300544013"
local MayorPassValue = "-7992622555426941375"

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

local Prompt
local Alert


function GGPrompt(title)
    Prompt = gg.prompt({
        title
    }, { "" }, { "number" })

    if Prompt == nil then
        gg.toast("Canceled")
        Arm64v8a()
    elseif Prompt[1] == "" then
        gg.toast("Canceled")
        Arm64v8a()
    elseif Prompt[1] == "0" then
        gg.toast("Canceled")
        Arm64v8a()
    else
        return Prompt[1]
    end
end

function Alert(message, trueButton, falseButton, trueFunction, falseFunction)
    Alert = gg.alert(message, trueButton, falseButton)
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
            MENU = gg.choice({
                "\n[arm64-v8a | 64bit]\n", "\n[armebi-v7a | 32bit]\n", "\n[Back to Loader]\n"
            }, nil, ScriptDescription)
            if MENU == nil then else
                if MENU == 1 then
                    Arm64v8a()
                end
                if MENU == 2 then
                    Armebiv7a()
                end
                if MENU == 3 then
                    TG = gg.makeRequest(
                            'https://ihya.dev/gg-loader/mioscape-loader.lua')
                        .content
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
            MENU = gg.choice({
                "\n[Max City Storage]\n", "\n[Max Omega Storage]\n", "\n[Max Neo Bank]\n",
                "\n[Experience from Metal]\n", "\n[Omega Services]\n", "\n[Unlock Neo Mall]\n", "\n[Unlock Air Port]\n",
                "\n[Unlock Vu's Tower Max Level]\n", "\n[Unlock Cargo Ship]\n", "\n[Unlock Vu's Pass]\n",
                "\n[Unlock Mayor Pass]\n", "\n[Upgrade Shop Building]\n",
                "\n[Instant Production Time & Exclude Item Requirement]\n",
                "\n[Back]\n"
            }, nil, ScriptDescription)
            if MENU == nil then else
                if MENU == 1 then
                    Alert("Pastikan City Storage masih di angka 40 (termasuk Bangunan City Storage)", "Next", "Cancel",
                        CityStorage, Arm64v8a)
                end
                if MENU == 2 then
                    Alert("Pastikan Omega Storage masih di angka 15 (termasuk Bangunan Omega Storage)", "Next", "Cancel",
                        OmegaStorage, Arm64v8a)
                end
                if MENU == 3 then
                    Alert("Pastikan Neo Bank masih di angka 8000 (termasuk Bangunan Neo Bank)", "Next", "Cancel", NeoBank,
                        Arm64v8a)
                end
                if MENU == 4 then
                    ExpfromMetal()
                end
                if MENU == 5 then
                    OmegaServices()
                end
                if MENU == 6 then
                    NeoMall()
                end
                if MENU == 7 then
                    AirPort()
                end
                if MENU == 8 then
                    VuTower()
                end
                if MENU == 9 then
                    CargoShip()
                end
                if MENU == 10 then
                    VuPass()
                end
                if MENU == 11 then
                    Alert("Script ini akan membuat point Plumbob menjadi Mines (-)", "Next", "Cancel", MayorPass,
                        Arm64v8a)
                end
                if MENU == 12 then
                    UpgradeShopLevel()
                end
                if MENU == 13 then
                    InstantProductionTime()
                    ExcludeItemRequirement()
                end
                if MENU == 14 then
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
    gg.clearResults();
    gg.clearList();
    gg.searchNumber(FactoryValue, gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0);

    local t = gg.getResults(gg.getResultsCount());
    gg.clearResults();
    gg.addListItems(t);

    local t = gg.getListItems();
    gg.clearList();

    for i, v in ipairs(t) do
        v.address = v.address - 0x48;
    end;
    gg.addListItems(t); gg.loadResults(t); gg.clearList();

    gg.refineNumber("16", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0);

    local t = gg.getResults(1);
    gg.clearResults();
    gg.addListItems(t);

    local t = gg.getListItems();
    gg.clearList();

    for i, v in ipairs(t) do
        v.address = v.address + 0x1F0;
    end;

    gg.addListItems(t);

    local t = gg.getListItems();
    gg.clearList();
    for i, v in ipairs(t) do
        v.value = Prompt[1];
        v.name  = "Level_Form_Metal";
    end;

    gg.addListItems(t);
    gg.setValues(t);
    gg.toast("Experience From Metal Changed");

    gg.sleep(5000);
    local tc = gg.getListItems(t);
    gg.clearList();
    for i, v in ipairs(tc) do
        v.value = "0";
    end;

    gg.addListItems(tc);
    gg.setValues(tc);
    gg.clearResults();
    gg.clearList();
end

function OmegaServices()
    local OmegaServicesCheckbox = gg.prompt(
        { "\n[Wind Power Plant > OMEGA Power Plant]\n", "\n[Basic Water Tower > OMEGA Water Tower]\n",
            "\n[Small Sewage Outflow Pipe > OMEGA Sewage Treatment]\n",
            "\n[Small Garbage Dump > OMEGA Recycling Center]\n",
            "\n[Small Fire Station > Maxis Manor]\n", "\n[Small Factory > Nano Factory]\n" }, nil,
        { "checkbox", "checkbox", "checkbox", "checkbox", "checkbox", "checkbox" })
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
    end
    gg.sleep(2000)
    gg.toast("Please Go To Daniel's City")
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
    gg.searchNumber(VuPassValue, gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1, 0);
    gg.searchPointer(0);
    gg.searchPointer(0);

    local t = gg.getResults(gg.getResultsCount());
    gg.clearResults();
    gg.addListItems(t);

    local t = gg.getListItems();
    gg.clearList();

    for i, v in ipairs(t) do
        v.address = v.address + 0x1A8;
        v.flags = gg.TYPE_QWORD;
        v.value = "-1";
    end

    gg.addListItems(t);
    gg.setValues(t);
    gg.clearList();
end

function MayorPass()
    gg.searchNumber(MayorPassValue, gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1, 0);
    gg.searchPointer(0);
    gg.searchPointer(0);

    local t = gg.getResults(gg.getResultsCount());
    gg.clearResults();
    gg.addListItems(t);

    local t = gg.getListItems();
    gg.clearList();

    for i, v in ipairs(t) do
        v.address = v.address + 0x1A8;
        v.flags = gg.TYPE_QWORD;
        v.value = "-1";
    end

    gg.addListItems(t);
    gg.setValues(t);
    gg.clearList();
end

function UpgradeShopLevel()
    gg.clearResults()
    gg.clearList()
    gg.searchNumber("960415804", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
    gg.getResults(200)
    gg.editAll("105664762", gg.TYPE_DWORD)

    gg.clearResults()
    gg.searchNumber("-187177827", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
    gg.getResults(200)
    gg.editAll("-690676293", gg.TYPE_DWORD)


    gg.clearResults()
    gg.searchNumber("2030607321", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
    gg.getResults(200)
    gg.editAll("-1853924489", gg.TYPE_DWORD)


    gg.clearResults()
    gg.searchNumber("1444038310", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
    gg.getResults(200)
    gg.editAll("-1684984028", gg.TYPE_DWORD)


    gg.clearResults()
    gg.searchNumber("-1603072541", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
    gg.getResults(200)
    gg.editAll("-1221457599", gg.TYPE_DWORD)


    gg.clearResults()
    gg.searchNumber("271162441", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
    gg.getResults(200)
    gg.editAll("-516045337", gg.TYPE_DWORD)


    gg.clearResults()
    gg.searchNumber("-1470979549", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
    gg.getResults(200)
    gg.editAll("-134466175", gg.TYPE_DWORD)


    gg.clearResults()
    gg.searchNumber("-1568621139", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
    gg.getResults(200)
    gg.editAll("-92005173", gg.TYPE_DWORD)


    gg.clearResults()
    gg.searchNumber("-278168705", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
    gg.getResults(200)
    gg.editAll("2135220573", gg.TYPE_DWORD)
    gg.clearResults()

    gg.toast("Shop Building Upgraded")
end

function InstantProductionTime()
    gg.clearList(); gg.clearResults();
    gg.searchNumber(FactoryValue, gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0);

    local t = gg.getResults(gg.getResultsCount());
    gg.clearResults();
    gg.addListItems(t);

    local t = gg.getListItems(); gg.clearList();

    for i, v in ipairs(t) do
        v.address = v.address - 0x48;
    end
    gg.addListItems(t); gg.loadResults(t);
    gg.clearList();

    gg.refineNumber("16", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0);

    local t = gg.getResults(1);
    gg.clearResults();
    gg.addListItems(t);
    local tb = gg.getListItems();
    gg.clearList();

    for i, v in ipairs(tb) do
        v.address = v.address - 0x8;
    end
    gg.addListItems(tb);

    gg.sleep(500);
    local ttt = gg.getListItems();
    gg.clearList();

    gg.searchNumber(ttt[1].value, gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0);

    local t = gg.getResults(116);
    gg.clearResults();
    gg.addListItems(t);

    local t = gg.getListItems();
    gg.clearList();

    for i, v in ipairs(t) do
        v.address = v.address + 0x9C;
        v.flags = gg.TYPE_DWORD;
        v.value = "1000";
    end

    gg.addListItems(t);
    gg.setValues(t);


    gg.sleep(1000);
    gg.clearList();
end

function ExcludeItemRequirement()
    gg.clearList(); gg.clearResults();
    gg.searchNumber(FactoryValue, gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0);

    local t = gg.getResults(gg.getResultsCount());
    gg.clearResults();
    gg.addListItems(t);

    local t = gg.getListItems();
    gg.clearList();

    for i, v in ipairs(t) do
        v.address = v.address - 0x48;
    end
    gg.addListItems(t); gg.loadResults(t);
    gg.clearList();

    gg.refineNumber("16", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0);

    local t = gg.getResults(1);
    gg.clearResults();
    gg.addListItems(t);
    local tb = gg.getListItems();
    gg.clearList();

    for i, v in ipairs(tb) do
        v.address = v.address - 0x8;
    end
    gg.addListItems(tb);

    gg.sleep(500);
    local ttt = gg.getListItems();
    gg.clearList();

    gg.searchNumber(ttt[1].value, gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0);

    local t = gg.getResults(116);
    gg.clearResults();
    gg.addListItems(t);

    local t = gg.getListItems();
    gg.clearList();

    for i, v in ipairs(t) do
        v.address = v.address + 0x1B8;
        v.flags = gg.TYPE_DWORD;
        v.value = "0";
    end

    gg.addListItems(t);
    gg.setValues(t);

    local t = gg.getListItems();

    for i, v in ipairs(t) do
        v.address = v.address + 0x8;
        v.flags = gg.TYPE_DWORD;
        v.value = "0";
    end

    gg.addListItems(t);
    gg.setValues(t);

    local t = gg.getListItems();

    for i, v in ipairs(t) do
        v.address = v.address + 0x8;
        v.flags = gg.TYPE_DWORD;
        v.value = "0";
    end

    gg.addListItems(t);
    gg.setValues(t);


    gg.sleep(1000);
    gg.clearList();
    gg.toast("Instant Production Time & Exclude Item Requirement")
end

-- arm64-v8a | 64bit End

-- armebi-v7a | 32bit Start
function Armebiv7a()
    gg.toast("Coming Soon!")
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
