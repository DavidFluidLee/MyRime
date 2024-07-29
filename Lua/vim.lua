  --lua语言中的注释用“--”
--local function translator(input, seg)
--   if (input == "jk") then         --关键字更改，你也可以用or语句定义多个关键字
--      yield(Candidate("jk", seg.start, seg._end, "jk", "NORMAL MODE"))
--   end
--end
--return translator

1     --lua语言中的注释用“ --”                                                                                                                              
  1 local function translator(input, seg)
  2    if (input == "time") then         --关键字更改，你也可以用or语句定义多个关键字
  3       yield(Candidate("time", seg.start, seg._end, os.date("%H:%M"), " "))
  4       yield(Candidate("time", seg.start, seg._end, os.date("%H点%M分"), " "))
  5       yield(Candidate("time", seg.start, seg._end, os.date("%H:%M:%S"), " "))
  6       yield(Candidate("time", seg.start, seg._end, os.date("%H点%M分%S秒"), " "))
  7    end
  8 end
  9 return translator

