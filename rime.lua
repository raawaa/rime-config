--- rime.lua 脚本文件
function date_translator(input, seg)
    if (input == "rq" or input == "jt" or input == "date") then
        --- Candidate(type, start, end, text, comment)
        local cand1 = Candidate("date", seg.start, seg._end, os.date("%Y-%m-%d"), "日期")
        local cand2 = Candidate("date", seg.start, seg._end, os.date("%Y年%m月%d日"), "日期")
        cand1.quality = 1
        cand2.quality = 2
        yield(cand1)
        yield(cand2)
    end
    if (input == "sj") then
        --- Candidate(type, start, end, text, comment)
        local cand3 = Candidate("date", seg.start, seg._end, os.date("%H:%M"), "时间")
        cand3.quality = 1
        yeild(cand3)
    end
end

number_translator = require("number")
