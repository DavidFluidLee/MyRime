  --lua语言中的注释用“--”
local function translator(input, seg)
   if (input == "jk") then         --关键字更改，你也可以用or语句定义多个关键字
      yield(Candidate("jk", seg.start, seg._end, "jk", "NORMAL MODE"))
   end
end
return translator
