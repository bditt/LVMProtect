local time = os.clock()

local target = arg[1]
assert(target)
os.execute ("luac5.1 -s " .. target)

local ir  = io.open ('luac.out', 'rb'):read ('*all')
local code = 'local code = \''
for i = 1, #ir do 
	code = code .. '\\' .. string.byte (ir, i)
end
code = code .. '\''

local src = io.open ('loader_test.lua', 'rb'):read ('*all')
local out = code .. '\n' .. src 

local dst = io.open ('output.txt', 'wb')
dst:write (out)

print ('time: ' .. (os.clock() -  time))