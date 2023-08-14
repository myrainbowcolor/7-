--py
require 'python'
Python = python
GameAPI = gameapi
GlobalAPI = globalapi
Fix32Vec3 = Fix32Vec3
Fix32 = Fix32
New_global_trigger = new_global_trigger
New_modifier_trigger = new_modifier_trigger
New_item_trigger = new_item_trigger
-- constant --
PLAYER_CAMP_ID = 1
NEUTRAL_ENEMY_CAMP_ID = 31
NEUTRAL_FRIEND_CAMP_ID = 32
Python = python
New_global_trigger = new_global_trigger
New_modifier_trigger = new_modifier_trigger
New_item_trigger = new_item_trigger

SUMMON_UNITS = {}
MAX_SUMMON_NUM = 5
PLAYER_MAX = 1
ALL_PLAYER = GameAPI.get_all_role_ids()
UI_EVENT_LIST = {
	'CameraToUnit',
	'task1',
	'task2',
	'focus_btn_click',
	'defocus_btn_click',
	'close_shop',
	'shop_tab_up',
	'shop_tab_down',
	'back_game',
}


for i = 1, 6 do
	table.insert(UI_EVENT_LIST, 'ClickHero_' .. i)
	table.insert(UI_EVENT_LIST, 'show_item_tips_' .. i)
end

for i = 1, 10 do
	table.insert(UI_EVENT_LIST, 'skill_tips_show_' .. i)
end

for i = 1, 32 do
	table.insert(UI_EVENT_LIST, 'TouchStart_' .. i)
end

for i = 1, 36 do
	table.insert(UI_EVENT_LIST, 'in_bagItem_' .. i)
end
for i = 1, 4 do
	table.insert(UI_EVENT_LIST, 'shop_tab_' .. i)
end

for i = 1, 6 do
	table.insert(UI_EVENT_LIST, 'sell_item_show_' .. i)
end

for i = 1, 6 do
	table.insert(UI_EVENT_LIST, 'tech_click_' .. i)
	table.insert(UI_EVENT_LIST, 'techtips_show_' .. i)
	table.insert(UI_EVENT_LIST, 'techtips_hide_' .. i)
end

--buff
for i = 1, 10 do
	table.insert(UI_EVENT_LIST, 'bufftips_show_' .. i)
	table.insert(UI_EVENT_LIST, 'bufftips_hide_' .. i)
end

for i = 1, 36 do
	table.insert(UI_EVENT_LIST, 'TouchRightClick_' .. i)
end
for i = 2, 53 do
	table.insert(UI_EVENT_LIST, 'MouseEnter_' .. i)
	table.insert(UI_EVENT_LIST, 'MouseLeave_' .. i)
end

for i = 1, 50 do
	table.insert(UI_EVENT_LIST, 'None_' .. i)
end

require 'up'
--require 'test.test'
---resource block start---
---The resource usage statement should be at the beginning of the script and the comments at the beginning and end of this section cannot be modified!!!  xxx_id refer to maps/offical_expr_data/trigger_related_xxx.json

local setmetatable = setmetatable

--up.player:msg('lua','init success')

-- up.game:event('Game-Init', function(_, data)
--     up.player:msg('test','init success')

-- end)

-- require 'ui'
-- require 'game'
-- require 'random_trigger'
-- require 'ltyj'
-- require 'global_protect'

-- ====================================-EG-================================ --
require("Util")
-- local dkjson = require("dkjson")
-- -- 获取当前脚本所在的文件夹路径
-- local script_path = debug.getinfo(1, "S").source:sub(2)
-- local script_dir = script_path:match("(.*[/\\])")

-- -- 父级文件夹名称
-- local parent_folder = "tables/"

-- -- JSON文件名称
-- local json_file = "关卡总表.json"

-- -- 拼接父级文件夹和JSON文件路径
-- local json_path = script_dir:gsub("(.*[/\\]).*[/\\]", "%1") .. parent_folder .. json_file

-- local file = io.open(json_path, "r")
-- local sumTb = dkjson.decode(file:read("*all"))
-- file:close()
-- for k, v in ipairs(sumTb.table_data.data) do
-- 	if next(v) then
-- 		print(v[3])
-- 	end
-- end
-- dump(gameapi.get_table("关卡1"))
