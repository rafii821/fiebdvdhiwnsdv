--======= REON STORE - CHANGE ID DOOR =======--

worldFarm = {
"FSJOTTEDAF|V2ZRWQ4",
"Y8EMZTF2UN|7SXTS8V",
"NZPK05OUGC|33RM3W1",
"B7GPQYFZJ4|R2ZK60L",
"PPI8OPZYJQ|HGXLHM7",
"66K5Z3H4IK|C3SXU4R",
"UIK1ULW1GY|915BPE9",
"C78AREDCL6|2D33YAE",
"SS03EMSYRN|UIJNVGV",
"CO0L38KJIE|U11FAF8",
"7G1USJ8KYH|VRX3ZP2",
"GWIMMTSV89|CCE0X8F",
"H2S646LWV3|AD2B98S",
"SEHO930AW2|W1EA1GT",
"M99EDPFMRN|ZGK1V7L",
"DWCKVE5S4R|NBQ070I",
}

doorFarm = "RAKSOR"  -- ID door farm
randomID = true         -- Auto random ID door for farm
countNumber = 7         -- Random length ID door

resultFarm = "FARM-CHANGED.txt"     -- Result ID Door in TXT

--======================================--
bot = getBot()

function onVarDoor(variant, netid)
    if variant:get(0):getString() == "OnDialogRequest" and variant:get(1):getString():find("end_dialog|door_edit") then
        pkt = string.format("action|dialog_return\ndialog_name|door_edit\ntilex|%d|\ntiley|%d|\ndoor_name|RAKSOR\ndoor_target|\ndoor_id|"..doorFarm.."\ncheckbox_locked|0", variant:get(1):getString():match("tilex|(%d+)"),variant:get(1):getString():match("tiley|(%d+)"))
        bot:sendPacket(2, pkt)
        unlistenEvents()
    end
end

function warp(world,id)
    while not bot:isInWorld(world:upper()) and not nuked do
        while bot.status ~= BotStatus.online do
            sleep(8000)
        end
        bot:warp(world,id)
        sleep(8000)
        while getTile(bot.x,bot.y).fg == 6 do
            while bot.status ~= BotStatus.online do
                sleep(8000)
            end
            bot:warp(world:upper(),id:upper())
            sleep(1000)
        end
    end
end

function name(count)
    local str = ""
    for i = 1, count do
        str = str..string.char(math.random(97,122))
    end
    return str:upper()
end

function edit(x,y,id)
    addEvent(Event.variantlist, onVarDoor)
    bot:wrench(bot.x + x,bot.y + y)
    listenEvents(5)
    sleep(1000)
end

while bot.status ~= BotStatus.online do
    sleep(10000)
end

for _, world in pairs(worldFarm) do
    w, d = string.match(world, "([^|]+)|([^|]+)")
    warp(w,d)
    sleep(100)
    if randomID then
        doorFarm = name(countNumber)
        sleep(100)
    end
    for i = 1,3 do
        edit(0,0,doorFarm)
        sleep(500)
    end
    append(resultFarm, w.."|"..doorFarm..'\n')
end
