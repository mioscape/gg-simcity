local ScriptDescription = "Support SimCity BuildIt 1.53.1.121316 | Mioscape SimCity 0.2-beta"

local PABRIK = "-1935981107"
local MAXIS = "925375395"
local PASSVU = "-7995824390300544013"
local WALKOT = "-7992622555426941375"

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


function GGPrompt(title)
    PROMPT = gg.prompt({
        title
    }, { "" }, { "number" })
    return (input)
end

function Main()
    MIO = 1
    MENU = gg.choice({
        "\n[arm64-v8a | 64bit]\n", "\n[armebi-v7a | 32bit]\n", "\n[Exit]\n"
    }, nil, ScriptDescription)
    if MENU == 1 then
        Arm64v8a()
    end
    if MENU == 2 then
        Armebiv7a()
    end
    if MENU == 3 then
        os.exit()
    end
    MIO = -1
end

-- arm64-v8a | 64bit Start

function Arm64v8a()
    MIO = 1
    MENU = gg.choice({
        "\n[Max City Storage]\n", "\n[Max Omega Storage]\n", "\n[Max Neo Bank]\n",
        "\n[Small Factory to Nano Factory]\n",
        "\n[Experience from Metal]\n", "\n[Back]\n"
    }, nil, "")
    if MENU == 1 then
        CityStorage()
    end
    if MENU == 2 then
        OmegaStorage()
    end
    if MENU == 3 then
        NeoBank()
    end
    if MENU == 4 then
        SFtoNF()
    end
    if MENU == 5 then
        ExpfromMetal()
    end
    if MENU == 6 then
        Main()
    end
    MIO = -1
end

function CityStorage()
    gg.alert("Pastikan City Storage masih di angka 40 (termasuk Bangunan City Storage)", nil, "Next")

    gg.clearResults()
    gg.searchNumber("1785034572 ", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("-1223401015 ", gg.TYPE_DWORD)
    gg.clearResults()
    gg.toast("City Storage Maxed Out")
    gg.toast("Please Go To Daniel's City")
end

function OmegaStorage()
    gg.alert("Pastikan Omega Storage masih di angka 15 (termasuk Bangunan Omega Storage)", nil, "Next")

    gg.clearResults()
    gg.searchNumber("-5428496", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
    gg.getResults(200)
    gg.editAll("-179140214", gg.TYPE_DWORD)
    gg.clearResults()
    gg.toast("Omega Storage Maxed Out")
    gg.toast("Please Go To Daniel's City")
end

function NeoBank()
    gg.alert("Pastikan Neo Bank masih di angka 8000 (termasuk Bangunan Neo Bank)", nil, "Next")

    gg.clearResults()
    gg.searchNumber("1148880551", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
    gg.getResults(200)
    gg.editAll("-741647361", gg.TYPE_DWORD)
    gg.clearResults()
    gg.toast("Neo Bank Maxed Out")
    gg.toast("Please Go To Daniel's City")
end

function SFtoNF()
    gg.clearResults()
    gg.searchNumber("612373322", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("734850349 ", gg.TYPE_DWORD)
    gg.clearResults()
    gg.toast("Small Factory to Nano Factory")
    gg.toast("Please Go To Daniel's City")
end

function ExpfromMetal()
    GGPrompt("Amount Experience From Metal")
    gg.clearResults();
    gg.clearList();
    gg.searchNumber(PABRIK, gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0);

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
        v.value = PROMPT[1];
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
    gg.clearResults(); gg.clearList();
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
