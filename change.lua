local server = HttpClient.new()
oldCounter = 0
bwlimit = 2000
checkInterval = 5
checkInterval = checkInterval * 1000 * 60
server.url = "https://growtopiagame.com/detail"
link = "https://discord.com/api/webhooks/1379540561069084733/as22OZMbDGyUv4yY7t4DjLwhLaQyPBxSI0GxeCkZgZFKdjGwElO4rV-ccF8vxKMWaCNr"
discordUserId = "makima4552" --to tag during bw

function wh(msg)
  wbh = Webhook.new(link)
  wbh.content = "[BW Counter] " .. msg
  wbh:send()
end

wh("BW Counter started!\nBw notifier : "..bwlimit.."\nCheck Interval : "..checkInterval / 60 / 1000 .." minute(s)")

while true do
  respond = server:request().body
  local player_count = respond:match('"online_user":"(%d+)"')
  player_count = tonumber(player_count)
  player_difference_raw = oldCounter - player_count
  oldCounter = player_count
  if player_difference_raw > 0 then
    player_difference_sym = "-"
  else
    player_difference_sym = "+"
  end
  if player_difference_raw > bwlimit and player_difference_sym == "-" then
    wh("<t:"..os.time()..":T> "..player_count.." | (**"..player_difference_sym..math.abs(player_difference_raw).."**) | <@"..discordUserId..">")
  else
    wh("<t:"..os.time()..":T> "..player_count.." | (**"..player_difference_sym..math.abs(player_difference_raw).."**)")
  end
  sleep(checkInterval)
end
