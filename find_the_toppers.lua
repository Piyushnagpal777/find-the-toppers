--[[
*****************************************************************************************
*
*
*  This script is code stub for CodeChef problem code SCOR_LUA
*  under contest PYLT20TS in Task 0 of Nirikshak Bot (NB) Theme (eYRC 2020-21).
*
*  Filename:			SCOR_LUA.lua
*  Created:				07/10/2020
*  Last Modified:		07/10/2020
*  Author:				e-Yantra Team
*
*****************************************************************************************
]]--

--[[
1
5
Sam 40.08
Riya 30.7
Harry 41
Anne 35.2
Peter 36.6
]]

-- getTheTopper function finds the student name who scored max, i.e. Topper's name from the scorelist created by readScoreList function
function getTheTopper(score_list)
	-- find the max score
	marks = {}
  name = {}
  for i = 1, #score_list do
    if (i%2 == 0) then
      table.insert(marks,1, tonumber(score_list[i]))
    else
      table.insert(name, 1, score_list[i])
    end
    i = i + 1
  end
  maxi = math.max(unpack(marks))
  max_marks = {}
  for i=1, #marks do
    if(marks[i] == maxi) then
      table.insert(max_marks, 1, tostring(name[i]))
    end
  end
  table.sort(max_marks)
  for i=1, #max_marks do
    io.write(max_marks[i], "\n")
  end

  --[[
  for j = 1, #name do
    io.write(name[j], "\n", marks[j], "\n")
  end
  ]]
	-- write your code here

end

-- readScoreList function creates the scorelist table from input
function readScoreList(N)
	local scorelist = {}
  for i = 1, N do
    s = io.read()

    for substring in s:gmatch("%S+") do
      table.insert(scorelist, substring)
    end
  end
  -- write your code here

	return scorelist
end

-- for each case, call the readScoreList and getTheTopper functions to get the scores of students and then find the student name who scored max, i.e. Topper's name
tc = tonumber(io.read())
for i = 1, tc do
	local N = tonumber(io.read())
	score_list = readScoreList(N);
	getTheTopper(score_list)
  --[[for i = 1, #score_list do
    io.write(score_list[i], "\n")
  end]]
end


