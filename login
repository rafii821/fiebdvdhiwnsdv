local accounts = [[
karshjonny@gmail.com|ef:67:ce:ff:d7:7a:bcd5e2f3384aa9e8c46250ad1c618756:DEF5E8595FC5EC1DE5A2CFA2AAA23F3B:Wz4+sGRHyvs+sNKOUOq4LjBfneBH64FwgelFWIzh1zy3VtGuGsmhdnrZ0AhZVAoF+hjfMXhFjWG8G9m5N6gOD76NOu98zq5+0lmjuDdi/lz8SQHrXOWYYN4b/c4623HxNWSRzqvo5gJ9Z4YcXMreyQenfCDPICAFs7exk2IDmEHtwUINSXcTKOrnfvJhuoAmRCb5Fxc86gamHtFQu314dW3qx9lxWjURQZrYlEE5jsiPvHiZdKOPdBpkuPnNl2bAnLktmHPXFj6w84tRhf0gFKwlnWW8vbCfh20JuNjKq52LQ2H3OfV0k1Vu+ANp6FqXhnIjt45NWcnecYsuy5tbYO1reDd4i7o9gkAMBmKx/uqsXpsFA2H+e13c8OWgu1iQrUrhJzYVBtC3Es48AzBEYRKzeKEJIL3B7riM3YNvQTMsERd/Hlo5awJB0P928RJkSGUUO+YLV6o+1QGFV9eOpA==
]]

--karshjonny@gmail.com|ef:67:ce:ff:d7:7a:bcd5e2f3384aa9e8c46250ad1c618756:DEF5E8595FC5EC1DE5A2CFA2AAA23F3B:Wz4+sGRHyvs+sNKOUOq4LjBfneBH64FwgelFWIzh1zy3VtGuGsmhdnrZ0AhZVAoF+hjfMXhFjWG8G9m5N6gOD76NOu98zq5+0lmjuDdi/lz8SQHrXOWYYN4b/c4623HxNWSRzqvo5gJ9Z4YcXMreyQenfCDPICAFs7exk2IDmEHtwUINSXcTKOrnfvJhuoAmRCb5Fxc86gamHtFQu314dW3qx9lxWjURQZrYlEE5jsiPvHiZdKOPdBpkuPnNl2bAnLktmHPXFj6w84tRhf0gFKwlnWW8vbCfh20JuNjKq52LQ2H3OfV0k1Vu+ANp6FqXhnIjt45NWcnecYsuy5tbYO1reDd4i7o9gkAMBmKx/uqsXpsFA2H+e13c8OWgu1iQrUrhJzYVBtC3Es48AzBEYRKzeKEJIL3B7riM3YNvQTMsERd/Hlo5awJB0P928RJkSGUUO+YLV6o+1QGFV9eOpA==

--civicsjuniors@gmail.com|94:e8:a3:33:82:be:bb31e95c8581c9a622d74a775bcbce4f:1D0645BACC34E4CEAE1E5A4C7E5E8A99:Wz4+sGRHyvs+sNKOUOq4LnRCgT5G+sVH4wE3CIMCuNjJZ+H+LPRscgQxH15XgDBHunZ4teC2kvz3dxl4kzDeDBytZ8OQuC3Mlz/WJGPCgLVHR5v/NJkk0Wxh6hX2dCHua8j/aHT/ACWtdAWNO/MElsdg77C1Xih20PYZHEVn1C8HTIi4aG/KBnwPE48yZ/o4gz3y8RapIlRx0HaFbxTA11C5LnHo4a9KGnUfrtlbCHUauC2AcZdqpG1uok+6tkGx4/okNEOktrXi7ytVQddT6S1lhoDxhtjNpEOSWVAoBza+m8Xrbjj7G75pRbuCQR9SFwSSpCMa7Gyv5RNGrEa+Yd3m986GjuMq5leKfZx1g+cOmYEE7ewTgWx5D2KHhL7ao0ZmAXd8cSxh2SzRU75+ug1J9Sj1NK9pVhVzmpJuh80GevygPh6zoRX1m5Rip8lkUwVmzRPCFgZM8UKsv2ictA==

--jayuvpujeda@gmail.com|ea:ed:25:e9:92:d3:a7b5ebd1aca73da14c1bb8fc9b0b81b4:3D82E83BC57C0D9305AEF59520FD25DD:Wz4+sGRHyvs+sNKOUOq4Lg8iu6Xh2+vLDyUP3nHY8w6uDDxu0qYwuIOPoOHA8eTWDsfShuXVV3guHGW5hQOPY5zOx/RiwfI/QrEGoIyVn48lAdiSeLMluj7aTJ+oO/VqMHHw3cvZCnTTuw8jTyvckGHAtjJn1kTjR/hfWBXOkhkAvqqunorzzDl5lzn9fbggo0QQyeeZVW03FbIFFlVtXU+EfujXOqH8pW0CwAOnmeFtzHgihOMTU1y14COXDyxJsBOVYK2bXC2k1kiMocw5k5z8XS9hCTRDNE90Plhxgdd2+W2+Qg6IKqypbKjECp7i4ZyQOii6wweaKw2GATs0652YM2XOjapz1E1Bw1duKBB4H2rmfkOaisUdGu0GcjRpUOFAQtyQiKejN04t4iEfVuSMPh8LIZ8+zYHfW6sI6v92tSs4oGB0myFF0vKqik07HP6g8i4uuKhViCneCaaaeQ==


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
