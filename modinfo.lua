--人物英文名字生成网站：https://gg.dstealth.com/Dont-Starve-Together
local language = locale == "zh" or locale == "zhr" or false
name = language and "星宫·六喰" or "Hoshimiya_Mukuro" --mod名字
description = [[
ver 1.0
《约会大作战》中的星宫六喰
模组仅上传steam

1.关于模组的设置，其中灵力最大值的设定需要进入游戏后等待5~10秒左右才会更改显示的值
（不过不用担心，只是显示bug(懒得改了)，数值显示正常就行，最大值在服务器那边也是正常的只是同步会延迟一点）
2.空间震用了蚁狮地震的特效模拟，但星宫六喰从太空到地面不属于邻界现世，所以不会触发空间震，默认是关闭此项。

反馈可加Q群
]]
author = "doctuckos"
version = "1.0"
version_compatible = version
forumthread = "" --不在单机版使用所以不管
server_filter_tags = { "mukuro", "zodiac", "星宫六喰", "约会大作战", "doctuckos" }

icon_atlas = "modicon.xml"
icon = "modicon.tex"

api_version = 6                    --单机版本号
api_version = 10                   --联机版本号
priority = -12                       --加载时的优先度，数字越大优先级越高，最多100

dst_compatible = true              --兼容联机
dont_starve_compatible = false     --不兼容单机原版
shipwrecked_compatible = false     --不兼容海难版本DLC
reign_of_giants_compatible = false --不兼容巨人版本DLC
hamlet_compatible = false          --不兼容哈姆雷特DLC

all_clients_require_mod = true     --所有人加载mod


local keylist = {
	{ description = "0", data = 48 },
	{ description = "1", data = 49 },
	{ description = "2", data = 50 },
	{ description = "3", data = 51 },
	{ description = "4", data = 52 },
	{ description = "5", data = 53 },
	{ description = "6", data = 54 },
	{ description = "7", data = 55 },
	{ description = "8", data = 56 },
	{ description = "9", data = 57 },
	{ description = "A", data = 97 },
	{ description = "B", data = 98 },
	{ description = "C", data = 99 },
	{ description = "D", data = 100 },
	{ description = "E", data = 101 },
	{ description = "F", data = 102 },
	{ description = "G", data = 103 },
	{ description = "H", data = 104 },
	{ description = "I", data = 105 },
	{ description = "J", data = 106 },
	{ description = "K", data = 107 },
	{ description = "L", data = 108 },
	{ description = "M", data = 109 },
	{ description = "N", data = 110 },
	{ description = "O", data = 111 },
	{ description = "P", data = 112 },
	{ description = "Q", data = 113 },
	{ description = "R", data = 114 },
	{ description = "S", data = 115 },
	{ description = "T", data = 116 },
	{ description = "U", data = 117 },
	{ description = "V", data = 118 },
	{ description = "W", data = 119 },
	{ description = "X", data = 120 },
	{ description = "Y", data = 121 },
	{ description = "Z", data = 122 }
}
local max_energy = {
	{ description = "100", data = 100 },
	{ description = "110", data = 110 },
	{ description = "120", data = 120 },
	{ description = "130", data = 130 },
	{ description = "140", data = 140 },
	{ description = "150", data = 150 },
	{ description = "160", data = 160 },
	{ description = "170", data = 170 },
	{ description = "180", data = 180 },
	{ description = "190", data = 190 },
	{ description = "200", data = 200 },
}
local function AddTitle(title)
	return {
		name = "",
		label = title,
		options = { { description = "", data = 0 } },
		default = 0
	}
end

--mod配置
configuration_options = {
	AddTitle("人物特性设置"),
	{
		name = "max_spiritual_energy", --主键
		label = language and "灵力最大值设定" or "Set Max spiritual_energy",
		hover = "设置六喰的灵力最大值\n选择人物后再更改不会生效, 此时需要重选人物",
		options = max_energy,
		default = 100
	},
	{
		name = "space_shake", --主键
		label = language and "空间震" or "need the earthquake",
		hover = "人物首次生成时是否产生空间震(地裂效果)",
		options = {
			{description = "Yes", data = 1},
			{description = "No", data = 0}
		},
		default = 0
	},
}
