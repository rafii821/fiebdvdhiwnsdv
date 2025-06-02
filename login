local accounts = [[
ramirosoppt587@gmail.com|44:48:00:ed:19:2f:035e5347a6d6cf9277f8479cbcb650c5:FB454BDE1DFCCFD3DB64954B2CDBB8CD:jQLK5gfRvVgBOkZTHk3tAwECZXpQQzx090xmQvajAthIYZYQ8x4ej985fhTqvXQHCQYaULCWae2FXDeqdvhSeBdXWrUiB0eF2PYvIJI82G+pqMUnj981lJx/EzoMRamD8G99rQKe6JbM44crxK6sBEZC5F7aMAkOkWZ7IQFSzjvrluPzzpFFIacXm1nn1WUEYYrR/Mav/VUjGBK471U7BQZxCE79wTbrV5DCQGYM03QZmMTwxZp7oOPYELJrg2pm9Cmz5dM6KeQojCwLgKFbGxiVXtFQspQTFeywkH36B4UnWtfoJdRbWYSd5Ay7WBeujbaHZkBRrUYm5aDnhNWG9UM0pasAgQi73H0C5bYoP0lJUK6XH85VgheS1Dto5+208TwIqGzhabJi49VG70hhQURdlfASyacZ7JLKrvyUwI5WikKPhtRNg4KaugiP6/+UyBKQc56rRLGh4InA6yok2g==
]]

for account in accounts:gmatch("[^\n]+") do
    local email, sisa = account:match("([^|]+)|(.+)")

    if email and sisa then
        local mac, rid, wk, ltoken = sisa:match("([^|]+):([^|]+):([^|]+):(.+)")
        if mac and rid and wk and ltoken then
            local details = {
                ["display"] = email,
                ["secret"] = email,
                ["name"] = ltoken,
                ["rid"] = rid,
                ["mac"] = mac,
                ["wk"] = wk,
                ["platform"] = 0,
            }
            local bot = addBot(details)
            bot:getConsole().enabled = true
            sleep(3)
        end
    else
        local mac, rid, wk, ltoken = sisa:match("([^|]+):([^|]+):([^|]+):(.+)")
        if mac and rid and wk and ltoken then
            local details = {
                ["name"] = ltoken,
                ["rid"] = rid,
                ["mac"] = mac,
                ["wk"] = wk,
                ["platform"] = 0,
            }
            local bot = addBot(details)
            bot:getConsole().enabled = true
            sleep(3)
        end
    end
end
