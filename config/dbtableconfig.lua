local conf = {}

-- DB的table表名，和对应的rediskey
-- 如需插入到有序集合中，还需要有indexkey,indexkey对应的值类型必须为数字类型
-- 为nil的可以不用填写，这边第一个作为示例
conf["account"] = {
    rediskey = "uid",
    indexkey = nil,
    columns = nil
}

conf["playerdate"] = {
    rediskey = "uuid",
    indexkey = "uuid"
}

for k, v in pairs(conf) do
    v["tbname"] = k
end

return conf
