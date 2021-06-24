-- db_data.lua
local DB = {}

local data = {
    ["pmm-home"] = "Home dashboard",
    ["pmm-database-checks"] = "PMM Database Checks",
    ["node-instance-overview"] = "Nodes Overview",
    ["mongodb-instance-overview"] = "MongoDB Instance Overview",
    [""] = ""
}

function DB.get_name(name)
    return data[name]
end

return DB
