  --lua语言中的注释用“--”
local function translator(input, seg)
   if (input == "kj") then         --关键字更改，你也可以用or语句定义多个关键字
      yield(Candidate("kj", seg.start, seg._end, "kj", "NORMAL MODE"))
   end
end
return translator
