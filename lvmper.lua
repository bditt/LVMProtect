local code = string.dump(function() 
	local script = print("Fuck life")
end)

local out = '\\'

for i = 1, #code do 
	out = out .. string.byte (code, i) .. "\\"
end


local file = io.open ('out.lua', 'wb')
file:write (out)
file:close()