GLOBAL.setmetatable(env, { __index = function(t, k) return GLOBAL.rawget(GLOBAL, k) end }) --GLOBAL相关照抄

local require = GLOBAL.require
local STRINGS = GLOBAL.STRINGS
local TUNING = GLOBAL.TUNING

GLOBAL.MUKURO_API = env  --皮肤API

PrefabFiles = {           --预制物（命名绝对不能大写）
    "mukuro",            --六喰
}

Assets = {
    Asset("ANIM", "anim/mukuro.zip"),               --人物动画
    Asset("ANIM", "anim/ghost_mukuro_build.zip"),   --幽灵动画

    Asset("IMAGE", "images/names_gold_mukuro.tex"), --人物英文名字
    Asset("ATLAS", "images/names_gold_mukuro.xml"),

    Asset("IMAGE", "images/names_mukuro.tex"), --人物中文名字
    Asset("ATLAS", "images/names_mukuro.xml"),

    Asset("IMAGE", "images/saveslot_portraits/mukuro.tex"), --存档图片
    Asset("ATLAS", "images/saveslot_portraits/mukuro.xml"),

    Asset("IMAGE", "images/selectscreen_portraits/mukuro.tex"), --选人界面图片
    Asset("ATLAS", "images/selectscreen_portraits/mukuro.xml"),

    Asset("IMAGE", "images/selectscreen_portraits/mukuro_silho.tex"), -- 选人未解锁界面
    Asset("ATLAS", "images/selectscreen_portraits/mukuro_silho.xml"),

    Asset("IMAGE", "images/map_icons/map_mukuro.tex"), --地图图标
    Asset("ATLAS", "images/map_icons/map_mukuro.xml"),

    Asset("IMAGE", "images/avatars/avatar_mukuro.tex"), --人物头像
    Asset("ATLAS", "images/avatars/avatar_mukuro.xml"),

    Asset("IMAGE", "images/avatars/avatar_ghost_mukuro.tex"), --幽灵头像
    Asset("ATLAS", "images/avatars/avatar_ghost_mukuro.xml"),

    Asset("IMAGE", "images/avatars/self_inspect_mukuro.tex"), --自检头像
    Asset("ATLAS", "images/avatars/self_inspect_mukuro.xml"),

    Asset("IMAGE", "bigportraits/mukuro_none.tex"), --人物大图（椭圆）
    Asset("ATLAS", "bigportraits/mukuro_none.xml"), --基础默认皮肤
}

modimport("scripts/main/string_mukuro") --常量加载
modimport("scripts/main/tuning_mukuro") --常量加载

--修复人物大图显示,使用人物默认皮肤
GLOBAL.PREFAB_SKINS["mukuro"] = { "mukuro_none" }

AddMinimapAtlas("images/map_icons/map_mukuro.xml")         --注册小地图图标

AddModCharacter("mukuro", "FEMALE")                        --注册添加角色，性别为女





modimport("scripts/util/mukuro_skins.lua")                 --导入皮肤调用器