// --- Begin m020_mission.hsc ---
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343
//
// 	Mission: 					m20_tower
//	Insertion Points:	start or icr		- Beginning
//										icl							- Clearing
//										igy							- Graveyard
//										ifi							- Field
//										igpe						- Guardpost Exterior
//										igpi						- Guardpost Interior
//										ibr							- Bridge
//										icy							- Courtyard
//										iat							- Atrium
//
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343

// =================================================================================================
// =================================================================================================
// *** GLOBALS ***
// =================================================================================================
// =================================================================================================

global boolean b_final_switch_flipped = FALSE;

global boolean b_tv_crater_loc_01 = FALSE;
global boolean b_tv_crater_loc_02 = FALSE;
global boolean b_tv_crater_loc_03 = FALSE;
global boolean b_tv_crater_loc_04 = FALSE;
global boolean b_crater_blip_on = FALSE;
global boolean b_field_blip_on = FALSE;
global boolean b_field_weapon_check = FALSE;
global boolean b_player_sees_towers = FALSE;
global boolean b_vista_zone_visited = FALSE;
global boolean b_bridge_phantom_01_gone = FALSE;
global boolean b_courtyard_airlock = FALSE;
global boolean b_airlock_banshees_destroyed = FALSE;
global boolean b_br_phantom_safe_to_leave = FALSE;

global boolean b_obj_pause_0_give = FALSE;
global boolean b_obj_pause_0 = FALSE;
global boolean b_obj_pause_1 = FALSE;
global boolean b_obj_pause_2 = FALSE;
global boolean b_obj_pause_3 = FALSE;
global boolean b_obj_pause_4 = FALSE;
global boolean b_obj_pause_5 = FALSE;
global boolean b_obj_pause_6 = FALSE;
global boolean b_obj_pause_7 = FALSE;

global short s_crater_phantom_volumes = 0;

global short s_objcon_bridge = 0;
global short s_objcon_gpe = 0;
global short s_objcon_courtyard_ghosts = 0;
global short s_objcon_bridge_banshee = 0;
global short s_objcon_courtyard = 0;
global short s_tutorial_stop = 0;


// =================================================================================================
// =================================================================================================
// *** START-UP ***
// =================================================================================================
// =================================================================================================

script startup m020_tower()

	if b_debug then
		print_difficulty();
		print ("::: M20 - TOWER :::");
	end

	f_loadout_set ("exterior");

	if b_encounters then
			wake (f_crater_main);
			wake (f_vista_main);
			wake (f_drive_main);
			wake (f_field_main);
			wake (f_gp_ext_main);

			wake (f_bridge_main);

			wake (f_dm_gun_door);
			wake (f_dm_courty_door);
			wake (f_dm_gpi_door);
			wake (f_dm_gpe_door);

			wake (f_dm_scanner);
			wake (f_dm_scanner_red);
			wake (f_dm_scanner_green);
			wake (f_dm_bridge_elevator);
			wake (f_dm_atrium_elevator);
			wake (f_dm_flush_core);
			wake (f_dm_blue_column_1);
			wake (f_dm_blue_column_2);
			wake (f_dm_blue_column_3);
			wake (f_dm_blue_column_4);
						
			ai_allegiance (player, human);
			ai_allegiance (player, forerunner);
			
			thread (f_achievements (player0));
			thread (f_achievements (player1));
			thread (f_achievements (player2));
			thread (f_achievements (player3));
			
			wake (f_objectives_controller);
						
	end

	
// ============================================================================================
// STARTING THE GAME
// ============================================================================================
	if (b_game_emulate or ((b_editor != 1) and (player_count() > 0))) then
		// if true, start the game
		start();
		// else just fade in, we're in edit mode
	elseif b_debug then
		print (":::  editor mode  :::");
		fade_in (0, 0, 0, 0); 
		//start();

	end

end

// =================================================================================================
// =================================================================================================
// START
// =================================================================================================
// =================================================================================================

script static void start()

	// Figure out what insertion point to use
	// Set these in init.txt or editor_init.txt to work on various areas quickly
	if game_insertion_point_get() == 0 then
		ins_crater();
	end
	
	if game_insertion_point_get() == 1 then
		ins_clearing();
	end
	
	if game_insertion_point_get() == 2 then
		ins_graveyard();
	end
	
	if game_insertion_point_get() == 3 then
		ins_field();
	end
	
	if game_insertion_point_get() == 4 then
		ins_gp_ext();
	end
	
	if game_insertion_point_get() == 5 then
		ins_gp_int();
	end

	if game_insertion_point_get() == 6 then
		ins_bridge();
	end

	if game_insertion_point_get() == 7 then
		ins_courtyard();
	end

	if game_insertion_point_get() == 8 then
		ins_atrium();
	end

end



// ========================================
// ACHIEVEMENTS
// ========================================
script static void f_achievements(player p_player)
	
	dprint ("waiting for the midnight launch");
	
	sleep_until(
	
	object_valid (veh_vista_warthog_01) and
	unit_get_vehicle (p_player) == veh_vista_warthog_01 and
	get_time_is_time(-1, -1, -1, 0, 0, -1) == TRUE and
	vehicle_in_air_ticks(veh_vista_warthog_01) > 30*game_tick_rate_scalar_get()
	
	or
	
	object_valid (veh_vista_warthog_02) and
	unit_get_vehicle (p_player) == veh_vista_warthog_02 and
	get_time_is_time(-1, -1, -1, 0, 0, -1) == TRUE and
	vehicle_in_air_ticks(veh_vista_warthog_02) > 30*game_tick_rate_scalar_get()
	
	or
	
	object_valid (wreckage_hog_01) and
	unit_get_vehicle (p_player) == wreckage_hog_01 and
	get_time_is_time(-1, -1, -1, 0, 0, -1) == TRUE and
	vehicle_in_air_ticks(wreckage_hog_01) > 30*game_tick_rate_scalar_get()	
	
	or
	
	object_valid (wreckage_hog_02) and
	unit_get_vehicle (p_player) == wreckage_hog_02 and
	get_time_is_time(-1, -1, -1, 0, 0, -1) == TRUE and
	vehicle_in_air_ticks(wreckage_hog_02) > 30*game_tick_rate_scalar_get()
		
	or
	
	object_valid (field_ghost_01) and
	unit_get_vehicle (p_player) == field_ghost_01 and
	get_time_is_time(-1, -1, -1, 0, 0, -1) == TRUE and
	vehicle_in_air_ticks(field_ghost_01) > 30*game_tick_rate_scalar_get()	
		
	or
	
	object_valid (field_ghost_02) and
	unit_get_vehicle (p_player) == field_ghost_02 and
	get_time_is_time(-1, -1, -1, 0, 0, -1) == TRUE and
	vehicle_in_air_ticks(field_ghost_02) > 30*game_tick_rate_scalar_get()
		
	, 1);	
		
	//achievement_grant_to_player (p_player, "m20_special");
	submit_incident_with_cause_player ("achieve_m20_special", p_player);
	dprint ("Midnight Launch Achievement Unlocked!");

end



// =================================================================================================
// =================================================================================================
// CRATER 
// =================================================================================================
// =================================================================================================

script dormant f_crater_main()
	sleep_until (b_mission_started == TRUE, 1);

	dprint ("::: crater start :::");
	
	data_mine_set_mission_segment (m20_crater_start);
	
	wake (f_kill_crater_enemies);
	wake (f_weapon_check);
	wake (f_player_weapon_exit);
	wake (f_crater_unblip_01);
	wake (f_crater_unblip_02);
	wake (f_crater_fire);
	wake (crater_loc_check_01);
	wake (crater_loc_check_02);
	wake (crater_loc_check_03);
	wake (crater_loc_check_04);
	wake (f_crater_volume_blip);
	
	thread (f_cv_skybox_switcher());

	pup_play_show ("pup_dying_elite");
	pup_play_show ("pup_dying_grunt");
	
	sleep (30*9);
	cui_hud_set_new_objective (objective_1);
	objectives_show_up_to (0);
	
	//start lost blip timer
	wake (f_crater_blip_time);
	
end


//CRATER TO VISTA SKYBOX SWITCHER
script static void f_cv_skybox_switcher()
	SetSkyObjectOverride("craterskybox");
	
	repeat
	sleep_until (volume_test_players (tv_skybox_change_vista), 1);
		dprint ("switching to vista skybox");
		SetSkyObjectOverride("");
		
	sleep_until (volume_test_players (tv_skybox_change_crater), 1);
		dprint ("switching to crater skybox");
		SetSkyObjectOverride("craterskybox");
		
	until (1 == 0);

end


//spawn and kill the enemies strewn about the crater wreckage
script dormant f_kill_crater_enemies()
	ai_place (sq_crater_dead);
	ai_kill_silent (sq_crater_dead);

end


//change dying elite and grunt to not say active dialog
script command_script f_elite_dying()
	cs_enable_dialogue (FALSE);

end

script command_script f_grunt_dying()
	cs_enable_dialogue (FALSE);

end


//FIRE DAMAGE VOLUMES
script dormant f_crater_fire()
	thread (f_do_fire_damage_on_trigger( tv_crater_fire_01 ));
	thread (f_do_fire_damage_on_trigger( tv_crater_fire_02 ));
	thread (f_do_fire_damage_on_trigger( tv_crater_fire_03 ));
	thread (f_do_fire_damage_on_trigger( tv_crater_fire_04 ));
	thread (f_do_fire_damage_on_trigger( tv_crater_fire_05 ));
	thread (f_do_fire_damage_on_trigger( tv_crater_fire_06 ));
	thread (f_do_fire_damage_on_trigger( tv_crater_fire_07 ));
	thread (f_do_fire_damage_on_trigger( tv_crater_fire_08 ));
	thread (f_do_fire_damage_on_trigger( tv_crater_fire_09 ));
	thread (f_do_fire_damage_on_trigger( tv_crater_fire_10 ));
	thread (f_do_fire_damage_on_trigger( tv_crater_fire_11 ));
	thread (f_do_fire_damage_on_trigger( tv_crater_fire_12 ));

end


//CHECK FOR IF PLAYER HAS PICKED UP A WEAPON
script dormant f_weapon_check()
	dprint ("waiting for player to pick up a weapon");
	sleep_until (
	volume_test_players (tv_wep_01) or
	volume_test_players (tv_wep_02) or
	volume_test_players (tv_wep_03) or
	volume_test_players (tv_wep_04) or
	volume_test_players (tv_wep_05) or
	volume_test_players (tv_wep_06) or
	volume_test_players (tv_wep_07) or
	volume_test_players (tv_wep_08) or
	volume_test_players (tv_wep_09) or
	volume_test_players (tv_wep_10) or
	volume_test_players (tv_wep_11) or
	volume_test_players (tv_wep_12) or
	volume_test_players (tv_wep_13) or
	volume_test_players (tv_wep_14) or
	volume_test_players (tv_wep_15) or
	volume_test_players (tv_wep_16) or
	volume_test_players (tv_wep_17) or
	volume_test_players (tv_wep_18)
	,1);
	dprint ("player has picked up a weapon");
	b_field_weapon_check = TRUE;

end

//CHECK IF PLAYER HAS PICKED UP A WEAPON WHEN THEY EXIT CRATER
script dormant f_player_weapon_exit()
	sleep_until (volume_test_players (tv_wep_check), 1);
	if b_field_weapon_check == FALSE then
	dprint ("player is leaving without a weapon!");
	wake (f_dialog_m20_ammo_check);
	else dprint ("player has a weapon");
	end

end


// =================================================================================================
// AFTER PLAYER ENTERS 3 OF THE 4 AREAS OF INTEREST, BLIP EXIT
// =================================================================================================

//CHECK TO SEE WHERE PLAYER IS IN CRATER
script dormant crater_loc_check_01()
	sleep_until (volume_test_players (tv_crater_loc_01));
	dprint ("reached location 1");
	b_tv_crater_loc_01 = true;
	s_crater_phantom_volumes = s_crater_phantom_volumes + 1;

end

script dormant crater_loc_check_02()
	sleep_until (volume_test_players (tv_crater_loc_02));
	dprint ("reached location 2");
	b_tv_crater_loc_02 = true;
	s_crater_phantom_volumes = s_crater_phantom_volumes + 1;

end

script dormant crater_loc_check_03()
	sleep_until (volume_test_players (tv_crater_loc_03));
	dprint ("reached location 3");
	b_tv_crater_loc_03 = true;
	s_crater_phantom_volumes = s_crater_phantom_volumes + 1;

end

script dormant crater_loc_check_04()
	sleep_until (volume_test_players (tv_crater_loc_04));
	dprint ("reached location 4");
	b_tv_crater_loc_04 = true;
	s_crater_phantom_volumes = s_crater_phantom_volumes + 1;

end


//=====================================================
// BLIP/UNBLIP EXIT
//=====================================================

//BLIP EXIT AFTER TIME
script dormant f_crater_blip_time()
	if (navpoint_using_improved_navpoints() == FALSE) then
		dprint ("exit blip timer: starting...");
		sleep_s (220);
	end
	
	if not volume_test_players (tv_cliff_blip_off) then
		sleep_forever (f_crater_volume_blip);
		game_save_no_timeout();
		dprint ("starting exit blip dialog...");
		
		//NARRATIVE DIALOG: (CORTANA CALLS OUT THE BLIP)
		wake (f_dialog_m20_crevice);
	
	else
		dprint ("player is no longer in crater, skipping dialog...");

	end

end


//BLIP EXIT WHEN 3 OF 4 VOLUMES HAVE BEEN VISITED
script dormant f_crater_volume_blip()
	dprint ("waiting for player to explore before blipping exit...");
	sleep_until (s_crater_phantom_volumes == 3, 1);

	if not volume_test_players (tv_cliff_blip_off) then
		sleep_forever (f_crater_blip_time);
		game_save_no_timeout();
		dprint ("starting exit blip dialog...");
		
		//NARRATIVE DIALOG: (CORTANA CALLS OUT THE BLIP)
		wake (f_dialog_m20_crevice);
	
	else
		dprint ("player is no longer in crater, skipping dialog...");

	end
	
end

//GLOBAL BLIP EXIT (triggered from dialog script)
script dormant f_crater_blip_exit()
	b_crater_blip_on = TRUE;	
	dprint ("blipping exit...");
	f_blip_flag (flag_crater_blip, "default");
	
	sleep_until (volume_test_players (tv_cliff_blip_off), 1);
	if (b_crater_blip_on == TRUE) then 
		f_unblip_flag (flag_crater_blip);
		b_crater_blip_on = FALSE;
	end
	
end

//UNBLIP EXIT
script dormant f_crater_unblip_01()
	sleep_until (volume_test_players (tv_cliff_blip_off), 1);
	dprint ("TERMINATING BLIP SYSTEM 01");
	sleep_forever (f_crater_blip_exit);
	sleep_forever (f_crater_volume_blip);
	sleep_forever (f_crater_blip_time);
		
	if (b_crater_blip_on == TRUE) then 
		f_unblip_flag (flag_crater_blip);
		b_crater_blip_on = FALSE;
	end
	
	player_set_profile (default_coop_respawn);
	dprint ("players now respawn with weapons");

end

script dormant f_crater_unblip_02()
	sleep_until (volume_test_players (tv_exit_crater), 1);
	dprint ("TERMINATING BLIP SYSTEM 02");
	sleep_forever (f_crater_blip_exit);
	sleep_forever (f_crater_volume_blip);
	sleep_forever (f_crater_blip_time);
	
	if (b_crater_blip_on == TRUE) then 
		f_unblip_flag (flag_crater_blip);
		b_crater_blip_on = FALSE;
	end
	
end


// =================================================================================================
// =================================================================================================
// VISTA
// =================================================================================================
// =================================================================================================

script dormant f_vista_main()
	sleep_until (volume_test_players (tv_begin_vista), 1);
	dprint ("::: vista start :::");
					
	thread (f_tower_anim());
	wake (f_vista_save);
	wake (destroy_vista_warthogs);
	
end

//PLAY TOWER ANIMATION
script static void f_tower_anim()
	dprint ("TOWERS READY TO TRIGGER");
	
	repeat
	dprint ("waiting on player to enter vista");
	sleep_until (
	(current_zone_set() == s_zoneset_vista or
	current_zone_set() == s_zoneset_to_wreckage or
	current_zone_set() == s_zoneset_wreckage_a) and
	object_valid (tower1) == TRUE and
	object_valid (tower2) == TRUE and
	object_valid (tower3)	== TRUE
	,1);

	if b_vista_zone_visited == FALSE then
		pup_play_show ("pup_towers");
		b_vista_zone_visited = TRUE;
		wake (f_player_sees_towers);
		dprint ("player's first time: playing start anim");
	else 
		pup_play_show ("pup_towers_idle");
		dprint ("player is returning: playing idle anim");
	end

	dprint ("waiting for player to leave vista");

	sleep_until (
	current_zone_set() != s_zoneset_vista and
	current_zone_set() != s_zoneset_to_wreckage and
	current_zone_set() != s_zoneset_wreckage_a
	, 1);
	dprint ("player has left vista, resetting tower anim");
	until (1 == 0);
	
end

//PLAYER SEES TOWERS
script dormant f_player_sees_towers()
	sleep_until (
	volume_test_players (tv_towers_animate_01) or
	volume_test_players (tv_towers_animate_02)
	, 1);
	b_player_sees_towers  = TRUE;

end


//VISTA SAVE
script dormant f_vista_save()
	sleep_until (volume_test_players (tv_vista_force_save), 1);
	game_save_no_timeout();

end


//BLOW UP WARTHOGS
script dormant destroy_vista_warthogs()
	sleep_until (volume_test_players (tv_vista_force_save), 1);
	
	sleep_until (
	object_valid (vista_warthog_explode_01) == TRUE and
	object_valid (vista_warthog_explode_02) == TRUE and
	object_valid (vista_warthog_explode_03)	== TRUE
	,1);
		
	dprint ("BLOWING UP WARDOGS");
	object_damage_damage_section (vista_warthog_explode_01, mainhull, 50000);
	object_damage_damage_section (vista_warthog_explode_02, mainhull, 50000);
	object_damage_damage_section (vista_warthog_explode_03, mainhull, 50000);
	
	//blow up crates inside ship wreckage
	sleep_until (object_valid (vista_crate_01) == TRUE, 1);
	damage_object (vista_crate_01, default, 1000);
	
end

script dormant f_bcs_vista_blip_tunnel()
	f_blip_position_breadcrumbs(198.15, -62.3, 7.02, "vista_tunnel_entrance", "default");
	sleep_until(objects_distance_to_position(players(), 198.15, -62.3, 7.02) < 3.5);
	f_unblip_position_breadcrumbs("vista_tunnel_entrance");
end


// =================================================================================================
// =================================================================================================
// DRIVE
// =================================================================================================
// =================================================================================================

script dormant f_drive_main()
	sleep_until (volume_test_players (tv_begin_wreckage), 1);
	dprint ("this is the driving section");
	wake (f_amb_crates_01);
	wake (f_drive_fire_damage);
	thread (f_drive_ember_fx_on());

//WRECKAGE DRIVE SAVES
	sleep_until(volume_test_players (tv_wreckage_save_01), 1);
	game_save_no_timeout();	

end

//EMBER EFFECTS
script static void f_drive_ember_fx_on()
	repeat
		if
			volume_test_players (tv_drive_ember_fx_01) or
			volume_test_players (tv_drive_ember_fx_02) or
			volume_test_players (tv_drive_ember_fx_03)
		then
			dprint ("playing ember fx");
			effect_attached_to_camera_new (environments\solo\m020\fx\embers\embers_ambient_floating.effect);
			sleep (30);
		else
			dprint ("stopping ember fx");
			effect_attached_to_camera_stop (environments\solo\m020\fx\embers\embers_ambient_floating.effect);
			sleep (30);
		end
	until (volume_test_players (tv_gp_int_encounter_01), 1);
	
end


//scripted fire damage volumes
script dormant f_drive_fire_damage()
	thread (f_do_fire_damage_on_trigger( tv_drive_fire_01 ));
	thread (f_do_fire_damage_on_trigger( tv_drive_fire_02 ));
	thread (f_do_fire_damage_on_trigger( tv_drive_fire_03 ));
	thread (f_do_fire_damage_on_trigger( tv_drive_fire_04 ));
	thread (f_do_fire_damage_on_trigger( tv_drive_fire_05 ));
	thread (f_do_fire_damage_on_trigger( tv_drive_fire_06 ));
	thread (f_do_fire_damage_on_trigger( tv_drive_fire_07 ));
	thread (f_do_fire_damage_on_trigger( tv_drive_fire_08 ));	

end


script dormant f_amb_crates_01()
	sleep_until (volume_test_players (tv_amb_crates_01), 1);
		object_create (amb_crate_01);
		sleep (10);
		object_wake_physics (amb_crate_01);
	
		object_create (amb_crate_02);
		sleep (10);
		object_wake_physics (amb_crate_02);
	
		object_create (amb_crate_03);
		sleep (10);
		object_wake_physics (amb_crate_03);
	
	sleep_until (volume_test_players (tv_amb_crates_02), 1);
		object_create (amb_crate_04);
		sleep (10);
		object_wake_physics (amb_crate_04);

	sleep_until (volume_test_players (tv_amb_crates_03), 1);
		object_create (amb_crate_08);
		sleep (10);
		object_wake_physics (amb_crate_08);
			
	sleep_until (volume_test_players (tv_amb_crates_04), 1);
		object_create (amb_crate_06);
		sleep (10);
		object_wake_physics (amb_crate_06);
		
end


// =================================================================================================
// =================================================================================================
// FIELD
// =================================================================================================
// =================================================================================================

//Spawn entire field
script dormant f_field_main()

	dprint (":: ENABLING BEGIN FIELD ZONE TRIGGER ::");

	
//enable zone set trigger that lets you go backwards from field now that you're there
	sleep_until (volume_test_players ("zone_set:09_field:*"), 1);
	sleep_until (preparingToSwitchZoneSet() == FALSE, 1);

//BEGIN ALL FIELD EVENTS
	sleep_until(volume_test_players (tv_field_encounter), 1);
	data_mine_set_mission_segment (m20_field);
	effect_attached_to_camera_stop (environments\solo\m020\fx\embers\embers_ambient_floating.effect);
	
	wake (f_field_saves);
	wake (field_end_transition);
	wake (f_field_trans_elite);
	wake (f_field_grunts);
	
	dprint ("SPAWNING FIELD ENCOUNTERS");
	ai_place (sg_field_master);
	ai_place (sq_field_04_sniper);
	
	sleep_until(volume_test_players (tv_field_save_01), 1);
	wake (field_enemies_dead);
	wake (field_players_lost);
	wake (f_unblip_field);
	
	dprint ("PLAY MUSIC!");
	thread (f_mus_m20_e01_begin());

end


//FIELD SAVES
script dormant f_field_saves()
	sleep_until(volume_test_players (tv_field_save_01), 1);
	game_save_no_timeout();

	sleep_until(volume_test_players (tv_field_mid), 1);
	game_save_no_timeout();
	
	sleep_until(volume_test_players
 (tv_field_blip_off), 1);
	game_save_no_timeout();
	
end


//field grunts
script dormant f_field_grunts()
	sleep_until (ai_living_count (sq_field_front_grunts) <= 1);
	dprint ("GRUNT GET IN GHOST");
	ai_vehicle_enter (sq_field_front_grunts, field_ghost_01);

end



//FIELD PHANTOM 01
script command_script cs_field_phantom_01()
	cs_ignore_obstacles ( ai_current_actor, 1);
	
//Phantom Loading/Unloading
	f_load_phantom( field_phantom_01, left, sg_phantom_left_master, none, none, none);
	
	wake (phantom_01_ignore_player);
	wake (field_enemies_see_you);
	
	sleep (30*1);
	
	f_unload_phantom( field_phantom_01, left );

	pup_play_show ("pup_elite_orders_2");
	
//Phantom Flies Away
		cs_vehicle_speed (0.8);
		print ("speed changed");
  	sleep (30*9);
 
    cs_fly_by (ps_phantom_01.p1);
    cs_fly_by (ps_phantom_01.p2);
    cs_fly_by (ps_phantom_01.p3);
        
    cs_vehicle_speed (1);
    
    cs_fly_by (ps_phantom_01.p4);
    cs_fly_by (ps_phantom_01.p5);
        
    object_set_scale( ai_vehicle_get( ai_current_actor ), 0.01, 270 );
    
    dprint ("flying to last point");
    cs_fly_by (ps_phantom_01.p6);
    
    dprint ("destroying...");
    object_destroy( ai_vehicle_get( ai_current_actor ) );

end

script dormant phantom_01_ignore_player()
//FIRST PHANTOM DOESN'T IMMEDIATELY START SHOOTING AT PLAYER
	print ("sleepy-time enemies");
	
	//wait until squad is spawned
	sleep_until( 
		ai_living_count(sq_phantom_elite_left) > 0 and
		ai_living_count(sq_field_front_grunts) > 0 and
		ai_living_count(sq_phantom_jackals_left) > 0
	, 1);
	
	print ("waiting for player action");
	
	//wait until squad takes damage or player moves forward
	sleep_until(
		volume_test_players (tv_field_see_player) or
		ai_strength (sq_phantom_elite_left) < 1	or
		ai_strength (sq_field_front_grunts) < 1	or
		ai_strength (sq_phantom_jackals_left) < 1
	, 1);
	
	print ("enemies awake!");
	ai_set_deaf (field_phantom_01, 0);
	ai_set_blind (field_phantom_01, 0);
	
	sleep_until(volume_test_players (tv_field_mid), 1);
	print ("phantom 1 sleeps again");
	ai_set_deaf (field_phantom_01, 1);
	ai_set_blind (field_phantom_01, 1);
	
end

script dormant field_enemies_see_you()
//if player waits for 5 seconds, phantom starts shooting at you
	sleep_until(volume_test_players (tv_field_wrongway), 1);
	print ("countdown...");
	sleep (30*6);
	print ("enemies see you!");
	ai_set_deaf (field_phantom_01, 0);
	ai_set_blind (field_phantom_01, 0);

end


//FIELD PHANTOM 02
script command_script cs_field_phantom_02()
	cs_ignore_obstacles ( ai_current_actor, 1);
	
//Phantom Loading/Unloading
	f_load_phantom( field_phantom_02, right, sq_field_04, none, none, none);
	sleep (30*3);
	f_unload_phantom( field_phantom_02, right );

//Phantom Flies Away
		cs_vehicle_speed (0.6);
  	sleep (30*4);
  	  	
  	ai_set_deaf (field_phantom_02, 0);
		ai_set_blind (field_phantom_02, 0);
  	
    cs_fly_by (ps_phantom_02.p0);
    cs_vehicle_speed (1);
    cs_fly_by (ps_phantom_02.p1);
    cs_fly_by (ps_phantom_02.p2);
    
    cs_vehicle_speed (1);
    
    cs_fly_by (ps_phantom_01.p4);
    cs_fly_by (ps_phantom_01.p5);
        
    object_set_scale( ai_vehicle_get( ai_current_actor ), 0.01, 300 );
    
    cs_fly_by (ps_phantom_01.p6);
    
   	object_destroy( ai_vehicle_get( ai_current_actor ) );

end


//FIELD PHANTOM 03
script command_script cs_field_phantom_03()
//Phantom Loading/Unloading
	cs_ignore_obstacles (TRUE);
	cs_vehicle_speed (0.5);
	
	f_load_phantom( field_phantom_03, left, sg_field_end_master, none, none, none);
	
	cs_fly_by (ps_phantom_03.p0);
	
	sleep (30*3);
	f_unload_phantom( field_phantom_03, left );
	
//Phantom Flies Away
		cs_vehicle_speed (0.5);
  	sleep (30*18);
    cs_fly_by (ps_phantom_03.p0);
    cs_vehicle_speed (1);
    cs_fly_by (ps_phantom_03.p1);
    cs_fly_by (ps_phantom_03.p2);
    cs_fly_by (ps_phantom_03.p3);
    cs_fly_by (ps_phantom_03.p4);
    cs_fly_by (ps_phantom_03.p5);
		
    cs_vehicle_speed (0.6);

    object_set_scale( ai_vehicle_get( ai_current_actor ), 0.01, 300 );
		
    cs_fly_by (ps_phantom_03.p6);
		
   	object_destroy( ai_vehicle_get( ai_current_actor ) );

end


//REAR FIELD ELITE REACTS WHEN YOU GET NEAR
script dormant rear_elite_react
	sleep_until (volume_test_players (tv_end_elite), 1);
	
	pup_play_show ("pup_elite_orders_1");
	
end


//==================================
// BLIP FIELD EXIT
//==================================

//ALL FIELD ENEMIES DEAD
script dormant field_enemies_dead()
	if (navpoint_using_improved_navpoints() == FALSE) then
		sleep_until ((ai_living_count (sg_field_master) == 0), 1);
		dprint ("ALL FIELD ENEMIES DEAD");
	end
	
	wake (f_dialog_m20_cathedral_reveal);
	
	sleep (30*2);
	
	game_save_no_timeout();
	
 sleep (30*3);
	
	wake (blip_field_exit);
	sleep_forever (field_players_lost);
	
end

//PLAYER TRIED TO GO BACKWARD
script dormant field_players_lost()
	dprint ("WAITING FOR PLAYER TO BECOME LOST");
	sleep_until(volume_test_players (tv_field_wrongway), 1);
	sleep_until(volume_test_players (tv_field_wrongway_02), 1);
	dprint ("PLAYER IS LOST IN FIELD");
	
	wake (blip_field_exit);
	sleep_forever (field_enemies_dead);

end

//BLIP THE FIELD EXIT
script dormant blip_field_exit()
	f_blip_flag (flag_field_exit, "default");
	b_field_blip_on = TRUE;
		
end

//UNBLIP THE FIELD EXIT
script dormant f_unblip_field()
	sleep_until(volume_test_players (tv_field_blip_off), 1);
	dprint ("FIELD BLIPS DISABLED");
	
	sleep_forever (field_enemies_dead);
	sleep_forever (field_players_lost);
	
	if (b_field_blip_on == TRUE) then 
	f_unblip_flag (flag_field_exit);
	b_field_blip_on = FALSE;
	end

end


//SPAWN ENDING ELITE ZEALOT
script dormant f_field_trans_elite()
	sleep_until (volume_test_players (tv_end_elite), 1);
	ai_place (sq_field_end_zealot);

end

script command_script field_trans_elite()
	cs_go_to_and_face (ps_field_trans_elite.p3, ps_field_trans_elite.p3);

end


//SPAWN ENDING TRANSITION GRUNTS
script dormant field_end_transition()
	sleep_until(volume_test_players (tv_to_gpe_spawn), 1);
		dprint ("spawning transition grunts");
		ai_place (sq_to_gpe_grunts);

	sleep_until(
		volume_test_players (tv_field_trans_dialog) or
		ai_living_count (sq_to_gpe_grunts) <= 0
	, 1);
		sleep (30);
		wake (m20_guardpostex_covenant_c);
	
end


//SPAWN THE EVENT
script dormant field_the_event()
	sleep_until(volume_test_players (tv_field_the_event), 1);
	
	if game_difficulty_get_real() == "legendary" then
		ai_place (field_event_phantom);
		dprint ("an advanced sniper party is lost, finding a safe place to land...");
	else
		dprint ("an advanced sniper party found their target");
	end

end

script command_script field_the_event_squad()
	object_set_variant (ai_vehicle_get( ai_current_actor ), ("no_turrets") );
	cs_ignore_obstacles (TRUE);
	cs_vehicle_speed (0.4);
	
	cs_fly_by (ps_field_event.p0);
	
	sleep (30*3);
	
	cs_fly_by (ps_field_event.p1);
	cs_fly_by (ps_field_event.p2);
	cs_fly_to_and_face (ps_field_event.p3, ps_field_event.p5);
	
	f_load_phantom (field_event_phantom, right, sq_field_the_event_01, sq_field_the_event_02, none, none);
	f_load_phantom (field_event_phantom, left, sq_field_the_event_03, sq_field_the_event_04, none, none);
	
	sleep (30*2);
	
	f_unload_phantom (field_event_phantom, right);
	f_unload_phantom (field_event_phantom, left);
	
	sleep (30*2);
	
	wake (f_test_field_event_dead);
	
	cs_fly_to_and_face (ps_field_event.p3, ps_field_event.p2);
	
	cs_vehicle_speed (0.6);
	
	cs_fly_to (ps_phantom_01.p2);
	cs_fly_by (ps_phantom_01.p3);
  
  cs_vehicle_speed (1);
    
  cs_fly_by (ps_phantom_01.p4);
  cs_fly_by (ps_phantom_01.p5);
  dprint ("SCALING");
  object_set_scale( ai_vehicle_get( ai_current_actor ), 0.01, 300 );
  
  cs_fly_by (ps_phantom_01.p6);

	object_destroy( ai_vehicle_get( ai_current_actor ) );

end

script dormant f_test_field_event_dead()
	dprint ("waiting for event death");
	sleep_until (
		ai_living_count (sq_field_the_event_01) <= 0 and
		ai_living_count (sq_field_the_event_02) <= 0 and
		ai_living_count (sq_field_the_event_03) <= 0 and
		ai_living_count (sq_field_the_event_04) <= 0 and
		volume_test_players_all (tv_event_test)
		, 1);	
		dprint ("an elite team of snipers has met their end");
	
	if
		ai_living_count (sq_field_the_event_01) <= 0 and
		ai_living_count (sq_field_the_event_02) <= 0 and
		ai_living_count (sq_field_the_event_03) <= 0 and
		ai_living_count (sq_field_the_event_04) <= 0 and
		volume_test_players_all (tv_event_test)
	then
		dprint ("rejoice and be glad, for your reward is great...");
		object_create (gpe_event_crate_01);
		object_create (gpe_event_crate_02);
		object_create (gpe_event_crate_03);
		object_create (gpe_event_crate_04);
	else
		dprint ("for cowardice, your only reward will be death...");
	end
		
end


// =================================================================================================
// =================================================================================================
// CATHEDRAL EXTERIOR
// =================================================================================================
// =================================================================================================

script dormant f_gp_ext_main()
	sleep_until (b_mission_started == TRUE, 1);
	dprint ("::: guardpost exterior start :::");
	
	zone_set_trigger_volume_enable ("begin_zone_set:13_cathedral_int:*", FALSE);
	zone_set_trigger_volume_enable ("zone_set:13_cathedral_int:*", FALSE);

	wake (f_bcs_cathedral_ext_blip_reveal);
	wake (f_spawn_guardpost_ext);
	wake (f_jackal_alert);

	b_insertion_fade_in = TRUE;

end


script dormant f_spawn_guardpost_ext()
	sleep_until (volume_test_players (tv_guardpost_ext), 1);
	data_mine_set_mission_segment (m20_guardpost_ext);
	
	wake (f_gpe_objcon);
	wake (f_kill_all_field_encounters);
	thread (cathedral_ext_enemy_cleanup());

	dprint ("::: SPAWN FIRST ENEMIES :::");	

	ai_place (sg_gpe_start);
	ai_place (sg_gpe_center);
	
	game_save_no_timeout();
	
	//SPAWN SIDE ENEMIES
	sleep_until (volume_test_players (tv_gp_center), 1);
	ai_place (sg_gpe_structure);
	ai_place (sg_gpe_sides);
	
	//SPAWN UPPER ENEMIES
	sleep_until (volume_test_players (tv_gp_struct), 1);
	game_save_no_timeout();
	ai_place (sg_gpe_top);
	
	wake (f_aa_vignette);

end


//delete all field enemies once players reach cathedral ext
script dormant f_kill_all_field_encounters()
	local real r_distance = 8.0;
	f_ai_garbage_erase( sq_field_front_grunts, r_distance, -1, -1, -1, TRUE, TRUE, FALSE );
	f_ai_garbage_erase( sq_field_01, r_distance, -1, -1, -1, TRUE, TRUE, FALSE );
	f_ai_garbage_erase( sq_field_04, r_distance, -1, -1, -1, TRUE, TRUE, FALSE );
	f_ai_garbage_erase( sq_field_04_sniper, r_distance, -1, -1, -1, TRUE, TRUE, FALSE );
	f_ai_garbage_erase( sq_field_end_turret, r_distance, -1, -1, -1, TRUE, TRUE, FALSE );
	f_ai_garbage_erase( sq_field_06, r_distance, -1, -1, -1, TRUE, TRUE, FALSE );
	f_ai_garbage_erase( sq_phantom_elite_left, r_distance, -1, -1, -1, TRUE, TRUE, FALSE );
	f_ai_garbage_erase( sq_phantom_jackals_left, r_distance, -1, -1, -1, TRUE, TRUE, FALSE );
	f_ai_garbage_erase( sq_field_08, r_distance, -1, -1, -1, TRUE, TRUE, FALSE );
	
end


script static void cathedral_ext_enemy_cleanup()
	sleep_until (volume_test_players (tv_gp_center), 1);
	dprint ("attempting to clean up exterior front");
	f_ai_garbage_erase (sq_gpe_start, 10, -1, -1, -1, FALSE);
	f_ai_garbage_erase (sq_gpe_start_elite, 10, -1, -1, -1, FALSE);
	
	sleep_until (volume_test_players (tv_gs_gpe_structure), 1);
	dprint ("attempting to clean up exterior center");
	f_ai_garbage_erase (sq_gpe_center, 10, -1, -1, -1, FALSE);
	f_ai_garbage_erase (sq_elite_mid, 10, -1, -1, -1, FALSE);
	
	sleep_until (volume_test_players (tv_gp_struct), 1);
	dprint ("attempting to clean up exterior sides");
	f_ai_garbage_erase (sq_sides_left_front, 10, -1, -1, -1, FALSE);
	f_ai_garbage_erase (sq_sides_right_front, 10, -1, -1, -1, FALSE);

end



//JACKAL ALERTS OTHERS TO YOUR PRESENCE
script dormant f_jackal_alert()
	sleep_until (volume_test_players (tv_jackal_alert_spawn), 1);
	ai_place (sq_jackal_alert);
	
	sleep (30*2);
	cui_hud_set_new_objective (objective_2);
	objectives_show_up_to (1);
	
end

script command_script cs_jackal_alert()
	dprint ("jackal spawned");
	ai_magically_see_object (sq_jackal_alert, player0);
	ai_magically_see_object (sq_jackal_alert, player1);
	ai_magically_see_object (sq_jackal_alert, player2);
	ai_magically_see_object (sq_jackal_alert, player3);
	
	cs_look_player (TRUE);
	sleep (30*3);
	cs_go_to (ps_jackal_alert.p1);
	dprint ("jackal moved to point");
	sleep (30*1);
	dprint ("jackal erased");
	ai_erase (sq_jackal_alert);
		
end


//OBJCON
script dormant f_gpe_objcon()
 	sleep_until (volume_test_players (tv_obj_sniper_move), 1);
  dprint  ("::: Objcon Cathedral 50 :::");
	s_objcon_gpe = 50;

end


//ELITE MOVE FORWARD
script command_script elite_advance_and_tease()
	sleep_until (volume_test_players (tv_gp_struct), 1);
	
	cs_move_towards_point (ps_stealth_elite.p0, 0.1);
	
	sleep_until (volume_test_players (tv_elite_pup_play), 1);

	local long show = pup_play_show ("pup_elite_taunt");
	sleep_until(not pup_is_playing(show),1);
	
	cs_run_command_script (sq_guardpost_ext_elite, elite_cloaks);
	
end

//ELITE CLOAKS
script command_script elite_cloaks()
	sleep (30*1);
	ai_set_active_camo (sq_guardpost_ext_elite, TRUE);
	dprint ("elite SHOULD BE invisible!");
	
	cs_move_towards_point (ps_stealth_elite.p1, 0.1);
	cs_face_player (TRUE);
	
//ELITE DE-CLOAKS
	sleep_until (volume_test_players (tv_elite_invisible) or ai_living_count (sg_gpe_top) == 1 or unit_get_shield (sq_guardpost_ext_elite) < 0.75, 1);

	ai_set_active_camo (sq_guardpost_ext_elite, FALSE);
	dprint ("elite is visible!");
	
	pup_play_show ("pup_elite_taunt");

end


//TEST ELITE POSITION FOR AA DROP
global real my_x = 0;
global real my_y = 0;
global real my_z = 0;

script static void get_pos(object guy)
	repeat
		my_x = object_get_x (guy);
		my_y = object_get_y (guy);
		my_z = object_get_z (guy);
	until (object_get_health(guy) <= 0, 1);
	
end

//PLAYER PICKS UP ACTIVE CAMO AA
script dormant f_aa_vignette()
	print ("::: BEGIN AA VIGNETTE :::");
	
	thread (get_pos(sq_guardpost_ext_elite.spawn_points_0));

	sleep_until (object_get_health(sq_guardpost_ext_elite.spawn_points_0) <= 0, 1);

	object_move_by_offset (crate_fake_aa,0, my_x - object_get_x (crate_fake_aa), my_y - object_get_y (crate_fake_aa), (my_z - object_get_z (crate_fake_aa)) + 0.5);

	sleep (1);
	
	if (not volume_test_object (tv_elite_aa_drop, crate_fake_aa)) then
		object_move_to_flag (crate_fake_aa, 0, flag_aa_drop);

	end
	
	object_wake_physics (crate_fake_aa);
		
	//WAIT UNTIL ALL UPPER ENEMIES ARE DEAD
	sleep_until (
		ai_living_count (sq_guardpost_ext_door) <= 0 and
		ai_living_count (sq_guardpost_ext_elite) <= 0 and
		ai_living_count (sq_guardpost_ext_door_jackals) <= 0	
	, 1);

	if 
		(object_valid(crate_fake_aa)) 
	then
		thread (get_pos(crate_fake_aa)); 
	else
		object_create_anew(crate_fake_aa);
		object_move_to_flag (crate_fake_aa, 0, flag_aa_drop);
	end

	sleep (2);
	object_move_by_offset (equip_camo_vignette,0, my_x - object_get_x (equip_camo_vignette), my_y - object_get_y (equip_camo_vignette), (my_z - object_get_z (equip_camo_vignette)) + 0.5);

	f_blip_object (equip_camo_vignette, "default");


	object_wake_physics (equip_camo_vignette);

	thread (camo_drop_fail_safe());

	thread (f_mus_m20_e01_finish());
	wake (f_dialog_m20_camo_drop);

	object_destroy(crate_fake_aa);

	dprint ("ready to open door");

	sleep_until ( 
		unit_has_equipment (player0, "objects\equipment\storm_active_camo\storm_active_camo_m20.equipment") or
		unit_has_equipment (player1, "objects\equipment\storm_active_camo\storm_active_camo_m20.equipment") or
		unit_has_equipment (player2, "objects\equipment\storm_active_camo\storm_active_camo_m20.equipment") or
		unit_has_equipment (player3, "objects\equipment\storm_active_camo\storm_active_camo_m20.equipment")
	, 1);

	f_unblip_object (equip_camo_vignette);
	
	wake(f_dialog_m20_camo_pickup);
	
	//REPLACE 'FAKE' AA WITH CORRECT ONE THE INSTANT PLAYERS PICK IT UP
	if unit_has_equipment (player0, "objects\equipment\storm_active_camo\storm_active_camo_m20.equipment") then
		unit_set_equipment (player0, "objects\equipment\storm_active_camo\storm_active_camo.equipment", FALSE, TRUE, TRUE);
	end
	
	if unit_has_equipment (player1, "objects\equipment\storm_active_camo\storm_active_camo_m20.equipment") then
		unit_set_equipment (player1, "objects\equipment\storm_active_camo\storm_active_camo.equipment", FALSE, TRUE, TRUE);
	end
	
	if unit_has_equipment (player2, "objects\equipment\storm_active_camo\storm_active_camo_m20.equipment") then
		unit_set_equipment (player2, "objects\equipment\storm_active_camo\storm_active_camo.equipment", FALSE, TRUE, TRUE);
	end
	
	if unit_has_equipment (player3, "objects\equipment\storm_active_camo\storm_active_camo_m20.equipment") then
		unit_set_equipment (player3, "objects\equipment\storm_active_camo\storm_active_camo.equipment", FALSE, TRUE, TRUE);
	end
	
	wake (field_the_event);
	
	thread (f_aa_tutorial(player0));
	thread (f_aa_tutorial(player1));
	thread (f_aa_tutorial(player2));
	thread (f_aa_tutorial(player3));
	
	sleep (30*2);
	
	thread (f_cathedral_door_ext());
	
end

//IF ELITE DIES OUTSIDE OF VOLUME, DROP THE AA ON UPPER PLATFORM
script static void camo_drop_fail_safe()
repeat
	if (not volume_test_object (tv_elite_aa_drop, equip_camo_vignette)) then
		object_move_to_flag (equip_camo_vignette, 0, flag_aa_drop);
	end
	until (unit_has_equipment (player0, "objects\equipment\storm_active_camo\storm_active_camo_m20.equipment")
		or unit_has_equipment (player1, "objects\equipment\storm_active_camo\storm_active_camo_m20.equipment")
		or unit_has_equipment (player2, "objects\equipment\storm_active_camo\storm_active_camo_m20.equipment")
		or unit_has_equipment (player3, "objects\equipment\storm_active_camo\storm_active_camo_m20.equipment"), 1);

end

//AA TUTORIAL DISPLAY
script static void f_aa_tutorial(player p_player)
	sleep_until (unit_has_equipment (p_player, "objects\equipment\storm_active_camo\storm_active_camo.equipment"), 1);
	sleep (30*1);
	chud_show_screen_training (p_player, "training_equipment"); 
	sleep (30*6);
	chud_show_screen_training (p_player, "");

end


//TO CATHEDRAL INTERIOR AIRLOCK
script static void f_cathedral_door_ext()
	dprint ("opening cathedral door");
	
	thread (f_cath_door_open_check());
		
	dm_gpi_airlock_door_01->open();
	dm_gpi_airlock_door_01->auto_trigger_close( tv_guardpost_int, FALSE, TRUE, TRUE );
	
	sleep_until( dm_gpi_airlock_door_01->check_close(), 1 );
	dprint ("door has closed");
	
	wake(f_dialog_m20_cathedral_signal);
	
	zone_set_trigger_volume_enable ("begin_zone_set:13_cathedral_int:*", TRUE);
	
	sleep (30*3);
	
	sleep_until (preparingToSwitchZoneSet() == FALSE, 1);
	
	//SWITCH ZONESET
	zone_set_trigger_volume_enable ("zone_set:13_cathedral_int:*", TRUE); 
	dprint ("ZONESET HAS CHANGED");
	
	//ERASE ALL PREVIOUS SQUADS
	ai_erase (sg_gpe_start);
	ai_erase (sg_gpe_center);
	ai_erase (sg_gpe_sides);
	ai_erase (sg_sides_right_ramp);
	ai_erase (sg_sides_left_ramp);
	ai_erase (sg_sides_left_grass);
	ai_erase (sg_sides_right_grass);
	ai_erase (sg_sides_left_front);
	ai_erase (sg_sides_right_front);
	ai_erase (sg_gpe_structure);
	ai_erase (sg_gpe_top);
	
	//UNLOCKS INSERTION POINT IN MENU ONCE PLAYER HAS REACHED THIS POINT
	game_insertion_point_unlock(5);
	
	game_save_no_timeout();
	sleep (30*2);
	wake (f_gp_int_main);
	
end

//safety loop to make sure first ci airlock door opens if players return to field and come back
script static void f_cath_door_open_check()
	repeat
		dprint ("waiting for door to become invalid...");
		sleep_until (not object_valid (dm_gpi_airlock_door_01) );
		dprint ("door is now invalid");
		kill_script (f_cathedral_door_ext);
		
		sleep (30*3);
		
		dprint ("waiting for door to become valid...");
		sleep_until (object_valid (dm_gpi_airlock_door_01) );
		
		dprint ("door is now valid - opening...");
		thread (f_cathedral_door_ext());
		
		sleep (30*3);
	
	until (volume_test_players (tv_gp_int_encounter_01) );
		dprint ("disabling first airlock door check script");

end

script dormant f_bcs_cathedral_ext_blip_reveal()
	sleep_until (volume_test_players (tv_guardpost_ext), 1);

	f_blip_position_breadcrumbs(-17.52, 316.11, 8.098, "cathedral_ext_ramp", "default");
	sleep_until (volume_test_players (tv_elite_pup_play), 1);
	f_unblip_position_breadcrumbs("cathedral_ext_ramp");
end

// =================================================================================================
// =================================================================================================
// BRIDGE
// =================================================================================================
// =================================================================================================

script dormant f_bridge_main()
	dprint ("::: bridge start :::");
	b_insertion_fade_in = TRUE;
	
	zone_set_trigger_volume_enable ("begin_zone_set:15_bridge", FALSE);
	zone_set_trigger_volume_enable ("zone_set:15_bridge", FALSE);
		
	zone_set_trigger_volume_enable ("begin_zone_set:17_courtyard", FALSE);
	zone_set_trigger_volume_enable ("zone_set:17_courtyard", FALSE);
	
end


//OPEN DOOR AND BEGIN BRIDGE ENCOUNTER - LOADS FROM GUARDPOST INTERIOR SCRIPT
script static void f_start_bridge_encounter()
	sleep_until (volume_test_players (tv_door_to_bridge_open), 1);
	
	data_mine_set_mission_segment (m20_bridge);
	
	wake (f_bridge_start);
	
	dm_to_bridge_door_new->open();
	dm_to_bridge_door_new->auto_trigger_close( tv_bridge_door_close, TRUE, TRUE, TRUE );
	
	wake (f_kill_squad_vo_line);
	
	sleep_until (volume_test_players (tv_bridge_awake), 1);	
	dprint ("PLAY MUSIC!");
	thread (f_mus_m20_e04_begin());
	
	dprint ("PLAY MUSIC!");
	thread (f_mus_m20_e05_begin());
	
	sleep (30*1);
	cui_hud_set_new_objective (objective_5);
	objectives_show_up_to (2);	
	
end

//DISABLE THE CORTANA LINE ABOUT SQUADS BELOW IF THEY KILL THEM OR DROP DOWN
script dormant f_kill_squad_vo_line()
	sleep_until (
		volume_test_players (tv_bridge_awake) or
		ai_living_count (sq_bridge_start_jackals) < 2 or
		ai_living_count (sq_bridge_start_grunts) < 2 or
		ai_living_count (sq_bridge_start_grunt_patrol) < 1
	, 1);
	
	sleep_forever (f_dialog_m20_bridge_elevator);
	sleep_forever (m20_bridge_elevator);
	
end


//START THE BRIDGE ENCOUNTERS
script dormant f_bridge_start()
	dprint  ("::: bridge SPAWN :::");
	ai_place (sq_br_phantom_1);
	
	ai_place (sg_bridge_firsthalf_front);
	ai_place (sq_bridge_firsthalf_2);
	
	ai_place (sg_bridge_banshee_01);
	ai_place (sg_bridge_banshee_02);
	
	wake (f_bridge_phantoms);
	wake (bridge_switch_watcher);
	wake (f_spawn_bridge_2);
	wake (f_bridge_objcon);
	wake (f_bridge_under);
	wake (bridge_doors_open);
	wake (player_banshee_hijack);
	wake (bridge_blind_deaf);
	wake (f_spawn_middle_elite);
	wake (f_bridge_halfway_checkpoint);
	wake (f_bridge_save_center);
	
	thread (bridge_enemy_cleanup());
	
	game_save_no_timeout();
	
	sleep (30*2);
	
//	wake (f_dialog_m20_phantom_on_approach_02);

end

//bridge garbage cleanup
script static void bridge_enemy_cleanup()
local real r_distance = 8.0;
	sleep_until (volume_test_players (tv_enemy_cleanup_01), 1);
	dprint ("attempting to clean up bridge front");
	f_ai_garbage_erase( sq_bridge_start_jackals, r_distance, -1, -1, -1, FALSE, TRUE, FALSE );
	f_ai_garbage_erase( sq_bridge_start_grunts, r_distance, -1, -1, -1, FALSE, TRUE, FALSE );
	f_ai_garbage_erase( sq_bridge_start_grunt_patrol, r_distance, -1, -1, -1, FALSE, TRUE, FALSE );

	sleep_until (volume_test_players (tv_enemy_cleanup_02), 1);
	dprint ("attempting to clean up bridge first middle");
	f_ai_garbage_erase( sq_bridge_firsthalf_1a, r_distance, -1, -1, -1, FALSE, TRUE, FALSE );
	f_ai_garbage_erase( sq_bridge_firsthalf_1e, r_distance, -1, -1, -1, FALSE, TRUE, FALSE );
	f_ai_garbage_erase( sq_bridge_firsthalf_2, r_distance, -1, -1, -1, FALSE, TRUE, FALSE );
	f_ai_garbage_erase( sq_bridge_firsthalf_under, r_distance, -1, -1, -1, FALSE, TRUE, FALSE );
	//f_ai_garbage_erase( sq_br_phantom_1, 15, -1, -1, -1, FALSE, TRUE, FALSE );

	sleep_until (volume_test_players (tv_enemy_cleanup_03), 1);
	dprint ("attempting to clean up bridge second middle");
	f_ai_garbage_erase( sq_bridge_middle_main_1, r_distance, -1, -1, -1, FALSE, TRUE, FALSE );
	f_ai_garbage_erase( sq_bridge_middle_main_2, r_distance, -1, -1, -1, FALSE, TRUE, FALSE );
	f_ai_garbage_erase( sq_bridge_middle_main_3, r_distance, -1, -1, -1, FALSE, TRUE, FALSE );
	f_ai_garbage_erase( sq_bridge_middle_top_1, r_distance, -1, -1, -1, FALSE, TRUE, FALSE );
	f_ai_garbage_erase( sq_bridge_middle_top_2, r_distance, -1, -1, -1, FALSE, TRUE, FALSE );
	f_ai_garbage_erase( sq_bridge_middle_elite_02, r_distance, -1, -1, -1, FALSE, TRUE, FALSE );
	//f_ai_garbage_erase( sq_br_phantom_2, 15, -1, -1, -1, FALSE, TRUE, FALSE );

	sleep_until (volume_test_players (tv_enemy_cleanup_04), 1);
	dprint ("attempting to clean up bridge end front");
	f_ai_garbage_erase( sq_bridge_middle_main_1, r_distance, -1, -1, -1, FALSE, TRUE, FALSE );
	f_ai_garbage_erase( sq_bridge_middle_main_2, r_distance, -1, -1, -1, FALSE, TRUE, FALSE );
	f_ai_garbage_erase( sq_bridge_middle_main_3, r_distance, -1, -1, -1, FALSE, TRUE, FALSE );
	
	f_ai_garbage_erase( sq_bridge_end_front, r_distance, -1, -1, -1, FALSE, TRUE, FALSE );
	f_ai_garbage_erase( sq_bridge_end_front_st, r_distance, -1, -1, -1, FALSE, TRUE, FALSE );
	f_ai_garbage_erase( sq_bridge_end_middle_2, r_distance, -1, -1, -1, FALSE, TRUE, FALSE );
	//f_ai_garbage_erase( sq_br_phantom_3, 15, -1, -1, -1, FALSE, TRUE, FALSE );

end


//BRIDGE ELEVATOR
script dormant bridge_switch_watcher()
	sleep_until (volume_test_players (tv_bridge_elevator), 1);
	dprint ("::: Going Down :::");
	dm_bridge_elevator->animate();

end


script dormant f_bridge_objcon()
	wake (f_obj_bridge_banshee);
 	sleep_until (volume_test_players (tv_br_firsthalf_front), 1);
  dprint  ("::: Objcon Bridge 10 :::");
	s_objcon_bridge = 10;
	
	sleep_until (volume_test_players (tv_br_objcon_15), 1);
  dprint  ("::: Objcon Bridge 15 :::");
	s_objcon_bridge = 15;
	
	sleep_until (volume_test_players (tv_br_firsthalf_middle), 1);
  dprint  ("::: Objcon Bridge 20 :::");
	s_objcon_bridge = 20;
	
	sleep_until (volume_test_players (tv_br_firsthalf_rear), 1);
  dprint  ("::: Objcon Bridge 30 :::");
	s_objcon_bridge = 30;
	
	sleep_until (volume_test_players (tv_br_firsthalf_end), 1);
  dprint  ("::: Objcon Bridge 35 :::");
	s_objcon_bridge = 35;
	
	sleep_until (volume_test_players (tv_bridge_middle_end), 1);
  dprint  ("::: Objcon Bridge 40 :::");
	s_objcon_bridge = 40;

end


//FIRST ENEMIES WAIT BEFORE SEEING PLAYER
script dormant bridge_blind_deaf()
	dprint ("ENEMIES CAN'T SEE YOU");
	ai_disregard (player0, TRUE);
	ai_disregard (player1, TRUE);
	ai_disregard (player2, TRUE);
	ai_disregard (player3, TRUE);
	
	sleep_until(
		volume_test_players (tv_bridge_elevator)
		or volume_test_players (tv_bridge_awake)
		or ai_strength (sg_bridge_firsthalf_front) < 1
		or ai_strength (sg_bridge_firsthalf_middle) < 1
	, 1);

	dprint ("ENEMIES SEE YOU!");
	ai_disregard (player0, FALSE);
	ai_disregard (player1, FALSE);
	ai_disregard (player2, FALSE);
	ai_disregard (player3, FALSE);
	
	ai_set_blind (sq_br_phantom_1, FALSE);
	ai_set_deaf (sq_br_phantom_1, FALSE);

end


//CHECKPOINT AT HALFWAY GAP
script dormant f_bridge_halfway_checkpoint()
	sleep_until (volume_test_players (tv_objcon_banshee_1), 1);
	game_save_no_timeout();
	
	//sleep_until (volume_test_players (tv_br_snipers_open), 1);
	sleep_until (volume_test_players (tv_bridge_end_02), 1);
	game_save_no_timeout();
	
end


//GAME SAVE CENTER BRIDGE
script dormant f_bridge_save_center()
	sleep_until (volume_test_players (tv_bridge_end_02), 1);
	dprint ("waiting for center enemies to die before saving...");
	
	sleep_until (
			ai_living_count (sq_bridge_middle_main_1) < 1 and
			ai_living_count (sq_bridge_middle_main_2) < 1 and
			ai_living_count (sq_bridge_middle_main_3) < 1 and
			ai_living_count (sq_bridge_middle_top_1) < 1 and
			ai_living_count (sq_bridge_middle_top_2) < 1
	,1);
	
	dprint ("all center enemies dead");
	dprint ("setting banshees to blind/deaf");
	
	ai_set_blind (sq_bridge_banshee_1, TRUE);
	ai_set_blind (sq_bridge_banshee_2, TRUE);
	ai_set_blind (sq_bridge_banshee_3, TRUE);
	ai_set_blind (sq_bridge_banshee_4, TRUE);
	ai_set_deaf (sq_bridge_banshee_1, TRUE);
	ai_set_deaf (sq_bridge_banshee_2, TRUE);
	ai_set_deaf (sq_bridge_banshee_3, TRUE);
	ai_set_deaf (sq_bridge_banshee_4, TRUE);
	
	game_save_no_timeout();
	dprint ("watch for CHECKPOINT");
	
	sleep (30*10);
	
	ai_set_blind (sq_bridge_banshee_1, FALSE);
	ai_set_blind (sq_bridge_banshee_2, FALSE);
	ai_set_blind (sq_bridge_banshee_3, FALSE);
	ai_set_blind (sq_bridge_banshee_4, FALSE);
	ai_set_deaf (sq_bridge_banshee_1, FALSE);
	ai_set_deaf (sq_bridge_banshee_2, FALSE);
	ai_set_deaf (sq_bridge_banshee_3, FALSE);
	ai_set_deaf (sq_bridge_banshee_4, FALSE);

	dprint ("banshees no longer blind/deaf");
	
end


//SPAWN UNDER BRIDGE
script dormant f_bridge_under()
 	sleep_until (volume_test_players (tv_bridge_under_1), 1);
  dprint  ("::: Spawn Under #1 :::");
	ai_place (sq_bridge_firsthalf_under);

end

//SPAWN MIDDLE ELITE
script dormant f_spawn_middle_elite()
 	sleep_until (volume_test_players (tv_middle_end_elite), 1);
	ai_place (sq_bridge_middle_elite_02);

end


//SPAWN PHANTOMS
script dormant f_bridge_phantoms()
	sleep_until (volume_test_players (tv_phantom_spawn_02), 1);
	ai_place (sq_br_phantom_2);
	
	sleep_until (volume_test_players (tv_bridge_end_02), 1);
	ai_place (sq_br_phantom_3);

end



// =================================================================================================
// BRIDGE PHANTOMS FLY
// =================================================================================================

//DECORATIVE
script command_script phantom_fly_0()
	cs_ignore_obstacles (TRUE);
	cs_vehicle_speed (1);
	
	cs_fly_by (ps_br_phantom_0.p0);
	cs_fly_by (ps_br_phantom_0.p1);
	cs_fly_by (ps_br_phantom_0.p2);
	cs_fly_by (ps_br_phantom_0.p3);
	ai_erase (sq_br_phantom_0);

end

//PHANTOM 01 DROPS FRONT SQUAD
script command_script phantom_fly_1()
	cs_ignore_obstacles (TRUE);
	cs_vehicle_speed (0.5);

	f_load_phantom (sq_br_phantom_1, left, sq_bridge_firsthalf_1e, sq_bridge_firsthalf_1a, none, none);

	sleep (30 * 2);

	cs_fly_by (ps_br_phantom_1.p0);
	cs_fly_by (ps_br_phantom_1.p1);
	cs_fly_to_and_face (ps_br_phantom_1.p3, ps_br_phantom_1.p4);
	cs_fly_to_and_face (ps_br_phantom_1.p3, ps_br_phantom_1.p4);

	f_unload_phantom( sq_br_phantom_1, left );
	
	sleep (30*5);
	
	if
		ai_spawn_count (sq_br_phantom_2) <= 0
	then
		dprint ("safe to take off");
		cs_fly_to_and_face (ps_br_phantom_1.p2, ps_br_phantom_1.p5);
	else
		dprint ("ship nearby, waiting to take off...");
		sleep_until (b_br_phantom_safe_to_leave == TRUE);
			dprint ("safe to leave.  leaving now...");
			cs_fly_to_and_face (ps_br_phantom_1.p2, ps_br_phantom_1.p5);
	end
	
	cs_vehicle_speed (0.8);
	
	b_bridge_phantom_01_gone = TRUE;
	
	cs_fly_by (ps_br_phantom_1.p5);
	cs_fly_by (ps_br_phantom_1.p6);
	
	object_set_scale( ai_vehicle_get( ai_current_actor ), 0.4, 560 );
	
	cs_fly_by (ps_br_phantom_1.p7);
	cs_vehicle_speed (0.5);
	cs_fly_by (ps_br_phantom_1.p8);
	cs_fly_by (ps_br_phantom_1.p9);
	
	ai_erase (sq_br_phantom_1);

end

//PHANTOM 02 DROPS MIDDLE SQUAD
script command_script phantom_fly_2()
	cs_ignore_obstacles (TRUE);
	cs_vehicle_speed (0.6);
			
	object_set_scale( ai_vehicle_get( ai_current_actor ), 0.01, 0 );
	object_set_scale( ai_vehicle_get( ai_current_actor ), 1, 60 );
	
	sleep (30 * 1);

	cs_fly_by (ps_br_phantom_2.p7);
	
	if 
		b_bridge_phantom_01_gone == (TRUE)
	then
		dprint ("first phantom has left, take lower point");
		cs_fly_by (ps_br_phantom_2.p8);
	else
		dprint ("first phantom has not left, take higher point");
		cs_fly_by (ps_br_phantom_2.p0);
	end
	
	cs_fly_by (ps_br_phantom_2.p1);
	
	b_br_phantom_safe_to_leave = TRUE;
	
	cs_fly_by (ps_br_phantom_2.p2);
	
	ai_set_blind (sq_br_phantom_2, FALSE);
	ai_set_deaf (sq_br_phantom_2, FALSE);
	
	cs_fly_to_and_face (ps_br_phantom_2.p3, ps_br_phantom_2.p9);
	
	f_load_phantom (sq_br_phantom_2, left, sq_bridge_middle_main_1, sq_bridge_middle_main_3, none, none);
	
	sleep (10);
	
	f_unload_phantom( sq_br_phantom_2, left );
	
	sleep_until (volume_test_players (tv_phantom_02_leaves)
	or ai_strength (sq_br_phantom_2.gunner01) < 1
	or ai_strength (sq_br_phantom_2.gunner02) < 1, 1);
	
	sleep (30 * 1);
	
	cs_fly_by (ps_br_phantom_2.p4);
	cs_fly_by (ps_br_phantom_2.p5);
	cs_fly_by (ps_br_phantom_2.p6);
	
	object_set_scale( ai_vehicle_get( ai_current_actor ), 0.4, 560 );
	
	cs_fly_by (ps_br_phantom_1.p8);
	cs_fly_by (ps_br_phantom_1.p9);
	
	ai_erase (sq_br_phantom_2);

end

//PHANTOM 03 DROPS BACK SQUAD
script command_script phantom_fly_3()
	cs_ignore_obstacles (TRUE);
		
	object_set_scale( ai_vehicle_get( ai_current_actor ), 0.01, 0 );
	object_set_scale( ai_vehicle_get( ai_current_actor ), 1, 60 );
	
	cs_fly_by (ps_br_phantom_3.p7);
	cs_fly_by (ps_br_phantom_3.p0);
	cs_fly_by (ps_br_phantom_3.p1);
	cs_fly_by (ps_br_phantom_3.p2);
	cs_fly_to_and_face (ps_br_phantom_3.p3, ps_br_phantom_3.p4);
	
	ai_set_blind (sq_br_phantom_3, FALSE);
	ai_set_deaf (sq_br_phantom_3, FALSE);
	
	cs_fly_to (ps_br_phantom_3.p3);
	cs_fly_to_and_dock (ps_br_phantom_3.p3, ps_br_phantom_3.p4, 3);
	//ai_braindead (sq_br_phantom_3, TRUE);
			
	sleep (30 * 2);
	
	f_load_phantom (sq_br_phantom_3, right, sg_bridge_end_elite, sg_bridge_end_middle, none, none);
	
	sleep (10);
	
	f_unload_phantom( sq_br_phantom_3, right );
		
	sleep (30 * 10);
	
	cs_vehicle_speed (0.6);
	
	cs_fly_to_and_face (ps_br_phantom_3.p5, ps_br_phantom_3.p6);
	cs_fly_by (ps_br_phantom_3.p6);
	
	object_set_scale( ai_vehicle_get( ai_current_actor ), 0.4, 560 );
	
	cs_fly_by (ps_br_phantom_1.p7);
	cs_fly_by (ps_br_phantom_1.p8);
	cs_fly_by (ps_br_phantom_1.p9);
		
	ai_erase (sq_br_phantom_3);

end



// =================================================================================================
// BRIDGE BANSHEES FLY
// =================================================================================================

script command_script banshee_fly_1()
	print ("banshee 1 spawn");
	
	
	
	if game_difficulty_get_real() == "easy" or game_difficulty_get_real() == "normal" then 
	unit_set_current_vitality (unit_get_vehicle (sq_bridge_banshee_1), 80, 0);
	print ("------- banshee spawn 1");
	end
	
	unit_set_current_vitality (unit_get_vehicle (sq_bridge_banshee_1), 180, 0);
		
	cs_fly_by (ps_banshee_bridge_01.p0);
	cs_fly_by (ps_banshee_bridge_01.p1);
	cs_fly_by (ps_banshee_bridge_01.p5);
	
	//sleep (30*10);
	
	print ("BANSHEE 1 CAN SEE U");
	ai_set_deaf (sq_bridge_banshee_1, 0);
	ai_set_blind (sq_bridge_banshee_1, 0);
end

script command_script banshee_fly_2()
	print ("banshee 2 spawn");
	
	if game_difficulty_get_real() == "easy" or game_difficulty_get_real() == "normal" then 
	unit_set_current_vitality (unit_get_vehicle (sq_bridge_banshee_2), 80, 0);
	print ("----------- banshee spawn 2");
	end
	
	unit_set_current_vitality (unit_get_vehicle (sq_bridge_banshee_2), 180, 0);
	
	cs_fly_by (ps_banshee_bridge_02.p0);
	cs_fly_by (ps_banshee_bridge_02.p1);
	cs_fly_by (ps_banshee_bridge_02.p2);
	cs_fly_by (ps_banshee_bridge_02.p3);
	cs_fly_by (ps_banshee_bridge_02.p4);
	
	print ("BANSHEE 2 CAN SEE U");
	ai_set_deaf (sq_bridge_banshee_2, 0);
	ai_set_blind (sq_bridge_banshee_2, 0);
end


//IF PLAYER HIJACKS BANSHEE, SPAWN MORE
script dormant player_banshee_hijack()
	dprint( "Waiting for Banshee hijack" );
	sleep_until (player_in_vehicle (ai_vehicle_get_from_squad (sq_bridge_banshee_1,0)) or player_in_vehicle (ai_vehicle_get_from_squad (sq_bridge_banshee_2,0)));
	local long banshee_tut_01 = thread (f_banshee_tutorial(player0));
	local long banshee_tut_02 = thread (f_banshee_tutorial(player1));
	local long banshee_tut_03 = thread (f_banshee_tutorial(player2));
	local long banshee_tut_04 = thread (f_banshee_tutorial(player3));
	
	dprint ("SPAWNING 3RD BANSHEE");
	ai_place (sq_bridge_banshee_3);
	sleep_until (ai_living_count (sg_all_bridge_banshees) <= 1);
	
	dprint ("SPAWNING 4TH BANSHEE");
	ai_place (sq_bridge_banshee_4);
	
	sleep_until(b_courtyard_airlock == TRUE, 1);
	kill_thread(banshee_tut_01);
	kill_thread(banshee_tut_02);
	kill_thread(banshee_tut_03);
	kill_thread(banshee_tut_04);
	
end

//extra banshees fly in
script command_script f_br_banshee_03()
	cs_fly_by (ps_banshee_bridge_03.p0);
	cs_fly_by (ps_banshee_bridge_03.p1);

end

script command_script f_br_banshee_04()
	cs_fly_by (ps_banshee_bridge_04.p0);

end


//diaplay banshee tutorial
script static void f_banshee_tutorial(player p_player)
	sleep (30*6);
	sleep_until (unit_in_vehicle (p_player), 1);
	chud_show_screen_training (p_player, "training_bansheeboost"); 
	sleep (30*3);
	chud_show_screen_training (p_player, "");
	sleep (30*3);
		
	sleep_until (unit_in_vehicle (p_player), 1);
	chud_show_screen_training (p_player, "training_firebansheebomb"); 
	sleep (30*3);
	chud_show_screen_training (p_player, "");
	sleep (30*3);
		
	sleep_until (unit_in_vehicle (p_player), 1);
	chud_show_screen_training (p_player, "training_bansheetrick"); 
	sleep (30*3);
	chud_show_screen_training (p_player, "");
	sleep (30*3);

end	
	

//BRIDGE END SPAWN TRIGGERS
script dormant spawn_bridge_3()
	sleep_until (volume_test_players (tv_br_firsthalf_rear), 1);
	//ai_place (sq_br_phantom_3);
	dprint ("::: SPAWN Phantom Drop :::");

	sleep_until (volume_test_players (tv_bridge_end_01), 1);
		ai_place (sg_bridge_end_front_st);
		ai_place (sg_bridge_end_front);
		ai_place (sg_bridge_end_under);
		dprint ("::: SPAWN Bridge End 01 :::");
		
	sleep_until (volume_test_players (tv_bridge_end_02), 1);
		//ai_place (sg_bridge_end_elite);
		//ai_place (sg_bridge_end_middle);
		dprint ("::: SPAWN Bridge End 02 :::");

	sleep_until (volume_test_players (tv_bridge_end_03), 1);
		ai_place (sg_bridge_end_back);
		dprint ("::: SPAWN Bridge End 03 :::");

	wake (f_bcs_bridge_exit_blip);
end


script dormant f_spawn_bridge_2()
	sleep_until (volume_test_players (tv_bridge_2), 1);
	ai_place (sg_bridge_middle);
	
	dprint ("::: bridge middle :::");
	
	wake (spawn_bridge_3);
	
end


//BRIDGE TO_COURTYARD AIRLOCK TRANSITION
script dormant bridge_doors_open()
	sleep_until (volume_test_players (tv_bridge_door_01), 1);
	
	dm_door_to_courtyard_01->open();
	dm_door_to_courtyard_01->auto_trigger_close( tv_to_courtyard_doors, FALSE, TRUE, TRUE );
		
	//END BRIDGE MUSIC
	thread (f_mus_m20_e04_finish());
	thread (f_mus_m20_e05_finish());
	
	sleep_until (dm_door_to_courtyard_01->check_close(), 1);
	
	
	//teleport players if not in airlock
	if
		not volume_test_object (tv_bridge_airlock_check, player0)
	then
		object_teleport (player0, bridge_hall_teleport_0);
	end
	
	if
		not volume_test_object (tv_bridge_airlock_check, player1)
	then
		object_teleport (player1, bridge_hall_teleport_1);
	end
	
	if
		not volume_test_object (tv_bridge_airlock_check, player2)
	then
		object_teleport (player2, bridge_hall_teleport_2);
	end
	
	if
		not volume_test_object (tv_bridge_airlock_check, player3)
	then
		object_teleport (player3, bridge_hall_teleport_3);
	end
	
	
	//play letterbox title
	thread (m20_courtyard_entrance());
	
	b_courtyard_airlock = TRUE;
	
	//DESTROY ALL BANSHEES IN AIRLOCK
	thread (destroy_all_banshees());
	
	sleep_until (b_airlock_banshees_destroyed == TRUE);
		
	dprint (":: PREPARE TO SWITCH TO COURTYARD ::");
	zone_set_trigger_volume_enable ("begin_zone_set:17_courtyard", TRUE);
	
	sleep (30*3);

	sleep_until (preparingToSwitchZoneSet() == FALSE, 1);
	dprint ("finished streaming");
	
	//SWITCH ZONESET
	zone_set_trigger_volume_enable ("zone_set:17_courtyard", TRUE);
	dprint ("ZONESET HAS CHANGED");

	sleep_until (volume_test_players (tv_door_courtyard), 1);
	
	//BEGIN COURTYARD
	wake (f_courtyard_main);
	
	game_save_no_timeout();
	
	courtyard_door->open();
	
	dprint ("PLAY MUSIC!");
	thread (f_mus_m20_e06_begin());
	
	courtyard_door->auto_trigger_close( tv_court_door_close, TRUE, TRUE, TRUE );
	
	sleep_until( courtyard_door->check_close(), 1 );
	dprint ("door has closed");

end


//BLOW UP ANY BANSHEES IN AIRLOCK
script static void destroy_all_banshees()
	if
		unit_in_vehicle_type (player0, 30)
	then
		unit_exit_vehicle (player0);
	end
	
	if
		unit_in_vehicle_type (player1, 30)
	then
		unit_exit_vehicle (player1);
	end
	
	if
		unit_in_vehicle_type (player2, 30)
	then
		unit_exit_vehicle (player2);
	end
	
	if
		unit_in_vehicle_type (player3, 30)
	then
		unit_exit_vehicle (player3);
	end
	
	sleep_until (not (unit_in_vehicle (player0))
	and
	not (unit_in_vehicle (player1))
	and
	not (unit_in_vehicle (player2))
	and
	not (unit_in_vehicle (player3))
	);

	sleep (10);

	repeat

	object_damage_damage_section (list_get(volume_return_objects_by_campaign_type (tv_bridge_airlock_check, 30), 0), "hull", 500);
	object_damage_damage_section (list_get(volume_return_objects_by_campaign_type (tv_bridge_airlock_check, 30), 0), "canopy", 500);
	object_damage_damage_section (list_get(volume_return_objects_by_campaign_type (tv_bridge_airlock_check, 30), 0), "wing_right", 500);
	object_damage_damage_section (list_get(volume_return_objects_by_campaign_type (tv_bridge_airlock_check, 30), 0), "wing_left", 500);

	object_damage_damage_section (list_get(volume_return_objects_by_campaign_type (tv_bridge_airlock_check, 30), 1), "hull", 500);
	object_damage_damage_section (list_get(volume_return_objects_by_campaign_type (tv_bridge_airlock_check, 30), 1), "canopy", 500);
	object_damage_damage_section (list_get(volume_return_objects_by_campaign_type (tv_bridge_airlock_check, 30), 1), "wing_right", 500);
	object_damage_damage_section (list_get(volume_return_objects_by_campaign_type (tv_bridge_airlock_check, 30), 1), "wing_left", 500);

	object_damage_damage_section (list_get(volume_return_objects_by_campaign_type (tv_bridge_airlock_check, 30), 2), "hull", 500);
	object_damage_damage_section (list_get(volume_return_objects_by_campaign_type (tv_bridge_airlock_check, 30), 2), "canopy", 500);
	object_damage_damage_section (list_get(volume_return_objects_by_campaign_type (tv_bridge_airlock_check, 30), 2), "wing_right", 500);
	object_damage_damage_section (list_get(volume_return_objects_by_campaign_type (tv_bridge_airlock_check, 30), 2), "wing_left", 500);
	
	object_damage_damage_section (list_get(volume_return_objects_by_campaign_type (tv_bridge_airlock_check, 30), 3), "hull", 500);
	object_damage_damage_section (list_get(volume_return_objects_by_campaign_type (tv_bridge_airlock_check, 30), 3), "canopy", 500);
	object_damage_damage_section (list_get(volume_return_objects_by_campaign_type (tv_bridge_airlock_check, 30), 3), "wing_right", 500);
	object_damage_damage_section (list_get(volume_return_objects_by_campaign_type (tv_bridge_airlock_check, 30), 3), "wing_left", 500);
	
	object_damage_damage_section (list_get(volume_return_objects_by_campaign_type (tv_bridge_airlock_check, 30), 4), "hull", 500);
	object_damage_damage_section (list_get(volume_return_objects_by_campaign_type (tv_bridge_airlock_check, 30), 4), "canopy", 500);
	object_damage_damage_section (list_get(volume_return_objects_by_campaign_type (tv_bridge_airlock_check, 30), 4), "wing_right", 500);
	object_damage_damage_section (list_get(volume_return_objects_by_campaign_type (tv_bridge_airlock_check, 30), 4), "wing_left", 500);
	
	object_damage_damage_section (list_get(volume_return_objects_by_campaign_type (tv_bridge_airlock_check, 30), 5), "hull", 500);
	object_damage_damage_section (list_get(volume_return_objects_by_campaign_type (tv_bridge_airlock_check, 30), 5), "canopy", 500);
	object_damage_damage_section (list_get(volume_return_objects_by_campaign_type (tv_bridge_airlock_check, 30), 5), "wing_right", 500);
	object_damage_damage_section (list_get(volume_return_objects_by_campaign_type (tv_bridge_airlock_check, 30), 5), "wing_left", 500);
	
	print ("Destroying Banshees");

	until (list_count(volume_return_objects_by_campaign_type (tv_bridge_airlock_check, 30)) == 0, 1);

	print ("ALL BANSHEES DESTROYED");
	b_airlock_banshees_destroyed = TRUE;

end

script dormant f_bcs_bridge_exit_blip()
	f_blip_position_breadcrumbs(-17.52, 567.38, 0.87, "bridge_to_courtyard", "default");
	sleep_until (volume_test_players (tv_bridge_door_01), 1);
	f_unblip_position_breadcrumbs("bridge_to_courtyard");
end

// =================================================================================================
// =================================================================================================
// COURTYARD
// =================================================================================================
// =================================================================================================

script dormant f_courtyard_main()
	dprint ("::: courtyard start :::");
		
	data_mine_set_mission_segment (m20_courtyard);
	
	// By order of tholmes, all effects in this area are now under strict curfew.
	effects_perf_armageddon = true;
	
	wake (f_spawn_courtyard);
	wake (f_spawn_court_hall);
	wake (f_spawn_court_hall_sides);
	wake (f_kill_center_hall_spawn);
	wake (f_courtyard_end);
	wake (f_court_flank_spawn_adjust);
	wake (kill_side_encounters);
	wake (courtyard_phantom_arrives);
	wake (f_objcon_courtyard);
	wake (last_stand_enemies);
	thread (courtyard_enemy_cleanup());
	
	dprint ("DISABLING TERMINUS AIRLOCK TRIGGERS");
	zone_set_trigger_volume_enable ("begin_zone_set:19_terminus:*", FALSE); 
	zone_set_trigger_volume_enable ("zone_set:19_terminus:*", FALSE); 
	
	b_insertion_fade_in = TRUE;

end


//SPAWN COURTYARD
script dormant f_spawn_courtyard()
	dprint ("SPAWNING COURTYARD...");
	ai_place (sg_cy_center);
	ai_place (sg_cy_right);
	ai_place (sg_cy_left);
	ai_place (sg_cy_front);
	ai_place (sq_courtyard_ghost_1);
	ai_place (sq_courtyard_ghost_2);
	ai_place (sq_cy_phantom_start_01);
	ai_place (sq_cy_phantom_start_02);

	wake (f_bcs_courtyard_exit_blip);
end

//CLEAN UP ENEMY SPAWNS IN COURTYARD
script static void courtyard_enemy_cleanup()
local real r_distance = 10.0;
dprint ("loaded enemy cleanup script");

	sleep_until (volume_test_players (tv_gs_courtyard_time), 1);
	dprint ("attempting to clean up courtyard front");
	f_ai_garbage_erase( sq_courtyard_front_01, r_distance, -1, -1, -1, FALSE, TRUE, FALSE );
	f_ai_garbage_erase( sq_courtyard_front_02, r_distance, -1, -1, -1, FALSE, TRUE, FALSE );
	
		
	sleep_until (
	volume_test_players (tv_court_hall) or
	volume_test_players (tv_court_right_safe_spawn)
	, 1);
	dprint ("attempting to clean up courtyard front and sides");

	f_ai_garbage_erase( sq_courtyard_front_01, r_distance, -1, -1, -1, FALSE, TRUE, FALSE );
	f_ai_garbage_erase( sq_courtyard_front_02, r_distance, -1, -1, -1, FALSE, TRUE, FALSE );
	f_ai_garbage_erase( sq_courtyard_center, r_distance, -1, -1, -1, FALSE, TRUE, FALSE );
	f_ai_garbage_erase( sq_courtyard_right, r_distance, -1, -1, -1, FALSE, TRUE, FALSE );
	f_ai_garbage_erase( sq_courtyard_left, r_distance, -1, -1, -1, FALSE, TRUE, FALSE );
	f_ai_garbage_erase( sq_courtyard_left_sniper, r_distance, -1, -1, -1, FALSE, TRUE, FALSE );
	f_ai_garbage_erase( sq_courtyard_ghost_1, r_distance, -1, -1, -1, FALSE, TRUE, FALSE );
	f_ai_garbage_erase( sq_courtyard_ghost_2, r_distance, -1, -1, -1, FALSE, TRUE, FALSE );
	
	
	sleep_until (
	volume_test_players (tv_hall_right_main) or
	volume_test_players (tv_hall_left_main) or
	volume_test_players (tv_court_right_safe_spawn)
	, 1);
	dprint ("attempting to clean up courtyard hall center");

	f_ai_garbage_erase( sq_court_hall_grunts, r_distance, -1, -1, -1, FALSE, TRUE, FALSE );
	f_ai_garbage_erase( sq_court_hall_elite, r_distance, -1, -1, -1, FALSE, TRUE, FALSE );
	f_ai_garbage_erase( sq_courtyard_end_g, r_distance, -1, -1, -1, FALSE, TRUE, FALSE );
	f_ai_garbage_erase( sq_courtyard_end_e, r_distance, -1, -1, -1, FALSE, TRUE, FALSE );
	

	sleep_until (
	volume_test_players (tv_hall_right_save) or
	volume_test_players (tv_hall_left_save)
	, 1);
	dprint ("attempting to clean up mid courtyard hall sides");

	f_ai_garbage_erase( sq_hall_left_1, r_distance, -1, -1, -1, FALSE, TRUE, FALSE );
	f_ai_garbage_erase( sq_hall_right_1, r_distance, -1, -1, -1, FALSE, TRUE, FALSE );
	f_ai_garbage_erase( sq_hall_left_ramp, r_distance, -1, -1, -1, FALSE, TRUE, FALSE );
	f_ai_garbage_erase( sq_hall_right_ramp, r_distance, -1, -1, -1, FALSE, TRUE, FALSE );
	f_ai_garbage_erase( sq_hall_left_main, r_distance, -1, -1, -1, FALSE, TRUE, FALSE );
	f_ai_garbage_erase( sq_hall_right_main, r_distance, -1, -1, -1, FALSE, TRUE, FALSE );
	f_ai_garbage_erase( sq_hall_middle_1, r_distance, -1, -1, -1, FALSE, TRUE, FALSE );
	f_ai_garbage_erase( sq_hall_middle_2, r_distance, -1, -1, -1, FALSE, TRUE, FALSE );
	f_ai_garbage_erase( sq_hall_jackal_left_1, r_distance, -1, -1, -1, FALSE, TRUE, FALSE );
	f_ai_garbage_erase( sq_hall_jackal_left_2, r_distance, -1, -1, -1, FALSE, TRUE, FALSE );
	f_ai_garbage_erase( sq_hall_jackal_right_1, r_distance, -1, -1, -1, FALSE, TRUE, FALSE );
	f_ai_garbage_erase( sq_hall_jackal_right_2, r_distance, -1, -1, -1, FALSE, TRUE, FALSE );	

		
end

//COURTYARD OBJCON
script dormant f_objcon_courtyard()
	sleep_until (volume_test_players (tv_objcon_cy_front), 1);
	dprint ("::: OBJCON CY FRONT :::");
	s_objcon_courtyard = 10;
	
	sleep_until (volume_test_players (tv_court_elite_break), 1);
	dprint ("::: OBJCON ELITE BREAKS :::");
	s_objcon_courtyard = 40;

end

//SPAWN END
script dormant f_courtyard_end()
	sleep_until (volume_test_players (tv_court_end), 1);
	dprint ("SPAWN END");
	ai_place (sg_courtyard_end);
	
end

//SPAWN COURTYARD HALL
script dormant f_spawn_court_hall()
	sleep_until (
	volume_test_players (tv_court_hall), 1);
	
	game_save_no_timeout();
	
	ai_place (sq_court_hall_elite);
	ai_place (sq_court_hall_grunts);
	
	wake (f_swort_elite_berserk);
	
end

//IF PLAYERS TAKE FAR RIGHT SNEAK ROUTE, ADJUST SPAWNS
script dormant f_court_flank_spawn_adjust()
	sleep_until (volume_test_players (tv_court_right_safe_spawn), 1);
	dprint ("player took flank route, adjusting encounters...");
	
	sleep_forever (f_spawn_court_hall_sides);
	sleep_forever (spawn_court_hall_right);
	sleep_forever (f_spawn_court_hall);
	sleep_forever (spawn_court_hall_right);
	sleep_forever (courtyard_phantom_arrives);

	ai_place (courtyard_phantom_01);
	ai_place (sq_hall_right_main);
	ai_place (sq_hall_jackal_right_1);
	ai_place (sq_hall_jackal_right_2);
		
	wake (spawn_court_hall_left);

end

//SPAWN COURTYARD HALL SIDES	
script dormant f_spawn_court_hall_sides()
	sleep_until (
	volume_test_players (tv_court_hall_back) or
	volume_test_players (tv_force_hall_spawn)
	, 1);
	
	ai_place (sg_hall_left_right);
	
	wake (spawn_court_hall_left);
	wake (spawn_court_hall_right);
	
end

//if player bypasses middle hall, kill its spawn
script dormant f_kill_center_hall_spawn()
	sleep_until (
		volume_test_players (tv_force_hall_spawn) or
		volume_test_players (tv_court_right_safe_spawn)
	, 1);
	sleep_forever (f_spawn_court_hall);

end


//ELITE GOES BERSERK
script dormant f_swort_elite_berserk()
	sleep_until (ai_living_count (sq_court_hall_grunts) <= 2);
	dprint ("BURZURK!");
	ai_berserk (sq_court_hall_elite, TRUE);

end

//FIRST PHANTOM DEPARTS
script command_script f_cy_phantom_start_01()
	cs_ignore_obstacles (TRUE);
	cs_vehicle_speed (0.2);

	sleep (30*2.5);

	cs_fly_to_and_face (ps_cy_phantom_start_01.p0, ps_cy_phantom_start_01.p1);
	
	cs_vehicle_speed (0.6);

	cs_fly_by (ps_cy_phantom_start_01.p1);

	object_set_scale( ai_vehicle_get( ai_current_actor ), 0.01, 300 );

	cs_fly_by (ps_cy_phantom_start_01.p2);

	object_destroy( ai_vehicle_get( ai_current_actor ) );

end


//SECOND PHANTOM DEPARTS
script command_script f_cy_phantom_start_02()
	cs_ignore_obstacles (TRUE);
	cs_vehicle_speed (0.8);

	sleep (30*12);

	cs_fly_to_and_face (ps_cy_phantom_01.p2, ps_cy_phantom_01.p1);

	cs_fly_by (ps_cy_phantom_01.p7);
	cs_fly_by (ps_cy_phantom_01.p5);
	cs_fly_by (ps_cy_phantom_01.p0);
	cs_fly_by (ps_cy_phantom_01.p8);

	object_set_scale( ai_vehicle_get( ai_current_actor ), 0.01, 300 );

	cs_fly_by (ps_cy_phantom_01.p9);

	object_destroy( ai_vehicle_get( ai_current_actor ) );

end


//SPAWN HALLS
script dormant spawn_court_hall_left()
	sleep_until (volume_test_players (tv_hall_left_main), 1);
	ai_place (sq_hall_left_main);
	
	sleep_until (volume_test_players (tv_hall_left_jackal), 1);
	ai_place (sq_hall_jackal_left_1);
	ai_place (sq_hall_jackal_left_2);
	
	sleep_until (volume_test_players (tv_hall_left_save), 1);
	game_save_no_timeout();

end

script dormant spawn_court_hall_right()
	sleep_until (volume_test_players (tv_hall_right_main), 1);
	ai_place (sq_hall_right_main);
	
	sleep_until (volume_test_players (tv_hall_right_jackal), 1);
	ai_place (sq_hall_jackal_right_1);
	ai_place (sq_hall_jackal_right_2);
	
	sleep_until (volume_test_players (tv_hall_right_save), 1);
	game_save_no_timeout();

end


//SPAWN COURTYARD PHANTOM
script dormant courtyard_phantom_arrives()
	sleep_until (volume_test_players (tv_courtyard_phantom), 1);
	ai_place (courtyard_phantom_01);

end

//COURTYARD PHANTOM FLIES IN
script command_script courtyard_phantom_01()
	dprint ("ENTER PHANTOM");

	object_set_scale( ai_vehicle_get( ai_current_actor ), 0.01, 0 );
	object_set_scale( ai_vehicle_get( ai_current_actor ), 1, 180 );
 
	cs_fly_by (ps_cy_phantom_01.p0);
	cs_fly_by (ps_cy_phantom_01.p1);
	cs_fly_by (ps_cy_phantom_01.p2);
	cs_fly_to (ps_cy_phantom_01.p3);
	cs_fly_to_and_face (ps_cy_phantom_01.p3, ps_cy_phantom_01.p4);
	
	dprint ("PHANTOM IS BLIND");
	ai_set_deaf (courtyard_phantom_01, TRUE);
	ai_set_blind (courtyard_phantom_01, TRUE);
	
	f_load_phantom( courtyard_phantom_01, "left", sq_last_stand_elites, none, none, none);
	f_load_phantom( courtyard_phantom_01, "chute", sq_last_stand_hunter_01, sq_last_stand_hunter_02, none, none);
	
	sleep (10);
	
	f_unload_phantom( courtyard_phantom_01, "left" );
	f_unload_phantom( courtyard_phantom_01, "chute" );
		
	unit_only_takes_damage_from_players_team (sq_last_stand_hunter_01.unit_01, TRUE);
	unit_only_takes_damage_from_players_team (sq_last_stand_hunter_02.unit_02, TRUE);

	sleep_until (volume_test_players (tv_courtyard_phantom_leaves)
	or ai_strength (courtyard_phantom_01) < 1, 1);
		dprint ("PHANTOM SEES YOU");
		
		ai_set_deaf (courtyard_phantom_01, FALSE);
		ai_set_blind (courtyard_phantom_01, FALSE);
		
		sleep (30*2);
		cs_fly_by (ps_cy_phantom_01.p5);
		cs_fly_by (ps_cy_phantom_01.p6);
		object_set_scale( ai_vehicle_get( ai_current_actor ), 0.01, 180 );
		
		sleep (30*1);
		object_destroy( ai_vehicle_get( ai_current_actor ) );

end


//SPAWN LAST STAND ENEMIES
script dormant last_stand_enemies()
	sleep_until (volume_test_players (tv_courtyard_phantom_leaves), 1);
	
	//place last stand squads and then kills them
	ai_place (sq_spawn_kill);
	ai_kill_silent (sq_spawn_kill);
	
	dprint ("SPAWN LAST STAND SENTINELS");
	ai_place (sq_last_stand_sentinels);
	ai_allegiance (player, forerunner);
	wake (last_stand_save);

end


//ONCE PLAYERS REACH THE TOP TIER, KILL THE ENEMY SPAWNERS ON BOTH SIDES SO THEY CAN'T GO BACK AROUND
script dormant kill_side_encounters()
	sleep_until (volume_test_players (tv_courtyard_phantom_leaves), 1);
	sleep_forever (spawn_court_hall_right);
	sleep_forever (spawn_court_hall_left);
	sleep_forever (f_spawn_court_hall);
	
end


//LAST STAND SAVE & STOP MUSIC
script dormant last_stand_save()
	sleep_until (volume_test_players (tv_last_stand_dialog), 1);
	wake (f_dialog_m20_last_stand);
		
	sleep_until (
		ai_living_count (sq_last_stand_elites) <= 0 and
		ai_living_count (sg_last_stand_hunters) <= 0
	);
	
	game_save_no_timeout();
	
	sleep (30*2);
	
	thread (f_mus_m20_e06_finish());
	
	sleep (30*1);
		
	f_blip_flag (flag_court_door_blip, "default");	
	wake (f_end_sentinel_warp);
	wake (m20_atrium_ent);
		
	dprint ("Terminus Door Unlocked");
	wake (terminus_airlock);
	
end

script dormant f_end_sentinel_warp()
	//sleep_until (ai_living_count (sq_last_stand_sentinels) < 5);
	ai_kill (sq_last_stand_sentinels.spawn_points_0);
	sleep (30);
	ai_kill (sq_last_stand_sentinels.spawn_points_1);
	sleep (30);
	ai_kill (sq_last_stand_sentinels.spawn_points_2);
	sleep (30);
	ai_kill (sq_last_stand_sentinels.spawn_points_3);
	sleep (30);
	ai_kill (sq_last_stand_sentinels.spawn_points_4);

end


//TERMINUS TRANSITION AIRLOCK
script dormant terminus_airlock()
	sleep_until (volume_test_players (tv_terminus_door_open), 1); 
	
	f_unblip_flag (flag_court_door_blip);
	
	atrium_door_01->open();
	atrium_door_01->auto_trigger_close( tv_atrium_airlock, FALSE, TRUE, TRUE );
	
	sleep_until( atrium_door_01->check_close(), 1 );
	dprint ("door has closed");
	
	//ERASE ALL PREVIOUS SQUADS
	ai_erase (sg_courtyard);
	ai_erase (sg_cy_front);
	ai_erase (sg_cy_center);
	ai_erase (sg_cy_right);
	ai_erase (sg_cy_left);
	ai_erase (sg_courtyard_end);
	ai_erase (sg_hall_left_right);
	ai_erase (sg_last_stand_sentinels);
	ai_erase (sg_last_stand_hunters);
	ai_erase (sg_last_stand_elites);	
	
	zone_set_trigger_volume_enable ("begin_zone_set:19_terminus:*", TRUE); 
	dprint ("TERMINUS AIRLOCK BEGIN ZONE");
	
	sleep (30*3);
	
	sleep_until (preparingToSwitchZoneSet() == FALSE, 1);

	zone_set_trigger_volume_enable ("zone_set:19_terminus:*", TRUE); 
	dprint ("TERMINUS AIRLOCK ZONE SWITCH");
		
	data_mine_set_mission_segment (m20_atrium);

	dprint ("waking terminus main");
	wake (f_terminus_main);
	
end

script dormant f_bcs_courtyard_exit_blip()
	sleep_until (ai_living_count (sg_cy_front) == 0 and
				 ai_living_count (sg_cy_center) == 0 and
				 ai_living_count (sg_cy_right) == 0 and
				 ai_living_count (sg_cy_left) == 0);

	f_blip_position_breadcrumbs(-17.39, 653.64, 6.45, "courtyard", "default");
	sleep_until (volume_test_players (tv_court_hall), 1);
	f_unblip_position_breadcrumbs("courtyard");
end

// =================================================================================================
// =================================================================================================
// TERMINUS
// =================================================================================================
// =================================================================================================

script dormant f_terminus_main()
	
	dprint ("::: terminus start :::");
	
	zone_set_trigger_volume_enable ("begin_zone_set:terminus_to_cin_m21:*", FALSE); 
	zone_set_trigger_volume_enable ("zone_set:terminus_to_cin_m21:*", FALSE); 
	
	wake (f_tower_elevator_start);
	wake (f_terminus_devices);
	wake (m20_atrium_waypoint);
	
	ai_place (sq_ambient_sentinels);
	ai_place (sq_curtain_sentinels);
	
	game_save_no_timeout();
	
	cui_hud_set_new_objective (objective_7);
	objectives_finish (3);
	objectives_show_up_to (4);	
	atrium_door_02->open();
	atrium_door_02->auto_trigger_close( tv_atrium_airlock_close, TRUE, TRUE, TRUE );
	
	sleep_until( atrium_door_02->check_close(), 1 );
	
	// Initiate loading of final cinematic resources
	if (not editor_mode()) then
		zone_set_trigger_volume_enable("begin_zone_set:terminus_to_cin_m21:*", TRUE);
		sleep_until(current_zone_set() == s_zoneset_terminus_to_cin_m21 and not PreparingToSwitchZoneSet(), 1);
	end
	
	zone_set_trigger_volume_enable("zone_set:terminus_to_cin_m21:*", TRUE);
end



//SPAWN AND MOVE AMBIENT SENTINELS
script command_script ambient_sentinel_1
	
	repeat
	
		cs_fly_to (ps_sentinel_flight_loops.p0);
		sleep (random_range (5, 45));
		cs_fly_to (ps_sentinel_flight_loops.p3);
		sleep (random_range (5, 45));
		cs_fly_to (ps_sentinel_flight_loops.p4);
		sleep (random_range (5, 45));
		cs_fly_to (ps_sentinel_flight_loops.p1);
		sleep (random_range (5, 45));
		cs_fly_to (ps_sentinel_flight_loops.p2);
		sleep (random_range (5, 45));
		cs_fly_to (ps_sentinel_flight_loops.p0);
		sleep (random_range (5, 45));
		cs_fly_to (ps_sentinel_flight_loops.p5);
	
	until (1 == 0);

end

script command_script ambient_sentinel_2
	repeat
		cs_fly_to (ps_sentinel_flight_loops2.p1);
		sleep (random_range (5, 45));
		cs_fly_to (ps_sentinel_flight_loops2.p3);
		sleep (random_range (5, 45));
		cs_fly_to (ps_sentinel_flight_loops2.p2);
		sleep (random_range (5, 45));
		cs_fly_to (ps_sentinel_flight_loops2.p7);
		sleep (random_range (5, 45));
		cs_fly_to (ps_sentinel_flight_loops2.p5);
		sleep (random_range (5, 45));
		cs_fly_to (ps_sentinel_flight_loops2.p10);
		sleep (random_range (5, 45));
		cs_fly_to (ps_sentinel_flight_loops2.p8);
	until (1 == 0);

end

script command_script ambient_sentinel_3
	repeat
		cs_fly_to (ps_sentinel_flight_loops3.p3);
		sleep (random_range (5, 45));
		cs_fly_to (ps_sentinel_flight_loops3.p0);
		sleep (random_range (5, 45));
		cs_fly_to (ps_sentinel_flight_loops3.p10);
		sleep (random_range (5, 45));
		cs_fly_to (ps_sentinel_flight_loops3.p7);
		sleep (random_range (5, 45));
		cs_fly_to (ps_sentinel_flight_loops3.p3);
		sleep (random_range (5, 45));
		cs_fly_to (ps_sentinel_flight_loops3.p8);
		sleep (random_range (5, 45));
		cs_fly_to (ps_sentinel_flight_loops3.p4);
	until (1 == 0);

end

script command_script ambient_sentinel_4
	repeat
		cs_fly_to (ps_sentinel_flight_loops4.p1);
		sleep (random_range (5, 45));
		cs_fly_to (ps_sentinel_flight_loops4.p3);
		sleep (random_range (5, 45));
		cs_fly_to (ps_sentinel_flight_loops4.p10);
		sleep (random_range (5, 45));
		cs_fly_to (ps_sentinel_flight_loops4.p4);
		sleep (random_range (5, 45));
		cs_fly_to (ps_sentinel_flight_loops4.p2);
		sleep (random_range (5, 45));
		cs_fly_to (ps_sentinel_flight_loops4.p8);
		sleep (random_range (5, 45));
		cs_fly_to (ps_sentinel_flight_loops4.p9);
	until (1 == 0);

end

script command_script ambient_sentinel_5
	repeat
		cs_fly_to (ps_sentinel_flight_loops5.p4);
		sleep (random_range (5, 45));
		cs_fly_to (ps_sentinel_flight_loops5.p6);
		sleep (random_range (5, 45));
		cs_fly_to (ps_sentinel_flight_loops5.p10);
		sleep (random_range (5, 45));
		cs_fly_to (ps_sentinel_flight_loops5.p4);
		sleep (random_range (5, 45));
		cs_fly_to (ps_sentinel_flight_loops5.p3);
		sleep (random_range (5, 45));
		cs_fly_to (ps_sentinel_flight_loops5.p1);
		sleep (random_range (5, 45));
		cs_fly_to (ps_sentinel_flight_loops5.p0);
	until (1 == 0);

end


script command_script ambient_sentinel_6
	sleep (30*2);
	cs_fly_by (ps_sentinel_flight_loops6.p0);
	cs_fly_by (ps_sentinel_flight_loops6.p1);
	cs_fly_by (ps_sentinel_flight_loops6.p2);
	
	repeat
		cs_fly_to (ps_sentinel_flight_loops6.p3);
		sleep (random_range (5, 45));
		cs_fly_to (ps_sentinel_flight_loops6.p4);
		sleep (random_range (5, 45));
		cs_fly_to (ps_sentinel_flight_loops6.p5);
		sleep (random_range (5, 45));
		cs_fly_to (ps_sentinel_flight_loops6.p2);
		sleep (random_range (5, 45));
	until (1 == 0);

end

script command_script ambient_sentinel_7
	sleep (30*3);
	cs_fly_by (ps_sentinel_flight_loops7.p0);
	cs_fly_by (ps_sentinel_flight_loops7.p1);
	cs_fly_by (ps_sentinel_flight_loops7.p2);
	
	repeat
		cs_fly_to (ps_sentinel_flight_loops7.p3);
		sleep (random_range (5, 45));
		cs_fly_to (ps_sentinel_flight_loops7.p5);
		sleep (random_range (5, 45));
		cs_fly_to (ps_sentinel_flight_loops7.p4);
		sleep (random_range (5, 45));
		cs_fly_to (ps_sentinel_flight_loops7.p2);
		sleep (random_range (5, 45));
	until (1 == 0);

end

script command_script ambient_sentinel_8
	sleep (15);
	cs_fly_by (ps_sentinel_flight_loops8.p0);
	cs_fly_by (ps_sentinel_flight_loops8.p1);
	cs_fly_by (ps_sentinel_flight_loops8.p2);
	
	repeat
		cs_fly_to (ps_sentinel_flight_loops8.p3);
		sleep (random_range (5, 45));
		cs_fly_to (ps_sentinel_flight_loops8.p5);
		sleep (random_range (5, 45));
		cs_fly_to (ps_sentinel_flight_loops8.p4);
		sleep (random_range (5, 45));
		cs_fly_to (ps_sentinel_flight_loops8.p2);
		sleep (random_range (5, 45));
	until (1 == 0);

end



//OPEN THE TERMINUS CURTAINS
script dormant f_terminus_devices()
	dprint (":: PRESENTING... TERMINUS! ::");
	
	sleep (30*1);
	
	//start curtains parting
	thread (term_curtain_01a());
	thread (term_curtain_01b());
	
	sleep (30*2);
	
	thread (term_curtain_02a());
	thread (term_curtain_02b());
	
	sleep (30*2);
	
	thread (term_curtain_03a());
	thread (term_curtain_03b());
	
	sleep (30*2);
	
	thread (term_curtain_04a());
	thread (term_curtain_04b());
	
	sleep (30*2);
	
	thread (term_curtain_05a());
	thread (term_curtain_05b());
		
end

script static void term_curtain_01a()
	term_curtain_01a->open();
	term_curtain_01a->auto_trigger_close( tv_tower_elevator, TRUE, TRUE, FALSE );

end

script static void term_curtain_01b()
	term_curtain_01b->open();
	term_curtain_01b->auto_trigger_close( tv_tower_elevator, TRUE, TRUE, FALSE );

end

script static void term_curtain_02a()
	term_curtain_02a->open();
	term_curtain_02a->auto_trigger_close( tv_tower_elevator, TRUE, TRUE, FALSE );

end

script static void term_curtain_02b()
	term_curtain_02b->open();
	term_curtain_02b->auto_trigger_close( tv_tower_elevator, TRUE, TRUE, FALSE );

end

script static void term_curtain_03a()
	term_curtain_03a->open();
	term_curtain_03a->auto_trigger_close( tv_tower_elevator, TRUE, TRUE, FALSE );

end

script static void term_curtain_03b()
	term_curtain_03b->open();
	term_curtain_03b->auto_trigger_close( tv_tower_elevator, TRUE, TRUE, FALSE );

end

script static void term_curtain_04a()
	term_curtain_04a->open();
	term_curtain_04a->auto_trigger_close( tv_tower_elevator, TRUE, TRUE, FALSE );

end

script static void term_curtain_04b()
	term_curtain_04b->open();
	term_curtain_04b->auto_trigger_close( tv_tower_elevator, TRUE, TRUE, FALSE );

end

script static void term_curtain_05a()
	term_curtain_05a->open();
	term_curtain_05a->auto_trigger_close( tv_tower_elevator, TRUE, TRUE, FALSE );

end

script static void term_curtain_05b()
	term_curtain_05b->open();
	term_curtain_05b->auto_trigger_close( tv_tower_elevator, TRUE, TRUE, FALSE );

end


//TOWER ELEVATOR
script dormant f_tower_elevator_start()
	sleep_until (volume_test_players (tv_obj_tower), 1);
	sleep (30*5);
		
	dm_terminus_lift->open();
	thread (f_tower_elevator_go());

	sleep_until (volume_test_players (tv_ending_cine), 1);
	dprint ("ENTERING ENDING CINEMATIC");
	//fade_out (0, 0, 0, 120);
	wake (cutscene_m21_tower);

end


script static void f_tower_elevator_go()
	sleep_until (volume_test_players_all (tv_tower_elevator), 1);
	sleep (30*2);
	
	dm_terminus_lift->auto_trigger_close( tv_tower_elevator, FALSE, TRUE, TRUE );
	dprint ("::: going up :::");

end


// =================================================================================================
// =================================================================================================
// DEBUG
// =================================================================================================
// =================================================================================================

script static void dprint (string s)
	if b_debug then
		print (s);
	end

end

script dormant f_obj_bridge_banshee()
	sleep_until (volume_test_players (tv_objcon_banshee_1), 1);
	dprint ("::: Banshee Follow 1 :::");
	s_objcon_bridge_banshee = 1;
	
	sleep_until (volume_test_players (tv_objcon_banshee_2), 1);
	dprint ("::: Banshee Follow 2 :::");
	s_objcon_bridge_banshee = 2;

end




// =================================================================================================
// =================================================================================================
// OBJECTIVES
// =================================================================================================
// =================================================================================================

//OBJECTIVE DISPLAY
script dormant f_objectives_controller()
	objectives_set_string (0, objective_1); 
	objectives_set_string (1, objective_2); 
	//objectives_set_string (2, objective_3);
	//objectives_set_string (2, objective_4);
	//objectives_set_string (2, objective_5);
	objectives_set_string (2, objective_5);
	objectives_set_string (3, objective_6);
	objectives_set_string (4, objective_7);
	print ("Objectives Controller Go");

end

// --- End m020_mission.hsc ---

// --- Begin m020_mission_guardpost.hsc ---
; =================================================================================================
; =================================================================================================
; *** GLOBALS ***
; =================================================================================================
; =================================================================================================

; objective control
global short s_objcon_gpi_center = 0;

global boolean b_player_lost_check = FALSE;
global boolean b_player_activated_core_right = FALSE;
global boolean b_player_activated_core_left = FALSE;
global boolean b_terminal_button_pressed = FALSE;
global boolean b_core_check_1 = FALSE;
global boolean b_core_check_2 = FALSE;
global boolean b_bridge_button_hit = FALSE;	// not really needed
global boolean b_first_core_complete = FALSE;
global boolean b_activated_bridge_switch_didact = FALSE;
global boolean b_activated_bridge_switch_librarian = FALSE;

global unit g_ics_player													= NONE;
global unit g_ics_player1													= NONE;
global unit g_ics_player2													= NONE;
global unit g_ics_player3													= NONE;
global unit g_ics_player4													= NONE;

; =================================================================================================
; =================================================================================================
; *** GUARDPOST INTERIOR ***
; =================================================================================================
; =================================================================================================

//WAKE BEGINNING
script dormant f_gp_int_main()
	//OPENS DOOR INTO CATHEDRAL INTERIOR
	wake (f_gp_int_start);
	wake (f_open_gpi_door);

end

//OPEN INNER CATHEDRAL AIRLOCK DOOR
script dormant f_open_gpi_door()
	dprint ("OPENING AIRLOCK DOOR");
	sleep (30*1);
	dm_gpi_airlock_door_02->open();
	dm_gpi_airlock_door_02->auto_trigger_close( tv_back_area, TRUE, TRUE, TRUE );

end


//WAKE CATHEDRAL INTERIOR
script dormant f_gp_int_start()
	dprint (":: BEGIN CATHEDRAL INTERIOR ::");
	
//TURN OFF BOTH CORE BUTTONS AT BEGINNING
	device_set_power (m20_didact_terminal, 0);
	device_set_power (m20_librarian_terminal, 0);
	//device_set_power (map_button_01, 0);
	device_set_power (bridge_switch_didact, 0);
	device_set_power (bridge_switch_librarian, 0);
	dprint ("DISABLED ALL BUTTONS");

	ai_place (sg_gpi_first_sentinels);
		
	ai_allegiance (player, forerunner);
	
	wake (f_ci_door_right_upper_01);
	wake (f_ci_door_right_upper_02);
	wake (f_ci_door_right_lower_01a);
	wake (f_ci_door_right_lower_01b);
	wake (f_ci_door_left_upper_01);
	wake (f_ci_door_left_lower_01a);
	wake (f_ci_door_left_lower_01b);
			
	wake (f_first_sentinels_travel);
	wake (f_sentinels_warp_01);
	wake (f_gpi_first_dead);
	wake (f_gpi_terminal_button_01);
	wake (living_count_terminal_blip);
	wake (f_gpi_mushroom_platforms);
	wake (f_gpi_hex_cover_rise);
	wake (f_amb_rings_spin);
	wake (f_fx_setup_core_beams); // Sets up the core beam effects
	wake (f_post_one_core_activated);

	data_mine_set_mission_segment (m20_guardpost_int);

	//OBJCON FOR FIRST SENTINELS DROPPING IN
	sleep_until (volume_test_players (tv_first_sentinels), 1);
	dprint (":: OBJCON 5 ::");
	s_objcon_gpi_center = 5;
	
	sleep (30*1);
		
	wake (f_dialog_m20_sentinel_intro);
	
	//OBJCON FOR FIRST SENTINELS LEAVING MAIN TERMINAL
	sleep_until (volume_test_players (tv_sentinels_leave_main_terminal), 1);
	dprint (":: OBJCON 8 ::");
	s_objcon_gpi_center = 8;

end	


// ==========================================
// ALL MONSTER CLOSET DOORS
// ==========================================
script dormant f_ci_door_right_upper_01()
	repeat
		sleep_until (
		object_valid(dm_door_right_upper_01) and object_active_for_script(dm_door_right_upper_01) and
		list_count_not_dead (volume_return_objects_by_type (tv_right_door_upper_01, s_objtype_biped)) > 0
		,1);
		dm_door_right_upper_01->open();
		dprint ("door opening");
		
		sleep_until (
		list_count_not_dead(volume_return_objects_by_type(tv_right_door_upper_01, s_objtype_biped)) <= 0
		,1);
		
		sleep (30);
				
		dm_door_right_upper_01->close();
		dprint ("door closing");
	
	until (1 == 0);

end

script dormant f_ci_door_right_upper_02()
	repeat
		sleep_until (
		object_valid(dm_door_right_upper_02) and object_active_for_script(dm_door_right_upper_02) and
		list_count_not_dead (volume_return_objects_by_type (tv_right_door_upper_02, s_objtype_biped)) > 0
		,1);
		dm_door_right_upper_02->open();
		dprint ("door opening");
		
		sleep_until (
		list_count_not_dead(volume_return_objects_by_type(tv_right_door_upper_02, s_objtype_biped)) <= 0
		,1);
		
		sleep (30);
				
		dm_door_right_upper_02->close();
		dprint ("door closing");

	until (1 == 0);

end

script dormant f_ci_door_right_lower_01a()
	repeat
		sleep_until (
		object_valid(dm_door_right_lower_01a) and object_active_for_script(dm_door_right_lower_01a) and
		list_count_not_dead (volume_return_objects_by_type (tv_right_door_lower_01, s_objtype_biped)) > 0
		,1);
		dm_door_right_lower_01a->open();
		dprint ("door opening");
		
		sleep_until (
		list_count_not_dead(volume_return_objects_by_type(tv_right_door_lower_01, s_objtype_biped)) <= 0
		,1);
		
		sleep (30);
				
		dm_door_right_lower_01a->close();
		dprint ("door closing");
		
	until (1 == 0);

end

script dormant f_ci_door_right_lower_01b()
	repeat
		sleep_until (
		object_valid(dm_door_right_lower_01b) and object_active_for_script(dm_door_right_lower_01b) and
		list_count_not_dead (volume_return_objects_by_type (tv_right_door_lower_01, s_objtype_biped)) > 0
		,1);
		dm_door_right_lower_01b->open();
		dprint ("door opening");
		
		sleep_until (
		list_count_not_dead(volume_return_objects_by_type(tv_right_door_lower_01, s_objtype_biped)) <= 0
		,1);
		
		sleep (30);
				
		dm_door_right_lower_01b->close();
		dprint ("door closing");

	until (1 == 0);

end

script dormant f_ci_door_left_upper_01()
	repeat
		sleep_until (
		object_valid(dm_door_left_upper_01) and object_active_for_script(dm_door_left_upper_01) and
		list_count_not_dead (volume_return_objects_by_type (tv_left_door_upper_01, s_objtype_biped)) > 0
		,1);
		dm_door_left_upper_01->open();
		dprint ("door opening");
		
		sleep_until (
		list_count_not_dead(volume_return_objects_by_type(tv_left_door_upper_01, s_objtype_biped)) <= 0
		,1);
		
		sleep (30);
				
		dm_door_left_upper_01->close();
		dprint ("door closing");

	until (1 == 0);

end

script dormant f_ci_door_left_lower_01a()
	repeat
		sleep_until (
		object_valid(dm_door_left_lower_01a) and object_active_for_script(dm_door_left_lower_01a) and
		list_count_not_dead (volume_return_objects_by_type (tv_left_door_lower_01, s_objtype_biped)) > 0
		,1);
		dm_door_left_lower_01a->open();
		dprint ("door opening");
		
		sleep_until (
		list_count_not_dead(volume_return_objects_by_type(tv_left_door_lower_01, s_objtype_biped)) <= 0
		,1);
		
		sleep (30);
		
		dm_door_left_lower_01a->close();
		dprint ("door closing");
		
	until (1 == 0);

end

script dormant f_ci_door_left_lower_01b()
	repeat
		sleep_until (
		object_valid(dm_door_left_lower_01b) and object_active_for_script(dm_door_left_lower_01b) and
		list_count_not_dead (volume_return_objects_by_type (tv_left_door_lower_01, s_objtype_biped)) > 0
		,1);
		dm_door_left_lower_01b->open();
		dprint ("door opening");
		
		sleep_until (
		list_count_not_dead(volume_return_objects_by_type(tv_left_door_lower_01, s_objtype_biped)) <= 0
		,1);
		
		sleep (30);
		
		dm_door_left_lower_01b->close();
		dprint ("door closing");
		
	until (1 == 0);

end
// ==========================================


//DEAD COVENANT EVERYWHERE
script dormant f_gpi_first_dead()
	ai_place (sg_gpi_first_dead);
	sleep (30);
	ai_kill_silent (sg_gpi_first_dead);

end

//rotate ambient spinning rings under main terminal glass
script dormant f_amb_rings_spin()
	repeat
		object_rotate_by_offset (cathedral_terminal_spinner, 15, 0, 0, 360, 0, 0);
		object_rotate_by_offset (cathedral_terminal_spinner, 15, 0, 0, 360, 0, 0);
		object_rotate_by_offset (cathedral_terminal_spinner, 15, 0, 0, 360, 0, 0);
		object_rotate_by_offset (cathedral_terminal_spinner, 15, 0, 0, 360, 0, 0);
		object_rotate_by_offset (cathedral_terminal_spinner, 15, 0, 0, 360, 0, 0);
		object_rotate_by_offset (cathedral_terminal_spinner, 15, 0, 0, 360, 0, 0);
		object_rotate_by_offset (cathedral_terminal_spinner, 15, 0, 0, 360, 0, 0);
		object_rotate_by_offset (cathedral_terminal_spinner, 15, 0, 0, 360, 0, 0);
		object_rotate_by_offset (cathedral_terminal_spinner, 15, 0, 0, 360, 0, 0);
		object_rotate_by_offset (cathedral_terminal_spinner, 15, 0, 0, 360, 0, 0);
	until (1 == 0);

end


script dormant f_first_sentinels_travel()
	sleep_until (volume_test_players (tv_first_sentinels), 1);
	sleep (30*3);
	thread (first_sentinel_moves_01());
	thread (first_sentinel_moves_02());
	thread (first_sentinel_moves_03());
	thread (first_sentinel_moves_04());
	thread (first_sentinel_moves_05());
	
end

script static void first_sentinel_moves_01()
	cs_fly_by (sq_gpi_first_sentinels_01.spawn_points_0, TRUE, ps_first_sentinel_01.p0);
	cs_fly_by (sq_gpi_first_sentinels_01.spawn_points_0, TRUE, ps_first_sentinel_01.p1);

end

script static void first_sentinel_moves_02()
	cs_fly_by (sq_gpi_first_sentinels_01.spawn_points_1, TRUE, ps_first_sentinel_02.p0);
	cs_fly_by (sq_gpi_first_sentinels_01.spawn_points_1, TRUE, ps_first_sentinel_02.p1);

end

script static void first_sentinel_moves_03()
	sleep (30*1);
	cs_fly_by (sq_gpi_first_sentinels_01.spawn_points_2, TRUE, ps_first_sentinel_03.p0);
	cs_fly_by (sq_gpi_first_sentinels_01.spawn_points_2, TRUE, ps_first_sentinel_03.p1);

end

script static void first_sentinel_moves_04()
	cs_fly_by (sq_gpi_first_sentinels_01.spawn_points_3, TRUE, ps_first_sentinel_04.p0);
	cs_fly_by (sq_gpi_first_sentinels_01.spawn_points_3, TRUE, ps_first_sentinel_04.p1);

end

script static void first_sentinel_moves_05()
	sleep (30*1);
	cs_fly_by (sq_gpi_first_sentinels_01.spawn_points_4, TRUE, ps_first_sentinel_05.p0);
	cs_fly_by (sq_gpi_first_sentinels_01.spawn_points_4, TRUE, ps_first_sentinel_05.p1);

end



//if one sentinel is killed, warp out the rest in a cascade
script dormant f_sentinels_warp_01()
	sleep_until (ai_living_count (sq_gpi_first_sentinels_01) < 5);
	sleep (30);
	ai_kill (sq_gpi_first_sentinels_01.spawn_points_0);
	sleep (30);
	ai_kill (sq_gpi_first_sentinels_01.spawn_points_1);
	sleep (30);
	ai_kill (sq_gpi_first_sentinels_01.spawn_points_2);
	sleep (30);
	ai_kill (sq_gpi_first_sentinels_01.spawn_points_3);
	sleep (30);
	ai_kill (sq_gpi_first_sentinels_01.spawn_points_4);

end

script dormant f_sentinels_warp_left()
	sleep_until (ai_living_count (sq_sentinel_core_left_01) < 3);
	sleep (30);
	ai_kill (sq_gpi_first_sentinels_01.spawn_points_0);
	sleep (30);
	ai_kill (sq_gpi_first_sentinels_01.spawn_points_1);
	sleep (30);
	ai_kill (sq_gpi_first_sentinels_01.spawn_points_2);

end

script dormant f_sentinels_warp_right()
	sleep_until (ai_living_count (sq_sentinel_core_right_01) < 3);
	sleep (30);
	ai_kill (sq_gpi_first_sentinels_01.spawn_points_0);
	sleep (30);
	ai_kill (sq_gpi_first_sentinels_01.spawn_points_1);
	sleep (30);
	ai_kill (sq_gpi_first_sentinels_01.spawn_points_2);

end


// ===============================================================================
// HEX COVER ANIMATION

//SET HEX COVER TO RISE
script dormant f_gpi_hex_cover_rise()
	sleep_until (volume_test_players (tv_gpi_devmach_begin), 1);
	
	sleep (30*1);
	
	dprint ("HEX COVER RISE");
	cat_hex_l_01->animate();
	cat_hex_r_02->animate();
	sleep (60);
	cat_hex_l_03->animate();
	sleep (60);
	cat_hex_r_03->animate();
	sleep (60);
	cat_hex_r_01->animate();
	sleep (60);
	cat_hex_l_02->animate();

end


//MUSHROOM PLATFORMS RISE
script dormant f_gpi_mushroom_platforms()
	sleep_until (volume_test_players (tv_gpi_devmach_begin), 1);
	dprint ("MUSHROOMS RISE");
	cat_rise_plat_01->animate();
	sleep (30);
	cat_rise_plat_03->animate();
	sleep (30);
	cat_rise_plat_02->animate();
	sleep (30);
	cat_rise_plat_04->animate();

end


//SET HEX COVER TO RISE
script dormant f_gpi_hex_cover_fall()
	dprint ("hex cover falling");
	sleep (30);
	thread (f_hex_fall_01());
	sleep (30);
	thread (f_hex_fall_02());
	sleep (30);
	thread (f_hex_fall_03());
	sleep (30);
	thread (f_hex_fall_04());
	sleep (30);
	thread (f_hex_fall_05());
	sleep (30);
	thread (f_hex_fall_06());
		
end
	
script static void f_hex_fall_01()
	cat_hex_l_01->de_animate();
end

script static void f_hex_fall_02()
	cat_hex_r_02->de_animate();
end

script static void f_hex_fall_03()
	cat_hex_l_03->de_animate();
end

script static void f_hex_fall_04()
	cat_hex_r_03->de_animate();
end

script static void f_hex_fall_05()
	cat_hex_r_01->de_animate();
end

script static void f_hex_fall_06()
	cat_hex_l_02->de_animate();
end

//RIGHT CORE HEX RISES
script dormant f_gpi_hex_cover_right()
	cat_hex_r_01->animate();
	sleep (30*1);
	cat_hex_l_02->animate();
	sleep (30*2);
	cat_hex_r_03->animate();

end

//LEFT CORE HEX RISES
script dormant f_gpi_hex_cover_left()
	cat_hex_l_01->animate();
	sleep (30*2);
	cat_hex_r_02->animate();
	sleep (30*1);
	cat_hex_l_03->animate();

end

// END OF HEX COVER ANIMATION
//=================================================


//BLIPS MAIN TERMINAL
script dormant living_count_terminal_blip()
	dprint ("waiting for player to reach terminal");
	
	//CORTANA CALLS OUT AND BLIPS MAIN TERMINAL
	sleep_until (volume_test_players (tv_gpi_objcon_30), 1);
	dprint ("CALLING OUT MAIN TERMINAL");
	
	sleep (30*2);
	
	f_blip_object (map_button_01, "activate");
	
	//WAKES CORTANA TELLING CHIEF ABOUT THE TERMINAL (in narrative script)
	sleep_until (volume_test_players (tv_front_pad), 1);
	dprint ("player has reached terminal");
	
	//wake (f_dialog_m20_cathedral_map_open);

end


// ===============================================================================
// ACTIVATE MAIN TERMINAL
// ===============================================================================
script dormant f_gpi_terminal_button_01()
	sleep_until (object_valid (map_button_01), 1);
	sleep_until (device_get_position (map_button_01) > 0.0, 1);
	device_set_power (map_button_01, 0);
	device_set_position( map_button_01, 0.0);
	f_unblip_object (map_button_01);
	
	dprint ("MAIN TERMINAL ACTIVATED");
	
	
	//PLAYER LOD
	streamer_pin_tag("objects\characters\storm_masterchief\storm_masterchief.biped", 0);
	
//WAKE NARRATIVE DIALOG SCRIPT
	wake (f_map_button_dialog);
	
//ENABLE CORE BRIDGE BUTTONS
	wake (f_gpi_bridge_button_didact);
	wake (f_gpi_bridge_button_librarian);
	dprint ("BRIDGE BUTTON UI ACTIVE");
	
//WAKE BOTH SENTINEL PRE-CORE SENTINELS
	wake (sentinel_core_right);
	wake (sentinel_core_left);
	
//WAKE ALL POST-CORE ENCOUNTER POSSIBILITIES
	wake (f_post_core_encounter_right);
	wake (f_post_core_encounter_left);
	wake (f_post_core_encounter_both);
		
	b_terminal_button_pressed = TRUE;
	
	sleep (30*8);
	
	ai_kill (sg_gpi_first_sentinels);
	
end


//THIS GETS WOKEN BY NARRATIVE SCRIPT
script dormant m20_blip_terminal_locations()
	f_blip_flag (flag_left_core, "activate");
	f_blip_flag (flag_right_core, "activate");
	
	//STOP LOD
	streamer_unpin_tag("objects\characters\storm_masterchief\storm_masterchief.biped", 0);
	
	//ACTIVATE CORES
	wake (f_gp_int_core_01);
	wake (f_gp_int_core_02);
	
end


script dormant m20_blip_core_right()
	dprint ("starting right core blip timer");
	sleep (30*12);
	dprint ("right core blipped and active");
	f_blip_flag (flag_right_core, "activate");
	wake (f_gp_int_core_01);
	
end

script dormant m20_blip_core_left()
	dprint ("starting left core blip timer");
	sleep (30*12);
	dprint ("left core blipped and active");
	f_blip_flag (flag_left_core, "activate");
	wake (f_gp_int_core_02);
	
end


//SENTINEL FIRST ENCOUNTER CORE RIGHT (didact)
script dormant sentinel_core_right()
	sleep_until (volume_test_players (tv_sentinel_core_right), 1);
	ai_place (sq_sentinel_core_right_01);
	wake (f_sentinels_warp_right);

//shut off other side spawner
	sleep_forever (sentinel_core_left);
		
end


//RIGHT SIDE SENTINELS MOVE
script command_script sv_entinel_core_right_01()
	object_set_scale (sq_sentinel_core_right_01.spawn_points_0, 0.01, 0);
	object_set_scale (sq_sentinel_core_right_01.spawn_points_0, 1, 60);
	
	cs_fly_by (sentinel_core_right_01.p0);
	cs_fly_by (sentinel_core_right_01.p1);
	cs_fly_by (sentinel_core_right_01.p2);
	cs_fly_by (sentinel_core_right_01.p6);
	cs_fly_by (sentinel_core_right_01.p3);
	cs_fly_by (sentinel_core_right_01.p4);
	cs_fly_by (sentinel_core_right_01.p5);
	
	object_set_scale (sq_sentinel_core_right_01.spawn_points_0, 0.01, 60);
	ai_kill (sq_sentinel_core_right_01.spawn_points_0);	

end

script command_script sv_entinel_core_right_02()
	object_set_scale (sq_sentinel_core_right_01.spawn_points_1, 0.01, 0);
	object_set_scale (sq_sentinel_core_right_01.spawn_points_1, 1, 60);
	
	cs_fly_by (sentinel_core_right_02.p0);
	cs_fly_by (sentinel_core_right_02.p1);
	cs_fly_by (sentinel_core_right_02.p2);
	cs_fly_by (sentinel_core_right_02.p6);
	cs_fly_by (sentinel_core_right_02.p3);
	cs_fly_by (sentinel_core_right_02.p4);
	cs_fly_by (sentinel_core_right_02.p5);
	
	object_set_scale (sq_sentinel_core_right_01.spawn_points_1, 0.01, 60);
	ai_kill (sq_sentinel_core_right_01.spawn_points_1);	

end

script command_script sv_entinel_core_right_03()
	object_set_scale (sq_sentinel_core_right_01.spawn_points_2, 0.01, 0);
	object_set_scale (sq_sentinel_core_right_01.spawn_points_2, 1, 60);
	
	cs_fly_by (sentinel_core_right_03.p0);
	cs_fly_by (sentinel_core_right_03.p1);
	cs_fly_by (sentinel_core_right_03.p2);
	cs_fly_by (sentinel_core_right_03.p6);
	cs_fly_by (sentinel_core_right_03.p3);
	cs_fly_by (sentinel_core_right_03.p4);
	cs_fly_by (sentinel_core_right_03.p5);
	
	object_set_scale (sq_sentinel_core_right_01.spawn_points_2, 0.01, 60);
	ai_kill (sq_sentinel_core_right_01.spawn_points_2);	

end


//LEFT SIDE SENTINELS MOVE
script command_script sv_entinel_core_left_01()
	object_set_scale (sq_sentinel_core_left_01.spawn_points_0, 0.01, 0);
	object_set_scale (sq_sentinel_core_left_01.spawn_points_0, 1, 60);
	
	cs_fly_by (sentinel_core_right_01.p4);
	cs_fly_by (sentinel_core_right_01.p3);
	cs_fly_by (sentinel_core_right_01.p6);
	cs_fly_by (sentinel_core_right_01.p2);
	cs_fly_by (sentinel_core_right_01.p1);
	cs_fly_by (sentinel_core_right_01.p0);
	cs_fly_by (sentinel_core_right_01.p7);
	
	object_set_scale (sq_sentinel_core_left_01.spawn_points_0, 0.01, 60);
	ai_kill (sq_sentinel_core_left_01.spawn_points_0);	

end

script command_script sv_entinel_core_left_02()
	object_set_scale (sq_sentinel_core_left_01.spawn_points_1, 0.01, 0);
	object_set_scale (sq_sentinel_core_left_01.spawn_points_1, 1, 60);
	
	cs_fly_by (sentinel_core_right_02.p4);
	cs_fly_by (sentinel_core_right_02.p3);
	cs_fly_by (sentinel_core_right_02.p6);
	cs_fly_by (sentinel_core_right_02.p2);
	cs_fly_by (sentinel_core_right_02.p1);
	cs_fly_by (sentinel_core_right_02.p0);
	cs_fly_by (sentinel_core_right_02.p7);
	
	object_set_scale (sq_sentinel_core_left_01.spawn_points_1, 0.01, 60);
	ai_kill (sq_sentinel_core_left_01.spawn_points_1);	

end

script command_script sv_entinel_core_left_03()
	object_set_scale (sq_sentinel_core_left_01.spawn_points_2, 0.01, 0);
	object_set_scale (sq_sentinel_core_left_01.spawn_points_2, 1, 60);
	
	cs_fly_by (sentinel_core_right_03.p4);
	cs_fly_by (sentinel_core_right_03.p3);
	cs_fly_by (sentinel_core_right_03.p6);
	cs_fly_by (sentinel_core_right_03.p2);
	cs_fly_by (sentinel_core_right_03.p1);
	cs_fly_by (sentinel_core_right_03.p0);
	cs_fly_by (sentinel_core_right_03.p7);
	
	object_set_scale (sq_sentinel_core_left_01.spawn_points_2, 0.01, 60);
	ai_kill (sq_sentinel_core_left_01.spawn_points_2);	

end



//SENTINEL FIRST ENCOUNTER CORE LEFT (librarian)
script dormant sentinel_core_left()
	sleep_until (volume_test_players (tv_sentinel_core_left), 1);
	ai_place (sq_sentinel_core_left_01);
	wake (f_sentinels_warp_left);

//shut off other side spawner
	sleep_forever (sentinel_core_right);

end


// ===============================================================================
// ACTIVATE CORE BRIDGE SWITCHES
// ===============================================================================

//ACTIVATE DIDACT BRIDGE
script dormant f_gpi_bridge_button_didact()
	device_set_power (bridge_switch_didact, 1);
	dprint ("didact bridge ready");
	
//activate lightbridge
	sleep_until (device_get_position (bridge_switch_didact) > 0.0, 1);
	device_set_power (bridge_switch_didact, 0);
	b_activated_bridge_switch_didact = TRUE;
	
	pup_play_show ("pup_bridge_switch_didact");
	
	sleep (30*2);
	
	object_dissolve_from_marker (bridge_switch_didact, phase_out, button_marker);
	object_create (bridge_didact);
		
	sleep(10);
	object_destroy(bridge_switch_didact);
	object_destroy(bridge_switch_didact_fake);
end


//ACTIVATE LIBRARIAN BRIDGE
script dormant f_gpi_bridge_button_librarian()
	device_set_power (bridge_switch_librarian, 1);
	dprint ("librarian bridge ready");
	
//activate lightbridge
	sleep_until (device_get_position (bridge_switch_librarian) > 0.0, 1);
	device_set_power (bridge_switch_librarian, 0);	
	b_activated_bridge_switch_librarian = TRUE;
	
	pup_play_show ("pup_bridge_switch_librarian");
	
	sleep (30*2);

	object_dissolve_from_marker (bridge_switch_librarian, phase_out, button_marker);
	object_create (bridge_librarian);

	sleep(10);
	object_destroy(bridge_switch_librarian);
	object_destroy(bridge_switch_librarian_fake);
end


script static void kill_didact_button()
	sleep(10);
	object_destroy (bridge_switch_didact);
	object_destroy (bridge_switch_didact_fake);
end


// ===============================================================================
// ACTIVATE RIGHT CORE (DIDACT)
// ===============================================================================
script dormant f_gp_int_core_01()
	device_set_power (m20_didact_terminal, 1);

	sleep_until (device_get_position (m20_didact_terminal) > 0.0, 1);
	b_player_activated_core_right = TRUE;
	device_set_power (m20_didact_terminal, 0);
	sleep_forever (m20_blip_core_right);
	
	//disable bridge button
	if device_get_power (bridge_switch_didact) == 1 then
		dprint ("bridge power was on, shutting off...");
		sleep_forever (f_gpi_bridge_button_didact);
		device_set_power (bridge_switch_didact, 0);
		object_dissolve_from_marker (bridge_switch_didact, phase_out, button_marker);
		dprint ("completed bridge button dissolve");
	else
		dprint ("bridge power was off, ignoring...");
	end
		
	f_unblip_flag (flag_right_core);
			
	pup_play_show ("pup_m20_didact_terminal");
	
	//core platform moves down
	thread (f_didact_lift_anim());
		
	sleep (30*2);
	
	object_dissolve_from_marker (m20_didact_terminal, phase_out, button_marker);
	thread(kill_didact_button());
	
	f_fx_activate_core_beam_left(); // This is named "left" because the bsp structure is called "left"
	
	if (b_core_check_1 == TRUE) and (b_core_check_2 == FALSE) then
				b_core_check_2 = TRUE;
				wake(f_Cathedral_Didact_terminal);
	elseif (b_core_check_1 == FALSE) and (b_core_check_2 == FALSE) then
	      b_core_check_1 = TRUE;
	      wake(f_Cathedral_Librarian_terminal);
	end
	
	dprint ("activated didact core");
	
	if volume_test_objects (tv_damage_players_01, player0) then
	damage_objects (player0, "body", 80); 
	end
	
	if volume_test_objects (tv_damage_players_01, player1) then
	damage_objects (player1, "body", 80); 
	end
	
	if volume_test_objects (tv_damage_players_01, player2) then
	damage_objects (player2, "body", 80); 
	end
	
	if volume_test_objects (tv_damage_players_01, player3) then
	damage_objects (player3, "body", 80); 
	end
			
	garbage_collect_now();
	
end

//play didact elevator sound
script static void f_didact_lift_anim()
	sleep_s (1.5);
	
	device_set_position_track( dm_core_lift_didact, 'any:idle', 0 );
	device_animate_position( dm_core_lift_didact, 1.0, 18.0, 0.0, 0.0, FALSE );
	
	sound_impulse_start ( 'sound\environments\solo\m020\amb_m20_machines\amb_m20_machine_elevator_start', dm_core_lift_didact, 1 ); //AUDIO!
	sound_looping_start ( 'sound\environments\solo\m020\amb_m20_machines\ambience\amb_m20_machine_elevator_loop', dm_core_lift_didact, 1 ); //AUDIO!
	
	sleep_until (device_get_position (dm_core_lift_didact) == 1, 1);
	
	sound_impulse_start ( 'sound\environments\solo\m020\amb_m20_machines\amb_m20_machine_elevator_end', didact_core_elevator, 1 ); //AUDIO!
	sound_looping_stop ( 'sound\environments\solo\m020\amb_m20_machines\ambience\amb_m20_machine_elevator_loop' ); //AUDIO!
	
	sleep (30);

	object_create (bridge_didact_lower);

	game_save_no_timeout();

	sleep (30);
	object_destroy (bridge_didact);
	dprint ("completed didact core");
	
	sleep (30*3);
	wake (f_gpi_hex_cover_right);
	
end

script static void kill_librarian_button()
	sleep(10);
	object_destroy (bridge_switch_librarian);
	object_destroy (bridge_switch_librarian_fake);
end


// ===============================================================================
// ACTIVATE LEFT CORE (LIBRARIAN)
// ===============================================================================
script dormant f_gp_int_core_02()
	device_set_power (m20_librarian_terminal, 1);

	sleep_until (device_get_position (m20_librarian_terminal) > 0.0, 1);
	b_player_activated_core_left = TRUE;
	device_set_power (m20_librarian_terminal, 0);
	sleep_forever (m20_blip_core_left);
		
	//disable bridge button
	if device_get_power (bridge_switch_librarian) == 1 then
		dprint ("bridge power was on, shutting off...");
		sleep_forever (f_gpi_bridge_button_librarian);
		device_set_power (bridge_switch_librarian, 0);
		object_dissolve_from_marker (bridge_switch_librarian, phase_out, button_marker);
		dprint ("completed bridge button dissolve");
	else
		dprint ("bridge power was off, ignoring...");
	end
		
	f_unblip_flag (flag_left_core);

	pup_play_show ("pup_m20_librarian_terminal");

	//core platform moves down
	thread (f_librarian_lift_anim());
		
	sleep (30*2);
		
	object_dissolve_from_marker (m20_librarian_terminal, phase_out, button_marker);
	thread(kill_librarian_button());
		
	f_fx_activate_core_beam_right(); // This is named "right" because the bsp structure is called "right"
	
	if (b_core_check_1 == TRUE) and (b_core_check_2 == FALSE) then
				b_core_check_2 = TRUE;
				wake(f_Cathedral_Didact_terminal);
	elseif (b_core_check_1 == FALSE) and (b_core_check_2 == FALSE) then
	      b_core_check_1 = TRUE;
	      wake(f_Cathedral_Librarian_terminal);
	end
		
	dprint ("activated librarian core");
	
	if volume_test_objects (tv_damage_players_02, player0) then
	damage_objects (player0, "body", 80); 
	end
	
	if volume_test_objects (tv_damage_players_02, player1) then
	damage_objects (player1, "body", 80); 
	end
	
	if volume_test_objects (tv_damage_players_02, player2) then
	damage_objects (player2, "body", 80); 
	end
	
	if volume_test_objects (tv_damage_players_02, player3) then
	damage_objects (player3, "body", 80); 
	end
		
	garbage_collect_now();
	
end

//LIBRARIAN ELEVATOR MOVES DOWN
script static void f_librarian_lift_anim()
	sleep_s (1.5);
	
	device_set_position_track( dm_core_lift_librarian, 'any:idle', 0 );
	device_animate_position( dm_core_lift_librarian, 1.0, 18.0, 0.0, 0.0, FALSE );

	sound_impulse_start ( 'sound\environments\solo\m020\amb_m20_machines\amb_m20_machine_elevator_start', dm_core_lift_librarian, 1 ); //AUDIO!
	sound_looping_start ( 'sound\environments\solo\m020\amb_m20_machines\ambience\amb_m20_machine_elevator_loop', dm_core_lift_librarian, 1 ); //AUDIO!
	
	sleep_until (device_get_position (dm_core_lift_librarian) == 1, 1);
	
	sound_impulse_start ( 'sound\environments\solo\m020\amb_m20_machines\amb_m20_machine_elevator_end', dm_core_lift_librarian, 1 ); //AUDIO!
	sound_looping_stop ( 'sound\environments\solo\m020\amb_m20_machines\ambience\amb_m20_machine_elevator_loop' ); //AUDIO!
	
	sleep (30);
	object_create (bridge_librarian_lower);
	
	game_save_no_timeout();
	
	sleep (30);
	object_destroy (bridge_librarian);
	dprint ("completed librarian core");
	
	sleep (30*3);
	wake (f_gpi_hex_cover_left);
	
end


// ===============================================================================
// ENEMY ENCOUNTERS
// ===============================================================================

//RIGHT CORE ACTIVATED (DIDACT)
script dormant f_post_core_encounter_right()
	sleep_until (b_player_activated_core_right == TRUE, 1);
	sleep_forever (f_post_core_encounter_left);
	sleep_forever (f_map_button_dialog_post);
	dprint ("right core completed, spawning left");
	ai_place (sg_gpi_left);

end

//right side grunts move through points
script command_script cs_ci_grunt_rs_01()
	dprint ("moving to point");
	cs_go_to (ps_ci_grunts.p0);

end

script command_script cs_ci_grunt_ls_01()
	dprint ("moving to point");
	cs_go_to (ps_ci_grunts.p6);

end


//LEFT CORE ACTIVATED (LIBRARIAN)
script dormant f_post_core_encounter_left()
	sleep_until (b_player_activated_core_left == TRUE, 1);
	sleep_forever (f_post_core_encounter_right);
	sleep_forever (f_map_button_dialog_post);
	dprint ("left core completed, spawning right");
	ai_place (sg_gpi_right);
	
end


//ONE CORE ACTIVATED
script dormant f_post_one_core_activated()
	sleep_until (
	b_player_activated_core_right == TRUE or 
	b_player_activated_core_left == TRUE
	, 1);
		
	dprint ("PLAY MUSIC!");
	thread (f_mus_m20_e02_begin());	

end


//BOTH CORES ACTIVATED
script dormant f_post_core_encounter_both()
	sleep_until (
	b_player_activated_core_right == TRUE and 
	b_player_activated_core_left == TRUE
	, 1);
	
//kill previous core's VO
	sleep_forever (f_dialog_m20_Cathedral_Librarian_terminal);
	
//SPAWN ENEMIES	
	dprint ("spawning middle");
	ai_place (sg_gpi_middle);
	
	//limit spawns based on enemy count
	if (ai_living_count (sq_gpi_grunts_rs_01) <= 0 and ai_living_count (sq_gpi_grunts_rs_02) <= 0) then
		ai_place (sq_gpi_middle_right_grunts_01);
		dprint ("SPAWNING EXTRA SQUAD");
	end
	
	if (ai_living_count (sq_gpi_jackals_rs_01) <= 0) then
		ai_place (sq_gpi_middle_right_jackals_01);
		dprint ("SPAWNING EXTRA SQUAD");
	end
	
	if (ai_living_count (sq_gpi_grunts_ls_01) <= 0 and ai_living_count (sq_gpi_grunts_ls_02) <= 0) then
		ai_place (sq_gpi_middle_left_grunts_01);
		dprint ("SPAWNING EXTRA SQUAD");
	end
	
	if (ai_living_count (sq_gpi_jackals_ls_01) <= 0) then
		ai_place (sq_gpi_middle_left_jackals_01);
		dprint ("SPAWNING EXTRA SQUAD");
	end
	
	//cleanup any left-over elites from first encounter
	f_ai_garbage_erase (sq_gpi_elite_rs_01, 10, -1, -1, -1, FALSE);
	f_ai_garbage_erase (sq_gpi_elite_rs_02, 10, -1, -1, -1, FALSE);
	f_ai_garbage_erase (sq_gpi_elite_ls_01, 10, -1, -1, -1, FALSE);
	f_ai_garbage_erase (sq_gpi_elite_ls_02, 10, -1, -1, -1, FALSE);
	

	dprint ("PLAY MUSIC!");
	thread (f_mus_m20_e03_begin());	
	
	sleep_until (volume_test_players (tv_gpi_objcon_10), 1);
	dprint ("spawning end");
	ai_place (sg_gpi_end);
	
	thread (cathedral_int_enemy_cleanup());
	
	wake (f_objcon_gpi_center);
	wake (f_return_to_main_terminal);

end

//CLEAN UP BEGINNING ENEMIES
script static void cathedral_int_enemy_cleanup()
	dprint ("attempting to clean up cathedral start");
	f_ai_garbage_erase (sg_gpi_right, 10, -1, -1, -1, FALSE);
	f_ai_garbage_erase (sg_gpi_left, 10, -1, -1, -1, FALSE);
	
end

//OBJCON MAIN CENTER
script dormant f_objcon_gpi_center()
	dprint ("CENTER OBJCON ACTIVE");

	sleep_until (volume_test_players (tv_gpi_objcon_10), 1);
	dprint (":: OBJCON 10 ::");
	s_objcon_gpi_center = 10;
	
	sleep_until (volume_test_players (tv_gpi_objcon_20), 1);
	dprint (":: OBJCON 20 ::");
	s_objcon_gpi_center = 20;

	sleep_until (volume_test_players (tv_gpi_objcon_30), 1);
	dprint (":: OBJCON 30 ::");
	s_objcon_gpi_center = 30;

end


// ===============================================================================
// BOTH CORES ACTIVATED -- RETURN TO MAIN TERMINAL
// ===============================================================================

//BLIP MAIN TERMINAL AFTER ALL ENEMIES DEAD AND RESET SWITCH
script dormant f_return_to_main_terminal()
//after upper platform enemies are dead, blip the main terminal again
	sleep_until (
		(ai_living_count (sg_gpi_end) == 0
		and ai_living_count (sq_gpi_middle_right_sniper) == 0
		and ai_living_count (sq_gpi_middle_right_grunt_02) == 0
		and ai_living_count (sq_gpi_middle_right_grunt_03) == 0
		and ai_living_count (sq_gpi_middle_left_grunt_02) == 0
		and ai_living_count (sq_gpi_middle_left_grunt_03) == 0)
	, 1);
	
	game_save_no_timeout();
	
	sleep (30*1);
	
	//STOP MUSIC
	thread (f_mus_m20_e02_finish());
	thread (f_mus_m20_e03_finish());
	
	b_cathedral_clear = TRUE;
	
	sleep (30*2);

	f_blip_object (map_button_01, "activate");

	device_set_position (map_button_01, 0);
	device_set_power (map_button_01, 1);
			
	//wake narrative 'return to terminal' script
	wake (f_m20_cathedral_map);
			
	//remove all enemies from scene' to get ready for cutscene
	sleep_until (device_get_position (map_button_01) > 0.0, 1);
	
	garbage_collect_now();
	
	ai_erase (sg_gpi_right);
	ai_erase (sg_gpi_left);
	ai_erase (sg_gpi_middle);
	ai_kill (sg_gpi_sentinel_core_a);
	ai_kill (sg_gpi_sentinel_core_b);
	ai_erase (sg_gpi_end);
	ai_erase (sq_gpi_middle_right_grunts_01);
	ai_erase (sq_gpi_middle_right_jackals_01);
	ai_erase (sq_gpi_middle_left_grunts_01);
	ai_erase (sq_gpi_middle_left_jackals_01);
	
end


//AFTER CUTSCENE IN NARRATIVE SCRIPT, THIS GETS WOKEN
script dormant f_gp_int_teleport_player()
	f_unblip_object (map_button_01);
	garbage_collect_now();

//TELEPORT PLAYER
	object_teleport_to_ai_point (player0(), exit_gp_int.p0);
	object_teleport_to_ai_point (player1(), exit_gp_int.p1);
	object_teleport_to_ai_point (player2(), exit_gp_int.p2);
	object_teleport_to_ai_point (player3(), exit_gp_int.p3);
	
	fade_in (0, 0, 0, 5);
	
	interpolator_stop_all();
	
	zone_set_trigger_volume_enable ("begin_zone_set:15_bridge", TRUE);
	
	game_save_no_timeout();
	
	sleep (30*3);
	
	sleep_until (preparingToSwitchZoneSet() == FALSE, 1);
	dprint ("finished streaming");
	
	zone_set_trigger_volume_enable ("zone_set:15_bridge", TRUE);
	dprint ("ZONESET HAS CHANGED");
	
	thread (f_start_bridge_encounter());	
	
end

script static void f_activator_get( object trigger, unit activator )
	dprint(" -activator- ");
	if trigger==bridge_switch_didact then
		g_ics_player1 = activator;
	elseif trigger==m20_didact_terminal then
		g_ics_player2 = activator;
	elseif trigger==bridge_switch_librarian then
		g_ics_player3 = activator;
	elseif trigger==m20_librarian_terminal then
		g_ics_player4 = activator;
	else
		g_ics_player = activator;
	end
	
	if ( trigger == domain_terminal_button ) then
		f_narrative_domain_terminal_interact( 0, domain_terminal, domain_terminal_button, activator, 'pup_domain_terminal' );
	end
	
end
// --- End m020_mission_guardpost.hsc ---

// --- Begin m20_ambient.hsc ---
; =================================================================================================
; =================================================================================================
; *** GLOBALS ***
; =================================================================================================
; =================================================================================================

; Debug Options
;;

; =================================================================================================
; CRATER CRUISERS
; =================================================================================================
/*
//AMBIENT CRUISERS FLY
script static void f_ambient_cruiser_01()
	object_cinematic_visibility (crater_cruiser_01, TRUE);
	object_move_to_flag (crater_cruiser_01, 250, flag_cruiser_01);
	object_set_scale (crater_cruiser_01, 0.01, 500);
	
end

script static void f_ambient_cruiser_02()
	object_cinematic_visibility (crater_cruiser_02, TRUE);
	object_move_to_flag (crater_cruiser_02, 550, flag_cruiser_02);
	object_set_scale (crater_cruiser_02, 0.01, 500);
	
end

script static void f_ambient_cruiser_03()
	object_cinematic_visibility (crater_cruiser_03, TRUE);
	object_move_to_flag (crater_cruiser_03, 300, flag_cruiser_03);
	object_set_scale (crater_cruiser_03, 0.01, 500);
	
end
*/

; =================================================================================================
; crater SHIPS
; =================================================================================================

; =================================================================================================
; CLEARING
; =================================================================================================

; =================================================================================================
; BRIDGE SHIPS
; =================================================================================================

// --- End m20_ambient.hsc ---

// --- Begin m20_audio.hsc ---

; =================================================================================================
; =================================================================================================
; *** GLOBALS ***
; =================================================================================================
; =================================================================================================

global string s_music_control 							= "none";

global short s_music_gpost03 								= 0;
global short s_music_bridge02 							= 0;
global short s_music_atrium02 							= 0;

global short s_objmove_gpe_door 						= 0;
global short s_objmove_gpi_door 						= 0;
global short s_objmove_courty_door 					= 0;
global short s_objmove_gun_door 						= 0;
global short s_objmove_gpi_platforms_left 	= 0;
global short s_objmove_gpi_platforms_right 	= 0;


global string s_amb_crater01  							= "f";
global string s_amb_crater02 								= "f";
global string s_amb_vista01 								= "f";
global string s_amb_graveyard01 						= "f";
global string s_amb_gpost01 								=	"f";
global string s_amb_gpost02 								=	"f";
global string s_amb_bridge01  							=	"f";
global string s_amb_bridge02  							=	"f";
global string s_amb_chamber01  							=	"f";
global string s_amb_cyard01   							=	"f";
global string s_amb_cyard02   							=	"f";
global string s_amb_atrium01   							=	"f";

global string s_cruiser_crater   						=	"f";
global string s_cruiser_bridge   						=	"f";
global string s_cruiser_courtyard   				=	"f";

global string s_dm_gpe_door 								= "none";
global string s_dm_gpi_door 								= "none";
global string s_dm_courty_door 							= "none";
global string s_dm_gun_door 								= "none";
global string s_dm_gpi_platforms_left 			= "none";
global string s_dm_gpi_platforms_right 			= "none";

global string s_dm_scanner_up 							= "none";
global string s_dm_scanner_red 							= "none";
global string s_dm_scanner_green 						= "none";
global string s_dm_bridge_elevator 					= "none";
global string s_dm_atrium_elevator 					= "none";
global string s_dm_flush_core 							= "none";
global string s_dm_blue_column_1 						= "none";
global string s_dm_blue_column_2 						= "none";
global string s_dm_blue_column_3 						= "none";
global string s_dm_blue_column_4 						= "none";

global short s_cruiser_crater_sky 					= 0;

// =================================================================================================
// =================================================================================================
// *** AUDIO HOOKS ***
// =================================================================================================
//
script startup m20_audio()
	thread (load_music_for_zone_set());
end

//====================================================
// MUSIC HOOKS - ENCOUNTERS
//====================================================



script static void f_mus_m20_e01_begin()
	dprint("f_mus_m20_e01");
	music_set_state('Play_mus_m20_e01_field');
end

script static void f_mus_m20_e02_begin()
	dprint("f_mus_m20_e02");
	music_set_state('Play_mus_m20_e03_cathedral_interior_1');
end

script static void f_mus_m20_e03_begin()
	dprint("f_mus_m20_e03");
	music_set_state('Play_mus_m20_e05_cathedral_interior_2');
end

script static void f_mus_m20_e04_begin()
	dprint("f_mus_m20_e04");
	music_set_state('Play_mus_m20_e07_bridge_door_open');
end

script static void f_mus_m20_e05_begin()
	dprint("f_mus_m20_e05");
	music_set_state('Play_mus_m20_e09_bridge_elevator_land');
end

script static void f_mus_m20_e06_begin()
	dprint("f_mus_m20_e06");
	music_set_state('Play_mus_m20_e11_courtyard');
end

script static void f_mus_m20_e07_begin()
	dprint("f_mus_m20_e07");
end

script static void f_mus_m20_e08_begin()
	dprint("f_mus_m20_e08");
end

script static void f_mus_m20_e01_finish()
	dprint("f_mus_m20_e01");
	music_set_state('Play_mus_m20_e02_field_end');
end

script static void f_mus_m20_e02_finish()
	dprint("f_mus_m20_e02");
	music_set_state('Play_mus_m20_e04_cathedral_interior_1_end');
end

script static void f_mus_m20_e03_finish()
	dprint("f_mus_m20_e03");
	music_set_state('Play_mus_m20_e06_cathedral_interior_2_end');
end

script static void f_mus_m20_e04_finish()
	dprint("f_mus_m20_e04");
	music_set_state('Play_mus_m20_e08_bridge_end');
end

script static void f_mus_m20_e05_finish()
	dprint("f_mus_m20_e05");
end

script static void f_mus_m20_e06_finish()
	dprint("f_mus_m20_e06");
	music_set_state('Play_mus_m20_e12_courtyard_end');
end

script static void f_mus_m20_e07_finish()
	dprint("f_mus_m20_e07");
end

script static void f_mus_m20_e08_finish()
	dprint("f_mus_m20_e08");
end

script static void f_music_m20_tweak01()
	dprint("f_music_m20_tweak01");
	music_set_state('Play_mus_m20_t01_tweak');
end

script static void f_music_m20_tweak02()
	dprint("f_music_m20_tweak02");
	music_set_state('Play_mus_m20_t02_tweak');
end

script static void f_music_m20_tweak03()
	dprint("f_music_m20_tweak03");
	music_set_state('Play_mus_m20_t03_tweak');
end

script static void f_music_m20_tweak04()
	dprint("f_music_m20_tweak04");
	music_set_state('Play_mus_m20_t04_tweak');
end

script static void f_music_m20_tweak05()
	dprint("f_music_m20_tweak05");
	music_set_state('Play_mus_m20_t05_tweak');
end

script static void f_music_m20_tweak06()
	dprint("f_music_m20_tweak06");
	music_set_state('Play_mus_m20_t06_tweak');
end

script static void f_music_m20_tweak07()
	dprint("f_music_m20_tweak07");
	music_set_state('Play_mus_m20_t07_tweak');
end

script static void f_music_m20_tweak08()
	dprint("f_music_m20_tweak08");
	music_set_state('Play_mus_m20_t08_tweak');
end

script static void f_music_m20_tweak09()
	dprint("f_music_m20_tweak09");
	music_set_state('Play_mus_m20_t09_tweak');
end

script static void f_music_m20_tweak10()
	dprint("f_music_m20_tweak10");
	music_set_state('Play_mus_m20_t10_tweak');
end

script static void f_music_m20_v01_floating_tower()
	dprint("f_music_m20_v01_floating_tower");
	music_set_state('Play_mus_m20_v01_floating_tower');
end

// this will always be 0 unless an insertion point is used
// in that case, it is used to skip past the trigger volumes that precede the selected insertion point
global short b_m20_music_progression = 0;

//====================================================
// MUSIC HOOKS - ZONE SETS
//====================================================
script static void load_music_for_zone_set()
	sleep_until(b_m20_music_progression > 0 or current_zone_set_fully_active() == s_zoneset_crater, 1);
	
	music_start('Play_mus_m20');
	
	sleep_until(b_m20_music_progression > 10 or volume_test_players (tv_music_r01_crater), 1);
	if b_m20_music_progression <= 10 then
		sound_set_state('Set_State_M20_Crater');
		music_set_state('Play_mus_m20_r01_crater');
	end

	// Player enters cave to vista
	sleep_until(b_m20_music_progression > 20 or volume_test_players (tv_music_r02_crater_clearing), 1);
	if b_m20_music_progression <= 20 then
		sound_set_state('Set_State_M20_Crater_Clearing');
		music_set_state('Play_mus_m20_r02_crater_clearing');
	end
	
	//  exit cave and see vista
	// sleep_until(volume_test_players (tv_music_r03_clearing), 1);
	//	music_set_state('Play_mus_m20_r03_clearing');

	// Just before entering wreckage
	sleep_until(b_m20_music_progression > 30 or volume_test_players (tv_music_r04_clearing_graveyard), 1);
	if b_m20_music_progression <= 30 then
		sound_set_state('Set_State_M20_Crater_Graveyard');
		music_set_state('Play_mus_m20_r04_clearing_graveyard');
	end

	// In wreckage
	sleep_until(b_m20_music_progression > 40 or volume_test_players (tv_music_r05_graveyard), 1);
	if b_m20_music_progression <= 40 then
		sound_set_state('Set_State_M20_Graveyard');
		music_set_state('Play_mus_m20_r05_graveyard');
	end
	
	// Right before exiting wreckage and entering cave
	sleep_until(b_m20_music_progression > 50 or volume_test_players (tv_music_r06_graveyard_guardpostext), 1);
	if b_m20_music_progression <= 50 then
		sound_set_state('Set_State_M20_Graveyard2');
		music_set_state('Play_mus_m20_r06_graveyard_guardpostext');
	end
	
	// Exit cave and enter field before the guardpost exterior
	sleep_until(b_m20_music_progression > 60 or volume_test_players (tv_music_r07_guardpostext), 1);
	if b_m20_music_progression <= 60 then
		sound_set_state('Set_State_M20_Guardpost_Exterior_Field');
		music_set_state('Play_mus_m20_r07_guardpostext');
	end
	
	// cathedral/guardpost exterior
	sleep_until(b_m20_music_progression > 70 or volume_test_players (tv_music_r08_guardpostext_guardpostint), 1);
	if b_m20_music_progression <= 70 then
		sound_set_state('Set_State_M20_Guardpost_Exterior');
		music_set_state('Play_mus_m20_r08_guardpostext_guardpostint');
	end
	
	// RALLY POINT BRAVO
	// enter cathedral/guardpost interior
	sleep_until(b_m20_music_progression > 80 or volume_test_players (tv_music_r09_guardpostint), 1);
	if b_m20_music_progression <= 80 then
		sound_set_state('Set_State_M20_Guardpost_Interior');
		music_set_state('Play_mus_m20_r09_guardpostint');
	end
	
	// enter last room before going back outside
	sleep_until(b_m20_music_progression > 90 or volume_test_players (tv_music_r10_guardpostint_bridge), 1);
	if b_m20_music_progression <= 90 then
		sound_set_state('Set_State_M20_Guardpost_To_Bridge');
		music_set_state('Play_mus_m20_r10_guardpostint_bridge');
	end
	
	// exit the cathedral/guardpost and enter the bridge area
	sleep_until(b_m20_music_progression > 100 or volume_test_players (tv_music_r11_bridge), 1);
	if b_m20_music_progression <= 100 then
		sound_set_state('Set_State_M20_Bridge');
		music_set_state('Play_mus_m20_r11_bridge');
	end
	
	// after entering the door at the end of the bridge
	sleep_until(b_m20_music_progression > 110 or volume_test_players (tv_music_r13_courtyard), 1);
	if b_m20_music_progression <= 110 then
		sound_set_state('Set_State_M20_Courtyard');
		music_set_state('Play_mus_m20_r13_courtyard');
	end
	
	// exit courtyard (enter zoneset terminus)
	sleep_until(b_m20_music_progression > 120 or volume_test_players (tv_music_r15_atrium), 1);
	if b_m20_music_progression <= 120 then
		sound_set_state('Set_State_M20_Atrium');
	 	music_set_state('Play_mus_m20_r15_atrium');
	end

	sleep_until(current_zone_set_fully_active() == s_zoneset_tower_cinematic, 1);
		music_stop('Stop_mus_m20'); 
end

script dormant f_music_start()
	 sound_looping_start ("sound\environments\solo\m020\music\m20_music", NONE, 1.0);
end


script dormant f_music_crater01()
	sleep_until (volume_test_players (tv_music_CRATER01) == 1, 1);
	dprint ("::: music tv - CRATER01 :::");
	s_music_control = "CRATER01";
end


script dormant f_music_vista01()
	sleep_until (volume_test_players (tv_music_vista01) == 1, 1);
	dprint ("::: music tv - VISTA01 :::");
	s_music_control = "VISTA01";
	sound_looping_start ("sound\environments\solo\m020\music\vista1", NONE, 1.0);
end

script dormant f_music_graveyard01()
	sleep_until (volume_test_players (tv_music_graveyard01) == 1, 1);
	dprint ("::: music tv - GRAVEYARD01 :::"); 
	s_music_control = "GRAVEYARD01";
	sound_looping_start ("sound\environments\solo\m020\music\graveyard01", NONE, 1.0);
	sound_looping_stop ("sound\environments\solo\m020\music\vista1");
end

script dormant f_music_gpost01()
	sleep_until (volume_test_players (tv_music_gpost01) == 1, 1);
	dprint ("::: sound tv - GPOST01 :::"); 
	s_music_control = "GPOST01";
	sound_looping_start ("sound\environments\solo\m020\music\gpost01", NONE, 1.0);
	sound_looping_stop ("sound\environments\solo\m020\music\graveyard01");
end

script dormant f_music_gpost04()
	sleep_until (volume_test_players (tv_music_gpost04) == 1, 1);
	dprint ("::: music tv - GPOST04 :::");
	s_music_control = "GPOST04";
	sound_looping_start ("sound\environments\solo\m020\music\gpost04", NONE, 1.0);
	sound_looping_stop ("sound\environments\solo\m020\music\gpost01");
end

script dormant f_music_gpost02()
	sleep_until (volume_test_players (tv_music_gpost02) == 1, 1);
	dprint ("::: music tv - GPOST02 :::");
	s_music_control = "GPOST02";
	sound_looping_start ("sound\environments\solo\m020\music\gpost02", NONE, 1.0);
	sound_looping_stop ("sound\environments\solo\m020\music\gpost04");
end

script dormant f_music_gpost03_e()
	sleep_until (s_music_gpost03 == 1, 1);
	dprint  ("::: music tv - GPOST03 :::");
	s_music_control = "GPOST03";
	sound_looping_start ("sound\environments\solo\m020\music\gpost03", NONE, 1.0);
	sound_looping_stop ("sound\environments\solo\m020\music\gpost02");
end


script dormant f_music_gpost05()
	dprint ("::: music tv - GPOST05 :::");
end

script dormant f_music_bridge01()
	sleep_until (volume_test_players (tv_music_bridge01) == 1, 1);
	dprint ("::: music tv - BRIDGE01 :::");
	s_music_control = "BRIDGE01";
	sound_looping_start ("sound\environments\solo\m020\music\bridge_01", NONE, 1.0);
	sound_looping_stop ("sound\environments\solo\m020\music\gpost04");
end

script dormant f_music_bridge02_e()
	sleep_until (s_music_bridge02 == 1, 1);
	dprint ("::: music tv - BRIDGE02 :::");
	s_music_control = "BRIDGE02";
	sound_looping_start ("sound\environments\solo\m020\music\bridge_02", NONE, 1.0);
	sound_looping_stop ("sound\environments\solo\m020\music\bridge_01");
end

script dormant f_music_cyard02()
	sleep_until (volume_test_players (tv_music_cyard02) == 1, 1);
	dprint ("::: music tv - CYARD02 :::");
	s_music_control = "CYARD02";
	sound_looping_start ("sound\environments\solo\m020\music\cyard02", NONE, 1.0);
	sound_looping_stop ("sound\environments\solo\m020\music\bridge_02");
end

script dormant f_music_atrium01()
	sleep_until (volume_test_players (tv_music_atrium01) == 1, 1);
	dprint ("::: music tv - ATRIUM01 :::"); 
	s_music_control = "ATRIUM01";
	sound_looping_start ("sound\environments\solo\m020\music\atrium01", NONE, 1.0);
	sound_looping_stop ("sound\environments\solo\m020\music\cyard02");
end

script dormant f_music_atrium02_e()
	sleep_until (s_music_atrium02 == 1, 1);
	dprint  ("::: music tv - ATRIUM02 :::");
	s_music_control = "ATRIUM02";
	sound_looping_start ("sound\environments\solo\m020\music\atrium02", NONE, 1.0);
	sound_looping_stop ("sound\environments\solo\m020\music\atrium01");
end




//====================================================
//			AMB
//====================================================

script static void f_amb_crater01()
	repeat	
		sleep_until (volume_test_players (tv_amb_crater01));
		sound_looping_start ("sound\environments\solo\m020\ambience\amb_crater01", NONE, 1.0);
		print ("SOUND_LOOPING_START");
		sleep_until (volume_test_players (tv_amb_crater01) == FALSE);
		sound_looping_stop ("sound\environments\solo\m020\ambience\amb_crater01");
		print ("SOUND_LOOPING_END");
	until (1 == 0, 1);
end

script static void f_amb_crater02()
	repeat	
		sleep_until (volume_test_players (tv_amb_crater02));
		sound_looping_start ("sound\environments\solo\m020\ambience\amb_crater02", NONE, 1.0);
		print ("SOUND_LOOPING_START");
		sleep_until (volume_test_players (tv_amb_crater02) == FALSE);
		sound_looping_stop ("sound\environments\solo\m020\ambience\amb_crater02");
		print ("SOUND_LOOPING_END");
	until (1 == 0, 1);
end

script static void f_amb_vista01()
	repeat	
		sleep_until (volume_test_players (tv_amb_vista01));
		sound_looping_start ("sound\environments\solo\m020\ambience\amb_vista01", NONE, 1.0);
		print ("SOUND_LOOPING_START");
		sleep_until (volume_test_players (tv_amb_vista01) == FALSE);
		sound_looping_stop ("sound\environments\solo\m020\ambience\amb_vista01");
		print ("SOUND_LOOPING_END");
	until (1 == 0, 1);
end

script static void f_amb_graveyard01()
	repeat	
		sleep_until (volume_test_players (tv_amb_graveyard01));
		sound_looping_start ("sound\environments\solo\m020\ambience\amb_graveyard01", NONE, 1.0);
		print ("SOUND_LOOPING_START");
		sleep_until (volume_test_players (tv_amb_graveyard01) == FALSE);
		sound_looping_stop ("sound\environments\solo\m020\ambience\amb_graveyard01");
		print ("SOUND_LOOPING_END");
	until (1 == 0, 1);
end

script static void f_amb_gpost01()
	repeat	
		sleep_until (volume_test_players (tv_amb_gpost01));
		sound_looping_start ("sound\environments\solo\m020\ambience\amb_gpost01", NONE, 1.0);
		print ("SOUND_LOOPING_START");
		sleep_until (volume_test_players (tv_amb_gpost01) == FALSE);
		sound_looping_stop ("sound\environments\solo\m020\ambience\amb_gpost01");
		print ("SOUND_LOOPING_END");
	until (1 == 0, 1);
end

script static void f_amb_gpost02()
	repeat	
		sleep_until (volume_test_players (tv_amb_gpost02));
		sound_looping_start ("sound\environments\solo\m020\ambience\amb_gpost02", NONE, 1.0);
		print ("SOUND_LOOPING_START");
		sleep_until (volume_test_players (tv_amb_gpost02) == FALSE);
		sound_looping_stop ("sound\environments\solo\m020\ambience\amb_gpost02");
		print ("SOUND_LOOPING_END");
	until (1 == 0, 1);
end

script static void f_amb_bridge01()
	repeat	
		sleep_until (volume_test_players (tv_amb_bridge01));
		sound_looping_start ("sound\environments\solo\m020\ambience\amb_bridge01", NONE, 1.0);
		print ("SOUND_LOOPING_START");
		sleep_until (volume_test_players (tv_amb_bridge01) == FALSE);
		sound_looping_stop ("sound\environments\solo\m020\ambience\amb_bridge01");
		print ("SOUND_LOOPING_END");
	until (1 == 0, 1);
end

script static void f_amb_bridge02()
	repeat	
		sleep_until (volume_test_players (tv_amb_bridge02));
		sound_looping_start ("sound\environments\solo\m020\ambience\amb_bridge02", NONE, 1.0);
		print ("SOUND_LOOPING_START");
		sleep_until (volume_test_players (tv_amb_bridge02) == FALSE);
		sound_looping_stop ("sound\environments\solo\m020\ambience\amb_bridge02");
		print ("SOUND_LOOPING_END");
	until (1 == 0, 1);
end

script static void f_amb_chamber01()
	repeat	
		sleep_until (volume_test_players (tv_amb_chamber01));
		sound_looping_start ("sound\environments\solo\m020\ambience\amb_chamber01", NONE, 1.0);
		print ("SOUND_LOOPING_START");
		sleep_until (volume_test_players (tv_amb_chamber01) == FALSE);
		sound_looping_stop ("sound\environments\solo\m020\ambience\amb_chamber01");
		print ("SOUND_LOOPING_END");
	until (1 == 0, 1);
end

script static void f_amb_cyard01()
	repeat	
		sleep_until (volume_test_players (tv_amb_cyard01));
		sound_looping_start ("sound\environments\solo\m020\ambience\amb_cyard01", NONE, 1.0);
		print ("SOUND_LOOPING_START");
		sleep_until (volume_test_players (tv_amb_cyard01) == FALSE);
		sound_looping_stop ("sound\environments\solo\m020\ambience\amb_cyard01");
		print ("SOUND_LOOPING_END");
	until (1 == 0, 1);
end

script static void f_amb_cyard02()
	repeat	
		sleep_until (volume_test_players (tv_amb_cyard02));
		sound_looping_start ("sound\environments\solo\m020\ambience\amb_cyard02", NONE, 1.0);
		print ("SOUND_LOOPING_START");
		sleep_until (volume_test_players (tv_amb_cyard02) == FALSE);
		sound_looping_stop ("sound\environments\solo\m020\ambience\amb_cyard02");
		print ("SOUND_LOOPING_END");
	until (1 == 0, 1);
end

script static void f_amb_atrium01()
	repeat	
		sleep_until (volume_test_players (tv_amb_atrium01));
		sound_looping_start ("sound\environments\solo\m020\ambience\amb_atrium01", NONE, 1.0);
		print ("SOUND_LOOPING_START");
		sleep_until (volume_test_players (tv_amb_atrium01) == FALSE);
		sound_looping_stop ("sound\environments\solo\m020\ambience\amb_atrium01");
		print ("SOUND_LOOPING_END");
	until (1 == 0, 1);
end


//=========================================================================
//		CRUISERS
//=========================================================================

script static void f_cruiser_crater()
	repeat	
		sleep_until (volume_test_players (tv_cruiser_crater) == 1 and s_cruiser_crater_sky == 1);
		sound_looping_start ("sound\environments\solo\m020\ambience\amb_cruiser_crater", NONE, 1.0);
		sleep_until (volume_test_players (tv_cruiser_crater) == 1 and s_cruiser_crater_sky == 0);
		sound_looping_stop ("sound\environments\solo\m020\ambience\amb_cruiser_crater");
	until (1 == 0, 1);
end



script static void f_cruiser_bridge()
	repeat	
		sleep_until (volume_test_players (tv_cruiser_bridge));
		sound_looping_start ("sound\environments\solo\m020\ambience\amb_cruiser_bridge", NONE, 1.0);
		print ("SOUND_LOOPING_START");
		sleep_until (volume_test_players (tv_cruiser_bridge) == FALSE);
		sound_looping_stop ("sound\environments\solo\m020\ambience\amb_cruiser_bridge");
		print ("SOUND_LOOPING_END");
	until (1 == 0, 1);
end

script static void f_cruiser_courtyard()
	repeat	
		sleep_until (volume_test_players (tv_cruiser_courtyard));
		sound_looping_start ("sound\environments\solo\m020\ambience\amb_cruiser_courtyard", NONE, 1.0);
		print ("SOUND_LOOPING_START");
		sleep_until (volume_test_players (tv_cruiser_courtyard) == FALSE);
		sound_looping_stop ("sound\environments\solo\m020\ambience\amb_cruiser_courtyard");
		print ("SOUND_LOOPING_END");
	until (1 == 0, 1);
end



//====================================================
//			Device machines
//====================================================


script dormant f_dm_gpe_door()
	sleep_until (s_objmove_gpe_door == 1, 1);
	dprint ("::: dm tv - GPE DOOR :::");
	s_dm_gpe_door = "PLAY";
	sound_impulse_start ("sound\environments\solo\m020\machines_devices\s_dm_gpe_door", NONE, 1);
end

script dormant f_dm_gpi_door()
	sleep_until (s_objmove_gpi_door == 1, 1);
	dprint ("::: dm tv - GPI DOOR :::");
	s_dm_gpi_door = "PLAY";
	sound_impulse_start ("sound\environments\solo\m020\machines_devices\s_dm_gpi_door", NONE, 1);
end


script dormant f_dm_courty_door()
	sleep_until (s_objmove_courty_door == 1, 1);
	dprint ("::: dm tv - COURTYARD DOOR :::");
	s_dm_courty_door = "PLAY";
	sound_impulse_start ("sound\environments\solo\m020\machines_devices\s_dm_courty_door", NONE, 1);
end

script dormant f_dm_gun_door()
	sleep_until (s_objmove_gun_door == 1, 1);
	dprint  ("::: music tv - GUN DOOR :::");
	s_dm_gun_door = "PLAY";
	sound_impulse_start ("sound\environments\solo\m020\machines_devices\s_dm_gun_door", NONE, 1);
end

script dormant f_atrium_elevator_audio()
	dprint ("::: Elevator Atrium -- VO Start:::");
	sleep (30 * 2);
end

//====================================================
// other devices that just have variables
//====================================================

script dormant f_dm_scanner()
	sleep_until (s_dm_scanner_up == "PLAY", 1);
	dprint ("::: starting scanner sound :::");
	sound_impulse_start ("sound\environments\solo\m020\machines_devices\s_dm_scanner_up", NONE, 1);
end

script dormant f_dm_scanner_red()
	sleep_until (s_dm_scanner_red == "PLAY", 1);
	dprint ("::: starting scanner red sound :::");
	sound_impulse_start ("sound\environments\solo\m020\machines_devices\s_dm_scanner_red", NONE, 1);
end

script dormant f_dm_scanner_green()
	sleep_until (s_dm_scanner_green == "PLAY", 1);
 	dprint ("::: starting scanner green sound :::");
 	sound_impulse_start ("sound\environments\solo\m020\machines_devices\s_dm_scanner_green", NONE, 1);
end

script dormant f_dm_bridge_elevator()
	sleep_until (s_dm_bridge_elevator == "PLAY", 1);
	dprint ("::: starting bridge elevator sound :::");
	sound_impulse_start ("sound\environments\solo\m020\machines_devices\s_dm_bridge_elevator", NONE, 1);
end

script dormant f_dm_atrium_elevator()
	sleep_until (s_dm_atrium_elevator == "PLAY", 1);
	dprint ("::: starting atrium elevator sound :::");
	sound_impulse_start ("sound\environments\solo\m020\machines_devices\s_dm_atrium_elevator", NONE, 1);      
end

script dormant f_dm_flush_core()
	sleep_until (s_dm_flush_core == "PLAY", 1);
	dprint ("::: starting flush core sound :::");
	sound_impulse_start ("sound\environments\solo\m020\machines_devices\s_dm_flush_core", NONE, 1);
end

script dormant f_dm_blue_column_1()
	sleep_until (s_dm_blue_column_1 == "PLAY", 1);
	dprint ("::: starting blue column 1 sound :::");
	sound_impulse_start ("sound\environments\solo\m020\machines_devices\s_dm_blue_column_1", NONE, 1);
end

script dormant f_dm_blue_column_2()
	sleep_until (s_dm_blue_column_2 == "PLAY", 1);
	dprint ("::: starting blue column 2 sound :::");
	sound_impulse_start ("sound\environments\solo\m020\machines_devices\s_dm_blue_column_2", NONE, 1);
end

script dormant f_dm_blue_column_3()
	sleep_until (s_dm_blue_column_3 == "PLAY", 1);
	dprint ("::: starting blue column 3 sound :::");
	sound_impulse_start ("sound\environments\solo\m020\machines_devices\s_dm_blue_column_3", NONE, 1);
end

script dormant f_dm_blue_column_4()
	sleep_until (s_dm_blue_column_4 == "PLAY", 1);
	dprint ("::: starting blue column 4 sound :::");
	sound_impulse_start ("sound\environments\solo\m020\machines_devices\s_dm_blue_column_4", NONE, 1);
end
      

// --- End m20_audio.hsc ---

// --- Begin m20_dialogue.hsc ---
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343
//
// Mission: 					m20_dialog
//										
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343

// -------------------------------------------------------------------------------------------------
// DIALOG
// -------------------------------------------------------------------------------------------------
// DEFINES


// VARIABLES


// dialog ID variables






// --- END

script dormant f_dialog_m20_crater_landing()
dprint("f_dialog_m20_crater_landing");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M20_CRATER_LANDING", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
					dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m20\m20_temp_cutscene_m20_crater_00100', FALSE, NONE, 0.0, "", "Cortana : Doesn't look like the Covenant fared much better than we did." );
          dialog_line_chief( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m20\m20_temp_cutscene_m20_crater_00101', FALSE, NONE, 0.0, "", "Chief: How many ships made it through the roof?" ); 
          dialog_line_cortana( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m20\m20_temp_cutscene_m20_crater_00102', FALSE, NONE, 0.0, "", "Cortana: Plenty. Why?" );
          dialog_line_chief( l_dialog_id, 3, TRUE, 'sound\dialog\mission\m20\m20_temp_cutscene_m20_crater_00103', FALSE, NONE, 0.0, "", "Chief: We still need a ride home." );       
        //  dialog_line_cortana( l_dialog_id, 4, TRUE, 'sound\dialog\mission\m20\m20_ammo_check_01_00103', FALSE, NONE, 0.0, "", "Cortana: Well in case they're not feeling particularly GENEROUS, you might want to have a look for some ammo first." );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
				 wake(find_ship_objective);
				 
end



script dormant f_dialog_m20_crevice()
dprint("f_dialog_m20_crevice");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M20_CREVICE", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
					dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m20\m20_chatter_00106', FALSE, NONE, 0.0, "", "Cortana: There�s a crevice we can use to get through the rocks over there." );
					dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m20\m20_chatter_00118', FALSE, NONE, 0.0, "", "Cortana: See the waypoint on your HUD." );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
				 
		wake (f_crater_blip_exit);

end

script dormant f_dialog_m20_covenant_scouts()
dprint("f_dialog_m20_covenant_scouts");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M20_COVENANT_SCOUTS", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
					dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\global\global_chatter_00109', FALSE, NONE, 0.0, "", "Cortana: Covenant scouts!" );
          
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
				 
				 
end



script dormant f_dialog_m20_ammo_check()
dprint("f_dialog_m20_ammo_check");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M20_AMMO_CHECK", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
					dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m20\m20_ammo_check_01_00100', FALSE, NONE, 0.0, "", "Cortana: Chief, check your ammo." );
          dialog_line_cortana( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m20\m20_ammo_check_01_00101', FALSE, NONE, 0.0, "", "Cortana: You might want to go easy until we can locate some more." ); 
          dialog_line_cortana( l_dialog_id, 3, TRUE, 'sound\dialog\mission\m20\m20_ammo_check_01_00104', FALSE, NONE, 0.0, "", "Cortana: Given all this debris, chances are you'll find something the Covenant won't want shot at them." );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end

script static void f_dialog_m20_mayday_signal()
//dprint("f_dialog_m20_mayday_signal");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_background( "MAYDAY_SIGNAL", l_dialog_id, ( (objects_distance_to_object(player0, mayday_3d_object) < 4) == TRUE ), DEF_DIALOG_STYLE_PLAY(), FALSE, "", 0.25 );    
					  dialog_line_cortana( l_dialog_id, 0, ( (objects_distance_to_object(player0, mayday_3d_object) < 4) == TRUE ), 'sound\dialog\mission\m20\m20_distress_message_00100', FALSE, mayday_3d_object, 0.0, "", "Cortana : Mayday Mayday Mayday-this is UNSC FFG201, Forward Unto Dawn requesting immediate evac. Survivors aboard-prioritization code victor zero five dash three dash sierra zero one one seven." );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );

end

script static void f_dialog_m20_mayday_signal_reaction()
dprint("f_dialog_m20_mayday_signal_reaction");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "MAYDAY_SIGNAL", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
					  dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m20\m20_crater_explore_terminal_1_00116', FALSE, NONE, 0.0, "", "Cortana : It sounds like our distress signal is still looping.  That's a pleasant surprise. But where's it coming from?" );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
				 
end


script dormant f_dialog_m20_covenant_signal()
dprint("f_dialog_m20_covenant_signal");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
			thread(m20_crater_terminal_2_looping());
			sleep_s(2);
					l_dialog_id = dialog_start_foreground( "M20_COVENANT_SIGNAL", l_dialog_id, TRUE, DEF_DIALOG_STYLE_SKIP(), TRUE, "", 0.25 );    
									dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m20\m20_crater_explore_terminal_2_00116', FALSE, NONE, 0.0, "", "Cortana : What is that? Chief, see if that terminal is still active." );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
				 thread (exploreable_terminal_02());
end


script static void f_dialog_m20_covenant_signal_loop()
dprint("f_dialog_m20_covenant_signal_loop");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_background( "M20_COVENANT_SIGNAL_02", l_dialog_id, ((objects_distance_to_object(player0, fore_terminal_1_target) < 4) == TRUE), DEF_DIALOG_STYLE_PLAY(), TRUE, "", 0.25 );    	
					//start_radio_transmission( "jul_transmission_name" );
                    dialog_line_npc( l_dialog_id, 0, ((objects_distance_to_object(player0, fore_terminal_2_target) < 4) == TRUE), 'sound\dialog\mission\m20\m20_crater_explore_terminal_2_00111', FALSE, fore_terminal_2_target, 0.0, "", "Elite Radio : Diiiiiidaaaaaaaacttt.", TRUE );
       //   end_radio_transmission();
          l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
				 
end



script dormant f_dialog_m20_covenant_signal_one_off()
dprint("f_dialog_m20_covenant_signal_one_off");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_background( "M20_SCOUTING_PARTY", l_dialog_id, TRUE, DEF_DIALOG_STYLE_PLAY(), FALSE, "", 0.25 );    
								dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m20\m20_crater_explore_terminal_2_00111', FALSE, NONE, 0.0, "", "Elite Radio : Diiiiiidaaaaaaaacttt." );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end


script dormant f_dialog_m20_exploreable_terminal_02()
dprint("f_dialog_m20_exploreable_terminal_02");
			SetNarrativeFlagOnLocalPlayers( 9, TRUE );

local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M20_EXPLOREABLE_TERMINAL_02", l_dialog_id, TRUE, DEF_DIALOG_STYLE_SKIP(), FALSE, "", 0.25 );    
								dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m20\m20_crater_explore_terminal_2_00117', FALSE, NONE, 0.0, "", "Cortana : They�ve been broadcasting that from an equidistant orbit every 30 minutes for the last three years." );
								dialog_line_chief( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m20\m20_crater_explore_terminal_2_00118', FALSE, NONE, 0.0, "", "Master Chief : They�ve been waiting outside the planet for three years?" );
								dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m20\m20_crater_explore_terminal_2_00119', FALSE, NONE, 0.0, "", "Cortana : Apparently they couldn�t get in." );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end


	
script dormant f_dialog_m20_exploreable_terminal_03_pre()
dprint("f_dialog_m20_exploreable_terminal_03_pre");

					l_dlg_exploreable_terminal_03_pre = dialog_start_foreground( "M20_EXPLOREABLE_TERMINAL_03_PRE", l_dlg_exploreable_terminal_03_pre, TRUE, DEF_DIALOG_STYLE_SKIP(), FALSE, "", 0.25 );    
								dialog_line_cortana( l_dlg_exploreable_terminal_03_pre, 0, TRUE, 'sound\dialog\mission\m20\m20_Crater_explore_terminal_3_00100', FALSE, NONE, 0.0, "", "Cortana : That console's still got some power in it." );
				 l_dlg_exploreable_terminal_03_pre = dialog_end( l_dlg_exploreable_terminal_03_pre, TRUE, TRUE, "" );
				 
end

script static void f_dialog_m20_exploreable_terminal_03_0a()
dprint("f_dialog_m20_exploreable_terminal_03_0a");
static long l_dialog_id = DEF_DIALOG_ID_NONE();
					SetNarrativeFlagOnLocalPlayers( 8, TRUE );
            if ( not dialog_background_id_active_check(l_dialog_id) ) then
            						wake(f_dialog_m20_exploreable_terminal_03_0b);
                        l_dialog_id = dialog_start_background( "M20_EXPLOREABLE_TERMINAL_03_0a", l_dialog_id, TRUE, DEF_DIALOG_STYLE_PLAY(), TRUE, "", 0.0 );
                        sleep_s(5);
                        start_radio_transmission( "unidentified_covenant_transmission_name" );
														dialog_line_npc( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m20\m20_crater_explore_terminal_3_00117', FALSE, fore_terminal_1_target, 0.0, "", "Elite : Blarga-- non-believers walk the sacred ground! Purge the heretics, so they do not foul the air of Paradise!" , TRUE);
													dialog_line_npc( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m20\m20_crater_explore_terminal_3_00106', FALSE, fore_terminal_1_target, 0.0, "", "Elite : The time has come to enter the Great Light and assume the Mantle. " , TRUE);
													dialog_line_npc( l_dialog_id, 3, TRUE, 'sound\dialog\mission\m20\m20_crater_explore_terminal_3_00107', FALSE, fore_terminal_1_target, 0.0, "", "Elite : The Prometh-- (GARBLED) is nigh! Our reward is at hand!" , TRUE);
													end_radio_transmission();
                        l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
                        
            end
          
end

script dormant f_dialog_m20_exploreable_terminal_03_0b()
dprint("f_dialog_m20_exploreable_terminal_03_0b");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M20_EXPLOREABLE_TERMINAL_03_0b", l_dialog_id, TRUE, DEF_DIALOG_STYLE_SKIP(), FALSE, "", 0.25 );    
							//	hud_play_pip_from_tag( "bink\campaign\m20_a_60" );
								dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m20\m20_crater_explore_terminal_3_00116', FALSE, NONE, 0.0, "", "Cortana : This communication's being broadcast to all Covenant in the area. Let me put it through translation." );
								sleep_s(3);
								dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m20\m20_crater_explore_terminal_3_00117-cortana', FALSE, NONE, 0.0, "", "Cortana : 'Non-believers walk the sacred ground. Purge the heretics, so they do not foul the air of Paradise." );
								//dialog_line_cortana( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m20\m20_crater_explore_terminal_3_00105', FALSE, NONE, 0.0, "", "Cortana : I�d have thought the �holy war� thing would have gotten old by now." );
								dialog_line_cortana( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m20\m20_crater_explore_terminal_3_00106-cortana', FALSE, NONE, 0.0, "", "Cortana : The time has come to enter the Great Light. The Promethean awakening is nigh, our reward is at hand." );
								dialog_line_chief( l_dialog_id, 3, TRUE, 'sound\dialog\mission\m20\m20_crater_explore_terminal_3_00108', FALSE, NONE, 0.0, "", "Master Chief : It sounds like the Covenant were here looking for something." );
								dialog_line_cortana( l_dialog_id, 4, TRUE, 'sound\dialog\mission\m20\m20_crater_explore_terminal_3_00109', FALSE, NONE, 0.0, "", "Cortana : It�s the Covenant. Aren�t they ALWAYS looking for something?" );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end



script static void  f_dialog_m20_halsey_cpu_terminal_button_02()
dprint("f_dialog_m20_halsey_cpu_terminal_button_reaction");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_background( "CUP_TERMINAL_BUTTON", l_dialog_id, TRUE, DEF_DIALOG_STYLE_PLAY(), FALSE, "", 0.25 );    
								dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m20\m20_ai_bay_00101', FALSE, halsey_cpu_terminal, 0.0, "", "System Voice: Catherine Halsey Research Excerpt. Eleven February 2550.", TRUE);
								dialog_line_npc( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m20\m20_ai_bay_00104', FALSE, halsey_cpu_terminal, 0.0, "", "Dr. Halsey : The interesting factor here isn't that H-1 disabled the viral termination code I implanted in her matrix.", TRUE);
								dialog_line_npc( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m20\m20_ai_bay_00105', FALSE, halsey_cpu_terminal, 0.0, "", "Dr. Halsey : These metrics imply its success wasn't just unlikely, but that even the accepted 7-year life cycle estimates may not apply.", TRUE);
								dialog_line_npc( l_dialog_id, 3, TRUE, 'sound\dialog\mission\m20\m20_ai_bay_00106', FALSE, halsey_cpu_terminal, 0.0, "", "Dr. Halsey : Thus far, I've determined that the unique circumstances of her creation have triggered what I can only refer to as a recessive variant in the AI seed.",  TRUE);
								dialog_line_npc( l_dialog_id, 4, TRUE, 'sound\dialog\mission\m20\m20_ai_bay_00106a', FALSE, halsey_cpu_terminal, 0.0, "", "Dr. Halsey : As her architect, I'm currently at a loss as to the origin of this rogue element.", TRUE);
								dialog_line_npc( l_dialog_id, 5, TRUE, 'sound\dialog\mission\m20\m20_ai_bay_00107', FALSE, halsey_cpu_terminal, 0.0, "", "Dr. Halsey : Very curious.", TRUE);				
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
				 
				 object_create(halsey_cpu_terminal_button);
				 sleep_s(1);
				 thread(m20_halsey_cpu_terminal());
end
								


script dormant f_dialog_m20_crater_terminal_1_post_use()
dprint("f_dialog_m20_crater_terminal_1_post_use");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M20_CRATER_TERMINAL_1_POST_USE", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
								dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m20\m20_crater_terminal_1_post_use_00100', FALSE, NONE, 0.0, "", "Cortana: Is it just me, or is the idea of ancient alien planets breaking the laws of physics not super comforting?" );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end


script dormant f_dialog_m20_crater_terminal_3_post_use()
dprint("f_dialog_m20_crater_terminal_3_post_use");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M20_CRATER_TERMINAL_3_POST_USE", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
								dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m20\m20_crater_terminal_3_post_use_00100', FALSE, NONE, 0.0, "", "Cortana: Stranded on an artificial world, surrounded by religious extremists, and no way home..." );
			          dialog_line_chief( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m20\m20_crater_terminal_3_post_use_00101', FALSE, NONE, 0.0, "", "Chief: We've seen worse." ); 
			          dialog_line_cortana( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m20\m20_crater_terminal_3_post_use_00102', FALSE, NONE, 0.0, "", "Cortana: Yes, well, the day is still young." );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end

script dormant f_dialog_scouting_party_arrive()
dprint("f_dialog_scouting_party_arrive");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M20_SCOUTING_PARTY", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
								dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m20\M20_crater_covenant_00100', FALSE, NONE, 0.0, "", "Cortana : Scouting party. They found us" );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end

script dormant f_dialog_scouting_party_defeated()
dprint("f_dialog_scouting_party_arrive");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M20_SCOUTING_PARTY_DEFEATED", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
								dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m20\M20_crater_covenant_00101', FALSE, NONE, 0.0, "", "Cortana : If there are more scouts like those, it should make it easier to find a ship. Let's go." );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end

script dormant f_dialog_m20_first_infinity_signal()
dprint("f_dialog_m20_first_infinity_signal");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
						
					l_dialog_id = dialog_start_foreground( "M20_FIRST_INFINITY_SIGNAL", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
					
					thread(f_dialog_m20_first_infinity_signal_pip());

					// Cortana/Chief dialogue is not part of the radio transmission
					dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m20\m20_crater_exit_00101', FALSE, NONE, 0.0, "", "Cortana: I'm picking up a faint transmission on the high-band." );
					dialog_line_chief( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m20\m20_crater_exit_00102', FALSE, NONE, 0.0, "", "Chief: Covenant?" ); 
			        dialog_line_cortana( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m20\m20_crater_exit_00103', FALSE, NONE, 0.0, "", "Cortana: I don't think so�the pattern's different." );
			        dialog_line_cortana( l_dialog_id, 3, TRUE, 'sound\dialog\mission\m20\m20_crater_exit_00104', FALSE, NONE, 0.0, "", "Cortana: I'll try to triangulate it's position." );
			         
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
				
end

// helper function so we can do a sleep after starting the pip and turn off the radio hud at the correct time
// while still allowing chief and cortana to talk over the pip
script static void f_dialog_m20_first_infinity_signal_pip()
	start_radio_transmission( "unidentified_transmission_name" );
	hud_play_pip_from_tag( "bink\campaign\m20_b_60" );
	sleep(sound_max_time('sound\dialog\mission\m20\m20_postcrater_transition_firstsignalcontact_00100_soundstory'));
	end_radio_transmission(); 			
end

script dormant f_dialog_m20_vista_exchange()
dprint("f_dialog_m20_vista_exchange");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M20_VISTA_EXCHANGE", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
					      dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m20\m20_crater_vista_00101', FALSE, NONE, 0.0, "", "Cortana : Impressive." );
								//dialog_line_chief( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m20\m20_crater_vista_00103', FALSE, NONE, 0.0, "", "Master Chief : This is a lot more activity than we saw on the Halo rings." );
								//dialog_line_cortana( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m20\m20_crater_vista_00102', FALSE, NONE, 0.0, "", "Cortana : And as far as I can tell, it�s just waking up." );
								//dialog_line_cortana( l_dialog_id, 3, TRUE, 'sound\dialog\mission\m20\m20_crater_vista_00104', FALSE, NONE, 0.0, "", "Cortana : Obviously not all Forerunner installations are built alike." );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end

script dormant f_dialog_m20_burnedout_warthog()
dprint("f_dialog_m20_burnedout_warthog");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M20_WARTHOG_01", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
								dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m20\m20_warthog_callout_00100a', FALSE, NONE, 0.0, "", "Cortana : This warthog's actually in good shape, all things considered.  We even might find one intact." );
								dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m20\m20_warthog_callout_00100b', FALSE, NONE, 0.0, "", "Cortana : We even might find one intact." );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end



script dormant f_dialog_m20_warthog_01()
dprint("f_dialog_m20_warthog_01");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M20_WARTHOG_01", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
								dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m20\m20_warthog_callout_00100', FALSE, NONE, 0.0, "", "Cortana: Warthogs - and still in one piece." );
			          dialog_line_cortana( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m20\m20_warthog_callout_00101', FALSE, NONE, 0.0, "", "Cortana: Nice to see your luck is holding out." ); 
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end

script dormant f_dialog_m20_warthog_02()
dprint("f_dialog_m20_warthog_02");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M20_WARTHOG_02", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
								//dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m20\m20_warthog_callout_00102', FALSE, NONE, 0.0, "", "Cortana: Finally, something familiar." );         
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end


script dormant f_dialog_m20_warthog_return()
dprint("f_dialog_m20_warthog_return");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M20_WARTHOG_RETURN", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
								dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m20\M20_warthog_callout_00104', FALSE, NONE, 0.0, "", "Cortana: This looks like it could be a long haul. Probably better if we can find a Warthog back in the wreckage." );         
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end

script dormant f_dialog_m20_callout_covenant()
dprint("f_dialog_callout_covenant");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "COVENANT", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\global\global_chatter_00120', FALSE, NONE, 0.0, "", "Cortana : Covenant!" );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end

script dormant f_dialog_m20_callout_hostiles()
dprint("f_dialog_callout_hostiles");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "HOSTILES", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\global\global_chatter_00119', FALSE, NONE, 0.0, "", "Cortana : Hostiles!" );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end

/*script dormant f_dialog_m20_graveyard_vo_a()
dprint("f_dialog_m20_graveyard_vo_a");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
			if( b_explorable_terminal_3 == FALSE ) then
				
	//if the player DID NOT activate Terminal 3. (COVENANT ORDERS)
				sleep_s(2.1);
					l_dialog_id = dialog_start_foreground( "M20_GRAVEYARD_VO_A", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
								dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m20\m20_graveyard_vo_a_00100', FALSE, NONE, 0.0, "", "Cortana: My ability to track Covenant movements is limited inside the roof." );
			          dialog_line_cortana( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m20\m20_graveyard_vo_a_00101', FALSE, NONE, 0.0, "", "Cortana: If we're going to hijack a ship, we'll have to figure out where they're landing first." );
			          dialog_line_chief( l_dialog_id, 3, TRUE, 'sound\dialog\mission\m20\m20_graveyard_vo_a_00102', FALSE, NONE, 0.0, "", "Chief: You sound like you have a plan." ); 
			          dialog_line_cortana( l_dialog_id, 4, TRUE, 'sound\dialog\mission\m20\m20_graveyard_vo_a_00103', FALSE, NONE, 0.0, "", "Cortana: As a matter of fact, I do." );
			          dialog_line_cortana( l_dialog_id, 5, TRUE, 'sound\dialog\mission\m20\m20_graveyard_vo_a_00104', FALSE, NONE, 0.0, "", "Cortana: Figure out what the Covenant came here for and we'll know where their ships will be." );
			          dialog_line_chief( l_dialog_id, 6, TRUE, 'sound\dialog\mission\m20\m20_graveyard_vo_a_00105', FALSE, NONE, 0.0, "", "Chief: On Halo, the Covenant were looking for a weapon." ); 			          
			          dialog_line_cortana( l_dialog_id, 7, TRUE, 'sound\dialog\mission\m20\m20_graveyard_vo_a_00106', FALSE, NONE, 0.0, "", "Cortana: Always a possbility." );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
	else
	//if the player DID activate terminal 3. (COVENANT ORDERS)
	  sleep_s(2.1);
				
					l_dialog_id = dialog_start_foreground( "M20_GRAVEYARD_VO_B", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
								dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m20\m20_graveyard_vo_a_00109', FALSE, NONE, 0.0, "", "Cortana: Chief, there's something about those Covenant logs I don't like. We've dealt with zealots before, but..." );
								dialog_line_chief( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m20\m20_graveyard_vo_a_00110', FALSE, NONE, 0.0, "", "Chief: But these sounded like they knew something the others didn't." ); 
			          dialog_line_cortana( l_dialog_id, 3, TRUE, 'sound\dialog\mission\m20\m20_graveyard_vo_a_00111', FALSE, NONE, 0.0, "", "Cortana: Exactly. They're more fanatical somehow. Not that the Covenant weren't fanatical before." );
			          dialog_line_chief( l_dialog_id, 4, TRUE, 'sound\dialog\mission\m20\m20_graveyard_vo_a_00112', FALSE, NONE, 0.0, "", "Chief: We've been gone a long time." ); 
			          dialog_line_cortana( l_dialog_id, 5, TRUE, 'sound\dialog\mission\m20\m20_graveyard_vo_a_00113', FALSE, NONE, 0.0, "", "Cortana: Still..." );
			          dialog_line_chief( l_dialog_id, 6, TRUE, 'sound\dialog\mission\m20\m20_graveyard_vo_a_00114', FALSE, NONE, 0.0, "", "Chief: The priority right now is to find a way off this planet." ); 
			          dialog_line_cortana( l_dialog_id, 7, TRUE, 'sound\dialog\mission\m20\m20_graveyard_vo_a_00115', FALSE, NONE, 0.0, "", "Cortana: Is that your subtle way of telling me to let sleeping dogs lie?" );
			          dialog_line_chief( l_dialog_id, 8, TRUE, 'sound\dialog\mission\m20\m20_graveyard_vo_a_00116', FALSE, NONE, 0.0, "", "Chief: Just stating the facts." ); 			          
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
			end
end*/

script dormant f_dialog_m20_guardpostex_covenant_c()
dprint("f_dialog_m20_guardpostex_covenant_c");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
	     	
					l_dialog_id = dialog_start_foreground( "M20_GRAVEYARD_VO_C", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    		
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m20\m20_guardpostex_transition_00100', FALSE, NONE, 0.0, "", "Cortana : If we're going to hijack a ship from these Covenant, we're going to have to find where they're landing first." );
						dialog_line_chief( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m20\m20_guardpostex_transition_00101', FALSE, NONE, 0.0, "", "Master Chief : I don't suppose you have a plan for that." );
						dialog_line_cortana( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m20\m20_guardpostex_transition_00102', FALSE, NONE, 0.0, "", "Cortana : We could always ask nicely." )	;
						dialog_line_chief( l_dialog_id, 3, TRUE, 'sound\dialog\mission\m20\m20_guardpostex_transition_00103', FALSE, NONE, 0.0, "", "Master Chief : Asking isn't my strong suit." );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );

end

script dormant f_dialog_m20_camo_drop()
local long l_dialog_id = DEF_DIALOG_ID_NONE();
	     	
					l_dialog_id = dialog_start_foreground( "M20_CAMO_DROP", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    		
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m20\m20_armor_ability_intro_00100', FALSE, NONE, 0.0, "", "Cortana : That Elite dropped his camo module. Let's have a look." );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );


end

script dormant f_dialog_m20_camo_pickup()
local long l_dialog_id = DEF_DIALOG_ID_NONE();
	     	
					l_dialog_id = dialog_start_foreground( "M20_CAMO_DROP", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    		
					hud_play_pip_from_tag( "bink\campaign\M20_GLO_AC_60" );
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m20\m20_armor_ability_intro_00101', FALSE, NONE, 0.0, "", "Cortana : I'll run a soft patch to it from the suit. Never know what might come in handy." );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );


end

script dormant f_dialog_m20_graveyard_signal()
dprint("f_dialog_m20_graveyard_signal");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					
					start_radio_transmission( "unidentified_transmission_name" );
					l_dialog_id = dialog_start_foreground( "M20_GRAVEYARD_SIGNAL", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    				
					hud_play_pip_from_tag( "bink\campaign\m20_c_60" );
								dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m20\m20_cathedral_reveal_00100', FALSE, NONE, 0.0, "", "Cortana: Chief, I'm reading that strange signal again, stronger this time." );
			          dialog_line_chief( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m20\m20_cathedral_reveal_00101', FALSE, NONE, 0.0, "", "Chief: Do you think there's something to it?" ); 
			          dialog_line_cortana( l_dialog_id, 3, TRUE, 'sound\dialog\mission\m20\m20_cathedral_reveal_00102', FALSE, NONE, 0.0, "", "Cortana: I'm curious more than anything. Its behavior is... odd. " );
			          end_radio_transmission();
			          //dialog_line_cortana( l_dialog_id, 4, TRUE, 'sound\dialog\mission\m20\m20_cathedral_reveal_00103', FALSE, NONE, 0.0, "", "Cortana: I'm going to keep monitoring it." );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
				 
end

script dormant f_dialog_m20_cathedral_reveal()
dprint("f_dialog_m20_guardpostex_covenant_b");
local long l_dialog_id = DEF_DIALOG_ID_NONE();

					l_dialog_id = dialog_start_foreground( "M20_GUARDPOSTEX_COVENANT_B", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
								dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m20\m20_cathedral_reveal_00108', FALSE, NONE, 0.0, "", "Cortana : Chief, several patrols just reported in outside that structure over the ridge. " );
								dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m20\m20_cathedral_reveal_00109', FALSE, NONE, 0.0, "", "Cortana : It's possible they're on to something." );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
			
				
end


script dormant  f_dialog_m20_graveyard_Rampancy_start()
			dprint("f_dialog_m20_graveyard_Rampancy_start");
			local long l_dialog_id = DEF_DIALOG_ID_NONE();
						
						l_dialog_id = dialog_start_foreground( "M20_GRAVEYARD_RAMPANCY_START", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
								dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m20\m20_graveyard_vo_a_00117', FALSE, NONE, 0.0, "", "Cortana : Chief... about my condition.  " );
								dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m20\m20_graveyard_vo_a_00118', FALSE, NONE, 0.0, "", "Cortana : I didn't want to mention it seeing how its a complete longshot, but since you brought it up - " );
								dialog_line_cortana( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m20\m20_graveyard_vo_a_00119', FALSE, NONE, 0.0, "", "Cortana : It IS possible that getting home could help me find a solution for my rampancy." );
								dialog_line_chief( l_dialog_id, 3, TRUE, 'sound\dialog\mission\m20\m20_graveyard_vo_a_00120', FALSE, NONE, 0.0, "", "Master Chief : How?" );
								dialog_line_cortana( l_dialog_id, 4, TRUE, 'sound\dialog\mission\m20\m20_graveyard_vo_a_00121', FALSE, NONE, 0.0, "", "Cortana : As far as I know, I'm the only A.I. ever generated from living tissue - a clone of Dr. Halsey to be precise. " );
								dialog_line_cortana( l_dialog_id, 5, TRUE, 'sound\dialog\mission\m20\m20_graveyard_vo_a_00122', FALSE, NONE, 0.0, "", "Cortana : It may be possible to recompile my neural net by replicating those same conditions." );
								dialog_line_cortana( l_dialog_id, 6, TRUE, 'sound\dialog\mission\m20\m20_graveyard_vo_a_00123', FALSE, NONE, 0.0, "", "Cortana : But that means getting to Halsey before it gets to me." );
				//				dialog_line_chief( l_dialog_id, 7, TRUE, 'sound\dialog\mission\m20\m20_graveyard_vo_a_00124', FALSE, NONE, 0.0, "", "Master Chief : You should have woken me.  We could have--" );
				//				dialog_line_cortana( l_dialog_id, 8, TRUE, 'sound\dialog\mission\m20\m20_graveyard_vo_a_00125', FALSE, NONE, 0.0, "", "Cortana : What - so we could have both grown old and died floating out there in space?" );
				//				dialog_line_cortana( l_dialog_id, 9, TRUE, 'sound\dialog\mission\m20\m20_graveyard_vo_a_00126', FALSE, NONE, 0.0, "", "Cortana : Besides, you're not exactly the type to keep track of birthdays." );       
								//dialog_line_chief( l_dialog_id, 10, TRUE, 'sound\dialog\mission\m20\m20_graveyard_vo_a_00127', FALSE, NONE, 0.0, "", "Master Chief : I'll work on it." );
							//dialog_line_chief( l_dialog_id, 11, TRUE, 'sound\dialog\mission\m20\m20_graveyard_vo_a_00128', FALSE, NONE, 0.0, "", "Master Chief : Right now, let's just find a way home." );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end		




script dormant f_dialog_m20_cathedral_signal()
dprint("f_dialog_m20_cathedral_signal");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					
					l_dialog_id = dialog_start_foreground( "M20_CATHEDRAL_SIGNAL", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
					hud_play_pip_from_tag( "bink\campaign\m20_d_60" );
								dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m20\m20_cathedral_entrance_00100', FALSE, NONE, 0.0, "", "Cortana : There's that phantom signal again." );
								  start_radio_transmission( "unidentified_transmission_name" );
									dialog_line_npc( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m20\m20_cathedral_entrance_00101', FALSE, NONE, 0.0, "", "Infinity Comm : Innnn nnnnnnnnn", TRUE);
									end_radio_transmission();
									dialog_line_chief( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m20\m20_cathedral_entrance_00102', FALSE, NONE, 0.0, "", "Master Chief : I heard something that time." );
									//dialog_line_cortana( l_dialog_id, 3, TRUE, 'sound\dialog\mission\m20\m20_cathedral_entrance_00103', FALSE, NONE, 0.0, "", "Cortana : No hits on the Cratylus spectrum but there is DEFINITELY something there." );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
				 
end





script dormant f_dialog_m20_cathedral_map_open()
dprint("f_dialog_m20_cathedral_map_open");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M20_CATHEDRAL_MAP_OPEN", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
								dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m20\m20_cartographer_00114', FALSE, NONE, 0.0, "", "Cortana : Call it a hunch, but I don't think they want you playing with their toys." );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end



script dormant f_dialog_m20_not_fire_on_sentinels()
dprint("f_dialog_m20_not_fire_on_sentinels");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M20_NOT_FIRE_ON_SENTINELS", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
								dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m20\m20_cartographer_00115', FALSE, NONE, 0.0, "", "Cortana : We're going to have to do more than look tough if we want to see what they're guarding." );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end



/*script dormant f_dialog_m20_map_button_01()
dprint("f_dialog_m20_map_button_01");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M20_MAP_BUTTON_01", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
								dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m20\m20_cartographer_00116', FALSE, NONE, 0.0, "", "Cortana : Well THAT was easy." );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
				 wake(f_dialog_m20_map_button_02);
end
*/
/*
IVO: The VO is now controlled by Puppeteer
script dormant f_dialog_m20_map_button_02()
dprint("f_dialog_m20_map_button_02");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M20_MAP_BUTTON_02", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
								dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m20\m20_cartographer_00117', FALSE, NONE, 0.0, "", "Cortana : It's a localized site Cartographer - hm, OK - 'in service of Forerunner Shield World, designate Requiem'." );
								dialog_line_chief( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m20\m20_cartographer_00118', FALSE, NONE, 0.0, "", "Master Chief : Now we know where we are, at least" );
								dialog_line_cortana( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m20\m20_cartographer_00120', FALSE, NONE, 0.0, "", "Cortana : Let's see if it can tell us what the Covenant are so interested in." );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
				 wake(f_dialog_m20_map_button_03);
end
*/


script dormant f_dialog_m20_map_button_03()
dprint("f_dialog_m20_map_button_03");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
				//	thread (story_blurb_add("domain", "THE CARTOGRAPHER GOES BLUE"));
					l_dialog_id = dialog_start_foreground( "M20_MAP_BUTTON_03", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
								dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m20\m20_cartographer_00121', FALSE, NONE, 0.0, "", "Cortana : Huh." );
								dialog_line_chief( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m20\m20_cartographer_00122', FALSE, NONE, 0.0, "", "Master Chief : What happened?" );
								dialog_line_cortana( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m20\m20_cartographer_00123', FALSE, NONE, 0.0, "", "Cortana : I don't know, it locked up." );
								//dialog_line_cortana( l_dialog_id, 3, TRUE, 'sound\dialog\mission\m20\m20_cartographer_00125', FALSE, NONE, 0.0, "", "Cortana : We beter have a look around." );
								
								
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
				 //wake(f_map_complete);
end

script dormant f_dialog_m20_map_button_post()
dprint("f_dialog_m20_map_button_post");
local long l_dialog_id = DEF_DIALOG_ID_NONE();

					l_dialog_id = dialog_start_foreground( "M20_MAP_BUTTON_POST", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
								dialog_line_chief( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m20\m20_cartographer_00125a', FALSE, NONE, 0.0, "", "Master Chief : Nothing." );
								/*dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m20\m20_cartographer_00125', FALSE, NONE, 0.0, "", "Cortana : We beter have a look around." );
								dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m20\m20_cartographer_00126', FALSE, NONE, 0.0, "", "Cortana : Hopefully we can find some way to get this Cartographer back online." );*/
							//	dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m20\m20_cartographer_00127', FALSE, NONE, 0.0, "", "Cortana: If this Cartographer�s similar to the others we�ve used, there�s no telling what we could learn from it. Assuming we�re able to reactivate it." );
							//	dialog_line_cortana( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m20\m20_cartographer_00125', FALSE, NONE, 0.0, "", "Cortana : It�s probable that the Forerunners had ships docked here on Requiem. If so, restoring the Cartographer should tell us." );
							//	dialog_line_cortana( l_dialog_id, 3, TRUE, 'sound\dialog\mission\m20\m20_cartographer_00126', FALSE, NONE, 0.0, "", "Cortana : The Covenant aren�t that smart. Whatever they�re after, chances are that Cartographer will tell us if we can find a way to reactivate it." );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
				 //wake(f_map_complete);
				 //thread(m20_blip_terminal());
				 thread(m20_objective_2_nudge());
end
								

script dormant f_dialog_m20_blip_terminal()
dprint("f_dialog_m20_blip_terminal_locations");
				 
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M20_BLIP_TERMINAL_LOCATIONS", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
									dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m20\m20_cathedral_librarian_00106', FALSE, NONE, 0.0, "", "Cortana : I'm detecting power fluctuations in several locations. I'll put them up for you." );
					
									//wake(m20_blip_terminal_locations);
									dprint ("blipping both terminal locations now");
					
									dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m20\m20_cartographer_00126', FALSE, NONE, 0.0, "", "Cortana : Hopefully we can find some way to get this Cartographer back online." );
					l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );			
				 
				 
end

script dormant f_dialog_m20_mantle_approach()
dprint("f_dialog_m20_mantle_approach");

					SetNarrativeFlagOnLocalPlayers(13, TRUE);
					l_dlg_mantle_approach = dialog_start_foreground( "M20_MAP_BUTTON_03", l_dlg_mantle_approach, TRUE, DEF_DIALOG_STYLE_QUEUE(), TRUE, "", 0.25 );    
								dialog_line_chief( l_dlg_mantle_approach, 0, (not b_cathedral_cut_scene_playing == TRUE), 'sound\dialog\mission\m20\m20_cathedral_mantle_00100', TRUE, NONE, 0.0, "", "Master Chief : What does it say?" );
								dialog_line_cortana( l_dlg_mantle_approach, 1, (not b_cathedral_cut_scene_playing == TRUE), 'sound\dialog\mission\m20\m20_cathedral_mantle_00101', TRUE, NONE, 0.0, "", "Cortana : Guardianship for all living things lies with those whose evolution is most complete." );		
								dialog_line_cortana( l_dlg_mantle_approach, 2, (not b_cathedral_cut_scene_playing == TRUE), 'sound\dialog\mission\m20\m20_cathedral_mantle_00102', TRUE, NONE, 0.0, "", "Cortana : The Mantle of responsibility shelters all." );
								dialog_line_cortana( l_dlg_mantle_approach, 3, (not b_cathedral_cut_scene_playing == TRUE), 'sound\dialog\mission\m20\m20_cathedral_mantle_00103', TRUE, NONE, 0.0, "", "Cortana : Very interesting." );
						dialog_line_chief( l_dlg_mantle_approach, 4, (not b_cathedral_cut_scene_playing == TRUE), 'sound\dialog\mission\m20\m20_cathedral_mantle_00104', TRUE, NONE, 0.0, "", "Master Chief : Maybe... but it won't get us home." );
			   	
				 l_dlg_mantle_approach = dialog_end( l_dlg_mantle_approach, TRUE, TRUE, "" );
end


script dormant f_dialog_m20_librarian_pre()
dprint("f_dialog_m20_librarian_pre");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M20_BLIP_LIBRARIAN_PRE", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
									dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m20\m20_cathedral_librarian_00107', FALSE, NONE, 0.0, "", "Cortana : There's a terminal, center of the chamber. Try to access it." );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );			
end


script dormant f_dialog_m20_Cathedral_Librarian_terminal()
dprint("f_dialog_m20_Cathedral_Librarian_terminal");
			

					l_dlg_cathedral_Librarian_terminal = dialog_start_foreground( "CATHEDRAL_LIBRARIAN_TERMINAL", l_dlg_cathedral_Librarian_terminal, TRUE, DEF_DIALOG_STYLE_QUEUE(), TRUE, "", 0.25 );    
						dialog_line_cortana( l_dlg_cathedral_Librarian_terminal, 1, (not b_second_terminal_active == TRUE), 'sound\dialog\mission\m20\m20_cathedral_librarian_00109', TRUE, NONE, 0.0, "", "Cortana : It's alright." );
						dialog_line_cortana( l_dlg_cathedral_Librarian_terminal, 2, (not b_second_terminal_active == TRUE), 'sound\dialog\mission\m20\m20_cathedral_librarian_00110', TRUE, NONE, 0.0, "", "Cortana : This energy is actually a ferroelectic datafield." );
						dialog_line_cortana( l_dlg_cathedral_Librarian_terminal, 3, (not b_second_terminal_active == TRUE), 'sound\dialog\mission\m20\m20_cathedral_librarian_00111', TRUE, NONE, 0.0, "", "Cortana : Your shields are just cycling in response to the chamber's charge." );
						dialog_line_chief( l_dlg_cathedral_Librarian_terminal, 4, (not b_second_terminal_active == TRUE), 'sound\dialog\mission\m20\m20_cathedral_librarian_00112', TRUE, NONE, 0.0, "", "Master Chief : Will it get the cartographer back online?" );
						dialog_line_cortana( l_dlg_cathedral_Librarian_terminal, 5, (not b_second_terminal_active == TRUE), 'sound\dialog\mission\m20\m20_cathedral_librarian_00113', TRUE, NONE, 0.0, "", "Cortana : Partially." );
						dialog_line_cortana( l_dlg_cathedral_Librarian_terminal, 6, (not b_second_terminal_active == TRUE), 'sound\dialog\mission\m20\m20_cathedral_librarian_00114', TRUE, NONE, 0.0, "", "Cortana : This type of processing system usually works in parallel." );
						dialog_line_cortana( l_dlg_cathedral_Librarian_terminal, 7, (not b_second_terminal_active == TRUE), 'sound\dialog\mission\m20\m20_cathedral_librarian_00115', TRUE, NONE, 0.0, "", "Cortana : We'll have to locate its twin." );
						dialog_line_chief( l_dlg_cathedral_Librarian_terminal, 8, (not b_second_terminal_active == TRUE), 'sound\dialog\mission\m20\m20_cathedral_librarian_00116', TRUE, NONE, 0.0, "", "Master Chief : What was that?" );
						dialog_line_cortana( l_dlg_cathedral_Librarian_terminal, 9, (not b_second_terminal_active == TRUE), 'sound\dialog\mission\m20\m20_cathedral_librarian_00117', TRUE, NONE, 0.0, "", "Cortana : Your guess is as good as mine." );				 
						
					
					
				  l_dlg_cathedral_Librarian_terminal = dialog_end( l_dlg_cathedral_Librarian_terminal, TRUE, TRUE, "" );
	wake(f_dialog_m20_Cathedral_covenant_inside);
		b_first_core_complete = TRUE;

end
script dormant f_dialog_m20_Cathedral_covenant_inside()
dprint("f_dialog_m20_Cathedral_covenant_inside");
    sleep_until( volume_test_players(exit_core_01) or volume_test_players(exit_core_02), 1);

local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "CATHEDRAL_COVENANT_INSIDE", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m20\m20_cathedral_covenant_00100', TRUE, NONE, 0.0, "", "Cortana : The Covenant. They found a way inside." );
					
				  l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );


end


script dormant f_dialog_m20_Cathedral_Librarian_terminal_01()
dprint("f_dialog_m20_Cathedral_Librarian_terminal_01");
	kill_script(m20_blip_terminal);
				sleep_forever(f_dialog_m20_blip_terminal);
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "CATHEDRAL_LIBRARIAN_TERMINAL_01", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
						dialog_line_chief( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m20\m20_cathedral_librarian_00108', FALSE, NONE, 0.0, "", "Master Chief : What's it doing?" );
					
				  l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );


end


script dormant f_dialog_m20_sentinel_intro()
dprint("f_dialog_m20_sentinel_intro(");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M20_MAP_SENTINEL_INTRO", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
								dialog_line_chief( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m20\m20_cathedral_entrance_00104', FALSE, NONE, 0.0, "", "Master Chief : Sentinels." );
								dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m20\m20_cathedral_entrance_00105', FALSE, NONE, 0.0, "", "Cortana : I wondered when they'd show up." );
								//dialog_line_cortana( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m20\m20_chatter_00115', FALSE, NONE, 0.0, "", "Cortana : If they're like the ones on the Halos, they should be programmed to only respond if provoked." );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end

script dormant f_dialog_m20_console_nudge()
dprint("f_dialog_m20_console_nudge");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M20_MAP_CONSOLE_NUDGE", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
								dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m20\m20_chatter_00112', FALSE, NONE, 0.0, "", "Cortana: There. Chief: a console, in the back." );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end


script dormant f_dialog_m20_Cathedral_didact_terminal_pre_use()
dprint("f_dialog_m20_Cathedral_didact_terminal_pre_use");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M20_CATHEDRAL_DIDACT_TERMINAL_PRE_USE", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
								dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m20\m20_cathedral_didact_00119', FALSE, NONE, 0.0, "", "Cortana : That's the other datafield chamber." );
								dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m20\m20_cathedral_didact_00120', FALSE, NONE, 0.0, "", "Cortana : Go on. Activate the terminal." );								
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end
	
		
script static void f_dialog_m20_Cathedral_didact_terminal_02()
dprint("f_dialog_m60_marines_bunker_01");
static long l_dialog_id = DEF_DIALOG_ID_NONE();
						dialog_end_interrupt(l_dlg_cathedral_Librarian_terminal);
						b_second_terminal_active = TRUE;
						sleep_s(2);
            	
                l_dialog_id = dialog_start_background( "MARINES_BUNKER_01", l_dialog_id, TRUE, DEF_DIALOG_STYLE_INTERRUPT(), FALSE, "", 0.0 );
                hud_play_pip_from_tag( "bink\campaign\M20_E_60" );
                start_radio_transmission( "unidentified_transmission_name" );
							dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m20\m20_cathedral_didact_00122_soundstory', FALSE, NONE, 0.0, "", "Del Rio : UNSC Infinity to Fleetcom Actual. ", TRUE);
								dialog_line_npc( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m20\m20_cathedral_didact_00123', FALSE, NONE, 0.0, "", "Del Rio : We've got an issue with relay Ursa Minor 8-8-3.", TRUE);
								dialog_line_npc( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m20\m20_cathedral_didact_00124', FALSE, NONE, 0.0, "", "Del Rio : Can you find us a clearer patch?", TRUE);
								
								dialog_line_npc( l_dialog_id, 3, TRUE, 'sound\dialog\mission\m20\m20_cathedral_didact_00129', FALSE, NONE, 0.0, "", "Fleetcom Watch : This is Fleetcom, Infinity.", TRUE);
								dialog_line_npc( l_dialog_id, 4, TRUE, 'sound\dialog\mission\m20\m20_cathedral_didact_00130', FALSE, NONE, 0.0, "", "Fleetcom Watch : Moving comm to another slipspace relay�", TRUE);
								end_radio_transmission();
                        l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
                        
            end
   

script dormant f_dialog_m20_Cathedral_didact_terminal()
dprint("f_dialog_m20_Cathedral_didact_terminal");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					
					sleep_s(4);
					if ( (l_dlg_cathedral_Librarian_terminal != DEF_DIALOG_ID_NONE()) and 
					     (l_dlg_cathedral_Librarian_terminal != DEF_DIALOG_ID_INVALID()) and
					     (dialog_foreground_current_get() == l_dlg_cathedral_Librarian_terminal)) then
							dprint("Killing librarian terminal");
							kill_thread(l_dlg_cathedral_Librarian_terminal);
							sleep(1);
							b_cortana_is_speaking = FALSE;
							b_chief_is_speaking = FALSE;
					end
					l_dialog_id = dialog_start_foreground( "M20_CATHEDRAL_DIDACT_TERMINAL", l_dialog_id, TRUE, DEF_DIALOG_STYLE_INTERRUPT(), FALSE, "", 0.25 );    
								//dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m20\m20_cathedral_didact_00121', FALSE, NONE, 0.0, "", "Cortana : It's OK! It's only temporary!" );
								dialog_line_chief( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m20\m20_cathedral_didact_00125', FALSE, NONE, 0.0, "", "Master Chief : Is that the same signal--" );
								dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m20\m20_cathedral_didact_00126', FALSE, NONE, 0.0, "", "Cortana : YES!" );
								dialog_line_cortana( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m20\m20_cathedral_didact_00127', FALSE, NONE, 0.0, "", "Cortana : Mayday mayday mayday!" );
								dialog_line_cortana( l_dialog_id, 3, TRUE, 'sound\dialog\mission\m20\m20_cathedral_didact_00128', FALSE, NONE, 0.0, "", "Cortana : UNSC A.I. Cortahna to Infinity, please respond!" );								
								sleep_s(2);
								dialog_line_cortana( l_dialog_id, 4, TRUE, 'sound\dialog\mission\m20\m20_cathedral_didact_00131', FALSE, NONE, 0.0, "", "Cortana : No response, but from the strength of that signal, the Infinity has to be close by!" );
								sleep_s(1);
								dialog_line_cortana( l_dialog_id, 5, TRUE, 'sound\dialog\mission\m20\m20_cathedral_didact_00132', FALSE, NONE, 0.0, "", "Cortana : The Cartographer should be back online." );
								dialog_line_cortana( l_dialog_id, 6, TRUE, 'sound\dialog\mission\m20\m20_cathedral_didact_00133', FALSE, NONE, 0.0, "", "Cortana : We may be able to use it to track the ship's location!" );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
				wake(m20_active_cartographer);
end



script dormant f_dialog_m20_Cathedral_didact_terminal_post_use()
dprint("f_dialog_m20_Cathedral_didact_terminal_post_use");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M20_CATHEDRAL_DIDACT_TERMINAL_POST_USE", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
								dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m20\m20_cathedral_didact_00134', FALSE, NONE, 0.0, "", "Cortana : Chief, come on!" );
								dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m20\m20_cathedral_didact_00135', FALSE, NONE, 0.0, "", "Cortana : If Infinity is on this planet, we just found our ride home! Get to the Cartographer. " );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end

script dormant f_dialog_m20_cartographer_cutscene_pre_use()
dprint("f_dialog_m20_cartographer_cutscene_pre_use");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
				l_dialog_id = dialog_start_foreground( "M20_CARTOGRAPHER_PRE_USE", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
							dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m20\m20_cathedral_cutscene_pre_use_00100', FALSE, NONE, 0.0, "", "Cortana : Good, it's back up. " );
						//dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m20\m20_cathedral_cutscene_pre_use_00101', FALSE, NONE, 0.0, "", "Cortana : Insert me into the console." );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end

script dormant f_dialog_m20_cartographer_finish_covenant()
dprint("f_dialog_m20_cartographer_finish_covenant");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
				l_dialog_id = dialog_start_foreground( "M20_CARTOGRAPHER_FINISH_COVENANT", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
							dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m20\m20_Cathedral_didact_terminal_post_use_00103', FALSE, NONE, 0.0, "", "Cortana : We can�t give them access to the Cartographer. " );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end




script dormant f_dialog_m20_Cathedral_cutscene_post_use()
dprint("f_dialog_m20_Cathedral_cutscene_post_use");
wake(m20_didact_title);
	sleep_s(1.5);
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M20_CATHEDRAL_CUTSCENE_POST_USE", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
								dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m20\m20_Cathedral_cutscene_post_use_00101', FALSE, NONE, 0.0, "", "Cortana: Let's get to that Terminus and find Infinity." );
								sleep_s(2);
								dialog_line_chief( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m20\m20_Cathedral_shieldroom_00100', FALSE, NONE, 0.0, "", "Master Chief: What do you know about Infinity?" );
								dialog_line_cortana( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m20\m20_Cathedral_shieldroom_00102', FALSE, NONE, 0.0, "", "Cortana: Not much. She was supposed to be massive, but the project was only in prototype when we left." );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
				// wake(f_dialog_m20_shieldroom_blocked);
end

script dormant f_dialog_m20_shieldroom_blocked()
dprint("f_dialog_m20_shieldroom_blocked");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M20_SHIELDROOM_BLOCKED", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
								dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m20\m20_cathedral_shieldroom_00103', FALSE, NONE, 0.0, "", "Cortana : If I was paranoid, I'd think someone didn't want us to leave." );
								dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m20\m20_cathedral_shieldroom_00104', FALSE, NONE, 0.0, "", "Cortana : Well, the only way out is through." );
								dialog_line_cortana( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m20\m20_cathedral_shieldroom_00105', FALSE, NONE, 0.0, "", "Cortana : See if you can find a way to deactivate this shielding." );
								dialog_line_cortana( l_dialog_id, 3, TRUE, 'sound\dialog\mission\m20\m20_cathedral_shieldroom_00106', FALSE, NONE, 0.0, "", "Cortana : Hold on. This Forerunner tech uses adaptive mechanics." );
								dialog_line_cortana( l_dialog_id, 4, TRUE, 'sound\dialog\mission\m20\m20_cathedral_shieldroom_00107', FALSE, NONE, 0.0, "", "Cortana : Pick that up for me?" );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end

script dormant f_dialog_m20_shieldroom_armor()
dprint("f_dialog_m20_shieldroom_armor");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M20_SHIELDROOM_ARMOR", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
								dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m20\m20_cathedral_shieldroom_00108', FALSE, NONE, 0.0, "", "Cortana : I think I can do something with this." );
								dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m20\m20_cathedral_shieldroom_00109', FALSE, NONE, 0.0, "", "Cortana : There." );
								dialog_line_cortana( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m20\m20_cathedral_shieldroom_00110', FALSE, NONE, 0.0, "", "Cortana : Try toggling your suit enhancements." );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end

script dormant f_dialog_m20_shieldroom_activate()
dprint("f_dialog_m20_shieldroom_activate");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M20_SHIELDROOM_ACTVIATE", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
							dialog_line_chief( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m20\m20_cathedral_shieldroom_00111', FALSE, NONE, 0.0, "", "Master Chief : That could come in handy." );
							dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m20\m20_cathedral_shieldroom_00112', FALSE, NONE, 0.0, "", "Cortana : Don't say I never gave you anything." );	
							dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m20\m20_cathedral_shieldroom_00113', FALSE, NONE, 0.0, "", "Cortana : Now let's get to that Terminus and find Infinity." );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end


script dormant f_dialog_m20_bridge_elevator()
		if not 
			volume_test_players (tv_bridge_awake) or
			object_get_health (sq_bridge_start_jackals) < 1 or
			object_get_health (sq_bridge_start_grunts) < 1 or
			object_get_health (sq_bridge_start_grunt_patrol) < 1
		then
			dprint("f_dialog_m20_bridge_elevator");
			local long l_dialog_id = DEF_DIALOG_ID_NONE();
				if( b_explorable_terminal_3 == FALSE ) then
					//Chief and Cortana DO NOT know the Covenant orders to take holy sites and stop the Chief.
					l_dialog_id = dialog_start_foreground( "M20_BRIDGE_ELEVATOR", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
								dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m20\m20_bridge_elevator_00100', FALSE, NONE, 0.0, "", "Cortana: Scouts, fortifying the bridge below. Stay sharp." );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
				else
		//Chief and Cortana DO know the Covenant orders to take holy sites and stop the Chief.
				l_dialog_id = dialog_start_foreground( "M20_BRIDGE_ELEVATOR", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
								dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m20\m20_bridge_elevator_00101', FALSE, NONE, 0.0, "", "Cortana: For someone who sat idly for three years, these Covenant aren't any wasting time making themselves at home." );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
				end 
		end

end

script dormant f_dialog_m20_fall_volume()
dprint("f_dialog_m20_fall_volume");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M20_FALL_VOLUME", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
								dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m20\m20_bridge_elevator_00103', FALSE, NONE, 0.0, "", "Cortana: Would it have killed you to use the elevator?");
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end


script dormant f_dialog_m20_banshees()
dprint("f_dialog_m20_banshees");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M20_BANSHEES", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
								dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m20\m20_bridge_chatter_00100', FALSE, NONE, 0.0, "", "Cortana : Banshees - scouting the bridge. " );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end


script dormant f_dialog_m20_banshees_spot()
dprint("f_dialog_m20_banshees_spot");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M20_BANSHEES_SPOT", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
								dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m20\m20_bridge_chatter_00101', FALSE, NONE, 0.0, "", "Cortana : They�ve spotted us, Chief! Take those Banshees out, pronto! " );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end


script dormant f_dialog_M20_bridge_end()
dprint("f_dialog_M20_bridge_end");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M20_BRIDGE_END", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
					dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m20\m20_bridge_end_00106', FALSE, NONE, 0.0, "", "Cortana : AAAH!!  CHIEF!!!!" );
					sleep_s(3);
					dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m20\m20_bridge_end_00107', FALSE, NONE, 0.0, "", "Cortana : DON'T... JUST... LOOK AT THEM... SHOOT!!" );
					sleep_s(3);
					dialog_line_cortana( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m20\m20_bridge_end_00108', FALSE, NONE, 0.0, "", "Cortana : Chief... PLEASE!" );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end

script dormant f_dialog_M20_bridge_post()
dprint("f_dialog_M20_bridge_post");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M20_BRIDGE_POST", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
					dialog_line_chief( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m20\m20_bridge_end_00109', FALSE, NONE, 0.0, "", "Master Chief : What was it doing?" );
					dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m20\m20_bridge_end_00110', FALSE, NONE, 0.0, "", "Cortana : It was using an intrusion protocol to attack your suit's neural link." );
					dialog_line_cortana( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m20\m20_bridge_end_00111', FALSE, NONE, 0.0, "", "Cortana : It wasn't expecting anyone in here to put up a fight." );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end
					


script dormant f_dialog_m20_courtyard_covenant()
dprint("f_dialog_m20_courtyard_covenant");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M20_COURTYARD_COVENANT", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
								dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m20\m20_courtyard_1stfl_00100', FALSE, NONE, 0.0, "", "Cortana: Chief, the Covenant 'nets are going crazy." );
								dialog_line_cortana( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m20\m20_courtyard_1stfl_00101', FALSE, NONE, 0.0, "", "Cortana: They're ordering all units to converge on the tower." );
								dialog_line_cortana( l_dialog_id, 3, TRUE, 'sound\dialog\mission\m20\m20_courtyard_1stfl_00102', FALSE, NONE, 0.0, "", "Cortana: I guess we got their attention." );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end


script dormant f_dialog_m20_courtyard_1stfl()
dprint("f_dialog_m20_courtyard_1stfl");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M20_COURTYARD_1STFL", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
								dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m20\m20_courtyard_1stfl_00103', FALSE, NONE, 0.0, "", "Cortana: We're about to have our hands full." );
								dialog_line_cortana( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m20\m20_courtyard_1stfl_00104', FALSE, NONE, 0.0, "", "Cortana: The Elites just issued a general order - they're moving all ground teams to secure the tower entrance above us." );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end

script dormant f_dialog_m20_last_stand()
dprint("f_dialog_m20_last_stand");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
			l_dialog_id = dialog_start_foreground( "M20_LAST_STAND", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
					dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m20\m20_last_stand_00108', FALSE, NONE, 0.0, "", "Cortana : The Sentinels were trying to keep the Covenant out." );
			l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end

script dormant f_dialog_m20_door_approach()
dprint("f_dialog_m20_door_approach");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
			l_dialog_id = dialog_start_foreground( "M20_DOOR_APPROACH", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
					//dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m20\m20_last_stand_00109', FALSE, NONE, 0.0, "", "Cortana : It's locked from the inside" );
				//	dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m20\m20_last_stand_00110', FALSE, NONE, 0.0, "", "Cortana : Put me in that console and I'll try to open it." );
					dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m20\m20_last_stand_00111', FALSE, NONE, 0.0, "", "Cortana : Hunters! Hold them off til I can get us inside!" );
			l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end

/*script dormant f_dialog_m20_hunters_dead()
dprint("f_dialog_m20_hunters_dead");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
			l_dialog_id = dialog_start_foreground( "M20_HUNTERS_DEAD", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
					dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m20\m20_last_stand_00112', FALSE, NONE, 0.0, "", "Cortana : We're in! " );
					dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m20\m20_last_stand_00113', FALSE, NONE, 0.0, "", "Cortana : The hatch is unlocked. Come pick me up." );
			l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end*/



script dormant f_dialog_m20_atrium_ent()
	dprint("f_dialog_m20_atrium_ent");
	sleep_forever(m20_objective_3_nudge);
		
	local long l_dialog_id = DEF_DIALOG_ID_NONE();
	l_dialog_id = dialog_start_foreground( "M20_ATRIUM_ENT", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    														

	dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m20\m20_atrium_00100', FALSE, NONE, 0.0, "", "Cortana : While you were busy, I managed to clear up another transmission from Infinity:" );	

	start_radio_transmission( "unidentified_transmission_name" );
	hud_play_pip_from_tag( "bink\campaign\M20_F_60" );

	dialog_line_npc( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m20\m20_atrium_00101', FALSE, NONE, 0.0, "", "Del Rio : Forerunner shield-- coordinates---artifact--", TRUE);
	end_radio_transmission();

	dialog_line_chief( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m20\m20_atrium_00102', FALSE, NONE, 0.0, "", "Master Chief : Sounded like he said 'artifact'." );
	dialog_line_cortana( l_dialog_id, 3, TRUE, 'sound\dialog\mission\m20\m20_atrium_00103', FALSE, NONE, 0.0, "", "Cortana : I wonder if it's related to whatever the Covenant are after." );
	dialog_line_chief( l_dialog_id, 4, TRUE, 'sound\dialog\mission\m20\m20_atrium_00104', FALSE, NONE, 0.0, "", "Master Chief : Where's the Terminus?" );
	dialog_line_cortana( l_dialog_id, 5, TRUE, 'sound\dialog\mission\m20\m20_atrium_00105', FALSE, NONE, 0.0, "", "Cortana : The map placed it at the top of the tower." );
	//dialog_line_chief( l_dialog_id, 6, TRUE, 'sound\dialog\mission\m20\m20_atrium_00106', FALSE, NONE, 0.0, "", "Master Chief : Then let's get up there." );
	//dialog_line_chief( l_dialog_id, 7, TRUE, 'sound\dialog\mission\m20\m20_atrium_00107', FALSE, NONE, 0.0, "", "Master Chief : Infinity may not stay in the planet's core forever." );
	
	l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
		
end

script dormant f_dialog_m20_atrium_waypoint()
dprint("f_dialog_m20_atrium_waypoint");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M20_ATRIUM_WAYPOINT", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    								
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m20\m20_atrium_00108', FALSE, NONE, 0.0, "", "Cortana : Chief, try the top of the ramp. " );
						dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m20\m20_atrium_00109', FALSE, NONE, 0.0, "", "Cortana : I think there's a lift up there." );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end


script dormant f_dialog_m20_phantom_on_approach()
dprint("f_dialog_m20_phantom_on_approach");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M20_PHANTOM_ON_APPROACH", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\global\global_chatter_00107', FALSE, NONE, 0.0, "", "Cortana : Phantom on approach!" );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end


script dormant f_dialog_m20_phantom_on_approach_02()
dprint("f_dialog_m20_phantom_on_approach_02");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M20_PHANTOM_ON_APPROACH_02", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\global\global_chatter_00107', FALSE, NONE, 0.0, "", "Cortana : Phantom on approach!" );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end


// =================================================================================================
// =================================================================================================
// NUDGES
// =================================================================================================
// =================================================================================================

script static void f_dialog_m20_objective_1()
dprint( "f_dialog_m20_objective_1" );
	local short s_random = 0;
	local long l_dialog_id = DEF_DIALOG_ID_NONE();

	s_random = random_range(1, 5);

	if s_random == 1 then
		l_dialog_id = dialog_start_foreground( "OBJECTIVE_1", l_dialog_id, TRUE, DEF_DIALOG_STYLE_SKIP(), TRUE, "", 0.0 );
			dialog_line_cortana( l_dialog_id, 0, (not b_objective_1_complete), 'sound\dialog\mission\m20\m20_objective_nudge_00100', FALSE, NONE, 0.0, "", "Cortana : Chief, we need to find a working ship if we want to get off this planet." );
		l_dialog_id = dialog_end( l_dialog_id, TRUE, FALSE, "" );
	elseif s_random == 2 then
		l_dialog_id = dialog_start_foreground( "OBJECTIVE_1", l_dialog_id, TRUE, DEF_DIALOG_STYLE_SKIP(), TRUE, "", 0.0 );
			dialog_line_cortana( l_dialog_id, 0, (not b_objective_1_complete), 'sound\dialog\mission\m20\m20_crater_prompt_00100', FALSE, NONE, 0.0, "", "Cortana : Covenant chatter�s increasing � we should get moving before they come looking for us." );
		l_dialog_id = dialog_end( l_dialog_id, TRUE, FALSE, "" );
	elseif s_random == 3 then
		l_dialog_id = dialog_start_foreground( "OBJECTIVE_1", l_dialog_id, TRUE, DEF_DIALOG_STYLE_SKIP(), TRUE, "", 0.0 );
			dialog_line_cortana( l_dialog_id, 0, (not b_objective_1_complete), 'sound\dialog\mission\m20\m20_crater_prompt_00123', FALSE, NONE, 0.0, "", "Cortana : We should really get looking for a way offworld. The sooner, the better." );
		l_dialog_id = dialog_end( l_dialog_id, TRUE, FALSE, "" );
	elseif s_random == 4 then
		l_dialog_id = dialog_start_foreground( "OBJECTIVE_1", l_dialog_id, TRUE, DEF_DIALOG_STYLE_SKIP(), TRUE, "", 0.0 );
			dialog_line_cortana( l_dialog_id, 0, (not b_objective_1_complete), 'sound\dialog\mission\m20\m20_crater_prompt_00120', FALSE, NONE, 0.0, "", "Cortana : Chief, if you�re serious about getting us home, we should start." );
		l_dialog_id = dialog_end( l_dialog_id, TRUE, FALSE, "" );
	end


end

script static void f_dialog_m20_objective_2()
dprint( "f_dialog_m20_objective_2" );
	local short s_random = 0;
	local long l_dialog_id = DEF_DIALOG_ID_NONE();

	s_random = random_range(1, 5);

	if s_random == 1 then
		l_dialog_id = dialog_start_foreground( "OBJECTIVE_2", l_dialog_id, TRUE, DEF_DIALOG_STYLE_SKIP(), TRUE, "", 0.0 );
			dialog_line_cortana( l_dialog_id, 1, (not b_objective_2_complete), 'sound\dialog\mission\m20\m20_objective_nudge_00101', FALSE, NONE, 0.0, "", "Cortana: Chief, we need to restore power to that cartographer." );
		l_dialog_id = dialog_end( l_dialog_id, TRUE, FALSE, "" );
	elseif s_random == 2 then
		l_dialog_id = dialog_start_foreground( "OBJECTIVE_2", l_dialog_id, TRUE, DEF_DIALOG_STYLE_SKIP(), TRUE, "", 0.0 );
			dialog_line_cortana( l_dialog_id, 1, (not b_objective_2_complete), 'sound\dialog\mission\m20\m20_cartographer_00128', FALSE, NONE, 0.0, "", "Cortana: Its probable that the Forerunners had ships docked here on Requiem. If so, restoring the Cartographer should tell us." );
		l_dialog_id = dialog_end( l_dialog_id, TRUE, FALSE, "" );
	elseif s_random == 3 then
		l_dialog_id = dialog_start_foreground( "OBJECTIVE_2", l_dialog_id, TRUE, DEF_DIALOG_STYLE_SKIP(), TRUE, "", 0.0 );
			dialog_line_cortana( l_dialog_id, 1, (not b_objective_2_complete), 'sound\dialog\mission\m20\m20_cartographer_00127', FALSE, NONE, 0.0, "", "Cortana: The Covenant aren�t that smart. Whatever they�re after, chances are that Cartographer will tell us if we can find a way to reactivate it." );
		l_dialog_id = dialog_end( l_dialog_id, TRUE, FALSE, "" );
	elseif s_random == 4 then
		l_dialog_id = dialog_start_foreground( "OBJECTIVE_2", l_dialog_id, TRUE, DEF_DIALOG_STYLE_SKIP(), TRUE, "", 0.0 );
			dialog_line_cortana( l_dialog_id, 1, (not b_objective_2_complete), 'sound\dialog\mission\m20\m20_cartographer_00129', FALSE, NONE, 0.0, "", "Cortana: If this Cartographer�s similar to the others we�ve used, there�s no telling what we could learn from it. Assuming we�re able to reactivate it." );
		l_dialog_id = dialog_end( l_dialog_id, TRUE, FALSE, "" );
	end


end


script static void f_dialog_m20_objective_3()
dprint( "f_dialog_m20_objective_3" );
	local short s_random = 0;
	local long l_dialog_id = DEF_DIALOG_ID_NONE();

	s_random = random_range(1, 5);

	if s_random == 1 then
		l_dialog_id = dialog_start_foreground( "OBJECTIVE_3", l_dialog_id, TRUE, DEF_DIALOG_STYLE_SKIP(), TRUE, "", 0.0 );
			dialog_line_cortana( l_dialog_id, 1, (not b_objective_3_complete), 'sound\dialog\mission\m20\m20_objective_nudge_00110', FALSE, NONE, 0.0, "", "Cortana: I�m detecting a lot of Covenant activity around the Terminus�s location. We should probably get there before it gets any more popular." );
		l_dialog_id = dialog_end( l_dialog_id, TRUE, FALSE, "" );
	elseif s_random == 2 then
		l_dialog_id = dialog_start_foreground( "OBJECTIVE_3", l_dialog_id, TRUE, DEF_DIALOG_STYLE_SKIP(), TRUE, "", 0.0 );
			dialog_line_cortana( l_dialog_id, 1, (not b_objective_3_complete), 'sound\dialog\mission\m20\m20_objective_nudge_00111', FALSE, NONE, 0.0, "", "Cortana: If Infinity really is in the planet�s core, then that Terminus is all that�s between us and home. What are you waiting for?" );
		l_dialog_id = dialog_end( l_dialog_id, TRUE, FALSE, "" );
	elseif s_random == 3 then
		l_dialog_id = dialog_start_foreground( "OBJECTIVE_3", l_dialog_id, TRUE, DEF_DIALOG_STYLE_SKIP(), TRUE, "", 0.0 );
			dialog_line_cortana( l_dialog_id, 1, (not b_objective_3_complete), 'sound\dialog\mission\m20\m20_objective_nudge_00112', FALSE, NONE, 0.0, "", "Cortana: Keep moving towards the Terminus, Chief." );
		l_dialog_id = dialog_end( l_dialog_id, TRUE, FALSE, "" );
	elseif s_random == 4 then
		l_dialog_id = dialog_start_foreground( "OBJECTIVE_3", l_dialog_id, TRUE, DEF_DIALOG_STYLE_SKIP(), TRUE, "", 0.0 );
			dialog_line_cortana( l_dialog_id, 1, (not b_objective_3_complete), 'sound\dialog\mission\m20\m20_objective_nudge_00113', FALSE, NONE, 0.0, "", "Cortana: You do want to find Infinity and get off Requiem, don�t you? Let�s go." );
		l_dialog_id = dialog_end( l_dialog_id, TRUE, FALSE, "" );
	end


end

// --- End m20_dialogue.hsc ---

// --- Begin m20_fx.hsc ---


script dormant f_fx_setup_core_beams()
	dprint("--------f_fx_setup_core_beams()");
	device_set_position_track(fx_cathedral_beam_left, 'm40:corebeams', 0);
	device_set_position_track(fx_cathedral_beam_right, 'm40:corebeams', 0);
	
	effect_new( environments\solo\m020\fx\beams\cathedral_beam_off.effect, fx_13_beam_infobeam);
	effect_new( environments\solo\m020\fx\beams\cathedral_beam_off.effect, fx_13_beam_inforbeam2);
	effect_new_on_object_marker(environments\solo\m020\fx\beams\datacore_beam_off.effect, fx_cathedral_beam_left, fx_arm);
	effect_new_on_object_marker(environments\solo\m020\fx\beams\datacore_beam_off.effect, fx_cathedral_beam_right, fx_arm);
end


script static void f_fx_activate_core_beam_left()
	dprint("--------f_fx_activate_core_beam_left");
	// Kill the first stage effect
	effect_kill_from_flag( environments\solo\m020\fx\beams\cathedral_beam_off.effect, fx_13_beam_inforbeam2);
	effect_kill_object_marker(environments\solo\m020\fx\beams\datacore_beam_off.effect, fx_cathedral_beam_left, fx_arm);
	
	// Activate the 2nd stage effect
	effect_new( environments\solo\m020\fx\beams\cathedral_beam_on.effect, fx_13_beam_inforbeam2);
	effect_new_on_object_marker(environments\solo\m020\fx\beams\datacore_beam_on.effect, fx_cathedral_beam_left, fx_arm);

end


script static void f_fx_activate_core_beam_right()
	dprint("--------f_fx_activate_core_beam_right");
	// Kill the first stage effect
	effect_kill_from_flag( environments\solo\m020\fx\beams\cathedral_beam_off.effect, fx_13_beam_infobeam);
	effect_kill_object_marker(environments\solo\m020\fx\beams\datacore_beam_off.effect, fx_cathedral_beam_right, fx_arm);
	
	// Activate the 2nd stage effect
	effect_new( environments\solo\m020\fx\beams\cathedral_beam_on.effect, fx_13_beam_infobeam);
	effect_new_on_object_marker(environments\solo\m020\fx\beams\datacore_beam_on.effect, fx_cathedral_beam_right, fx_arm);

end



// --- End m20_fx.hsc ---

// --- Begin m20_insertion.hsc ---
// =================================================================================================
// =================================================================================================
// *** GLOBALS ***
// =================================================================================================
// =================================================================================================

// Debug Options
global boolean b_debug 							= TRUE;
global boolean b_breakpoints				=	FALSE;
global boolean b_md_print						= TRUE;
global boolean b_debug_objectives 	= FALSE;
global boolean b_editor 						=	editor_mode();
global boolean b_game_emulate				=	FALSE;
global boolean b_cinematics 				=	TRUE;
global boolean b_editor_cinematics 	= FALSE;
global boolean b_encounters					=	TRUE;
global boolean b_dialogue 					=	TRUE;
global boolean b_skip_intro					=	FALSE;

// Mission Started
global boolean b_mission_started 	=	FALSE;

// Insertion
//global short s_insertion_index 	 	= 0;	// default / start
global short s_crater_ins_idx 		=	1;	// in and working
global short s_vista_ins_idx 			=	2;	// in and working
global short s_wreckage_ins_idx		=	3;	// in and working
global short s_field_ins_idx			=	4;	// in and working
global short s_gp_ext_ins_idx 		=	5;	// in and working
global short s_gp_int_ins_idx 		=	6;	// in and working
global short s_bridge_ins_idx 		=	7;	// in and working
global short s_courtyard_ins_idx  =	8;	// in and working
global short s_terminus_ins_idx 	=	9;	// in and working
global short s_intro_cinematic 		=	10;	



// ZONE SETS

global short s_zoneset_crater										=	0;
global short s_zoneset_vista										=	1;
global short s_zoneset_to_wreckage			 				=	2;
global short s_zoneset_wreckage_a								=	3;
global short s_zoneset_to_field			 						=	4;
global short s_zoneset_field			 							=	5;
global short s_zoneset_cathedral_ext			 			=	6;
global short s_zoneset_cathedral_int						=	7;
global short s_zoneset_bridge								 		=	8;
global short s_zoneset_courtyard								=	9;
global short s_zoneset_terminus									=	10;
global short s_zoneset_crater_cinematic					=	11;
global short s_zoneset_cathedral_cinematic			=	12;
global short s_zoneset_tower_cinematic					=	13;
global short s_zoneset_terminus_to_cin_m21				= 	14;
global short s_zoneset_field_to_cathedral				=	15;
global short s_zoneset_field_lean						=	16;

//no zoneset that is equal to these
global short s_zoneset_wreckage_b					 			=	14;
global short s_zoneset_wreckage_c								=	15;
global short s_zoneset_to_cathedral_ext					=	16;
global short s_zoneset_to_bridge 								=	17;
global short s_zoneset_to_courtyard			 				=	18;
global short s_zoneset_to_terminus							=	19;
//XXX TEMP FIX END
//XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
//XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

// =================================================================================================
// =================================================================================================
// *** INSERTIONS ***
// =================================================================================================
// =================================================================================================


// -------------------------------------------------------------------------------------------------
// CINEMATIC
// -------------------------------------------------------------------------------------------------
script static void icn()
		ins_cine();
end

script static void ins_cine()

//	if not( editor_mode() ) then
//	
//		f_insertion_begin( "CINEMATIC" );
//		
//		cinematic_enter( cin_m020_crater, TRUE );
//		cinematic_suppress_bsp_object_creation( TRUE );
//		f_insertion_zoneload( s_zoneset_crater, FALSE );
//		cinematic_suppress_bsp_object_creation( FALSE );
//		
//		f_start_mission( cin_m020_crater );
//		cinematic_exit( cin_m020_crater, TRUE ); 
//		dprint( "Cinematic exited!" );
//	
//		// start the crater
//		ins_crater();
//		wake (temp_cutscene_m20_crater);
//	end	
	dprint ("Unused");
end

// =================================================================================================
// CRATER
// =================================================================================================
script static void icr()
	ins_crater();
end

script static void ins_crater()
	if b_debug then
		 print ("*** INSERTION POINT: CRATER ***");
	end

	// Play the intro cinematic	
	if (b_cinematics and (not b_editor) or b_editor_cinematics  == TRUE) then
		f_insertion_begin( "CINEMATIC" );
				
		cinematic_enter( cin_m020_crater, TRUE );
		cinematic_suppress_bsp_object_creation( TRUE );
		f_insertion_zoneload( s_zoneset_crater_cinematic, FALSE );
		cinematic_suppress_bsp_object_creation( FALSE );
			
		f_start_mission( cin_m020_crater );
		cinematic_exit( cin_m020_crater, TRUE ); 
		dprint( "Cinematic exited!" );
	end

	s_insertion_index = s_crater_ins_idx;

	// Play the intro cinematics here when we get one
	if (b_cinematics and (not b_editor) or (b_editor_cinematics)) then
			print ("*** CINEMATIC PLACEHOLDER ***");
			print ("*** CINEMATIC PLACEHOLDER ***");
	end

	// Switch to correct zone set unless "set_all" is loaded 
	//switch_zone_set ("01_crater");
	//zoneset_load( s_zoneset_crater	, TRUE );
	f_insertion_zoneload( s_zoneset_crater, FALSE );
	sleep (1);
	
	if b_debug then
		print ("::: INSERTION: Waiting for (crater) to fully load...");
		//sleep_until (current_zone_set_fully_active() == s_zoneset_crater, 1);
		sleep_until (preparingToSwitchZoneSet() == FALSE, 1);
	end
	
	if (b_debug) then 
		print ("::: INSERTION: Finished loading (crater)");
	end
	
	sleep (1);

	b_mission_started = TRUE;
	wake (temp_cutscene_m20_crater);
end

// =================================================================================================
// VISTA
// =================================================================================================
global boolean b_clearing_ins = FALSE;
script static void icl()
	ins_clearing();
end

script static void ins_clearing()
	if b_debug then
		 print ("*** INSERTION POINT: VISTA ***");
	end
	
	//insertion_snap_to_black();
	b_clearing_ins = TRUE;

	s_insertion_index = s_vista_ins_idx;
	
	//// stop earlier scripts from running
	f_crater_cleanup();

	// Switch to correct zone set unless "set_all" is loaded 
	switch_zone_set ("03_vista");
	sleep (1);
	
	if b_debug then
		print ("::: INSERTION: Waiting for (vista) to fully load...");
		//sleep_until (current_zone_set_fully_active() == s_zoneset_vista, 1);
		sleep_until (preparingToSwitchZoneSet() == FALSE, 1);
	end
	
	if (b_debug) then 
		print ("::: INSERTION: Finished loading (vista)");
	end
	
	music_start('Play_mus_m20');
	b_m20_music_progression = 20;
	
	// Teleport
	object_teleport_to_ai_point (player0, ps_clearing_insertion.player0);
	object_teleport_to_ai_point (player1, ps_clearing_insertion.player1);
	object_teleport_to_ai_point (player2, ps_clearing_insertion.player2);
	object_teleport_to_ai_point (player3, ps_clearing_insertion.player3);

	//// give us a vehicle to drive...
	//object_create (clearing_hog);
		
	b_mission_started = TRUE;
end


// =================================================================================================
// WRECKAGE
// =================================================================================================
global boolean b_graveyard_ins = FALSE;
script static void igy ()
	ins_graveyard();
end
	
script static void ins_graveyard()
	if b_debug then
		 print ("*** INSERTION POINT: WRECKAGE ***");
	end	
	
	//insertion_snap_to_black();
	b_graveyard_ins = TRUE;

	s_insertion_index = s_wreckage_ins_idx;

	//// stop earlier scripts from running
	f_crater_cleanup();

	// Switch to correct zone set unless "set_all" is loaded 
	switch_zone_set ("05_wreckage_a");
	sleep (1);

	if b_debug then
		print ("::: INSERTION: Waiting for (wreckage) to fully load...");
		//sleep_until (current_zone_set_fully_active() == s_zoneset_wreckage_a, 1);
		sleep_until (preparingToSwitchZoneSet() == FALSE, 1);
	end

	if (b_debug) then 
		print ("::: INSERTION: Finished loading (wreckage)");
	end

	music_start('Play_mus_m20');
	b_m20_music_progression = 40;
	
	// Teleport
	object_teleport_to_ai_point (player0, ps_graveyard_insertion.player0);
	object_teleport_to_ai_point (player1, ps_graveyard_insertion.player1);
	object_teleport_to_ai_point (player2, ps_graveyard_insertion.player2);
	object_teleport_to_ai_point (player3, ps_graveyard_insertion.player3);

	//// give us a vehicle to drive...
	object_create (gy_hog);

	b_mission_started = TRUE;
end

// =================================================================================================
// FIELD
// =================================================================================================
global boolean b_field_ins = FALSE;
script static void ifi ()
	ins_field();
end
	
script static void ins_field()
	if b_debug then
		 print ("*** INSERTION POINT: FIELD ***");
	end	
	
	//insertion_snap_to_black();
	b_field_ins = TRUE;

	s_insertion_index = s_field_ins_idx;
	
	//// stop earlier scripts from running
	f_crater_cleanup();
	
	// Switch to correct zone set unless "set_all" is loaded 
	switch_zone_set ("09_field");
	sleep (1);
	
	if b_debug then
		print ("::: INSERTION: Waiting for (field) to fully load...");
		//sleep_until (current_zone_set_fully_active() == s_zoneset_field, 1);
		sleep_until (preparingToSwitchZoneSet() == FALSE, 1);
	end
	
	if (b_debug) then 
		print ("::: INSERTION: Finished loading (field)");
	end

	music_start('Play_mus_m20');
	b_m20_music_progression = 50;
	
	// Teleport
	object_teleport_to_ai_point (player0, ps_field_insertion.player0);
	object_teleport_to_ai_point (player1, ps_field_insertion.player1);
	object_teleport_to_ai_point (player2, ps_field_insertion.player2);
	object_teleport_to_ai_point (player3, ps_field_insertion.player3);

	//// give us a vehicle to drive...
	object_create (field_hog);
		
	b_mission_started = TRUE;
end


// =================================================================================================
// GUARDPOST EXTERIOR 
// =================================================================================================
global boolean b_gp_ext_ins = FALSE;
script static void igpe()
	ins_gp_ext();
end
	
script static void ins_gp_ext()
	if b_debug then
		 print ("*** INSERTION POINT: GPE ***");
	end	
	
	//insertion_snap_to_black();
	b_gp_ext_ins = TRUE;

	s_insertion_index = s_gp_ext_ins_idx;

	//// stop earlier scripts from running
	f_crater_cleanup();
	f_drive_cleanup();
		
	// Switch to correct zone set unless "set_all" is loaded 
	switch_zone_set ("11_cathedral_ext");
	sleep (1);
	
	if b_debug then
		print ("::: INSERTION: Waiting for (cathedral exterior) to fully load...");
		//sleep_until (current_zone_set_fully_active() == s_zoneset_cathedral_ext, 1);
		sleep_until (preparingToSwitchZoneSet() == FALSE, 1);
	end
	
	if (b_debug) then 
		print ("::: INSERTION: Finished loading (cathedral exterior)");
	end

	music_start('Play_mus_m20');
	b_m20_music_progression = 70;
	
	// Teleport
	object_teleport_to_ai_point (player0, ps_gp_ext_insertion.player0);
	object_teleport_to_ai_point (player1, ps_gp_ext_insertion.player1);
	object_teleport_to_ai_point (player2, ps_gp_ext_insertion.player2);
	object_teleport_to_ai_point (player3, ps_gp_ext_insertion.player3);

	//// give us a vehicle to drive...
	object_create (gpe_hog);

	b_mission_started = TRUE;
end

// =================================================================================================
// GUARDPOST INTERIOR
// =================================================================================================
global boolean b_gp_int_ins = FALSE;
script static void igpi()
	ins_gp_int();
end
	
// RALLY POINT BRAVO
script static void ins_gp_int()
	if b_debug then
		 print ("*** INSERTION POINT: GPI ***");
	end
	
	//insertion_snap_to_black();
	b_gp_int_ins = TRUE;
	
	s_insertion_index = s_gp_int_ins_idx;

	//// stop earlier scripts from running
	f_crater_cleanup();
	f_drive_cleanup();
	f_gp_ext_cleanup();
		
	// Switch to correct zone set unless "set_all" is loaded 
	switch_zone_set ("13_cathedral_int");
	sleep (1);
			
	if b_debug then
		print ("::: INSERTION: Waiting for (cathedral interior) to fully load...");
		//sleep_until (current_zone_set_fully_active() == s_zoneset_cathedral_int, 1);
		sleep_until (preparingToSwitchZoneSet() == FALSE, 1);
	end

	if (b_debug) then 
		print ("::: INSERTION: Finished loading (cathedral interior)");
	end
	
	music_start('Play_mus_m20');
	b_m20_music_progression = 80;
	
	SetSkyObjectOverride("");
	
	// Teleport
	object_teleport_to_ai_point (player0, ps_gp_int_insertion.player0);
	object_teleport_to_ai_point (player1, ps_gp_int_insertion.player1);
	object_teleport_to_ai_point (player2, ps_gp_int_insertion.player2);
	object_teleport_to_ai_point (player3, ps_gp_int_insertion.player3);

	unit_add_equipment (player0, default_coop_respawn, TRUE, FALSE);
	unit_add_equipment (player1, default_coop_respawn, TRUE, FALSE);
	unit_add_equipment (player2, default_coop_respawn, TRUE, FALSE);
	unit_add_equipment (player3, default_coop_respawn, TRUE, FALSE);
		
	wake (f_gp_int_main);
	
end

// =================================================================================================
// BRIDGE
// =================================================================================================
global boolean b_bridge_ins = FALSE;
script static void ibr() 
	ins_bridge();
end

script static void ins_bridge()

	if b_debug then
		 print ("*** INSERTION POINT: BRDIGE ***");
	end	
	
	//insertion_snap_to_black();
	b_bridge_ins = TRUE;

	s_insertion_index = s_bridge_ins_idx;

	//// stop earlier scripts from running
	f_crater_cleanup();
	f_drive_cleanup();
	f_gp_ext_cleanup();
	f_gp_int_cleanup();
		
	// Switch to correct zone set unless "set_all" is loaded 
	switch_zone_set ("15_bridge");
	sleep (1);
	
	if b_debug then
		print ("::: INSERTION: Waiting for (to_bridge) to fully load...");
		//sleep_until (current_zone_set_fully_active() == s_zoneset_bridge, 1);
		sleep_until (preparingToSwitchZoneSet() == FALSE, 1);
	end
	
	if (b_debug) then 
		print ("::: INSERTION: Finished loading (to_bridge)");
	end
	
	music_start('Play_mus_m20');
	b_m20_music_progression = 100;
	
	// Teleport
	object_teleport_to_ai_point (player0, ps_bridge_insertion.player0);
	object_teleport_to_ai_point (player1, ps_bridge_insertion.player1);
	object_teleport_to_ai_point (player2, ps_bridge_insertion.player2);
	object_teleport_to_ai_point (player3, ps_bridge_insertion.player3);
	
	thread (f_start_bridge_encounter());

end

// =================================================================================================
// COURTYARD
// =================================================================================================
global boolean b_courtyard_ins = FALSE;
script static void icy()
	ins_courtyard();
end
	
script static void ins_courtyard()
	if b_debug then
		 print ("*** INSERTION POINT: COURTYARD ***");
	end	
	
	//insertion_snap_to_black();
	b_courtyard_ins = TRUE;

	s_insertion_index = s_courtyard_ins_idx;

	//// stop earlier scripts from running
	f_crater_cleanup();
	f_drive_cleanup();
	f_gp_ext_cleanup();
	f_gp_int_cleanup();
	f_bridge_cleanup();
		
	// Switch to correct zone set unless "set_all" is loaded 
	switch_zone_set ("17_courtyard");
	sleep (1);
	
	if b_debug then
		print ("::: INSERTION: Waiting for (to_courtyard) to fully load...");
		//sleep_until (current_zone_set_fully_active() == s_zoneset_courtyard, 1);
		sleep_until (preparingToSwitchZoneSet() == FALSE, 1);
	end
	
	if (b_debug) then 
		print ("::: INSERTION: Finished loading (to_courtyard)");
	end

	// Teleport
	object_teleport_to_ai_point (player0, ps_courtyard_insertion.player0);
	object_teleport_to_ai_point (player1, ps_courtyard_insertion.player1);
	object_teleport_to_ai_point (player2, ps_courtyard_insertion.player2);
	object_teleport_to_ai_point (player3, ps_courtyard_insertion.player3);
	
	wake (f_courtyard_main);
	
	courtyard_door->open();
	
	music_start('Play_mus_m20');
	b_m20_music_progression = 110;
	thread (f_mus_m20_e06_begin());
	
	courtyard_door->auto_trigger_close( tv_court_door_close, TRUE, TRUE, TRUE );
	
	sleep_until( courtyard_door->check_close(), 1 );
	dprint ("door has closed");
		
end

// =================================================================================================
// TERMINUS
// =================================================================================================
global boolean b_atrium_ins = FALSE;
script static void iat ()
	ins_atrium();
end
	
script static void ins_atrium()
	if b_debug then
		 print ("*** INSERTION POINT: TERMINUS ***");
	end	
	
	//insertion_snap_to_black();
	b_atrium_ins = TRUE;

	s_insertion_index = s_terminus_ins_idx;

	//// stop earlier scripts from running
	f_crater_cleanup();
	f_drive_cleanup();
	f_gp_ext_cleanup();
	f_gp_int_cleanup();
	f_bridge_cleanup();
	f_courtyard_cleanup();
		
	// Switch to correct zone set unless "set_all" is loaded 
	switch_zone_set ("19_terminus");
	sleep (1);
	
	if b_debug then
		print ("::: INSERTION: Waiting for (terminus) to fully load...");
		//sleep_until (current_zone_set_fully_active() == s_zoneset_terminus, 1);
		sleep_until (preparingToSwitchZoneSet() == FALSE, 1);
	end
	
	if (b_debug) then 
		print ("::: INSERTION: Finished loading (terminus)");
	end

	music_start('Play_mus_m20');
	b_m20_music_progression = 120;
	
	// Teleport
	object_teleport_to_ai_point (player0, ps_atrium_insertion.player0);
	object_teleport_to_ai_point (player1, ps_atrium_insertion.player1);
	object_teleport_to_ai_point (player2, ps_atrium_insertion.player2);
	object_teleport_to_ai_point (player3, ps_atrium_insertion.player3);
	
	b_mission_started = TRUE;
	
	sleep (30*4);
	
	wake (f_terminus_main);
	
end



// =================================================================================================
// =================================================================================================
// *** CLEANUP ***
// =================================================================================================
// =================================================================================================

// =================================================================================================
// Crashsite
// =================================================================================================

script static void f_crater_cleanup()
	sleep_forever (f_crater_main);
end

// =================================================================================================
// Drive 
// =================================================================================================

script static void f_drive_cleanup()
	sleep_forever (f_drive_main);
end

// =================================================================================================
// Guardpost Ext 
// =================================================================================================

script static void f_gp_ext_cleanup()
	sleep_forever (f_gp_ext_main);
end

// =================================================================================================
// Guardpost Int 
// =================================================================================================

script static void f_gp_int_cleanup()
	sleep_forever (f_gp_int_main);
end


// =================================================================================================
// Bridge
// =================================================================================================

script static void f_bridge_cleanup()
	sleep_forever (f_bridge_main);
end

// =================================================================================================
// Courtyard
// =================================================================================================

script static void f_courtyard_cleanup()
	sleep_forever (f_courtyard_main);
end


// =================================================================================================
// =================================================================================================
// UTILITY
// =================================================================================================
// =================================================================================================

// =================================================================================================
// Loadouts
// =================================================================================================

// =================================================================================================
// Loadouts
// =================================================================================================
/*
script static void f_loadout_set (string area)

	if area == "start" then
		player_set_profile (sp_start_mission, player0);
	  player_set_profile (sp_start_mission, player1);
	  player_set_profile (sp_start_mission, player2);
	  player_set_profile (sp_start_mission, player3);
	  
	elseif area == "default" or area == "NONE" then
		player_set_profile (default_respawn, player0);
		player_set_profile (default_respawn, player1);
		player_set_profile (default_respawn, player2);
		player_set_profile (default_respawn, player3);

	elseif area == "beacon" then
		player_set_profile (default_single_sniper, player0);
		player_set_profile (default_single_sniper, player1);
		player_set_profile (default_single_sniper, player2);
		player_set_profile (default_single_sniper, player3);
	end

end
*/

//OLD LOADOUT SCRIPT
script static void f_loadout_set (string area)

	if area == "default" then
		if game_is_cooperative() then
			unit_add_equipment (player0, default_coop, TRUE, FALSE);
			unit_add_equipment (player1, default_coop, TRUE, FALSE);
			unit_add_equipment (player2, default_coop, TRUE, FALSE);
			unit_add_equipment (player3, default_coop, TRUE, FALSE);
			player_set_profile (default_coop_respawn, player0);
			player_set_profile (default_coop_respawn, player1);
			player_set_profile (default_coop_respawn, player2);
			player_set_profile (default_coop_respawn, player3);
		else
			player_set_profile (default_single_respawn, player0);
		end
	end
end




// =================================================================================================
// Insertion Fade
// =================================================================================================

global boolean b_insertion_fade_in = FALSE;
script dormant f_insertion_fade_in()

	sleep_until (b_insertion_fade_in, 1);
	
	// this is a global script
	insertion_fade_to_gameplay();
end

// -------------------------------------------------------------------------------------------------
// INSERTION LOAD INDEX
// -------------------------------------------------------------------------------------------------
script static void f_insertion_index_load( short s_insertion )
local boolean b_started = FALSE;
	//dprint( "::: f_insertion_index_load :::" );
	inspect( game_insertion_point_get() );
	
	if (s_insertion == s_intro_cinematic) then
		b_started = TRUE;
		ins_cine();
	end
	
	if ( not b_started ) then
		dprint( "f_insertion_index_load: ERROR: Failed to find insertion point index to load" );
		inspect( s_insertion );
	end

end

script static zone_set f_zoneset_get( short s_index )
local zone_set zs_return = "01_crater";

	if ( s_index == s_zoneset_crater  ) then
	 zs_return = "01_crater";
	end
	
	// return
	zs_return;
end
// --- End m20_insertion.hsc ---

// --- Begin m20_narrative.hsc ---
// =================================================================================================
// =================================================================================================
// NARRATIVE SCRIPTING M20
// =================================================================================================
// =================================================================================================


// =================================================================================================
// *** GLOBALS ***
// =================================================================================================

global boolean b_fired_weapon_in_opening = FALSE;
global boolean b_triggered_crater_explore_intro = FALSE;
//global boolean b_used_my_first_domain = FALSE;
global boolean b_explorable_terminal_1 = FALSE;
global boolean b_explorable_terminal_2 = FALSE;
global boolean b_explorable_terminal_3 = FALSE;
global boolean b_been_to_didact_terminal = FALSE;
global boolean b_been_to_librarian_terminal = FALSE;
global boolean b_used_map_terminal_once = FALSE;
global boolean b_button_check = 0;
global boolean b_code_check = FALSE;
global boolean b_ammo_retrieved = FALSE; 
global boolean b_sentinel_deployed = FALSE;
global boolean b_warthog_encountered = FALSE;
global boolean b_objective_1_complete = FALSE;
global boolean b_objective_2_complete = FALSE;
global boolean b_objective_3_complete = FALSE;
global boolean b_cathedral_clear = FALSE;
global boolean b_second_terminal_active = FALSE;
global boolean b_cathedral_cut_scene_playing = FALSE;
global long l_dlg_exploreable_terminal_03_pre = DEF_DIALOG_ID_NONE();
global long l_dlg_cathedral_Librarian_terminal = DEF_DIALOG_ID_NONE();
global long l_dlg_mantle_approach = DEF_DIALOG_ID_NONE();


///////////////////////////////////////////////////////////////////////////////////
// PUPPETEER STUFF
///////////////////////////////////////////////////////////////////////////////////

global object pup_player0 = none;
global object pup_player1 = none;
global object pup_player2 = none;
global object pup_player3 = none;


script static void f_get_player( object trigger, unit activator )
	pup_player0 = activator;
end


///////////////////////////////////////////////////////////////////////////////////
// MAIN
///////////////////////////////////////////////////////////////////////////////////
script startup M20_narrative_main()

	print ("::: M20 Narrative Start :::");

	
	thread (exploreable_terminal_02());
	thread (exploreable_terminal_03());
	thread (m20_crater_terminal_2_pre_use());
	thread (m20_crater_terminal_3_pre_use());
	thread (M20_warthog_callout());
	thread (m20_cathedral_reveal());
	thread (m20_graveyard_signal());
	thread (M20_crater_exit());
	thread (m20_didact_term_entrance());
	thread (m20_bridge_elevator());
	thread (m20_courtyard_covenant());
	wake (m20_Cathedral_cutscene_post_use);
	wake (m20_mantle_approach);
	//thread (m20_distress_signal_loop());
	thread (m20_mantle_approach_volume());
	wake (m20_fall_volume);
	thread(m20_halsey_cpu_terminal());
	thread (f_my_first_domain());
	thread (m20_graveyard_vo_a());
	thread (m20_last_stand());
	thread ( m20_courtyard_1stfl());
	wake(M20_warthog_without);
	
	wake(m20_active_cartographer_02);
	thread(m20_console_nudge());
	thread(f_waypoint_equipment_unlock());
	wake( m20_fields_covenant);
	
	//thread(m20_crater_terminal_2_looping());
 wake(m20_distress_signal_reaction);
	
	
end

/*
script static void crater_phantom_controller()
//	sleep_s(10);
	//ai_place_in_vehicle(phantom_01, phantom_01);
	wake(f_dialog_m20_covenant_scouts);
//	sleep_s(60);
	//ai_place_in_vehicle(phantom_02, phantom_02);
//	sleep_s(60);
	//ai_place_in_vehicle(phantom_01, phantom_02);
//	sleep_s(60);


end*/



script dormant temp_cutscene_m20_crater()
	wake(f_dialog_m20_crater_landing);
	thread (M20_crater_vista());
	print ("FORCE SAVE");
  game_save_immediate();
  
  //PLAY CRASH SPARK EFFECT AFTER CINEMATIC ENDS
  effect_new( "environments\solo\m020\FX\sparks\spark_active_elec_xl.effect", "fx_hero_spark_01");
	effect_new( "environments\solo\m020\FX\sparks\spark_active_elec_xl.effect", "fx_hero_spark_02");

end


script dormant find_ship_objective()
   	//thread (story_blurb_add("domain", "OBJECTIVE: TRACK DOWN A COVENANT SHIP"));
   	
		thread (m20_objective_1_nudge());

end
script dormant m20_distress_signal_reaction()
    sleep_until( volume_test_players(m20_distress_signal_loop), 1);
		
	thread(m20_distress_signal_loop());
	//sleep_s(2);
		//thread(f_dialog_m20_mayday_signal_reaction());

end

script static void m20_distress_signal_loop()
    //sleep_s(5);
    if (volume_test_players(m20_distress_signal_loop) == TRUE) then
		dprint ("MAYDAY SIGNAL LOOPING");
			sound_impulse_start( 'sound\dialog\mission\m20\m20_distress_message_00100', mayday_3d_object, 1 );
				//thread(f_dialog_m20_mayday_signal());
			sleep_s(17);	
		  sound_impulse_stop( 'sound\dialog\mission\m20\m20_distress_message_00100');
			else
			sleep_s(17);	
			end
			sleep_s(10);
				 thread(m20_distress_signal_loop());
				 
end

    	

/*script static void exploreable_terminal_01()
	//fires when you use explorable terminal 1
	sleep_until (object_valid (explore_button_01), 1);
	sleep_until (device_get_position(explore_button_01) > 0.0, 1 );
	device_set_power (explore_button_01, 0.0);
		
	dprint ("Fire Terminal 1 - Conv 1");

	device_set_power (explore_button_01, 1.0);
	device_set_position( explore_button_01, 0.0);
	thread (exploreable_terminal_01());
	dprint ("Terminal one reset");

end*/

script static void m20_crater_terminal_2_pre_use()
	//triggers as player approaches Terminal 2 History
	
    sleep_until( volume_test_players(m20_crater_terminal_2_pre_use), 1);
    		dprint("m20_crater_terminal_2_pre_use");
 				wake(f_dialog_m20_covenant_signal);

end  

script static void m20_crater_terminal_2_looping()
		//		dprint("f_dialog_m20_covenant_signal_loop START");
				if ( volume_test_players(m20_crater_terminal_2_pre_use) == TRUE) then
				dprint("DIDACT LOOPING");
 				sound_impulse_start( 'sound\dialog\mission\m20\m20_crater_explore_terminal_2_00111', fore_terminal_2_target, 1 );
 				sleep_s(3);
 					sound_impulse_stop( 'sound\dialog\mission\m20\m20_crater_explore_terminal_2_00111');
 				else
 				sleep_s(3);
 				end
				sleep_s(8);
				thread(m20_crater_terminal_2_looping());
			//	dprint("f_dialog_m20_covenant_signal_loop RETHREADED");
end  


script static void exploreable_terminal_02()
	//fires when you use explorable terminal 2
	sleep_until (object_valid (explore_button_04), 1);
	sleep_until (device_get_position(explore_button_04) > 0.0, 1 );
	device_set_power (explore_button_04, 0.0);
	
	dprint ("Fire Terminal 2 - Conv 1");
	b_code_check = TRUE;
				wake(f_dialog_m20_covenant_signal_one_off);
				wake(f_dialog_m20_exploreable_terminal_02);
				
	//device_set_power (explore_button_04, 1.0);
	//device_set_position( explore_button_04, 0.0);
	//thread (exploreable_terminal_04());
	dprint ("Terminal two reset");
	
end


script static void exploreable_terminal_03()
	//fires when you use explorable terminal 3
	
	sleep_until (object_valid (explore_button_07), 1);
	sleep_until (device_get_position(explore_button_07) > 0.0, 1 );
	device_set_power (explore_button_07, 0.0);
	
          thread(f_dialog_m20_exploreable_terminal_03_0a());

	//device_set_power (explore_button_07, 1.0);
	//device_set_position( explore_button_07, 0.0);
	//thread (exploreable_terminal_07());
	dprint ("Terminal three reset");

end
script static void m20_halsey_cpu_terminal()
	//fires when you use explorable terminal 3
	
	sleep_until (object_valid (halsey_cpu_terminal_button), 1);
	sleep_until (device_get_position(halsey_cpu_terminal_button) > 0.0, 1 );
	object_destroy(halsey_cpu_terminal_button);
	
          thread(f_dialog_m20_halsey_cpu_terminal_button_02());


end



script static void m20_crater_terminal_1_post_use()
	//triggers after terminal 1 UNSC - CENTER - is completed.
    sleep_until( volume_test_players(m20_crater_terminal_3_post_use) == 0, 1);
      sleep_until( player_action_test_cancel() == TRUE, 1);
      
      sleep_s (1.5);
    
    	wake(f_dialog_m20_crater_terminal_1_post_use);

end


script static void m20_crater_terminal_3_pre_use()
	//triggers as player approaches Terminal 3 Orders - LEFT SIDE FROM CRASH.

    sleep_until( volume_test_players(m20_crater_terminal_3_pre_use), 1);
    
			wake(f_dialog_m20_exploreable_terminal_03_pre);
end 


script static void m20_crater_terminal_3_post_use()
	//trigger volume around Terminal 3 Orders - LEFT SIDE - activates after the player uses terminal 3.
    sleep_until( volume_test_players(m20_crater_terminal_3_post_use), 1);
      
      sleep_s (1.5);
      wake(f_dialog_m20_crater_terminal_3_post_use);
   	
end


script static void m20_crater_exit()
    sleep_until( volume_test_players(m20_crater_exit), 1);
    b_triggered_crater_explore_intro == TRUE;
    	
    	wake(f_dialog_m20_first_infinity_signal);
    	
    	
		
end


script static void m20_crater_vista()
	//play chapter title for M20
	//sleep_until( volume_test_players(tv_vista_letterbox), 1);

			f_chapter_title( chapter_text_1 );

	// triggered when the player enters the vista.
	sleep_until( volume_test_players(m20_crater_vista), 1);
	//wake(f_dialog_m20_vista_exchange);
	
	// this music trigger should fire when the player first sees the floating tower vista!
	thread(f_music_m20_v01_floating_tower()); 
end	
			

script static void m20_burned_out_warthog()
		sleep_until( volume_test_players(burned_out_warthog), 1);
		if b_warthog_encountered == FALSE then
				wake(f_dialog_m20_burnedout_warthog);
				b_warthog_encountered = TRUE;
		end
end

script static void  M20_warthog_callout()
    
    sleep_until( volume_test_players(M20_warthog_callout), 1);
    	
				wake(f_dialog_m20_warthog_01);
				
				navpoint_set_next_improved(TRUE);
				f_blip_object(veh_vista_warthog_02, "default");
				
    //fires as you enter a Warthog by the FUD
    
    sleep_until(vehicle_test_seat_unit_list(veh_vista_warthog_01, warthog_d, players() ) or vehicle_test_seat_unit_list(veh_vista_warthog_02, warthog_d, players() ) , 1);
				wake(f_dialog_m20_warthog_02);
				
				f_unblip_object(veh_vista_warthog_02);
				wake (f_bcs_vista_blip_tunnel);
		
    
    
    
end


script dormant M20_warthog_without()
		sleep_until( volume_test_players(test_in_warthog), 1);
		dprint("Hit warthog volume");
		//if not (vehicle_test_seat_unit_list(veh_vista_warthog_01, warthog_d, players())  or vehicle_test_seat_unit_list(veh_vista_warthog_02, warthog_d, players()))  then
		if not (unit_in_vehicle(player0) or unit_in_vehicle(player1) or unit_in_vehicle(player2) or unit_in_vehicle(player3)) then
				wake(f_dialog_m20_warthog_return);
				dprint("Fired Warthog VO");
    end
end

script static void m20_graveyard_vo_a()
	//triggered during the first part of the driving sequence if not in Warthog.
   
  sleep_until( volume_test_players (m20_graveyard_vo_a));
  sleep_s(2);
  wake(f_dialog_m20_graveyard_Rampancy_start);
  b_triggered_crater_explore_intro == TRUE;
  sleep_s(4);
  
end

script static void m20_blip_terminal()
		dprint("m20_blip_terminal dialog threaded");
		sleep (30*4);
		wake(f_dialog_m20_blip_terminal);

end

script dormant m20_guardpostex_covenant_c()

     	wake(f_dialog_m20_guardpostex_covenant_c);

end

script dormant m20_fields_covenant()
     	sleep_until( volume_test_players( m20_cathedral_reveal), 1);
			wake(f_dialog_m20_callout_hostiles);

end


script static void m20_graveyard_signal()
     	sleep_until( volume_test_players(m20_graveyard_signal), 1);
			wake(f_dialog_m20_graveyard_signal);

end


script static void m20_cathedral_reveal()
	//triggered when the player sees the catherdral for the first time. Cov landing in courtyard.
     	sleep_until( volume_test_players(m20_cathedral_reveal), 1);
     	sleep_forever(m20_objective_1_nudge);
			//wake(f_dialog_m20_cathedral_reveal);
			dprint("dialog cathedral reveal");
					
end


script static void m20_active_camo_puppet()
	//CALLED FROM _MISSION. DISABLING FOR SCOPING REASONS
		dprint("Active Camo equipped");

		// set the puppeteer puppet as the activator
		pup_player0 = player0;
		
			pup_play_show( 'active_camo' );

end

     		
script static void m20_console_nudge()
	sleep_until( volume_test_players(tv_gpi_objcon_30), 1);
	wake(f_dialog_m20_console_nudge);
end

script dormant m20_cathedral_map_open()
	//triggers after enemies at the map terminal are killed.
	dprint ("m20 cathedral map open fired");
			

end


script static void m20_mantle_approach_volume()
	//triggers on button below map terminal in cathedral
     	sleep_until( volume_test_players(mantle_room_trigger), 1);	
			dprint("Mantle room reached");
			//thread (story_blurb_add("vo", "THE ROOM IS ADORNED WITH FORERUNNER RELIGIOUS ICONOGRAPHY."));
	
end


script dormant m20_mantle_approach()
	//triggers on button below map terminal in cathedral
	sleep_until (object_valid (mantle_approach_button), 1);	
	sleep_until (device_get_position(mantle_approach_button) > 0.0, 1 );
	device_set_power (mantle_approach_button, 0.0);
	dprint("Mantle triggered.");

	wake(f_dialog_m20_mantle_approach);
	
end

script dormant f_map_button_dialog()
//fires first time you use the map button (called from mission_guardpost script)
	dprint ("Map Terminal 1 - Conv 1");
	dialog_end_interrupt(l_dlg_mantle_approach);
	b_cathedral_cut_scene_playing = TRUE;
	object_hide (crate_antenna_01, TRUE);
	
	b_used_map_terminal_once = TRUE;
	
	streamer_pin_tag("objects\characters\storm_masterchief\storm_masterchief.biped", 0);
	local long show=pup_play_show(pup_m20_25a);
	sleep_until(not pup_is_playing(show),1);
	show=pup_play_show(pup_m20_25b);
	
	//WAIT UNTIL M20.25 CINEMATIC IS OVER
	sleep_until(not pup_is_playing(show),1);
	streamer_unpin_tag("objects\characters\storm_masterchief\storm_masterchief.biped", 0);
	
	//wake core blips
	wake (m20_blip_core_right);
	wake (m20_blip_core_left);
	
	game_save_immediate();
	
	sound_impulse_start ( 'sound\environments\solo\m020\amb_m20_machines\machine_m20_shutdown', "none", 1 ); //AUDIO!
	
	wake(f_dialog_m20_map_button_03);
	object_hide (crate_antenna_01, FALSE);
	
	//SET OBJECTIVES
	sleep (30*3);
	
	wake (f_gpi_hex_cover_fall);
	wake(f_map_complete);
	
	sleep (30*2);
	b_cathedral_cut_scene_playing = FALSE;
	cui_hud_set_new_objective (objective_4);
	   
end


script dormant f_map_complete()
	dprint ("waiting for blip");
		b_objective_1_complete = TRUE;
		objectives_finish (0);
   	//thread (story_blurb_add("domain", "OBJECTIVE: RESTORE POWER TO THE CARTOGRAPHER"));
   	sleep_forever(m20_objective_1_nudge);
		//thread(m20_objective_2_nudge()); //Moving to dialogue, after cortana talks/blips
    //device_set_power (map_button_01, 0.0);
	  //device_set_position( map_button_01, 0.0);

	  //disabling the second button press option, threading dialog now
	  thread(m20_blip_terminal());
	  
	  //wake(f_map_button_dialog_post);
	//  wake(m20_librarian_term_entrance);
	  	  
	  
	//SCRIPT PLAYER LOD HERE

	  
end

script dormant f_map_button_dialog_post()
  sleep_until (object_valid (map_button_01), 1);	
	sleep_until (device_get_position(map_button_01) > 0.0, 1 );
	device_set_power (map_button_01, 0.0);
	wake(f_dialog_m20_map_button_post);
	dprint ("Map Terminal 1 - Post");

end




//triggers the map terminal CUTSCENE
script dormant f_m20_cathedral_map()
	sleep_until( device_get_position( map_button_01 ) > 0.0, 1 );
	device_set_power( map_button_01, 0.0);
  player_action_test_reset();
  kill_script(f_Cathedral_Didact_terminal_post_use);
  dialog_end_interrupt(l_dlg_mantle_approach);
	b_cathedral_cut_scene_playing = TRUE;
	local long insert_show = pup_play_show(pup_luminary_exit_press);
	sleep_until(not pup_is_playing(insert_show));
		
	dprint ("playing 20.5 cinematic");

  if (b_cinematics and (not b_editor) or (b_editor_cinematics)) then

		cinematic_enter ("cin_m0205_cathedral", TRUE);
		
		streamer_pin_tag("objects\characters\storm_masterchief\storm_masterchief.biped", 0);
		streamer_pin_tag("objects\characters\storm_cortana\storm_cortana.biped", 0);
		switch_zone_set ("cin_m205_cathedral_zs");
		sleep ( 1 );
		sleep_until (preparingToSwitchZoneSet() == FALSE, 1);
		sleep ( 1 );

		cinematic_suppress_bsp_object_creation(TRUE);

		f_start_mission ("cin_m0205_cathedral");

		cinematic_suppress_bsp_object_creation(FALSE);

		wake (f_gp_int_teleport_player);	

		cinematic_exit ("cin_m0205_cathedral", TRUE); 
		streamer_unpin_tag("objects\characters\storm_masterchief\storm_masterchief.biped", 0);
		streamer_unpin_tag("objects\characters\storm_cortana\storm_cortana.biped", 0);

		print ("cinematic exited!"); 

	end 

end


script static void m20_didact_term_entrance()
//IF Chief approaches FIRST CORE
	sleep_until( (volume_test_players(m20_didact_term_entrance) or volume_test_players(m20_wake_lib_sentinels)), 1);
			if (b_player_activated_core_right == TRUE) or (b_player_activated_core_left == TRUE) then
				wake(f_dialog_m20_Cathedral_didact_terminal_pre_use);

			end

end

/*script dormant m20_librarian_term_entrance()
//If Chief approaches Librarian terminal
	sleep_until( (volume_test_players(m20_didact_term_entrance) or volume_test_players(m20_wake_lib_sentinels)), 1);
			if (b_player_activated_core_right == FALSE) and (b_player_activated_core_left == FALSE) then
				wake(f_dialog_m20_librarian_pre);
			end

end*/




script dormant f_Cathedral_Librarian_terminal()
//Triggered the FIRST terminal in the cathedral.
	dprint("First terminal dialogue fired");
		wake(f_dialog_m20_Cathedral_Librarian_terminal_01);
		sleep_s(1);
		wake(f_dialog_m20_Cathedral_Librarian_terminal);
		
		b_been_to_Librarian_terminal = TRUE;

end


script dormant f_Cathedral_Didact_terminal()
	//Triggered the the SECOND terminal in the cathedral.
		dprint("second terminal dialogue");

		thread(f_dialog_m20_Cathedral_didact_terminal_02());
		
		wake(f_dialog_m20_Cathedral_didact_terminal);
		
		b_been_to_didact_terminal = TRUE;
    //thread(f_Cathedral_Didact_terminal_post_use());
end



script static void f_Cathedral_Didact_terminal_post_use()
  sleep_s(90);
	wake(f_dialog_m20_Cathedral_didact_terminal_post_use);

end

script dormant m20_active_cartographer()
	
    sleep_until( volume_test_players(tv_front_pad), 1);
    
    	if b_cathedral_clear == FALSE then 
					wake(f_dialog_m20_cartographer_finish_covenant);
			end
		
end

script dormant m20_active_cartographer_02()
		dprint("ACTIVE CARTOGRAPHER WOKEN");
		sleep_until (b_cathedral_clear == TRUE);
  	dprint("ACTIVE CARTOGRAPHER TRIGGERED");
    
					wake(f_dialog_m20_cartographer_cutscene_pre_use);

		
end

script dormant m20_didact_title()
	//triggered on Infinity contact
    		//hud_play_global_animtion (screen_fade_out);
    		kill_script(m20_objective_2_nudge);
    		sleep_forever(m20_objective_2_nudge);
    		b_objective_2_complete = TRUE;
    		objectives_finish (1); 
/*    cinematic_show_letterbox( TRUE );
    cinematic_set_title( chapter_text_2 );
	hud_stop_global_animtion (screen_fade_out);
	sleep (30 * 9);
	hud_play_global_animtion (screen_fade_in);
	hud_stop_global_animtion (screen_fade_in);		
	cinematic_show_letterbox( FALSE );*/
end

script dormant m20_Cathedral_cutscene_post_use()
	//triggers after M20 cathedral cutscene is completed, by volume for now.
    sleep_until( volume_test_players(m20_Cathedral_cutscene_post_use), 1);
    wake(f_dialog_m20_Cathedral_cutscene_post_use);
			//	thread (story_blurb_add(Ftitle"domain", "OBJECTIVE: FIGHT YOUR WAY TO THE TERMINUS"));
			thread(m20_objective_3_nudge());
    sleep_s(1);
    

		f_chapter_title( chapter_text_2 );


end


script static void m20_bridge_elevator()
   sleep_until( volume_test_players(tv_vo_scouts), 1);
     	wake(f_dialog_m20_bridge_elevator);
			thread(m20_objective_3_nudge());
end


script static void m20_bridge_sentinel_death()
		dprint("d");
     	//wake(f_dialog_M20_bridge_post);
     	//kill_script(f_dialog_M20_bridge_end);

end


script dormant m20_fall_volume()
     	sleep_until( (volume_test_players(fall_volume_1)) or (volume_test_players(fall_volume_2)), 1);
     			wake(f_dialog_m20_fall_volume);
				
end

//script dormant m20_banshees()
//	
//     	sleep_until( volume_test_players(m20_banshees), 1);
//     			wake(/*f_dialog_m20_phantom_on_approach_02*/);
//
//end


script static void M20_bridge_end()
	// CMS TRYING NEW BRIDGE_END
	sleep_until( volume_test_players(m20_bridge_end), 1);                          

end


script static void m20_courtyard_covenant()
     	sleep_until( volume_test_players(m20_hallway_trigger), 1);
					wake(f_dialog_m20_courtyard_covenant);
         
end

script static void m20_courtyard_entrance()
	f_chapter_title( chapter_text_3 );

	/*
	hud_play_global_animtion (screen_fade_out);
	cinematic_show_letterbox( TRUE );
	sleep_s(1.5);
	cinematic_set_title( chapter_text_3 );	
	hud_stop_global_animtion (screen_fade_out);
  sleep_s(3.5);
	hud_play_global_animtion (screen_fade_in);
	hud_stop_global_animtion (screen_fade_in);		
	cinematic_show_letterbox( FALSE );
	*/
	
	cui_hud_set_new_objective (objective_6);
	objectives_show_up_to (3);
	objectives_finish (2);
	
end


script static void m20_courtyard_1stfl()
     	sleep_until( volume_test_players(m20_courtyard_1stfl), 1);
			wake(f_dialog_m20_courtyard_1stfl);

end

script static void m20_last_stand()

	sleep_until( volume_test_players(m20_last_stand), 1);
	//wake(f_dialog_m20_last_stand);
    	
	sleep_s(3);
	
	//object_hide( temp_cutscene_M21_tower, TRUE );
	wake(f_dialog_m20_door_approach);
	sleep_s(2);
	//wake(m20_hunters_dead);

end


script dormant m20_hunters_dead()
	//thread (story_blurb_add("domain", "CHIEF FIGHTS SOME HUNTERS. RAWR."));
	dprint("d");	
end

script dormant m20_atrium_ent()
  
	wake(f_dialog_m20_atrium_ent);

end		  
		  
script static void f_my_first_domain()
	f_narrative_domain_terminal_setup( 0, domain_terminal, domain_terminal_button );
	//moved to global script
	/*
	//fires first time you use the map button
	sleep_until (object_valid (myfirstdomain_button), 1);
	sleep_until (device_get_position(myfirstdomain_button) > 0.0, 1 );
	device_set_power (myfirstdomain_button, 0.0);
	pup_play_show ("pup_m20_domain");
		if (IsNarrativeFlagSetOnAnyPlayer(0) == FALSE) and (IsNarrativeFlagSetOnAnyPlayer(1) == FALSE) and (IsNarrativeFlagSetOnAnyPlayer(2) == FALSE) and (IsNarrativeFlagSetOnAnyPlayer(3) == FALSE) and (IsNarrativeFlagSetOnAnyPlayer(4) == FALSE) and (IsNarrativeFlagSetOnAnyPlayer(5) == FALSE) and (IsNarrativeFlagSetOnAnyPlayer(6) == FALSE)then
			wake(f_dialog_global_my_first_domain); 
		end
		SetNarrativeFlagWithFanfareMessageForAllPlayers( 0, TRUE );
		object_destroy(myfirstdomain_button);
	*/
end


//ELEVATOR BLIP
script dormant m20_atrium_waypoint()
	sleep_until( volume_test_players(m20_atrium_ent), 1);
		dprint ("waiting to blip lift...");
		wake(m20_atrium_waypoint_kill);
		wake(f_terminus_lift_waypoint);
	
		sleep_s(40);
	
		wake(f_dialog_m20_atrium_waypoint);
			
end

script dormant m20_atrium_waypoint_kill()
  sleep_until (volume_test_players_all(tv_tower_elevator), 1);
		kill_script(m20_atrium_waypoint);
		sleep_forever(m20_atrium_waypoint);
		dprint("m20_atrium_waypoint killed");

end

script dormant f_terminus_lift_waypoint()
	sleep_s (43);	

	repeat
		sleep_until (not volume_test_players_all (tv_tower_elevator), 1);
			dprint ("blipping terminus lift...");
			f_blip_flag (flag_terminus_lift, "default");
		
		sleep_until (volume_test_players_all (tv_tower_elevator), 1);
			dprint ("unblipping terminus lift...");
			f_unblip_flag (flag_terminus_lift);
		
	until (1 == 0);

end


//BEGIN ENDING CINEMATIC / CUTSCENE
script dormant cutscene_m21_tower()

	dprint( "Cinematic entered!" );
	
	b_objective_3_complete = TRUE;
	
  player_action_test_reset();
	
if (b_cinematics and (not b_editor) or (b_editor_cinematics)) then

	cinematic_enter ("cin_m021_tower", TRUE);
	streamer_pin_tag("objects\characters\storm_masterchief\storm_masterchief.biped", 0);
	streamer_pin_tag("objects\characters\storm_cortana\storm_cortana.biped", 0);
	
	switch_zone_set ("cin_m21_tower_zs");
	//sleep ( 1 );
	//sleep_until (preparingToSwitchZoneSet() == FALSE, 1);
	//sleep ( 1 );

	cinematic_suppress_bsp_object_creation(TRUE);

	f_start_mission ("cin_m021_tower");

	cinematic_suppress_bsp_object_creation(FALSE);

	cinematic_exit_no_fade ("cin_m021_tower", TRUE); 
	streamer_unpin_tag("objects\characters\storm_masterchief\storm_masterchief.biped", 0);
	streamer_unpin_tag("objects\characters\storm_cortana\storm_cortana.biped", 0);
	print ("Cinematic exited!"); 

end 

	//END LEVEL!
	game_won();

end


// =================================================================================================
// =================================================================================================
// NUDGES
// =================================================================================================
// =================================================================================================


script static void m20_objective_1_nudge()
			print("m20_objective_1_nudge threaded");
			sleep_s(900);
			if b_objective_1_complete == FALSE then
					thread(f_dialog_m20_objective_1());
			end
				if b_objective_1_complete == FALSE then
					thread(m20_objective_1_nudge());
			end
end

script static void m20_objective_2_nudge()
			print("m20_objective_2_nudge threaded");
			sleep_s(900);
			if b_objective_2_complete == FALSE then
						thread(f_dialog_m20_objective_2());
			end
			if b_objective_2_complete == FALSE then
						thread(m20_objective_2_nudge());
			end
end

script static void m20_objective_3_nudge()
			print("m20_objective_3_nudge threaded");
			sleep_s(900);
			if b_objective_3_complete == FALSE then
						thread(f_dialog_m20_objective_3());
			end
			if b_objective_1_complete == FALSE then
					thread(m20_objective_3_nudge());
			end
end



global boolean b_phantom_1_took_damage = FALSE;
global boolean b_phantom_2_took_damage = FALSE;
global boolean b_phantom_3_took_damage = FALSE;

global boolean b_phantom_1_active = FALSE;
global boolean b_phantom_2_active = FALSE;
global boolean b_phantom_3_active = FALSE;


//=========================================================
//CRATER AMBIENT PHANTOMS FLY
//=========================================================
script command_script crater_phantom_fly_0()
                dprint ("SPAWNED PHANTOM 01");

                cs_ignore_obstacles (TRUE);
                object_set_variant (ai_vehicle_get( ai_current_actor ), ("chin_gun_light") );
                cs_vehicle_speed (0.5);
                
                cs_fly_by (phantom_puppet.p0);
                cs_fly_by (phantom_puppet.p1);
                cs_fly_by (phantom_puppet.p2);
                cs_fly_by (phantom_puppet.p3);
                cs_fly_by (phantom_puppet.p4);
                cs_fly_by (phantom_puppet.p5);
                cs_fly_by (phantom_puppet.p6);
                
                b_phantom_1_active = FALSE;
                ai_erase(phantom_01);
                
end

script command_script crater_phantom_fly_1()
                dprint ("SPAWNED PHANTOM 02");

                cs_ignore_obstacles (TRUE);
                object_set_variant (ai_vehicle_get( ai_current_actor ), ("chin_gun_light") );
                cs_vehicle_speed (0.5);
                
                cs_fly_by (phantom_puppet_2.p0);
                cs_fly_by (phantom_puppet_2.p1);
                cs_fly_by (phantom_puppet_2.p2);
                cs_fly_by (phantom_puppet_2.p3);
                cs_fly_by (phantom_puppet_2.p4);
                cs_fly_by (phantom_puppet_2.p5);
                cs_fly_by (phantom_puppet_2.p6);

                b_phantom_2_active = FALSE;
                ai_erase(phantom_02);
                
end

script command_script crater_phantom_fly_2()
                dprint ("SPAWNED PHANTOM 03");

                cs_ignore_obstacles (TRUE);
                object_set_variant (ai_vehicle_get( ai_current_actor ), ("chin_gun_light") );
                cs_vehicle_speed (0.5);
                
                cs_fly_by (phantom_puppet_3.p0);
                cs_fly_by (phantom_puppet_3.p2);
                cs_fly_by (phantom_puppet_3.p3);
                cs_fly_by (phantom_puppet_3.p4);
                cs_fly_by (phantom_puppet_3.p5);
                cs_fly_by (phantom_puppet_3.p6);

                b_phantom_3_active = FALSE;
                ai_erase(phantom_03);
                
end

//=========================================================
//CHECK IF PHANTOMS HAVE BEEN SHOT
//=========================================================
script dormant crater_phantom_check_01()
                dprint ("waiting for damage on phantom 01");
                sleep_until (unit_get_health (ai_vehicle_get_from_spawn_point (phantom_01.spawn_points_0)) < 1 and b_phantom_1_active, 1);
                
                b_phantom_1_took_damage = TRUE;
                
                dprint ("PHANTOM 01 SEES PLAYER");
                ai_set_deaf (phantom_01, 0);
                ai_set_blind (phantom_01, 0);
                
end

script dormant crater_phantom_check_02()
                dprint ("waiting for damage on phantom 02");
                sleep_until (unit_get_health (ai_vehicle_get_from_spawn_point (phantom_02.spawn_points_0)) < 1 and b_phantom_2_active, 1);
                b_phantom_2_took_damage = TRUE;

                dprint ("PHANTOM 02 SEES PLAYER");
                ai_set_deaf (phantom_01, 0);
                ai_set_blind (phantom_01, 0);
                
end

script dormant crater_phantom_check_03()
                dprint ("waiting for damage on phantom 03");
                sleep_until (unit_get_health (ai_vehicle_get_from_spawn_point (phantom_03.spawn_points_0)) < 1 and b_phantom_3_active, 1);
                b_phantom_3_took_damage = TRUE;
                
                dprint ("PHANTOM 03 SEES PLAYER");
                ai_set_deaf (phantom_02, 0);
                ai_set_blind (phantom_02, 0);

end


// =================================================================================================
// =================================================================================================
// Armor Abilities
// =================================================================================================
// =================================================================================================


script static void f_waypoint_equipment_unlock()

		wake(f_waypoint_global_equipment_unlock);
end

// --- End m20_narrative.hsc ---

// --- Begin m20_streaming.hsc ---
// Scripts to govern special case streaming areas, patching up problems that aren't easily handled with the built-in behavior.

script startup InitializeStreamingScripts()
	local long toCathThreadId = thread(ToCathedralTransition());
	local long wreckageThreadId = thread(WreckageATeleportPlug());
	local long fieldThreadId = thread(FieldLean());
	local long toCathTeleportThreadId = thread(ToCathedralTeleportPlug());
	
	sleep_until(current_zone_set() == s_zoneset_cathedral_int);
	kill_thread(toCathThreadId);
	kill_thread(wreckageThreadId);
	kill_thread(fieldThreadId);
	kill_thread(toCathTeleportThreadId);
end

// Once users have moved significantly into cathedral_ext, we load s_zoneset_cathedral_ext, unloading field. 
// When this happens, disable the forward progression volumes, and enable triggers that will reload field.
// This is able to work because we won't unload anything while backtracking, so triggering a load of field and then
// immediately cancelling it by walking back into cathedral_ext is acceptable.
script static void ToCathedralTransition()
	zone_set_trigger_volume_enable("zone_set:12_field_to_cathedral:*:backtrack", FALSE);
	zone_set_trigger_volume_enable("zone_set:12_field_to_cathedral:*", TRUE);
	
	repeat
		sleep_until(current_zone_set_fully_active() == s_zoneset_cathedral_ext, 1);
		zone_set_trigger_volume_enable("zone_set:12_field_to_cathedral:*", FALSE);
		zone_set_trigger_volume_enable("zone_set:12_field_to_cathedral:*:backtrack", TRUE);
		
		// Re-enable forward progression when players return to field_lean zoneset (unloading cathedral_ext)
		sleep_until(current_zone_set_fully_active() == s_zoneset_field_lean, 1);
		zone_set_trigger_volume_enable("zone_set:12_field_to_cathedral:*:backtrack", FALSE);
		zone_set_trigger_volume_enable("zone_set:12_field_to_cathedral:*", TRUE);
	until(false, 1);	

end

script static void FieldLean()
	zone_set_trigger_volume_enable("zone_set:09_field:*:back", FALSE);
	
	repeat
		sleep_until(current_zone_set_fully_active() == s_zoneset_field_lean, 1);
		zone_set_trigger_volume_enable("zone_set:09_field:*", FALSE);
		zone_set_trigger_volume_enable("zone_set:09_field:*:back", TRUE);
		
		sleep_until(current_zone_set_fully_active() == s_zoneset_field, 1);
		zone_set_trigger_volume_enable("zone_set:09_field:*", TRUE);
		zone_set_trigger_volume_enable("zone_set:09_field:*:back", FALSE);
	until(false, 1);	
end

// Enable/disable the plug volume that sits over the seam between 04_to_wreckage and 05_wreckage_a so
// that we can avoid OOE sight problems while also keeping good distance between the "usual" volumes to
// prevent excessive teleports in co-op.
script static void WreckageATeleportPlug
	zone_set_trigger_volume_enable("begin_zone_set:05_wreckage_a:*:scripted", FALSE);
	zone_set_trigger_volume_enable("begin_zone_set:08_to_field:*:forward", FALSE);

	// Need to start with the to_field trigger disabled for technical reasons. hs_update is early in game_tick, 
	// the zone switch code is late, with object updates and moves in between. Script may be a frame later than
	// zone switch code in detecting entry into a volume. 
	
	repeat
		// Using volume_test_objects to be completely consistent with the automatic zone switching tests
		
		sleep_until(volume_test_objects("begin_zone_set:08_to_field:*:forward", players()), 1);
		zone_set_trigger_volume_enable("begin_zone_set:08_to_field:*:forward", TRUE);
		zone_set_trigger_volume_enable("begin_zone_set:05_wreckage_a:*:scripted", TRUE);
		sleep_until(volume_test_objects("begin_zone_set:04_to_wreckage:*:back", players()), 1);
		zone_set_trigger_volume_enable("begin_zone_set:05_wreckage_a:*:scripted", FALSE);
		zone_set_trigger_volume_enable("begin_zone_set:08_to_field:*:forward", FALSE);
	until(false, 1);	
end

script static void ToCathedralTeleportPlug()
	
	repeat
		// Turn it off when no one is in field rear.
		sleep_until(not volume_test_players("tv_streaming_field_rear"), 1);
		zone_set_trigger_volume_enable("begin_zone_set:12_field_to_cathedral:*:scripted", FALSE);
		
		// Turn it back on when we move back into field
		sleep_until(volume_test_players("tv_streaming_field_rear"), 1);
		zone_set_trigger_volume_enable("begin_zone_set:12_field_to_cathedral:*:scripted", TRUE);
	until(false, 2);

end
// --- End m20_streaming.hsc ---

