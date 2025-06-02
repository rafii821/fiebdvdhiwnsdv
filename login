local accounts = [[
tskskidhefsjzaftsoje@gmail.com|5b:9b:a7:c4:da:c3:09dff7e58145379c7c56bedbd91ec10b:A2BE6949A2EEFCF8D272FECFBC17DCB7:jQLK5gfRvVgBOkZTHk3tA/6e/mTnR5Nyz7p9IId5D3fXHawKBXSh/1vVE1r/SZGsoqxEvAyiUclWH3WVVfDMAuuDCZ9XCgM1gaAt35hIj4tHanFfQ+aI+W1KTf3tSF9Z/SLUeTCFlfTJqGCluQqxZra9IIc24wtPmPBdd2vWniIOf9J4C+T+m5liYFSY8TOv3Ogk5h2RXERZ0I8gMVa3+KQv3IBLitU0832GaZRR2KUUuRck3gNVhmCApul/DMxoK5SskYtIQlPQC8ZiBPLiTczTlpGCsbDrEZ15xFHHLPCVDwSanjqD+YZ+wx9U9puLPlUHebhDs5iKxoVtJnBif1SLg2hNP0ZdmDKTOm546gkQok0p4qUAUPe4hjGbUCYpfzcXqf8648dTHWgPymRHUoMk/vz661dyVEYr4/SrJLt0C+jAGP6x7Cl+fb1K7dQkKAXB7PLBfaO+AzCBeGCcmg==
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
