local a = function()
    print'hi'
end

local b = function()
    a()
end

local c = function()
    b()
end

c()