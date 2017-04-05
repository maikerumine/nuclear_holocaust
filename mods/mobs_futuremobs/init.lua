local path = minetest.get_modpath("mobs_futuremobs")


--dofile(minetest.get_modpath("mobs_redo").."/api.lua")
dofile(minetest.get_modpath("mobs_futuremobs").."/weapons.lua")
dofile(minetest.get_modpath("mobs_futuremobs").."/futuremobs_throwing.lua")
dofile(minetest.get_modpath("mobs_futuremobs").."/futuremobs_arrow.lua")
-- Mobs


mobs:register_mob("mobs_futuremobs:goodbot_fighter", {
	type = "npc",
	pathfinding = true,
	textures = {{"zombie_drogado_by_rexyGYM.png",	
				"3d_armor_trans.png",
				minetest.registered_items["mobs_futuremobs:sword_lightsteel_blue"].inventory_image,
			}},
   	hp_min = 60,
   	hp_max = 70,
	collisionbox = {-0.3,-1.0,-0.3, 0.3,0.8,0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	makes_footstep_sound = true,
	view_range = 12,
	walk_velocity = 2,
	run_velocity = 3.5,
	armor = 90,
	damage = 3,
	drops = {
		{name = "mobs_futuremobs:sword_lightsteel_blue",
		chance = 10,
		min = 0,
		max = 1,},
		
	},
	light_resistant = true,
	drawtype = "front",
	water_damage = 100,
	lava_damage = 10,
	light_damage = 30,
	fear_height = 3,
	attack_type = "dogfight",
	animation = {
		speed_normal = 15,
		speed_run = 15,
		stand_start = 0,
		stand_end = 79,
		walk_start = 168,
		walk_end = 187,
		run_start = 168,
		run_end = 187,
		punch_start = 189,
		punch_end = 198,
	},
	jump = true,
	sounds = {
		war_cry = "mobs_stone_attack",
		death = "mummy_death",
		attack = "default_punch2",
	},
	attacks_monsters = true,
	peaceful = true,
	group_attack = true,
	step = 1,
})
mobs:register_spawn("mobs_futuremobs:goodbot_fighter", {"default:wood","pathv7:junglewood","pathv7:stairs"}, 20, 10, 12000, 1, 31000)

mobs:register_mob("mobs_futuremobs:badbot_fighter", {
	type = "monster",
	pathfinding = true,
	hp_min = 60,
	hp_max = 70,
	collisionbox = {-0.3,-1.0,-0.3, 0.3,0.8,0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {{"zombie_drogado_by_rexyGYM.png",	
				"3d_armor_trans.png",
				minetest.registered_items["mobs_futuremobs:sword_lightsteel_red"].inventory_image,
			}},
	makes_footstep_sound = true,
	view_range = 15,
	walk_velocity = 3,
	armor = 90,
	run_velocity = 3.6,
	damage = 3,
	drops = {
		{name = "mobs_futuremobs:sword_lightsteel_red",
		chance = 10,
		min = 0,
		max = 1,},
	},
	light_resistant = true,
	drawtype = "front",
	water_damage = 1,
	lava_damage = 10,
	light_damage = 100,
	fear_height = 3,
	on_rightclick = nil,
	attack_type = "dogfight",
	animation = {
		speed_normal = 15,
		speed_run = 15,
		stand_start = 0,
		stand_end = 79,
		walk_start = 168,
		walk_end = 187,
		run_start = 168,
		run_end = 187,
		punch_start = 189,
		punch_end = 198,
	},
	jump = true,
	sounds = {
		war_cry = "mobs_stone_attack",
		death = "mummy_death",
		attack = "default_punch2",
	},
	step = 1,
	group_attack = true,
})
mobs:register_spawn("mobs_futuremobs:badbot_fighter", {"default:dirt_with_rainforest_litter"}, 9, -1, 12000, 1, 31000)

mobs:register_mob("mobs_futuremobs:goodbot_gunner", {
	type = "npc",
	pathfinding = true,
	hp_min = 60,
	hp_max = 70,
	collisionbox = {-0.3,-1.0,-0.3, 0.3,0.8,0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {{"zombie_drogado_by_rexyGYM.png",	
				"3d_armor_trans.png",
				minetest.registered_items["mobs_futuremobs:lasergun_blue"].inventory_image,
			}},
	makes_footstep_sound = true,
	view_range = 15,
	walk_velocity = 3,
	armor = 90,
	run_velocity = 3.9,
	damage =3,
	drops = {
		{name = "mobs_futuremobs:blue_laser_gun",
		chance = 50,
		min = 0,
		max = 1,},
		{name = "mobs_futuremobs:laser",
		chance = 1,
		min = 2,
		max = 12,},
	},
	light_resistant = true,
	drawtype = "front",
	water_damage = 100,
	lava_damage = 10,
	light_damage = 30,
	fear_height = 3,
	on_rightclick = nil,
	attack_type = "dogshoot",
	dogshoot_switch = 1,
	dogshoot_count_max = 10,
	arrow = "mobs_futuremobs:lasershot",
	shoot_interval = 1,	
	animation = {
		speed_normal = 15,
		speed_run = 15,
		stand_start = 0,
		stand_end = 79,
		walk_start = 168,
		walk_end = 187,
		run_start = 168,
		run_end = 187,
		punch_start = 189,
		punch_end = 198,
	},
	jump = true,
	sounds = {
		war_cry = "mobs_stone_attack",
		death = "mummy_death",
		attack = "default_punch2",
		shoot_attack = "laser_sound",
	},
	step = 1,
	group_attack = true,
})
mobs:register_spawn("mobs_futuremobs:goodbot_gunner", {"default:dry_dirt","default:steelblock"}, 20, 10, 12000, 1, 31000)

mobs:register_mob("mobs_futuremobs:badbot_gunner", {
	type = "monster",
	pathfinding = true,
	hp_min = 60,
	hp_max = 70,
	collisionbox = {-0.3,-1.0,-0.3, 0.3,0.8,0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {{"zombie_drogado_by_rexyGYM.png",	
				"3d_armor_trans.png",
				minetest.registered_items["mobs_futuremobs:lasergun_red"].inventory_image,
			}},
	makes_footstep_sound = true,
	view_range = 15,
	walk_velocity = 2.7,
	armor = 90,
	run_velocity = 3.4,
	damage = 3,
	drops = {
		{name = "mobs_futuremobs:red_laser_gun",
		chance = 50,
		min = 0,
		max = 1,},
		{name = "mobs_futuremobs:laser",
		chance = 1,
		min = 2,
		max = 12,},
	},
    light_resistant = true,
	drawtype = "front",
	water_damage = 100,
	lava_damage = 10,
	light_damage = 100,
	fear_height = 3,
	on_rightclick = nil,
	attack_type = "dogshoot",
	dogshoot_switch = 1,
	dogshoot_count_max = 10,
	arrow = "mobs_futuremobs:lasershot",
	shoot_interval = 0.5,	
	animation = {
		speed_normal = 15,
		speed_run = 15,
		stand_start = 0,
		stand_end = 79,
		walk_start = 168,
		walk_end = 187,
		run_start = 168,
		run_end = 187,
		punch_start = 189,
		punch_end = 198,
	},
	jump = true,
	sounds = {
		war_cry = "mobs_stone_attack",
		death = "mummy_death",
		attack = "default_punch2",
		shoot_attack = "laser_sound",
	},
	step = 1,
	group_attack = true,
})
mobs:register_spawn("mobs_futuremobs:badbot_gunner", {"default:dirt_with_rainforest_litter"}, 9, -1, 12000, 1, 31000)

mobs:register_mob("mobs_futuremobs:claw_alien", {
	type = "monster",
	pathfinding = true,
	hp_min = 60,
	hp_max = 70,
	collisionbox = {-0.3,-1.0,-0.3, 0.3,0.8,0.3},
	visual = "mesh",
	mesh = "human_model.x",
	textures = {{"claw_alien.png"}},
	makes_footstep_sound = true,
	view_range = 15,
	walk_velocity = 2,
	armor = 200,
	run_velocity = 3,
	damage = 3,
	drops = {
		{name = "mobs_futuremobs:claw",
		chance = 10,
		min = 0,
		max = 1,},
	},
	light_resistant = true,
	drawtype = "front",
	water_damage = 6,
	lava_damage = 2,
	light_damage = 100,
	fear_height = 3,
	on_rightclick = nil,
	attack_type = "dogfight",
	animation = {
		speed_normal = 15,
		speed_run = 15,
		stand_start = 0,
		stand_end = 79,
		walk_start = 168,
		walk_end = 187,
		run_start = 168,
		run_end = 187,
		punch_start = 189,
		punch_end = 198,
	},
	jump = true,
	sounds = {
		war_cry = "mobs_stone_attack",
		death = "mummy_death",
		attack = "default_punch2",
	},
	attacks_monsters = true,
	peaceful = true,
	group_attack = true,
	step = 1,
})
mobs:register_spawn("mobs_futuremobs:claw_alien", {"default:silver_sand","default:clay"}, 3, -1,25000, 1, 31000)

mobs:register_mob("mobs_futuremobs:alien", {
	type = "monster",
	pathfinding = true,
	hp_min = 60,
	hp_max = 70,
	collisionbox = {-0.3,-1.0,-0.3, 0.3,0.8,0.3},
	visual = "mesh",
	mesh = "human_model.x",
	textures = {{"alien.png"}},
	makes_footstep_sound = true,
	view_range = 30,
	walk_velocity = 2,
	armor = 100,
	run_velocity = 3,
	damage = 2,
	drops = {
		{name = "mobs_futuremobs:alien_skin",
		chance = 1,
		min = 1,
		max = 3,},
	},
    light_resistant = true,
	drawtype = "front",
	water_damage = 2,
	lava_damage = 2,
	light_damage = 100,
	fear_height = 3,
	on_rightclick = nil,
	attack_type = "dogfight",
	animation = {
		speed_normal = 15,
		speed_run = 15,
		stand_start = 0,
		stand_end = 79,
		walk_start = 168,
		walk_end = 187,
		run_start = 168,
		run_end = 187,
		punch_start = 189,
		punch_end = 198,
	},
	jump = true,
	sounds = {
		war_cry = "mobs_stone_attack",
		death = "mummy_death",
		attack = "default_punch2",
	},
	attacks_monsters = true,
	peaceful = true,
	group_attack = true,
	step = 1,
})
mobs:register_spawn("mobs_futuremobs:alien", {"default:sand","default:silver_sand","default:clay"}, 5, -1, 12500, 1, 31000)

mobs:register_mob("mobs_futuremobs:destroyed_bot", {
	type = "monster",
	group_attack = true,
	pathfinding = true,
	textures = {{"destroyed_bot.png",	
				"3d_armor_trans.png",
				minetest.registered_items["default:sword_steel"].inventory_image,
			}},
   	hp_min = 115,
   	hp_max = 125,
	collisionbox = {-0.3,-1.0,-0.3, 0.3,0.8,0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	makes_footstep_sound = true,
	view_range = 12,
	walk_velocity = 1,
	run_velocity = 2,
	armor = 90,
	damage = 4,
	drops = {
		{name = "default:steel_ingot",
		chance = 3,
		min = 1,
		max = 3,},
		{name = "default:copper_ingot",
		chance = 3,
		min = 1,
		max = 3,},
		
	},
	light_resistant = true,
	drawtype = "front",
	water_damage = 100,
	lava_damage = 10,
	light_damage = 30,
	fear_height = 3,
	attack_type = "dogfight",
	animation = {
		speed_normal = 15,
		speed_run = 15,
		stand_start = 0,
		stand_end = 79,
		walk_start = 168,
		walk_end = 187,
		run_start = 168,
		run_end = 187,
		punch_start = 189,
		punch_end = 198,
	},
	jump = true,
	sounds = {
		war_cry = "mobs_stone_attack",
		death = "mummy_death",
		attack = "default_punch2",
		shoot_attack = "laser_sound",
	},
	attacks_monsters = true,
	peaceful = true,
	group_attack = true,
	step = 1,
})
mobs:register_spawn("mobs_futuremobs:destroyed_bot", {"default:steel_block","default:silver_sand", "default:clay"}, 7, -1, 16000, 1, 31000)

-- Arrows

mobs:register_arrow("mobs_futuremobs:lasershot", {
	visual = "sprite",
	visual_size = {x=1, y=1},
	textures = {"futuremobs_laser.png"},
	velocity = 5,
	hit_player = function(self, player)
		local s = self.object:getpos()
		local p = player:getpos()
		local vec = {x=s.x-p.x, y=s.y-p.y, z=s.z-p.z}
		player:punch(self.object, 0.5,  {
			full_punch_interval=0.5,
			damage_groups = {fleshy=8},
		}, vec)
		local pos = self.object:getpos()
	
	end,
        hit_node = function(self, pos, node)
        end        	
})

-- Items

minetest.register_craftitem("mobs_futuremobs:alien_skin", {
	description = "Alien Hide",
	inventory_image = "alien_skin.png",
})