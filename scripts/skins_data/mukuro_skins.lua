
-- 人物皮肤
local function MakeYOSHINOSkin(name, data, notemp, free)
	local d = {}
	d.rarity = "典藏"
	d.rarityorder = 2
	d.raritycorlor = { 0 / 255, 255 / 255, 249 / 255, 1 }
	d.release_group = -1001
	d.skin_tags = { "BASE", "yoshino", "CHARACTER" }
	d.skins = {
		normal_skin = name,
		ghost_skin = "ghost_yoshino_build"
	}
	--if not free then
	--	d.checkfn = YOSHINO_API.YOSHINOSkinCheckFn
	--	d.checkclientfn = YOSHINO_API.YOSHINOSkinCheckFn
	--end
	d.share_bigportrait_name = "yoshino"
	d.FrameSymbol = "Reward"    --想用的背景板样式（这个只能用官方的）
    --如果传入数据缺失，默认使用上面的
    --否则遍历传进来的数据进行覆盖
	for k, v in pairs(data) do
		d[k] = v
	end
    --创建皮肤
	YOSHINO_API.MakeCharacterSkin("yoshino", name, d)
	--if not notemp then
	--	local d2 = shallowcopy(d)
	--	d2.rarity = "限时体验"
	--	d2.rarityorder = 80
	--	d2.raritycorlor = { 0.957, 0.769, 0.188, 1 }
	--	d2.FrameSymbol = "heirloom"
	--	d2.name = data.name .. "(限时)"
	--	YOSHINO_API.MakeCharacterSkin("yoshino", name .. "_tmp", d2)
	--end
end

-- 官方稀有度排序表(自定义的必定在官方的前面)
-- for use in sort functions
-- return true if rarity1 should go first in the list
--[[RARITY_ORDER =
{
	ProofOfPurchase = 1,	--（此条可无视）
        Resurrected = 1.5,		--复活系列
	Timeless = 2,			--永恒系列
	Loyal = 3,				--忠诚
	Reward = 4,				--奖励
	Event = 5,				--活动(限时)
	Character = 6,			--角色
	HeirloomElegant = 7,	--祖传-优雅
	HeirloomDistinguished = 8,--祖传-杰出
	HeirloomSpiffy = 9,		--祖传-炫酷
	HeirloomClassy = 10,	--祖传-上等
	Elegant = 11,			--优雅
	Distinguished = 12,		--杰出
	Spiffy = 13,			--炫酷
	Classy = 14,			--上等
	Common = 15,			--普通
	Complimentary = 16		--免费
}--]]

MakeYOSHINOSkin("mukuro_none", {
	name = "星宫六喰", -- 皮肤的名称
	des = "六喰的休闲衣装", -- 皮肤界面的描述
	quotes = "六儿想回太空...", -- 选人界面的描述
	rarity = "经典", -- 稀有度 官方不存在的珍惜度则直接覆盖字符串
	rarityorder = 1, -- 稀有度的排序 用于按优先级排序 基本没啥用
	raritycorlor = { 153 / 255, 255 / 255, 255 / 255, 1 }, -- 稀有度的字体颜色（{R,G,B,A}
	skins = {
        normal_skin = "mukuro",
        ghost_skin = "ghost_mukuro_build",
    },
	build_name_override = "mukuro",
	share_bigportrait_name = "mukuro_none",
    FrameSymbol = "Character",
},true,true)