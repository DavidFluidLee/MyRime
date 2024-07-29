  --lua语言中的注释用“--”
local function translator(input, seg)
   if (input == "date") then         --关键字更改，你也可以用or语句定义多个关键字
   -- date_m1="Jan." date_m2="January"       symbal
     local date_d=os.date("%d")
     local date_m=os.date("%m")
     local date_y=os.date("%Y")
     local date_m1=""
     local date_m2=""

     if date_m=="01" then 
        date_m1="Jan"
        date_m2="January"
     end
     if date_m=="02" then 
        date_m1="Feb"
        date_m2="February"
     end
     if date_m=="03" then 
        date_m1="Mar"
        date_m2="March"
     end
     if date_m=="04" then 
        date_m1="Apr"
        date_m2="April"
     end
     if date_m=="05" then 
        date_m1="May"
        date_m2="May"
     end
     if date_m=="06" then 
        date_m1="Jun"
        date_m2="June"
     end
     if date_m=="07" then 
        date_m1="Jul"
        date_m2="July"
     end
     if date_m=="08" then 
        date_m1="Aug"
        date_m2="August"
     end
     if date_m=="09" then 
        date_m1="Sep"
        date_m2="September"
     end
     if date_m=="10" then 
        date_m1="Oct"
        date_m2="October"
     end
     if date_m=="11" then 
        date_m1="Nov"
        date_m2="November"
     end
     if date_m=="12" then 
        date_m1="Dec"
        date_m2="December"
     end
      if date_d=="0" then 
        symbal="st" 
      elseif date_d=="1" then
        symbal="nd" 
      elseif date_d=="2" then 
        symbal="rd" 
      else
        symbal="th"
      end

      date_1=date_d..date_m1..date_y
      date_2=date_m2.." "..date_d..symbal..","..date_y

      yield(Candidate("date", seg.start, seg._end, date_1, " "))
      yield(Candidate("date", seg.start, seg._end, date_2, " "))
   end
end
return translator