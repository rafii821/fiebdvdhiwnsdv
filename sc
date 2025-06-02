--Auto take mag by Kwelp
--Last updated 10/10/2024
magWName = "WORLD"
magWId = "DOORID"

magWName = string.upper(magWName)
magWId = string.upper(magWId)

function canReach(x, y)
  print("Trying to reach "..x, y)
  for x_offset = -1, 1, 1 do
    for y_offset = -1, 1, 1 do
      local stat = #getBot():getPath(x + x_offset, y + y_offset) > 0 or getBot():isInTile(x + x_offset, y + y_offset)
      print(stat)
      if stat then
        return {["x"] = x + x_offset, ["y"] = y + y_offset}
      end
    end
  end
  return false
end

function takeMag(varlist,netid)
  if varlist:get(0):getString() == "OnDialogRequest" then
    if varlist:get(1):getString():find("wMAGPLANT 5000") then
      takeMag = true
      sleep(100)
      unlistenEvents()
    end
  end
end
addEvent(Event.variantlist, takeMag)

function getMag()
  for _, tile in pairs(getTiles()) do
    if tile.fg == 5638 then
      if canReach(tile.x, tile.y) and tile:getExtra().count > 0 then
        magFp = canReach(tile.x, tile.y)
        getBot():findPath(magFp.x, magFp.y)
        while getBot():isInTile(magFp.x, magFp.y) and not takeMag and getBot():getInventory():getItemCount(5640) == 0 and getBot():getWorld():hasAccess(tile.x, tile.y) do --join <https://discord.gg/8yqdQcHfTe> for more!
          getBot():wrench(tile.x, tile.y)
          listenEvents(5)
        end
        takeMag = false
        getBot():sendPacket(2, "action|dialog_return\ndialog_name|itemsucker\ntilex|"..tile.x.."|\ntiley|"..tile.y.."|\nbuttonClicked|getplantationdevice")
        sleep(300)
      elseif not canReach(tile.x, tile.y) then
        print("Can't reach magplant!")
        getBot():stopScript()
      elseif tile:getExtra().count == 0 then
        print("Mag is empty!")
        getBot():stopScript()
      end
    end
  end
end

while true do
  while not getBot():isInWorld(magWName) do
    getBot():warp(magWName, magWId)
    sleep(6000)
  end
  getMag()
end
