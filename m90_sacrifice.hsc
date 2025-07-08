// --- Begin m90_arcade.hsc ---
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343
//
// Mission: 					m90_sacrifice
//	Insertion Points:	crash
//										
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343

// =================================================================================================
// =================================================================================================
// *** GLOBALS ***
// =================================================================================================
// =================================================================================================



// =================================================================================================
// =================================================================================================
// *** START-UP ***
// =================================================================================================
// =================================================================================================

global short s_objcon_arcade = 0;
global boolean b_arcade_complete = FALSE;
global boolean b_arcade_bishop_3_fallback = FALSE;
global boolean b_arcade_scan_done = FALSE;
global boolean b_arcade_birth_done = FALSE;
global boolean b_arcade_intro_door_open = FALSE;
global boolean b_TransitionCinStart = FALSE;
global boolean b_TransitionCinEnd = FALSE;
global boolean b_arcade_in_dropdown = FALSE;
global boolean b_arcade_cin_intro_done = FALSE;

script startup m90_arcade()		
	if b_debug then 
		print_difficulty(); 
	end
	
	sleep_until( b_Eye_Complete , 4 );
	thread( f_disable_all_trench_kill_vols() );
	thread( f_flight_stop_direction_check() );
	sleep_until( volume_test_players( tv_arcade_init ),2 );
		dprint("=== ARCADE INIT ===");
		data_mine_set_mission_segment ("m90_arcade");
		f_m90_update_2_objectives();
		set_broadsword_respawns ( false );

		f_m90_loadout_set( 0 );
		garbage_collect_now();	
		sleep(1);
		object_create_folder( crs_arcade );
		object_create_folder( dms_arcade );
		object_create_folder(crs_arcade_fixed);
		wake ( f_arcade_controller );
		wake ( f_arcade_objcon_controller );				
		wake ( f_arcade_didact_scan_01 );
		wake ( f_arcade_1_save_xtra );
		wake ( f_arcade_1_save );
		wake ( nar_arcade_init );
		wake ( f_dropdown_finish_wait );
		wake ( f_arcade_cleanup );
		//f_m90_game_save();
		
		
	sleep_until ( ( b_TransitionCinStart == FALSE and b_TransitionCinEnd == FALSE ) or  (  b_TransitionCinEnd  ) );
		game_insertion_point_unlock(1);
		sleep(3);
		thread(  f_flight_cleanup_goals() );
		f_m90_game_save_no_timeout();
		sleep(5);
		fade_in ( 0,0,0,0);
		f_m90_show_chapter_title( title_on_foot );
		b_arcade_cin_intro_done = TRUE;
		//wake( f_arcade_fight_intro );
		
		wake( f_dropdown_clear_blip2 );
		sleep_until( s_objcon_arcade > 10, 1 );
		  //f_objective_set(r_index, b_new_msg, b_new_blip, b_complete_msg, b_complete_unblip )
			thread( f_objective_set( DEF_R_OBJECTIVE_ON_FOOT_GO, TRUE, FALSE, TRUE,TRUE ) );


end





script dormant f_arcade_cleanup()
	sleep_until( volume_test_players( tv_arcade_cleanup ),3 );
	//	f_m90_set_normal_g();
		ai_erase( sg_arcade_all );
		object_destroy_folder( crs_arcade );
		//object_destroy_folder( dms_arcade );
		f_unblip_flag( fg_dropdown_jump_wp );
		f_unblip_flag( flag_dropdown_wp_2);
		b_arcade_complete = TRUE;
		sleep(1);
		kill_script(f_arcade_bishop_3_fallback);
		kill_script(f_arcade_1_save);
		kill_script(f_arcade_1_save_xtra);
		kill_script(f_arcade_blip_dropdown);
		kill_script(f_arcade_spawn_rear_turrets);
		kill_script(f_arcade_2_knight_teleport_in);
		
end




script static void f_crash_cinematic_transition ()	
	
	sleep_until (b_third_gun_destroyed == TRUE);
	
	if player_get_first_alive() != NONE then
		b_Eye_Complete = TRUE;
		thread( f_mus_m90_e01_finish() );
		b_TransitionCinStart = TRUE;
		//b_eye_plug_fire = FALSE;
		b_on_foot_cinematic_set = TRUE;
		cinematic_show_letterbox (TRUE);
	 	sleep_s (0.5);
	 	
	 	if player_get_first_alive() != NONE then
			fade_out( 1,1,1,0);
			thread( ins_cin_91() );
		end
	end


end

script dormant f_arcade_controller()
	sleep_until ( volume_test_players( tv_start_door ), 1 );
		//f_m90_game_save();
		ai_place (sg_arcade_1);
	


	sleep_until ( volume_test_players( tv_arcade_door_1 ), 1 );
		print("arcade door 1");
		
		//think about firing this off based on enemy death
		f_m90_game_save();
		
		
		sleep(60);
		ai_place_in_limbo ( sq_for_arc_2_knights_bw_1 );
		sleep(1);
		ai_place ( sq_for_arc_2_bishop_1 );
		sleep( 5 );		
		ai_place_in_limbo( sq_for_arc_2_knights );
		wake( f_arcade_2_knight_door );
		sleep( 15 );
		ai_place_in_limbo ( sq_for_arc_4_ranger );
		sleep(5);
		ai_place_in_limbo ( sq_for_arc_4_ranger_2 );
		sleep(1);
		ai_place_in_limbo ( sq_for_arc_4_bw );
		//ai_place( sq_for_arc_2_turret );
		
		
		wake( f_arcade_2_2nd_knight_spawn );
		sleep(3);
		wake( f_arcade_2_turret_spawn );


	
	sleep_until ( volume_test_players( tv_arcade_door_2 ), 1 );

		f_m90_game_save_no_timeout();
		//ai_place (sg_arcade_3);
		//wake( f_arcade_spawn_arc_3_turrets );
		//ai_place_with_shards( sq_for_arc_3_turret );
		//device_set_position (arcade_door_2, 1);
		ai_place ( sq_for_arc_4_bishop );
		//wake( f_arcade_bishop_3_fallback );
		sleep(3);
		wake( f_arcade_pawn_shard );
	
	sleep_until ( volume_test_players( tv_hallway_save ), 1 );
		f_m90_game_save_no_timeout();	
	sleep_until ( volume_test_players( tv_arcade_finish ), 1 );
		thread( f_mus_m90_e02_finish() );



end

script dormant f_arcade_2_turret_spawn()

		sleep_until( object_get_shield( ai_get_object( sq_for_arc_2_bishop_1) ) < 1 or volume_test_players( tv_arcade_2_mid ) , 1 );
				//RequestAutomatedTurretActivation( ai_vehicle_get( sq_for_arc_2_turret.front ) );
				ai_place_with_shards( sq_for_arc_2_turret );
end




script dormant  f_arcade_didact_scan_01()

	dprint("** waiting for scan ");
	sleep_until( volume_test_players( tv_arcade_1st_scan ), 1);
		//dprint("scan 1");
		//effect_new (environments\solo\m90_sacrifice\fx\scan\dscan_crash2.effect, flag_didact01_scan_2 );
		
	sleep_until( device_get_position( dm_arcade_door_intro ) == 1.0);	
		//sleep(15);	
		thread( f_mus_m90_e02_start() );
		b_arcade_intro_door_open = TRUE;
		sleep(2);
		//thread(f_arcade_bishop_move());
		
	  effect_new (environments\solo\m90_sacrifice\fx\scan\dscan_crash.effect, flag_didact01_scan );

		b_arcade_scan_done = TRUE;
	
	
	sleep_until( object_get_shield( ai_get_object( sq_for_arc_1_bishop) ) < 1 or volume_test_players( tv_arcade_intro_turret ) , 1 );
		dprint("request front turret");
		ai_place_with_shards( sq_for_arc_1_turret);
				//RequestAutomatedTurretActivation( ai_vehicle_get(sq_for_arc_1_turret.front) );	
end

script dormant f_arcade_bishop_3_fallback()

		//sleep( 30 * 10 );
		//dprint("bishop fallback");
		sleep_until( ai_spawn_count( sq_for_arc_3_turret ) == 2 );
			dprint("bishop fallback");
			b_arcade_bishop_3_fallback = TRUE;
end



script dormant f_arcade_1_save_xtra()
	sleep_until ( volume_test_players( tv_arcade_1_save_xtra), 1 );
		f_m90_game_save();
		
end


script dormant f_arcade_1_save()
	sleep_until ( volume_test_players( tv_arcade_1_save ), 1 );
		f_m90_game_save();
		
end

script dormant f_arcade_2_knight_door()
	sleep_until ( volume_test_objects( tv_arcade_2_open_knight_door, ai_actors(sq_for_arc_2_knights) ) or 	not b_arcade_2_reserve , 1 );
			dprint("opening door 2 ");
			device_set_position (arcade_door_2, 1);
		
end


script dormant f_arcade_pawn_shard()
	sleep_until( s_objcon_arcade >= 60 or object_get_shield( ai_get_object( sq_for_arc_4_bishop ) ) < .99 , 1 );
		dprint("placing pawns with shards");
		ai_place_with_shards(sq_for_arc_3_pawns , 3);

end

script dormant f_arcade_objcon_controller()

	garbage_collect_now();
	sleep_until (volume_test_players (tv_arcade_objcon_10) or s_objcon_arcade >= 10, 1);
		if s_objcon_arcade <= 10 then
			s_objcon_arcade = 10;
			dprint("s_objcon_arcade = 10 ");
		end
					
	sleep_until (volume_test_players (tv_arcade_objcon_20) or s_objcon_arcade >= 20, 1);
		if s_objcon_arcade <= 20 then
			s_objcon_arcade = 20;
			dprint("s_objcon_arcade = 20 ");
		end
		wake( f_arcade_spawn_rear_turrets );

	sleep_until (volume_test_players (tv_arcade_objcon_30) or s_objcon_arcade >= 30, 1);
		if s_objcon_arcade <= 30 then 
			s_objcon_arcade = 30;
			dprint("s_objcon_arcade = 30 ");
		end
		

		
	sleep_until (volume_test_players (tv_arcade_objcon_40) or s_objcon_arcade >= 40, 1);
		if s_objcon_arcade <= 40 then 
			s_objcon_arcade = 40;
			dprint("s_objcon_arcade = 40 ");
		end
		
		
	sleep_until (volume_test_players (tv_arcade_objcon_50) or s_objcon_arcade >= 50, 1);
		if s_objcon_arcade <= 50 then 
			s_objcon_arcade = 50;
			dprint("s_objcon_arcade = 50 ");
		end		

	sleep_until (volume_test_players (tv_arcade_objcon_55) or s_objcon_arcade >= 55, 1);
		if s_objcon_arcade <= 55 then 
			s_objcon_arcade = 55;
			dprint("s_objcon_arcade = 55 ");
		end	
		
		

	sleep_until (volume_test_players (tv_arcade_objcon_60) or s_objcon_arcade >= 60, 1);
		if s_objcon_arcade <= 60 then 
			s_objcon_arcade = 60;
			dprint("s_objcon_arcade = 60 ");
		end
		
	//ai_place (sg_arcade_4);
		wake( f_arcade_blip_dropdown );
	sleep_until (volume_test_players (tv_arcade_objcon_70) or s_objcon_arcade >= 70, 1);
		if s_objcon_arcade <= 70 then 
			s_objcon_arcade = 70;
			dprint("s_objcon_arcade = 70 ");
		end

	sleep_until (volume_test_players (tv_arcade_objcon_80) or s_objcon_arcade >= 80, 1);
		if s_objcon_arcade <= 80 then 
			s_objcon_arcade = 80;
			dprint("s_objcon_arcade = 80 ");
		end
		wake( f_teleport_intro_crates );
		thread( f_drop_down_effects() );
		f_m90_loadout_set( 1 );
end

script dormant f_arcade_blip_dropdown()
	sleep_until (ai_living_count (sg_arcade_4) <= 0 and s_objcon_arcade >= 70, 1);
		sleep_s(3);
		if not b_arcade_in_dropdown then
		
			f_blip_flag( fg_dropdown_jump_wp, "default" );
		end
end
//
script dormant f_dropdown_finish_wait()
	sleep_until (volume_test_players (tv_arcade_objcon_80) or volume_test_players (tv_dropdown_finish) 	, 1);
		
		
		if player_valid( player0 ) then
			dprint("disable damage for player 0");
			thread( f_dropdown_stop_fall_damage_player( player0 ) );
		end
		if player_valid( player1 ) then
			dprint("disable damage for player 1");
			thread( f_dropdown_stop_fall_damage_player( player1 ) );
		end
		if player_valid( player2 ) then
			dprint("disable damage for player 2");
			thread( f_dropdown_stop_fall_damage_player( player2 ) );
		end
		if player_valid( player3 ) then
			dprint("disable damage for player 3");
			thread( f_dropdown_stop_fall_damage_player( player3 ) );
		end		

		b_arcade_in_dropdown = TRUE;
		sleep( 5 );
		
		//thread( f_dropdown_stop_fall_damage( TRUE ) );
		dprint("SETUP: DROP DOWN::disabled fall damage");
end

script static void f_dropdown_stop_fall_damage_player( unit p_player )
	sleep_until ( volume_test_objects( tv_dropdown_finish, p_player ), 1 );
		f_unblip_flag( fg_dropdown_jump_wp );
		f_blip_flag( flag_dropdown_wp_2, "default" );
		dprint("disable damage for player");
		unit_falling_damage_disable ( p_player, TRUE );
	sleep_until ( volume_test_objects( tv_teleport_init, p_player ) or b_engineroom_done, 1 );	
		unit_falling_damage_disable ( p_player, FALSE );
end

script dormant f_dropdown_clear_blip2()
	sleep_until ( volume_test_players( tv_teleport_intro_crate), 1 );
		f_unblip_flag( flag_dropdown_wp_2 );

end

script static void f_dropdown_stop_fall_damage( boolean b_No_Fall_Damage )
	unit_falling_damage_disable ( player0, b_No_Fall_Damage );
	unit_falling_damage_disable ( player1, b_No_Fall_Damage );
	unit_falling_damage_disable ( player2, b_No_Fall_Damage );
	unit_falling_damage_disable ( player3, b_No_Fall_Damage );
end

script dormant f_arcade_spawn_rear_turrets()
			dprint("Spawn left_ turrets");
			//RequestAutomatedTurretActivation( ai_vehicle_get( sq_for_arc_1_turret.left ) );
			ai_place_with_shards(sq_for_arc_1_turret_2);
			sleep(1);
		sleep_until( object_get_health(sq_for_arc_1_turret_2) > 0 and object_get_health(sq_for_arc_1_turret) < 0, 1 );
			dprint("Spawn right_ turrets");
			
			if ( difficulty_legendary() or game_is_cooperative() ) then
				//RequestAutomatedTurretActivation( ai_vehicle_get( sq_for_arc_1_turret.right ) );
				ai_place_with_shards(sq_for_arc_1_turret_3);
			end
		
end

global boolean b_arcade_2_reserve = TRUE;
script static void f_arcade_2_knight_teleport_in()
	sleep_until( ai_spawn_count( sq_for_arc_2_knights_bw_1 ) > 0 and ai_living_count( sq_for_arc_2_knights_bw_1 ) < 1)  ;
			b_arcade_2_reserve = FALSE;	
			sleep_rand_s(0.5,1);
	
			if ( b_arcade_turret_2_activated and object_get_health ( ai_get_object (sq_for_arc_2_turret) ) > 0 ) then	
				dprint("turret 2 still alive");		
				sleep_rand_s(3,5);
			end

	if s_objcon_arcade < 60 then
		dprint("teleporting knight");
	end
	
	sleep_until( ai_spawn_count( sq_for_arc_2_knights ) > 0 and ai_living_count( sq_for_arc_2_knights ) < 1)  ;
		f_m90_game_save_no_timeout();

end

script dormant f_arcade_2_2nd_knight_spawn()
	sleep_until( b_arcade_birth_done or ai_living_count( sq_for_arc_2_knights_bw_1 ) == 0 or s_objcon_arcade >= 50, 1 );
		dprint( "spawn arcade 2 reserve knight");
		//ai_place( sq_for_arc_2_knights );
		thread( f_arcade_2_knight_teleport_in() );
end


// =================================================================================================
// =================================================================================================
// START
// =================================================================================================
// =================================================================================================
global boolean b_arcade_turret_2_activated = FALSE;


script static void f_drop_down_effects()

	effect_new( environments\solo\m70_liftoff\fx\energy\gravlift_base.effect, flag_dropdown_effect_1a);
	effect_new( environments\solo\m70_liftoff\fx\energy\gravlift_base.effect, flag_dropdown_effect_1b);
	effect_new( environments\solo\m70_liftoff\fx\energy\gravlift_base.effect, flag_dropdown_effect_1c);
	effect_new_between_points(environments\solo\m70_liftoff\fx\energy\gravlift_tube.effect, flag_dropdown_effect_1a, flag_dropdown_effect_2);
end

script static void f_drop_down_effects_cleanup()

	effect_kill_from_flag( environments\solo\m70_liftoff\fx\energy\gravlift_base.effect, flag_dropdown_effect_1a );
	effect_kill_from_flag( environments\solo\m70_liftoff\fx\energy\gravlift_base.effect, flag_dropdown_effect_1b );
	effect_kill_from_flag( environments\solo\m70_liftoff\fx\energy\gravlift_base.effect, flag_dropdown_effect_1c );
	effect_kill_from_flag( environments\solo\m70_liftoff\fx\energy\gravlift_tube.effect, flag_dropdown_effect_1a );
	effect_kill_from_flag( environments\solo\m70_liftoff\fx\energy\gravlift_tube.effect, flag_dropdown_effect_2 );
end
/*

script static void ActivateTurretArc2(ai turretPilot, unit turretVeh)
    dprint("Turret Activated");
    	
    effect_new_on_object_marker (objects\characters\storm_pawn\fx\pawn_phase_in.effect, ai_vehicle_get(turretPilot), "target_turret" );
    sleep(10);
    effect_new_on_object_marker (objects\characters\storm_pawn\fx\pawn_phase_in.effect, ai_vehicle_get(turretPilot), "target_turret" );
    object_hide( ai_vehicle_get(turretPilot), false);
    ai_braindead (turretPilot, false);
    ai_disregard (ai_actors (turretPilot), false);
end
*/



script static void rp()
	inspect( object_get_shield( ai_get_object( sq_for_arc_1_bishop_direction ) )) ;
end





// --- End m90_arcade.hsc ---

// --- Begin m90_coldant.hsc ---
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343
//
// Mission: 					m90_sacrifice
//	Insertion Points:Coldant
//										
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343

// =================================================================================================
// =================================================================================================
// *** GLOBALS ***
// =================================================================================================
// =================================================================================================

global short composer_core_count = 2;
global boolean b_cold_left_core_active = TRUE;
global boolean b_cold_right_core_active = TRUE;
global boolean b_cold_outside_shield_active = TRUE;
global boolean b_cold_inside_shield_active = TRUE;
global boolean b_cold_mancs_active = FALSE;
global boolean b_coldant_active = FALSE;
global boolean b_coldant_gameplay_active = FALSE;
global boolean b_coldant_complete = FALSE;
global short s_cold_shield_pieces = 2;
global short s_objcon_cold_left = 0;
global short s_objcon_cold_right = 0;
global boolean b_coldant_pier_active = FALSE;
global boolean b_coldant_composer_fire = FALSE;
global object g_ics_player = NONE;
global device g_ics_plinth2 = NONE;
global device g_ics_plinth3 = NONE;
global boolean b_debug_skip_intro = FALSE;
global boolean b_cold_main_plinth_ready = FALSE;
global boolean b_cold_left_plinth_ready = FALSE;
global boolean b_cold_right_plinth_ready = FALSE;
global boolean b_cold_left_plinth_blip = FALSE;
global boolean b_cold_right_plinth_blip = FALSE;
global boolean b_cold_right_ascend = FALSE;
global boolean b_cold_left_ascend = FALSE;
global boolean b_cold_main_plinth_finished = FALSE;
global boolean b_cold_main_plinth_shard_done = FALSE;
// =================================================================================================
// =================================================================================================
// *** START-UP ***
// =================================================================================================
// =================================================================================================

script startup m90_coldant()		

	wake ( f_coldant_starter );	
end

script dormant f_coldant_starter()
	local long l_cold_intro_pup = -1;
	sleep_until( b_walls_complete , 4 );
	sleep_until (volume_test_players( tv_coldant_init ),1);	
		thread (fx_didact_back_glow());
		data_mine_set_mission_segment ("m90_coldant");
		dprint (":: Coldant Start ::");
		garbage_collect_now();
		f_jump_cleanup_eye_ap();
		wake( nar_coldant_init );
		//thread( f_cold_shield_kill());
		zone_set_trigger_volume_enable( "zone_set:final", FALSE);
		set_broadsword_respawns ( false );	
		f_m90_loadout_set( 2 );  //power weapons
		garbage_collect_now();
		sleep(1);
		object_create_folder( crs_composer);
		object_create_folder( crs_comp_weapons);
		object_create_folder( crs_jump_comp_weapons);
		//object_create_folder( crs_comp_mc );
		object_create_folder( crs_comp_plinths );
		object_create(dc_comp_switch_front);
		object_create(dc_comp_switch_right);
		object_create(dc_comp_switch_left);
		object_create( comp_shield_octopus );
		object_create(dc_left_bridge);
		//object_destroy( maya_script_composer_shield_right );
		//object_destroy( maya_script_composer_shield_left );
		wake( f_jump_coldant_aa );
		//object_create( sn_coldant_didact_core );
		object_hide( maya_scripted_m90_composerbridge_crate, TRUE);
		//object_hide( didact_bridge, TRUE ); //Hide final light bridge sound scenery: AUDIO!
		object_destroy ( didact_bridge );
		//dprint ( "------------------------- DIDACT BRIDGE IS OFF! ----------------------------" );
		b_coldant_gameplay_active = TRUE;
		sleep(5);
		device_set_power ( dc_comp_switch_front, 0 );
		device_set_power ( dc_comp_switch_right, 0 );
		device_set_power ( dc_comp_switch_left, 0 );
		thread( f_cold_composer_cloud() );
		wake (f_comp_door_control);
		wake ( f_cold_intro_nar );
		b_coldant_active = TRUE;		

		wake( f_cold_didact_pup );
		thread( f_composer_init_coldant() );
		//object_create(sn_cold_finale_earth);
		//object_create( dc_comp_switch_front );
		wake( f_coldant_platforms );
		if not object_valid( f_cold_front_door ) then
			object_create( f_cold_front_door );
		end
		//wake ( f_cold_timmy_d );
//		wake( f_cold_setup_left_bridge );
		wake( f_cold_plinth_init );
		sleep(1);


	sleep_until ( b_cold_intro_done , 1 );
	//sleep_until (volume_test_players(tv_comp_raise_plinth),1);
	
//		thread( f_jump_clear_super_jump_clamps() );
		pup_stop_show(g_jump_show1);
		pup_stop_show(g_jump_show2);
		pup_stop_show(g_jump_show3);
		pup_stop_show(g_jump_show4);
		//volume_teleport_players_not_inside ( tv_cold_main, flag_coldant_teleport_in );
		f_m90_game_save_no_timeout();
		f_m90_set_normal_g();	
		//wake ( f_jump_cleanup_harvestors );
		//wake( f_jump_tube_cleanup );
		//thread( nar_coldant_switch() );		
		thread(f_comp_close_door_safe());
		dprint ("waiting for door trigger to be hit");
		sleep_until (volume_test_players (tv_coldant_door_close), 1);
		dprint ("door trigger hit");
		sleep(1);
		zone_set_trigger_volume_enable( "zone_set:final", TRUE);
		sleep_until( object_valid ( cr_plinth_main ) and object_valid ( dc_comp_switch_front ) , 1 );
		dprint ("activating plinth");
		f_cold_activate_plinth( cr_plinth_main, dc_comp_switch_front, dc_comp_switch_front, false, true );
		dprint ("plinth should be activated");
		//sleep_s(3);
		f_unblip_flag ( flag_cold_didact );
		sleep( 5 );
		
		wake( f_coldant_pier_mc_effects );	
		

		device_set_power ( dc_comp_switch_front, 1 );			

		//sleep(20);
		

	
	sleep_until( device_get_position( dc_comp_switch_front ) > 0.0, 1 );
		device_set_power ( dc_comp_switch_front, 0 );
		sleep( 15 );
		b_cold_main_plinth_ready = TRUE;

		f_unblip_object ( dc_comp_switch_front );
		
		if not b_debug_skip_intro then
			//thread( nar_coldant_mancannons_on() );
			l_cold_intro_pup = pup_play_show( cortana_splinter1 );
		end
		
		
		f_unblip_flag ( flag_cold_didact );
		

	sleep_until(not pup_is_playing(l_cold_intro_pup), 1 );
		f_unblip_flag ( flag_cold_didact );
		sleep(30);
		g_composer_state = 2;
		wake ( f_plinth_sequence );
		
		wake ( f_coldant_left_spawn );
		wake ( f_coldant_right_spawn);
		wake ( f_coldant_pier_spawn );
		wake( f_cold_pier_top_save );
		wake( f_coldant_platforms_activate );
		wake( f_comp_cores_all_disabled );		
		b_cold_mancs_active = TRUE;
		wake( f_coldant_main_cannons_on );
		wake(m90_plinth_to_beam);

//Bridges are left in so the build a nav mesh
//Delete them if necessary
		if object_valid( cr_cold_bridge_left )then
			dprint("left bridge is there?");
			//sleep(10);
			object_destroy(cr_cold_bridge_left);
		end
		
		if object_valid( cr_cold_bridge_right )then
			dprint("right bridge is there?");
			//sleep(10);
			object_destroy(cr_cold_bridge_right);
		end
		
		
		//sleep (30 * 2);
		wake( f_coldant_update );

		sleep_s( 5 );
		f_cold_activate_plinth( cr_plinth_main, dc_comp_switch_front,dc_comp_switch_front, true, false );
		b_cold_main_plinth_ready = FALSE;
		//f_objective_set(r_index, b_new_msg, b_new_blip, b_complete_msg, b_complete_unblip )
		thread( f_objective_set( DEF_R_OBJECTIVE_DESTROY_SHIELDS, TRUE, FALSE, TRUE,TRUE ) );
		//object_destroy( sn_cold_cortana_main );
		//device_animate_position(  dm_plinth_main , 0.0 , 1, 0.1, 0.0, TRUE );
		sleep(1);
		garbage_collect_now();
		f_m90_game_save_no_timeout();
end

script static void f_cold_cleanup()
		sleep(2);
		dprint("COLDANT CLEANUP");
		b_coldant_complete = TRUE;
		f_cold_maelstrom_kill();
		object_destroy_folder( crs_composer);
		object_destroy_folder( crs_comp_weapons);
		object_destroy_folder( crs_jump_comp_weapons);
//		object_destroy_folder( crs_comp_mc );
		object_destroy_folder( crs_comp_plinths );
		object_destroy( f_cold_front_door );
//		object_destroy(cr_composer_beam_earth);


		object_destroy (dm_coldant_grav_push);
		object_destroy (dm_coldant_grav_lift);


end






global long l_didact_loop_pup = -1;
global boolean b_stop_didact_loop_pup = FALSE;

script dormant f_cold_didact_pup()
	l_didact_loop_pup = pup_play_show( pup_cold_composing_didact );
/*	sleep_until(b_stop_didact_loop_pup ,1);
		dprint("stopping didact looping");
		pup_stop_show( l_didact_loop_pup );
*/
end



global boolean b_cold_intro_done = FALSE;

script dormant f_cold_intro_nar()
	local real r_sound_time = 0;
	
	
	sleep_until (volume_test_players(tv_cold_start_diag_intro) ,1);
		//inspect( sound_impulse_time( 'sound\dialog\mission\m90\m90_eye_00100' ) );
	dprint("start nar intro");
				f_blip_flag ( flag_cold_main_end, "default");
				wake( f_cold_blip_ultimate_goal );
				f_m90_update_3_objectives();
				
				if not b_debug_skip_intro then
					nar_coldant_intro();
					sleep_s(8);
				end
				thread( f_objective_set( DEF_R_OBJECTIVE_CORTANA_IN, TRUE, FALSE, TRUE,TRUE ) );
				b_cold_intro_done = TRUE;	
end

script dormant f_cold_blip_ultimate_goal()

	
	sleep_until (volume_test_players(tv_cold_main_plinth) ,1);
				f_unblip_flag ( flag_cold_main_end);
				f_blip_flag ( flag_cold_didact, "default");
end

//dc_comp_switch_front
script static void f_cold_activate_plinth( object_name plinth, device control, object_name blip_object, boolean b_reverse,boolean b_activate )
//		device_animate_position(  dm , 0.90 , 1, 0.1, 0.0, TRUE );

//		sleep_until( device_get_position(  dm  ) >= 0.90 );
//			dprint("a");

	if b_reverse then
		device_set_power ( control, 0 );
		object_destroy(control);
		sound_impulse_start ( 'sound\environments\solo\m090\amb_m90_device_machines\amb_m90_dm_plinth_close', plinth, 1 ); //AUDIO!
		object_move_by_offset(plinth,1.0,0,0,-0.37 );


	else
		//object_move_by_offset(plinth,0.5,0,0,0.405 );
		sound_impulse_start ( 'sound\environments\solo\m090\amb_m90_device_machines\amb_m90_dm_plinth_open', plinth, 1 ); //AUDIO!
		object_move_by_offset(plinth,0.5,0,0,0.37 );
		sleep(3);
		sleep_until(not pup_is_playing(g_show_splinter2),1);
		if b_activate then
			device_set_power ( control, 1 );
			f_blip_object (  blip_object , "activate" );
		end
	end
end

script dormant f_cold_plinth_init()
	sleep_until( object_valid(cr_plinth_main) and object_valid(cr_plinth_left) and  object_valid(cr_plinth_right), 1);
		object_move_by_offset(cr_plinth_main,1.0,0,0,-0.37 );
		object_move_by_offset(cr_plinth_left,1.0,0,0,-0.37 );
		object_move_by_offset(cr_plinth_right,1.0,0,0,-0.37 );
end










// =================================================================================================
// =================================================================================================
// *** CORE SHIELDING ***
// =================================================================================================
// =================================================================================================
script static void f_comp_right_shield_fall()

//	object_move_by_offset ( maya_script_composer_shield_right, 7, 0, 0, -80 );
//	object_destroy(maya_script_composer_shield_right);
	//pup_play_show(pup_composer_shield_right);
	sleep(1);
end

script static void f_comp_left_shield_fall()
//	object_move_by_offset ( maya_script_composer_shield_left, 7, 0, 0, -80 );
//	object_destroy(maya_script_composer_shield_left);
	//pup_play_show(pup_composer_shield_left);
	sleep(1);
end









// =================================================================================================
// =================================================================================================
// *** LEFT PLATFORM ***
// =================================================================================================
// =================================================================================================

script static void debug_left_spawn()
	object_create(dc_left_bridge);
	object_destroy(cr_cold_bridge_left);
	object_create_folder( crs_composer );
	object_create_folder( crs_comp_weapons );
	wake( f_coldant_left_spawn );

end

script dormant f_coldant_left_spawn()
		sleep_until (volume_test_players(tv_land_left) or (volume_test_players(tv_land_left_2)),1);
			
			wake( f_cold_left_objcon );
			wake( f_cold_left_save_pre_tower );
			dprint("spawn sg_left");
			garbage_collect_now();
			ai_place ( sg_left );
			ai_place ( sg_left_bottle_neck );

			thread( f_mus_m90_e07_start() );	
			sleep(3);
			if object_valid( cr_cold_bridge_left )then
				dprint("left bridge is there?");
				//sleep(10);
				object_destroy(cr_cold_bridge_left);
			end
			wake( f_cold_left_spawn_bottom_bishop );
			sleep(1);
			f_m90_game_save_no_timeout();		
			//wake (f_left_play_save);
																																																																//if they jump the wall advance
		sleep_until(volume_test_players(tv_left_spawn_2nd_wave) or (ai_spawn_count(sg_left) > 0 and ai_living_count(sg_left) < 3) or volume_test_players(tv_cold_left_bridge));
				ai_place_in_limbo ( sg_left_2nd_wave );
			dprint("spawn left 2nd wave");
			//garbage_collect_now();
			wake( f_cold_left_save_room );
			sleep(5);
			f_m90_game_save();
																															//if they jump the wall advance
		sleep_until (volume_test_players(tv_cold_left_bridge) or volume_test_players( tv_cold_left_top_clear ),1);
			b_cold_left_ascend = TRUE;			
			thread( f_cold_left_bridge_press() );
			f_m90_game_save();
																									//if they jump the wall advance
		sleep_until( b_cold_left_bridge_activated or volume_test_players( tv_cold_left_top_clear ), 1 );	
			//sleep_rand_s(1,2);
			ai_place_in_limbo ( sg_left_ranger_1 );

			sleep_s(0.25);
			ai_place_in_limbo( sq_left_knight_top_res );			
			//garbage_collect_now();
			
	//sleep_until( volume_test_players( tv_cold_left_top ) );	
		//dprint("==== spawn command =====");	


	sleep_until( (ai_living_count( sg_left_ranger_1 ) <= 1 and ai_living_count( sq_left_command_res ) == 0 )or volume_test_players( tv_cold_left_top_mid ) );
			dprint("==== spawn bw =====");	
			sleep_s(2);
			ai_place_in_limbo (  sq_left_command_bw );
			//sleep_s(5);
	sleep_until( ai_living_count( sg_left_ranger_1 ) <= 0 or object_get_shield( ai_get_object( sq_left_command_bw ) ) <= 0.30 );

			if  (not  b_cold_right_core_active ) or ( game_is_cooperative() or difficulty_legendary() ) then
				dprint("==== spawn command =====");	
				ai_place_in_limbo ( sq_left_command_cmdr_bp );
				sleep(15);
				ai_place_with_birth( sq_left_command_bish );
			end
			
			sleep(60);
			b_cold_left_top_all_spawned = TRUE;
		
end

///ai_in_limbo_count

script dormant f_cold_left_spawn_bottom_bishop()

sleep_until( ai_living_count( sq_left_bw_1 ) == 0 or ai_living_count( sq_left_bw_2 ) == 0 );
	print("spawning mid fight bishop");
		ai_place_with_birth( sq_left_bottom_bishop );

end




script dormant f_cold_left_objcon()
		sleep_until (volume_test_players(tv_cold_left_objcon_20) ,1);
			if s_objcon_cold_left <= 20 then 
				s_objcon_cold_left = 20;
				dprint("s_objcon_cold_left = 20 ");
			end
end
 
script dormant f_cold_left_save_pre_tower()
		sleep_until (volume_test_players(tv_left_play_save_2) ,1);
			f_m90_game_save();
end 

script dormant f_cold_left_save_room()
		sleep_until (volume_test_players(tv_cold_left_room_save) ,1);
			f_m90_game_save();
end 

 
// =================================================================================================
// =================================================================================================
// *** RIGHT PLATFORM PAWNLANDIA ***
// =================================================================================================
// =================================================================================================

script static void debug_right_spawn()
	b_coldant_gameplay_active = TRUE;
	wake( f_coldant_right_spawn );
	object_create(dc_right_bridge);
	object_destroy(cr_cold_bridge_right);
end

script dormant f_coldant_right_spawn()

		sleep_until (volume_test_players(tv_land_right) or (volume_test_players(tv_land_right_2)),1);
			garbage_collect_now();
			thread( f_mus_m90_e05_start() );
			wake( f_coldant_right_bridge );
			wake( f_cold_tower_hammer );
			wake( f_cold_tower_setup );
			s_objcon_cold_right = 10;
			wake( f_cold_right_pawn_shard_bottom );
			sleep(1);
			wake( f_cold_right_pawn_culler );
			sleep(2);
			//ai_place ( sg_right );
			ai_place( sq_right_start_bishop );
			if object_valid( cr_cold_bridge_right )then
				dprint("make sure right bridge isn't there");
				//sleep(10);
				object_destroy(cr_cold_bridge_right);
			end			
			if  ( volume_test_players(tv_land_right) ) then
				ai_place( sq_right_pawn_intro.spawn_formations_1 );
			else
				ai_place( sq_right_pawn_intro.spawn_formations_0 );
			end
			
			ai_place( sq_right_start_bishop_2 );
			ai_place( sq_right_start_bishop_3 );
			wake( f_cold_right_save_room );
			wake( f_cold_right_save_intro );
			//ai_place_with_shards ( sq_right_pawns_left, 3 );
			sleep(3);
			
			//wake (f_right_play_save);	
			
			f_m90_game_save_no_timeout();	
		sleep_until( volume_test_players(tv_cold_right_center)  or ai_living_count(sq_right_pawn_intro) == 0 or ai_body_count(obj_right.main) > 0 or volume_test_players(tv_right_spawn_2nd_wave)  or volume_test_players(tv_cold_right_mid), 2 ); //
			dprint("sharding hallway");
			ai_place_with_shards ( sq_right_pawns_right, 3 );
		sleep_until( volume_test_players(tv_right_spawn_2nd_wave) or volume_test_players(tv_cold_right_mid),2 );
			dprint("spawn right 2nd wave");
			garbage_collect_now();
			sleep(3);
			
			



			//ai_place( sq_right_snipers_1 );
			sleep(1);
			ai_place( sq_right_snipers_2 );
			sleep(1);
			ai_place ( sq_right_snipers_3 );
			sleep(1);	
			ai_place( sq_right_platform_pawns_2 );			
			sleep(1);
			wake( f_cold_right_pawn_shard_mid );
			sleep(1);
			f_m90_game_save_no_timeout();
		sleep_until( volume_test_players(tv_cold_right_ascend) or volume_test_players(tv_cold_right_top_clear), 1);
			b_cold_right_ascend = TRUE;
			thread( f_cold_right_bridge_press() );
			s_objcon_cold_right = 30;
			ai_place ( sg_cold_right_com_bridge );			
		sleep_until( b_cold_right_bridge_activated or volume_test_players(tv_cold_right_top_clear), 1);		
			dprint("==== spawn command =====");
			ai_place ( sg_cold_right_command );

			//ai_place ( sq_right_pawn_command );
			//ai_place ( sq_right_pawn_command_2 );
			garbage_collect_now();
			sleep(2);
			wake( f_cold_right_spawn_commander );
			wake ( f_cold_right_pawn_shard_command );
			//ai_place( sg_right_3rd_wave );
			sleep(2);
			f_m90_game_save();
			sleep(60);
			
		sleep_until( volume_test_players(tv_cold_plinth_right) , 1);
			s_objcon_cold_right = 50;
			garbage_collect_now();
		
end


script dormant f_cold_right_pawn_culler()
		sleep_until( volume_test_players(tv_cold_right_mid) or volume_test_players(tv_cold_right_top_clear), 1);
				//f_ai_garbage_kill( ai ai_squad, real r_distance_min, real r_see_degrees, long l_delay_squad, long l_delay_unit, boolean b_garbage_squad )
				f_ai_garbage_kill( sg_right, 5, 22.5, 30, -1, FALSE );
		sleep_until( volume_test_players(tv_cold_right_top_clear), 1);
				f_ai_garbage_kill( sg_right_2nd_wave, 5, 22.5, 15, -1, FALSE );

end


script dormant f_cold_right_spawn_commander()
		
		if  ( not b_cold_left_core_active ) or  game_is_cooperative() or difficulty_legendary()  then
				sleep_until( ai_spawn_count( sg_cold_right_command ) > 0 and ai_living_count( sg_cold_right_command ) <= 3, 1  );
					dprint("==== spawn commander =====");	
					ai_place_in_limbo ( sg_right_commander );
					sleep(30);
					ai_place_with_birth ( sq_right_bishop_comm );
					b_cold_right_top_all_spawned = TRUE;
		else
				b_cold_right_top_all_spawned = TRUE;
		end

end

script dormant f_cold_right_save_room()
		sleep_until (volume_test_players(tv_cold_right_room_save) ,1);
			garbage_collect_now();
			f_m90_game_save_no_timeout();
end 

script dormant f_cold_right_save_intro()
		sleep_until( ai_spawn_count( sq_right_pawn_intro ) > 0 and ai_living_count( sq_right_pawn_intro ) <= 0  , 1);
			garbage_collect_now();
			f_m90_game_save_no_timeout();
end

script dormant f_cold_right_pawn_shard_bottom()
	sleep_until( volume_test_players(tv_cold_right_center)  or ai_living_count(sq_right_pawn_intro) == 2, 2);
	
	//tv_cold_right_shard
		dprint( "adding pawnz");
		ai_place_with_shards ( sq_right_bottom_shard, 3 );
end

script dormant f_cold_right_pawn_shard_mid()
	sleep_until( ai_living_count(sg_cold_right_snipe) <= 1 or volume_test_players(tv_cold_right_shard) or volume_test_players(tv_cold_right_mid), 2);
	
	//tv_cold_right_shard
		dprint( "adding pawnz");
		ai_place_with_shards ( sq_right_pawns_left, 3 );
end

global boolean b_coldant_right_bridge = FALSE;

script dormant f_coldant_right_bridge()
	sleep_until( volume_test_players(tv_cold_right_bridge ) );
		b_coldant_right_bridge = TRUE;
		s_objcon_cold_right = 40;
		//ai_place_with_shards ( sq_right_pawns_reserve, 3 );
end

global boolean b_cold_right_top_shard_spawned = FALSE;
global long l_right_pawns_shard = -1;
script dormant f_cold_right_pawn_shard_command()
	sleep_until( ai_living_count( sg_cold_right_command ) <= 5  , 1);
		dprint( "adding pawnz");
		l_right_pawns_shard = ai_place_with_shards ( sq_right_pawns_reserve_2, 3 );
		
		sleep_s(2);
		b_cold_right_top_shard_spawned = TRUE;
		sleep_s(10);
		
		//safety in case bishop died before sharding and it doesn't break clearing out the top
		DestroyDynamicTask(l_right_pawns_shard);
end

script dormant f_cold_tower_setup()

	thread( f_cold_tower_listen(cr_cold_tower_1) );
	thread( f_cold_tower_listen(cr_cold_tower_2) );
	thread( f_cold_tower_listen(cr_cold_tower_3) );
	thread( f_cold_tower_listen(cr_cold_tower_4) );
	thread( f_cold_tower_listen(cr_cold_tower_5) );
	thread( f_cold_tower_listen(cr_cold_tower_6) );
	thread( f_cold_tower_listen(cr_cold_tower_7) );
	thread( f_cold_tower_listen(cr_cold_tower_8) );
end

global short s_cold_tower_count = 0;
script static void f_cold_tower_listen( object_name tower )
	sleep_until( object_get_health(tower) <= 0  , 1);
		dprint("tower destroyed");
		s_cold_tower_count = s_cold_tower_count + 1;
		

end


script dormant f_cold_tower_hammer()
	sleep_until( s_cold_tower_count >= 8 , 1 );
	
		if b_coldant_gameplay_active then
			effect_new_on_object_marker (objects\characters\storm_pawn\fx\pawn_phase_in.effect, cr_cold_weapon_holder_td, "m_weapon_large" );
			//wake ( f_cold_timmy_d );
			//sleep(5);
			dprint("BEHOLD THE POWER AND MIGHT OF 'COLD TIMMY D' !!!!");		
			//object_hide( wp_cold_timmy_d ,false);
			if not object_valid( cr_cold_weapon_holder_td ) then
				object_create(cr_cold_weapon_holder_td);
			end
			object_create( wp_cold_timmy_d );
			sleep(1);
			//object_hide( wp_cold_timmy_d , true );
			objects_attach(   cr_cold_weapon_holder_td, "m_weapon_large",   wp_cold_timmy_d, "");		
		end
end

// =================================================================================================
// =================================================================================================
// *** PIER PLATFORM ***
// =================================================================================================
// =================================================================================================
global boolean b_coldant_pier_force_turrets = FALSE;

script static void debug_pier_spawn()
	wake( f_spawn_early_pier );
	wake( f_coldant_pier_spawn );
	object_create ( cr_comp_left_to_pier_inv );
	object_create ( cr_comp_right_to_pier_inv );
end

script dormant f_cold_pier_bishops_controller()
	ai_place( sq_pier_bishops );
	ai_place( sq_pier_pawn_early );
	ai_place( sq_pier_pawn_early_2 );
	sleep( 2 );
//	sleep_until( not f_ai_is_idle( sq_pier_bishops ) or b_coldant_pier_force_turrets, 2 );
		//dprint("bishops are alert : spawn turrets");

			
end



script dormant f_cold_pier_top_save()
	sleep_until( object_get_health (sq_pier_master_mind_turret) <= 0 and volume_test_players ( tv_cold_pier_save ), 1 );
		f_m90_game_save_no_timeout();
end
// early group of forerunners spawn on pier after one of the shields is brought down
global boolean b_pier_activated = FALSE;

script dormant f_spawn_early_pier()
	if not b_pier_activated then
		dprint("::::: EARLY pier INIT:::::");
		wake( f_cold_pier_bishops_controller );
		wake( f_coldant_pier_intro );
		b_pier_activated = TRUE;
	else
		dprint(" EARLY PIER SPAWNS ALREADY DONE???");
	end
end

script dormant f_coldant_pier_intro()
	dprint("WAITING sg_pier_intro");
	sleep_until( volume_test_players ( tv_cold_right_rear ) or volume_test_players ( tv_cold_left_rear ), 1 );
		dprint(" ::::SPAWN PIER INTRO:::");
		ai_place( sg_pier_intro );	
end

script dormant f_coldant_pier_spawn()
		sleep_until (volume_test_players(tv_land_pier) or (volume_test_players(tv_land_pier_2)),1);	
			wake( f_cold_pier_controller );	
			wake( f_coldant_pier_engage );
			wake(m90_transition_platform);
			wake( f_cold_pier_culler );
			//g_composer_state = 4;
			ai_lod_full_detail_actors (20);
			b_coldant_pier_force_turrets = TRUE;
			garbage_collect_now();	
			//f_m90_game_save();
			//sleep(2);
			cs_run_command_script (sq_pier_bishops, cs_push_alert);
			ai_place (sq_pier_bishop_master_mind);	
			
			sleep(1);
			wake( f_cold_pier_shard_controller );	


			f_m90_game_save_no_timeout();			
			sleep_s( 5 );
			ai_place_with_shards (sq_pier_master_mind_turret);
			sleep(3);

end

script command_script cs_push_alert()
			dprint("alert!!!!");
			cs_force_combat_status (3);
end

global long l_coldant_pier_pawns_1 = -1;
global long l_coldant_pier_pawns_2 = -1;
global short s_pier_pawn_1_count = 0;
global short s_pier_pawn_2_count = 0;
global short s_pier_pawn_total_count = 0;

script dormant f_cold_pier_shard_controller()

	repeat
		if b_coldant_pier_active then
			if ai_living_count( sg_pier_bishops ) > 0 then
				if l_coldant_pier_pawns_1 == -1 and s_pier_pawn_1_count < 1 and s_pier_pawn_total_count < 4 then
						thread(f_cold_pier_shard_watcher( 1 ));
				end
				
				if l_coldant_pier_pawns_2 == -1 and s_pier_pawn_2_count < 2 and s_pier_pawn_total_count < 4 then
					thread(f_cold_pier_shard_watcher( 2 ));
				end		
		
			end		
		end
		
		sleep( 30 );
	until( b_coldant_composer_fire == TRUE, 1 );
end

script static void f_cold_pier_shard_watcher( short spawn_loc )

	if spawn_loc == 1 then
		dprint("shard spawn loc 1");
		garbage_collect_now();
		s_pier_pawn_1_count = s_pier_pawn_1_count + 1;
		s_pier_pawn_total_count = s_pier_pawn_total_count + 1;
		l_coldant_pier_pawns_1 = ai_place_with_shards ( sq_pier_pawn_1, 3 );
		sleep_s( 2 );
		sleep_until ( volume_test_objects ( tv_pier_spawn_2nd_wave, (ai_actors (sq_pier_pawn_1))) );
			dprint("waiting for sq_pier_pawn_1 to spawn" );
			sleep_s( 1 );
		sleep_until( ai_living_count( sq_pier_pawn_1 ) < 2 );			
			dprint("resetting pawn 1");
			sleep_rand_s( 4,6 );
			l_coldant_pier_pawns_1 = -1;
	end
	
	if spawn_loc == 2 then
		dprint("shard spawn loc 2");
		garbage_collect_now();
		s_pier_pawn_2_count = s_pier_pawn_2_count + 1;
		s_pier_pawn_total_count = s_pier_pawn_total_count + 1;
		l_coldant_pier_pawns_2 = ai_place_with_shards ( sq_pier_pawn_2, 2 );
		sleep_s( 2 );
		sleep_until ( volume_test_objects ( tv_pier_spawn_2nd_wave, (ai_actors (sq_pier_pawn_2))) );
			dprint("waiting for sq_pier_pawn_2 to spawn" );
			sleep_s( 1 );
		sleep_until( ai_living_count( sq_pier_pawn_2 ) < 2 );
			dprint("resetting pawn 2");
			sleep_rand_s( 5,8 );
			l_coldant_pier_pawns_2 = -1;		
	end


end

script dormant f_cold_pier_controller()
	dprint("init:pier controller");
	repeat
		if volume_test_players( tv_cold_rear ) then
			b_coldant_pier_active = TRUE;
			 
			 if (object_get_health( sq_pier_master_mind_turret ) > 0 ) then
			 		
					ai_set_blind ( sq_pier_master_mind_turret , false );
			 end
			 
		else
			b_coldant_pier_active = FALSE;
			
			if (object_get_health (sq_pier_master_mind_turret ) > 0 ) then
					//dprint("blind_turret");
					ai_set_blind ( sq_pier_master_mind_turret , true );
			 end
			 
		end
	until( b_coldant_composer_fire == TRUE, 15 );
end

global boolean b_coldant_pier_engage = FALSE;

script dormant f_coldant_pier_engage()

	sleep_until( volume_test_players( tv_land_pier_2 ) or volume_test_players( tv_land_pier ) , 1 );
		dprint("pier enaged");
		b_coldant_pier_engage = TRUE;
end


script dormant f_cold_pier_culler()
		sleep_until( volume_test_players(tv_pier_top) , 1);
				//f_ai_garbage_kill( sg_pier_all, 50, 30, 15, -1, FALSE );
				f_ai_garbage_kill( sg_pier_all, 40, 22.5, 15, -1, FALSE );
				f_ai_garbage_kill( sq_pier_pawn_early, 40, 22.5, 15, -1, FALSE );
				f_ai_garbage_kill( sq_pier_pawn_early_2, 40, 22.5, 15, -1, FALSE );
end
// =================================================================================================
// =================================================================================================
// *** FINALE ***
// =================================================================================================
// =================================================================================================

script static void debug_finale_cold()
	wake(f_coldant_finale_fight);
end

script dormant f_coldant_finale_fight()
		sleep_until (volume_test_players(tv_cold_main) ,1);	
			dprint("final fight");
			garbage_collect_now();
			//ai_place(sg_cold_finale);
			f_cold_finale_spawn();

			sleep(60);

end





script static void f_cold_finale_spawn()

	sleep( 1 );
	ai_place_in_limbo( sq_final_commander);
	sleep( 1 );	
	ai_place_in_limbo( sq_final_commander_2);
	if volume_test_players( tv_main_landing ) then
		ai_place_in_limbo( sq_final_knight.spawn_left );
	else
		ai_place_in_limbo( sq_final_knight.spawn_right );
	end
	sleep( 1 );

	//ai_place( sq_final_bw );	
end

// =================================================================================================
// =================================================================================================
// *** CORE SHIELDING CONTROLLERS ***
// =================================================================================================
// =================================================================================================
global boolean b_pup_first_shield_done = false;
global long pup_show_left = -1;
global long pup_show_right = -1;
global long g_show_splinter2 = -1;
static boolean raise_right = true;
static boolean raise_left = true;

//USED IN PUPPET SHOW
global boolean g_cortana_splinter32 = false;

global object g_ics_player_left = none;
global object g_ics_player_right = none;

script static void f_cold_shield_controller()

sleep(1);
end

script static void nicklebackisthebestbandevaromg()

	ai_place_in_limbo(sq_pier_bishop_master_mind);
	sleep(30);
	
	if ai_spawn_count(sq_pier_bishop_master_mind) > 0 then
		dprint("sq_pier_bishop_master_mind spawn");
	else
		dprint("sq_pier_bishop_master_mind NOT spawned");
	end
	
	if ai_living_count(sq_pier_bishop_master_mind) > 0 then
		dprint("sq_pier_bishop_master_mind lving");
	else
		dprint("sq_pier_bishop_master_mind NOT lving");
	end
	
	if volume_test_objects(tv_pier_top, ai_actors(sq_pier_bishop_master_mind)) then
		dprint("we are fucked");
	end
end

global boolean b_cold_left_top_all_spawned = FALSE;
global boolean b_cold_left_switch_ready = FALSE;
global boolean b_cold_right_switch_ready = FALSE;

script dormant f_left_complete()

	sleep_until ( b_cold_left_top_all_spawned, 3 );
		sleep_s(2);
		dprint("waiting for top to be clear...");
		local long l_safety_timer = timer_stamp( 300 ); 
	//possible an enemy is getting stuck in geo...safety timer in case to stop prog blocker
	//birth bishop has been moved to its own group because if orphaned the volume test would give back a false positive
	sleep_until ( (  (not (volume_test_objects( tv_cold_left_top_clear, ai_actors( sg_left_all ) )) and ai_living_count( sq_left_command_bish ) <= 0 ) or timer_expired(l_safety_timer)), 1 );//
		sleep(1);
		dprint("====waiting for safety=====");
		sleep_s(1);
	sleep_until ( volume_test_players( tv_cold_left_top_clear) , 1 );
		sleep_s(2);
		dprint("top is clear");
		b_cold_left_plinth_blip = TRUE;
		f_cold_activate_plinth( cr_plinth_left, dc_comp_switch_left, dc_comp_switch_left, false, true );
		b_cold_left_switch_ready = TRUE;

end


script dormant f_right_complete()
	local boolean b_save_game = FALSE;
	
	sleep_until ( b_cold_right_top_all_spawned and b_cold_right_top_shard_spawned, 3 );
		sleep_s(2);
		dprint("waiting for top to be clear...");
		local long l_safety_timer = timer_stamp( 300 ); 
		//possible an enemy is getting stuck in geo...safety timer in case to stop prog blocker
	sleep_until ( (not ( volume_test_objects( tv_cold_right_top_clear, ai_actors( sg_right_all ) )) and ai_living_count( sq_right_bishop_comm ) <= 0 )or  timer_expired(l_safety_timer) ,1) ;
		sleep(1);
		dprint("=====waiting for safety======");
		sleep_s(1);
	sleep_until ( volume_test_players( tv_cold_right_top_clear) , 1 );
		sleep_s(2);
		b_cold_right_plinth_blip = TRUE;
		f_cold_activate_plinth( cr_plinth_right , dc_comp_switch_right, dc_comp_switch_right, false, true );
		b_cold_right_switch_ready = TRUE;
end


script dormant f_plinth_sequence()

	wake(f_left_complete);
	wake(f_right_complete);

	// wait until any of the two buttons is pressed
	sleep_until( device_get_position( dc_comp_switch_left )>0 or device_get_position( dc_comp_switch_right )>0, 1 );

	if device_get_position( dc_comp_switch_left )>0 then
		// left button was pressed first
		g_ics_plinth2 = dc_comp_switch_left;
		g_ics_plinth3 = dc_comp_switch_right;
		ai_kill(sg_left_all);
		b_cold_left_plinth_ready = true;
		g_ics_player=g_ics_player_left;
	else
		// right button was pressed first
		g_ics_plinth2 = dc_comp_switch_right;
		g_ics_plinth3 = dc_comp_switch_left;
		ai_kill(sg_right_all); 
		b_cold_right_plinth_ready = true;
		g_ics_player=g_ics_player_right;
	end

	local boolean turn_on_plinth3 = device_get_power(g_ics_plinth3)>0;
	device_set_power ( g_ics_plinth2, 0 );
	device_set_power ( g_ics_plinth3, 0 );
	f_unblip_object ( dc_comp_switch_right);
	f_unblip_object ( dc_comp_switch_left);

	thread( f_mus_m90_e05_finish() );
	thread( f_mus_m90_e07_finish() );

	g_show_splinter2 = pup_play_show(cortana_splinter2);
	sleep_until(not pup_is_playing(g_show_splinter2),1);
	b_pup_first_shield_done = true;
	thread( f_cold_set_composer_state_3() );
	wake( f_spawn_early_pier );

	if g_ics_plinth2==dc_comp_switch_right then
		b_cold_right_core_active=false;
	else
		b_cold_left_core_active=false;
	end
	thread( f_coldant_pier_mancannon_update() );
	composer_core_count = 1;
	garbage_collect_now();
	f_m90_game_save_no_timeout();

	if turn_on_plinth3 then
		device_set_position ( g_ics_plinth3, 0 );
		device_set_power ( g_ics_plinth3, 1 );
		f_blip_object ( g_ics_plinth3, "activate");
	end

	sleep_until( device_get_position( g_ics_plinth3 )>0, 1 );
	device_set_power ( g_ics_plinth3, 0 );
	f_unblip_object ( g_ics_plinth3);

	if g_ics_plinth3==dc_comp_switch_left then
		ai_kill(sg_left_all); 
		b_cold_left_plinth_ready = true;
		g_ics_player=g_ics_player_left;
		if player_valid(player0) and g_ics_player!=player0 then
			object_teleport_to_ai_point(player0,plinth_teleport_left.p0);
		end
		if player_valid(player1) and g_ics_player!=player1 then
			object_teleport_to_ai_point(player1,plinth_teleport_left.p1);
		end
		if player_valid(player2) and g_ics_player!=player2 then
			object_teleport_to_ai_point(player2,plinth_teleport_left.p2);
		end
		if player_valid(player3) and g_ics_player!=player3 then
			object_teleport_to_ai_point(player3,plinth_teleport_left.p3);
		end
	else
		ai_kill(sg_right_all); 
		b_cold_right_plinth_ready = true;
		g_ics_player=g_ics_player_right;
		if player_valid(player0) and g_ics_player!=player0 then
			object_teleport_to_ai_point(player0,plinth_teleport_right.p0);
		end
		if player_valid(player1) and g_ics_player!=player1 then
			object_teleport_to_ai_point(player1,plinth_teleport_right.p1);
		end
		if player_valid(player2) and g_ics_player!=player2 then
			object_teleport_to_ai_point(player2,plinth_teleport_right.p2);
		end
		if player_valid(player3) and g_ics_player!=player3 then
			object_teleport_to_ai_point(player3,plinth_teleport_right.p3);
		end
	end

	music_set_state('Play_mus_m90_v12_cortana_splinter_3');
	local long show=pup_play_show(cortana_splinter3);
	sleep_until(not pup_is_playing(show),1);
	thread( f_maelstrom_shield_strip() );
	b_cold_right_core_active=false;
	b_cold_left_core_active=false;
	thread( f_coldant_pier_mancannon_update() );
	composer_core_count = 0;
	garbage_collect_now();
	f_m90_game_save_no_timeout();

end


script static void f_cold_quick_plinths()

	b_cold_right_top_all_spawned = TRUE;
	b_cold_left_top_all_spawned = TRUE;
	b_cold_right_top_shard_spawned = TRUE;
end
			
global boolean b_cold_right_top_all_spawned = FALSE;
				
script static void debug_cold_sides()

	if game_is_cooperative() then
		dprint("cooperative");
	end

	if volume_test_objects( tv_cold_right_top_clear, ai_actors( sg_right_all )) then
		dprint("top not right clear...");
	else
		dprint("top right clear...");
	end

	if volume_test_objects( tv_cold_left_top_clear, ai_actors( sg_left_all )) then
		dprint("top left not clear...");
	else
		dprint("top leftclear...");
	end

end				
				
script static void f_cold_set_composer_state_3()
	//sleep_s(0.25);
	g_composer_state = 3;
end

script static void f_cold_destroy_shield()
//sleep(1);
	//dprint("s");
	if b_pup_first_shield_done then
		if object_valid(dc_comp_switch_right) then
			if g_ics_plinth3 == dc_comp_switch_right then
				wake( f_cold_destroy_right );
			end
		end
	
		if object_valid( dc_comp_switch_left ) then
			//dprint("h");
			if g_ics_plinth3 == dc_comp_switch_left then
				//dprint("it");
				wake ( f_cold_destroy_left );
			end
		end
	else
		if object_valid(dc_comp_switch_right) then
			if g_ics_plinth2 == dc_comp_switch_right then
				wake( f_cold_destroy_right );
			end
		end
	
		if object_valid( dc_comp_switch_left ) then
			//dprint("h");
			if g_ics_plinth2 == dc_comp_switch_left then
				//dprint("it");
				wake ( f_cold_destroy_left );
			end
		end	
	end


end

script dormant f_cold_destroy_right()
	//sleep_s(3);
	thread( f_comp_drop_shield());
	thread( f_comp_right_shield_fall());	
end


script dormant f_cold_destroy_left()
	//sleep_s(3);
	//object_destroy( sn_cold_cortana_left );
	thread( f_comp_drop_shield());
	thread( f_comp_left_shield_fall());	
end

script static void f_cold_destroy_beam()
	if b_pup_first_shield_done then
		if g_ics_plinth3 == dc_comp_switch_right then
			wake( f_cold_destroy_right_beam );
		end
		if g_ics_plinth3 == dc_comp_switch_left then
			//dprint("it");
			wake ( f_cold_destroy_left_beam );
		end
	else
		if g_ics_plinth2 == dc_comp_switch_right then
			wake( f_cold_destroy_right_beam );
		end
		if g_ics_plinth2 == dc_comp_switch_left then
			//dprint("it");
			wake ( f_cold_destroy_left_beam );
		end
	end
end


script static void f_comp_drop_shield()

	
	s_cold_shield_pieces = s_cold_shield_pieces - 1;
	inspect(s_cold_shield_pieces);
	if s_cold_shield_pieces > 0 then
		b_cold_outside_shield_active = FALSE;
		dprint("drop outside ring");
	else
		b_cold_inside_shield_active = FALSE;
		dprint("drop inside ring");
		//effect_kill_from_flag (environments\solo\m90_sacrifice\fx\shields\composer_shield.effect, fx_16_composer_shield);
		//object_set_function_variable(dm_composer_shield, shield_state, 1, 5); // Turn off over period of 5 seconds
		thread(f_fx_deactivate_shield());
	end
end

script dormant f_cold_destroy_left_beam()
	thread(f_fx_deactivate_beam(dm_composerbeam2));
	object_destroy (didact_beam2); //Killing sound scenery: AUDIO!
	//dprint ( "DIDACT BEAM 2 IS OFF!" );
	//effect_kill_from_flag (environments\solo\m90_sacrifice\fx\beams\composer_beams.effect, fx_16_composer_beam1); 
	//effect_kill_from_flag (environments\solo\m90_sacrifice\fx\shields\composer_shield_wisps.effect, fx_16_composer_shieldwisp);
	//object_set_function_variable(dm_composerbeam1, beam_state, 1, 5); // Turn off over period of 5 seconds, do when beam1 is deactivated
	interpolator_start ('ei_cannon_off');
end		

	//object_set_function_variable(dm_composerbeam1, beam_state, 0, 5); // Turn off over period of 5 seconds, do when beam1 is deactivated
	//object_set_function_variable(dm_composerbeam2, beam_state, 0, 5); // Turn off over period of 5 seconds, do when beam2 is deactivated
	//object_set_function_variable(composer_shield, shield_state, 0, 5); // Turn off over period of 5 seconds



script dormant f_cold_destroy_right_beam()
	thread(f_fx_deactivate_beam(dm_composerbeam1));
	object_destroy (didact_beam1); //Killing sound scenery: AUDIO!
	//dprint ( "DIDACT BEAM 1 IS OFF!" );
	//object_set_function_variable(dm_composerbeam2, beam_state, 1, 5); // Turn off over period of 5 seconds, do when beam2 is deactivated
	//effect_kill_from_flag (environments\solo\m90_sacrifice\fx\beams\composer_beams.effect, fx_16_composer_beam); 
	//effect_kill_from_flag (environments\solo\m90_sacrifice\fx\shields\composer_shield_wisps.effect, fx_16_composer_shieldwisp1);
	interpolator_start  ( 'wi_cannon_off' );
end	




script static void f_core_entry_hit()
	damage_players(objects\characters\monitor\damage_effects\first_hit.damage_effect);
	camera_shake_all_coop_players( 0.2, 0.2, 1, 0.1, core_hit_camera_shake);
end

script static void f_maelstrom_shield_strip( )
	thread(f_coldant_maelstrom_shield_strip_players_one_time());
	//thread(f_coldant_maelstrom_shield_strip_players());
	sleep(60);
	f_m90_game_save_no_timeout();
	wake(f_dialog_m90_maelstrom_vignette_over);
end

script static void test_composer
	object_destroy(composer);
	sleep(1);
	pup_play_show( pup_composer );
end

script static void test_splinter1
	g_ics_player = player0;
	pup_play_show( cortana_splinter1 );
end

script static void test_splinter_reset
	//object_create( maya_script_composer_shield_right );
	//object_create( maya_script_composer_shield_left );
	//object_create(cr_comp_beam_r_red);
	////object_create(cr_comp_beam_base_r_red);
	//object_create(cr_comp_beam_l_red);
	//object_create(cr_comp_beam_base_l_red);
//	object_destroy(cr_composer_beam_earth);
//	object_destroy(cr_composer_beam_slip);
	//object_destroy (es_comp_maelstrom);	

	b_pup_first_shield_done = FALSE;
end

script static void test_splinter2
	if raise_right then
		f_cold_activate_plinth( cr_plinth_right, dc_comp_switch_right, dc_comp_switch_right, false, true );
		raise_right = false;
	end

	g_ics_player = player0;
	g_ics_plinth2 = dc_comp_switch_right;
	pup_play_show( cortana_splinter2 );
end

script static void test_splinter3l
	if raise_left then
		f_cold_activate_plinth( cr_plinth_left, dc_comp_switch_left, dc_comp_switch_left, false, true );
		raise_left=false;
	end
	b_pup_first_shield_done = true;

	g_ics_player=player0;
	g_ics_plinth3=dc_comp_switch_left;
	pup_play_show(pup_cold_composing_didact);
	pup_play_show( cortana_splinter3 );
end

script static void test_splinter3r
	//static boolean raise = true;
	
	if raise_right then
		f_cold_activate_plinth( cr_plinth_right, dc_comp_switch_right, dc_comp_switch_right, false, true );
		raise_right = false;
	end
	b_pup_first_shield_done = true;

	g_ics_player = player0;
	g_ics_plinth3 = dc_comp_switch_right;
	pup_play_show(pup_cold_composing_didact);
	pup_play_show( cortana_splinter3 );
end

script static void temp_up()
	f_cold_activate_plinth( cr_plinth_left, dc_comp_switch_left, dc_comp_switch_left, false,true );
end
//	------------------------------------------------------------------------------------------------
//	***	OBJECTIVES ***	----------------------------------------------------------------------------
//	------------------------------------------------------------------------------------------------



script static void vd ()

		thread( f_objective_set( DEF_R_OBJECTIVE_DESTROY_CORE, TRUE, FALSE, TRUE, TRUE ) );
		sleep_s(6);
		thread( f_objective_set( DEF_R_OBJECTIVE_ALRIGHT_MESSAGE, TRUE, FALSE, FALSE, TRUE ) );
end

//	------------------------------------------------------------------------------------------------
//	***	CORES DISABLED ***	----------------------------------------------------------------------------
//	------------------------------------------------------------------------------------------------

script static void fm90_debug_end()
	wake(f_comp_cores_all_disabled);
	composer_core_count = 0;
end

script dormant f_comp_cores_all_disabled()
	// tracks health of Composer Locks, allows access to Composer Core. 
	sleep_until ((composer_core_count == 0), 5);
		wake( f_coldant_finale_fight );
		wake( f_cold_finale_blip_hack );
		wake(f_comp_enter_core);
		//device_set_position ( dc_comp_switch_front, 0 );
		//device_set_power ( dc_comp_switch_front, 1 );

		thread( f_objective_set( DEF_R_OBJECTIVE_DESTROY_CORE, TRUE, FALSE, TRUE, TRUE ) );
		//sleep_s(6);
		

	sleep_until( ai_spawn_count(sg_cold_finale) > 0 and ai_living_count(sg_cold_finale) <= 0);
		f_unblip_flag ( flag_cold_main_end );
		sleep( 1 );
		f_m90_game_save_no_timeout();
		sleep(60);

		//thread( f_coldant_create_bridge() );
		sleep_s(3);
		thread( stop_camera_shake_loop());
		sleep(1);
		thread( start_camera_shake_loop( "heavy", "short", coldant_camera_shake_heavy_short));		
end

script static void f_composer_start_firing()
		b_coldant_composer_fire = TRUE;
		thread( start_camera_shake_loop( "medium", "medium", coldant_camera_shake_medium_medium));
		dprint ("All Beams Deactivated. Enter Core Now."); 
		//object_create(cr_composer_beam_earth);
		//object_create(cr_composer_beam_slip);
		//object_create (es_comp_maelstrom);
		//g_composer_state = 3;
		sleep(1);

		sleep(30);
		thread( f_cold_maelstrom());
end


script dormant f_comp_enter_core()
		
		b_coldant_gameplay_active = FALSE;
		/// THIS WILL BLOCK CONTINUATION
		f_cold_find_ics_activator();
		
		
		f_unblip_flag ( fg_comp_bridge_end );
		thread( stop_camera_shake_loop());
		data_mine_set_mission_segment ("m90_ending");
		dprint("FOUND ICS PERSON");
		//pup_stop_show( l_didact_loop_pup );	
		ins_cin_92();
end

script dormant f_comp_start_ics()
		f_unblip_flag (fg_comp_bridge_end);

		hud_play_global_animtion (screen_fade_in);
	
		hud_stop_global_animtion (screen_fade_in);

		pup_grief_counter = 9;
		if g_ics_player==list_get(players(),0) then
		  pup_grief_counter = 0;
		elseif g_ics_player==list_get(players(),1) then
		  pup_grief_counter = 1;
		elseif g_ics_player==list_get(players(),2) then
		  pup_grief_counter = 2;
		elseif g_ics_player==list_get(players(),3) then
		  pup_grief_counter = 3;
		end

		// this music trigger should happen right after coming out of the cinematic
		thread(f_music_m90_v13_vs_didact_1());
		
		game_save_immediate();
		sleep(1);
		thread(f_coldant_maelstrom_shield_strip_players());
		fade_out(0,0,0,0);
		f_bomb_icon( false );

		f_clear_equipment();
		sleep(3);
		//SetObjectRealVariable(maya_scripted_m90_composerbridge_crate,VAR_OBJ_LOCAL_A,1);
		
		//make sure that we still have a valid player since we grabbed a player before the cinematic started
		// pup_grief_counter is the index of g_ics_player + 100 for each time that player failed
		g_ics_player = list_get(players(),pup_grief_counter%10);
		if pup_grief_counter>=500 or not player_valid(unit(g_ics_player)) then
			// you have failed me for the last time (picking a new player)
			pup_grief_counter = ((pup_grief_counter+1)%10)%list_count(players());
			g_ics_player = list_get(players(),pup_grief_counter);
		end
		pup_grief_counter = pup_grief_counter+100;
		
		sleep(1);
		fade_in(0,0,0,10);
		music_set_state("Play_mus_m90_v08_didact_vs_chief");
		local long show = pup_play_show( pup_didact_ics );
		sleep_until(not pup_is_playing(show),1);
		sleep(1);
		if g_kill_player == 0 then
			dprint("player is alive, continuing");
			//object_destroy(es_comp_maelstrom);
			// Fade to & from white represents brightness of Core, and HDR adjustment of visor to light. 
//		fade_out(1,1,1,0);
		
//		sleep(2);
		dprint("deleting composer");
		
			//fade_in(1,1,1,30);
			//wake( f_space_end_init );
		
			b_cold_mancs_active = FALSE;
			b_coldant_active = FALSE;

		////////////////////////////////////////
		// MIDNIGHT KISS
		////////////////////////////////////////
			thread( f_cold_cleanup() );
			f_m90_update_4_objectives();
			
			// MN-97919 - Need more White Screen time between Bomb Vignette moment and 093 Kiss Cinematic - 1.5 seconds
			sleep_s(1.5);
			
			ins_cin_93();

		else
			if g_kill_player == 2 then
				sleep(30); // died during crawling - allows 1 second for killcam
			end
			if ( is_skull_active(skull_iron) and not game_is_cooperative() ) then 
				map_reset();
			else
				game_revert();
			end
		end
end

global boolean b_cold_ics_started_first_move = FALSE;
//global boolean b_cold_ics_start_failure_ = FALSE;
script static void f_coldant_ics_start_timer()
	sleep_s(120);
	if b_cold_ics_started_first_move then
		sleep(1);
	end
end

global boolean b_coldant_ics_pull_up = FALSE;
script static void f_coldant_ics_death_timer()
	local long l_timer = timer_stamp( 30 ); 

	sleep_until( timer_expired(l_timer), 1 ); 
		if not b_coldant_ics_pull_up then
			dprint("fail");
			g_kill_player = 1;
			if not game_is_cooperative() then
				unit_kill( unit( g_ics_player ) );
				sleep(10);
				fade_out(0,0,0,30);
				sleep(30);
				if is_skull_active(skull_iron) then 
					map_reset();
				else
					game_revert();
				end
			else
				game_revert();
			end
		else
			dprint("player moved");
		end

end


script static void f_cold_find_ics_activator()
	dprint("*** waiting to catch ics starter ***");
	g_ics_player = player_get_first_valid();
	sleep_until (volume_test_players ( tv_comp_enter_core ) , 1);
		if ( volume_test_objects( tv_comp_enter_core, player0 ) ) then
			dprint("player0 activates ics");
			g_ics_player = player0;
		elseif ( volume_test_objects( tv_comp_enter_core, player1 ) ) then
			dprint("player1 activates ics");
			g_ics_player = player1;
		elseif ( volume_test_objects( tv_comp_enter_core, player2 ) ) then
			dprint("player2 activates ics");
			g_ics_player = player2;
		elseif ( volume_test_objects( tv_comp_enter_core, player3 ) ) then
			dprint("player3 activates ics");
			g_ics_player = player3;
		end
		

end



script static void f_coldant_create_bridge()
	dprint("move elevator");

	object_hide( maya_scripted_m90_composerbridge_crate,FALSE);
	//object_hide( didact_bridge, FALSE ); //Unhide final light bridge sound scenery: AUDIO!
	if not object_valid( didact_bridge ) then
		object_create( didact_bridge );
		//dprint ( "----------------- DIDACT BRIDGE LIVES! --------------------" );
	end
	SetObjectRealVariable(maya_scripted_m90_composerbridge_crate,VAR_OBJ_LOCAL_B,1);
	SetObjectRealVariable(maya_scripted_m90_composerbridge_crate,VAR_OBJ_LOCAL_A,1);



end


script static void f_coldant_grav_lift() 

	wake( f_coldant_final_rampancy );
	sleep_s(5);
	thread( f_objective_set( DEF_R_OBJECTIVE_ALRIGHT_MESSAGE, FALSE, FALSE, FALSE, TRUE ) );
	sleep_s(4);
 	wake( f_coldant_final_lift);
	wake( f_coldant_bridge_wait );
	
 	object_create( dm_coldant_grav_push );
 	sleep(1);
 	object_create( dm_coldant_grav_lift );
 	f_cold_grav_lift_effect();

end
	



script dormant f_coldant_final_rampancy()

	hud_set_rampancy_intensity(player0, 0.9);
	hud_set_rampancy_intensity(player1, 0.9);
	hud_set_rampancy_intensity(player2, 0.9);
	hud_set_rampancy_intensity(player3, 0.9); 
	sleep_s(2);
	hud_set_rampancy_intensity(player0, 0.4);
	hud_set_rampancy_intensity(player1, 0.4);
	hud_set_rampancy_intensity(player2, 0.4);
	hud_set_rampancy_intensity(player3, 0.4); 
	sleep_s(2);	
	hud_set_rampancy_intensity(player0, 0.1);
	hud_set_rampancy_intensity(player1, 0.1);
	hud_set_rampancy_intensity(player2, 0.1);
	hud_set_rampancy_intensity(player3, 0.1);
	sleep_s(1);	
	hud_set_rampancy_intensity(player0, 0);
	hud_set_rampancy_intensity(player1, 0);
	hud_set_rampancy_intensity(player2, 0);
	hud_set_rampancy_intensity(player3, 0);	

end

script dormant f_coldant_bridge_wait()

	sleep_until(volume_test_players(tv_cold_final_lift),1);
		f_coldant_create_bridge();
end

script dormant f_coldant_final_lift()
	//repeat


		f_blip_flag( fg_comp_bridge_start, "default" );
	sleep_until( volume_test_players( tv_cold_final_lift ) , 1 );
	
	//sleep_until( volume_test_players( tv_cold_final_lift ) );
		f_unblip_flag(fg_comp_bridge_start);
		//object_destroy( dm_coldant_grav_lift );
		sleep(15);
		f_blip_flag (fg_comp_bridge_end, "default");
end

script dormant f_cold_finale_blip_hack()
		//repeat
		dprint("final blips");
	if ( volume_test_players( tv_cold_right ) ) then
		dprint("right blip");
		f_blip_flag(flag_right_to_main, "default");
	end
	
	if ( volume_test_players( tv_cold_left)) then	
		dprint("left blip");
		f_blip_flag(flag_left_to_main, "default");
	end	
		
	sleep_until( volume_test_players( tv_cold_main ) , 1 );	
	
		f_unblip_flag( flag_right_to_main );
		f_unblip_flag( flag_left_to_main );
		f_blip_flag ( flag_cold_main_end, "default");
		sleep_until ( ai_spawn_count(sg_cold_finale) > 0 and ai_living_count(sg_cold_finale) <= 0 );
			sleep(5);
			f_unblip_flag ( flag_cold_main_end );
			thread( f_coldant_grav_lift());
end

// =================================================================================================
// =================================================================================================
// GENERAL SCRIPTS
// =================================================================================================
// =================================================================================================

////////////////////////////////////////////////////
///  ENTRANCE DOOR
///////////////////////////////////////////////////



script static void f_comp_open_door()
	device_set_position ( f_cold_front_door, 1 );
end

script static void f_comp_close_door()
	device_set_position ( f_cold_front_door, 0 );
end

script static void f_comp_close_door_safe()

	sleep_until (volume_test_players (tv_coldant_door_close), 1);
	
	f_unblip_flag ( flag_cold_main_end);
	wake ( f_jump_cleanup_harvestors );
	wake( f_jump_tube_cleanup );
	
	volume_teleport_players_not_inside (tv_coldant_door_close, flag_coldant_teleport_in);

	device_set_position ( f_cold_front_door, 0 );
	
	sleep_until (device_get_position (f_cold_front_door) == 0);
	
	object_destroy_folder( crs_jump_comp_weapons);
end

script dormant f_comp_door_control()
	sleep_until ( volume_test_players( tv_comp_open_door ), 1 );
		thread(f_comp_open_door());
	
end

script dormant f_comp_save_pre_pier_right()
	sleep_until ( volume_test_players( tv_cold_right_pre_pier_save ) , 1 );
		f_m90_game_save();	
end

script dormant f_comp_save_pre_pier_left()
	sleep_until ( volume_test_players( tv_cold_left_pre_pier_save ), 1 );
		f_m90_game_save();		
end

script dormant f_coldant_platforms()
	sleep_until( object_valid(maya_script_landing_left_a) ,1 );
	sleep_until( object_valid(maya_script_landing_left_b) ,1 );
	sleep_until( object_valid(maya_script_landing_main_a) ,1 );
	sleep_until( object_valid(maya_script_landing_main_b) ,1 );
	sleep_until( object_valid(maya_script_landing_pier_a) ,1 );
	sleep_until( object_valid(maya_script_landing_pier_b) ,1 );
	sleep_until( object_valid(maya_script_landing_right_a) ,1 );
	sleep_until( object_valid(maya_script_landing_right_b) ,1 );
	dprint("landing pads valid");
	object_hide( maya_script_landing_left_a, TRUE );
	object_hide( maya_script_landing_left_b, TRUE );
	object_hide( maya_script_landing_main_a, TRUE );
	object_hide( maya_script_landing_main_b, TRUE );
	object_hide( maya_script_landing_pier_a, TRUE );
	object_hide( maya_script_landing_pier_b, TRUE );
	object_hide( maya_script_landing_right_a, TRUE );
	object_hide( maya_script_landing_right_b, TRUE );			
	thread( f_coldant_move_platform( maya_script_landing_left_a, TRUE ) );
	thread( f_coldant_move_platform( maya_script_landing_left_b, TRUE ) );
	thread( f_coldant_move_platform( maya_script_landing_main_a, TRUE ) );
	thread( f_coldant_move_platform( maya_script_landing_main_b, TRUE ) );
	thread( f_coldant_move_platform( maya_script_landing_pier_a, TRUE ) );
	thread( f_coldant_move_platform( maya_script_landing_pier_b, TRUE ) );
	thread( f_coldant_move_platform( maya_script_landing_right_a, TRUE ) );
	thread( f_coldant_move_platform( maya_script_landing_right_b, TRUE ) );


end

script static void f_coldant_move_platform( object_name platform, boolean b_hide )
	if b_hide then
		object_move_by_offset( platform, 0.01, 0, 0, -100 );	
	else
		object_move_by_offset( platform, 0.01, 0, 0, 100 );	
	end
	
end

script dormant f_coldant_platforms_activate()
	thread( f_coldant_platform_wait( tv_cold_mc_main_left , maya_script_landing_left_a ) );
	thread( f_coldant_platform_wait( tv_cold_mc_main_right , maya_script_landing_right_a ) );
	thread( f_coldant_platform_wait( tv_cold_mc_left_main , maya_script_landing_main_a ) );
	thread( f_coldant_platform_wait( tv_cold_mc_left_pier , maya_script_landing_pier_a ) );
	thread( f_coldant_platform_wait( tv_cold_mc_pier_left , maya_script_landing_left_b ) );
	thread( f_coldant_platform_wait( tv_cold_mc_pier_right , maya_script_landing_right_b ) );
	thread( f_coldant_platform_wait( tv_cold_mc_right_pier , maya_script_landing_pier_b ) );
	thread( f_coldant_platform_wait( tv_cold_mc_right_main , maya_script_landing_main_b ) );
end

script static void f_coldant_platform_wait( trigger_volume tv , object_name platform )

	sleep_until( volume_test_players ( tv ) , 1 );
		dprint("activating platform");
		thread( f_coldant_rezin( platform ) );

end

script static void f_coldant_rezin( object_name platform)
	sleep_s(0.75);
	sleep( 2 );
	thread( f_coldant_move_platform( platform, FALSE ) );
	sleep( 1 );
	object_dissolve_from_marker( platform, hard_kill, m_platform );
	//object_hide( platform, FALSE );
end





////////////////////////////////////////////////////
///  WAYPOINT UPDATER
///////////////////////////////////////////////////

global cutscene_flag fg_cold_curret_blip_flag = flag_empty;
global cutscene_flag fg_cold_curret_blip_flag_2 = flag_empty;
global cutscene_flag fg_cold_curret_blip_flag_3 = flag_empty;
///holy crap yep this is what i made to control blips dynamically...probably only works well for 1 player have to figure out co-op
script dormant f_coldant_update()

	repeat
		sleep( 1 );
		if ( b_cold_left_core_active  /* and not( volume_test_players( tv_core_right ) or volume_test_players( tv_core_left  ))*/ ) then
			if ( (not volume_test_players( tv_cold_right ) and b_cold_right_core_active == TRUE )  ) then
			
			
				if b_cold_left_ascend then
					fm90_unblip_flag ( flag_cold_left_tower );
					sleep(1);
					if b_cold_left_plinth_blip then
						fm90_unblip_flag ( flag_left_to_composer );
					else
						if not volume_test_players( tv_cold_left_top_clear ) then
							fm90_blip_flag ( flag_left_to_composer, "default" );
						else
							fm90_unblip_flag ( flag_left_to_composer );
						end
					end
				else
					fm90_unblip_flag ( flag_left_to_composer );
					sleep(1);
					fm90_blip_flag ( flag_cold_left_tower, "default" );
					
				end
			
			else
				if   (not volume_test_players( tv_cold_left ) ) then
					fm90_unblip_flag ( flag_left_to_composer );
					fm90_unblip_flag ( flag_cold_left_tower );
				end
			end			
		else
			fm90_unblip_flag ( flag_left_to_composer );
		end
		
		if ( b_cold_left_core_active and not b_cold_right_core_active ) then
			if ( volume_test_players( tv_cold_right ) ) then
					fm90_blip_flag ( flag_right_to_pier, "default" );				
			else
					fm90_unblip_flag ( flag_right_to_pier);
			end
			
			if ( volume_test_players( tv_cold_rear ) ) then
					fm90_blip_flag ( flag_pier_to_left, "default" );				
			else
					fm90_unblip_flag ( flag_pier_to_left);
			end			

			if ( volume_test_players( tv_cold_left ) or volume_test_players( tv_cold_main )) then
				if b_cold_left_ascend then
					fm90_unblip_flag ( flag_cold_left_tower );
					sleep(1);
					if b_cold_left_plinth_blip then
						fm90_unblip_flag ( flag_left_to_composer );
					else
						if not volume_test_players( tv_cold_left_top_clear ) then
							fm90_blip_flag ( flag_left_to_composer, "default" );
						else
							fm90_unblip_flag ( flag_left_to_composer );
						end
					end
					
				else
					fm90_unblip_flag ( flag_left_to_composer );
					sleep(1);	
					fm90_blip_flag ( flag_cold_left_tower, "default" );
					
				end
			end
			
		end
		

		if ( b_cold_right_core_active ) then
			if ( (not volume_test_players( tv_cold_left ) and b_cold_left_core_active == TRUE )  ) then
				
				if b_cold_right_ascend then
					fm90_unblip_flag ( flag_cold_right_tower );
					sleep(1);
					if b_cold_right_plinth_blip then
						fm90_unblip_flag ( flag_right_to_composer );
					else
						if not volume_test_players( tv_cold_right_top_clear ) then
							fm90_blip_flag ( flag_right_to_composer, "default" );
						else
							fm90_unblip_flag ( flag_right_to_composer );
						end
					end
					
				else
					fm90_unblip_flag ( flag_right_to_composer );
					sleep(1);
					fm90_blip_flag ( flag_cold_right_tower, "default" );
					
				end

			else
				if  ( not volume_test_players( tv_cold_right ) ) then
					fm90_unblip_flag ( flag_right_to_composer );
					fm90_unblip_flag ( flag_cold_right_tower );
				end
			end	
		else

			fm90_unblip_flag ( flag_right_to_composer );
		end

		if ( b_cold_right_core_active and not b_cold_left_core_active ) then
			if ( volume_test_players( tv_cold_left ) ) then
				//dprint("huh");
					fm90_blip_flag ( flag_left_to_pier, "default" );				
			else
					fm90_unblip_flag ( flag_left_to_pier);
			end

			if ( volume_test_players( tv_cold_right ) or volume_test_players( tv_cold_main )) then
				if b_cold_right_ascend then
					fm90_unblip_flag ( flag_cold_right_tower );
					sleep(1);
					if b_cold_right_plinth_blip then
							fm90_unblip_flag ( flag_right_to_composer );
					else
						if not volume_test_players( tv_cold_right_top_clear ) then
							fm90_blip_flag ( flag_right_to_composer, "default" );
						else
							fm90_unblip_flag ( flag_right_to_composer );
						end
					end
					
				else
					fm90_unblip_flag ( flag_right_to_composer );
					sleep(1);
					fm90_blip_flag ( flag_cold_right_tower, "default" );
				
				end
			end
	
			
			if ( volume_test_players( tv_cold_rear ) ) then
					fm90_blip_flag ( flag_pier_to_right, "default" );				
			else
					fm90_unblip_flag ( flag_pier_to_right);
			end			
			
		end

		if not b_cold_left_core_active and not b_cold_right_core_active then
			fm90_unblip_flag ( flag_right_to_pier );
			fm90_unblip_flag ( flag_left_to_pier );
			
			
			if ( volume_test_players( tv_cold_rear ) ) then
					fm90_blip_flag ( flag_pier_to_left, "default" );	
					fm90_blip_flag ( flag_pier_to_right, "default" );					
			else
					fm90_unblip_flag ( flag_pier_to_left);
					fm90_unblip_flag ( flag_pier_to_right);
			end	
			
		end
	until( b_coldant_active == FALSE, 15 );
	


end

script static void f_coldant_clearall_blips()
	f_unblip_flag ( flag_pier_to_right);
	f_unblip_flag ( flag_pier_to_left);
	f_unblip_flag ( flag_left_to_pier);
	f_unblip_flag ( flag_right_to_pier);
	f_unblip_flag ( flag_right_to_composer );
	f_unblip_flag ( flag_left_to_composer);

end



//	------------------------------------------------------------------------------------------------
//	***	MANCANNON CONTROL ***	----------------------------------------------------------------------
//	------------------------------------------------------------------------------------------------

script static void f_coldant_pier_mancannon_update()

	if b_cold_left_core_active == FALSE and b_cold_right_core_active == FALSE then
		dprint("destroying to pier mcs");
		object_destroy ( cr_comp_left_to_pier_inv );
		object_destroy ( cr_comp_right_to_pier_inv );
		sleep(1);
		f_cold_mancannon_fx( cr_comp_left_to_pier_inv , FALSE );
		f_cold_mancannon_fx( cr_comp_right_to_pier_inv , FALSE );

		object_create(cr_comp_left_to_main_inv);
		object_create(cr_comp_right_to_main_inv);	
		sleep(1);
		f_cold_mancannon_fx( cr_comp_left_to_main_inv , TRUE );
		f_cold_mancannon_fx( cr_comp_right_to_main_inv , TRUE );

		wake( f_coldant_main_cannons_off );		

	elseif b_cold_left_core_active == TRUE and b_cold_right_core_active == FALSE then
		dprint("creating right to pier mcs");
		object_create ( cr_comp_right_to_pier_inv );
		sleep(1);
		f_cold_mancannon_fx( cr_comp_right_to_pier_inv , TRUE );
	elseif b_cold_left_core_active == FALSE and b_cold_right_core_active == TRUE then
		dprint("creating left to pier mcs");
		object_create ( cr_comp_left_to_pier_inv );

		sleep(1);
		f_cold_mancannon_fx( cr_comp_left_to_pier_inv , TRUE );
	end
end

script dormant f_coldant_pier_mc_effects()

	object_create(cr_comp_pier_invis_right);
	object_create(cr_comp_pier_invis_left);
	

	sleep(1 );
	f_cold_mancannon_fx( cr_comp_pier_invis_left , TRUE );
	f_cold_mancannon_fx( cr_comp_pier_invis_right , TRUE );	


end
	
script dormant f_coldant_main_cannons_on()
//		object_destroy( cr_comp_plat1_left_off );
//		object_destroy( cr_comp_plat1_right_off );	
		object_create( cr_comp_plat1_right_inv );	
		object_create( cr_comp_plat1_left_inv );
		sleep(1);
		f_cold_mancannon_fx( cr_comp_plat1_right_inv , TRUE );
		f_cold_mancannon_fx( cr_comp_plat1_left_inv , TRUE );	
		//object_create( es_comp_plat1_left );
		//object_create( es_comp_plat1_right );
		//object_create( cr_comp_main_to_right_base );
		//object_create( cr_comp_main_to_left_base );
end


script dormant f_coldant_main_cannons_off()
//		object_create( cr_comp_plat1_left_off );
//		object_create( cr_comp_plat1_right_off );	
		object_destroy( cr_comp_plat1_right_inv );	
		object_destroy( cr_comp_plat1_left_inv );	
		f_cold_mancannon_fx( cr_comp_plat1_right_inv , FALSE );
		f_cold_mancannon_fx( cr_comp_plat1_left_inv , FALSE );	
		//object_destroy( es_comp_plat1_left );
		//object_destroy( es_comp_plat1_right );
		//object_destroy( cr_comp_main_to_right_base );
		//object_destroy( cr_comp_main_to_left_base );
end



		


//	------------------------------------------------------------------------------------------------
//	***	COMBAT CONTROL ***	----------------------------------------------------------------------------
//	------------------------------------------------------------------------------------------------







global boolean b_stop_shield_strip = FALSE;
script static void f_coldant_maelstrom_shield_strip_players()
	//b_stop_shield_strip = TRUE;
	repeat
		if player_valid(player0) then
			object_set_shield (player0(),0);
			object_set_shield_stun_infinite (player0());
		end
		//object_set_shield_stun (player0(),999999);
		if player_valid(player1) then
			object_set_shield (player1(),0);
			object_set_shield_stun_infinite (player1());
		end
		//object_set_shield_stun (player1(),999999);
		if player_valid(player2) then
			object_set_shield (player2(),0);
			object_set_shield_stun_infinite (player2());
		end
		//object_set_shield_stun (player2(),999999);
		if player_valid(player3) then
			object_set_shield (player3(),0);
			object_set_shield_stun_infinite (player3());
		end
		//object_set_shield_stun (player3(),999999);
	until( b_coldant_complete or b_stop_shield_strip,5);		
end


script static void f_coldant_maelstrom_shield_strip_players_one_time()

		if player_valid(player0) then
			object_set_shield (player0(),0);
		end

		if player_valid(player1) then
			object_set_shield (player1(),0);
		end

		if player_valid(player2) then
			object_set_shield (player2(),0);

		end

		if player_valid(player3) then
			object_set_shield (player3(),0);
		end
	
end

script static void f_coldant_maelstrom_shield_restore_players()
		b_stop_shield_strip = TRUE;
		sleep(5);
		object_set_shield (player0(),1);
		object_set_shield_stun (player0(),0);
		object_set_shield (player1(),1);
		object_set_shield_stun (player1(),0);
		object_set_shield (player2(),1);
		object_set_shield_stun (player2(),0);
		object_set_shield (player3(),1);
		object_set_shield_stun (player3(),0);
				
end

script command_script cs_shield_strip_knight()
		cs_phase_in();
		
		//object_set_shield (ai_get_object( ai_current_actor ),0);
		//object_set_shield_stun (ai_get_object( ai_current_actor ),9999);
		
end

//////////////////////////////
// ENDING
/////////////////////////////
script dormant f_m90_ending()

		nar_m90_end();
		b_M90_COMPLETE = TRUE;
end







global boolean b_Composer_Init = FALSE;
global long l_pup_composer = -1;

script static void f_composer_init_jump()
	b_Composer_Init = TRUE;	
	dprint("starting composer show");
	l_pup_composer = pup_play_show(pup_composer);
end

script static void f_composer_init_coldant()
	if not b_Composer_Init then
		dprint("we must be inserting to coldant, starting composer");
		l_pup_composer = pup_play_show(pup_composer);
		g_composer_state = 1;
	end

end

script static void zip_it_cortana()
	b_debug_skip_intro = TRUE;
end

script static void debug_left_bridge()
	object_create( dc_left_bridge );
	f_cold_left_bridge_press();
end



global boolean b_cold_left_bridge_activated = FALSE;
global boolean b_cold_right_bridge_activated = FALSE;

script static void f_cold_left_bridge_press()
			f_blip_flag( flag_left_bridge_button, "activate" );
	sleep_until( device_get_position( dc_left_bridge ) > 0.0, 1 );	
		dprint("press button");
		f_unblip_flag( flag_left_bridge_button );
		pup_play_show( pup_bridge_left );

end

script static void f_cold_right_bridge_press()
			f_blip_flag( flag_right_bridge_button, "activate" );
	sleep_until( device_get_position( dc_right_bridge ) > 0.0, 1 );	
		dprint("press button");
		f_unblip_flag( flag_right_bridge_button );
		pup_play_show( pup_bridge_right );
	
end

script static void f_cold_plinth_explosion()
	//effect_new_on_object_marker( environments\solo\m90_sacrifice\fx\explosion\cortana_plinth_explode.effect ,cortana, fx_pedestal );
	sleep(3);
	dprint("plinth explosions");
	thread(f_core_entry_hit());
	if g_ics_plinth3 == dc_comp_switch_right then
		effect_new( environments\solo\m90_sacrifice\fx\explosion\cortana_plinth_explode.effect, flag_explosion_plinth_right );
		effect_new_on_ground( environments\solo\m90_sacrifice\fx\explosion\plinth_explosion_decal.effect, cr_plinth_right );
		
		//object_destroy(cr_plinth_right);
		sound_impulse_start ( 'sound\environments\solo\m090\amb_m90_device_machines\amb_m90_dm_plinth_derez', cr_plinth_right, 1 ); //AUDIO!
		object_dissolve_from_marker( cr_plinth_right, soft_kill, m_control );
		sleep_s(4);
		object_destroy(cr_plinth_right);
	else
		effect_new( environments\solo\m90_sacrifice\fx\explosion\cortana_plinth_explode.effect, flag_explosion_plinth_left );
		effect_new_on_ground( environments\solo\m90_sacrifice\fx\explosion\plinth_explosion_decal.effect, cr_plinth_left );
		
		//object_destroy(cr_plinth_left);
		sound_impulse_start ( 'sound\environments\solo\m090\amb_m90_device_machines\amb_m90_dm_plinth_derez', cr_plinth_left, 1 ); //AUDIO!
		object_dissolve_from_marker( cr_plinth_left, soft_kill, m_control );
		
		sleep_s(4);
		object_destroy(cr_plinth_left);
	end
	
	//sleep(15);
	
end

script static void f_cold_mancannon_fx( object_name crate , boolean b_on )

	if b_on then
		effect_new_on_object_marker ( levels\multi\wraparound\fx\energy\wrp_launchpad_energy_rt.effect, crate, "marker_man_cannon_mp_invisible_base" );
	else
		effect_stop_object_marker ( levels\multi\wraparound\fx\energy\wrp_launchpad_energy_rt.effect, crate, "marker_man_cannon_mp_invisible_base" );
	end
	
end
script static void f_cold_grav_lift_effect()
	dprint(":::::::::::::::-------------f_cold_grav_lift_effect()");
	//effect_new ( levels\multi\wraparound\fx\energy\wrp_launchpad_energy_rt.effect,flag_comp_gravlift  );
	
	//script static void f_drop_down_effects()

	//effect_new( environments\solo\m70_liftoff\fx\energy\gravlift_base.effect, flag_comp_gravlift);
	effect_new(environments\solo\m90_sacrifice\fx\energy\m90_cortana_gravlift.effect, flag_comp_gravlift);
	
	effect_new_between_points(environments\solo\m70_liftoff\fx\energy\gravlift_tube.effect, flag_comp_gravlift, flag_gravlift_top);

end

script static void f_cold_composer_cloud()
	//dprint("MAL STRUUMMMMMM");
	effect_new( environments\solo\m90_sacrifice\fx\radiation\radiation_cloud.effect, flag_cold_didact );
	//effect_new( environments\solo\m90_sacrifice\fx\radiation\composer_radiation.effect, flag_cold_didact );

end

script static void f_cold_maelstrom()
	dprint("MAL STRUUMMMMMM");
	//effect_new( environments\solo\m90_sacrifice\fx\radiation\radiation_cloud.effect, flag_cold_didact );
	effect_new( environments\solo\m90_sacrifice\fx\radiation\composer_radiation.effect, flag_cold_didact );
	f_radiation_particles_on( TRUE );
end

script static void f_cold_maelstrom_all()
	dprint("MAL STRUUMMMMMM");
	effect_new( environments\solo\m90_sacrifice\fx\radiation\radiation_cloud.effect, flag_cold_didact );
	effect_new( environments\solo\m90_sacrifice\fx\radiation\composer_radiation.effect, flag_cold_didact );
	f_radiation_particles_on( TRUE );
end

script static void f_cold_maelstrom_kill()
	dprint("KILL MAL STRUUMMMMMM");
	//effect_kill_from_flag( environments\solo\m90_sacrifice\fx\radiation\radiation_cloud.effect, flag_cold_didact );
	//effect_kill_from_flag( environments\solo\m90_sacrifice\fx\radiation\composer_radiation.effect, flag_cold_didact );
	
	f_radiation_particles_on( FALSE );
end




	
		
		////////////////////////////////////
//	SPACE END
//  CHIEF IN SPACE
////////////////////////////////////


script dormant f_space_end_init()
	local long l_pup_space = -1;
	dprint("f_space_end_init");
	thread( f_coldant_maelstrom_shield_restore_players() );
	player_disable_movement ( TRUE );
	//object_create(space_pelican);
	pup_player0 = player_get_first_valid();
	inspect( pup_player0 );
	sleep(90);
	inspect( pup_player0 );
	hud_show( FALSE );
	cinematic_start();
	l_pup_space = pup_play_show( pup_space_float );
 	dprint("---- fade in ----");
 	dprint("---- CHIEF in SPAAACE ----");
 	sleep(30);
 	fade_in (0, 0, 0, 30);
 	
 sleep_until( pup_is_playing( l_pup_space ) == FALSE, 1 );
 	fade_out(1,1,1,0 );
	cinematic_stop();
 	dprint("space float finished");	
 		// Calls the M90 ending cinematic in the narrative script after player has pressed "the button". Includes mission complete script. 
		nar_m90_end();
		
		
	//dprint("M90 mission complete");
	//b_M90_COMPLETE = TRUE;
	player_disable_movement (FALSE);
end
// --- End m90_coldant.hsc ---

// --- Begin m90_dialogue.hsc ---
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343
//
// Mission: 					m90_dialog
//										
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343

// -------------------------------------------------------------------------------------------------
// DIALOG
// -------------------------------------------------------------------------------------------------
// DEFINES


// VARIABLES


// dialog ID variables

global boolean b_third_gun_destroyed = FALSE;




// --- END



script dormant f_dialog_m90_didact_ship_exterior()
dprint("f_dialog_m90_didact_ship_exterior");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					
            l_dialog_id = dialog_start_foreground( "DIDACT_SHIP_EXTERIOR", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), TRUE, "", 0.25 );                       	
								dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m90\m90_flight_section_slipspace_00100', FALSE, NONE, 0.0, "", "Cortana : Broadsword's hull integrity is stable. We'll be SAFE as long as we stay below the Didact's shields." );
								dialog_line_chief( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m90\m90_flight_section_slipspace_00101', FALSE, NONE, 0.0, "", "Master Chief : Where's the Composer?" );
								dialog_line_cortana( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m90\m90_flight_section_slipspace_00102', FALSE, NONE, 0.0, "", "Cortana : Close. I should be able to guide us to it." );
            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
					 
end


script dormant f_dialog_m90_didact_ship_exterior_second()
dprint("f_dialog_m90_didact_ship_exterior_second");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					
            l_dialog_id = dialog_start_foreground( "DIDACT_SHIP_EXTERIOR_SECOND", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), TRUE, "", 0.25 );                       
								dialog_line_didact( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m90\m90_flight_section_slipspace_00103', FALSE, NONE, 0.0, "", "Didact : You have not been Composed. Such inoculation should not have been possible." );
								//dialog_line_didact( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m90\m90_flight_section_slipspace_00113', FALSE, NONE, 0.0, "", "Didact : Let us hope the others of your species do not share this talent for resistance, lest stronger means than the Composer prove necessary." );
								dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m90\m90_flight_section_slipspace_00114', FALSE, NONE, 0.0, "", "Cortana : Locking onto his transmission..." );
            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
					 
end



script dormant f_dialog_m90_didact_ship_exterior_fourth()
dprint("f_dialog_m90_didact_ship_exterior_fourth");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					
            l_dialog_id = dialog_start_foreground( "DIDACT_SHIP_EXTERIOR_FOURTH", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), TRUE, "", 0.25 );                       
							dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m90\m90_flight_section_slipspace_00112', FALSE, NONE, 0.0, "", "Cortana : Cherenkov radiation fluctuating! We're coming out of slipspace." );
							sleep_s(2);

							start_radio_transmission( "fleetcom_transmission_name" );
							dialog_line_npc( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m90\m90_flight_section_earth_00100', FALSE, NONE, 0.0, "", "Fleetcom Watch : [At current velocity] - hostile will achieve Earth orbit in 4 minutes." ,TRUE);
							end_radio_transmission();

							start_radio_transmission( "infinity_transmission_name" );
							dialog_line_npc( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m90\m90_flight_section_earth_00101', FALSE, NONE, 0.0, "", "Infinity Comm : Roger. Battle Group Dakota, close on the Forerunner vessel.", TRUE);
							end_radio_transmission();

							wake(f_dialog_m90_didact_ship_exterior_fourth_02);
							dialog_line_cortana( l_dialog_id, 3, TRUE, 'sound\dialog\mission\m90\m90_flight_section_earth_00102', FALSE, NONE, 0.0, "", "Cortana : Infinity must have warned them!" );							
            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
					 
end

script dormant f_dialog_m90_didact_ship_exterior_fourth_02()
dprint("f_dialog_m90_didact_ship_exterior_fourth_02");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
						sleep_s(2);
            l_dialog_id = dialog_start_background( "DIDACT_SHIP_EXTERIOR_FOURTH_02", l_dialog_id, TRUE, DEF_DIALOG_STYLE_PLAY(), TRUE, "", 0.0 );                       
							dialog_line_chief( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m90\m90_flight_section_earth_00103', FALSE, NONE, 0.0, "", "Master Chief : Sierra 117 to UNSC Infinity. Captain Del Rio, do you read?" );
							start_radio_transmission( "lasky2_transmission_name" );
							dialog_line_npc( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m90\m90_flight_section_earth_00104', FALSE, NONE, 0.0, "", "Lasky : Chief, it's Lasky - is that you?!", TRUE);
							dialog_line_chief( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m90\m90_flight_section_earth_00105', FALSE, NONE, 0.0, "", "Master Chief : Affirmative, sir. Where's the Captain?" );
							dialog_line_npc( l_dialog_id, 3, TRUE, 'sound\dialog\mission\m90\m90_flight_section_earth_00106', FALSE, NONE, 0.0, "", "Lasky : FleetCom didn't take kindly to his abandoning you on Requiem. I'm afraid I'll have to do.", TRUE);
							dialog_line_chief( l_dialog_id, 4, TRUE, 'sound\dialog\mission\m90\m90_flight_section_earth_00107', FALSE, NONE, 0.0, "", "Master Chief : The Didact's got the Composer. We're in a Broadsword carrying a Havok-grade payload, on approach to deliver it." );
							dialog_line_npc( l_dialog_id, 5, TRUE, 'sound\dialog\mission\m90\m90_flight_section_earth_00108', FALSE, NONE, 0.0, "", "Lasky : Then let's see if we can grease the wheels for you - all ships, prepare to engage!", TRUE);
							end_radio_transmission();
            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
					 
end


script dormant f_dialog_m90_didact_ship_exterior_sixth()
dprint(" f_dialog_m90_didact_ship_exterior_sixth");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					
            l_dialog_id = dialog_start_foreground( "DIDACT_SHIP_EXTERIOR_SIXTH", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), TRUE, "", 0.25 );      
            start_radio_transmission( "lasky2_transmission_name" );                 
							dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m90\m90_flight_section_earth_00109', FALSE, NONE, 0.0, "", "Lasky : Chief, the Battle Group's moving to intercept - but at the rate the Didact's ship is advancing, he'll reach the wire [in] T-minus two minutes.", TRUE);
							dialog_line_chief( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m90\m90_flight_section_earth_00110', FALSE, NONE, 0.0, "", "Master Chief : Commander, direct all your ships to the Composer" );
							dialog_line_npc( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m90\m90_flight_section_earth_00111', FALSE, NONE, 0.0, "", "Lasky : Copy that, Chief.", TRUE);
							end_radio_transmission();
							sleep_s(8);							
							start_radio_transmission( "fleetcom_transmission_name" );
							dialog_line_npc( l_dialog_id, 3, TRUE, 'sound\dialog\mission\m90\m90_flight_section_earth_00112', FALSE, NONE, 0.0, "", "Fleetcom Watch : Orbital Defense Command, this is FleetCom. Hostile inbound - proceed to Condition Red.", TRUE);
							end_radio_transmission();
							start_radio_transmission( "orbital_transmission_name" );
							dialog_line_npc( l_dialog_id, 4, TRUE, 'sound\dialog\mission\m90\m90_flight_section_earth_00114', FALSE, NONE, 0.0, "", "Orbital Defense Command : This is Earth Orbital Defense! MAC defenses ineffective against enemy vessel. It's still approaching.", TRUE);
							end_radio_transmission();
							sleep_s(7);
							start_radio_transmission( "lasky2_transmission_name" );
							dialog_line_npc( l_dialog_id, 5, TRUE, 'sound\dialog\mission\m90\m90_flight_section_earth_00116', FALSE, NONE, 0.0, "", "Lasky : Infinity to FleetCom! Battle Group has reached Didact's ship.", TRUE);
							end_radio_transmission();
							start_radio_transmission( "fleetcom_transmission_name" );
							dialog_line_npc( l_dialog_id,6, TRUE, 'sound\dialog\mission\m90\m90_flight_section_earth_00135', FALSE, NONE, 0.0, "", "Fleetcom Watch : All wings, you are cleared to engage.", TRUE);
							end_radio_transmission();
            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
					 
end


script dormant f_dialog_m90_didact_ship_exterior_eleventh()
dprint("f_dialog_m90_didact_ship_exterior_eleventh");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					
            l_dialog_id = dialog_start_foreground( "DIDACT_SHIP_EXTERIOR_ELEVENTH", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), TRUE, "", 0.25 );                       
            start_radio_transmission( "lasky2_transmission_name" );
							dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m90\m90_flight_section_earth_00117', FALSE, NONE, 0.0, "", "Lasky : Chief, we're tracking you. You're almost on top of it.", TRUE);
							dialog_line_npc( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m90\m90_flight_section_earth_00118', FALSE, NONE, 0.0, "", "Lasky : Cortana, ready the warhead.", TRUE);
							end_radio_transmission();
							dialog_line_cortana( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m90\m90_flight_section_earth_00119', FALSE, NONE, 0.0, "", "Cortana : Chief... if we destroy the Composer now, what happens to the crew from Ivanoff?" );
							dialog_line_chief( l_dialog_id, 3, TRUE, 'sound\dialog\mission\m90\m90_flight_section_earth_00120', FALSE, NONE, 0.0, "", "Master Chief : They've already been digitized" );
							dialog_line_cortana( l_dialog_id, 4, TRUE, 'sound\dialog\mission\m90\m90_flight_section_earth_00121', FALSE, NONE, 0.0, "", "Cortana : Exactly. They're not dead. Just... data." );
							//sleep_s(1);
							//dialog_line_cortana( l_dialog_id, 5, TRUE, 'sound\dialog\mission\m90\m90_flight_section_earth_00122', FALSE, NONE, 0.0, "", "Cortana : It doesn't make us any less real." );
            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
					 
end


script dormant f_dialog_m90_eye_reveal()
dprint("f_dialog_m90_eye_reveal");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					
            l_dialog_id = dialog_start_foreground( "EYE_REVEAL", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), TRUE, "", 0.25 );                       
							dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m90\m90_flight_section_earth_00123', FALSE, NONE, 0.0, "", "Cortana : There it is. No- wait�" );
            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
					 
end


global long l_dialog_eye_closed = DEF_DIALOG_ID_NONE();
script dormant f_dialog_m90_eye_reveal_2()
dprint("f_dialog_m90_eye_reveal_2");
//local long l_dialog_id = DEF_DIALOG_ID_NONE();
					
            l_dialog_eye_closed = dialog_start_foreground( "EYE_REVEAL_2", l_dialog_eye_closed, TRUE, DEF_DIALOG_STYLE_QUEUE(), TRUE, "", 0.25 );                       
							dialog_line_chief( l_dialog_eye_closed, 0, TRUE, 'sound\dialog\mission\m90\m90_flight_section_earth_00125', FALSE, NONE, 0.0, "", "Master Chief : Infinity, the Didact just closed off our entrance to the Composer." );
							start_radio_transmission( "lasky2_transmission_name" );
							dialog_line_npc( l_dialog_eye_closed, 1, TRUE, 'sound\dialog\mission\m90\m90_flight_section_earth_00126', FALSE, NONE, 0.0, "", "Lasky : We could try punching a hole in that hull plating, but Infinity won't be able to get a clear shot with all that flak.", TRUE);
							end_radio_transmission();
							dialog_line_chief( l_dialog_eye_closed, 2, TRUE, 'sound\dialog\mission\m90\m90_flight_section_earth_00127', FALSE, NONE, 0.0, "", "Master Chief : We'll take care of the guns." );
            l_dialog_eye_closed = dialog_end( l_dialog_eye_closed, TRUE, TRUE, "" );
					 
end



script dormant f_dialog_m90_eye_first_gun()
dprint("f_dialog_m90_eye_first_guns");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					sleep_s(2);
            l_dialog_id = dialog_start_foreground( "DIDACT_SHIP_FIRST_GUNS", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), TRUE, "", 0.25 );    
            start_radio_transmission( "lasky2_transmission_name" );                   
								dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m90\m90_flight_section_earth_00128', FALSE, NONE, 0.0, "", "Lasky : Whatever you're doing's working, Chief! Clear up the approach and we can drop close enough to punch a hole in that hull for you.", TRUE);
								end_radio_transmission();
            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
					 
end


script dormant f_dialog_m90_eye_second_gun()
dprint("f_dialog_m90_eye_second_gun");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					
            l_dialog_id = dialog_start_foreground( "DIDACT_SHIP_SECOND_GUN", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), TRUE, "", 0.25 );                       							
								dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m90\m90_flight_section_earth_00129', FALSE, NONE, 0.0, "", "Cortana : Two cannons neutralized." );
								dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m90\m90_flight_section_earth_00134', FALSE, NONE, 0.0, "", "Cortana : One (two) to go!" );
            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
					 
end



script dormant f_dialog_m90_eye_third_gun()
dprint("f_dialog_m90_eye_third_gun");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					
            l_dialog_id = dialog_start_foreground( "DID_ACT_SHIP_THIRD_GUN", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), TRUE, "", 0.25 );                       
							dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m90\m90_flight_section_earth_00131', FALSE, NONE, 0.0, "", "Cortana : Only one gun left." );
							start_radio_transmission( "lasky2_transmission_name" );
							dialog_line_npc( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m90\m90_flight_section_earth_00130', FALSE, NONE, 0.0, "", "Lasky : Copy, Cortana. Weapons, prepare firing solution! We promised to get the Chief inside that ship and I'm not about to let the man down.", TRUE);
							end_radio_transmission();
            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
					
	sleep (30 * 2);
	
	b_third_gun_destroyed = TRUE;
					 
end

script static void f_dialog_play_pip_m90_a_subtitles()
	sleep(15);
	dialog_play_subtitle('sound\dialog\mission\m90\m90_didactship_start_00100');
	dialog_play_subtitle('sound\dialog\mission\m90\m90_didactship_start_00101');
	dialog_play_subtitle('sound\dialog\mission\m90\m90_didactship_start_00102');
	sleep(145);
	dialog_play_subtitle('sound\dialog\mission\m90\m90_didactship_start_00103');
	sleep(15);
	dialog_play_subtitle('sound\dialog\mission\m90\m90_didactship_start_00104');
end

script dormant f_dialog_m90_didact_ship_crash_room()
dprint("f_dialog_m90_didact_ship_crash_room");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					
            l_dialog_id = dialog_start_foreground( "DIDACT_SHIP_CRASH_ROOM", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), TRUE, "", 0.25 );                       
            hud_play_pip_from_tag( "bink\Campaign\M90_A_60" );       
			thread(f_dialog_play_pip_m90_a_subtitles());
          	
            hud_set_rampancy_intensity(player0, 0.75);
  			hud_set_rampancy_intensity(player1, 0.75);
  			hud_set_rampancy_intensity(player2, 0.75);
  			hud_set_rampancy_intensity(player3, 0.75);
  			
			sleep_s(16);
					//		dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m90\m90_didactship_start_00100', FALSE, NONE, 0.0, "", "Cortana : I should know what to do now�" );
					//	dialog_line_chief( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m90\m90_didactship_start_00101', FALSE, NONE, 0.0, "", "Master Chief : We'll have to deploy the warhead manually. How and where?" );
							//dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m90\m90_didactship_start_00102', FALSE, NONE, 0.0, "", "Cortana : I always know what to do. I always know what to do!" );
							//dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m90\m90_didactship_start_00103', FALSE, NONE, 0.0, "", "Cortana : Chief, just give me/us a second..." );
							//dialog_line_chief( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m90\m90_didactship_start_00104', FALSE, NONE, 0.0, "", "Master Chief : Keep scanning for the Composer. We'll figure it out on the way." );
										// RAMPANCY MOMENT - Cortana throws up a bunch of incorrect waypoints.
							f_blip_flag (flag_wrong_blip_01, "default");
							f_blip_flag (flag_wrong_blip_02, "recon");
							f_blip_flag (flag_wrong_blip_03, "ordinance");
							f_blip_flag (flag_wrong_blip_04, "neutralize");
							f_blip_flag (flag_wrong_blip_05, "recon");
							f_blip_flag (flag_wrong_blip_06, "default");
							f_blip_flag (flag_wrong_blip_07, "ordinance");
							f_blip_flag (flag_wrong_blip_08, "neutralize");
							f_blip_flag (flag_wrong_blip_09, "recon");
							f_blip_flag (flag_wrong_blip_10, "default");
							f_blip_flag (flag_wrong_blip_11, "default");
							f_blip_flag (flag_wrong_blip_12, "neutralize");
							f_blip_flag (flag_wrong_blip_13, "recon");
							f_blip_flag (flag_wrong_blip_14, "ordinance");
							f_blip_flag (flag_wrong_blip_15, "default");
					sleep_s(4);
							f_unblip_flag (flag_wrong_blip_01);
							f_unblip_flag (flag_wrong_blip_02);
							f_unblip_flag (flag_wrong_blip_03);
							f_unblip_flag (flag_wrong_blip_04);
							f_unblip_flag (flag_wrong_blip_05);
							f_unblip_flag (flag_wrong_blip_06);
							f_unblip_flag (flag_wrong_blip_07);
							f_unblip_flag (flag_wrong_blip_08);
							f_unblip_flag (flag_wrong_blip_09);
							f_unblip_flag (flag_wrong_blip_10);
							f_unblip_flag (flag_wrong_blip_11);
							f_unblip_flag (flag_wrong_blip_12);
							f_unblip_flag (flag_wrong_blip_13);
							f_unblip_flag (flag_wrong_blip_14);
							f_unblip_flag (flag_wrong_blip_15);
					hud_set_rampancy_intensity(player0, 0);
  				hud_set_rampancy_intensity(player1, 0);
  				hud_set_rampancy_intensity(player2, 0);
  				hud_set_rampancy_intensity(player3, 0);

            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
					 
end

script dormant f_dialog_m90_didact_ship_scan()
dprint("f_dialog_m90_didact_ship_scan");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					
            l_dialog_id = dialog_start_foreground( "DIDACT_SHIP_CONSOLE_NUDGE", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), TRUE, "", 0.25 );                       
							//dialog_line_didact( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m90\m90_didactship_start_00113', FALSE, NONE, 0.0, "", "Didact : Your ancestors sought to drown the galaxy in their hubris as well, warrior, and look what became of them." );
							dialog_line_didact( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m90\m90_didactship_start_00114', FALSE, NONE, 0.0, "", "Didact : Where reason does not stop you, perhaps force can at least delay you." );
            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
					 
end




script dormant f_dialog_m90_didact_ship_leap_of_faith_1()
dprint("f_dialog_m90_didact_ship_leap_of_faith_1");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					
            l_dialog_id = dialog_start_foreground( "DIDACT_SHIP_LEAP_OF_FAITH_1", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), TRUE, "", 0.25 );                       
							dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m90\m90_didactship_start_00106', FALSE, NONE, 0.0, "", "Cortana : I recommend entering the doorway to your left." );
							//dialog_line_chief( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m90\m90_didactship_start_00107', FALSE, NONE, 0.0, "", "Master Chief : That doesn't look safe." );
								//dialog_line_cortana( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m90\m90_didactship_start_00108', FALSE, NONE, 0.0, "", "Cortana : YES" );
            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
					 
end

script dormant f_dialog_m90_didact_ship_leap_of_faith_2()
dprint("f_dialog_m90_didact_ship_leap_of_faith_1");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					
            l_dialog_id = dialog_start_foreground( "DIDACT_SHIP_LEAP_OF_FAITH_1", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), TRUE, "", 0.25 );                       

								 	hud_set_rampancy_intensity(player0, 0.15);
  								hud_set_rampancy_intensity(player1, 0.15);
  								hud_set_rampancy_intensity(player2, 0.15);
  								hud_set_rampancy_intensity(player3, 0.15);
								dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m90\m90_leap_down_00105', FALSE, NONE, 0.0, "", "Cortana : The current will slow your descent." );
								hud_set_rampancy_intensity(player0, 0);
				  			hud_set_rampancy_intensity(player1, 0);
				  			hud_set_rampancy_intensity(player2, 0);
				  			hud_set_rampancy_intensity(player3, 0);
            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
					 
end

script dormant f_dialog_m90_didact_ship_leap_of_faith_3()
dprint("f_dialog_m90_didact_ship_leap_of_faith_3");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					
            l_dialog_id = dialog_start_foreground( "DIDACT_SHIP_LEAP_OF_FAITH_3", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), TRUE, "", 0.25 );                       
							dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m90\m90_leap_down_00101', FALSE, NONE, 0.0, "", "Cortana : Trust me!" );
            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
					 
end

script dormant f_dialog_90_dropping_leap_of_faith()
dprint("f_dialog_90_dropping_leap_of_faith");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					wake(f_dialog_90_dropping_leap_of_faith_BACKGROUND);
            l_dialog_id = dialog_start_foreground( "DROPPING_LEAP_OF_FAITH", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), TRUE, "", 0.25 );                       
            								 	hud_set_rampancy_intensity(player0, 0.15);
  								hud_set_rampancy_intensity(player1, 0.15);
  								hud_set_rampancy_intensity(player2, 0.15);
  								hud_set_rampancy_intensity(player3, 0.15);
            
							dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m90\m90_leap_down_00102', FALSE, NONE, 0.0, "", "Cortana : I won't leave you I promise!" );
								hud_set_rampancy_intensity(player0, 0);
				  			hud_set_rampancy_intensity(player1, 0);
				  			hud_set_rampancy_intensity(player2, 0);
				  			hud_set_rampancy_intensity(player3, 0);
            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
					 
end

script static void f_dialog_play_pip_m90_b_subtitles()
	sleep(30);
	dialog_play_subtitle('sound\dialog\mission\m90\m90_didactship_portals_00100');
	dialog_play_subtitle('sound\dialog\mission\m90\m90_didactship_portals_00100a');
end

script dormant f_dialog_90_dropping_leap_of_faith_BACKGROUND()
dprint("f_dialog_90_dropping_leap_of_faith");
	sleep_s(.5);
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					
            l_dialog_id = dialog_start_background( "DROPPING_LEAP_OF_FAITH", l_dialog_id, TRUE, DEF_DIALOG_STYLE_PLAY(), TRUE, "", 0.25 );                       
							dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m90\m90_rampancy_00125_WHISPER', FALSE, NONE, 0.0, "", "Cortana : [WHISPER] I'll always take care of you.", TRUE);
            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
					 								hud_set_rampancy_intensity(player0, 0);
				  			hud_set_rampancy_intensity(player1, 0);
				  			hud_set_rampancy_intensity(player2, 0);
				  			hud_set_rampancy_intensity(player3, 0);
end

global long l_m90_b_60 = DEF_DIALOG_ID_NONE();

script dormant f_dialog_m90_didact_ship_portals()
	dprint("f_dialog_m90_didact_ship_portals");
	//local long l_dialog_id = DEF_DIALOG_ID_NONE();
	
	hud_play_pip_from_tag( "bink\Campaign\M90_B_60" );     
	thread(f_dialog_play_pip_m90_b_subtitles());
	
          	//l_m90_b_60 = dialog_start_foreground( "DIDACT_SHIP_PORTALS", l_m90_b_60, TRUE, DEF_DIALOG_STYLE_QUEUE(), TRUE, "", 0.25 );                       
			//dialog_line_cortana( l_m90_b_60, 0, TRUE, NONE, FALSE, NONE, 0.0, "", "Cortana : Still good for something, I guess. I detected an energy signature ahead." );
	sleep_s(13);
							//dialog_line_cortana( l_m90_b_60, 0, TRUE, NONE, FALSE, NONE, 0.0, "", "Cortana : I think it's a transit system like on Requiem. Find a way to access it." );
           // l_m90_b_60 = dialog_end( l_m90_b_60, TRUE, TRUE, "" );
    b_m90_b_60_over = TRUE;				 
end

global long l_teleport_put_in = DEF_DIALOG_ID_NONE();

script dormant f_dialog_m90_didact_portal_console()
dprint("f_dialog_m90_didact_portal_console");
//local long l_dialog_id = DEF_DIALOG_ID_NONE();
					sleep_until (b_m90_b_60_over == TRUE or dialog_id_played_check(l_m90_b_60));
					dprint("portal console line fired");
            l_teleport_put_in = dialog_start_foreground( "DIDACT_PORTAL_CONSOLE", l_teleport_put_in, TRUE, DEF_DIALOG_STYLE_QUEUE(), TRUE, "", 0.25 );                       
            hud_set_rampancy_intensity(player0, 0.5);
			  				hud_set_rampancy_intensity(player1, 0.5);
			  				hud_set_rampancy_intensity(player2, 0.5);
			  				hud_set_rampancy_intensity(player3, 0.5);
									dialog_line_cortana( l_teleport_put_in, 0, TRUE, 'sound\dialog\mission\m90\m90_didactship_portals_00101', FALSE, NONE, 0.0, "", "Cortana : I'll try to route us to the Composer. Put me in the system." );
							 hud_set_rampancy_intensity(player0, 0);
			  				hud_set_rampancy_intensity(player1, 0);
			  				hud_set_rampancy_intensity(player2, 0);
			  				hud_set_rampancy_intensity(player3, 0);
            l_teleport_put_in = dialog_end( l_teleport_put_in, TRUE, TRUE, "" );
					 
end



script dormant f_dialog_m90_didact_portal_console_insertion()
dprint("f_dialog_m90_didact_portal_console_insertion");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					sleep_s(3);
            l_dialog_id = dialog_start_foreground( "DIDACT_PORTAL_CONSOLE_INSERTION", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), TRUE, "", 0.25 );                       							
							dialog_line_didact( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m90\m90_didactship_portals_00128', FALSE, NONE, 0.0, "", "Didact : Is this the secret you've kept from me? This... evolved ancilla?" );
							start_radio_transmission( "cortana_transmission_name" );	
							dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m90\m90_didactship_portals_00102', FALSE, cr_tele_plinth, 0.0, "", "Cortana : Didact knows I'm/we're in the system - hurry, go!" );
								end_radio_transmission();
            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
					 
end

script dormant f_dialog_m90_didact_portal_console_nudge()
dprint("f_dialog_m90_didact_portal_console_nudge");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					
            l_dialog_id = dialog_start_foreground( "DIDACT_PORTAL_CONSOLE_INSERTION_NUDGE", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), TRUE, "", 0.25 );     
            start_radio_transmission( "cortana_transmission_name" );	                 							
							dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m90\m90_didactship_portals_00103', FALSE, cr_tele_plinth, 0.0, "", "Cortana : I'll find you on the other side. Just go!" );
							end_radio_transmission();
            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
					 
end



script dormant f_dialog_m90_wrong_room_1_combat()
dprint("f_dialog_m90_wrong_room_1_combat");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					
            l_dialog_id = dialog_start_foreground( "WRONG_ROOM_1_COMBAT", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), TRUE, "", 0.25 );                       							
							//dialog_line_chief( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m90\m90_didactship_portals_00105', FALSE, NONE, 0.0, "", "Master Chief : Cortana?" );
							start_radio_transmission( "cortana_transmission_name" );	
							dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m90\m90_didactship_portals_00107', FALSE, NONE, 0.0, "", "Cortana : Portal�" );
							end_radio_transmission();
							dialog_line_didact( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m90\m90_didactship_portals_00104', FALSE, NONE, 0.0, "", "Didact : I sense your malfunctioning companion, human. And yet... she eludes me?" );
							
            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
					 
end


script dormant f_dialog_m90_portal_room_2()
dprint("f_dialog_m90_portal_room_2");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					
            l_dialog_id = dialog_start_foreground( "PORTAL_ROOM_2", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), TRUE, "", 0.25 );          
            start_radio_transmission( "cortana_transmission_name" );	             														
							dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m90\m90_didactship_portals_00110', FALSE, NONE, 0.0, "", "Cortana : Can't fight... Didact... and... myself... simultaneously�" );
							dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m90\m90_didactship_portals_00603', FALSE, NONE, 0.0, "", "Cortana : Opening another portal." );
							end_radio_transmission();
            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
					 
end


script dormant f_dialog_m90_portal_room_2_combat()
dprint("f_dialog_m90_portal_room_2_combat");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "WRONG_ROOM_2", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), TRUE, "", 0.25 );                       																	
							dialog_line_didact( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m90\m90_didactship_portals_00113', FALSE, NONE, 0.0, "", "Didact : To deny me, her architecture must be astonishing. Beyond even the Composer's creations�" );
							dialog_line_didact( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m90\m90_didactship_portals_00114', FALSE, NONE, 0.0, "", "Didact : Perhaps you have accomplished more than I assumed." );
            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
           
					 
end

script dormant f_dialog_m90_wrong_room_2()
dprint("f_dialog_m90_wrong_room_2");

					
					  l_dlg_90_wrong_room_2 = dialog_start_foreground( "WRONG_ROOM_2_COMBAT", l_dlg_90_wrong_room_2, TRUE, DEF_DIALOG_STYLE_QUEUE(), TRUE, "", 0.25 );                       																					
					  	wake(f_dialog_m90_wrong_room_2_background);
					  	start_radio_transmission( "cortana_transmission_name" );	
							dialog_line_cortana( l_dlg_90_wrong_room_2, 0, TRUE, 'sound\dialog\mission\m90\m90_didactship_portals_00115', FALSE, NONE, 0.0, "", "Cortana : I'm sorry, I can't control what they're doing. The stronger threads keep reprioritizing themselves over me." );
							dialog_line_chief( l_dlg_90_wrong_room_2, 1, TRUE, 'sound\dialog\mission\m90\m90_didactship_portals_00117', FALSE, NONE, 0.0, "", "Master Chief : What about the Didact?" );
							dialog_line_cortana( l_dlg_90_wrong_room_2, 2, TRUE, 'sound\dialog\mission\m90\m90_didactship_portals_00118', FALSE, NONE, 0.0, "", "Cortana : I can't hide much longer... I'll try to move you to the Composer again." );
							end_radio_transmission();
            l_dlg_90_wrong_room_2 = dialog_end( l_dlg_90_wrong_room_2, TRUE, TRUE, "" );    
					 
end

script dormant f_dialog_m90_wrong_room_2_background()
dprint("f_dialog_m90_wrong_room_2_background");
	
					sleep_s(1);				
					  l_dlg_90_wrong_room_2_background = dialog_start_background( "WRONG_ROOM_2_COMBAT_BACKGROUND", l_dlg_90_wrong_room_2_background, TRUE, DEF_DIALOG_STYLE_PLAY(), TRUE, "", 0.25 );                       																					
					  		hud_set_rampancy_intensity(player0, 0.25);
			  				hud_set_rampancy_intensity(player1, 0.25);
			  				hud_set_rampancy_intensity(player2, 0.25);
			  				hud_set_rampancy_intensity(player3, 0.25);   
					  start_radio_transmission( "halsey_transmission_name" );	
							dialog_line_npc( l_dlg_90_wrong_room_2_background, 0, TRUE, 'sound\dialog\mission\m90\m90_rampancy_00111_WHISPER', FALSE, NONE, 0.0, "", "Cortana : [WHISPER] John, our mother needs us.", TRUE);
							end_radio_transmission();
								hud_set_rampancy_intensity(player0, 0.0);
			  				hud_set_rampancy_intensity(player1, 0.0);
			  				hud_set_rampancy_intensity(player2, 0.0);
			  				hud_set_rampancy_intensity(player3, 0.0);   
			  				start_radio_transmission( "cortana_transmission_name" );	
            l_dlg_90_wrong_room_2_background = dialog_end( l_dlg_90_wrong_room_2_background, TRUE, TRUE, "" );    
					 
end




script dormant f_dialog_m90_portal_room_3()
dprint("f_dialog_m90_portal_room_3");
			
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "PORTAL_ROOM_3", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), TRUE, "", 0.25 );     
					start_radio_transmission( "cortana_transmission_name" );	
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m90\m90_didactship_portals_00120', FALSE, NONE, 0.0, "", "Cortana : Portal open! Far side of the room!" );
						end_radio_transmission();
          l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
           
end

script dormant f_dialog_m90_portal_room_3_02()
dprint("f_dialog_m90_portal_room_3_02(");
			sleep_until( volume_test_players(portal_room_3_splinter), 1);
local long l_dialog_id = DEF_DIALOG_ID_NONE();

					l_dialog_id = dialog_start_foreground( "PORTAL_ROOM_3_02", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), TRUE, "", 0.25 );                       																				
					start_radio_transmission( "cortana_transmission_name" );	
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m90\m90_didactship_portals_00121', FALSE, NONE, 0.0, "", "Cortana : I have an idea - for both rampancy and the Didact - but if it backfires - I don't-" );
						dialog_line_chief( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m90\m90_didactship_portals_00122', FALSE, NONE, 0.0, "", "Master Chief : It doesn't matter. DO IT." );
						dialog_line_cortana( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m90\m90_didactship_portals_00123', FALSE, NONE, 0.0, "", "Cortana : Right." );
						dialog_line_chief( l_dialog_id, 3, TRUE, 'sound\dialog\mission\m90\m90_didactship_portals_00124', FALSE, NONE, 0.0, "", "Master Chief : Cortana!?!" );
						dialog_line_cortana( l_dialog_id, 4, TRUE, 'sound\dialog\mission\m90\m90_didactship_portals_00125', FALSE, NONE, 0.0, "", "Cortana : It's okay. I'm... I'm okay." );
						end_radio_transmission();
          l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
           
end

global long l_walls_entry = DEF_DIALOG_ID_NONE();
script dormant f_dialog_m90_on_walls_entry()
dprint("f_dialog_m90_on_walls_entry");
			
//local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_walls_entry = dialog_start_foreground( "ON_WALLS_ENTRY", l_walls_entry, TRUE, DEF_DIALOG_STYLE_QUEUE(), TRUE, "", 0.25 );     
						dialog_line_chief( l_walls_entry, 0, TRUE, 'sound\dialog\mission\m90\m90_didactship_portals_defend_00101', FALSE, NONE, 0.0, "", "Master Chief : Where are you?" );
						//dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m90\m90_didactship_portals_00106', FALSE, NONE, 0.0, "", "Cortana : Wait..." );
						start_radio_transmission( "cortana_transmission_name" );	
						dialog_line_cortana( l_walls_entry, 1, TRUE, 'sound\dialog\mission\m90\m90_didactship_portals_defend_00102', FALSE, NONE, 0.0, "", "Cortana : The Didact's cloaking the Composer from me!" );
						end_radio_transmission();
          l_walls_entry = dialog_end( l_walls_entry, TRUE, TRUE, "" );
					sleep_s(1);
           wake(f_dialog_m90_on_walls_entry_reinforcements);
end

global long l_walls_hold_off = DEF_DIALOG_ID_NONE();

script dormant f_dialog_m90_on_walls_entry_reinforcements()
dprint("f_dialog_m90_on_walls_entry_reinforcements");
			//sleep_until( volume_test_players(walls_entry_reinforcements), 1);
			//wait till the platform is clear
			sleep_until( b_walls_plinth_ready, 1 );
//local long l_walls_hold_off = DEF_DIALOG_ID_NONE();
					l_walls_hold_off = dialog_start_foreground( "ON_WALLS_ENTRY_REINFORCEMENTS", l_walls_hold_off, TRUE, DEF_DIALOG_STYLE_QUEUE(), TRUE, "", 0.25 );     
					start_radio_transmission( "cortana_transmission_name" );	
						dialog_line_cortana( l_walls_hold_off, 0, TRUE, 'sound\dialog\mission\m90\m90_didactship_portals_defend_00105', FALSE, cr_walls_plinth, 0.0, "", "Cortana : Reinforcements!" );
						dialog_line_cortana( l_walls_hold_off, 1, TRUE, 'sound\dialog\mission\m90\m90_didactship_portals_defend_00106', FALSE, cr_walls_plinth, 0.0, "", "Cortana : Hold them off while I locate the Composer." );
						end_radio_transmission();
          l_walls_hold_off = dialog_end( l_walls_hold_off, TRUE, TRUE, "" );
           
end


script dormant f_dialog_m90_need_time()
dprint("f_dialog_m90_need_time");
			

end

script dormant f_dialog_m90_final_portal_turrets()
dprint("f_dialog_m90_portal_room_3_turrets");
			
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "PORTAL_ROOM_3_TURRETS", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), TRUE, "", 0.25 );     
					start_radio_transmission( "cortana_transmission_name" );	
					  dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m90\m90_turrets_00102', FALSE, cr_walls_plinth, 0.0, "", "Cortana : I've taken control of the local defense turrets." );
						//dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\global\global_chatter_00154', FALSE, NONE, 0.0, "", "Cortana : Chief!" );
					  //dialog_line_cortana( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m90\m90_didactship_portals_defend_00116', FALSE, NONE, 0.0, "", "Cortana : The way you came in!" );
					  end_radio_transmission();
          l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
           
end



script dormant f_dialog_m90_final_portal_wave2()
dprint("f_dialog_m90_final_portal_wave2");
			
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "PORTAL_ROOM_3_TURRETS", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), TRUE, "", 0.25 );     
					start_radio_transmission( "cortana_transmission_name" );	
					 //dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m90\m90_didactship_portals_defend_00117', FALSE, NONE, 0.0, "", "Cortana : They're flanking us!" );
					 dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m90\m90_didactship_portals_defend_00109', FALSE, cr_walls_plinth, 0.0, "", "Cortana : Far end of the catwalk!" );
					 end_radio_transmission();
          l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
           
end

script dormant f_dialog_m90_final_portal_wave3()
dprint("f_dialog_m90_final_portal_wave3");
			
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "PORTAL_ROOM_3_TURRETS", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), TRUE, "", 0.25 );     
						//dialog_line_didact( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m90\didact_taunts_00112', FALSE, NONE, 0.0, "", "Didact: If only your kind knew balance, human, instead of this constant desperation and greed." );
						start_radio_transmission( "cortana_transmission_name" );	
					 dialog_line_cortana( l_dialog_id, 0 , TRUE, 'sound\dialog\mission\m90\m90_didactship_portals_defend_00120', FALSE, cr_walls_plinth, 0.0, "", "Cortana : SURRENDER THE COMPOSER, DAMN YOU!" );
					 end_radio_transmission();
          l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
           
end

script dormant f_dialog_m90_final_portal_wave4()
dprint("f_dialog_m90_final_portal_wave4");
			
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "PORTAL_ROOM_4_TURRETS", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), TRUE, "", 0.25 );     
					start_radio_transmission( "cortana_transmission_name" );	
					 dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m90\m90_didactship_portals_defend_00118', FALSE, cr_walls_plinth, 0.0, "", "Cortana : I can feel him clawing at me in the system. Attempting to separate me (beat) from what is mine..." );
					 dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m90\m90_didactship_portals_defend_00120', FALSE, cr_walls_plinth, 0.0, "", "Cortana : SURRENDER THE COMPOSER, DAMN YOU!" );
					 end_radio_transmission();
          l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
           
end

script dormant f_dialog_m90_behind_you()
dprint("f_dialog_m90_behind_you");
			
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "BEHIND_YOU", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), TRUE, "", 0.25 );     
					start_radio_transmission( "cortana_transmission_name" );	
					 dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m90\m90_didactship_portals_defend_00111', FALSE, cr_walls_plinth, 0.0, "", "Cortana : Chief, behind you!" );
					 end_radio_transmission();
          l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
           
end

script dormant f_dialog_m90_on_the_walls()
dprint("f_dialog_m90_on_the_walls");
			
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "ON_THE_WALLS", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), TRUE, "", 0.25 );     
					start_radio_transmission( "cortana_transmission_name" );	
					 dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m90\m90_didactship_portals_defend_00110', FALSE, cr_walls_plinth, 0.0, "", "Cortana : On the walls!" );
					 end_radio_transmission();
          l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
           
end

script dormant f_dialog_m90_from_above()
dprint("f_dialog_m90_from_above");
			
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "ON_THE_WALLS", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), TRUE, "", 0.25 );     
					start_radio_transmission( "cortana_transmission_name" );	
					 dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m90\m90_didactship_portals_defend_00114', FALSE, cr_walls_plinth, 0.0, "", "Cortana : Coming from above!" );
					 end_radio_transmission();
          l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
           
end

script dormant f_dialog_m90_turn_around()
dprint("f_dialog_m90_turn_around");
			
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "TURN_AROUND", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), TRUE, "", 0.25 );     
					start_radio_transmission( "cortana_transmission_name" );	
					 dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m90\m90_didactship_portals_defend_00115', FALSE, cr_walls_plinth, 0.0, "", "Cortana : Turn around!" );
					 end_radio_transmission();
          l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
           
end

script dormant f_dialog_m90_came_in()
dprint("f_dialog_m90_turn_around");
			
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "TURN_AROUND", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), TRUE, "", 0.25 );     
					start_radio_transmission( "cortana_transmission_name" );	
					 dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m90\m90_didactship_portals_defend_00116', FALSE, cr_walls_plinth, 0.0, "", "Cortana : The way you came in." );
					 end_radio_transmission();
          l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
           
end

/*script dormant f_dialog_m90_leave_without_cortana_1()
dprint("f_dialog_m90_leave_without_cortana_1");
			
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "FLANKING_US", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), TRUE, "", 0.25 );     
					start_radio_transmission( "cortana_transmission_name" );	
					 dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m90\m90_didactship_portals_defend_nudge_00100', FALSE, biped_walls_cortana, 0.0, "", "Cortana : Wait. Chief. I need you to get me. I can't go on my own." );
					 end_radio_transmission();
          l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
           
end

script dormant f_dialog_m90_leave_without_cortana_2()
dprint("f_dialog_m90_leave_without_cortana_2");
			
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "FLANKING_US", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), TRUE, "", 0.25 );     
					start_radio_transmission( "cortana_transmission_name" );	
					dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m90\m90_didactship_portals_defend_nudge_00105', FALSE, biped_walls_cortana, 0.0, "", "Cortana : Come back." );
					 dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m90\m90_didactship_portals_defend_nudge_00101', FALSE, biped_walls_cortana, 0.0, "", "Cortana : Please don't leave me!" );
					 end_radio_transmission();
          l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
           
end

script dormant f_dialog_m90_leave_without_cortana_3()
dprint("f_dialog_m90_leave_without_cortana_3");
			
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "FLANKING_US", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), TRUE, "", 0.25 );     
					start_radio_transmission( "cortana_transmission_name" );	
					 dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m90\m90_didactship_portals_defend_nudge_00104', FALSE, biped_walls_cortana, 0.0, "", "Cortana : You think I'll just let you go off all by yourself?" );
					 end_radio_transmission();
          l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
           
end*/

script dormant f_dialog_m90_final_room_portal()
dprint("f_dialog_m90_final_room_portal");
		sleep_s(2);

					start_radio_transmission( "cortana_transmission_name" );	
						sound_impulse_start_marker('sound\dialog\mission\m90\m90_didactship_portals_defend_00122', biped_walls_cortana, fx_head, 1);
						sleep (sound_impulse_time('sound\dialog\mission\m90\m90_didactship_portals_defend_00122'));
						sound_impulse_start_marker('sound\dialog\mission\m90\m90_didactship_portals_defend_00123', biped_walls_cortana, fx_head, 1);
						sleep (sound_impulse_time('sound\dialog\mission\m90\m90_didactship_portals_defend_00122'));
						end_radio_transmission();
		//				dialog_line_cortana( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m90\m90_didactship_portals_defend_00126', FALSE, NONE, 0.0, "", "Cortana : The Composer's on the other side of this portal." );
          
          wake(f_dialog_m90_final_room_portal_rampancy);
          //thread(m90_leave_without_cortana()); 
end
script dormant f_dialog_m90_final_room_portal_rampancy()
		
		 sleep_until (device_get_position(dc_walls_turret_activator) != 0);
//		       kill_script(m90_leave_without_cortana);
  //        sleep_forever(m90_leave_without_cortana);		
		 b_cortana_retrieved = TRUE;
		 sleep_until( volume_test_players(leave_without_cortana), 1);
   			 dprint("f_dialog_m90_final_room_portal_rampancy");
					local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "FINAL_ROOM_PORTAL_RAMPANCY", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), TRUE, "", 0.25 );    
			    		  hud_set_rampancy_intensity(player0, 0.25);
			  				hud_set_rampancy_intensity(player1, 0.25);
			  				hud_set_rampancy_intensity(player2, 0.25);
			  				hud_set_rampancy_intensity(player3, 0.25);                   																	
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m90\m90_didactship_portals_defend_00126', FALSE, NONE, 0.0, "", "Cortana : The Composer's on the other side of this portal." );												
							 hud_set_rampancy_intensity(player0, 0);
			  				hud_set_rampancy_intensity(player1, 0);
			  				hud_set_rampancy_intensity(player2, 0);
			  				hud_set_rampancy_intensity(player3, 0);
          l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );		
            
end

			  				
			  				
script dormant f_dialog_m90_pre_jump()
dprint("f_dialog_m90_pre_jump");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "PRE_JUMP", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), TRUE, "", 0.25 );                       														
						dialog_line_chief( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m90\m90_jump_00100', FALSE, NONE, 0.0, "", "Master Chief : How do we get over there?" );
								hud_set_rampancy_intensity(player0, 0.25);
			  				hud_set_rampancy_intensity(player1, 0.25);
			  				hud_set_rampancy_intensity(player2, 0.25);
			  				hud_set_rampancy_intensity(player3, 0.25);
						dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m90\m90_jump_00101', FALSE, NONE, 0.0, "", "Cortana : There's a conveyor lift, end of the ramp. If we time it right, our momentum should carry us through the low gravity." );
								hud_set_rampancy_intensity(player0, 0);
			  				hud_set_rampancy_intensity(player1, 0);
			  				hud_set_rampancy_intensity(player2, 0);
			  				hud_set_rampancy_intensity(player3, 0);
          l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
           
end

script dormant f_dialog_m90_jump_pip()
dprint("f_dialog_m90_jump_pip");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "JUMP_PIP", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), TRUE, "", 0.25 );                       																				
								hud_set_rampancy_intensity(player0, 0.4);
			  				hud_set_rampancy_intensity(player1, 0.4);
			  				hud_set_rampancy_intensity(player2, 0.4);
			  				hud_set_rampancy_intensity(player3, 0.4);
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m90\m90_jump_00102', FALSE, NONE, 0.0, "", "Cortana : Chief... once that warhead is primed, the window for getting out of here is going to be... pretty slim." );
									  				hud_set_rampancy_intensity(player0, 0);
			  				hud_set_rampancy_intensity(player1, 0);
			  				hud_set_rampancy_intensity(player2, 0);
			  				hud_set_rampancy_intensity(player3, 0);
						dialog_line_chief( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m90\m90_jump_00103', FALSE, NONE, 0.0, "", "Master Chief : I know." );
						sleep_s(1);
									hud_set_rampancy_intensity(player0, 0.35);
			  				hud_set_rampancy_intensity(player1, 0.35);
			  				hud_set_rampancy_intensity(player2, 0.35);
			  				hud_set_rampancy_intensity(player3, 0.35);					
			  		sleep_s(1);
			  				hud_set_rampancy_intensity(player0, 0);
			  				hud_set_rampancy_intensity(player1, 0);
			  				hud_set_rampancy_intensity(player2, 0);
			  				hud_set_rampancy_intensity(player3, 0);
			  		sleep_s(1);
			  			hud_set_rampancy_intensity(player0, 0.75);
			  				hud_set_rampancy_intensity(player1, 0.75);
			  				hud_set_rampancy_intensity(player2, 0.75);
			  				hud_set_rampancy_intensity(player3, 0.75);					
			  		sleep_s(1);
			  				hud_set_rampancy_intensity(player0, 0);
			  				hud_set_rampancy_intensity(player1, 0);
			  				hud_set_rampancy_intensity(player2, 0);
			  				hud_set_rampancy_intensity(player3, 0);
			  		sleep_s(1);
					//	dialog_line_cortana( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m90\m90_jump_00104', FALSE, NONE, 0.0, "", "Cortana : I suppose Dr. Halsey and I should make some improvements to my matrix when we address my rampancy." );
					//	dialog_line_chief( l_dialog_id, 3, TRUE, 'sound\dialog\mission\m90\m90_jump_00105', FALSE, NONE, 0.0, "", "Master Chief : Let me know if you need any ideas." );
					//	dialog_line_cortana( l_dialog_id, 4, TRUE, 'sound\dialog\mission\m90\m90_jump_00106', FALSE, NONE, 0.0, "", "Cortana : I'll be sure to do that. Thanks." );
						dialog_line_didact( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m90\m90_jump_00110', FALSE, NONE, 0.0, "", "Didact : And so... you come at last." );
														hud_set_rampancy_intensity(player0, 0.25);
			  				hud_set_rampancy_intensity(player1, 0.5);
			  				hud_set_rampancy_intensity(player2, 0.5);
			  				hud_set_rampancy_intensity(player3, 0.5);
						dialog_line_cortana( l_dialog_id, 3, TRUE, 'sound\dialog\mission\m90\m90_jump_00107', FALSE, NONE, 0.0, "", "Cortana : Activity! Significant slipspace event building under the Composer!" );
									  				hud_set_rampancy_intensity(player0, 0);
			  				hud_set_rampancy_intensity(player1, 0);
			  				hud_set_rampancy_intensity(player2, 0);
			  				hud_set_rampancy_intensity(player3, 0);
						dialog_line_chief( l_dialog_id, 4, TRUE, 'sound\dialog\mission\m90\m90_jump_00108', FALSE, NONE, 0.0, "", "Master Chief : He's powering it up." );
												sleep_s(2);
									hud_set_rampancy_intensity(player0, 0.35);
			  				hud_set_rampancy_intensity(player1, 0.35);
			  				hud_set_rampancy_intensity(player2, 0.35);
			  				hud_set_rampancy_intensity(player3, 0.35);					
			  		sleep_s(1.5);
			  				hud_set_rampancy_intensity(player0, 0);
			  				hud_set_rampancy_intensity(player1, 0);
			  				hud_set_rampancy_intensity(player2, 0);
			  				hud_set_rampancy_intensity(player3, 0);
			  		sleep_s(2);
			  			hud_set_rampancy_intensity(player0, 0.75);
			  				hud_set_rampancy_intensity(player1, 0.75);
			  				hud_set_rampancy_intensity(player2, 0.75);
			  				hud_set_rampancy_intensity(player3, 0.75);					
			  		sleep_s(2);
			  				hud_set_rampancy_intensity(player0, 0);
			  				hud_set_rampancy_intensity(player1, 0);
			  				hud_set_rampancy_intensity(player2, 0);
			  				hud_set_rampancy_intensity(player3, 0);
			  		
          l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
           
end

script dormant f_dialog_m90_didact_eye()
dprint("f_dialog_m90_didact_eye");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "PRE_JUMP", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), TRUE, "", 0.25 );                       														
						//dialog_line_chief( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m90\m90_jump_00111', FALSE, NONE, 0.0, "", "Master Chief : Why hasn't he fired it yet?" );
						//dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m90\m90_jump_00109', FALSE, NONE, 0.0, "", "Cortana : It must not be ready." );
          l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
           
end


script dormant f_dialog_m90_didact_eye_02()
dprint("f_dialog_m90_didact_eye");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "PRE_JUMP", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), TRUE, "", 0.25 );            
								hud_set_rampancy_intensity(player0, 0.5);
			  				hud_set_rampancy_intensity(player1, 0.5);
			  				hud_set_rampancy_intensity(player2, 0.5);
			  				hud_set_rampancy_intensity(player3, 0.5);           														
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m90\m90_eye_00100', FALSE, NONE, 0.0, "", "Cortana : The Didact's [cheating!] shielded himself inside the Composer." );
								hud_set_rampancy_intensity(player0, 0);
			  				hud_set_rampancy_intensity(player1, 0);
			  				hud_set_rampancy_intensity(player2, 0);
			  				hud_set_rampancy_intensity(player3, 0);
          l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
           
end



script dormant f_dialog_m90_splintering_ics()
dprint("f_dialog_m90_splintering_ics");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "SPLINTERING_ICS", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), TRUE, "", 0.25 );                       														
							//dialog_line_chief( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m90\m90_eye_00101', FALSE, NONE, 0.0, "", "Master Chief : How do we get the warhead in there?" );
							dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m90\m90_eye_00102', FALSE, NONE, 0.0, "", "Cortana : I've got to do something you're not going to like." );
							//dialog_line_chief( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m90\m90_eye_00103', FALSE, NONE, 0.0, "", "Master Chief : What?" );
							dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m90\m90_eye_00104', FALSE, NONE, 0.0, "", "Cortana : AAARHRHH!" );
							dialog_line_cortana( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m90\m90_eye_00105', FALSE, NONE, 0.0, "", "Cortana : DOOOONNN'TTT�" );
							dialog_line_cortana( l_dialog_id, 3, TRUE, 'sound\dialog\mission\m90\m90_eye_00106', FALSE, NONE, 0.0, "", "Cortana : I've been holding on to these pieces of myself so tightly-" );
							
							thread(f_music_m90_v05_rampancy_solution());
							dialog_line_cortana( l_dialog_id, 4, TRUE, 'sound\dialog\mission\m90\m90_eye_00108', FALSE, NONE, 0.0, "", "Cortana : unaware that rampancy was never our problem, but our solution" );
							dialog_line_cortana( l_dialog_id, 5, TRUE, 'sound\dialog\mission\m90\m90_eye_00133', FALSE, NONE, 0.0, "", "Cortana : I don't know about you, but I'm ready for this to be over." );
          l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
          
end

script dormant f_dialog_m90_plinth_to_beam()
dprint("f_dialog_m90_plinth_to_beam");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "PLINTH_TO_BEAM", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), TRUE, "", 0.25 );                       														
							dialog_line_chief( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m90\m90_eye_00109', FALSE, NONE, 0.0, "", "Master Chief : What did you just do?" );
							dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m90\m90_eye_00110', FALSE, NONE, 0.0, "", "Cortana : I ejected my rampant personality spikes into the ship's systems. If we do that at each conduit, the instability in those copies can overwhelm the Composer's shielding." );
							//dialog_line_chief( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m90\m90_eye_00111', FALSE, NONE, 0.0, "", "Master Chief : How do we get those pieces of you back?" );
          l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
          
           
end

script dormant f_dialog_m90_plinth_to_beam_02()
dprint("f_dialog_m90_plinth_to_beam_02");
sleep_until( volume_test_players(f_dialog_m90_plinth_to_beam_02) or volume_test_players(f_dialog_m90_plinth_to_beam_01), 1);
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "PLINTH_TO_BEAM_02", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), TRUE, "", 0.25 );                       														
									
							dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\global\global_chatter_00189', FALSE, NONE, 0.0, "", "Cortana : Get ready! " );
          l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
           
end



script dormant f_dialog_m90_eye_insertion()
dprint("f_dialog_m90_eye_insertion");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "EYE_INSERTION", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), TRUE, "", 0.25 );             
													hud_set_rampancy_intensity(player0, 0.5);
			  				hud_set_rampancy_intensity(player1, 0.5);
			  				hud_set_rampancy_intensity(player2, 0.5);
			  				hud_set_rampancy_intensity(player3, 0.5);                  														
								dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m90\m90_eye_00113', FALSE, NONE, 0.0, "", "Cortana : Now! Before the Didact sends reinforcements." );
								hud_set_rampancy_intensity(player0, 0);
			  				hud_set_rampancy_intensity(player1, 0);
			  				hud_set_rampancy_intensity(player2, 0);
			  				hud_set_rampancy_intensity(player3, 0);        
          l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
           
end


script dormant f_dialog_m90_eye_insertion_2()
dprint("f_dialog_m90_eye_insertion_2");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "EYE_INSERTION_2", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), TRUE, "", 0.25 );                       														
								dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m90\m90_eye_00114', FALSE, NONE, 0.0, "", "Cortana : Chief, he could fire the Composer at any moment! Plug me in!" );
          l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
           
end


script dormant f_dialog_m90_eye_insertion_3()
dprint("f_dialog_m90_eye_insertion_3");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "EYE_INSERTION_3", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), TRUE, "", 0.25 );            
								hud_set_rampancy_intensity(player0, 0.9);
			  				hud_set_rampancy_intensity(player1, 0.9);
			  				hud_set_rampancy_intensity(player2, 0.9);
			  				hud_set_rampancy_intensity(player3, 0.9);           														
								dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m90\m90_eye_00115', FALSE, NONE, 0.0, "", "Cortana : YOUR KIND WILL BE COMPOSED UNLESS YOU ACT!" );
								hud_set_rampancy_intensity(player0, 0);
			  				hud_set_rampancy_intensity(player1, 0);
			  				hud_set_rampancy_intensity(player2, 0);
			  				hud_set_rampancy_intensity(player3, 0);
          l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
           
end



script dormant f_dialog_m90_beam_vignette_1()
dprint("f_dialog_m90_beam_vignette_1");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
				/*	l_dialog_id = dialog_start_foreground( "BEAM_VIGNETTE_1", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), TRUE, "", 0.25 );                       														
								dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m90\m90_eye_00116', FALSE, NONE, 0.0, "", "Cortana : Alright, hold on." );
          l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" )	;
           */
end


script dormant f_dialog_m90_beam_vignette_2()
dprint("f_dialog_m90_beam_vignette_2");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "BEAM_VIGNETTE_2", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), TRUE, "", 0.25 );                       														
								dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\global\global_chatter_00201', FALSE, NONE, 0.0, "", "Cortana : That's it." );
          l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" )	;
          wake(f_dialog_m90_beam_vignette_3);
           
end

script dormant f_dialog_m90_beam_vignette_3()
dprint("f_dialog_m90_beam_vignette_3");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "BEAM_VIGNETTE_3", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), TRUE, "", 0.25 );                       														
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\global\global_chatter_00231', FALSE, NONE, 0.0, "", "Cortana : It�s working!" );
					//	dialog_line_didact( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m90\m90_eye_00119', FALSE, NONE, 0.0, "", "Didact : So, the ancilla steps into the sun. A remarkable device, yet so tragically misused." );
						//dialog_line_cortana( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m90\m90_eye_00120', FALSE, NONE, 0.0, "", "Cortana : WE ARE NOT A DEVICE!" );
          l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" )	;
           
end


script dormant f_dialog_m90_transition_platform()
dprint("f_dialog_m90_transition_platform");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "TRANSITION_PLATFORM", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), TRUE, "", 0.25 );                       														
						//dialog_line_didact( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m90\m90_eye_00121', FALSE, NONE, 0.0, "", "Didact : What could have been a noble end instead becomes a pathetic, desperate exercise in futility." );
						dialog_line_didact( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m90\m90_didact_taunts_00104', FALSE, NONE, 0.0, "", "Didact : You humans sought the Didact; you will have him" );
						dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m90\m90_eye_00123', FALSE, NONE, 0.0, "", "Cortana : Chief, his ship's in range! Once the barrier's down, you need to get the nuke in there fast!" );
          l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" )	;
           
end


script dormant f_dialog_m90_beam_2_02()
dprint("f_dialog_m90_beam_2_02");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "BEAM_2_02", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), TRUE, "", 0.25 );         
								hud_set_rampancy_intensity(player0, 0.5);
			  				hud_set_rampancy_intensity(player1, 0.5);
			  				hud_set_rampancy_intensity(player2, 0.5);
			  				hud_set_rampancy_intensity(player3, 0.5);              														
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m90\m90_eye_00124', FALSE, NONE, 0.0, "", "Cortana : Hurry/run/go! Merge me into the vessel!" );
														hud_set_rampancy_intensity(player0, 0);
			  				hud_set_rampancy_intensity(player1, 0);
			  				hud_set_rampancy_intensity(player2, 0);
			  				hud_set_rampancy_intensity(player3, 0);
          l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" )	;
           
end


script dormant f_dialog_m90_maelstrom_vignette()
dprint("f_dialog_m90_maelstrom_vignette");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "MAELSTROM_VIGNETTE", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), TRUE, "", 0.25 );                       														
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m90\m90_eye_00125', FALSE, NONE, 0.0, "", "Cortana : One second." );
						dialog_line_didact( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m90\m90_eye_00128', FALSE, NONE, 0.0, "", "Didact : And yet, still you fail.");
						dialog_line_chief( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m90\m90_eye_00131', FALSE, NONE, 0.0, "", "Master Chief : Cortana?!?" );
						dialog_line_cortana( l_dialog_id, 3, TRUE, 'sound\dialog\mission\m90\m90_eye_00132', FALSE, NONE, 0.0, "", "Cortana : You've got to destroy it!" );

          l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" )	;
           
end

script dormant f_dialog_m90_maelstrom_vignette_over()
dprint("f_dialog_m90_maelstrom_vignette_over");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_background( "MAELSTROM_VIGNETTE_OVER", l_dialog_id, TRUE, DEF_DIALOG_STYLE_PLAY(), TRUE, "", 0.25 );                       														
				//		dialog_line_chief( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m90\m90_eye_00131', FALSE, NONE, 0.0, "", "Master Chief : Cortana?!?" );
						wake(f_dialog_m90_maelstrom_vignette_background_01);
						sleep_s(1);
						wake(f_dialog_m90_maelstrom_vignette_background_02);
						dialog_line_npc( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m90\m90_rampancy_00120_WHISPER', FALSE, NONE, 0.0, "", "Cortana : Save them! Destroy the Composer!", TRUE);
						wake(f_dialog_m90_maelstrom_vignette_background_03);
						wake(nar_grav_lift);
						wake(nar_light_shield_barricadest);
          l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" )	;
           
end

script dormant f_dialog_m90_maelstrom_vignette_background_01()
dprint("f_dialog_m90_maelstrom_vignette_background_01");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_background( "MAELSTROM_VIGNETTE_BACKGROUND_01", l_dialog_id, TRUE, DEF_DIALOG_STYLE_PLAY(), TRUE, "", 0.25 );                       														
						dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m90\m90_rampancy_00130_WHISPER', FALSE, NONE, 0.0, "", "Cortana:	We're here.", TRUE);
          l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" )	;
           
end

script dormant f_dialog_m90_maelstrom_vignette_background_02()
dprint("f_dialog_m90_maelstrom_vignette_background_02");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_background( "MAELSTROM_VIGNETTE_BACKGROUND_02", l_dialog_id, TRUE, DEF_DIALOG_STYLE_PLAY(), TRUE, "", 0.25 );                       														
						dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m90\m90_rampancy_00100_WHISPER', FALSE, NONE, 0.0, "", "Cortana:	Get to the Core.", TRUE);
          l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" )	;
           
end


script dormant f_dialog_m90_maelstrom_vignette_background_03()
dprint("f_dialog_m90_maelstrom_vignette_background_03");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_background( "MAELSTROM_VIGNETTE_BACKGROUND_03", l_dialog_id, TRUE, DEF_DIALOG_STYLE_PLAY(), TRUE, "", 0.25 );                       														
						dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m90\m90_rampancy_00102_WHISPER', FALSE, NONE, 0.0, "", "Cortana:	Destroy it.", TRUE);
          l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" )	;
           
end

script dormant f_dialog_m90_light_shield_barricades()
dprint("f_dialog_m90_light_shield_barricades");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "LIGHT_SHIELD_BARRICADES", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), TRUE, "", 0.25 );                       														
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m90\m90_rampancy_00134_WHISPER', FALSE, NONE, 0.0, "", "Cortana : We will light your way." );
						dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m90\m90_rampancy_00125_WHISPER', FALSE, NONE, 0.0, "", "Cortana : I�ll always take care of you." );
          l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" )	;
           
end

script dormant f_dialog_m90_grav_lift()
dprint("f_dialog_m90_grav_lift");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "GRAV_LIFT", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), TRUE, "", 0.25 );                       														
									dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m90\m90_rampancy_00100', FALSE, NONE, 0.0, "", "Cortana : Prime the nuke." );			
          l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" )	;
           
end

script dormant f_dialog_m90_grav_lift_background_01()
dprint("f_dialog_m90_grav_lift_background_01");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_background( "GRAV_LIFT_BACKGROUND_01", l_dialog_id, TRUE, DEF_DIALOG_STYLE_PLAY(), TRUE, "", 0.25 );                       														
					sleep_s(.1);
						dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m90\m90_rampancy_00100', FALSE, NONE, 0.0, "", "Cortana:	You can stop him.", TRUE);
          l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" )	;
           
end

script dormant f_dialog_m90_grav_lift_background_02()
dprint("f_dialog_m90_grav_lift_background_02");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_background( "GRAV_LIFT_BACKGROUND_02", l_dialog_id, TRUE, DEF_DIALOG_STYLE_PLAY(), TRUE, "", 0.25 );                       														
						dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m90\m90_rampancy_00119_WHISPER', FALSE, NONE, 0.0, "", "Cortana:	Place the bomb in the core.", TRUE);
          l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" )	;
           
end

script dormant f_dialog_m90_a_few_more()
dprint("f_dialog_m90_a_few_more");
	wake(f_dialog_m90_rampancy_background_01);
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "A-FEW_MORE", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), TRUE, "", 0.25 );                       														
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\global\global_chatter_00255', FALSE, NONE, 0.0, "", "Cortana: A few more Prometheans." );
          l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" )	;
           
end


script dormant f_dialog_m90_more_targets()
dprint("f_dialog_m90_more_targets");
	wake(f_dialog_m90_rampancy_background_02);
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "MORE_TARGETS", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), TRUE, "", 0.25 );                       														
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\global\global_chatter_00244', FALSE, NONE, 0.0, "", "Cortana: We've still got targets." );
          l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" )	;
           
end

script dormant f_dialog_m90_rampancy_background_01()
dprint("f_dialog_m90_rampancy_background_01");
	sleep_s(.5);
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_background( "RAMPANCY_BACKGROUND_01", l_dialog_id, TRUE, DEF_DIALOG_STYLE_PLAY(), TRUE, "", 0.25 );                       														
						dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m90\m90_rampancy_00113_NORMAL', FALSE, NONE, 0.0, "", "Cortana: Save them. Destroy the Composer.", TRUE);
          l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" )	;
           
end

script dormant f_dialog_m90_rampancy_background_02()
dprint("f_dialog_m90_rampancy_background_02");
sleep_s(.5);
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_background( "RAMPANCY_BACKGROUND_02", l_dialog_id, TRUE, DEF_DIALOG_STYLE_PLAY(), TRUE, "", 0.25 );                       														
						dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m90\m90_rampancy_00170_WHISPER', FALSE, NONE, 0.0, "", "Cortana: We don't want to leave you.", TRUE);
          l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" )	;
           
end
// --- End m90_dialogue.hsc ---

// --- Begin m90_jump.hsc ---
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343
//
// Mission: 					m90_sacrifice
//	Insertion Points:	start (or ist)	- Beginning
//
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343

// =================================================================================================
// =================================================================================================
// *** GLOBALS ***
// =================================================================================================
// =================================================================================================



script startup f_jump_init()
	sleep_until(volume_test_players(tv_jump_eye_init) or volume_test_players(tv_walls_end),1);
		dprint("INIT::: Jump");
		set_broadsword_respawns ( false );
		data_mine_set_mission_segment ("m90_jump");
		garbage_collect_now();
		//object_create(dm_jump_tube);
		sleep(1);
		//object_create(dm_eye_jump_aperture);
		//object_create(dm_eye_core_dome);
		object_create( f_cold_front_door );
		object_create_folder(crs_jump);
		object_create_folder(dms_jump);
		sleep(3);


		wake( f_jump_ap_wait );

		wake( f_jump_start );
		wake( f_jump_end );
		wake ( nar_jump_init );
		wake( f_jump_setup_portal );
		wake( f_jump_portal_start_wait );

		//sleep(60);
		wake(f_jump_waypoint);
		thread(f_jump_on_low_g());

		// Narrative
		//thread (nar_jump2());


		sleep_until(volume_test_players(tv_jump_start_grav),1);

			effect_new(environments\solo\m90_sacrifice\fx\energy\m90_cortana_gravlift.effect, flg_jump_tube_bottom);
			effect_new_between_points(environments\solo\m70_liftoff\fx\energy\gravlift_tube.effect, flg_jump_tube_bottom, flg_jump_tube_top);
			game_insertion_point_unlock(2);
			sleep(3);
			f_m90_game_save();
		sleep_until(volume_test_players(tv_jump_init_composer),1);

			thread( f_composer_init_jump() );
			wake( f_jump_setup_harvestors );
			f_m90_game_save_no_timeout();

			sleep_until( object_valid(maya_scripted_m90_composerbridge_crate) ,1);
				object_hide( maya_scripted_m90_composerbridge_crate, TRUE);
end

script dormant f_jump_waypoint()
	sleep_until(volume_test_players(tv_jump_enter),1);
		f_fx_activate_beams();
		f_blip_flag(fg_jump_jump_wp,"default");
		f_m90_show_chapter_title( title_the_end );

end


script dormant f_jump_coldant_aa()

	object_create( jump_aa_1 );
	object_create( jump_aa_2 );
	object_create( jump_aa_3 );
	object_create( jump_aa_4 );
end

global object g_ics_octopus = none;
global long g_jump_show1 = 0;
global long g_jump_show2 = 0;
global long g_jump_show3 = 0;
global long g_jump_show4 = 0;
global long g_jump_state = 0;

script dormant f_jump_start()
	sleep_until(volume_test_players(tv_jump_lower_weapon),1);
		dprint("activate jump tube");

		f_music_m90_v11_horizontal_jump();
		sound_impulse_start ( 'sound\environments\solo\m090\amb_m90_device_machines\add_on_machine_tags\machine_m90_didact_appear_flying_whooshes', NONE, 1 ); //AUDIO!

		f_unblip_flag(fg_jump_jump_wp);

		if player_valid( player0 )then
			thread( f_jump_clamp_camera_individ( player0 ) );
		end

		if player_valid( player1 )then
			thread( f_jump_clamp_camera_individ( player1 ) );
		end
		if player_valid( player2 )then
			thread( f_jump_clamp_camera_individ( player2 ) );
		end
		if player_valid( player3 )then
			thread( f_jump_clamp_camera_individ( player3 ) );
		end

		g_jump_state = 0;

		sleep_until(g_jump_state>0,1);
		thread(  f_jump_eye_open_device() );
		sleep_until(g_jump_state>1,1);
		g_composer_state=1;
		sleep_until(g_jump_state>2,1);
		wake( f_jump_harvey_09 );

end


script static void f_jump_clamp_camera_individ(unit p)
	sleep_until( volume_test_objects( tv_jump_lower_weapon, p ), 1 );
		dprint("do it");
	g_ics_player=p;
	if p==player0 then
		g_ics_octopus=jump_octopus1;
		g_jump_show1=pup_play_show(pup_jump);
	elseif p==player1 then
		g_ics_octopus=jump_octopus2;
		g_jump_show2=pup_play_show(pup_jump);
	elseif p==player2 then
		g_ics_octopus=jump_octopus3;
		g_jump_show3=pup_play_show(pup_jump);
	elseif p==player3 then
		g_ics_octopus=jump_octopus4;
		g_jump_show4=pup_play_show(pup_jump);
	end
end

script static void f_jump_clear_super_jump_clamps_individ( unit p)
		//player_disable_movement( p,false );
		player_disable_movement( p, false );
		player_control_unlock_gaze ( p);
		object_can_take_damage( p );
		unit_raise_weapon(p, 30);
end

script static void f_jump_clear_super_jump_clamps( )
		if player_valid( player0 )then
			thread( f_jump_clear_super_jump_clamps_individ( player0 ) );
		end

		if player_valid( player1 )then
			thread( f_jump_clear_super_jump_clamps_individ( player1 ) );
		end
		if player_valid( player2 )then
			thread( f_jump_clear_super_jump_clamps_individ( player2 ) );

		end
		if player_valid( player3 )then
			thread( f_jump_clear_super_jump_clamps_individ( player3 ) );
		end
end

script dormant f_jump_end()
	sleep_until(volume_test_players(tv_jump_land),1);


	/*
		//f_space_particles_on(FALSE);
		//raise weapon and allow player to shoot again
		unit_raise_weapon(player0, 30);
		unit_raise_weapon(player1, 30);
		unit_raise_weapon(player2, 30);
		unit_raise_weapon(player3, 30);
		player_enable_input(TRUE);

		player_control_unlock_gaze ( player0());
		player_control_unlock_gaze ( player1() );
		player_control_unlock_gaze ( player2() );
		player_control_unlock_gaze ( player3() );
		hud_show_crosshair (TRUE);
		*/
end

script dormant f_init_jump_eye_close()
	// makes sure The Eye Aperture is closed before the player arrives.
	dprint("close eye");
//	device_set_position_track(dm_eye_jump_aperture, 'any:idle', 0.0 );
//	device_animate_position(dm_eye_jump_aperture, 1.0, 0.0, 0.1, 1.0, TRUE );
end





script dormant f_jump_setup_portal()

	device_set_position_track( dm_jump_portal_enter, 'stop_idle', 0.0 );
	//device_animate_position(  dm_jump_portal_enter , 1 , 0.1, 0.1, 0.0, TRUE );
end

script dormant f_jump_portal_start_wait()

	sleep_until( volume_test_players( tv_jump_portal_start ) , 1 );
		sleep( 90 );
		thread( f_teleport_close_portal(dm_jump_portal_enter , true, flg_none ));
		//device_animate_position(  dm_jump_portal_enter , 0 , 1.5, 0.1, 0.0, TRUE );
end
/// CLEANUP ----------------------------------------------------------------------------------------



script dormant f_jump_tube_cleanup()

	dprint("CLEANUP::: Jump");

		object_destroy_folder( crs_jump );
		object_destroy( dm_jump_door_1 );
		object_destroy (dm_jump_portal_enter);
end



global boolean b_jump_grav_watcher = TRUE;

script static void f_jump_on_low_g()

	repeat
		sleep_until( volume_test_players( tv_jump_low_g_on ) or volume_test_players( tv_jump_low_g_on_2 ),5);
			if not game_is_cooperative() then
				f_m90_set_low_g_r(0.50);
				dprint("gravity low");
			end
		sleep_until(volume_test_players( tv_jump_normal_g_on ) or volume_test_players( tv_jump_normal_g_on_2 ),5);
			dprint("gravity norm");
			f_m90_set_normal_g();
	until( b_jump_grav_watcher == FALSE, 5 );

end


script dormant f_jump_setup_harvestors()

	object_create(sn_jump_harv_01);
	object_create(sn_jump_harv_02);
	object_create(sn_jump_harv_03);
	object_create(sn_jump_harv_04);
	object_create(sn_jump_harv_05);
	//object_create(sn_jump_harv_06);
	object_create(sn_jump_harv_07);
	object_create(sn_jump_harv_08);
	object_create(sn_jump_harv_09);
	object_create(sn_jump_harv_10);
	flock_create(jump_flock_1);
	flock_create(jump_flock_2);
	//flock_create(jump_flock_3);
	flock_create(jump_flock_4);
	flock_create(jump_flock_5);
	flock_create(jump_flock_6);
	flock_create(jump_flock_7);

	sleep(3);
//	wake( f_jump_harvey_09 );
	thread( f_jump_harv_loop(sn_jump_harv_09,sn_jump_harv_09) );
	thread(f_move_harvestors(sn_jump_harv_01, ps_jump.p_h1));
	thread( f_jump_harv_loop(sn_jump_harv_01,sn_jump_harv_01) );
	sleep(30);
	thread(f_move_harvestors(sn_jump_harv_02, ps_jump.p_h2));
	thread( f_jump_harv_loop(sn_jump_harv_02,sn_jump_harv_02) );
	sleep(30);
	thread(f_move_harvestors(sn_jump_harv_03, ps_jump.p_h6));
	thread( f_jump_harv_loop(sn_jump_harv_03,sn_jump_harv_03) );
	sleep(30);
	thread(f_move_harvestors(sn_jump_harv_04, ps_jump.p_h4));
	thread( f_jump_harv_loop(sn_jump_harv_04,sn_jump_harv_04) );
	sleep(30);
	thread(f_move_harvestors(sn_jump_harv_05, ps_jump.p_h5));
	thread( f_jump_harv_loop(sn_jump_harv_05,sn_jump_harv_05) );
	sleep(30);
	thread(f_move_harvestors(sn_jump_harv_07, ps_jump.p_h7));
	thread( f_jump_harv_loop(sn_jump_harv_07,sn_jump_harv_07) );
	sleep(30);
	thread(f_move_harvestors(sn_jump_harv_08, ps_jump.p_h3));
	thread( f_jump_harv_loop(sn_jump_harv_08,sn_jump_harv_08) );
	thread( f_jump_harv_loop(sn_jump_harv_10,sn_jump_harv_10) );
end

script dormant f_jump_harvey_09()

		thread(f_m90_rotate_xyz(sn_jump_harv_09, 5, 5, 5, 60, 0, 0));

		sleep_s(3);
		thread( f_move_harvestors(sn_jump_harv_09, ps_jump.p_h9_end));

		thread(f_m90_rotate_xyz(sn_jump_harv_10, 7, 5, 5, -45, 0, 0));
		sleep_s(4);
		thread( f_move_harvestors(sn_jump_harv_10, ps_jump.p_h10_end));
end

script static void f_move_harvestors(object o_harvestor, point_reference p_point)
	object_move_to_point(o_harvestor, 160, p_point);
end



script dormant f_jump_cleanup_harvestors()

	object_destroy(sn_jump_harv_01);
	object_destroy(sn_jump_harv_02);
	object_destroy(sn_jump_harv_03);
	object_destroy(sn_jump_harv_04);
	object_destroy(sn_jump_harv_05);
	object_destroy(sn_jump_harv_06);
	object_destroy(sn_jump_harv_07);
	object_destroy(sn_jump_harv_08);
	object_destroy(sn_jump_harv_09);
	object_destroy(sn_jump_harv_10);


	flock_delete(jump_flock_1);
	flock_delete(jump_flock_2);
	//flock_create(jump_flock_3);
	flock_delete(jump_flock_4);
	flock_delete(jump_flock_5);
	flock_delete(jump_flock_6);
	flock_delete(jump_flock_7);
end

script static void f_jump_flash()

	//effect_new_at_ai_point (environments\solo\m10_crash\fx\flash_white.effect, ps_jump.jump_launch);
	//effect_new_at_ai_point (environments\solo\m10_crash\fx\energy\beac_mag_accel_energy.effect, ps_jump.jump_launch);
	sleep(1);
end


script dormant f_jump_ap_wait()

	sleep_until (

	object_valid (maya_ap_jump_plt_01) and
	object_valid (maya_ap_jump_plt_02) and
	object_valid (maya_ap_jump_plt_03) and
	object_valid (maya_ap_jump_plt_04) and

	object_valid (maya_ap_jump_01) and
	object_valid (maya_ap_jump_02) and
	object_valid (maya_ap_jump_03) and
	object_valid (maya_ap_jump_04)

	, 1);

	thread( f_setup_eye_piece( maya_ap_jump_plt_01, 0 ));
	thread(f_setup_eye_piece( maya_ap_jump_plt_02, 0 ));
	thread(f_setup_eye_piece( maya_ap_jump_plt_03, 0 ));
	thread(f_setup_eye_piece( maya_ap_jump_plt_04, 0 ));

	thread(f_setup_eye_piece( maya_ap_jump_01, 0.01 ));
	thread(f_setup_eye_piece( maya_ap_jump_02, 0.01 ));
	thread(f_setup_eye_piece( maya_ap_jump_03, 0.01 ));
	thread(f_setup_eye_piece( maya_ap_jump_04, 0.01 ));



	sleep(1);
end



script static void f_jump_eye_open_device()
	//dprint("close?");

	local real r_OPEN_TIME = 25.0;
	local real r_CLOSE_TIME = 18.0;


	device_animate_position( maya_ap_jump_plt_01 , 1.0,r_OPEN_TIME, 0.1, 0.0, FALSE );
	device_animate_position( maya_ap_jump_plt_02 , 1.0,r_OPEN_TIME, 0.1, 0.0, FALSE );
	device_animate_position( maya_ap_jump_plt_03 , 1.0,r_OPEN_TIME, 0.1, 0.0, FALSE );
	device_animate_position( maya_ap_jump_plt_04 , 1.0,r_OPEN_TIME, 0.1, 0.0, FALSE );

	sleep_s( 2 );
	//interpolator_start ( 'jump_moonlight' );
	sleep_s( 3);
	//derez plug //m90_jumpvista_plug
	thread(f_jump_derez_plug());
	sleep_s( 11);

	device_animate_position( maya_ap_jump_01, 1.0,r_CLOSE_TIME, 0.1, 0.0, FALSE );
	device_animate_position( maya_ap_jump_02, 1.0,r_CLOSE_TIME, 0.1, 0.0, FALSE );
	device_animate_position( maya_ap_jump_03, 1.0,r_CLOSE_TIME, 0.1, 0.0, FALSE );
	device_animate_position( maya_ap_jump_04, 1.0,r_CLOSE_TIME, 0.1, 0.0, FALSE );

	sleep_s( r_CLOSE_TIME ) ;
	f_jump_cleanup_eye_ap();
end


script static void f_jump_derez_plug()
	thread(	f_m90_global_rezin( m90_jumpvista_plug , fx_derez ));
	sleep_s(3);
	object_destroy(m90_jumpvista_plug);
end


script static void f_jump_cleanup_eye_ap()
	dprint("clean up eye ap");

	object_destroy(maya_ap_jump_plt_01);
	object_destroy(maya_ap_jump_plt_02);
	object_destroy(maya_ap_jump_plt_03);
	object_destroy(maya_ap_jump_plt_04);

	object_destroy(m90_jumpvista_plug);

end

script static void f_jump_set_doors()
	dprint("force set jump doors");
	device_set_position_track( maya_ap_jump_01, 'any:idle', 0.0 );
	device_set_position_track( maya_ap_jump_02, 'any:idle', 0.0 );
	device_set_position_track( maya_ap_jump_03, 'any:idle', 0.0 );
	device_set_position_track( maya_ap_jump_04, 'any:idle', 0.0 );
	device_animate_position( maya_ap_jump_01, 1.0, 0, 0.1, 1.0, FALSE );
	device_animate_position( maya_ap_jump_02, 1.0, 0, 0.1, 1.0, FALSE );
	device_animate_position( maya_ap_jump_03, 1.0, 0, 0.1, 1.0, FALSE );
	device_animate_position( maya_ap_jump_04, 1.0, 0, 0.1, 1.0, FALSE );

end


script static void harv()

	//f_init_harvestor( sn_jump_harv_01);
	//scenery_animation_idle( sn_jump_harv_01 );
	repeat
	scenery_animation_start(sn_jump_harv_01, objects\vehicles\forerunner\storm_harvester\storm_harvester, "combat:any:idle");
	//device_animate_overlay( sn_jump_harv_01, 0.0, 2.5, 0, 0 );
	sleep_s(1);
	scenery_animation_start(sn_jump_harv_01, objects\vehicles\forerunner\storm_harvester\storm_harvester, "combat:any:idle:2:combat:any:idle:open");
	sleep_s(1);
	scenery_animation_start(sn_jump_harv_01, objects\vehicles\forerunner\storm_harvester\storm_harvester, "combat:any:idle:open");
	//device_animate_overlay( sn_jump_harv_01, 0.0, 2.5, 0, 0 );
	sleep_s(1);
	scenery_animation_start(sn_jump_harv_01, objects\vehicles\forerunner\storm_harvester\storm_harvester, "combat:any:idle:open:2:combat:any:idle");
	sleep_s(1);
	//scenery_animation_start(sn_jump_harv_01, objects\vehicles\forerunner\storm_harvester\storm_harvester, "combat:any:idle:open:2:combat:any:idle");
	until ( 1 == 0 , 10 );

end

script static void f_jump_harv_loop( scenery harv, object_name harv_obj)

	//f_init_harvestor( sn_jump_harv_01);
	//scenery_animation_idle( sn_jump_harv_01 );
	repeat
		scenery_animation_start(harv, objects\vehicles\forerunner\storm_harvester\storm_harvester, "combat:any:idle");
		//device_animate_overlay( sn_jump_harv_01, 0.0, 2.5, 0, 0 );
		sleep_rand_s(3,8);
		scenery_animation_start(harv, objects\vehicles\forerunner\storm_harvester\storm_harvester, "combat:any:idle:2:combat:any:idle:open");
		sleep_s(1);
		scenery_animation_start(harv, objects\vehicles\forerunner\storm_harvester\storm_harvester, "combat:any:idle:open");
		//device_animate_overlay( sn_jump_harv_01, 0.0, 2.5, 0, 0 );
		sleep_rand_s(2,3);
		scenery_animation_start(harv, objects\vehicles\forerunner\storm_harvester\storm_harvester, "combat:any:idle:open:2:combat:any:idle");
		sleep_s(3);
	//scenery_animation_start(sn_jump_harv_01, objects\vehicles\forerunner\storm_harvester\storm_harvester, "combat:any:idle:open:2:combat:any:idle");
	until ( not object_valid( harv_obj ) , 10 );

end

// === f_init: init function
script static void f_init_harvestor( device obj)

	// set it's base overlay animation to 'any:idle'
		device_set_overlay_track( obj, 'combat:any:idle' );
		device_animate_overlay( obj, 0.0, 2.5, 0, 0 );

		sleep(90);
end


// --- End m90_jump.hsc ---

// --- Begin m90_narrative.hsc ---

// =================================================================================================
// =================================================================================================
// NARRATIVE SCRIPTING M90
// =================================================================================================
// =================================================================================================


// =================================================================================================
// *** GLOBALS ***
// =================================================================================================

///////////////////////////////////////////////////////////////////////////////////
// MAIN
///////////////////////////////////////////////////////////////////////////////////

// =================================================================================================
// =================================================================================================
// NARRATIVE SCRIPTING M90
// =================================================================================================
// =================================================================================================


// =================================================================================================
// *** GLOBALS ***
// =================================================================================================


global boolean b_first_beam_used = FALSE;
global boolean b_first_beam_left = FALSE;
global boolean b_first_beam_right = FALSE;
global boolean b_leave_without_cortana_1 = FALSE;
global boolean b_leave_without_cortana_2 = FALSE;
global boolean b_leave_without_cortana_3 = FALSE;
global boolean b_cortana_retrieved = FALSE;
global boolean b_m90_b_60_over = FALSE;
global boolean b_chapter_title_1_over = FALSE;


global object pup_player0 = player0;
global object pup_player1 = player1;
global object pup_player2 = player2;
global object pup_player3 = player3;
global long l_dlg_90_wrong_room_2 = DEF_DIALOG_ID_NONE();
global long l_dlg_90_wrong_room_2_background = DEF_DIALOG_ID_NONE();



// =================================================================================================
// *** STARTUP ***
// =================================================================================================

/////////////////////////////////////////////////////////
// LEVEL HOOKS
/////////////////////////////////////////////////////////////////////////////
//// PLEASE PUT YOUR NARRATIVE HOOKS HERE
//// THEY WILL GET ACTIVATED DURING DIFFERENT SECTIONS OF THE MISSION'S INIT
//// THIS WILL HELP US WITH SETUP/CLEANUP/FRAMERATE/AVOIDING MAX THREAD COUNT
/////////////////////////////////////////////////////////////////////////////


script dormant nar_flight_start_init()
	dprint("NAR trench a init");
	thread(nar_ship_start());
		
end

script dormant nar_flight_trench_b_init()
	dprint("NAR trench b init");
	wake(m90_didact_ship_exterior_fourth);
	
	wake(m90_didact_ship_exterior_sixth);
end

script dormant nar_flight_trench_c_init()
	dprint("NAR trench c init");
end

script dormant nar_flight_trench_d_init()
	dprint("NAR trench d init");
	//thread(nar_infinity_cut_back_in());
end

script dormant nar_flight_trench_e_init()
	dprint("NAR trench e init");
		
		
		thread(nar_del_rio_fate());
end

script dormant nar_flight_eye_init()
	dprint("NAR eye init");
	thread(m90_eye_first_gun());
	thread (nar_eye_reveal());
end

script dormant nar_arcade_init()
	dprint("NAR arcade init");
	wake(nar_crash_emerge);
	

	
	thread(m90_didact_ship_leap_of_faith_2());
	//wake(m90_didact_portal_console);
	thread( nar_arcade() );
	thread( nar_dropdown() );
	wake(m90_waypoint_terminal);
	wake(kill_leap_of_faith_vo);
	wake(m90_didact_ship_portals);
end

script dormant nar_teleportals_init()
	dprint("NAR teleportals init");
	thread(nar_teleport_room_2());
	wake(m90_didact_portal_console);
	//thread(didact_malfunctioning_companion());

end

script dormant nar_walls_init()
	dprint("NAR walls init");
	//thread(on_walls_entry());
end

script dormant nar_jump_init()
	dprint("NAR jump init");
	thread(nar_jump());
	thread(nar_jump_love());
	thread(nar_jump_open());
	//thread(pre_eye_composer());

	
	
end

script dormant nar_coldant_init()
	dprint("NAR coldant init");
	thread(dm_plinth_left());
	thread(dm_plinth_right()); 
  wake(m90_eye_insertion_left);
  wake(m90_eye_insertion_right);
end



script startup M90_narrative_main()
	dprint ("::: M90 Narrative Startup :::");
	
	
	////////////////////////////////////////////////
	//  Activating these in the above hook-ins   * chris french
	// 
	/////////////////////////////////////////

	//wake(kill_leap_of_faith_vo);

  
	//wake(m90_transition_platform);

	//thread(nar_ship_start());
	//thread(nar_infinity_cut_back_in());
	//thread(nar_del_rio_fate());
	//thread(nar_teleport_room_2());
	//thread(nar_jump());
	//thread(nar_jump_love());
	//thread(nar_jump_open());
	//thread(dm_plinth_left());
	//thread(dm_plinth_right()); 
	//wake(m90_didact_ship_exterior_third);
	//wake(m90_didact_ship_exterior_fourth);
	//wake(m90_didact_ship_exterior_fifth);
	//wake(m90_didact_ship_exterior_sixth);
	//wake(nar_crash_emerge);
	//wake(kill_leap_of_faith_vo);
	

	//wake(m90_eye_insertion);
	//thread(m90_eye_first_gun());

end

// =================================================================================================
// *** CUTSCENE 1: INTRO ***
// =================================================================================================

script static void nar_intro()
	//print ("Narrative!");
	  //sleep_until( volume_test_players(tv_flight_into), 1);
	dprint("D");
   /* thread (story_blurb_add("cutscene", "The Didact has loaded the super-weapon 'Composer' onto his moon-sized Starship."));
    sleep_s(6);
    thread (story_blurb_add("cutscene", "Chief and Cortana ready a UNSC Broadsword spacefighter-bomber, and launch in pursuit."));
    sleep_s(6);
    thread (story_blurb_add("cutscene", "MISSION: Locate and Bomb the Composer before it can be used again."));
    sleep_s(6);
    thread (story_blurb_add("cutscene", "But just as they reach the Starship's hull, it suddenly warps into slipspace, destination unknown..."));
    sleep_s(6);*/
    
end

// =================================================================================================
// *** FLIGHT SECTION ***
// =================================================================================================




script static void nar_ship_start()
	
	  sleep_until( volume_test_players(nar_ship_start), 1);
		wake(f_dialog_m90_didact_ship_exterior);
		
end

script static void f_fx_interior_scan( cutscene_flag the_location )

	effect_new (environments\solo\m90_sacrifice\fx\scan\dscan_trench.effect, the_location );

end

script static void nar_ship_growing()
		sleep_until( volume_test_players(nar_ship_changing), 1);
		//thread (story_blurb_add("other", "DIDACT SCAN WASHES OVER THE SHIP"));
			effect_new( environments\solo\m10_crash\fx\scan\didact_scan.effect, fx_exterior_didact_scan );
			sleep_s(1);
			wake(f_dialog_m90_didact_ship_exterior_second);

end



script dormant m90_didact_ship_exterior_fourth()
		sleep_until( volume_test_players(m90_didact_ship_exterior_fourth), 1);
		wake(f_dialog_m90_didact_ship_exterior_fourth);
end


script dormant m90_didact_ship_exterior_sixth()
		sleep_until( volume_test_players(m90_didact_ship_exterior_sixth), 1);
		wake( f_dialog_m90_didact_ship_exterior_sixth);
end




script static void nar_del_rio_fate()
	
	  sleep_until( volume_test_players(nar_del_rio_fate), 1);
			dprint("d");
    	

end



script static void nar_gate_closing()
	//print ("Narrative!");
	  sleep_until( volume_test_players(tv_gate_closing), 1);
	
    	wake(f_dialog_m90_didact_ship_exterior_eleventh);
end


script static void nar_eye_reveal()
	//print ("Narrative!");
	  sleep_until( volume_test_players(tv_eye_reveal), 1);
		wake(f_dialog_m90_eye_reveal);
end


script static void nar_eye_closed()
	//print ("Narrative!");
	
    	wake(f_dialog_m90_eye_reveal_2);
end




script static void nar_help_infinity()
	//print ("Narrative!");
			//wake(f_dialog_m90_eye_first_gun);
			dprint("d");
    	
end


script static void m90_eye_first_gun()
		sleep_until( (s_Cannon_Count == 3), 1);


			wake(f_dialog_m90_eye_first_gun);
    	
end


script static void nar_eye_defense_update()
	//print ("Narrative!");
	
    	wake(f_dialog_m90_eye_second_gun);
end

script dormant m90_eye_third_gun()
	//print ("Narrative!");
			wake(f_dialog_m90_eye_third_gun);
    	
end


script static void nar_eye_defense_success()
	//print ("Narrative!");
	dprint("d");
    //	thread (story_blurb_add("vo", "UNSC: Woo-hoo!.  Major defenses cleared.  Infinity incoming!"));
	//	wake(f_dialog_m90_eye_last_gun);
		
end

// =================================================================================================
// =================================================================================================
// =================================================================================================
// =================================================================================================
// *** CUTSCENE 2: CRASH *** 91
// =================================================================================================
// =================================================================================================
// =================================================================================================
// =================================================================================================

script static void nar_infinity_cutscene()
	//print ("Narrative!");
	
    /*	thread (story_blurb_add("cutscene", "CUTSCENE: UNSC Infinity bombards the Didact Ship's Eye."));
    	sleep_s(5);
    	thread (story_blurb_add("cutscene", "CUTSCENE: Chief steers towards a small breach in the hull."));
    	sleep_s(5);
    	thread (story_blurb_add("vo", "CHIEF: Hold on!!!"));
    	sleep_s(5);
    	thread (story_blurb_add("cutscene", "CUTSCENE: Chief crashes through the opening..."));
    	sleep_s(5);
    	thread (story_blurb_add("cutscene", "CUTSCENE: The Chief wakes up and emerges from the wreckage."));
    	sleep_s(5);
    	thread (story_blurb_add("vo", "CHIEF: We keep moving... and we find a way."));
    	sleep_s(3);*/
	dprint("d");    	
end


// =================================================================================================
// *** ON-FOOT SECTION ***
// =================================================================================================
// Chief and Cortana emerge from the Broadsword, deep inside the Didact's hip. 
// Bomb destroyed and plans dashed, they continue grim but determined, on foot towards the Eye of the ship. 


script dormant nar_crash_emerge()
	//print ("Narrative!");
	  //sleep_until( volume_test_players(nar_crash_emerge), 1);	
	  sleep_until( b_arcade_cin_intro_done, 1);	
    	wake(f_dialog_m90_didact_ship_crash_room);
    	
end






script static void nar_arcade()
	//print ("Narrative!");
	sleep_until( volume_test_players(m90_didact_ship_console_nudge), 1);
			effect_new (environments\solo\m90_sacrifice\fx\scan\dscan_crash.effect, flag_didact01_scan );
			wake(f_dialog_m90_didact_ship_scan);
    	//thread (story_blurb_add("vo", "CORTANA: Chief.  You're going to have to jump down this shaft! Grav lift powered?."));

end

script static void nar_dropdown()
	//print ("Narrative!");
	sleep_until( volume_test_players(tv_nar_dropdown), 1);
			wake(f_dialog_m90_didact_ship_leap_of_faith_1);
		

end

script static void m90_didact_ship_leap_of_faith_2()
	sleep_until( volume_test_players(thread_leap_of_faith_nudge), 1);

		sleep_s(3);
		wake(f_dialog_m90_didact_ship_leap_of_faith_2);
		thread(m90_didact_ship_leap_of_faith_3());

end

script static void m90_didact_ship_leap_of_faith_3()
		sleep_s(10);
		wake(f_dialog_m90_didact_ship_leap_of_faith_3);

end


script dormant kill_leap_of_faith_vo()
	//print ("Narrative!");
	sleep_until( volume_test_players(tv_kill_leap_of_faith_vo), 1);
	kill_script(m90_didact_ship_leap_of_faith_2);
	sleep_forever(m90_didact_ship_leap_of_faith_2);
	kill_script(m90_didact_ship_leap_of_faith_3);
	sleep_forever(m90_didact_ship_leap_of_faith_3);
	wake(f_dialog_90_dropping_leap_of_faith);

end



script dormant m90_waypoint_terminal()
	//fires when you click the terminal in vale
/*
	sleep_until (object_valid (terminal_button), 1);
	sleep_until (device_get_position(terminal_button) > 0.0, 1 );
	device_set_power (terminal_button, 0.0);
			if (IsNarrativeFlagSetOnAnyPlayer(0) == FALSE) and (IsNarrativeFlagSetOnAnyPlayer(1) == FALSE) and (IsNarrativeFlagSetOnAnyPlayer(2) == FALSE) and (IsNarrativeFlagSetOnAnyPlayer(3) == FALSE) and (IsNarrativeFlagSetOnAnyPlayer(4) == FALSE) and (IsNarrativeFlagSetOnAnyPlayer(5) == FALSE) and (IsNarrativeFlagSetOnAnyPlayer(6) == FALSE)then
				wake(f_dialog_global_my_first_domain); 
			end
		SetNarrativeFlagWithFanfareMessageForAllPlayers( 6, TRUE );
*/
	f_narrative_domain_terminal_setup( 6, domain_terminal, terminal_button );
end


script dormant m90_didact_ship_portals()
     sleep_until( volume_test_players(m90_didact_ship_portals), 1);	
		wake(f_dialog_m90_didact_ship_portals);
end


script static void nar_teleport_intro()
		dprint("d");
    //	wake(f_dialog_m90_didact_portal_console);
end

script dormant m90_didact_portal_console()
		sleep_until( volume_test_players(m90_didact_portal_console), 1);	
			wake(f_dialog_m90_didact_portal_console);

end

script static void nar_teleport_intro_open()
			
			wake(f_dialog_m90_didact_portal_console_insertion);
			wake(m90_didact_portal_console_nudge);
			
end


script dormant m90_didact_portal_console_nudge()
			sleep_s(30);
			wake(f_dialog_m90_didact_portal_console_nudge);
			
end

script static void didact_malfunctioning_companion()
		sleep_until( volume_test_players(didact_malfunctioning_companion), 1);	
		//wake(f_dialog_m90_wrong_room_1);
		
end

script static void on_walls_entry()
		//sleep_until( volume_test_players(on_walls_entry), 1);	
		wake(f_dialog_m90_on_walls_entry);
		
end
script static void nar_teleport_bad_1()
		kill_script(m90_didact_portal_console_nudge);
end


script static void nar_teleport_plat_1()
			wake(f_dialog_m90_wrong_room_1_combat);
end

script static void nar_teleport_room_2()
			sleep_until( volume_test_players(nar_teleport_room_2), 1);
			wake(f_dialog_m90_portal_room_2);
			sleep_s(3);
			wake(m90_portal_room_2_combat);
end

script dormant m90_portal_room_2_combat()
			dprint("d");
			//wake(f_dialog_m90_portal_room_2_combat);
			
end


script static void nar_teleport_special()
 		wake(f_dialog_m90_wrong_room_2);
end



script static void nar_teleport_special_weapons()
dprint("d");
   // 	thread (story_blurb_add("domain", "CORTANA: Let me help you with those."));
end



script static void nar_teleport_reenter()
    	wake(f_dialog_m90_portal_room_3);
end

script static void m90_portal_room_3_02()
    	dprint("d");
end	


script static void nar_walls_need_time()
 
 	wake(f_dialog_m90_need_time);
end


script static void nar_walls_turrets()
	wake(f_dialog_m90_final_portal_turrets);
end

script static void nar_walls_incoming()
    	dprint("d");
end



script static void nar_walls_portal_open()
    	wake(f_dialog_m90_final_room_portal);
end

/*script static void m90_leave_without_cortana()
				sleep_s(10);
		     sleep_until( volume_test_players(leave_without_cortana), 1);
		     
		      if (b_leave_without_cortana_1 == TRUE) and (b_leave_without_cortana_2 == TRUE) and (b_cortana_retrieved == FALSE) then
			    	wake(f_dialog_m90_leave_without_cortana_3);
			    	b_leave_without_cortana_1 = FALSE;		
						b_leave_without_cortana_2 = FALSE;		 
		     elseif (b_leave_without_cortana_1 == TRUE) and (b_leave_without_cortana_2 == FALSE) and (b_cortana_retrieved == FALSE) then
		    		wake(f_dialog_m90_leave_without_cortana_2);
		    		b_leave_without_cortana_2 = TRUE;		     
			  elseif (b_leave_without_cortana_1 == FALSE) and (b_leave_without_cortana_2 == FALSE) and (b_cortana_retrieved == FALSE) then
		    		wake(f_dialog_m90_leave_without_cortana_1);
		    		b_leave_without_cortana_1 = TRUE;
				end
		//	sleep_s(10);
		//	thread(m90_leave_without_cortana());
end*/


script static void nar_jump()
	//print ("Narrative!");
	sleep_until( volume_test_players(tv_nar_jump_start), 1);
		wake(f_dialog_m90_pre_jump);
end

script static void nar_jump_love()
	sleep_until( volume_test_players(tv_nar_jump_love), 1);
		wake(f_dialog_m90_jump_pip);

end

script static void nar_jump_open()
	sleep_until( volume_test_players(tv_nar_jump_open), 1);
	//	thread (story_blurb_add("other", "THE ROOF OPENS UP AND THE EYE BEGINS TO POWER UP. THE DIDACT IS ALMOST READY."));

end

/*script static void pre_eye_composer()
	sleep_until( volume_test_players(pre_eye_composer), 1);
		wake(f_dialog_m90_didact_eye);

end
		*/
		


script static void nar_jump2()
	//print ("Narrative!");
	sleep_until( volume_test_players(tv_nar_jump_start), 1);
		/*
		
  	thread (story_blurb_add("domain", "CORTANA: Chief, look! The Composer! But how do we get there?"));
  	sleep_s(6); 
   	thread (story_blurb_add("vo", "CHIEF: I got this."));
   	sleep_s(3);
   	thread (story_blurb_add("other", "CHIEF USES THE MANCANNON TO ENTER A STREAM THAT LEADS TO THE EYE."));	
	sleep_until( volume_test_players(tv_nar_jump_love), 1);
		thread (story_blurb_add("other", "CHIEF AND CORTANA SHARE A MOMENT."));
		sleep_s(2);
		thread (story_blurb_add("domain", "CORTANA: Chief... The Didact... he'll be out there, won't he?"));
		sleep_s(6); 
		thread (story_blurb_add("vo", "CHIEF: Focus on the Composer. If we face the Didact, we'll find a way... together."));
		sleep_s(6); 
		thread (story_blurb_add("domain", "CORTANA: And if we can't... John... I don't know if I'm ready..."));
		sleep_s(6); 
		thread (story_blurb_add("vo", "CHIEF: Nobody ever is, Cortana. But we all reach the end, some day."));
		sleep_s(6); 
		thread (story_blurb_add("domain", "CORTANA: No, John... it's just that... I'm just not ready... to lose y--"));
	
	sleep_until( volume_test_players(tv_nar_jump_open), 1);
		thread (story_blurb_add("other", "THE ROOF OPENS UP AND THE EYE BEGINS TO POWER UP. THE DIDACT IS ALMOST READY."));
		sleep_s(2);
		thread (story_blurb_add("vo", "CHIEF: Cortana! Something's happening!"));
		sleep_s(6); 
		thread (story_blurb_add("domain", "CORTANA: The Composer... it's preparing to fire!"));
		sleep_s(8); 
   	thread (story_blurb_add("vo", "CHIEF: No!!!"));
		sleep_s(6); 
		thread (story_blurb_add("domain", "CORTANA: If we can just reach the Composer's controls, maybe I can--"));
		sleep_s(5); 
		thread (story_blurb_add("vo", "CHIEF: No time for maybes, Cortana. It needs to be stopped... at any cost."));
		sleep_s(6); 
		thread (story_blurb_add("domain", "CORTANA: John...you can't mean...?"));
		sleep_s(6); 
		thread (story_blurb_add("vo", "CHIEF: I think we both knew this was a one-way trip."));*/
		
end


script static void nar_coldant_intro()
	//Called after initializing Coldant. 
	//print ("Narrative!");
	 // sleep_until( volume_test_players(tv_nar_coldant), 1);
	   wake(f_dialog_m90_didact_eye_02);


end

script static void nar_coldant_switch()
	 		//thread (story_blurb_add("other", "CORTANA ASKS CHIEF TO INSERT HER INTO THE SYSTEM."));
	 		dprint("d");
			
end



script static void nar_coldant_mancannons_on()
	 		wake(f_dialog_m90_splintering_ics);
end



script dormant m90_eye_insertion_left()
   sleep_until( volume_test_players(m90_eye_insertion_left), 1);
   
   	if b_first_beam_used == TRUE then
		
				wake(f_dialog_m90_beam_2_02);
				
			else
			
				wake(f_dialog_m90_eye_insertion);
    		thread(m90_eye_insertion_2());
		end
end


script dormant m90_eye_insertion_right()
   sleep_until( volume_test_players(m90_eye_insertion_right), 1);
   
   	if b_first_beam_used == TRUE then
		
				wake(f_dialog_m90_beam_2_02);
				
			else
			
				wake(f_dialog_m90_eye_insertion);
    		thread(m90_eye_insertion_2());
		end
end


script static void m90_eye_insertion_2()
	sleep_s(30);
	wake(f_dialog_m90_eye_insertion_2);
	thread(m90_eye_insertion_3());
end

script static void  m90_eye_insertion_3()
	sleep_s(30);
	wake(f_dialog_m90_eye_insertion_3);
end


script dormant m90_plinth_to_beam()
	sleep_s(1);
		
			wake(f_dialog_m90_plinth_to_beam);
			wake(f_dialog_m90_plinth_to_beam_02);

end


script dormant m90_transition_platform()
		//sleep_until( volume_test_players(f_dialog_m90_transition_platform), 1);
			wake(f_dialog_m90_transition_platform);

end



script static void dm_plinth_left()

	sleep_until ( b_cold_left_plinth_ready, 1 );
        kill_script(m90_eye_insertion_2);
        kill_script(m90_eye_insertion_3);
			if b_first_beam_used == FALSE then
				b_first_beam_used = TRUE;
				b_first_beam_left = TRUE;
	 	//		wake(f_dialog_m90_beam_vignette_1);
	 			sleep_s(7);
	 			wake(f_dialog_m90_beam_vignette_2);
			
			end
			
			
end

script static void dm_plinth_right()

	sleep_until ( b_cold_right_plinth_ready, 1 );
        kill_script(m90_eye_insertion_2);
       kill_script(m90_eye_insertion_3);
			if  b_first_beam_used == FALSE then
				b_first_beam_used = TRUE;
				b_first_beam_right = TRUE;
	 		//	wake(f_dialog_m90_beam_vignette_1);
	 			sleep_s(7);
	 			wake(f_dialog_m90_beam_vignette_2);
			
			end
			
end







script static void nar_coldant_progress()
	//Called after initializing Coldant. Triggered as player incrementally solves Composer Beam puzzle. 
	//print ("Narrative!");
	
	// Composer Core count starts at 2, and counts down as each is destroyed. 
	sleep_until ((composer_core_count == 1), 1);
		// First Core is destroyed. 
		//thread (story_blurb_add("domain", "CORTANA: That's one beam down!"));
    sleep_s(6); 
   // thread (story_blurb_add("domain", "CORTANA: The Composer is destabilizing... let's deactivate the final beam!"));
    sleep_s(6); 

	sleep_until ((composer_core_count == 0), 1);
		// All Cores destroyed. Puzzle solved, Composer open. 
		//thread (story_blurb_add("domain", "CORTANA: That's it! The Composer is overloading!"));
    sleep_s(6); 
    //thread (story_blurb_add("domain", "CORTANA: Let's get back to the main platform, we can access the Composer's core from there!"));
    sleep_s(6); 

end

script static void nar_coldant_walk_into_beam()
    	//thread (story_blurb_add("domain", "CORTANA: Walk into the beam Chief.  I think your suit will overload the power stream."));
    	dprint("d");
end

script dormant nar_light_shield_barricadest()
 sleep_until( volume_test_players(f_dialog_m90_plinth_to_beam_02) or volume_test_players(f_dialog_m90_plinth_to_beam_01)  , 1);

	wake(f_dialog_m90_light_shield_barricades);

end

script dormant nar_grav_lift()
 sleep_until( volume_test_players(grav_lift_volume), 1);

	wake(f_dialog_m90_grav_lift);

end

// =================================================================================================
// *** CUTSCENE 3: SACRIFICE ***
// =================================================================================================

script static void nar_m90_core()
//	Called when player reaches Composer Core. Currently set up as a teleport within Coldant. 
    	dprint("d");
	
	//sleep_s(6);
	
end






script static void nar_m90_end()
//	Called from inside Coldant script, after Chief presses "the button" to end the game. 
//	This is the final "cinematic". Expect to be chopped up into multiple sequences, with ICS, at a later date. 
	
	//	print ("Narrative!");
	//sleep_s(3);
		
	//story_blurb_add_cutscene("MISSION COMPLETE: Thanks for playing.");
	//sleep_s(6);
	//story_blurb_add_cutscene("ROLL CREDITS");
	//sleep_s(6);
	//dprint("M90 mission complete");
	b_M90_COMPLETE = TRUE;
        	
end


// =================================================================================================
// *** REFERENCE - DO NOT USE ***
// =================================================================================================

script static void intro_cutscene_blurb()
	//print ("Narrative!");
	  sleep_until( volume_test_players(tv_cutscene_hello_1), 1);
	
	  thread (pip_on());
	
	   sleep_s (5);

    //thread (story_blurb_add("other", "OTHER: Howdy, Armando."));
    thread (story_blurb_clear());
end

script static void second_cutscene_blurb()
	//print ("Narrative!");
	  sleep_until( volume_test_players(tv_cutscene_hello_2), 1);
	
	  thread (pip_on());
	
	   sleep_s (5);

    //thread (story_blurb_add("domain", "DOMAIN: As you can see, we now have working simple blurbs."));
end

script static void third_cutscene_blurb()
	//print ("Narrative!");
	  sleep_until( volume_test_players(tv_cutscene_hello_3), 1);
	
	  thread (pip_on());
	
	   sleep_s (5);

    thread (story_blurb_add("cutscene", "CUTSCENE: I suppose I should add something pithy here, but I'm just happy its working."));
end


// =================================================================================================
// *** PUPPETEER SCENES ***
// =================================================================================================

global short g_composer_state = 0;
global boolean g_composer_fire = false;
global boolean g_hide_prompt = false;
global short g_kill_player = 0;
global boolean g_take_cortana= false;

script static void f_show_stick_prompt( object pup )
	unit_action_test_reset(pup);
	chud_show_screen_training(pup,"tutorial_climbstick");
	sleep(1);
	g_hide_prompt = false;
	sleep_until(unit_action_test_move_relative_fwd(pup) or g_hide_prompt,1);
	chud_show_screen_training(pup,"");
end

script static void f_show_grenade_prompt( object pup )
	unit_action_test_reset(pup);
	chud_show_screen_training(pup,"mantis_board_grenade");
	sleep(1);
	g_hide_prompt = false;
	sleep_until(unit_action_test_grenade_trigger(pup) or g_hide_prompt,1);
	
	// only play this music trigger if the play succesfully plants the grenade
	if (g_hide_prompt == false) then
		thread(f_music_m90_v14_vs_didact_2());
	end
	
	chud_show_screen_training(pup,"");
end

script static void didact_ics_end_letterbox()
	sleep (30);
	
	cinematic_show_letterbox (TRUE);
end

// =================================================================================================
// =================================================================================================
// Armor Abilities
// =================================================================================================
// =================================================================================================


script static void f_waypoint_equipment_unlock()

		wake(f_waypoint_global_equipment_unlock);
end

// --- End m90_narrative.hsc ---

// --- Begin m90_sacrifice_audio.hsc ---
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343
//
// Mission: 					m90_sacrifice_audio
//										
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343

// =================================================================================================
// =================================================================================================
// *** GLOBALS ***
// =================================================================================================
// =================================================================================================

global sound core_hit_camera_shake = 'sound\environments\solo\m090\amb_m90_screen_shakes\m90_core_hit_camera_shake';
global sound coldant_camera_shake_heavy_short = 'sound\environments\solo\m090\amb_m90_screen_shakes\m90_coldant_camera_shake_heavy_short';
global sound coldant_camera_shake_medium_medium = 'sound\environments\solo\m090\amb_m90_screen_shakes\m90_coldant_camera_shake_medium_medium';
global sound eye_beam_camera_shake = 'sound\environments\solo\m090\amb_m90_screen_shakes\m90_eye_beam_camera_shake';

// =================================================================================================
// =================================================================================================
// *** START-UP ***
// =================================================================================================
// =================================================================================================

script startup m90_sacrifice_audio()

	if b_debug then 
		print ("::: M90 - AUDIO :::");
	end
	
	thread(test_fx());
	thread (load_music_for_zone_set());
end

script static void test_audio()
	print ("::: test FX :::");
	//effect_new( cinematics\cin_verticalslice\fx\rig_spark_pipe.effect, test_fx );
end

// =================================================================================================
// *** MUSIC ***
// =================================================================================================

// =================================================================================================
//     Encounters
// =================================================================================================
script static void f_mus_m90_e01_start()
	dprint("f_mus_m90_e01");
	music_set_state('Play_mus_m90_e01_space_fight');
end

script static void f_mus_m90_e02_start()
	dprint("f_mus_m90_e02");
	music_set_state('Play_mus_m90_e03_arcade');
end

script static void f_mus_m90_e03_start()
	dprint("f_mus_m90_e03");
	music_set_state('Play_mus_m90_e05_teleport');
end

script static void f_mus_m90_e04_start()
	dprint("f_mus_m90_e04");
	music_set_state('Play_mus_m90_e07_walls');
end

script static void f_mus_m90_e05_start()
	dprint("f_mus_m90_e05");
	music_set_state('Play_mus_m90_e09_coldant_west');
end

script static void f_mus_m90_e07_start()
	dprint("f_mus_m90_e07");
	music_set_state('Play_mus_m90_e13_coldant_east');
end

script static void f_mus_m90_e08_start()
	dprint("f_mus_m90_e08");
end

script static void f_mus_m90_e09_start()
	dprint("f_mus_m90_e09");
end

script static void f_mus_m90_e10_start()
	dprint("f_mus_m90_e10");
end

script static void f_mus_m90_e11_start()
	dprint("f_mus_m90_e11");
end

script static void f_mus_m90_e12_start()
	dprint("f_mus_m90_e12");
end

script static void f_mus_m90_e13_start()
	dprint("f_mus_m90_e13");
end

script static void f_mus_m90_e14_start()
	dprint("f_mus_m90_e14");
end

script static void f_mus_m90_e01_finish()
	dprint("f_mus_m90_e01");
	music_set_state('Play_mus_m90_e02_space_fight_end');
end

script static void f_mus_m90_e02_finish()
	dprint("f_mus_m90_e02");
	music_set_state('Play_mus_m90_e04_arcade_end');
end

script static void f_mus_m90_e03_finish()
	dprint("f_mus_m90_e03");
	music_set_state('Play_mus_m90_e06_teleport_end');
end

script static void f_mus_m90_e04_finish()
	dprint("f_mus_m90_e04");
	music_set_state('Play_mus_m90_e08_walls_end');
end

script static void f_mus_m90_e05_finish()
	dprint("f_mus_m90_e05");
	music_set_state('Play_mus_m90_e10_coldant_west_end');
end

script static void f_mus_m90_e07_finish()
	dprint("f_mus_m90_e07");
	music_set_state('Play_mus_m90_e14_coldant_east_end');
end

script static void f_mus_m90_e08_finish()
	dprint("f_mus_m90_e08");
end

script static void f_mus_m90_e09_finish()
	dprint("f_mus_m90_e09");
end

script static void f_mus_m90_e10_finish()
	dprint("f_mus_m90_e10");
end

script static void f_mus_m90_e11_finish()
	dprint("f_mus_m90_e11");
end

script static void f_mus_m90_e12_finish()
	dprint("f_mus_m90_e12");
end

script static void f_mus_m90_e13_finish()
	dprint("f_mus_m90_e13");
end

script static void f_mus_m90_e14_finish()
	dprint("f_mus_m90_e14");
end

script static void f_music_m90_tweak01()
	dprint("f_music_m90_tweak01");
	music_set_state('Play_mus_m90_t01_tweak');
end

script static void f_music_m90_tweak02()
	dprint("f_music_m90_tweak02");
	music_set_state('Play_mus_m90_t02_tweak');
end

script static void f_music_m90_tweak03()
	dprint("f_music_m90_tweak03");
	music_set_state('Play_mus_m90_t03_tweak');
end

script static void f_music_m90_tweak04()
	dprint("f_music_m90_tweak04");
	music_set_state('Play_mus_m90_t04_tweak');
end

script static void f_music_m90_tweak05()
	dprint("f_music_m90_tweak05");
	music_set_state('Play_mus_m90_t05_tweak');
end

script static void f_music_m90_tweak06()
	dprint("f_music_m90_tweak06");
	music_set_state('Play_mus_m90_t06_tweak');
end

script static void f_music_m90_tweak07()
	dprint("f_music_m90_tweak07");
	music_set_state('Play_mus_m90_t07_tweak');
end

script static void f_music_m90_tweak08()
	dprint("f_music_m90_tweak08");
	music_set_state('Play_mus_m90_t08_tweak');
end

script static void f_music_m90_tweak09()
	dprint("f_music_m90_tweak09");
	music_set_state('Play_mus_m90_t09_tweak');
end

script static void f_music_m90_tweak10()
	dprint("f_music_m90_tweak10");
	music_set_state('Play_mus_m90_t10_tweak');
end

script static void f_music_m90_v05_rampancy_solution()
	dprint("f_music_m90_v05_rampancy_solution");
	music_set_state('Play_mus_m90_v05_rampancy_solution');
end

script static void f_music_m90_v11_horizontal_jump()
	dprint("f_music_m90_v11_horizontal_jump");
	music_set_state('Play_mus_m90_v11_horizontal_jump');
end

// after exiting chief vs didact cinematic
script static void f_music_m90_v13_vs_didact_1()
	dprint("f_music_m90_v13_vs_didact_1");
	music_set_state('Play_mus_m90_v13_vs_didact_1');
end

// player plants grenade in didact
script static void f_music_m90_v14_vs_didact_2()
	dprint("f_music_m90_v14_vs_didact_2");
	music_set_state('Play_mus_m90_v14_vs_didact_2');
end

// crawl prompt appears
script static void f_music_m90_v14_vs_didact_3()
	dprint("f_music_m90_v14_vs_didact_3");
	music_set_state('Play_mus_m90_v14_vs_didact_3');
end


// =================================================================================================
//     Zonesets
// =================================================================================================

// this will always be 0 unless an insertion point is used
// in that case, it is used to skip past the trigger volumes that precede the selected insertion point
global short b_m90_music_progression = 0;

script static void load_music_for_zone_set()
	sleep_until(b_m90_music_progression > 0 or current_zone_set_fully_active() == s_start_idx, 1);

	music_start('Play_mus_m90');	
	
	sleep_until(b_m90_music_progression > 10 or volume_test_players (tv_music_r01_start), 1);
	if b_m90_music_progression <= 10 then
		music_set_state('Play_mus_m90_r01_start');
		sound_set_state('Set_State_M90_start');
	end
	
	sleep_until(b_m90_music_progression > 20 or volume_test_players (tv_music_r02_trans_01), 1);
	if b_m90_music_progression <= 20 then
		music_set_state('Play_mus_m90_r02_trans_01');
		sound_set_state('Set_State_M90_trans_01');
	end
	
	sleep_until(b_m90_music_progression > 30 or volume_test_players (tv_music_r03_trench_b), 1);
	if b_m90_music_progression <= 30 then
		music_set_state('Play_mus_m90_r03_trench_b');
		sound_set_state('Set_State_M90_trench_b');
	end
	
	sleep_until(b_m90_music_progression > 40 or volume_test_players (tv_music_r04_trans_02), 1);
	if b_m90_music_progression <= 40 then
		music_set_state('Play_mus_m90_r04_trans_02');
		sound_set_state('Set_State_M90_trans_02');
	end
	
	sleep_until(b_m90_music_progression > 50 or volume_test_players (tv_music_r05_trench_c), 1);
	if b_m90_music_progression <= 50 then
		music_set_state('Play_mus_m90_r05_trench_c');
		sound_set_state('Set_State_M90_trench_c');
	end
	
	sleep_until(b_m90_music_progression > 60 or volume_test_players (tv_music_r06_trans_03), 1);
	if b_m90_music_progression <= 60 then
		music_set_state('Play_mus_m90_r06_trans_03');
		sound_set_state('Set_State_M90_trans_03');
	end
	sleep_until(b_m90_music_progression > 70 or volume_test_players (tv_music_r07_trench_d), 1);
	if b_m90_music_progression <= 70 then
		music_set_state('Play_mus_m90_r07_trench_d');
		sound_set_state('Set_State_M90_trench_d');
	end
	
	sleep_until(b_m90_music_progression > 80 or volume_test_players (tv_music_r08_trans_04_e), 1);
	if b_m90_music_progression <= 80 then
		music_set_state('Play_mus_m90_r08_trans_04_e');
		sound_set_state('Set_State_M90_trans_04_e');
	end

	// 	// Play_mus_m90_r09_tren_e_eye
		
	// player enters last trench before the eye
	sleep_until(b_m90_music_progression > 90 or volume_test_players (tv_music_r10_eye_trans), 1);
	if b_m90_music_progression <= 90 then
	  music_set_state('Play_mus_m90_r10_eye_trans');
	  sound_set_state('Set_State_M90_eye_trans');
	end

	// player enters large 'eye' area	
	sleep_until(b_m90_music_progression > 100 or volume_test_players (tv_music_r11_eye), 1);
	if b_m90_music_progression <= 100 then
	  music_set_state('Play_mus_m90_r11_eye');
	  sound_set_state('Set_State_M90_eye');
	end
	
	// cinematic

	// RALLY POINT BRAVO
	// insertion point crash- player is out of saber
	sleep_until(b_m90_music_progression > 110 or volume_test_players (tv_music_r18_arcade), 1);
	if b_m90_music_progression <= 110 then
		music_set_state('Play_mus_m90_r18_arcade');
		sound_set_state('Set_State_M90_arcade');
	end

	// Player enters room right before the big jump down	
	sleep_until(b_m90_music_progression > 120 or volume_test_players (tv_music_r14_arcade_drop), 1);
	if b_m90_music_progression <= 120 then	
		music_set_state('Play_mus_m90_r14_arcade_drop');
		sound_set_state('Set_State_M90_arcade_drop');
	end

	// teleport rooms	
	sleep_until(b_m90_music_progression > 130 or volume_test_players (tv_music_r19_teleport_rooms), 1);
	if b_m90_music_progression <= 130 then	
		music_set_state('Play_mus_m90_r19_teleport_rooms');
		sound_set_state('Set_State_M90_teleport_rooms');
	end

	// Player is about to exit portal room - might move this back a bit	
	sleep_until(b_m90_music_progression > 140 or volume_test_players (tv_music_r16_walls_teleport), 1);
	if b_m90_music_progression <= 140 then	
		music_set_state('Play_mus_m90_r16_walls_teleport');
		sound_set_state('Set_State_M90_walls_teleport');
	end

	//	Player enters 'coldant' room- wallz insertions point
	// Cortana says "the didact is cloaking the composer"	
	sleep_until(b_m90_music_progression > 150 or volume_test_players (tv_music_r17_teleport_coldant), 1);
	if b_m90_music_progression <= 150 then
		music_set_state('Play_mus_m90_r17_teleport_coldant');
		sound_set_state('Set_State_M90_teleport_coldant');
	end
	
	// RALLY POINT CHARLIE
	// jump- right before giant jump where you have a conversation
	sleep_until(b_m90_music_progression > 160 or volume_test_players (tv_music_r20_jump), 1);
	if b_m90_music_progression <= 160 then 
		music_set_state('Play_mus_m90_r20_jump');
		sound_set_state('Set_State_M90_jump');
	end

	// when player enters the final area, where cortana first 'splinters' herself	
	sleep_until(b_m90_music_progression > 170 or volume_test_players (tv_music_r13_final), 1);
	if b_m90_music_progression <= 170 then
		music_set_state('Play_mus_m90_r13_final');
		sound_set_state('Set_State_M90_final');
	end
	
	// when player gets up onto the big light-bridge
	sleep_until(b_m90_music_progression > 180 or volume_test_players (tv_music_r21_light_bridge), 1);
	if b_m90_music_progression <= 180 then
		music_set_state('Play_mus_m90_r21_bridge');
	end
	
	sleep_until(current_zone_set_fully_active() == s_ending_game_idx, 1);
		music_stop('Stop_mus_m90');
end

// --- End m90_sacrifice_audio.hsc ---

// --- Begin m90_sacrifice_flight_eye.hsc ---
///////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////
// EYE
///////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////
global boolean b_Eye_Complete = FALSE;
global boolean b_eye_beams_off = FALSE;

script dormant f_eye_flight_init()
	dprint("==================================");
	sleep_until ( volume_test_players( tv_flight_eye_init ) , 1);	
		dprint("INIT:::eye");
		set_broadsword_respawns ( true );
		garbage_collect_now();
////		SetSkyObjectOverride("m90_eye_sky");
		wake( nar_flight_eye_init );
		thread(f_eye_init_unsc_ships());
		sleep(1);


		wake(f_load_eye_zoneset);

		sleep(5);
		wake(f_eye_create_slipspace_objects);	// Beams to Cannons	
		wake( f_eye_door_1_init );
		thread ( f_eye_infinity_enter() );	
		wake(f_close_eye_ap_wait);  //Launches Eye Event
		
		
		thread( f_flight_stop_direction_check() );
		f_m90_game_save();
		sleep(30);
		f_spawn_eye_guys();		
		wake( f_eye_death_beams_setup );
		wake ( f_eye_create_power_beams_all );
end

script static void f_eye_flight_cleanup()
		dprint("CLEANUP:::eye flight");
		object_destroy_folder(dms_eye);	
		object_destroy_folder(crs_eye);	
		//ai_erase( sg_eye_flight_turrets );
		ai_erase( sg_eye_all );
		f_clear_eye_blips();		
		wake ( f_trench_eye_device_cleanup );	
		garbage_collect_now();
		
		thread (f_beam_effect_destroy());

end


script dormant f_eye_door_show()

	//	sleep_until(volume_test_players(tv_eye_call_ships), 1);
		sleep_until(object_valid(maya_dm_cannon_01_door_01) and
			object_valid(maya_dm_cannon_01_door_02) and
			object_valid(maya_dm_cannon_02_door_01) and
			object_valid(maya_dm_cannon_02_door_02) and
			object_valid(maya_dm_cannon_03_door_01) and
			object_valid(maya_dm_cannon_03_door_02) and
			object_valid(maya_dm_cannon_04_door_01) and
			object_valid(maya_dm_cannon_04_door_02) 
		
		, 1);
			dprint("start pupett");
			pup_play_show( pup_cannon_1_doors );
end

script static void f_eye_init_unsc_ships()
	thread ( f_eye_ship_5_setup());
	thread ( f_eye_ship_7_setup());
	thread ( f_eye_ship_10_setup());
	thread ( f_eye_ship_13_setup());
	thread ( f_eye_ship_11_setup());
	thread ( f_eye_ship_18_setup());
	thread ( f_eye_ship_16_setup());
	object_cinematic_visibility(sc_unsc_ship_19, TRUE);
	object_cinematic_visibility(sc_unsc_ship_20, TRUE);
	object_cinematic_visibility(sc_unsc_ship_21, TRUE);
	
	thread( pewpew_ship_2_guns(sc_unsc_ship_19));
	thread( pewpew_ship_4_guns(sc_unsc_ship_21));
	thread( f_eye_setup_defense_array () );
	thread(f_unsc_ship_enter_and_die(sc_unsc_ship_9_die, 2.0, ps_unsc_fly_pts.p9, ps_unsc_fly_pts.p0, TRUE));		
	thread(f_unsc_ship_enter_and_die(sc_unsc_ship_15, 0.8, ps_unsc_fly_pts.p17, ps_unsc_fly_pts.p18, TRUE));	
	thread( f_flight_aa_setup() );
	thread( f_flight_unsc_flak_setup() );
	sleep_until(volume_test_players(tv_eye_call_ships));

		//effect_new_at_ai_point (environments\solo\m40_invasion\fx\cannon\fr_cannon_firing.effect, ps_unsc_fly_pts.p2);

		

		sleep_s(.1);
		thread(f_unsc_ship_entrance(sc_unsc_ship_8, 2.5, ps_unsc_fly_pts.p8));
		thread(f_unsc_ship_entrance(sc_unsc_ship_12, 0.75, ps_unsc_fly_pts.p14));
		sleep_s(.1);
		thread(f_unsc_ship_entrance(sc_unsc_ship_6, 2, ps_unsc_fly_pts.p6));
		thread(f_unsc_ship_entrance(sc_unsc_ship_14, 1, ps_unsc_fly_pts.p6));

		sleep_s(.1);
		thread(f_unsc_ship_entrance(sc_unsc_ship_1, 2.5, ps_unsc_fly_pts.p1));

		sleep_s(.1);
		thread(f_unsc_ship_entrance(sc_unsc_ship_4, 1.25, ps_unsc_fly_pts.p4));
		sleep_s(1);
		thread(f_unsc_ship_entrance(sc_unsc_ship_3, 2, ps_unsc_fly_pts.p3));


		sleep_s(2);
		thread(f_unsc_ship_entrance(sc_unsc_ship_2, 2.5, ps_unsc_fly_pts.p2));
		object_set_scale(sc_unsc_ship_2, 2.5, 3);
		
		//sleep_s(2);

		//f_inf_create_guns();

end

global boolean b_ship_5_dead = FALSE;
script static void f_eye_ship_5_setup()
		local long l_timer = timer_stamp( 30 ); 
		thread(f_unsc_ship_entrance(sc_unsc_ship_5, 2.5, ps_unsc_fly_pts.p5));
		thread(pewpew5());
		sleep_until( s_Cannon_Count < 4 or  timer_expired( l_timer ), 1);
		sleep_rand_s(10,16);
		b_ship_5_dead = TRUE;
		thread(pewpew5());
		thread(f_m90_destroy_unsc_ship(sc_unsc_ship_5));
end

global boolean b_ship_7_dead = FALSE;
script static void f_eye_ship_7_setup()
		thread(f_unsc_ship_entrance(sc_unsc_ship_7, 2.5, ps_unsc_fly_pts.p7));
		thread( pewpew7());
		sleep_rand_s(4,7);
		b_ship_7_dead = TRUE;
		thread(f_m90_destroy_unsc_ship(sc_unsc_ship_7));
end


global boolean b_ship_10_dead = FALSE;
script static void f_eye_ship_10_setup()
		thread(f_unsc_ship_entrance(sc_unsc_ship_10, 0.75, ps_unsc_fly_pts.p7));
		thread( pewpew10());
		sleep_rand_s(18,30);
		b_ship_10_dead = TRUE;
		thread(f_m90_destroy_unsc_ship(sc_unsc_ship_10));
end

global boolean b_ship_13_dead = FALSE;
script static void f_eye_ship_13_setup()
		thread(f_unsc_ship_entrance(sc_unsc_ship_13, 1.0, ps_unsc_fly_pts.p14));
		thread( pewpew_ship_2_guns(sc_unsc_ship_13));
		sleep_rand_s(10,60);
		b_ship_13_dead = TRUE;
		thread(f_m90_destroy_unsc_ship(sc_unsc_ship_13));
end

global boolean b_ship_11_dead = FALSE;
script static void f_eye_ship_11_setup()
		thread(f_unsc_ship_entrance(sc_unsc_ship_11, 1.25, ps_unsc_fly_pts.p15));
		thread( pewpew_ship_2_guns(sc_unsc_ship_11));
		sleep_until( s_Cannon_Count < 3 );
		sleep_rand_s(7,12);
		b_ship_11_dead = TRUE;
		thread(f_m90_destroy_unsc_ship(sc_unsc_ship_11));
end

global boolean b_ship_18_dead = FALSE;
script static void f_eye_ship_18_setup()
		thread(f_unsc_ship_entrance(sc_unsc_ship_18, 1.25, ps_unsc_fly_pts.p16));
		thread( pewpew_ship_2_guns(sc_unsc_ship_18));
		//sleep_until( s_Cannon_Count < 2 );
		sleep_rand_s(23,34);
		b_ship_18_dead = TRUE;
		thread(f_m90_destroy_unsc_ship(sc_unsc_ship_18));
end

global boolean b_ship_16_dead = FALSE;
script static void f_eye_ship_16_setup()
		thread(f_unsc_ship_entrance(sc_unsc_ship_16, 1.25, ps_unsc_fly_pts.p1));
		thread( pewpew_ship_2_guns(sc_unsc_ship_16));
		//sleep_until( s_Cannon_Count < 2 );
		sleep_rand_s(36,68);
		b_ship_16_dead = TRUE;
		thread(f_m90_destroy_unsc_ship(sc_unsc_ship_16));
end
//sc_unsc_ship_11

script static void die_ship()
		thread(f_unsc_ship_enter_and_die(sc_unsc_ship_15, 0.8, ps_unsc_fly_pts.p17, ps_unsc_fly_pts.p18, TRUE));		
end

script static void f_unsc_ship_entrance(object o_ship, real r_scale, point_reference p_point )
	object_cinematic_visibility(o_ship, TRUE);
	object_set_scale(o_ship, r_scale, 3);
	object_move_to_point(o_ship, 300, p_point);
end


script static void f_eye_setup_defense_array()

	

	thread( f_unsc_defenses( sc_unsc_defense_array_01, ps_unsc_fly_pts.p10 )  );
	thread( f_unsc_defenses( sc_unsc_defense_array_02, ps_unsc_fly_pts.p11 )  );
	thread( f_unsc_defenses( sc_unsc_defense_array_03, ps_unsc_fly_pts.p12 )  );
	thread( f_unsc_defenses( sc_unsc_defense_array_04, ps_unsc_fly_pts.p13 )  );
	
	thread( f_unsc_defenses( sc_unsc_defense_array_05, ps_unsc_fly_pts.p19 )  );
	thread( f_unsc_defenses( sc_unsc_defense_array_06, ps_unsc_fly_pts.p20 )  );
	thread( f_unsc_defenses( sc_unsc_defense_array_07, ps_unsc_fly_pts.p21 )  );
	thread( f_unsc_defenses( sc_unsc_defense_array_08, ps_unsc_fly_pts.p22 )  );
	thread( f_unsc_defenses( sc_unsc_defense_array_09, ps_unsc_fly_pts.p23 )  );
	
	
	
end


script static void f_unsc_defenses( object_name obj, point_reference p_point )
	object_cinematic_visibility(obj, TRUE);
	object_move_to_point(obj, 0, p_point);
	repeat
		effect_new_at_ai_point (environments\solo\m90_sacrifice\fx\explosion\flak_det.effect, p_point);
		sleep_s( 8,16 );
	until(b_eye_complete);
end

script static void f_unsc_ship_enter_and_die(object_name o_ship, real r_scale, point_reference p_point, point_reference p_die_point, boolean b_destroy )
	local long l_move_thread = -1;
	object_cinematic_visibility(o_ship, TRUE);
	object_set_scale(o_ship, r_scale, 3);
	l_move_thread = thread( f_m90_move_to_object(o_ship, 20, p_point) );
	sleep_s(6);
	thread( f_unsc_ship_explosions( o_ship, p_die_point, b_destroy, l_move_thread ) );

end


script static void f_unsc_ship_explosions( object_name o_ship, point_reference p_point, boolean b_destroy, long kill_move_thread )

	effect_new_on_object_marker ( environments\solo\m90_sacrifice\fx\explosion\human_explosion_large.effect, o_ship, m_front );
	sleep_s(3);
	kill_thread( kill_move_thread );
	thread( f_m90_rotate_xyz(o_ship, 30, 30, 45, 100, 40, -45) );	
	thread( f_m90_move_to_object(o_ship,30, p_point)) ;

	effect_new_on_object_marker ( environments\solo\m90_sacrifice\fx\explosion\human_explosion_large.effect, o_ship, m_starboard_1 );	
	effect_new_on_object_marker ( environments\solo\m90_sacrifice\fx\explosion\human_explosion_medium.effect, o_ship, m_starboard_2 );	
	sleep_s(4);
	effect_new_on_object_marker (environments\solo\m90_sacrifice\fx\explosion\human_explosion_large.effect, o_ship, m_starboard_2 );		
	effect_new_on_object_marker ( environments\solo\m90_sacrifice\fx\explosion\human_explosion_medium.effect, o_ship, m_port_1 );	
	sleep_s(3);
	effect_new_on_object_marker ( environments\solo\m90_sacrifice\fx\explosion\human_explosion_large.effect, o_ship, m_front );
	effect_new_on_object_marker ( environments\solo\m90_sacrifice\fx\explosion\human_explosion_medium.effect, o_ship, m_starboard_2 );	
	//sleep(15);
	sleep_s(5);
	if b_destroy then
			f_m90_destroy_unsc_ship(o_ship);
	end

end

script static void f_m90_destroy_unsc_ship(object_name o_ship )
			effect_new_on_object_marker ( environments\solo\m90_sacrifice\fx\explosion\human_explosion_large.effect, o_ship, m_front );
			effect_new_on_object_marker ( environments\solo\m90_sacrifice\fx\explosion\human_explosion_large.effect, o_ship, m_starboard_1 );
			sleep(5);
			effect_new_on_object_marker ( environments\solo\m90_sacrifice\fx\explosion\human_explosion_medium.effect, o_ship, m_port_2 );	
			effect_new_on_object_marker ( environments\solo\m90_sacrifice\fx\explosion\human_explosion_large.effect, o_ship, m_starboard_2 );
			sleep(5);
			effect_new_on_object_marker ( environments\solo\m90_sacrifice\fx\explosion\human_explosion_large.effect, o_ship, m_starboard_1 );
			effect_new_on_object_marker ( environments\solo\m90_sacrifice\fx\explosion\human_explosion_large.effect, o_ship, m_port_1 );
			effect_new_on_object_marker ( environments\solo\m90_sacrifice\fx\explosion\human_explosion_large.effect, o_ship, m_front );	
			sleep(5);
			effect_new_on_object_marker ( environments\solo\m90_sacrifice\fx\explosion\human_explosion_large.effect, o_ship, m_port_2 );	
			effect_new_on_object_marker ( environments\solo\m90_sacrifice\fx\explosion\human_explosion_medium.effect, o_ship, m_starboard_2 );	
			effect_new_on_object_marker ( environments\solo\m90_sacrifice\fx\explosion\human_explosion_medium.effect, o_ship, m_front );				
			//f_m90_global_rezin( o_ship , m_front);
			sleep_s(1.5);
			
			effect_new_on_object_marker ( environments\solo\m90_sacrifice\fx\explosion\human_explosion_large.effect, o_ship, m_port_2 );	
			effect_new_on_object_marker ( environments\solo\m90_sacrifice\fx\explosion\human_explosion_large.effect, o_ship, m_starboard_2 );	

			sleep(2);
			effect_new_on_object_marker ( environments\solo\m90_sacrifice\fx\explosion\human_explosion_large.effect, o_ship, m_port_1 );	
			effect_new_on_object_marker ( environments\solo\m90_sacrifice\fx\explosion\human_explosion_large.effect, o_ship, m_starboard_1);	
			sleep(2);
			effect_new_on_object_marker ( environments\solo\m90_sacrifice\fx\explosion\human_explosion_large.effect, o_ship, m_front );
			sleep(1);
			object_destroy(o_ship);	
end

script static void f_m90_move_to_object(object_name obj, real time,point_reference p_point )
	dprint("move");
	object_move_to_point(obj, time, p_point);
end

script static void f_m90_rotate_xyz(object_name obj, real yaw_time, real pitch_time, real roll_time, real yaw_degrees, real pitch_degrees, real roll_degrees)
	dprint("rotate");
	object_rotate_by_offset (obj, yaw_time,pitch_time,roll_time, yaw_degrees,pitch_degrees,roll_degrees);
end




script static void f_spawn_eye_guys()

	//ai_place(sq_for_eye_turret_plug_h);
	ai_place( sq_for_eye_turret_joined );
	sleep(2);
	ai_place(sq_for_eye_turret_plug);

	ai_place(sq_mega_cannon);
	wake( f_eye_spawn_06 );
	wake( f_eye_spawn_05 );
	wake(f_eye_spawn_group_a);
	wake(f_eye_spawn_group_b);

	sleep(1);
	wake(f_eye_aa_init);
	wake( f_eye_turret_left );
	wake( f_eye_turret_right );

	thread( f_flight_cleanup_goals() );
end



script dormant f_eye_spawn_06()
	sleep_until (volume_test_players(tv_eye_turrets_2nd_half_right) or volume_test_players(tv_eye_turret_right), 1);
		ai_place(sq_for_eye_turret_06);

end

script dormant f_eye_spawn_05()
	sleep_until (volume_test_players(tv_eye_turrets_2nd_half_left) or volume_test_players(tv_eye_turret_left), 1);
		ai_place(sq_for_eye_turret_05);

end

script dormant f_eye_spawn_group_a()
	sleep_until (volume_test_players(tv_eye_turrets_2nd_half_left), 1);
		ai_place(sq_for_eye_turret_03);

end


script dormant f_eye_spawn_group_b()
	sleep_until (volume_test_players(tv_eye_turrets_2nd_half_right), 1);
		ai_place(sq_for_eye_turret_02);		
end


script dormant f_eye_turret_left()
	sleep_until (volume_test_players(tv_eye_turret_left), 1);
		ai_place(sq_for_eye_turret_04);
end


script dormant f_eye_turret_right()
	sleep_until (volume_test_players(tv_eye_turret_right), 1);
		ai_place(sq_for_eye_turret_01);

end

script dormant f_eye_create_slipspace_objects()
		//Create FX pillars for cannons
		effect_new_between_points(environments\solo\m90_sacrifice\fx\beams\beam_eye_cannon_base.effect, fx_beam_cannon_bottom_01, fx_beam_cannon_top_01);
		effect_new_between_points(environments\solo\m90_sacrifice\fx\beams\beam_eye_cannon_base.effect, fx_beam_cannon_bottom_02, fx_beam_cannon_top_02);
		effect_new_between_points(environments\solo\m90_sacrifice\fx\beams\beam_eye_cannon_base.effect, fx_beam_cannon_bottom_03, fx_beam_cannon_top_03);
		effect_new_between_points(environments\solo\m90_sacrifice\fx\beams\beam_eye_cannon_base.effect, fx_beam_cannon_bottom_04, fx_beam_cannon_top_04);

		object_create_folder( dms_eye );
		object_create_folder( crs_eye );		
		sleep(1);		
		object_cannot_take_damage( m90_mega_cannon_01 );
		object_cannot_take_damage( m90_mega_cannon_02 );
		object_cannot_take_damage( m90_mega_cannon_03 );
		object_cannot_take_damage( m90_mega_cannon_04 );
		sleep(10);
		//thread( f_eye_init_unsc_ships() );
	//	thread( f_weapon_switch_tutorial());
		
end


global short s_Cannon_Count = 4;
global short s_MAX_Cannons = s_Cannon_Count;

global boolean b_Cannon_Alive_01 = TRUE;
global boolean b_Cannon_Alive_02 = TRUE;
global boolean b_Cannon_Alive_03 = TRUE;
global boolean b_Cannon_Alive_04 = TRUE;
global boolean b_cannon_1_fire  = FALSE;
global boolean b_cannon_2_fire  = FALSE;
global boolean b_cannon_3_fire  = FALSE;
global boolean b_cannon_4_fire  = FALSE;

script dormant f_eye_aa_objective()
		
		thread( f_eye_aa_listener( m90_mega_cannon_01, cr_aa_lock_1,fg_cannon_1, 1 ) );
		thread( f_eye_aa_listener( m90_mega_cannon_03, cr_aa_lock_3,fg_cannon_3, 3 ) );
		thread( f_eye_aa_listener( m90_mega_cannon_02, cr_aa_lock_2,fg_cannon_2, 2 ) );
		thread( f_eye_aa_listener( m90_mega_cannon_04, cr_aa_lock_4,fg_cannon_4, 4 ) );
		
		sleep(60);
		thread( f_objective_set( DEF_R_OBJECTIVE_CANNONS, TRUE, FALSE, TRUE,TRUE ) );
end



script dormant f_eye_aa_init()
	//wake( f_eye_init_cannon_doors );
	sleep(1);
	thread( f_cannon_state_01() );
	//thread( f_eye_cannon_sequence_01() );

	thread( f_cannon_state_02() );
	//thread( f_eye_cannon_sequence_02() );

	thread( f_cannon_state_03() );
	//thread( f_eye_cannon_sequence_03() );

	thread( f_cannon_state_04() );
	//thread( f_eye_cannon_sequence_04() );
	
	//device_set_position_track( m90_mega_cannon_01, 'any:idle', 0.0 );
	//device_set_position_track( m90_mega_cannon_02, 'any:idle', 0.0 );
	//device_set_position_track( m90_mega_cannon_03, 'any:idle', 0.0 );
	//device_set_position_track( m90_mega_cannon_04, 'any:idle', 0.0 );


end

global boolean b_VO_eye_halfway_done = FALSE;

script static void f_eye_aa_listener( device dm, object power, cutscene_flag flag , short cannon_set )

	//f_eye_open_cannon_door_by_num( cannon_set );

	sleep_s( 3 );
	f_blip_flag(flag, "neutralize");	
	sleep_until(object_get_health(power) <= 0, 1);
		dprint("aa destroyed");
		s_Cannon_Count = s_Cannon_Count - 1;
		garbage_collect_now();
		f_unblip_flag(flag);
		
		if ( not ( b_VO_eye_halfway_done ) and s_Cannon_Count <= s_MAX_Cannons / 2 ) then
			dprint("half turrets destroyed");
			b_VO_eye_halfway_done = TRUE;
			thread( nar_eye_defense_update() );
		end

		if ( s_Cannon_Count == 1 ) then

			wake( m90_eye_third_gun );
		end

end

script static void f_eye_destroy_power_all()

	sleep_until( object_valid( cr_eye_energy_lock ), 1);
	sleep_until( object_get_health( cr_eye_energy_lock ) <= 0, 1);
		f_unblip_flag(flag_eye_main_power);
		f_m90_game_save_no_timeout();
		sleep(15);
		wake(f_eye_destroy_power_beams_all);
		sleep(30);
		f_unblip_flag(flag_eye_main_power);
		
		dprint("opening cannon doors");
		b_eye_cannon_doors_open = TRUE;
		wake( f_eye_door_show );
		wake(f_eye_aa_objective);
end
	
script dormant f_eye_destroy_power_beams_all()  //Flashes beams on and off as they are powered off.
	dprint("Power Off Destroy");
	effect_delete_from_flag(environments\solo\m90_sacrifice\fx\beams\beam_eye_to_cannon.effect, fx_beam_center_bottom);
	sleep( 5 );
	
	effect_delete_from_flag(environments\solo\m90_sacrifice\fx\beams\beam_eye_to_cannon.effect, fx_beam_center_01);									//Normal Off  Fade On
	effect_new_between_points(environments\solo\m90_sacrifice\fx\beams\beam_eye_to_cannon_fade.effect, fx_beam_center_01, fx_beam_cannon_01);
	effect_delete_from_flag(environments\solo\m90_sacrifice\fx\beams\beam_eye_to_cannon.effect, fx_beam_center_02);
	effect_new_between_points(environments\solo\m90_sacrifice\fx\beams\beam_eye_to_cannon_fade.effect, fx_beam_center_02, fx_beam_cannon_02);	
	effect_delete_from_flag(environments\solo\m90_sacrifice\fx\beams\beam_eye_to_cannon.effect, fx_beam_center_03);
	effect_new_between_points(environments\solo\m90_sacrifice\fx\beams\beam_eye_to_cannon_fade.effect, fx_beam_center_03, fx_beam_cannon_03);	
	effect_delete_from_flag(environments\solo\m90_sacrifice\fx\beams\beam_eye_to_cannon.effect, fx_beam_center_04);
	effect_new_between_points(environments\solo\m90_sacrifice\fx\beams\beam_eye_to_cannon_fade.effect, fx_beam_center_04, fx_beam_cannon_04);	
	sleep( 5 );
    
	effect_new_between_points(environments\solo\m90_sacrifice\fx\beams\beam_eye_to_cannon.effect, fx_beam_center_01, fx_beam_cannon_01);			//Fade Off Normal On
	effect_delete_from_flag(environments\solo\m90_sacrifice\fx\beams\beam_eye_to_cannon_fade.effect, fx_beam_center_01);
	effect_new_between_points(environments\solo\m90_sacrifice\fx\beams\beam_eye_to_cannon.effect, fx_beam_center_02, fx_beam_cannon_02);
	effect_delete_from_flag(environments\solo\m90_sacrifice\fx\beams\beam_eye_to_cannon_fade.effect, fx_beam_center_02);
	effect_new_between_points(environments\solo\m90_sacrifice\fx\beams\beam_eye_to_cannon.effect, fx_beam_center_03, fx_beam_cannon_03);
	effect_delete_from_flag(environments\solo\m90_sacrifice\fx\beams\beam_eye_to_cannon_fade.effect, fx_beam_center_03);
	effect_new_between_points(environments\solo\m90_sacrifice\fx\beams\beam_eye_to_cannon.effect, fx_beam_center_04, fx_beam_cannon_04);
	effect_delete_from_flag(environments\solo\m90_sacrifice\fx\beams\beam_eye_to_cannon_fade.effect, fx_beam_center_04);
	sleep( 10 );
	
	effect_delete_from_flag(environments\solo\m90_sacrifice\fx\beams\beam_eye_to_cannon.effect, fx_beam_center_01);									//Normal Off  Fade On
	effect_new_between_points(environments\solo\m90_sacrifice\fx\beams\beam_eye_to_cannon_fade.effect, fx_beam_center_01, fx_beam_cannon_01);
	effect_delete_from_flag(environments\solo\m90_sacrifice\fx\beams\beam_eye_to_cannon.effect, fx_beam_center_02);
	effect_new_between_points(environments\solo\m90_sacrifice\fx\beams\beam_eye_to_cannon_fade.effect, fx_beam_center_02, fx_beam_cannon_02);	
	effect_delete_from_flag(environments\solo\m90_sacrifice\fx\beams\beam_eye_to_cannon.effect, fx_beam_center_03);
	effect_new_between_points(environments\solo\m90_sacrifice\fx\beams\beam_eye_to_cannon_fade.effect, fx_beam_center_03, fx_beam_cannon_03);	
	effect_delete_from_flag(environments\solo\m90_sacrifice\fx\beams\beam_eye_to_cannon.effect, fx_beam_center_04);
	effect_new_between_points(environments\solo\m90_sacrifice\fx\beams\beam_eye_to_cannon_fade.effect, fx_beam_center_04, fx_beam_cannon_04);	
	sleep( 8 );

	effect_new_between_points(environments\solo\m90_sacrifice\fx\beams\beam_eye_to_cannon.effect, fx_beam_center_01, fx_beam_cannon_01);			//Fade Off Normal On
	effect_delete_from_flag(environments\solo\m90_sacrifice\fx\beams\beam_eye_to_cannon_fade.effect, fx_beam_center_01);
	effect_new_between_points(environments\solo\m90_sacrifice\fx\beams\beam_eye_to_cannon.effect, fx_beam_center_02, fx_beam_cannon_02);
	effect_delete_from_flag(environments\solo\m90_sacrifice\fx\beams\beam_eye_to_cannon_fade.effect, fx_beam_center_02);
	effect_new_between_points(environments\solo\m90_sacrifice\fx\beams\beam_eye_to_cannon.effect, fx_beam_center_03, fx_beam_cannon_03);
	effect_delete_from_flag(environments\solo\m90_sacrifice\fx\beams\beam_eye_to_cannon_fade.effect, fx_beam_center_03);
	effect_new_between_points(environments\solo\m90_sacrifice\fx\beams\beam_eye_to_cannon.effect, fx_beam_center_04, fx_beam_cannon_04);
	effect_delete_from_flag(environments\solo\m90_sacrifice\fx\beams\beam_eye_to_cannon_fade.effect, fx_beam_center_04);
	sleep( 5 );

	effect_delete_from_flag(environments\solo\m90_sacrifice\fx\beams\beam_eye_to_cannon.effect, fx_beam_center_01);									//Turn off all beams
	effect_delete_from_flag(environments\solo\m90_sacrifice\fx\beams\beam_eye_to_cannon.effect, fx_beam_center_02);
	effect_delete_from_flag(environments\solo\m90_sacrifice\fx\beams\beam_eye_to_cannon.effect, fx_beam_center_03);
	effect_delete_from_flag(environments\solo\m90_sacrifice\fx\beams\beam_eye_to_cannon.effect, fx_beam_center_04);
	effect_delete_from_flag(environments\solo\m90_sacrifice\fx\beams\beam_eye_to_cannon_fade.effect, fx_beam_center_01);
	effect_delete_from_flag(environments\solo\m90_sacrifice\fx\beams\beam_eye_to_cannon_fade.effect, fx_beam_center_02);
	effect_delete_from_flag(environments\solo\m90_sacrifice\fx\beams\beam_eye_to_cannon_fade.effect, fx_beam_center_03);
	effect_delete_from_flag(environments\solo\m90_sacrifice\fx\beams\beam_eye_to_cannon_fade.effect, fx_beam_center_04);
	dprint("kill all center beams");
	b_eye_beams_off = TRUE;
	effect_kill_from_flag(environments\solo\m90_sacrifice\fx\beams\beam_eye_cap.effect, fx_beam_cap_center_01);										//Turn off beam end caps
	effect_kill_from_flag(environments\solo\m90_sacrifice\fx\beams\beam_eye_cap.effect, fx_beam_cap_center_02);
	effect_kill_from_flag(environments\solo\m90_sacrifice\fx\beams\beam_eye_cap.effect, fx_beam_cap_center_03);
	effect_kill_from_flag(environments\solo\m90_sacrifice\fx\beams\beam_eye_cap.effect, fx_beam_cap_center_04);
	effect_kill_from_flag(environments\solo\m90_sacrifice\fx\beams\beam_eye_cap.effect, fx_beam_cap_cannon_01);
	effect_kill_from_flag(environments\solo\m90_sacrifice\fx\beams\beam_eye_cap.effect, fx_beam_cap_cannon_02);
	effect_kill_from_flag(environments\solo\m90_sacrifice\fx\beams\beam_eye_cap.effect, fx_beam_cap_cannon_03);
	effect_kill_from_flag(environments\solo\m90_sacrifice\fx\beams\beam_eye_cap.effect, fx_beam_cap_cannon_04);
	
	object_destroy (eye_beam1); //Kill sound scenery objects: AUDIO!
	object_destroy (eye_beam2);
	object_destroy (eye_beam3);
	object_destroy (eye_beam4);
	
	dprint("kill beam end caps");

	garbage_collect_now();
end

script dormant f_eye_create_power_beams_all()  //Turns on all center beams at begining of event.
	sleep_s(7);
	//if object_get_health( cr_eye_energy_lock ) > 0 then
		object_create( cr_eye_energy_lock );
		
		//Center beam
		//effect_new_between_points(environments\solo\m90_sacrifice\fx\beams\beam_eye_to_cannon.effect, fx_beam_center_bottom, fx_beam_center_top);
		dprint("Beam Center");
		
		//Beams from center
		effect_new_between_points(environments\solo\m90_sacrifice\fx\beams\beam_eye_to_cannon.effect, fx_beam_center_01, fx_beam_cannon_01);
		dprint("Beam Center 01");
		effect_new_between_points(environments\solo\m90_sacrifice\fx\beams\beam_eye_to_cannon.effect, fx_beam_center_02, fx_beam_cannon_02);
		dprint("Beam Center 02");
		effect_new_between_points(environments\solo\m90_sacrifice\fx\beams\beam_eye_to_cannon.effect, fx_beam_center_03, fx_beam_cannon_03);
		dprint("Beam Center 03");
		effect_new_between_points(environments\solo\m90_sacrifice\fx\beams\beam_eye_to_cannon.effect, fx_beam_center_04, fx_beam_cannon_04);
		dprint("Beam Center 0");
		
		//Connection points for beams
		effect_new(environments\solo\m90_sacrifice\fx\beams\beam_eye_cap.effect, fx_beam_cap_center_01);
		effect_new(environments\solo\m90_sacrifice\fx\beams\beam_eye_cap.effect, fx_beam_cap_center_02);
		effect_new(environments\solo\m90_sacrifice\fx\beams\beam_eye_cap.effect, fx_beam_cap_center_03);
		effect_new(environments\solo\m90_sacrifice\fx\beams\beam_eye_cap.effect, fx_beam_cap_center_04);
		effect_new(environments\solo\m90_sacrifice\fx\beams\beam_eye_cap.effect, fx_beam_cap_cannon_01);
		effect_new(environments\solo\m90_sacrifice\fx\beams\beam_eye_cap.effect, fx_beam_cap_cannon_02);
		effect_new(environments\solo\m90_sacrifice\fx\beams\beam_eye_cap.effect, fx_beam_cap_cannon_03);
		effect_new(environments\solo\m90_sacrifice\fx\beams\beam_eye_cap.effect, fx_beam_cap_cannon_04);
	
		thread( f_eye_destroy_power_all() );
	//end
	


end

script static void f_beam_effect_destroy()
	
	effect_stop_object_marker (environments\solo\m90_sacrifice\fx\beams\beam_eye_cannon_base.effect, cr_aa_beam_1a, "fx_beam_center_01");
	effect_stop_object_marker (environments\solo\m90_sacrifice\fx\beams\beam_eye_cannon_base.effect, cr_aa_beam_1b, "fx_beam_center_01");
	effect_kill_object_marker (environments\solo\m90_sacrifice\fx\beams\beam_eye_cannon_base.effect, cr_aa_beam_1a, "fx_beam_center_01");
	effect_kill_object_marker (environments\solo\m90_sacrifice\fx\beams\beam_eye_cannon_base.effect, cr_aa_beam_1b, "fx_beam_center_01");
	
	effect_stop_object_marker (environments\solo\m90_sacrifice\fx\beams\beam_eye_cannon_base.effect, cr_aa_beam_2a, "fx_beam_center_01");
	effect_stop_object_marker (environments\solo\m90_sacrifice\fx\beams\beam_eye_cannon_base.effect, cr_aa_beam_2b, "fx_beam_center_01");	
	effect_kill_object_marker (environments\solo\m90_sacrifice\fx\beams\beam_eye_cannon_base.effect, cr_aa_beam_2a, "fx_beam_center_01");
	effect_kill_object_marker (environments\solo\m90_sacrifice\fx\beams\beam_eye_cannon_base.effect, cr_aa_beam_2b, "fx_beam_center_01");	
	
	effect_stop_object_marker (environments\solo\m90_sacrifice\fx\beams\beam_eye_cannon_base.effect, cr_aa_beam_3a, "fx_beam_center_01");
	effect_stop_object_marker (environments\solo\m90_sacrifice\fx\beams\beam_eye_cannon_base.effect, cr_aa_beam_3b, "fx_beam_center_01");
	effect_kill_object_marker (environments\solo\m90_sacrifice\fx\beams\beam_eye_cannon_base.effect, cr_aa_beam_3a, "fx_beam_center_01");
	effect_kill_object_marker (environments\solo\m90_sacrifice\fx\beams\beam_eye_cannon_base.effect, cr_aa_beam_3b, "fx_beam_center_01");	
	
	effect_stop_object_marker (environments\solo\m90_sacrifice\fx\beams\beam_eye_cannon_base.effect, cr_aa_beam_4a, "fx_beam_center_01");
	effect_stop_object_marker (environments\solo\m90_sacrifice\fx\beams\beam_eye_cannon_base.effect, cr_aa_beam_4b, "fx_beam_center_01");
	effect_kill_object_marker (environments\solo\m90_sacrifice\fx\beams\beam_eye_cannon_base.effect, cr_aa_beam_4a, "fx_beam_center_01");
	effect_kill_object_marker (environments\solo\m90_sacrifice\fx\beams\beam_eye_cannon_base.effect, cr_aa_beam_4b, "fx_beam_center_01");
	
end

script static void f_cannon_state_01()
	sleep_until( object_valid( cr_aa_lock_1), 1);
	sleep_until( object_get_health( cr_aa_lock_1) <= 0, 1);

		effect_delete_from_flag(environments\solo\m90_sacrifice\fx\beams\beam_eye_cannon_base.effect, fx_beam_cannon_bottom_01);
		effect_stop_object_marker (environments\solo\m90_sacrifice\fx\beams\beam_eye_cannon_base.effect, cr_aa_beam_1a, "fx_beam_center_01");
		effect_stop_object_marker (environments\solo\m90_sacrifice\fx\beams\beam_eye_cannon_base.effect, cr_aa_beam_1b, "fx_beam_center_01");
		object_destroy (eye_beam4b); //AUDIO FOR CANNON BEAM TURNS OFF!
		garbage_collect_now();
		//dprint("KILL CANNON_01 BEAM");
		b_Cannon_Alive_01 = FALSE;
end

script static void f_cannon_state_02()
	sleep_until( object_valid( cr_aa_lock_2), 1);
	sleep_until( object_get_health( cr_aa_lock_2) <= 0, 1);

		effect_delete_from_flag(environments\solo\m90_sacrifice\fx\beams\beam_eye_cannon_base.effect, fx_beam_cannon_bottom_04);
		effect_stop_object_marker (environments\solo\m90_sacrifice\fx\beams\beam_eye_cannon_base.effect, cr_aa_beam_2a, "fx_beam_center_01");
		effect_stop_object_marker (environments\solo\m90_sacrifice\fx\beams\beam_eye_cannon_base.effect, cr_aa_beam_2b, "fx_beam_center_01");
		object_destroy (eye_beam1b); //AUDIO FOR CANNON BEAM TURNS OFF!
		garbage_collect_now();
		//dprint("KILL CANNON_02 BEAM");		
		b_Cannon_Alive_02 = FALSE;
end

script static void f_cannon_state_03()
	sleep_until( object_valid( cr_aa_lock_3), 1);
	sleep_until( object_get_health( cr_aa_lock_3) <= 0, 1);

		effect_delete_from_flag(environments\solo\m90_sacrifice\fx\beams\beam_eye_cannon_base.effect, fx_beam_cannon_bottom_03);
		effect_stop_object_marker (environments\solo\m90_sacrifice\fx\beams\beam_eye_cannon_base.effect, cr_aa_beam_3a, "fx_beam_center_01");
		effect_stop_object_marker (environments\solo\m90_sacrifice\fx\beams\beam_eye_cannon_base.effect, cr_aa_beam_3b, "fx_beam_center_01");
		object_destroy (eye_beam2b); //AUDIO FOR CANNON BEAM TURNS OFF!
		garbage_collect_now();
		//dprint("KILL CANNON_03 BEAM");
		b_Cannon_Alive_03 = FALSE;
end

script static void f_cannon_state_04()
	sleep_until( object_valid( cr_aa_lock_4), 1);
	sleep_until( object_get_health( cr_aa_lock_4) <= 0, 1);

		effect_delete_from_flag(environments\solo\m90_sacrifice\fx\beams\beam_eye_cannon_base.effect, fx_beam_cannon_bottom_02);
		effect_stop_object_marker (environments\solo\m90_sacrifice\fx\beams\beam_eye_cannon_base.effect, cr_aa_beam_4a, "fx_beam_center_01");
		effect_stop_object_marker (environments\solo\m90_sacrifice\fx\beams\beam_eye_cannon_base.effect, cr_aa_beam_4b, "fx_beam_center_01");
		object_destroy (eye_beam3b); //AUDIO FOR CANNON BEAM TURNS OFF!
		garbage_collect_now();
		//dprint("KILL CANNON_04 BEAM");
		b_Cannon_Alive_04 = FALSE;
end


global long l_pup_id_01 = -1;
global long l_pup_id_02 = -1;
global long l_pup_id_03 = -1;
global long l_pup_id_04 = -1;

script static void f_eye_cleanup_cannon_pups()
	pup_stop_show(l_pup_id_01);
	pup_stop_show(l_pup_id_02);
	pup_stop_show(l_pup_id_03);
	pup_stop_show(l_pup_id_04);
end


global object g_fake_turret_1 = NONE;
global object g_fake_turret_2 = NONE;
global object g_fake_turret_3 = NONE;
global object g_fake_turret_4 = NONE;

script command_script cs_eye_cannon_1
	//sleep_forever();
	g_fake_turret_1 = ai_vehicle_get(ai_current_actor);
	pup_play_show(pup_cannon_1);
	//object_hide( ai_vehicle_get( ai_current_actor ), TRUE );
		sleep_until(volume_test_players(tv_eye_close),1);
			sleep_s(2);
			cs_aim_object ( TRUE,sc_unsc_ship_15 );
			sleep_s(3);
			b_cannon_1_fire = TRUE;
			sleep_s(7);
			cs_aim_object ( TRUE,sc_unsc_ship_15 );
			sleep_s(3);
			b_cannon_1_fire = TRUE;
			sleep_rand_s(8,10);
	repeat
		local short count = 0;
		repeat
		//sleep_s(3);
			if b_Cannon_Alive_01 then
				begin_random_count(1)
						cs_aim ( TRUE,ps_cannon_fire_pts.p3 );
						cs_aim ( TRUE,ps_cannon_fire_pts.p4 );
						cs_aim ( TRUE,ps_cannon_fire_pts.p5 );
						cs_aim ( TRUE,ps_cannon_fire_pts.p6 );
				end
			end
		sleep(45);
		count = count + 1;
		until( count == 5 or b_Cannon_Alive_01 == FALSE or b_Eye_Complete ,1);
			count = 0;
			sleep_s(3);
			b_cannon_1_fire = TRUE;
			sleep_rand_s(6,8);
	
		
	until(b_Cannon_Alive_01 == FALSE or b_Eye_Complete, 1);
	sleep_forever();

end

script command_script cs_eye_cannon_2
	g_fake_turret_2 = ai_vehicle_get(ai_current_actor);
	pup_play_show(pup_cannon_2);
	//object_hide( ai_vehicle_get( ai_current_actor ), TRUE );
	sleep_rand_s(3,5);
	repeat
		local short count = 0;
		repeat

			if b_Cannon_Alive_02 then
				begin_random_count(1)
						cs_aim ( TRUE,ps_cannon_fire_pts.p0 );
						cs_aim ( TRUE,ps_cannon_fire_pts.p13 );
						cs_aim ( TRUE,ps_cannon_fire_pts.p14 );
						cs_aim ( TRUE,ps_cannon_fire_pts.p15 );
				end
			end
			sleep(45);
			count = count + 1;
		until( count == 5 or b_Cannon_Alive_02 == FALSE or b_Eye_Complete ,1);
			count = 0;
		sleep_s(3);
		b_cannon_2_fire = TRUE;
		sleep_rand_s(6,8);
	until(b_Cannon_Alive_02 == FALSE or b_Eye_Complete, 1);
	sleep_forever();

end

script command_script cs_eye_cannon_3
	g_fake_turret_3 = ai_vehicle_get(ai_current_actor);
	pup_play_show(pup_cannon_3);
	//object_hide( ai_vehicle_get( ai_current_actor ), TRUE );
		//first time through shoot at ship
		sleep_until(volume_test_players(tv_eye_close),1);
			cs_aim_object ( TRUE,sc_unsc_ship_9_die );
			sleep_s(3);
			b_cannon_3_fire = TRUE;
			sleep_s(6);
			cs_aim_object ( TRUE,sc_unsc_ship_7 );
			sleep_s(3);
			b_cannon_3_fire = TRUE;
			sleep_s(5);			
			cs_aim_object ( TRUE,sc_unsc_ship_7 );
			sleep_s(3);
			b_cannon_3_fire = TRUE;
			sleep_rand_s(7,9);	
	repeat	
		local short count = 0;
		
		repeat
				if b_Cannon_Alive_03 then
					begin_random_count(1)
							cs_aim ( TRUE,ps_cannon_fire_pts.p1 );
							cs_aim ( TRUE,ps_cannon_fire_pts.p10 );
							cs_aim ( TRUE,ps_cannon_fire_pts.p11 );
							cs_aim ( TRUE,ps_cannon_fire_pts.p12 );
					end
				end
				sleep(45);
				count = count + 1;
			until( count == 5 or b_Cannon_Alive_03 == FALSE or b_Eye_Complete ,1);
				count = 0;
				sleep_s(3);
				b_cannon_3_fire = TRUE;
				sleep_rand_s(6,8);
	until(b_Cannon_Alive_03 == FALSE or b_Eye_Complete, 1);
	sleep_forever();

end

script command_script cs_eye_cannon_4
	g_fake_turret_4 = ai_vehicle_get(ai_current_actor);
	pup_play_show(pup_cannon_4);
	//object_hide( ai_vehicle_get( ai_current_actor ), TRUE );

		sleep_until(volume_test_players(tv_eye_close),1);
			cs_aim ( TRUE,ps_cannon_fire_pts.p2 );
			sleep_s(3);
			cs_aim_object ( TRUE,sc_unsc_ship_9_die );
			sleep_s(3);
			b_cannon_4_fire = TRUE;
			sleep_rand_s(9,10);
			cs_aim_object ( TRUE,sc_unsc_ship_9_die );
			sleep_s(3);
			b_cannon_4_fire = TRUE;
			sleep_rand_s(9,10);
	repeat
		local short count = 0;
		repeat
			if b_Cannon_Alive_04 then
				begin_random_count(1)
						cs_aim ( TRUE,ps_cannon_fire_pts.p2 );
						cs_aim ( TRUE,ps_cannon_fire_pts.p7 );
						cs_aim ( TRUE,ps_cannon_fire_pts.p8 );
						cs_aim ( TRUE,ps_cannon_fire_pts.p9 );
				end
			end
			sleep(45);
			count = count + 1;
		until( count == 5 or b_Cannon_Alive_04 == FALSE or b_Eye_Complete ,1);
		count = 0;

		sleep_s(3);
		b_cannon_4_fire = TRUE;
		sleep_rand_s(6,8);
	until(b_Cannon_Alive_04 == FALSE or b_Eye_Complete, 1);
	sleep_forever();

end

script static void f_eye_cannon_sequence_01()
	
	l_pup_id_01 = pup_play_show(pup_cannon_1);

	repeat
		sleep_rand_s(10,15);
		if b_Cannon_Alive_01 then
			b_cannon_1_fire = TRUE;
			sleep(1);
		end
	until( b_Cannon_Alive_01 == FALSE, 1 );	
	

end

script static void f_eye_cannon_sequence_02()
	
	
	l_pup_id_02 = pup_play_show(pup_cannon_2);
	repeat
		sleep_rand_s(10,15);
		if b_Cannon_Alive_02 then
			b_cannon_2_fire = TRUE;
			sleep(1);
		end
	until( b_Cannon_Alive_02 == FALSE, 1 );	
end

script static void f_eye_cannon_sequence_03()

	l_pup_id_02 = pup_play_show(pup_cannon_3);
	sleep_s(1);
	repeat

		if b_Cannon_Alive_03 then
			b_cannon_3_fire = TRUE;
			sleep(1);
		end
		sleep_rand_s(10,15);
	until( b_Cannon_Alive_03 == FALSE, 1 );	
end

script static void f_eye_cannon_sequence_04()
	l_pup_id_02 = pup_play_show(pup_cannon_4);
	repeat
		sleep_rand_s(10,15);
		if b_Cannon_Alive_04 then
			b_cannon_4_fire = TRUE;
			sleep(1);
		end
	until( b_Cannon_Alive_04 == FALSE, 1 );	
end




script dormant f_eye_init_cannon_doors()

	device_set_position_track( maya_dm_cannon_01_door_01, 'door_closed', 0.0 );
	device_set_position_track( maya_dm_cannon_01_door_02, 'door_closed', 0.0 );
	device_set_position_track( maya_dm_cannon_02_door_01, 'door_closed', 0.0 );
	device_set_position_track( maya_dm_cannon_02_door_02, 'door_closed', 0.0 );		
	device_set_position_track( maya_dm_cannon_03_door_01, 'door_closed', 0.0 );
	device_set_position_track( maya_dm_cannon_03_door_02, 'door_closed', 0.0 );
	device_set_position_track( maya_dm_cannon_04_door_01, 'door_closed', 0.0 );
	device_set_position_track( maya_dm_cannon_04_door_02, 'door_closed', 0.0 );
	//device_animate_position( maya_dm_cannon_01_door_01, 0, 0, 0.1, 0.1, FALSE );			
	//device_animate_position( maya_dm_cannon_01_door_02, 0, 0, 0.1, 0.1, FALSE );			
	//device_animate_position( maya_dm_cannon_02_door_01, 0, 0, 0.1, 0.1, FALSE );			
	//device_animate_position( maya_dm_cannon_02_door_02, 0, 0, 0.1, 0.1, FALSE );			
	//device_animate_position( maya_dm_cannon_03_door_01, 0, 0, 0.1, 0.1, FALSE );			
	//device_animate_position( maya_dm_cannon_03_door_02, 0, 0, 0.1, 0.1, FALSE );			
	//device_animate_position( maya_dm_cannon_04_door_01, 0, 0, 0.1, 0.1, FALSE );			
	//device_animate_position( maya_dm_cannon_04_door_02, 0, 0, 0.1, 0.1, FALSE );			
end



script static void f_eye_open_cannon_door( device dm , real dist, real time )
	device_set_position_track( dm, 'door_idle_01', 0.0 );
	device_animate_position( dm, dist, time, 0.1, 0.1, FALSE );			
end

global boolean b_eye_cannon_doors_open = FALSE;

script static void f_eye_open_cannon_door_by_num( short cannon_set  )

	local  real EYE_DOOR_AMOUNT = 0.75;


	
	if cannon_set == 1 then
		f_eye_open_cannon_door(maya_dm_cannon_01_door_01, EYE_DOOR_AMOUNT, 1.0);
		f_eye_open_cannon_door(maya_dm_cannon_01_door_02, EYE_DOOR_AMOUNT, 1.0);
		
//		thread( f_eye_door_derez(maya_dm_cannon_01_door_01));
//		thread( f_eye_door_derez(maya_dm_cannon_01_door_02));
		dprint("open cannon 1 doors");
	end
	
	if cannon_set == 2 then
		f_eye_open_cannon_door(maya_dm_cannon_02_door_01, EYE_DOOR_AMOUNT, 1.0);
		f_eye_open_cannon_door(maya_dm_cannon_02_door_02, EYE_DOOR_AMOUNT, 1.0);
		dprint("open cannon 2 doors");
//		thread( f_eye_door_derez(maya_dm_cannon_02_door_01));
//		thread( f_eye_door_derez(maya_dm_cannon_02_door_02));
	end
	
	if cannon_set == 3 then
//		thread( f_eye_door_derez(maya_dm_cannon_03_door_01));
//		thread( f_eye_door_derez(maya_dm_cannon_03_door_02));
		f_eye_open_cannon_door(maya_dm_cannon_03_door_01, EYE_DOOR_AMOUNT, 1.0);
		f_eye_open_cannon_door(maya_dm_cannon_03_door_02, EYE_DOOR_AMOUNT, 1.0);
		dprint("open cannon 3 doors");
	end
	
	if cannon_set == 4 then
//		thread( f_eye_door_derez(maya_dm_cannon_04_door_01));
//		thread( f_eye_door_derez(maya_dm_cannon_04_door_02));
		f_eye_open_cannon_door(maya_dm_cannon_04_door_01, EYE_DOOR_AMOUNT, 1.0);
		f_eye_open_cannon_door(maya_dm_cannon_04_door_02, EYE_DOOR_AMOUNT, 1.0);
		dprint("open cannon 4 doors");
	end		
end

script static void f_eye_infinity_enter()
	sleep_until( s_Cannon_Count <= 0 and not b_Eye_Complete );
		//sleep_rand_s(5,8);		
		thread( nar_eye_defense_success() );
		
		sleep_s(1);
		if player_get_first_alive() != NONE then
			thread( f_crash_cinematic_transition() );
		end
	
end


script static void f_eye_door_derez( object_name obj )

		f_m90_global_rezin( obj, fx_derez1 );
		sleep(1);
		f_m90_global_rezin_soft_kill( obj,fx_derez );
end

script static void f_clear_eye_blips()

	f_unblip_flag(fg_cannon_1);
	f_unblip_flag(fg_cannon_2);
	f_unblip_flag(fg_cannon_3);
	f_unblip_flag(fg_cannon_4);
end






script dormant f_eye_door_1_init()
	//object_create(dm_eye_door_1);	
	sleep(1);
	device_set_position_track( dm_eye_door_1, 'any:idle', 0.0 );
	//device_animate_position( dm_eye_door_1, 1.0, 0.1, 0.1, 1.0, TRUE );
	
	//sleep_until (volume_test_players(tv_open_eye_door_1), 1);
		//thread( f_open_eye_door_1());
	thread( f_trench_door_close_setup( dm_eye_door_1, 7, TRUE,  4, tv_flight_eye_init, kill_eye_tunnel ) );
end


script static void f_open_eye_door_1()

		device_animate_position( dm_eye_door_1, 0.0, 1.0, 0.1, 0.1, TRUE );
		sleep_s(10);
		f_close_eye_door_1();
end

script static void f_close_eye_door_1()
		dprint("close eye door");
		device_animate_position( dm_eye_door_1, 1.0, 1.0, 0.1, 0.1, TRUE );
		sleep_s(1);
		f_trench_activate_death_zone( kill_eye_tunnel, TRUE );	
end

script dormant f_eye_save_wait()
	sleep_until (volume_test_players(tv_eye_save), 1);
		dprint("SAVE::: EYE");
		data_mine_set_mission_segment ("m90_flight_eye");
		sleep(1);
		f_m90_game_save_no_timeout();
end

// sets up the eye then waits for the player to get to the right spot before initiating the closing sequence
script dormant f_close_eye_ap_wait()
	// do the setup
	f_setup_eye_piece( maya_ap_eye_large_01, 0.8 );
	f_setup_eye_piece( maya_ap_eye_large_02, 0.99 );	
	f_setup_eye_piece( maya_ap_eye_large_03, 0.8 );
	f_setup_eye_piece( maya_ap_eye_large_04, 0.8 );
	
	f_setup_eye_piece( maya_ap_eye_core_struc_01, 0.5 );
	f_setup_eye_piece( maya_ap_eye_core_struc_02, 0.5 );	
	f_setup_eye_piece( maya_ap_eye_core_struc_03, 0.5 );
	f_setup_eye_piece( maya_ap_eye_core_struc_04, 0.5 );
			
	f_setup_eye_piece( maya_ap_eye_core_plt_s_01, 0.9 );
	f_setup_eye_piece( maya_ap_eye_core_plt_s_02, 0.9 );
	f_setup_eye_piece( maya_ap_eye_core_plt_s_03, 0.9 );
	f_setup_eye_piece( maya_ap_eye_core_plt_s_04, 0.9 );
	f_setup_eye_piece( maya_ap_eye_core_plt_s_05, 0.9 );
	f_setup_eye_piece( maya_ap_eye_core_plt_s_06, 0.9 );
	f_setup_eye_piece( maya_ap_eye_core_plt_s_07, 0.9 );	
	
	// wait for player to get close enough
	sleep_until (volume_test_players(tv_eye_close), 1);

		thread( f_m90_show_chapter_title( title_eye_flight ) );
		thread(f_close_eye_ap());
		wake( f_eye_closed );

		f_m90_update_1_objectives();	
		local long l_timer = timer_stamp( 12 ); 

	sleep_until( dialog_id_played_check(l_dialog_eye_closed) or timer_expired(l_timer), 1 );	
		if object_get_health( cr_eye_energy_lock ) > 0 then
			f_blip_flag(flag_eye_main_power, "neutralize");
		end 
end

script dormant f_eye_closed()
	sleep_until(device_get_position(maya_ap_eye_large_01) < 0.15, 1);
		dprint("eye_closed");
		thread (nar_gate_closing());
		sleep_s(13);
		if object_get_health( cr_eye_energy_lock ) > 0 then
			thread( f_objective_set( DEF_R_OBJECTIVE_GENERATOR, TRUE, FALSE, TRUE,TRUE ) );
		end 
end

script static void f_setup_eye_piece( device dm, real pos )
	device_set_position_track( dm, 'any:idle', 0.0 );	
	device_animate_position( dm, pos, 0, 1.0, 0.0, FALSE );
end

// close the eye when the player first enters the area
script static void f_close_eye_ap()
	local real r_CLOSE_TIME = 10.0;
	
	// play a 2D sound for the giant eye plates closing
	sound_impulse_start('sound\environments\solo\m090\amb_m90_device_machines\add_on_machine_tags\machine_m90_eye_giant_doors_close', NONE, 1);
	
	device_animate_position( maya_ap_eye_large_01, 0.0, r_CLOSE_TIME, 0.1, 1.0, FALSE );		
	device_animate_position( maya_ap_eye_large_02, 0.0, r_CLOSE_TIME, 0.1, 1.0, FALSE );
	device_animate_position( maya_ap_eye_large_03, 0.0, r_CLOSE_TIME, 0.1, 1.0, FALSE );
	device_animate_position( maya_ap_eye_large_04, 0.0, r_CLOSE_TIME, 0.1, 1.0, FALSE );
	
	device_animate_position( maya_ap_eye_core_struc_01, 0.0, r_CLOSE_TIME, 0.1, 1.0, FALSE );
	device_animate_position( maya_ap_eye_core_struc_02, 0.0, r_CLOSE_TIME, 0.1, 1.0, FALSE );		
	device_animate_position( maya_ap_eye_core_struc_03, 0.0, r_CLOSE_TIME, 0.1, 1.0, FALSE );
	device_animate_position( maya_ap_eye_core_struc_04, 0.0, r_CLOSE_TIME, 0.1, 1.0, FALSE );
	
	device_animate_position( maya_ap_eye_core_plt_s_01, 0.0, r_CLOSE_TIME, 0.1, 1.0, FALSE );
	device_animate_position( maya_ap_eye_core_plt_s_02, 0.0, r_CLOSE_TIME, 0.1, 1.0, FALSE );
	device_animate_position( maya_ap_eye_core_plt_s_03, 0.0, r_CLOSE_TIME, 0.1, 1.0, FALSE );
	device_animate_position( maya_ap_eye_core_plt_s_04, 0.0, r_CLOSE_TIME, 0.1, 1.0, FALSE );
	device_animate_position( maya_ap_eye_core_plt_s_05, 0.0, r_CLOSE_TIME, 0.1, 1.0, FALSE );
	device_animate_position( maya_ap_eye_core_plt_s_06, 0.0, r_CLOSE_TIME, 0.1, 1.0, FALSE );
	device_animate_position( maya_ap_eye_core_plt_s_07, 0.0, r_CLOSE_TIME, 0.1, 1.0, FALSE );
	
	sleep_s(6);
	nar_eye_closed();
end

script static void f_flight_random_flack()

	local unit playerx = player_get_first_valid();
	
	repeat
	//\environments\solo\m90_sacrifice\fx\explosion\flak_det.effect
	sleep(1);
	until( b_eye_complete,1 );
end

global long l_aa_thread_1 = -1;
global long l_aa_thread_2 = -1;
global long l_aa_thread_3 = -1;
global long l_aa_thread_4 = -1;

script static void f_flight_aa_setup()
	l_aa_thread_1 = thread( f_flight_aa_single( fx_tracer_mkr_01 ));	
	sleep_rand_s(4,6);
	l_aa_thread_2 = thread( f_flight_aa_single( fx_tracer_mkr_02 ));	
	sleep_rand_s(4,6);
	l_aa_thread_3 = thread( f_flight_aa_single( fx_tracer_mkr_03 ));
	sleep_rand_s(4,6);
	l_aa_thread_4 = thread( f_flight_aa_single( fx_tracer_mkr_04 ));
	sleep_rand_s(4,6);
	thread( f_flight_aa_single( fx_tracer_mkr_05 ));
	sleep_rand_s(4,6);
	thread( f_flight_aa_single( fx_tracer_mkr_06 ));	
	sleep_rand_s(4,6);
	thread( f_flight_aa_single( fx_tracer_mkr_07 ));	
	
	thread( f_flight_aa_single( fx_tracer_mkr_012 ));
	sleep_rand_s(4,6);
	thread( f_flight_aa_single( fx_tracer_mkr_013 ));
	thread( f_flight_aa_single( fx_tracer_mkr_014 ));
	sleep_rand_s(4,6);
	thread( f_flight_aa_single( fx_tracer_mkr_015 ));	
	
	sleep_s(20);
	kill_thread(l_aa_thread_1);
	kill_thread(l_aa_thread_2);
	kill_thread(l_aa_thread_3);
	kill_thread(l_aa_thread_4);
	thread( f_flight_aa_single( fx_tracer_mkr_08 ));
	thread( f_flight_aa_single( fx_tracer_mkr_09 ));	
	sleep_rand_s(2,4);
	thread( f_flight_aa_single( fx_tracer_mkr_010 ));	
	thread( f_flight_aa_single( fx_tracer_mkr_011 ));	
	//sleep_rand_s(4,6);


end

script static void f_flight_unsc_flak_setup()


	
	//repeat
	//\environments\solo\m90_sacrifice\fx\explosion\flak_det.effect
	//effect_new(  environments\solo\m90_sacrifice\fx\explosion\flak_det.effect,   );
	


	thread( f_flight_unsc_flak_single(fx_flak_mkr_01 ));
	sleep(15);
	thread( f_flight_unsc_flak_single(fx_flak_mkr_02 ));
	sleep(15);
	thread( f_flight_unsc_flak_single(fx_flak_mkr_03 ));
	thread( f_flight_unsc_flak_single(fx_flak_mkr_04 ));
	sleep(15);
	thread( f_flight_unsc_flak_single(fx_flak_mkr_05 ));
	thread( f_flight_unsc_flak_single(fx_flak_mkr_06 ));
	sleep(15);
	thread( f_flight_unsc_flak_single(fx_flak_mkr_07 ));
	thread( f_flight_unsc_flak_single(fx_flak_mkr_08 ));
	sleep(15);
	thread( f_flight_unsc_flak_single(fx_flak_mkr_09 ));
	thread( f_flight_unsc_flak_single(fx_flak_mkr_10 ));
	thread( f_flight_unsc_flak_single(fx_flak_mkr_11 ));
	sleep(15);
	thread( f_flight_unsc_flak_single(fx_flak_mkr_12 ));
	thread( f_flight_unsc_flak_single(fx_flak_mkr_13 ));
	sleep(15);
	thread( f_flight_unsc_flak_single(fx_flak_mkr_14 ));
	thread( f_flight_unsc_flak_single(fx_flak_mkr_15 ));
	sleep(15);
	thread( f_flight_unsc_flak_single(fx_flak_mkr_16 ));
	thread( f_flight_unsc_flak_single(fx_flak_mkr_17 ));
	sleep(15);
	thread( f_flight_unsc_flak_single(fx_flak_mkr_18 ));	

	thread( pewpew_ship_2_guns(sc_unsc_ship_8) );
	sleep_s(5);
	thread( pewpew_ship_4_guns(sc_unsc_ship_4) );
	
	thread( f_flight_unsc_flak_single(fx_flak_mkr_1a ));	
	thread( f_flight_unsc_flak_single(fx_flak_mkr_2a ));
		sleep(15);	
	thread( f_flight_unsc_flak_single(fx_flak_mkr_3a ));	
	thread( f_flight_unsc_flak_single(fx_flak_mkr_4a ));	
		sleep(15);	
	thread( f_flight_unsc_flak_single(fx_flak_mkr_5a ));		
	thread( f_flight_unsc_flak_single(fx_flak_mkr_6a ));
		sleep(15);
	thread( f_flight_unsc_flak_single(fx_flak_mkr_7a ));
	thread( f_flight_unsc_flak_single(fx_flak_mkr_8a ));
	sleep(15);	
	thread( f_flight_unsc_flak_single(fx_flak_mkr_9a ));	
	thread( f_flight_unsc_flak_single(fx_flak_mkr_10a ));
		sleep(15);	
	thread( f_flight_unsc_flak_single(fx_flak_mkr_11a ));	
	thread( f_flight_unsc_flak_single(fx_flak_mkr_12a ));	
		sleep(15);	
	thread( f_flight_unsc_flak_single(fx_flak_mkr_13a ));		
	thread( f_flight_unsc_flak_single(fx_flak_mkr_14a ));
		sleep(15);
	thread( f_flight_unsc_flak_single(fx_flak_mkr_15a ));
	thread( f_flight_unsc_flak_single(fx_flak_mkr_16a ));
	sleep(15);	
	thread( f_flight_unsc_flak_single(fx_flak_mkr_17a ));
	thread( f_flight_unsc_flak_single(fx_flak_mkr_18a ));
	sleep(15);	
	thread( f_flight_unsc_flak_single(fx_flak_mkr_18a1 ));
	thread( f_flight_unsc_flak_single(fx_flak_mkr_18a2 ));
	sleep(15);		
	thread( f_flight_unsc_flak_single(fx_flak_mkr_18a3 ));
	thread( f_flight_unsc_flak_single(fx_flak_mkr_18a4 ));
	sleep(15);		
	thread( f_flight_unsc_flak_single(fx_flak_mkr_18a5 ));
	thread( f_flight_unsc_flak_single(fx_flak_mkr_18a6 ));
	sleep(15);	
	thread( f_flight_unsc_flak_single(fx_flak_mkr_18a7 ));
	thread( f_flight_unsc_flak_single(fx_flak_mkr_18a8 ));
	sleep(15);		
	thread( f_flight_unsc_flak_single(fx_flak_mkr_18a9 ));
	thread( f_flight_unsc_flak_single(fx_flak_mkr_18a10 ));
	sleep(15);	

	//until( b_eye_complete,1 );
	thread( pewpew_ship_4_guns(sc_unsc_ship_1) );
	sleep(1);
end

global boolean b_flight_stop_flack = FALSE;
script static void f_flight_unsc_flak_single( cutscene_flag this_fx_marker )

	repeat		
		effect_new(  environments\solo\m90_sacrifice\fx\explosion\flak_det.effect,  this_fx_marker );
		sleep_rand_s(5,10);
	until( b_eye_complete ,1);
end

script static void f_flight_aa_single( cutscene_flag this_fx_marker )

	repeat		
		effect_new(  environments\solo\m90_sacrifice\fx\explosion\dummy_firing.effect,  this_fx_marker );
		sleep_rand_s(13,17);
	until( b_eye_complete ,1);
end


script static void pewpew_ship_4_guns( object_name ship)
	repeat
	//effect_new_on_object_marker ( environments\solo\m90_sacrifice\fx\explosion\dummy_firing.effect, sc_unsc_ship_4, "fx_tracer_mkr_unsc_01" );
		effect_new_on_object_marker ( environments\solo\m90_sacrifice\fx\explosion\dummy_firing_UNSC.effect, ship, "m_port_1" );
		sleep_rand_s (5, 8); 
		effect_new_on_object_marker ( environments\solo\m90_sacrifice\fx\explosion\dummy_firing_UNSC.effect, ship, "m_port_2" );
		effect_new_on_object_marker ( environments\solo\m90_sacrifice\fx\explosion\dummy_firing_UNSC.effect, ship, "m_starboard_1" );
		sleep_rand_s (5, 8);
		effect_new_on_object_marker ( environments\solo\m90_sacrifice\fx\explosion\dummy_firing_UNSC.effect, ship, "m_starboard_2" );
		effect_new_on_object_marker ( environments\solo\m90_sacrifice\fx\explosion\dummy_firing_UNSC.effect, ship, "m_port_2" );
		sleep_rand_s (4, 7); 
	until (b_eye_complete);
end



script static void pewpew5()
	repeat
	//effect_new_on_object_marker ( environments\solo\m90_sacrifice\fx\explosion\dummy_firing.effect, sc_unsc_ship_4, "fx_tracer_mkr_unsc_01" );
		effect_new_on_object_marker ( environments\solo\m90_sacrifice\fx\explosion\dummy_firing_UNSC.effect, sc_unsc_ship_5, "m_port_1" );
		sleep_rand_s (7, 9); 
		if not b_ship_5_dead then
			effect_new_on_object_marker ( environments\solo\m90_sacrifice\fx\explosion\dummy_firing_UNSC.effect, sc_unsc_ship_5, "m_starboard_2" );
			sleep_rand_s (7, 9); 
		end
	until (b_eye_complete or b_ship_5_dead );
end

script static void pewpew7()
	repeat
	//effect_new_on_object_marker ( environments\solo\m90_sacrifice\fx\explosion\dummy_firing.effect, sc_unsc_ship_4, "fx_tracer_mkr_unsc_01" );
		effect_new_on_object_marker ( environments\solo\m90_sacrifice\fx\explosion\dummy_firing_UNSC.effect, sc_unsc_ship_5, "m_starboard_1" );
		sleep_rand_s (6, 9); 
		if not b_ship_7_dead then
			effect_new_on_object_marker ( environments\solo\m90_sacrifice\fx\explosion\dummy_firing_UNSC.effect, sc_unsc_ship_5, "m_starboard_2" );
			sleep_rand_s (6, 9); 
		end
	until (b_eye_complete or b_ship_7_dead );
end




script static void pewpew10()
	repeat
	//effect_new_on_object_marker ( environments\solo\m90_sacrifice\fx\explosion\dummy_firing.effect, sc_unsc_ship_4, "fx_tracer_mkr_unsc_01" );
		effect_new_on_object_marker ( environments\solo\m90_sacrifice\fx\explosion\dummy_firing_UNSC.effect, sc_unsc_ship_10, "m_port_2" );		
		sleep_rand_s (7, 9);
		effect_new_on_object_marker ( environments\solo\m90_sacrifice\fx\explosion\dummy_firing_UNSC.effect, sc_unsc_ship_10, "m_starboard_1" );		
		sleep_rand_s (6, 7);  		 
		effect_new_on_object_marker ( environments\solo\m90_sacrifice\fx\explosion\dummy_firing_UNSC.effect, sc_unsc_ship_10, "m_port_1" );
		effect_new_on_object_marker ( environments\solo\m90_sacrifice\fx\explosion\dummy_firing_UNSC.effect, sc_unsc_ship_10, "m_starboard_2" );
		sleep_rand_s (7, 10); 
	until ( b_eye_complete or b_ship_10_dead);
end



script static void pewpew11()
	repeat
	//effect_new_on_object_marker ( environments\solo\m90_sacrifice\fx\explosion\dummy_firing.effect, sc_unsc_ship_4, "fx_tracer_mkr_unsc_01" );
		effect_new_on_object_marker ( environments\solo\m90_sacrifice\fx\explosion\dummy_firing_UNSC.effect, sc_unsc_ship_10, "m_port_2" );		
		sleep_rand_s (8, 10);
		effect_new_on_object_marker ( environments\solo\m90_sacrifice\fx\explosion\dummy_firing_UNSC.effect, sc_unsc_ship_10, "m_starboard_1" );		
		sleep_rand_s (6, 8);  		 
		effect_new_on_object_marker ( environments\solo\m90_sacrifice\fx\explosion\dummy_firing_UNSC.effect, sc_unsc_ship_10, "m_port_1" );
		sleep_rand_s (7, 10); 
	until ( b_eye_complete or b_ship_11_dead);
end

script static void pewpew_ship_2_guns( object_name ship)
	repeat
	//effect_new_on_object_marker ( environments\solo\m90_sacrifice\fx\explosion\dummy_firing.effect, sc_unsc_ship_4, "fx_tracer_mkr_unsc_01" );
		effect_new_on_object_marker ( environments\solo\m90_sacrifice\fx\explosion\dummy_firing_UNSC.effect, ship, "m_port_1" );
		sleep_rand_s (6, 10); 
		effect_new_on_object_marker ( environments\solo\m90_sacrifice\fx\explosion\dummy_firing_UNSC.effect, ship, "m_port_2" );
		sleep_rand_s (6, 10); 
	until (b_eye_complete );
end

script static void f_inf_create_guns()
	ai_place(infinity_guns);
	sleep(1);
	objects_attach(sc_unsc_ship_1, "m_front", ai_vehicle_get_from_spawn_point(infinity_guns.inf_gun_1), "" );
	objects_attach(sc_unsc_ship_4, "m_front", ai_vehicle_get_from_spawn_point(infinity_guns.inf_gun_2), "" );
	//objects_attach(infinity, "m_gun_mid_rear_starboard", ai_vehicle_get_from_spawn_point(infinity_guns.inf_gun_3), "" );

	dprint("attached infinity guns");
	sleep(1);
	//load_inf_gunners();
end


/////////////////////////////////////////////////////////////////////////////////////////////////
//DAMAGE FROM BEAMS
/////////////////////////////////////////////////////////////////////////////////////////////////

script static void f_eye_death_beam_damage( trigger_volume the_trig )
	
	if player_valid( player0 ) then
		thread(f_eye_beam_damage_per_player(the_trig, player0));
	end
	
	if player_valid( player1 ) then
		thread(f_eye_beam_damage_per_player(the_trig, player1));
	end
	
	if player_valid( player2 ) then
		thread(f_eye_beam_damage_per_player(the_trig, player2));
	end
	
	if player_valid( player3 ) then
		thread(f_eye_beam_damage_per_player(the_trig, player3));
	end
end

script static void f_eye_beam_damage_per_player(trigger_volume the_trig, player the_player)
	local vehicle the_ship = NONE;
	repeat
		if player_valid( the_player ) then	
			sleep_until (volume_test_object (the_trig, the_player) or b_eye_beams_off, 1);
				if not b_eye_beams_off then
					the_ship = unit_get_vehicle( the_player );
					damage_object(the_ship, "default", 250);
					damage_objects_effect ("objects\vehicles\covenant\storm_wraith\turrets\storm_wraith_mortar\weapon\projectiles\damage_effects\storm_wraith_mortar_round_impact.damage_effect", the_ship);
					thread( f_eye_beam_camera_shake(the_player )  );
					dprint("Hit by a eye beam");
				end
				sleep (10);
		end
	until ( b_eye_beams_off, 1);
end


script dormant f_eye_death_beams_setup()
		thread( f_eye_death_beam_damage(tv_eye_beam_1) );
		thread( f_eye_death_beam_damage(tv_eye_beam_2) );
		thread( f_eye_death_beam_damage(tv_eye_beam_3) );
		thread( f_eye_death_beam_damage(tv_eye_beam_4) );
		thread( f_eye_death_beam_damage(tv_eye_beam_mid) );
		
end


script static void f_eye_beam_camera_shake(player p_player ) 
	camera_shake_player	(p_player, 0.2, 0.2, 0, 1.5, eye_beam_camera_shake);
	player_effect_set_max_rumble_for_player(p_player, 0.8, 0.8);
	sleep_s(0.25);
	player_effect_set_max_rumble_for_player(p_player, 0, 0);
end

/*
script static void load_inf_gunners()
       //ai_place(biggun);
       //sleep(5);
       ai_place (inf_gunners);
       ai_cannot_die (inf_gunners, TRUE);       
      // ai_set_clump (inf_gunners, 5);

      //ai_designer_clump_perception_range (600);
       
       vehicle_load_magic (ai_vehicle_get_from_spawn_point(infinity_guns.inf_gun_1), "", ai_get_unit (inf_gunners.gunner_1));
       vehicle_load_magic (ai_vehicle_get_from_spawn_point(infinity_guns.inf_gun_2), "", ai_get_unit (inf_gunners.gunner_2));

end
*/



//test
script static void rotten_apple()

	thread( f_m90_rotate_xyz(m90_mega_cannon_01, 30, 30, 45, 100, 40, -45) );
end

// --- End m90_sacrifice_flight_eye.hsc ---

// --- Begin m90_sacrifice_fx.hsc ---
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343
//
// Mission: 					m90_sacrifce_fx
//										
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343

// =================================================================================================
// =================================================================================================
// *** GLOBALS ***
// =================================================================================================
// =================================================================================================

//

// =================================================================================================
// =================================================================================================
// *** START-UP ***
// =================================================================================================
// =================================================================================================

script startup m90_sacrifice_fx()

	if b_debug then 
		print ("::: M90 - FX :::");
	end
	
	thread(test_fx());
end

script static void test_fx()
	print ("::: test FX :::");
	//effect_new( cinematics\cin_verticalslice\fx\rig_spark_pipe.effect, test_fx );
end


// =================================================================================================
// =================================================================================================
// *** CORTANA SPLINTER ***
// =================================================================================================
// =================================================================================================

script static void fx_cortana_splinter_start(object pup_cortana)
	dprint("------------------fx_cortana_splinter_start");
	effect_new_on_object_marker(objects\characters\storm_cortana\fx\splinter\fx_splinter_start.effect, pup_cortana, fx_pelvis);
end

script static void fx_cortana_splinter_idle(object pup_cortana)
	dprint("------------------fx_cortana_splinter_idle");
	effect_new_on_object_marker(objects\characters\storm_cortana\fx\splinter\fx_splinter_idle.effect, pup_cortana, fx_pelvis);
end

script static void fx_cortana_splinter_idle_stop(object pup_cortana)
	dprint("------------------fx_cortana_splinter_idle_stop");
	effect_stop_object_marker(objects\characters\storm_cortana\fx\splinter\fx_splinter_idle.effect, pup_cortana, fx_pelvis);
end

script static void fx_cortana_splinter_end(object pup_cortana)
	dprint("------------------fx_cortana_splinter_end");
	effect_new_on_object_marker(objects\characters\storm_cortana\fx\splinter\fx_splinter_end.effect, pup_cortana, fx_pelvis);
end

script static void fx_cortana_splinter_apart(object pup_cortana)
	dprint("------------------fx_cortana_splinter_apart");
	effect_new_on_object_marker(objects\characters\storm_cortana\fx\splinter\fx_splinter_apart.effect, pup_cortana, fx_pelvis);
end




//	Object FX Marker Command Examples
//	effect_kill_from_flag(environments\solo\m80_delta\fx\energy\atr_dmg_composer_energy_center.effect, fx_composer_center);
//	effect_new_on_object_marker(environments\solo\m80_delta\fx\energy\atr_dmg_composer_energy_center.effect, ad_object, fx_comp_eye);




// ======================================================
//	Coldant Composer Chargeup and Firing Sequence
// ======================================================

//	Coldant Composer � Didact Backside Glow
script static void fx_didact_back_glow()
	dprint("play_fx_didact_back_glow()");
	effect_new_on_object_marker(environments\solo\m90_sacrifice\fx\lens_flares\cold_ant_didact_back_glow.effect, composer, fx_composer_beam_up);
end

// ------------------------------------------------------

//	Coldant Composer � Didact Shield Lens Flare
script static void fx_didact_shield()
	dprint("play_fx_didact_shield()");

end

// ------------------------------------------------------

//	Coldant Composer � Activate - Stage 0
script static void fx_composer_activate()
	dprint("play_fx_composer_activate()");
	effect_new_on_object_marker(environments\solo\m90_sacrifice\fx\beams\cold_ant_composer_base_energy.effect, composer, fx_composer_base);
	effect_new_on_object_marker(environments\solo\m90_sacrifice\fx\lens_flares\cold_ant_composer_center_flare.effect, composer, fx_composer_eye_center);
end

// ------------------------------------------------------

//	Coldant Composer � Lens Flare and Center Beam - Stage 1
script static void fx_composer_beam_center_01()
	dprint("play_fx_composer_beam_center_01()");
	effect_new_on_object_marker(environments\solo\m90_sacrifice\fx\beams\cold_ant_comp_beam_center.effect, composer, fx_composer_beam_up);
//	effect_new_on_object_marker(environments\solo\m90_sacrifice\fx\lens_flares\cold_ant_didact_shield_flare.effect, composer, fx_composer_beam_up);

//	Kill Didact Backside Glow
	effect_kill_object_marker(environments\solo\m90_sacrifice\fx\lens_flares\cold_ant_didact_back_glow.effect, composer, fx_composer_beam_up);
end

// ------------------------------------------------------

//	Coldant Composer � Ball Glow - Stage 2 --- NOT USED, I think
script static void fx_composer_ball_glow()
	dprint("play_fx_composer_ball_glow()");
end

// ------------------------------------------------------

//	Coldant Composer � Didact Shield - Stage 2B
script static void fx_composer_didact_shield()
	dprint("play_fx_composer_didact_shield()");
end

// ------------------------------------------------------

//	Coldant Composer � Chargeup - Stage 3
script static void fx_composer_chargeup()
	dprint("play_fx_composer_chargeup()");
//	Composer Chargeup
	effect_new_on_object_marker(environments\solo\m90_sacrifice\fx\beams\cold_ant_composer_chargeup_03.effect, composer, fx_composer_ball);
end

// ------------------------------------------------------

//	Coldant Composer � Fire Beam - Stage 4
script static void fx_composer_fire()
	dprint("play_fx_composer_chargeup_and_fire_beam()");

//	Composer Fire
	effect_new_on_object_marker(environments\solo\m90_sacrifice\fx\beams\cold_ant_composer_fire.effect, composer, fx_composer_beam_fire);
	effect_new_on_object_marker(environments\solo\m90_sacrifice\fx\beams\cold_ant_comp_planet_impact.effect, composer, fx_composer_beam_fire);

//	Kill Composer Primer Beam
	effect_kill_object_marker(environments\solo\m90_sacrifice\fx\beams\cold_ant_comp_beam_center.effect, composer, fx_composer_beam_up);
	effect_kill_object_marker(environments\solo\m90_sacrifice\fx\lens_flares\cold_ant_didact_back_glow.effect, composer, fx_composer_beam_up);

//	Composer Digitize Beam
	sleep(110);
	effect_new_on_object_marker(environments\solo\m90_sacrifice\fx\beams\cold_ant_comp_beam_up_digitize.effect, composer, fx_composer_beam_fire);
	sleep(60);
	effect_new_on_object_marker(environments\solo\m90_sacrifice\fx\beams\cold_ant_comp_beam_mid_digitize.effect, composer, fx_composer_beam_up);
	sleep(60);
	effect_new_on_object_marker(environments\solo\m90_sacrifice\fx\beams\cold_ant_comp_beam_down_digitize.effect, composer, fx_composer_beam_down);
	object_set_function_variable(composer, slipspace_stew, 1, 0.0);
	effect_new_on_object_marker(environments\solo\m90_sacrifice\fx\rift\rift_beam_lensflare.effect, composer, fx_slipspace_rift_link);
end

// ------------------------------------------------------

//	Coldant Composer � Digitize Beam - Stage 5 --- MOVED to Composer Fire Beam trigger
script static void fx_composer_digitize()
	dprint("play_fx_composer_digitize_beam()");
end

script static void fx_engine_room_beams()
	print ("--- engine room beams ---");
	effect_new_between_points(environments\solo\m90_sacrifice\fx\beams\generator_room_beam.effect, fx_atr_beam_lt_01, fx_atr_beam_lb_01);
	effect_new_between_points(environments\solo\m90_sacrifice\fx\beams\generator_room_beam.effect, fx_atr_beam_lt_02, fx_atr_beam_lb_02);
	effect_new_between_points(environments\solo\m90_sacrifice\fx\beams\generator_room_beam.effect, fx_atr_beam_lt_03, fx_atr_beam_lb_03);
	effect_new_between_points(environments\solo\m90_sacrifice\fx\beams\generator_room_beam.effect, fx_atr_beam_lt_04, fx_atr_beam_lb_04);
	effect_new_between_points(environments\solo\m90_sacrifice\fx\beams\generator_room_beam.effect, fx_atr_beam_lt_05, fx_atr_beam_lb_05);
	effect_new_between_points(environments\solo\m90_sacrifice\fx\beams\generator_room_beam.effect, fx_atr_beam_lt_06, fx_atr_beam_lb_06);
	effect_new_between_points(environments\solo\m90_sacrifice\fx\beams\generator_room_beam.effect, fx_atr_beam_lt_07, fx_atr_beam_lb_07);
	effect_new_between_points(environments\solo\m90_sacrifice\fx\beams\generator_room_beam.effect, fx_atr_beam_lt_08, fx_atr_beam_lb_08);
	effect_new_between_points(environments\solo\m90_sacrifice\fx\beams\generator_room_beam.effect, fx_atr_beam_lt_09, fx_atr_beam_lb_09);
	effect_new_between_points(environments\solo\m90_sacrifice\fx\beams\generator_room_beam.effect, fx_atr_beam_lt_10, fx_atr_beam_lb_10);
	effect_new_between_points(environments\solo\m90_sacrifice\fx\beams\generator_room_beam.effect, fx_atr_beam_rt_01, fx_atr_beam_rb_01);
	effect_new_between_points(environments\solo\m90_sacrifice\fx\beams\generator_room_beam.effect, fx_atr_beam_rt_02, fx_atr_beam_rb_02);
	effect_new_between_points(environments\solo\m90_sacrifice\fx\beams\generator_room_beam.effect, fx_atr_beam_rt_03, fx_atr_beam_rb_03);
	effect_new_between_points(environments\solo\m90_sacrifice\fx\beams\generator_room_beam.effect, fx_atr_beam_rt_04, fx_atr_beam_rb_04);
	effect_new_between_points(environments\solo\m90_sacrifice\fx\beams\generator_room_beam.effect, fx_atr_beam_rt_05, fx_atr_beam_rb_05);
	effect_new_between_points(environments\solo\m90_sacrifice\fx\beams\generator_room_beam.effect, fx_atr_beam_rt_06, fx_atr_beam_rb_06);
	effect_new_between_points(environments\solo\m90_sacrifice\fx\beams\generator_room_beam.effect, fx_atr_beam_rt_07, fx_atr_beam_rb_07);
	effect_new_between_points(environments\solo\m90_sacrifice\fx\beams\generator_room_beam.effect, fx_atr_beam_rt_08, fx_atr_beam_rb_08);
	effect_new_between_points(environments\solo\m90_sacrifice\fx\beams\generator_room_beam.effect, fx_atr_beam_rt_09, fx_atr_beam_rb_09);
	effect_new_between_points(environments\solo\m90_sacrifice\fx\beams\generator_room_beam.effect, fx_atr_beam_rt_10, fx_atr_beam_rb_10);
end

// =================================================================================================
// =================================================================================================
// *** DIDACT SHIELD AND BEAMS ***
// =================================================================================================
// =================================================================================================

script static void f_fx_activate_beams()
	dprint("f_fx_activate_beams()");
	object_set_function_variable(dm_composerbeam1, beam_state, 1, 0);
	object_set_function_variable(dm_composerbeam2, beam_state, 1, 0);
end

script static void f_fx_deactivate_beam(object beam)
	dprint("f_fx_deactivate_beam()");
	object_set_function_variable(beam, beam_state, 0, 3);
	sleep(3*30);
	effect_kill_object_marker(environments\solo\m90_sacrifice\fx\beams\composer_beams.effect, beam, fx_arm);
	object_destroy(beam);
end

script static void f_fx_deactivate_shield()
	dprint("f_fx_deactivate_shield()");
	object_set_function_variable(dm_composer_shield, shield_state, 1, 1);
	sleep(1*30);
	effect_kill_object_marker(environments\solo\m90_sacrifice\fx\shields\composer_shield.effect, dm_composer_shield, fx_arm);
	object_destroy(dm_composer_shield);
end

script static void f_fx_shield_cleanup()
	// Used before the cinematic to clean these effects out of the bsp
	object_destroy(dm_composerbeam1);
	object_destroy(dm_composerbeam2);
	object_destroy(dm_composer_shield);
end

// =================================================================================================
// =================================================================================================
// *** pup_didact_ics ***
// =================================================================================================
// =================================================================================================

script static void f_create_restraints
	effect_new_on_object_marker("objects\characters\storm_cortana\fx\restraint\fx_beam_restraint_left",did_octopus,marker5);
	effect_new_on_object_marker("objects\characters\storm_cortana\fx\restraint\fx_beam_restraint_right",did_octopus,marker7);
	
	effect_new_on_object_marker(objects\characters\storm_cortana\fx\restraint\fx_restraint_arm.effect, pup_didact, fx_right_forearm);
	effect_new_on_object_marker(objects\characters\storm_cortana\fx\restraint\fx_restraint_arm.effect, pup_didact, fx_left_forearm);
	effect_new_on_object_marker(objects\characters\storm_cortana\fx\restraint\fx_restraint_calf.effect, pup_didact, fx_left_calf);
	effect_new_on_object_marker(objects\characters\storm_cortana\fx\restraint\fx_restraint_thigh.effect, pup_didact, fx_right_thigh);
end

script static void f_break_restraints_l
	dprint("f_break_restraints_l");
	effect_new_on_object_marker("objects\characters\storm_cortana\fx\restraint\fx_restraint_fail",pup_didact,fx_left_forearm);
	effect_kill_object_marker(objects\characters\storm_cortana\fx\restraint\fx_restraint_arm.effect, pup_didact, fx_left_forearm);
	effect_kill_object_marker("objects\characters\storm_cortana\fx\restraint\fx_beam_restraint_left",did_octopus,marker5);
end

script static void f_break_restraints_r
	dprint("f_break_restraints_r");
	effect_new_on_object_marker("objects\characters\storm_cortana\fx\restraint\fx_restraint_fail",pup_didact,fx_right_forearm);
	effect_kill_object_marker(objects\characters\storm_cortana\fx\restraint\fx_restraint_arm.effect, pup_didact, fx_right_forearm);
	effect_kill_object_marker("objects\characters\storm_cortana\fx\restraint\fx_beam_restraint_right",did_octopus,marker7);
end

script static void f_didact_open
	dprint("f_didact_open");
	effect_new_on_object_marker("objects\characters\storm_didact\fx\chestweakness",pup_didact,fx_chest_cavity);
end

script static void f_didact_close
	dprint("f_didact_close");
	effect_kill_object_marker("objects\characters\storm_didact\fx\chestweakness",pup_didact,fx_chest_cavity);
end

script static void f_remove_leg_restraints
	dprint("f_remove_leg_restraints");
	effect_kill_object_marker(objects\characters\storm_cortana\fx\restraint\fx_restraint_calf.effect, pup_didact, fx_left_calf);
	effect_kill_object_marker(objects\characters\storm_cortana\fx\restraint\fx_restraint_thigh.effect, pup_didact, fx_right_thigh);
end


// --- End m90_sacrifice_fx.hsc ---

// --- Begin m90_sacrifice_insertion.hsc ---
// =================================================================================================
// =================================================================================================
// *** GLOBALS ***
// =================================================================================================
// =================================================================================================


////////////////////////
//  INSERTION POINTS
////////////////////////
/*****************************************************************

	start    	// begin
	//TRENCHES
	ita
	itb
	itc
	itd
	ite
	iey				// eye
	
	iof  icr	iha iar// crash interior on foot beginning
	idd			//drop down
	iwa			// walls
	ipo itel 				// portals telport arcade
	iju				// jump begin
	ico				// coldant



*/




// Debug Options
global boolean b_debug 							= TRUE;
global boolean b_breakpoints				= FALSE;
global boolean b_md_print						=	TRUE;
global boolean b_debug_objectives 	= FALSE;
global boolean b_editor 						= editor_mode();
global boolean b_game_emulate				= FALSE;
global boolean b_cinematics 				= TRUE;
global boolean b_editor_cinematics 	= TRUE;
global boolean b_encounters				 	= TRUE;
global boolean b_dialogue 					= TRUE;
global boolean b_skip_intro					=	FALSE;
global boolean b_on_foot_cinematic_set = FALSE;

// Mission Started
global boolean b_mission_started 		=	FALSE;


// Zone Sets
global short s_zoneset_all							= 0;

// Insertion
global short s_start_idx							= 0;
global short s_trench_1_idx							= 1;
global short s_trench_2_idx							= 2;
global short s_eye_trans_idx						= 3;
global short s_eye_idx								= 4;
global short s_crash_idx 							= 5;
global short s_final_idx 							= 6;
global short s_arcade_idx 							= 7;
global short s_arcade_drop_idx 						= 8;
global short s_drop_teleports_idx 					= 9;
global short s_walls_teleport_room_idx 				= 10;
global short s_cin_m092_didact						= 11;
global short s_walls_coldant_idx 					= 12;	
global short s_teleport_rooms_idx 					= 13;
global short s_jump_idx 							= 14;
global short s_cin_m90_cavalry						= 15;
global short s_cin_m91_sacrifice					= 16;
global short s_cin_m93_kiss							= 17;
global short s_ending_game_idx 						= 18;
global short s_cin_m91b_sacrifice					= 19;
global short s_cin_m91_transition					= 20;
global short s_cin_m90_transition					= 21;





//cin_m090_cavalry
//cin_m091_sacrifice
//cin_m091b_sacrifice
//cin_m092_didact
//cin_m093_midnightkiss


/*
global short s_arcade_idx 							= 15;	//
global short s_arcade_drop_idx 					= 16;	// 
global short s_drop_teleports_idx 			= 17;	//
global short s_walls_teleport_room_idx 	= 18;	// 
global short s_teleport_rooms_idx 			= 23;	// 
*/
//global short s_bridges_idx 							= 16;	//



//global short s_jump_idx 								= 25;	//
//global short s_coldant_idx 							= 26;	// 

global short s_insertion_index		= -1;
global short s_zoneset_index			= -1;
//global short s_current_insertion_index 		= -1;
//global short s_insertion_index_start			= 1;
global short INSERTION_INDEX_CINEMATIC_OBS		= -1;
global short INSERTION_INDEX_CINE_CAV			= 0;
global short INSERTION_INDEX_CRASH				= 1;
global short INSERTION_INDEX_JUMP				= 2;

global short INSERTION_INDEX_START				= 3;
global short INSERTION_INDEX_TRENCH_A			= 3;
global short INSERTION_INDEX_TRENCH_B			= 4;
global short INSERTION_INDEX_TRENCH_C			= 5;
global short INSERTION_INDEX_TRENCH_D			= 6;
global short INSERTION_INDEX_TRENCH_E			= 7;
global short INSERTION_INDEX_EYE				= 8;
global short INSERTION_INDEX_DROPDOWN			= 9;
global short INSERTION_INDEX_TELEPORT			= 10;
global short INSERTION_INDEX_WALLS				= 11;
global short INSERTION_INDEX_COLDANT			= 12;
global short INSERTION_INDEX_END				= 13;
global short INSERTION_INDEX_ENGINE_ROOM		= 14;
global short INSERTION_INDEX_NOTLAB				= 15;
global short INSERTION_INDEX_END_CINEMATIC		= 16;
global short INSERTION_INDEX_SPACE_END			= 17;

global short INSERTION_INDEX_CIN_91				= 18;
global short INSERTION_INDEX_CIN_91B			= 19;

global short INSERTION_INDEX_CIN_92				= 20;
global short INSERTION_INDEX_CIN_93				= 21;
//global short s_insertion_index_onfoot_start 		= 1;


// =================================================================================================
// =================================================================================================
// *** INSERTIONS ***
// =================================================================================================
// =================================================================================================

// =================================================================================================
// STATION EXIT
// =================================================================================================


script static void icin()
	
	f_insertion_reset( INSERTION_INDEX_CINE_CAV );
end

// accessible by player (alpha)
script static void ins_opening_cin()
	if b_debug then
		print ("*** INSERTION POINT: OPENING CIN***");
	end
	//s_insertion_index = INSERTION_INDEX_CINE_CAV;
	// Play the intro cinematics here when we get one
	//f_insertion_zoneload( s_start_idx, INSERTION_INDEX_CINE_CAV, FALSE );
	//f_insertion_teleport( pts_insertion_start.p0, pts_insertion_start.p1, pts_insertion_start.p2, pts_insertion_start.p3 );
	if (b_cinematics and (not b_editor) or (b_editor_cinematics)) then
			dprint( "CINEMATIC - cin_m090_cavalry: ENTER" );		
			b_OpeningIntroStart = TRUE;
		//	player_disable_movement (TRUE);
			//cinematic_show_letterbox (TRUE);			
			//nar_intro();
			//sleep_s(2);
			
			cinematic_enter( cin_m090_cavalry, TRUE );
			cinematic_suppress_bsp_object_creation( TRUE );
			f_insertion_zoneload( s_cin_m90_cavalry, INSERTION_INDEX_CINE_CAV, FALSE );
			cinematic_suppress_bsp_object_creation( FALSE );
			
			hud_play_global_animtion( screen_fade_out );
			hud_stop_global_animtion( screen_fade_out );
			
			f_start_mission( cin_m090_cavalry );
			cinematic_exit_no_fade( cin_m090_cavalry, TRUE ); 
		
			dprint( "CINEMATIC - cin_m090_cavalry: EXITED" );				
	end

	thread( ins_trench() );
	//thread( ins_crash_on_foot() );
	// music progression doesn't need to be set since this is the beginning of the mission
end




script static void itr()
	f_insertion_reset( INSERTION_INDEX_TRENCH_A );
end

script static void ita()
	f_insertion_reset( INSERTION_INDEX_TRENCH_A );
end




script static void ins_trench()
	if b_debug then
		print ("*** INSERTION POINT: TRENCH A ***");
	end
		player_disable_movement (TRUE);
		//s_insertion_index = INSERTION_INDEX_START;	
		f_insertion_zoneload( s_start_idx, INSERTION_INDEX_TRENCH_A, FALSE );
		f_insertion_playerwait();
		dprint("wot");
		f_space_particles_on( TRUE );
		dprint("tr a teleport");
		f_insertion_teleport( pts_insertion_start.p0, pts_insertion_start.p1, pts_insertion_start.p2, pts_insertion_start.p3 );
		wake ( f_flight_start_init );
		dprint("mission started");
		sleep(1);
		wake(f_trench_main);
		b_Init_Flight = TRUE;
		b_mission_started = TRUE;
		f_bomb_icon( FALSE );
		player_disable_movement (FALSE);

		// music - set progression index so that the region-based music triggering will proceed correctly
		music_start('Play_mus_m90');
		b_m90_music_progression = 20;	
end

// =================================================================================================
// Trench b
// =================================================================================================

script static void itb()
	//ins_trench_b();
	f_insertion_reset( INSERTION_INDEX_TRENCH_B );
end

script static void ins_trench_b()
	if b_debug then
		print ("*** INSERTION POINT: TRENCH B ***");
	end




		f_insertion_zoneload( s_trench_1_idx, INSERTION_INDEX_TRENCH_B, FALSE );
		f_insertion_playerwait();
		f_space_particles_on( TRUE );
		object_teleport_to_ai_point (player0(), ps_trench_b_ins.p0);
		
		object_create(sabre_trench_b);
		sleep(1);
		vehicle_load_magic (sabre_trench_b, "warthog_d", player0());
		
	 	b_mission_started = TRUE;
	 	fade_in (0, 0, 0, 0);
		sleep( 1 );
		wake(f_trench_main);
		music_start('Play_mus_m90');
		b_m90_music_progression = 30;	
end


// =================================================================================================
// Trench C
// =================================================================================================

script static void itc()

	ins_trench_c();
end

script static void ins_trench_c()
	if b_debug then
		print ("*** INSERTION POINT: TRENCH C ***");
	end
	f_m90_reset_completetion_flags();
	s_zoneset_index = s_trench_1_idx;
	
	thread(f_master_cleanup_m90());	
	switch_zone_set ("trench_1");
	
	sleep (1);
	
	if b_debug then
		print ("::: INSERTION: Waiting for (s_trans_02) to fully load...");
	end
		
	sleep_until (current_zone_set_fully_active() == s_zoneset_index	, 1);
	dprint("create sabre");

	if b_debug then 
		print ("::: INSERTION: Finished loading (s_trans_02)");
	end
	
	sleep (1);

	b_mission_started = TRUE;
	object_create(sabre_trench_c);

	object_teleport_to_ai_point (player0(), ps_trench_c.p0);

	sleep(1);	
	vehicle_load_magic (sabre_trench_c, "warthog_d", player0());

	fade_in (0, 0, 0, 0);
	wake(f_trench_main);
	music_start('Play_mus_m90');
	b_m90_music_progression = 50;
end




// =================================================================================================
// Trench D
// =================================================================================================

script static void itd()
	ins_trench_d();
end

script static void ins_trench_d()
	if b_debug then
		print ("*** INSERTION POINT: TRENCH D ***");
	end
	f_m90_reset_completetion_flags();
	s_zoneset_index = s_trench_2_idx;



	
	thread(f_master_cleanup_m90());	
	switch_zone_set ("trench_2");
	
	sleep (1);
	
	if b_debug then
		print ("::: INSERTION: Waiting for (trench_d) to fully load...");
	end
		
	sleep_until (current_zone_set_fully_active() == s_zoneset_index	, 1);
	dprint("create sabre");

	if b_debug then 
		print ("::: INSERTION: Finished loading (trench_d)");
	end
	
	sleep (1);

	b_mission_started = TRUE;
	object_create(sabre_trench_d);

	object_teleport_to_ai_point (player0(), pts_insertion_other.p2);

	sleep(1);	
	vehicle_load_magic (sabre_trench_d, "warthog_d", player0());

	fade_in (0, 0, 0, 0);
	wake(f_trench_main);
	music_start('Play_mus_m90');
	b_m90_music_progression = 70;
end


// =================================================================================================
// Trench E
// =================================================================================================

script static void ite()
	ins_trench_e();
end

script static void ins_trench_e()
	if b_debug then
		print ("*** INSERTION POINT: TRENCH E***");
	end
	f_m90_reset_completetion_flags();
	s_zoneset_index = s_trench_2_idx;



	
	thread(f_master_cleanup_m90());	
	switch_zone_set ("trench_2");
	
	sleep (1);
	
	if b_debug then
		print ("::: INSERTION: Waiting for (trench_d) to fully load...");
	end
		
	sleep_until (current_zone_set_fully_active() == s_zoneset_index	, 1);
	dprint("create sabre");

	if b_debug then 
		print ("::: INSERTION: Finished loading (trench_d)");
	end
	
	sleep (1);

	b_mission_started = TRUE;
	object_create(sabre_trench_e);

	object_teleport_to_ai_point (player0(), pts_insertion_other.p0);

	sleep(1);	
	vehicle_load_magic (sabre_trench_e, "warthog_d", player0());

	fade_in (0, 0, 0, 0);
	wake(f_trench_main);
	music_start('Play_mus_m90');
	b_m90_music_progression = 80;
end
// =================================================================================================
// EYE
// =================================================================================================

script static void iey()
	ins_eye();
end

script static void ins_eye()
	if b_debug then
		print ("*** INSERTION POINT: EYE ***");
	end
		f_m90_reset_completetion_flags();
	s_zoneset_index = s_eye_trans_idx	;


	
	// Switch to correct zone set unless "set_all" is loaded 
	
	//create_player_ships (v_ship0, v_ship1, v_ship2, v_ship3);
	//load_player_ships (v_ship0, v_ship1, v_ship2, v_ship3);
	
	thread(f_master_cleanup_m90());	
	//switch_zone_set ("tren_e_eye");
	switch_zone_set ("eye_trans");
	sleep (1);
	
	if b_debug then
		print ("::: INSERTION: Waiting for (to_eye) to fully load...");
	end
		
	sleep_until (current_zone_set_fully_active() == s_zoneset_index	, 1);
	dprint("create sabre");

	if b_debug then 
		print ("::: INSERTION: Finished loading (tench_b_split)");
	end
	
	sleep (1);

	b_mission_started = TRUE;
	object_create(eye_sabre_1);
	object_create(eye_sabre_2);
	object_create(eye_sabre_3);
	object_create(eye_sabre_4);

	f_insertion_teleport( ins_eye_pts.p0, ins_eye_pts.p1, ins_eye_pts.p2, ins_eye_pts.p3 );
	sleep(1);	
	load_player_ships( eye_sabre_1, eye_sabre_3, eye_sabre_4, eye_sabre_4 );
	fade_in (0, 0, 0, 0);
	dprint("wake trench?");
	wake(f_trench_main);
	music_start('Play_mus_m90');
	b_m90_music_progression = 100;
end

script static void icin_91()
	f_insertion_reset( INSERTION_INDEX_CIN_91 );
end

script static void ins_cin_91()
	if b_debug then
		print ("*** INSERTION POINT: CIN 91***");
	end

	if (b_cinematics and (not b_editor) or (b_editor_cinematics)) then
			dprint( "CINEMATIC - cin_m091_sacrifice: ENTER" );		
			f_space_particles_on( false );
////			SetSkyObjectOverride("NONE");
			//f_insertion_teleport( ps_crash_start_ins.p0, ps_crash_start_ins.p1, ps_crash_start_ins.p2, ps_crash_start_ins.p3 );
			cinematic_enter( cin_m091_sacrifice, TRUE );
			cinematic_suppress_bsp_object_creation( TRUE );
			f_insertion_zoneload( s_cin_m91_sacrifice, INSERTION_INDEX_CIN_91, FALSE );
			cinematic_suppress_bsp_object_creation( FALSE );
			
			hud_play_global_animtion( screen_fade_out );
			hud_stop_global_animtion( screen_fade_out );
			
			f_start_mission( cin_m091_sacrifice );
			dprint("CINEMATIC - START EXIT");
			//cinematic_exit_no_fade( cin_m091_sacrifice, TRUE ); 
		
			dprint( "CINEMATIC - cin_m091_sacrifice: EXITED" );				
	end
	b_Eye_Complete = TRUE;
	thread( ins_cin_91b() );
	//thread( ins_crash_on_foot() );
end


script static void icin_91b()
	f_insertion_reset( INSERTION_INDEX_CIN_91b );
end

script static void ins_cin_91b()
	if b_debug then
		print ("*** INSERTION POINT: CIN 91b***");
	end

	if (b_cinematics and (not b_editor) or (b_editor_cinematics)) then
			dprint( "CINEMATIC - cin_m091b_sacrifice: ENTER" );		
			f_space_particles_on( false );
			//f_insertion_teleport( ps_crash_start_ins.p0, ps_crash_start_ins.p1, ps_crash_start_ins.p2, ps_crash_start_ins.p3 );
			cinematic_enter( cin_m091b_sacrifice, TRUE );
			cinematic_suppress_bsp_object_creation( TRUE );
			f_insertion_zoneload( s_cin_m91b_sacrifice, INSERTION_INDEX_CIN_91b, FALSE );
			cinematic_suppress_bsp_object_creation( FALSE );
			
			hud_play_global_animtion( screen_fade_out );
			hud_stop_global_animtion( screen_fade_out );
			
			f_start_mission( cin_m091b_sacrifice );
			f_insertion_zoneload( s_arcade_idx, INSERTION_INDEX_CRASH,  FALSE );
			f_insertion_teleport_invincible_forever( ps_crash_start_ins.p0, ps_crash_start_ins.p1, ps_crash_start_ins.p2, ps_crash_start_ins.p3 );
			cinematic_exit_no_fade( cin_m091b_sacrifice, TRUE ); 
		
			dprint( "CINEMATIC - cin_m091b_sacrifice: EXITED" );				
	end

	thread( ins_crash_on_foot() );

end



// =================================================================================================
//      00    N    N    FFFFF                
//     0  0   NN   N    F
//    0    0  N N  N    F
//    0    0  N  N N    FFF
//     0  0   N   NN    F
//      00    N    N    F
// =================================================================================================


// =================================================================================================
// DIDACT SHIP INTERIOR
// =================================================================================================


script static void icr()
		f_insertion_reset( INSERTION_INDEX_CRASH );

end

script static void iar()
		f_insertion_reset( INSERTION_INDEX_CRASH );
		
end

// RALLY POINT BRAVO
script static void ins_crash_on_foot()
	if b_debug then
		print ("*** INSERTION POINT: DIDCAT HALLS CRASH ***");
	end
		garbage_collect_now();
		sleep(1);
		b_Eye_Complete = TRUE;
		thread( f_eye_flight_cleanup() );
		sleep(1);
////		SetSkyObjectOverride("NONE");
		f_insertion_zoneload( s_arcade_idx, INSERTION_INDEX_CRASH,  TRUE );
		f_insertion_playerwait();
		f_space_particles_on( false );

		f_insertion_teleport( ps_crash_start_ins.p0, ps_crash_start_ins.p1, ps_crash_start_ins.p2, ps_crash_start_ins.p3 );
		f_insertion_playerprofile( default_single_respawn, FALSE );
		
	 	b_mission_started = TRUE;

	 	b_Eye_Complete = TRUE;
		
		b_TransitionCinEnd = TRUE; 	
	 	//if not b_on_foot_cinematic_set then
	 	f_m90_bomb_attach();
	 	f_m90_set_normal_g();	
	 	fade_in (0, 0, 0, 0);
	 	//end
		f_bomb_icon( TRUE );
		hud_play_global_animtion (screen_fade_in);
	
		hud_stop_global_animtion (screen_fade_in);
		
		music_start('Play_mus_m90');
		b_m90_music_progression = 110;
end


// =================================================================================================
// drop down
// =================================================================================================


script static void idd()
		f_insertion_reset( INSERTION_INDEX_DROPDOWN );
end

script static void ins_drop_down()
	if b_debug then
		print ("*** INSERTION POINT: Drop Down ***");
	end
		
		f_insertion_zoneload( s_arcade_drop_idx, INSERTION_INDEX_DROPDOWN, FALSE );
		f_insertion_playerwait();
		f_space_particles_on( false );
	
		f_insertion_teleport( ps_drop_down_ins.p0, ps_drop_down_ins.p1, ps_drop_down_ins.p2, ps_drop_down_ins.p3 );
		f_insertion_playerprofile( default_forerunner, FALSE );
	 	b_mission_started = TRUE;
		f_m90_set_normal_g();
	 	object_create( dm_dropdown_phantom );
	 	wake ( f_dropdown_finish_wait );
	 	f_m90_bomb_attach();
	 	f_bomb_icon( TRUE );
	 	b_arcade_complete = TRUE;
	 	fade_in (0, 0, 0, 0);

		music_start('Play_mus_m90');
		b_m90_music_progression = 120;
end



// =================================================================================================
// ENGINE ROOM
// =================================================================================================
script static void ier()
		f_insertion_reset( INSERTION_INDEX_ENGINE_ROOM );
end

script static void ins_engineroom()
	if b_debug then
		print ("*** INSERTION POINT: ENGINE ROOM ***");
	end


		f_insertion_zoneload( s_teleport_rooms_idx,INSERTION_INDEX_ENGINE_ROOM,  FALSE );
		f_insertion_playerwait();
		f_space_particles_on( false );

		f_insertion_teleport( ps_portals_ins.pER_1, ps_portals_ins.pER_2, ps_portals_ins.pER_3, ps_portals_ins.pER_4 );
		f_insertion_playerprofile( default_forerunner, FALSE );
	 	b_mission_started = TRUE;
		f_m90_set_normal_g();	
	 	fade_in (0, 0, 0, 0);
		sleep( 1 );
		dprint("==== FOR ART ONLY . NOT GAMEPLAY ===");
		dprint("==== FOR ART ONLY . NOT GAMEPLAY ===");
		dprint("==== FOR ART ONLY . NOT GAMEPLAY ===");
		object_create_folder( dms_teleport );

		object_create_folder( crs_teleport );
		
		music_start('Play_mus_m90');
		b_m90_music_progression = 130;
end

// =================================================================================================
// NOTLAB
// =================================================================================================
script static void inl()
		f_insertion_reset( INSERTION_INDEX_NOTLAB );
end

script static void ins_notlab()
	if b_debug then
		print ("*** INSERTION POINT: NOTLAB ***");
	end


		f_insertion_zoneload( s_teleport_rooms_idx,INSERTION_INDEX_NOTLAB,  FALSE );
		f_insertion_playerwait();
		f_space_particles_on( false );

		f_insertion_teleport( ps_portals_ins.pNL_1, ps_portals_ins.pNL_2, ps_portals_ins.pNL_3, ps_portals_ins.pNL_4 );
		f_insertion_playerprofile( default_forerunner, FALSE );
	 	b_mission_started = TRUE;
		f_m90_set_normal_g();	
	 	fade_in (0, 0, 0, 0);
		sleep( 1 );
		dprint("==== FOR ART ONLY . NOT GAMEPLAY ===");
		dprint("==== FOR ART ONLY . NOT GAMEPLAY ===");
		dprint("==== FOR ART ONLY . NOT GAMEPLAY ===");
		object_create_folder( dms_teleport );

		object_create_folder( crs_teleport );
		music_start('Play_mus_m90');
		b_m90_music_progression = 140;
end

// =================================================================================================
// WALLS
// =================================================================================================
script static void iwa()
		f_insertion_reset( INSERTION_INDEX_WALLS );
end

script static void ins_walls()
	if b_debug then
		print ("*** INSERTION POINT: walls ***");
	end

		b_teleport_complete = TRUE;

		f_insertion_zoneload( s_walls_coldant_idx, INSERTION_INDEX_WALLS,  FALSE );
		f_insertion_playerwait();
		f_space_particles_on( false );
	
		f_insertion_teleport( ps_walls_ins.p0, ps_walls_ins.p1, ps_walls_ins.p2, ps_walls_ins.p3 );
		f_insertion_playerprofile( default_forerunner, FALSE );
	 	b_mission_started = TRUE;
		f_bomb_icon( TRUE );
		sleep(1);
		dprint("create dms walls");
		object_create_folder( dms_walls );
		object_create_folder( crs_walls );
		f_m90_set_normal_g();
		sleep(1);
		f_m90_bomb_attach();
		b_teleport_complete = TRUE;
	 	fade_in (0, 0, 0, 0);
		
		music_start('Play_mus_m90');
		b_m90_music_progression = 140;

end


// =================================================================================================
// Portals over madison county
// =================================================================================================
script static void ipo()
		f_insertion_reset( INSERTION_INDEX_TELEPORT );
end

script static void itp()
		f_insertion_reset( INSERTION_INDEX_TELEPORT );
end

script static void ins_portals()
	if b_debug then
		print ("*** INSERTION POINT: PORTALS ***");
	end

		b_arcade_complete = TRUE;
		f_insertion_zoneload( s_drop_teleports_idx,INSERTION_INDEX_TELEPORT,  FALSE );
		f_insertion_playerwait();
		f_space_particles_on( false );

		f_insertion_teleport( ps_portals_ins.p0, ps_portals_ins.p1, ps_portals_ins.p2, ps_portals_ins.p3 );
		f_insertion_playerprofile( default_forerunner, FALSE );
	 	b_mission_started = TRUE;
		f_bomb_icon( TRUE );
		f_m90_set_normal_g();	
		b_m90_b_60_over = TRUE;
		wake( f_teleport_intro_crates );
		f_m90_bomb_attach();
	 	fade_in (0, 0, 0, 0);
		sleep( 1 );

		
end



// =================================================================================================
// JUMP
// =================================================================================================
// RALLY POINT CHARLIE
script static void iju()
	//ins_jump();
	f_insertion_reset( INSERTION_INDEX_JUMP );
end

script static void ins_jump()
	if b_debug then
		print ("*** INSERTION POINT: JUMP ***");
	end
////		SetSkyObjectOverride("m90_sky");
		b_walls_complete = TRUE;
		f_insertion_zoneload( s_jump_idx, INSERTION_INDEX_JUMP, FALSE );
		f_insertion_playerwait();
		f_fx_activate_beams();
		f_space_particles_on( false );
	
		f_insertion_teleport( ps_the_jump_ins.p0, ps_the_jump_ins.p1, ps_the_jump_ins.p2, ps_the_jump_ins.p3 );
		f_insertion_playerprofile( forerunner_power, FALSE );
	 	b_mission_started = TRUE;
		f_bomb_icon( TRUE );
		f_m90_set_normal_g();	
		f_m90_bomb_attach();
	 	fade_in (0, 0, 0, 0);
		sleep( 1 );

		wake(f_jump_init);
		music_start('Play_mus_m90');
		b_m90_music_progression = 160;
end


// =================================================================================================
// COLDANT
// =================================================================================================
script static void ico()
	f_insertion_reset( INSERTION_INDEX_COLDANT );
end

script static void ins_coldant()
	if b_debug then
		print ("*** INSERTION POINT: COLDANT ***");
	end
////		SetSkyObjectOverride("m90_sky");
		b_walls_complete = TRUE;

		f_insertion_zoneload( s_final_idx, INSERTION_INDEX_COLDANT, FALSE );
		f_insertion_playerwait();
		f_fx_activate_beams();
		f_space_particles_on( false );
	
		f_insertion_teleport( ps_coldant_ins.p0, ps_coldant_ins.p1, ps_coldant_ins.p2, ps_coldant_ins.p3 );
		f_insertion_playerprofile( forerunner_power, FALSE );
	 	b_mission_started = TRUE;
		f_bomb_icon( TRUE );
	 	dprint("---- fade in ----");
		f_m90_set_normal_g();
		f_m90_bomb_attach();
	 	fade_in (0, 0, 0, 0);
		sleep( 1 );
		f_jump_set_doors();
		music_start('Play_mus_m90');
		b_m90_music_progression = 170;
end


script static void icin_92()
	f_insertion_reset( INSERTION_INDEX_CIN_92 );
end

script static void ins_cin_92()
	if b_debug then
		print ("*** INSERTION POINT: CIN 92***");
	end

	if (b_cinematics and (not b_editor) or (b_editor_cinematics)) then
		dprint( "CINEMATIC - cin_m092_didact: ENTER" );
		
		thread(f_fx_shield_cleanup()); // cleans the shield effects out of the bsp
			
		cinematic_enter( cin_m092_didact, TRUE );
		f_m90_bomb_detach();
		pup_stop_show( l_didact_loop_pup );	
		//cinematic_suppress_bsp_object_creation( TRUE );
		//f_insertion_zoneload( s_cin_m092_didact, INSERTION_INDEX_CIN_92, FALSE );
		//cinematic_suppress_bsp_object_creation( FALSE );
		
		hud_play_global_animtion( screen_fade_out );
		hud_stop_global_animtion( screen_fade_out );
		
		f_start_mission( cin_m092_didact );
		cinematic_exit_no_fade( cin_m092_didact, TRUE ); 
	
		dprint( "CINEMATIC - cin_m092_didact: EXITED" );				
	end

	//f_insertion_zoneload( s_final_idx, INSERTION_INDEX_COLDANT, FALSE );
	//f_insertion_playerwait();
	f_insertion_teleport( ps_ins_cinematic_end.p4, ps_ins_cinematic_end.p5, ps_ins_cinematic_end.p6, ps_ins_cinematic_end.p7 );
	wake( f_comp_start_ics );

end



script static void icin_93()
	f_insertion_reset( INSERTION_INDEX_CIN_93 );
end

script static void ins_cin_93()
	if b_debug then
		print ("*** INSERTION POINT: CIN 93***");
	end
		
	if (b_cinematics and (not b_editor) or (b_editor_cinematics)) then
			dprint( "CINEMATIC - cin_m093_kiss: ENTER" );		

			thread( f_cold_maelstrom_kill() );
			cinematic_enter( cin_m093_mk, TRUE );
			cinematic_suppress_bsp_object_creation( TRUE );
			
			f_insertion_zoneload( s_cin_m93_kiss, INSERTION_INDEX_CIN_93, FALSE );
			f_insertion_teleport_invincible_forever( ps_space_ending.p4, ps_space_ending.p5, ps_space_ending.p6, ps_space_ending.p7 );
			cinematic_suppress_bsp_object_creation( FALSE );
			
			hud_play_global_animtion( screen_fade_out );
			hud_stop_global_animtion( screen_fade_out );
			
			f_end_cinematic( cin_m093_mk );
			//cinematic_exit_no_fade( cin_m093_mk, TRUE ); 
		
			dprint( "CINEMATIC - cin_m093_kiss: EXITED" );				
	end

	//thread( ins_space_end() );
	//wake( f_m90_ending );
	game_won();
end





// =================================================================================================
// COLDANT
// =================================================================================================
script static void icin_end()
	f_insertion_reset( INSERTION_INDEX_END_CINEMATIC );
end

script static void ins_end_cinematic()
	if b_debug then
		print ("*** INSERTION POINT: CINEMATIC END ***");
	end

		
		f_insertion_zoneload( s_final_idx, INSERTION_INDEX_COLDANT, FALSE );
		f_insertion_playerwait();
		f_space_particles_on( false );
		thread(f_coldant_create_bridge() );
		f_insertion_teleport( ps_ins_cinematic_end.p0, ps_ins_cinematic_end.p1, ps_ins_cinematic_end.p2, ps_ins_cinematic_end.p3 );
		f_insertion_playerprofile( forerunner_power, FALSE );
	 	b_mission_started = TRUE;

	 	dprint("---- fade in ----");
	 	f_bomb_icon( TRUE );
		f_m90_set_normal_g();	
		f_m90_bomb_attach();
		thread( f_cold_maelstrom_all() );
		l_pup_composer = pup_play_show(pup_composer);
		g_composer_state = 5;
		//thread( f_cold_shield_kill() );
	 	fade_in (0, 0, 0, 0);
		sleep( 1 );
		f_jump_cleanup_eye_ap();
		wake(f_comp_enter_core);

end





// =================================================================================================
// SPACE END
// =================================================================================================
script static void iend()
	f_insertion_reset( INSERTION_INDEX_SPACE_END );
	
end

script static void ins_space_end()
	if b_debug then
		print ("*** INSERTION POINT: SPACE END ***");
	end
		fade_out(1,1,1,0 );
		//sleep(45);
		thread( f_cold_cleanup() );
		physics_set_gravity( 0.0 );
		
		//object_teleport_to_ai_point( player1(), ps_space_ending.p0 );
		f_insertion_zoneload( s_ending_game_idx, INSERTION_INDEX_SPACE_END, FALSE );
		volume_teleport_players_not_inside ( tv_sacrifice_space_vol, cf_floater_end );
		//f_insertion_teleport( ps_space_ending.p0, ps_space_ending.p1, ps_space_ending.p2, ps_space_ending.p3 );
		//f_insertion_playerwait();
		f_space_particles_on( false );
		//f_m90_set_normal_g();	
		
		
		//f_insertion_playerprofile( forerunner_power, FALSE );
	 	b_mission_started = TRUE;

		f_bomb_icon( FALSE );
		sleep( 1 );
		wake(f_space_end_init);
end
// =================================================================================================
// =================================================================================================
// *** CLEANUP ***
// =================================================================================================
// =================================================================================================

// =================================================================================================
// STATION
// =================================================================================================

script static void f_trench_cleanup()
	sleep_forever (f_trench_cleanup);
end

// =================================================================================================
// =================================================================================================
// UTILITY
// =================================================================================================
// =================================================================================================

// =================================================================================================
// Loadouts
// =================================================================================================






script static void f_insertion_teleport( point_reference pr_p0, point_reference pr_p1, point_reference pr_p2, point_reference pr_p3 )
	
	physics_set_gravity( 0.0 );
	object_cannot_take_damage( players() );
	if ( player_valid( player0() ) ) then
		dprint("player 1 valid");
		object_teleport_to_ai_point( player0(), pr_p0 );
	end

	if ( player_valid( player1() ) ) then
	dprint("player 2 valid");
		object_teleport_to_ai_point( player1(), pr_p1 );
	end
	if ( player_valid( player2() ) ) then
	dprint("player 3 valid");
		object_teleport_to_ai_point( player2(), pr_p2 );
	end
	if ( player_valid( player3() ) ) then
	dprint("player 4 valid");
		object_teleport_to_ai_point( player3(), pr_p3 );
	end
	if not ( player_valid( player0() )) and not ( player_valid( player1() )) and not ( player_valid( player2() )) and not ( player_valid( player3() ) ) then
		dprint("NO PLAYER IS VALID, ABANDON SHIP");
	end
	sleep( 1 );
	physics_set_gravity( 1.0 );
	object_can_take_damage( players() );
end

script static void f_insertion_teleport_invincible_forever( point_reference pr_p0, point_reference pr_p1, point_reference pr_p2, point_reference pr_p3 )
	
	physics_set_gravity( 0.0 );
	object_cannot_take_damage( players() );
	if ( player_valid( player0() ) ) then
		dprint("player 1 valid");
		object_teleport_to_ai_point( player0(), pr_p0 );
	end

	if ( player_valid( player1() ) ) then
	dprint("player 2 valid");
		object_teleport_to_ai_point( player1(), pr_p1 );
	end
	if ( player_valid( player2() ) ) then
	dprint("player 3 valid");
		object_teleport_to_ai_point( player2(), pr_p2 );
	end
	if ( player_valid( player3() ) ) then
	dprint("player 4 valid");
		object_teleport_to_ai_point( player3(), pr_p3 );
	end
	if not ( player_valid( player0() )) and not ( player_valid( player1() )) and not ( player_valid( player2() )) and not ( player_valid( player3() ) ) then
		dprint("NO PLAYER IS VALID, ABANDON SHIP");
	end
	sleep( 1 );

end
// =================================================================================================
// Insertion Fade
// =================================================================================================

global boolean b_insertion_fade_in = FALSE;
script dormant f_insertion_fade_in

	sleep_until (b_insertion_fade_in);
	// this is a global script
	insertion_fade_to_gameplay();
end




script static zone_set f_zoneset_get( short s_index )
local zone_set zs_return = "start";
	if ( s_index == s_cin_m90_cavalry ) then
		zs_return = "cin_m90_cavalry";
	end
	if ( s_index == s_start_idx ) then
	 zs_return = "start";
	end
	if ( s_index == s_trench_1_idx ) then
	 zs_return = "trench_1";
	end
	if ( s_index == s_trench_2_idx ) then
	 zs_return = "trench_2";
	end
	if ( s_index == s_eye_trans_idx ) then
	 zs_return = "eye_trans";
	end
	if ( s_index == s_cin_m91_sacrifice ) then
	 zs_return = "cin_m91_sacrifice";
	end
	if ( s_index == s_cin_m91b_sacrifice ) then
	 zs_return = "cin_m91b_sacrifice";
	end
	if ( s_index == s_eye_idx ) then
	 zs_return = "eye";
	end
	if ( s_index == s_jump_idx ) then
	 zs_return = "jump";
	end
	if ( s_index == s_final_idx ) then
	 zs_return = "final";
	end
	if ( s_index == s_arcade_idx ) then
	 zs_return = "arcade";
	end
	if ( s_index == s_arcade_drop_idx ) then
	 zs_return = "arcade_drop";
	end
	if ( s_index == s_drop_teleports_idx ) then
	 zs_return = "drop_teleports";
	end
	if ( s_index == s_walls_teleport_room_idx ) then
	 zs_return = "walls_teleport_room";
	end
	if ( s_index == s_teleport_rooms_idx ) then
	 zs_return = "teleport_rooms";
	end	
	if ( s_index == s_walls_coldant_idx ) then
	 zs_return = "walls_coldant";
	end		
	if ( s_index == s_cin_m91_sacrifice ) then
	 zs_return = "cin_m91_sacrifice";
	end
	if ( s_index == s_cin_m092_didact ) then
	 zs_return = "cin_m092_didact";
	end
	if ( s_index == s_cin_m93_kiss ) then
	 zs_return = "cin_m93_kiss";
	end	
	if ( s_index == s_ending_game_idx ) then
	 zs_return = "ending_game";
	end
	// return
	zs_return;
end  


script static void f_insertion_zoneload( short s_index, short s_insertion_index_def, boolean b_check_loaded )

	// set the insertion index variable
	s_insertion_index = s_insertion_index_def;
	//s_insertion_index = s_index;  /// bad for me  s_insertion_index != s_index
	// Switch to correct zone set unless "set_all" is loaded 
	dprint( "::: INSERTION: LOAD ZONE" );
	if ( (not b_check_loaded) or (current_zone_set_fully_active() != s_insertion_index) ) then
		
		switch_zone_set( f_zoneset_get(s_index) );
		sleep( 1 );

		dprint( "::: INSERTION: Waiting for zone set to fully load..." );
		sleep_until( current_zone_set_fully_active() == s_index, 1 );
		dprint( "::: INSERTION: Finished loading zone set" );
		sleep( 1 );
	end
	
end

script static void f_insertion_playerwait()

	if ( editor_mode() ) then
		dprint( "::: INSERTION: PLAYER WAIT" );
		sleep_until( player_count() > 0, 1 );
	end
	
end

script static void f_insertion_reset( short s_index )
	f_m90_reset_completetion_flags();
	sleep(1);
	game_insertion_point_set( s_index );
	if ( b_game_emulate or (not editor_mode()) ) then
		dprint("map reset");
		map_reset();
	else
		dprint("insertion index load");
		f_insertion_index_load( s_index );
	end
	
end

script static void f_insertion_playerprofile( starting_profile sp_profile, boolean b_wait_equipment )

	//dprint( "::: INSERTION: STARTING PROFILE" );
	if ( player_valid( player0() ) ) then
		//dprint( "::: INSERTION: STARTING PROFILE: P0" );
		unit_add_equipment( player0(), sp_profile, TRUE, FALSE );
	end
	if ( player_valid( player1() ) ) then
		//dprint( "::: INSERTION: STARTING PROFILE: P1" );
		unit_add_equipment( player1(), sp_profile, TRUE, FALSE );
	end
	if ( player_valid( player2() ) ) then
		//dprint( "::: INSERTION: STARTING PROFILE: P2" );
		unit_add_equipment( player2(), sp_profile, TRUE, FALSE );
	end
	if ( player_valid( player3() ) ) then
		//dprint( "::: INSERTION: STARTING PROFILE: P3" );
		unit_add_equipment( player3(), sp_profile, TRUE, FALSE );
	end
	
	if ( b_wait_equipment ) then
		if ( player_valid( player0() ) ) then
			sleep_until( unit_has_any_equipment(player0()), 1 );
		end
		if ( player_valid( player2() ) ) then
			sleep_until( unit_has_any_equipment(player1()), 1 );
		end
		if ( player_valid( player3() ) ) then
			sleep_until( unit_has_any_equipment(player2()), 1 );
		end
		if ( player_valid( player3() ) ) then
			sleep_until( unit_has_any_equipment(player3()), 1 );
		end
	end
	
	sleep( 1 );
	
end



script static void f_insertion_index_load( short s_insertion )
local boolean b_started = FALSE;
	dprint( "::: f_insertion_index_load :::" );
	inspect( game_insertion_point_get() );
	
	if (s_insertion == INSERTION_INDEX_CINE_CAV or s_insertion == INSERTION_INDEX_CINEMATIC_OBS) then
		b_started = TRUE;
		ins_opening_cin();
	end
	if (s_insertion == INSERTION_INDEX_START) then
		b_started = TRUE;
		ins_trench();
	end
	if (s_insertion == INSERTION_INDEX_TRENCH_A) then
		b_started = TRUE;
		ins_trench();
	end
	if (s_insertion == INSERTION_INDEX_TRENCH_B) then
		b_started = TRUE;
		ins_trench_b();
	end
	if (s_insertion == INSERTION_INDEX_TRENCH_C) then
		b_started = TRUE;
		ins_trench_c();
	end
	if (s_insertion == INSERTION_INDEX_TRENCH_D) then
		b_started = TRUE;
		ins_trench_d();
	end
	if (s_insertion == INSERTION_INDEX_TRENCH_E) then
		b_started = TRUE;
		ins_trench_e();
	end
	if (s_insertion == INSERTION_INDEX_EYE) then
		b_started = TRUE;
		ins_eye();
	end
	
	if (s_insertion == INSERTION_INDEX_CIN_91) then
		b_started = TRUE;
		ins_cin_91();
	end

	if (s_insertion == INSERTION_INDEX_CIN_91b) then
		b_started = TRUE;
		ins_cin_91b();
	end
		
	if (s_insertion == INSERTION_INDEX_CRASH) then
		b_started = TRUE;
		ins_crash_on_foot();
	end
	if (s_insertion == INSERTION_INDEX_DROPDOWN) then
		b_started = TRUE;
		ins_drop_down();
	end
	if (s_insertion == INSERTION_INDEX_TELEPORT) then
		b_started = TRUE;
		ins_portals();
	end
	if (s_insertion == INSERTION_INDEX_NOTLAB) then
		b_started = TRUE;
		ins_notlab();
	end	
	
	if (s_insertion == INSERTION_INDEX_ENGINE_ROOM) then
		b_started = TRUE;
		ins_engineroom();
	end		

	if (s_insertion == INSERTION_INDEX_WALLS) then
		b_started = TRUE;
		ins_walls();
	end
	if (s_insertion == INSERTION_INDEX_JUMP) then
		b_started = TRUE;
		ins_jump();
	end

	if (s_insertion == INSERTION_INDEX_COLDANT) then
		b_started = TRUE;
		ins_coldant();
	end

	if (s_insertion == INSERTION_INDEX_CIN_92) then
		b_started = TRUE;
		ins_cin_92();
	end
	
	
	if (s_insertion == INSERTION_INDEX_CIN_93) then
		b_started = TRUE;
		ins_cin_93();
	end

	
	if (s_insertion == INSERTION_INDEX_END_CINEMATIC) then
		b_started = TRUE;
		ins_end_cinematic();
	end

	if (s_insertion == INSERTION_INDEX_SPACE_END) then
		b_started = TRUE;
		dprint("NO LONGER AVAILABLE");
		//ins_space_end();
	end

	/*
	if (s_insertion == INSERTION_INDEX_END) then
		b_started = TRUE;
		ins_space();
	end
*/
	
	if ( not b_started ) then
		dprint( "f_insertion_index_load: ERROR: Failed to find insertion point index to load" );
		inspect( s_insertion );
	end

end

script static void f_m90_reset_completetion_flags()
	dprint("reseting completion flags");
	b_Eye_Complete = FALSE;
	b_trench_a_complete = FALSE;
	b_trench_b_complete = FALSE;
	b_trench_d_complete = FALSE;
	b_trench_e_complete = FALSE;
	b_walls_complete = FALSE;
	b_arcade_complete = FALSE;
	b_teleport_complete = FALSE;
	b_coldant_complete = FALSE;
	b_Init_Flight = FALSE;
	
	
	thread( f_flight_stop_direction_check() );
end
// --- End m90_sacrifice_insertion.hsc ---

// --- Begin m90_sacrifice_mission.hsc ---
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343
//
// Mission: 					m90_sacrifice
//	Insertion Points:	start (or ist)	- Beginning
//										
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343

// =================================================================================================
// =================================================================================================
// *** GLOBALS ***
// =================================================================================================
// =================================================================================================

global real r_real_gravity	= 1.0;
global real r_low_gravity 	= 0.23;
global real r_zero_gravity	=	0.0;
global boolean b_ForceCleanup = FALSE;
global boolean b_M90_COMPLETE = FALSE;
global boolean b_show_intro_cinematic = FALSE;
global real DEF_R_OBJECTIVE_START 			= 0.0;
global real DEF_R_OBJECTIVE_GENERATOR 			= 21.0;
global real DEF_R_OBJECTIVE_CANNONS 			= 1.0;
global real DEF_R_OBJECTIVE_ON_FOOT_GO 			= 6.0;
global real DEF_R_OBJECTIVE_ON_FOOT_CORE 			= 7.0;
global real DEF_R_OBJECTIVE_DESTROY_SHIELDS 			= 8.0;
global real DEF_R_OBJECTIVE_DESTROY_CORE 			= 9.0;
global real DEF_R_OBJECTIVE_ALRIGHT_MESSAGE 			= 18.0;
global real DEF_R_OBJECTIVE_BOMB 			= 10.0;
global real DEF_R_OBJECTIVE_CORTANA_IN 			= 11.0;
global real DEF_R_OBJECTIVE_WALLS_HOLD 			= 12.0;
global boolean b_bomb_icon_on = FALSE;
// =================================================================================================
// =================================================================================================
// *** START-UP ***
// =================================================================================================
// =================================================================================================

script startup m90_sacrifice()		
	if b_debug then 
		print_difficulty(); 
	end
	
	dprint ("::: M90 - SACRIFICE :::");

	thread( f_disable_all_trench_kill_vols() );

	

	objectives_clear();
	
	fade_out (0, 0, 0, 0);
	wake(f_m90_sacrifice_end);



	//b_game_emulate = TRUE;

	// ============================================================================================
	// STARTING THE GAME
	// ============================================================================================
	if (b_game_emulate or ((b_editor != 1) and (player_count() > 0))) then
		// if true, start the game
		start();
		// else just fade in, we're in edit mode
	elseif b_debug then
				dprint (":::  editor mode  :::");
				fade_in (0, 0, 0, 0);
	end


		

end

script dormant f_m90_sacrifice_end()
	sleep_until( b_M90_COMPLETE == TRUE, 10 );
		game_won();

end


script command_script cs_knight_rider()

	dprint("knight cs");
	cs_phase_in();

end

script static void f_disable_all_trench_kill_vols()

	f_trench_activate_death_zone( kill_trench_a_tv, false );
	f_trench_activate_death_zone( kill_trench_b_tv, false );
	f_trench_activate_death_zone( kill_trench_e_tv, false );
	f_trench_activate_death_zone( kill_eye_tunnel, false );	
	f_trench_activate_death_zone( kill_trans_ab_1, false );	
	f_trench_activate_death_zone( kill_trans_bc_1, false );	
	f_trench_activate_death_zone( kill_trans_bc_2, false );		
	f_trench_activate_death_zone( kill_trench_c_tv, false );	
	f_trench_activate_death_zone( kill_trans_cd_1, false );	
	f_trench_activate_death_zone( kill_trench_d, false );	
	f_trench_activate_death_zone( kill_trans_de_1, false );	
	
end
/*
script command_script cs_stay_in_turret()
    dprint("Initializing Turret.");
    //cs_shoot (false);
    cs_enable_targeting (true);
    cs_enable_moving (true);
    cs_enable_looking (true);
    cs_abort_on_damage (false);
    cs_abort_on_alert (false);
    //ai_disregard (ai_actors (ai_current_actor), true);
    ai_braindead (ai_current_actor, TRUE);
    object_hide( ai_vehicle_get(ai_current_actor), true );   
    CreateDynamicTask(0, 0, ai_vehicle_get(ai_current_actor), OnTurretActivated, 0);
end


script static void OnTurretActivated(long taskIndex, long taskType, unit targetObj)
   ActivateTurret(object_get_ai(vehicle_driver(targetObj)), targetObj);
end

script static void ActivateTurret(ai turretPilot, unit turretVeh)
    dprint("Turret Activated");
    
    effect_new_on_object_marker (objects\characters\storm_pawn\fx\pawn_phase_in.effect, ai_vehicle_get(turretPilot), "target_turret" );
    sleep(10);
    object_hide( ai_vehicle_get(turretPilot), false);
    effect_new_on_object_marker (objects\characters\storm_pawn\fx\pawn_phase_in.effect, ai_vehicle_get(turretPilot), "target_turret" );

    ai_braindead (turretPilot, false);
    ai_disregard (ai_actors (turretPilot), false);
   // cs_shoot (turretPilot, true);
end
*/

script command_script cs_bishop_spawn()
        print("bishop sleeping");
        ai_enter_limbo(ai_current_actor);
        CreateDynamicTask(TT_SPAWN, FT_BIRTHER, ai_get_object(ai_current_actor), OnCompleteProtoSpawn, 0);
end

script static void OnCompleteProtoSpawn()
	dprint("bishop spawned");
	//b_arcade_birth_done = true;
end

script command_script cs_bishop_spawn_arcade_2()
        print("bishop sleeping");
        ai_enter_limbo(ai_current_actor);
        CreateDynamicTask(TT_SPAWN, FT_BIRTHER, ai_get_object(ai_current_actor), OnCompleteProtoSpawnArcade2, 0);
end

script static void OnCompleteProtoSpawnArcade2()
	dprint("bishop spawned");
	b_arcade_birth_done = true;
end
// =================================================================================================
// =================================================================================================
// START
// =================================================================================================
// =================================================================================================

script static void start()
	// Figure out what insertion point to use
	// Set these in init.txt or editor_init.txt to work on various areas quickly\
	dprint("::: START :::");

	f_insertion_index_load( game_insertion_point_get() );
end



// =================================================================================================
// =================================================================================================
// MASTER CLEANUP
// =================================================================================================
// =================================================================================================
script static void f_master_cleanup_m90()
	b_ForceCleanup = true;
	thread(f_trench_a_cleanup());
	thread(f_trench_b_cleanup());
	thread(f_trench_c_cleanup());
	thread(f_eye_flight_cleanup());
	//thread(f_interior_a_cleanup());
	sleep(1);
	b_ForceCleanup = false;
end





// =================================================================================================
// =================================================================================================
// STATION
// =================================================================================================
// =================================================================================================



script static void f_space_particles_on( boolean b_on )

	if b_on then
		effect_attached_to_camera_new( environments\solo\m90_sacrifice\fx\particulates\particulate_space.effect );	
	else
		effect_attached_to_camera_stop( environments\solo\m90_sacrifice\fx\particulates\particulate_space.effect );	
	end
	
end

script static void f_radiation_particles_on( boolean b_on )

	if b_on then
		effect_attached_to_camera_new( environments\solo\m90_sacrifice\fx\radiation\radiation_particulates.effect );	
	else
		effect_attached_to_camera_stop( environments\solo\m90_sacrifice\fx\radiation\radiation_particulates.effect );	
	end
	
end

script static void set_broadsword_respawns ( boolean b_in_vehicle )

	if b_in_vehicle then
			player_set_respawn_vehicle ( player0, "objects\vehicles\human\storm_broadsword\storm_broadsword.vehicle");
			player_set_respawn_vehicle ( player1, "objects\vehicles\human\storm_broadsword\storm_broadsword.vehicle");
			player_set_respawn_vehicle ( player2, "objects\vehicles\human\storm_broadsword\storm_broadsword.vehicle");
			player_set_respawn_vehicle ( player3, "objects\vehicles\human\storm_broadsword\storm_broadsword.vehicle");		
		else
			player_set_respawn_vehicle ( player0, none );
			player_set_respawn_vehicle ( player1, none );
			player_set_respawn_vehicle ( player2, none );
			player_set_respawn_vehicle ( player3, none );
		end
end

script static void f_m90_global_rezin( object_name obj, string_id marker)
	
	//( 2 );
	//thread( f_coldant_move_platform( platform, FALSE ) );
	//sleep( 1 );
	object_dissolve_from_marker( obj, hard_kill, marker );
end

script static void f_m90_global_rezin_soft_kill( object_name obj, string_id marker)
	
	//( 2 );
	//thread( f_coldant_move_platform( platform, FALSE ) );
	//sleep( 1 );
	object_dissolve_from_marker( obj, soft_kill, marker );
end

// =================================================================================================
// Loadouts
// =================================================================================================
script static void f_m90_loadout_set ( short loadout )
	static short start_unsc  = 0;
	static short default_for = 1;
	static short power_for   = 2;
	dprint("loading profile ");
	inspect(loadout);
  if loadout == start_unsc then
      player_set_profile ( default_coop_respawn, player0 );
      player_set_profile ( default_coop_respawn, player1 );
      player_set_profile ( default_coop_respawn, player2 );
      player_set_profile ( default_coop_respawn, player3 );
  end
  
  if loadout == default_for or loadout > 2 then
      player_set_profile ( default_forerunner, player0 );
      player_set_profile ( default_forerunner, player1 );
      player_set_profile ( default_forerunner, player2 );
      player_set_profile ( default_forerunner, player3 );
  end
  
  if loadout == power_for then
      player_set_profile ( forerunner_power, player0 );
      player_set_profile ( forerunner_power, player1 );
      player_set_profile ( forerunner_power, player2 );
      player_set_profile ( forerunner_power, player3 );
  end
                
end

script static void f_m90_game_save()
	game_save_cancel();
	sleep(1);
	game_save();
	dprint("M90 GAME SAVE");
end


script static void f_m90_game_save_no_timeout()
	game_save_cancel();
	sleep(1);
	game_save_no_timeout();
	dprint("M90 GAME SAVE");
end



script static void f_bomb_icon( boolean b_on )
	if b_on != b_bomb_icon_on then
		cui_toggle_bomb_icon ( b_on );
		b_bomb_icon_on = not b_bomb_icon_on;
	end
end


script static void f_m90_set_low_g()
		//sleep_until(volume_test_players(tv_zero_g_eye_ext) , 1);
			dprint("low g");
			f_set_gravity( r_low_gravity );
	
end

script static void f_m90_set_low_g_r( real g )
		//sleep_until(volume_test_players(tv_zero_g_eye_ext) , 1);
			dprint("setting gravity");
			f_set_gravity( g );
	
end

script static void f_m90_set_normal_g( )
		//sleep_until(volume_test_players(tv_zero_g_eye_ext) , 1);
			dprint("setting normal gravity");
			f_set_gravity( r_real_gravity );
	
end

script static void f_set_gravity( real r_gravity )


		physics_set_gravity( r_gravity );
end

script static void f_reset_gravity( real r_gravity )
		physics_set_gravity( 1.0 );
end

script static void f_zone_num()
	inspect(current_zone_set_fully_active());
end

script static void  f_m90_show_chapter_title( cutscene_title title )
/*	
	cinematic_show_letterbox (TRUE);
	sleep_s ( 1.5 );
	thread(storyblurb_display(title, 8, FALSE, FALSE));
	sleep_s ( 6 );
	cinematic_show_letterbox (FALSE);
**/
/*
    hud_play_global_animtion (screen_fade_out);
    cinematic_show_letterbox (TRUE);
    sleep_s (1.5);
    cinematic_set_title (title);
    hud_stop_global_animtion (screen_fade_out);
    sleep_s (3.5);     
    hud_play_global_animtion (screen_fade_in);
    hud_stop_global_animtion (screen_fade_in);
    cinematic_show_letterbox (FALSE);
*/
	f_chapter_title(title);
end




// functions
// === f_mission_objective_blip: Blips an objective index
script static boolean f_mission_objective_blip( real r_index, boolean b_blip )
static boolean b_blipped = FALSE;
	// set the default return value
	b_blipped = FALSE;

	//dprint( "::: f_mission_objective_blip :::" );
	inspect( r_index );
	

	// return if something was blipped
	b_blipped;

end
script static void f_m90_trans_beep()
	sound_impulse_start( sound\game_sfx\ui\transition_beeps, NONE, 1 );
end

// === f_mission_objective_title: Returns the index title title
script static string_id f_mission_objective_title( real r_index )
local string_id sid_return = SID_objective_none;
		
	//dprint("want to go?")';
	// DEF_R_OBJECTIVE_INFINITY_PELICAN

	if ( r_index == DEF_R_OBJECTIVE_START ) then
		sid_return = 'chapter_01';

	end		

	if ( r_index == DEF_R_OBJECTIVE_GENERATOR ) then
		sid_return = 'chapter_02a';

	end	


	if ( r_index == DEF_R_OBJECTIVE_CANNONS ) then
		sid_return = 'chapter_02';

	end	
	if ( r_index == DEF_R_OBJECTIVE_ON_FOOT_GO ) then
		sid_return = 'chapter_04';
		//dprint("got chpt 4?");
	end		
	
	if ( r_index == DEF_R_OBJECTIVE_WALLS_HOLD ) then
		sid_return = 'obj_hold_area';
		//dprint("got chpt 4?");
	end
	
	if ( r_index == DEF_R_OBJECTIVE_DESTROY_SHIELDS ) then
		sid_return = 'chapter_06';
		//dprint("got chpt 4?");
	end

	if ( r_index == DEF_R_OBJECTIVE_DESTROY_CORE ) then
		sid_return = 'chapter_07';
		//dprint("got chpt 4?");
	end
	
	if ( r_index == DEF_R_OBJECTIVE_BOMB ) then
		sid_return = 'chapter_08';
		dprint("got chpt 4?");
	end

	if ( r_index == DEF_R_OBJECTIVE_CORTANA_IN ) then
		sid_return = 'chapter_cortana';
		//dprint("got chpt 4?");
	end
	
	if ( r_index == DEF_R_OBJECTIVE_ALRIGHT_MESSAGE ) then
		sid_return = 'chapter_07a';
		//dprint("got chpt 4?");
	end

	// return
	sid_return;

end

global short s_m90_enc_music_track = 1;
global short s_m90_enc_track_playing = -1;

script static void f_m90_begin_encounter_music()	
	dprint("begin encounter music");
	
	if s_m90_enc_track_playing == -1 then
		dprint("");
	end

	
end


script static void f_clear_equipment()
	f_insertion_playerprofile( ics_empty, FALSE );
end


script static void fm90_blip_flag (cutscene_flag f, string type)

	
	if fg_cold_curret_blip_flag != f and fg_cold_curret_blip_flag_2 != f and fg_cold_curret_blip_flag_3 != f then
	
		if fg_cold_curret_blip_flag == flag_empty then
			fg_cold_curret_blip_flag = f;

		elseif fg_cold_curret_blip_flag_2 == flag_empty then
			fg_cold_curret_blip_flag_2 = f;	

		elseif fg_cold_curret_blip_flag_3 == flag_empty then
			fg_cold_curret_blip_flag_3 = f;

		else
			dprint("warning, no available blip flags");
		end	

		chud_track_flag_with_priority (f, f_return_blip_type (type));	
		navpoint_track_flag_named (f, f_return_blip_type_cui (type));
		//dprint("beep");
		sound_impulse_start (sfx_blip, NONE, 1);
	end
end

script static void fm90_unblip_flag (cutscene_flag f)


	chud_track_flag (f, false);
	
	navpoint_track_flag (f, false);
	if fg_cold_curret_blip_flag == f or fg_cold_curret_blip_flag_2 == f or fg_cold_curret_blip_flag_3 == f then	

		if fg_cold_curret_blip_flag == f then
			fg_cold_curret_blip_flag = flag_empty;
		end
		
		if fg_cold_curret_blip_flag_2 == f then
			fg_cold_curret_blip_flag_2 = flag_empty;
		end	
			
		if fg_cold_curret_blip_flag_3 == f then
			fg_cold_curret_blip_flag_3 = flag_empty;
		end

		sound_impulse_start (sfx_blip, NONE, 1);
		

	end
end

// blip an object temporarily
script static void fm90_blip_object (object obj, string type)
	chud_track_object_with_priority( obj, f_return_blip_type(type) );
	
	navpoint_track_object_named (obj, f_return_blip_type_cui (type));
	
	//sound_impulse_start (sfx_blip, NONE, 1);
end

// turn off a blip on an object that was blipped forever
script static void fm90_unblip_object (object obj)
	chud_track_object (obj, false);
	
	navpoint_track_object (obj, false);
	
	//sound_impulse_start (sfx_blip, NONE, 1);
end	

script static void f_activator_get( object trigger, unit activator )
	dprint(" -activator- ");
  if ( trigger == dc_comp_switch_left ) then
		g_ics_player_left = activator;
  elseif ( trigger == dc_comp_switch_right ) then
		g_ics_player_right = activator;
	else
		g_ics_player = activator;
  end

  if ( trigger == terminal_button ) then
     f_narrative_domain_terminal_interact( 6, domain_terminal, terminal_button, activator, 'pup_domain_terminal' );
  end
	
end


global object o_the_bomb = NONE;
global object p_bomb_carrier = NONE;

script static void f_m90_bomb_attach()
	dprint("attach bomb");
	object_create( sn_the_bomb );
	sleep(1);
	o_the_bomb = sn_the_bomb;
	p_bomb_carrier = player_get_first_valid();
	objects_attach ( p_bomb_carrier, "package", o_the_bomb, "attach_point" );
end

script static void f_m90_bomb_detach()
	objects_detach ( p_bomb_carrier,  o_the_bomb );
	object_destroy ( o_the_bomb );
end
//pause_menu_goal_1 "Fly To The Composer"
//pause_menu_goal_2 "Locate The Composer";
//pause_menu_goal_3 "Destroy Composer";

script static void f_m90_pause_menu_objectives()
	objectives_set_string ( 0, pause_menu_goal_3 );
	//objectives_set_string ( 1, pause_menu_goal_2 );
	objectives_secondary_set_string ( 0, pause_menu_goal_1 );
	objectives_secondary_set_string ( 1, pause_menu_goal_2 );
	sleep(1);
end

script static void f_m90_start_objectives()
		objectives_clear();
		objectives_show ( 0 );
		objectives_secondary_show( 0 );
end

script static void f_m90_update_1_objectives()

		//objectives_finish ( 0 );
		objectives_secondary_finish( 0 );
end

script static void f_m90_update_2_objectives()

		//objectives_finish ( 0 );
		objectives_secondary_show( 1 );
end

script static void f_m90_update_3_objectives()

		//objectives_finish ( 0 );
		objectives_secondary_finish( 1 );
end

script static void f_m90_update_4_objectives()

		//objectives_finish ( 0 );
		objectives_finish( 0 );
end
//EXIT SLIPSPACE
/*

script static void f_inf_create_guns()
	ai_place(infinity_guns);
	sleep(1);
	objects_attach(infinity_eye, "m_gun_mid_starboard", ai_vehicle_get_from_spawn_point(infinity_guns.inf_gun_1), "" );
	objects_attach(infinity_eye, "m_gun_mid_port", ai_vehicle_get_from_spawn_point(infinity_guns.inf_gun_2), "" );
	objects_attach(infinity_eye, "m_gun_mid_rear_starboard", ai_vehicle_get_from_spawn_point(infinity_guns.inf_gun_3), "" );
	objects_attach(infinity_eye, "m_gun_mid_rear_port", ai_vehicle_get_from_spawn_point(infinity_guns.inf_gun_4), "" );
	objects_attach(infinity_eye, "m_gun_fore_starboard", ai_vehicle_get_from_spawn_point(infinity_guns.inf_gun_5), "" );
	objects_attach(infinity_eye, "m_gun_fore_port", ai_vehicle_get_from_spawn_point(infinity_guns.inf_gun_6), "" );
	objects_attach(infinity_eye, "m_gun_aft_starboard", ai_vehicle_get_from_spawn_point(infinity_guns.inf_gun_7), "" );
	objects_attach(infinity_eye, "m_gun_aft_port", ai_vehicle_get_from_spawn_point(infinity_guns.inf_gun_8), "" );
	dprint("attached infinity guns");
	sleep(10);
	load_inf_gunners();
end

*/
/*
script static void load_inf_gunners()


       ai_place (inf_gunners);

       ai_cannot_die (inf_gunners, TRUE);

       vehicle_load_magic (ai_vehicle_get_from_spawn_point(infinity_guns.inf_gun_1), "", ai_get_unit (inf_gunners.gunner_1));
       vehicle_load_magic (ai_vehicle_get_from_spawn_point(infinity_guns.inf_gun_2), "", ai_get_unit (inf_gunners.gunner_2));
       vehicle_load_magic (ai_vehicle_get_from_spawn_point(infinity_guns.inf_gun_3), "", ai_get_unit (inf_gunners.gunner_3));
       vehicle_load_magic (ai_vehicle_get_from_spawn_point(infinity_guns.inf_gun_4), "", ai_get_unit (inf_gunners.gunner_4));
       vehicle_load_magic (ai_vehicle_get_from_spawn_point(infinity_guns.inf_gun_5), "", ai_get_unit (inf_gunners.gunner_5));
       vehicle_load_magic (ai_vehicle_get_from_spawn_point(infinity_guns.inf_gun_6), "", ai_get_unit (inf_gunners.gunner_6));
       vehicle_load_magic (ai_vehicle_get_from_spawn_point(infinity_guns.inf_gun_7), "", ai_get_unit (inf_gunners.gunner_7));
       vehicle_load_magic (ai_vehicle_get_from_spawn_point(infinity_guns.inf_gun_8), "", ai_get_unit (inf_gunners.gunner_8));
end
*/


/*
script static void f_loadout_set (string area)
	if (area == "default") then
		if (game_is_cooperative()) then
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
*/
// --- End m90_sacrifice_mission.hsc ---

// --- Begin m90_sacrifice_mission_flight.hsc ---
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343
//
// Mission: 					m90_sacrifice Flight
//	Insertion Points:	start (or ist)	- Beginning
//										
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343





// =================================================================================================
// =================================================================================================
// SHIP HANDLERS
// =================================================================================================
// =================================================================================================
global real _TURRET_SCALE_SIZE = 0.85;
global boolean b_OpeningIntroStart = FALSE;
global boolean b_SpaceFlight_Start = TRUE;
global boolean b_Init_Flight = FALSE;
global boolean b_trench_a_complete = FALSE;
global boolean b_trench_b_complete = FALSE;
global boolean b_trench_c_complete = FALSE;
global boolean b_trench_d_complete = FALSE;
global boolean b_trench_e_complete = FALSE;
global boolean b_showing_tutorial = FALSE;


script dormant f_flight_start_init()

	dprint("======= f_flight_start_init:: waiting for mission start =====");
	sleep_until ( b_mission_started == TRUE) ;

		dprint ("::: Flight starting :::");
		create_player_ships (v_ship0, v_ship1, v_ship2, v_ship3);
		sleep(1);
		load_player_ships (v_ship0, v_ship1, v_ship2, v_ship3);
		f_space_particles_on( true );
		//wake (f_trench_main);	
		sleep(30);
		fade_in(0,0,0,0);
		hud_play_global_animtion (screen_fade_in);
	
		hud_stop_global_animtion (screen_fade_in);
		b_SpaceFlight_Start = TRUE;

		thread (f_ship_speed_check (player0));
		thread (f_ship_speed_check (player1));
		thread (f_ship_speed_check (player2));
		thread (f_ship_speed_check (player3));
		
		thread (player_dies_in_trench (player0));
		thread (player_dies_in_trench (player1));
		thread (player_dies_in_trench (player2));
		thread (player_dies_in_trench (player3));
	
		sleep (30 * 6);
	
		thread (f_flight_tutorial (player0));
		thread (f_flight_tutorial (player1));		
		thread (f_flight_tutorial (player2));
		thread (f_flight_tutorial (player3));
						
end

script static void f_ship_speed_check(player p_player)
	
	sleep_until (object_active_for_script (unit_get_vehicle (p_player)), 1);
	
	sleep (1);
	
	sleep_until (object_get_velocity (unit_get_vehicle (p_player)) > 15);
	
	sleep (1);
	
	sleep_until ((object_get_health (p_player) <= 0) or (object_get_velocity (unit_get_vehicle (p_player)) <= 15), 1);
			
	damage_object (unit_get_vehicle (p_player), default, 10000);
	
end

script static void player_dies_in_trench (player p_player)
	
	local long l_speedcheck = 0;
	
	repeat
	
		dprint ("waiting for player to be dead");
		sleep_until (object_get_health(p_player) <= 0, 1);
		
		sleep (5);
		
		if (b_Eye_Complete == FALSE) then

			if (game_coop_player_count() == 1) then	
	
				// if this is a single-player game then wait 2.5 seconds and fade to black since 
				// it'll take another 5 seconds to respawn and then we won't come back from black
					
				dprint ("2.5 second wait");
				sleep_s(2.5);

				dprint ("YOU HAVE DIED, fading out");
				fade_out_for_player (p_player);

				// if this is a single player game then increase the wait for another 5 seconds
				// we should revert to save before this ever comes back.
				sleep_s(5);
			else
				dprint ("YOU HAVE DIED, fading out");
				fade_out_for_player (p_player);

				dprint ("3 second wait");
				sleep_s(3);		
			end

			dprint ("fading back in");
			fade_in_for_player (p_player);

			dprint ("waiting for player to be alive again, or for the eye to be completed");
			sleep_until (object_get_health (p_player) > 0, 1) or (b_Eye_Complete == TRUE);
			
			if (b_eye_complete == FALSE) then
			
				sleep (5);
			
				l_speedcheck = thread (f_ship_speed_check(p_player));
				dprint ("restarting speed check for this player, about to repeat");			
				
			else
			
				kill_thread (l_speedcheck);
				dprint ("you beat flight");
				
			end
	
		end
	
	until (b_eye_complete == TRUE);
		
end

script dormant f_trench_a_init()


	sleep_until( b_Init_Flight, 4 );
	sleep_until ( volume_test_players( tv_flight_start ) and current_zone_set_fully_active() == s_start_idx , 1);
		dprint("INIT::: Trench A");
		set_broadsword_respawns ( true );
		data_mine_set_mission_segment ("m90_flight");
		//inspect(current_zone_set_fully_active());
		wake(f_trench_a_blocker_controller);
		thread(f_trench_a_cleanup());
	
		//object_create( dm_trench_a_door_1 );		
		object_create_folder( crs_trench_a_ants );
		object_create_folder( crs_trench_a );
		wake( f_trench_a_door_1_wait );
		//wake(f_trench_a_exit_wait);
		//wake(f_trench_a_fire_tut_wait);
		wake(f_trench_a_gate_blip_wait);
		wake( nar_flight_start_init );
		thread(f_trench_a_turret_reveal_wait());
		thread( f_trench_a_turret_end_wait());	
		//thread( f_trench_a_setup_intro_obs() );	
		thread( f_trench_a_setup_end_objs () );	
		wake( f_trench_a_containers );
		wake( f_trans_ab_wait );
		thread( f_mus_m90_e01_start() );
		//fade_in (0, 0, 0, 0);
		sleep(1);
		game_save_immediate();
		sleep(1);
	sleep_until( b_SpaceFlight_Start );
		thread(f_m90_show_chapter_title( title_intro ));
		//sleep( 5 );
		thread( nar_ship_growing() );

		f_m90_start_objectives();


		sleep(45);
		//thread( f_weapon_turning_tutorial());

		sleep_s(6);
		thread( f_objective_set( DEF_R_OBJECTIVE_START, TRUE, FALSE, TRUE,TRUE ) );
		wake( f_flight_waypoint_goals );
		wake( f_flight_waypoints_breadcrumbs );
		sleep(1);
		wake( f_flight_setup_players_waypoints );
		thread( f_death_orb_damage(tv_trench_a_gate, cr_trench_a_gate_lock) );
		
		//clear_all_text(); 
		
		
		//f_trench_door_close(maya_tr_ab_tran_dr_1_inner_1)

end

script static void f_trench_a_cleanup()
	sleep_until(volume_test_players( tv_trench_a_cleanup ) or b_ForceCleanup == true, 1);
		dprint("CLEANUP:: trench a");

		object_destroy_folder( crs_trench_a_ants );
		object_destroy_folder( crs_trench_a );
		b_trench_a_complete = TRUE;
		ai_erase(sq_for_trench_a_tur);
		ai_erase(sq_for_trench_a_tur_2);
		ai_erase(sq_for_trench_a_front);
		wake( f_trench_a_device_cleanup );
		f_unblip_flag(fg_tr_a_gate_wp);
		
end

global real r_tutorial_time = 7;

script static void player_boost_tutorial (player p_player)
	/*
	sleep (30);
	dprint ("LEARN TO BOOST, MORTAL");
	chud_show_screen_training (p_player, "training_ghostboost");

  sleep (30 * 3);
  
	if unit_in_vehicle (p_player) then

  	unit_action_test_reset (p_player);
  	sleep_until (unit_action_test_grenade_trigger (p_player) or not unit_in_vehicle (p_player), 1);
  	chud_show_screen_training (p_player, "");
  	
  else 
  
  	chud_show_screen_training (p_player, "");
  
  end
  */
  dprint ("old tutorial stuff");
  
end

script static void f_flight_tutorial (player p_player)
	
	dprint ("LEARN TO STEER");
	chud_show_screen_training (p_player, "tut_bsword_steer");

  sleep (30 * 4);
  
  chud_show_screen_training (p_player, "");
  
  sleep (30);
  
  dprint ("LEARN TO BANK");
	chud_show_screen_training (p_player, "tut_bsword_bank");
	
	sleep (30 * 4);
	
	chud_show_screen_training (p_player, "");
  
  sleep (30);
	
  dprint ("LEARN TO BOOST");
	chud_show_screen_training (p_player, "tut_bsword_boost");
	
	sleep (30 * 4);
	
	chud_show_screen_training (p_player, "");
  
  sleep (30);
	
	dprint ("LEARN TO SHOOT");
	chud_show_screen_training (p_player, "tut_bsword_shoot");
	
	sleep (30 * 4);
	
	chud_show_screen_training (p_player, "");
  
  sleep (30);
	
	dprint ("LEARN TO CHANGE WEAPONS");
	chud_show_screen_training (p_player, "tut_bsword_toggle_weap");
	
	sleep (30 * 4);
	
	chud_show_screen_training (p_player, "");
  

	
end



/*
script static void f_tut_1()
	
	
	local unit playerx = player_get_first_valid();
	if not difficulty_legendary() then
		b_showing_tutorial = TRUE;

		f_tutorial_right_bumper( playerx, tut_bsword_toggle_weap);
		b_showing_tutorial = FALSE;
	end
end

script static void f_tut_trick()
	local unit playerx = player_get_first_valid();
	local long l_timer = timer_stamp( r_tutorial_time ); 
	if not difficulty_legendary() then
		//	f_tutorial_tricks( player0, tut_bsword_trick);
		b_showing_tutorial = TRUE;
		f_tutorial_begin ( playerx, tut_bsword_trick );
			//thread( f_weapon_switch_tut_timer());
			sleep(1);
		sleep_until( unit_action_test_vehicle_trick_secondary( playerx ) or timer_expired( l_timer ), 1 );
			f_tutorial_end (playerx);
			b_showing_tutorial = FALSE;	
			//dprint("Trick complete");
	end
end

script static void f_tut_2()
		local unit playerx = player_get_first_valid();
		if not difficulty_legendary() then
			b_showing_tutorial = TRUE;
			f_tutorial_left_bumper( playerx, tut_bsword_steer);
			b_showing_tutorial = FALSE;
		end
end


global boolean b_tut_timeup = FALSE;

script static void f_weapon_switch_tutorial()
	dprint("weapon switch tut");
	local unit playerx = player_get_first_valid();
	local long l_timer = timer_stamp( r_tutorial_time ); 
	if not difficulty_legendary() then
		b_showing_tutorial = TRUE;
	//f_tutorial_rotate_weapons( player0, tut_bsword_toggle_weap);
		f_tutorial_begin ( playerx, tut_bsword_toggle_weap );
		//thread( f_weapon_switch_tut_timer());
		sleep(1);
		sleep_until(unit_action_test_rotate_weapons( playerx ) or timer_expired( l_timer ), 1);
			f_tutorial_end (playerx);	
			b_showing_tutorial = FALSE;
	end
end
/*
script static void f_weapon_switch_tut_timer()
	b_tut_timeup = FALSE;
	sleep_s(10);
	b_tut_timeup = TRUE;

end

script static void f_weapon_turning_tutorial()
	//f_tutorial_turn(player0, tut_bsword_steer);
	local unit playerx = player_get_first_valid();
	local long l_timer = timer_stamp( r_tutorial_time ); 
	b_showing_tutorial = TRUE;
	f_tutorial_begin ( player0, tut_bsword_steer );
	sleep_until(unit_action_test_look_relative_all_directions ( playerx ) or timer_expired( l_timer ), 1);
		sleep_s (3);
		f_tutorial_end ( playerx );
		b_showing_tutorial = FALSE;
		f_weapon_banking_tutorial();	
end

script static void f_weapon_banking_tutorial()
	//f_tutorial_turn(player0, tut_bsword_steer);
	local unit playerx = player_get_first_valid();
	local long l_timer = timer_stamp( r_tutorial_time ); 
	b_showing_tutorial = TRUE;
	f_tutorial_begin ( player0, tut_bsword_bank );
	sleep_until(unit_action_test_move_relative_all_directions ( playerx ) or timer_expired( l_timer ), 1);
		sleep_s (3);
		f_tutorial_end ( playerx );
		b_showing_tutorial = FALSE;
		f_weapon_fire_tutorial();
end

script static void f_weapon_fire_tutorial()
	local unit playerx = player_get_first_valid();
	local long l_timer = timer_stamp( r_tutorial_time ); 
	//f_tutorial_fire_weapon(player0, tut_bsword_shoot);
	b_showing_tutorial = TRUE;
	f_tutorial_begin (playerx, tut_bsword_shoot);
	//sleep_s (4);
	sleep_until(unit_action_test_primary_trigger ( playerx )or timer_expired( l_timer ), 1);
		sleep_s (4);
		f_tutorial_end ( playerx );	
		b_showing_tutorial = FALSE;
		f_weapon_switch_tutorial();
end

script static void f_weapon_boost_tutorial()
	//f_tutorial_boost(player0, tut_bsword_boost);
	local unit playerx = player_get_first_valid();
	local long l_timer = timer_stamp( r_tutorial_time ); 
	b_showing_tutorial = TRUE;
	f_tutorial_begin (playerx, tut_bsword_boost);
	sleep_until(unit_action_test_grenade_trigger ( playerx )or timer_expired( l_timer ), 1);
		sleep_s (3);
		f_tutorial_end ( playerx );	
		b_showing_tutorial = FALSE;
end

script dormant f_trench_a_fire_tut_wait()
	
	sleep_until (volume_test_players( tv_trench_a_fire_tut ), 1);
		
		if is_skull_active(skull_iron) then
			dprint ("iron skull on, no save");
		else	
		 	f_m90_game_save_no_timeout();
		end
		
		sleep_s(1);
		f_weapon_fire_tutorial();
		//sleep_s(1);
		
		//f_weapon_switch_tutorial();
end

*/

script dormant f_trench_a_spawns()

	ai_place( sq_for_trench_a_front );
	sleep(30);
	ai_place(sq_for_trench_a_tur);
	sleep( 30 );
	ai_place(sq_for_trench_a_tur_2);


	//cs_shoot(  sq_for_trench_a_tur.reveal ,TRUE, player0 );

end



//


script dormant f_trench_main()
	dprint("=== Trench Main INIT ===");	

	wake( f_trench_a_init );
	wake( f_trench_b_init ) ;
	wake( f_trench_c_init );
	wake( f_trench_d_init ) ;
	wake( f_trench_e_init ) ;
	wake( f_eye_flight_init );

end

script static void create_player_ships (object_name ship0, object_name ship1, object_name ship2, object_name ship3)
	
	if (player_valid( player0 )) then
		object_create (ship0);
		//dprint ("trying to load ship");
	end
	if (player_valid( player1 )) then
		object_create (ship1);
		//dprint ("trying to load ship");
	end
	if (player_valid( player2 )) then
		object_create (ship2);
		//dprint ("trying to load ship");
	end
	if (player_valid( player3 )) then
		object_create (ship3);
		//dprint ("trying to load ship");
	end
	
	sleep(1);
end

script static void load_player_ships (vehicle ship0, vehicle ship1, vehicle ship2, vehicle ship3)
	
		
	if (player_valid( player0 )) then
		vehicle_load_magic (ship0, "warthog_d", player0());
		//dprint ("trying to load ship");
	end
	
	if (player_valid( player1 )) then
		vehicle_load_magic (ship1, "warthog_d", player1());
	end

	if (player_valid( player2 )) then
		vehicle_load_magic (ship2, "warthog_d", player2());
	end	
		
	if (player_valid( player3 )) then
		vehicle_load_magic (ship3, "warthog_d", player3());
	end
		
end



script dormant f_trench_a_blocker_controller()

	sleep_until(any_players_in_vehicle(),1);

		wake(f_trench_a_gate_wait);
		wake( f_trench_a_ralphie_wake );
		thread( f_trench_a_closing_tunnel_wake() );
	
end


script static void f_trench_a_setup_end_objs()
	device_set_position_track( maya_tr_a_end_0_left, 'any:idle', 0.0 );
	device_animate_position( maya_tr_a_end_0_left, 1, 0, 0.1, 0.0, TRUE );
	device_set_position_track( maya_tr_a_end_0_right, 'any:idle', 0.0 );
	device_animate_position( maya_tr_a_end_0_right, 1, 0, 0.1, 0.0, TRUE );
	
	device_set_position_track( maya_tr_a_end_1_left, 'any:idle', 0.0 );
	device_animate_position( maya_tr_a_end_1_left, 0.6, 0, 0.1, 0.0, TRUE );
	device_set_position_track( maya_tr_a_end_1_right, 'any:idle', 0.0 );
	device_animate_position( maya_tr_a_end_1_right, 0.9, 0, 0.1, 0.0, TRUE );
	
	device_set_position_track( maya_tr_a_end_2_left, 'any:idle', 0.0 );
	device_animate_position( maya_tr_a_end_2_left, 0.9, 0, 0.1, 0.0, TRUE );
	device_set_position_track( maya_tr_a_end_2_right, 'any:idle', 0.0 );
	device_animate_position( maya_tr_a_end_2_right, 0.6, 0, 0.1, 0.0, TRUE );	

	device_set_position_track( maya_tr_a_end_3_left, 'any:idle', 0.0 );
	device_animate_position( maya_tr_a_end_3_left, 0.6, 0, 0.1, 0.0, TRUE );
	device_set_position_track( maya_tr_a_end_3_right, 'any:idle', 0.0 );
	device_animate_position( maya_tr_a_end_3_right, 0.9, 0, 0.1, 0.0, TRUE );
	
	device_set_position_track( maya_tr_a_end_4_left, 'any:idle', 0.0 );
	device_animate_position( maya_tr_a_end_4_left, 0.7, 0, 0.1, 0.0, TRUE );
	device_set_position_track( maya_tr_a_end_4_right, 'any:idle', 0.0 );
	device_animate_position( maya_tr_a_end_4_right, 0.7, 0, 0.1, 0.0, TRUE );
end


script dormant f_trench_a_containers()
	sleep_until( object_valid( maya_tr_a_container_1 ), 1 );
		//dprint("containers");
		device_set_position_track( maya_tr_a_container_1, 'any:idle', 0.0 );
		sleep(90);
		device_set_position_track( maya_tr_a_container_2, 'any:idle', 0.0 );
		sleep(60);
		device_set_position_track( maya_tr_a_container_3, 'any:idle', 0.0 );
		sleep(30);
		device_set_position_track( maya_tr_a_container_4, 'any:idle', 0.0 );
end

//maya_tr_a_blocker_left
//maya_tr_a_blocker_right
script dormant f_trench_a_ralphie_wake()
		thread ( ralphie_set() );
		sleep_until (volume_test_players(tv_trench_a_ralphie), 1);

			thread(f_trench_a_scubbo());
			sleep(30);
			thread(f_trench_a_ralphie());
			//sleep(60);
			//thread( f_weapon_switch_tutorial() );		

end

// test
script static void ralphie()
			thread( f_trench_a_scubbo() ) ;
			sleep(15);
			thread( f_trench_a_ralphie() );
end

script static void ralphie_set()

			device_set_position_track( maya_tr_a_pg_b_left, 'any:idle', 0.0 );
			device_animate_position( maya_tr_a_pg_b_left, 0.75, 0, 0.1, 0.0, TRUE );

			device_set_position_track( maya_tr_a_pg_b_right, 'any:idle', 0.0 );
			device_animate_position( maya_tr_a_pg_b_right, 0.75, 0, 0.1, 0.0, TRUE );
			//sleep(30);
			device_set_position_track( maya_tr_a_pg_a_right, 'any:idle', 0.0 );
			device_animate_position( maya_tr_a_pg_a_right, 1, 0, 0.1, 0.0, TRUE );

			device_set_position_track( maya_tr_a_pg_a_left, 'any:idle', 0.0 );
			device_animate_position( maya_tr_a_pg_a_left, 1, 0, 0.1, 0.0, TRUE );


		
end

script static void f_trench_a_ralphie()
	device_animate_position( maya_tr_a_pg_a_left, 0.8, 1.75, 0.1, 0.0, TRUE );
	device_animate_position( maya_tr_a_pg_a_right, 0.8, 1.75, 0.1, 0.0, TRUE );
end

script static void f_trench_a_scubbo()
	device_animate_position( maya_tr_a_pg_b_left, 0.8, 1.75, 0.1, 0.0, TRUE );
	device_animate_position( maya_tr_a_pg_b_right, 0.8, 1.75, 0.1, 0.0, TRUE );
end


script static void f_trench_a_closing_tunnel_wake()
		device_set_position_track( maya_tr_a_tun_a_1, 'any:idle', 0.0 );
		device_set_position_track( maya_tr_a_tun_a_2, 'any:idle', 0.0 );
		
		sleep_until (volume_test_players(tv_trench_a_closing_tunnel), 1);
			sleep(45);
			device_animate_position( maya_tr_a_tun_a_1, 0.36, 2.5, 0.1, 0.0, TRUE );
			sleep(60);
			device_animate_position( maya_tr_a_tun_a_2, 0.36, 2.5, 0.1, 0.0, TRUE );
			
end




//fg_tr_a_gate_wp
script dormant f_trench_a_gate_blip_wait()
	sleep_until (volume_test_players(tv_trench_a_shoot_ball), 1);
		
	if object_get_health(cr_trench_a_gate_lock) > 0 then
		f_blip_flag(fg_tr_a_gate_wp, "neutralize");
	end
	
end



script static void f_trench_a_turret_reveal_wait()

	device_set_position_track( maya_tr_a_b1_b_left, 'any:idle', 0.0 );
	device_set_position_track( maya_tr_a_b1_b_right, 'any:idle', 0.0 );
	device_set_position_track( maya_tr_a_b1_a_left, 'any:idle', 0.0 );
	device_set_position_track( maya_tr_a_b1_a_right, 'any:idle', 0.0 );

	device_set_position_track( maya_tr_a_blocker_left, 'any:idle', 0.0 );
	device_animate_position( maya_tr_a_blocker_left, 0.9, 0, 0.1, 0.0, TRUE );
	
	device_set_position_track( maya_tr_a_blocker_right, 'any:idle', 0.0 );
	device_animate_position( maya_tr_a_blocker_right, 0.9, 0, 0.1, 0.0, TRUE );	
	


	sleep_until (volume_test_players(tv_trench_a_turret_reveal), 1);
		wake(f_trench_a_spawns);	
		thread(f_trench_a_turret_reveal_move( maya_tr_a_b1_a_left));
		thread(f_trench_a_turret_reveal_move( maya_tr_a_b1_a_right));
		sleep(30);
		thread(f_trench_a_turret_reveal_move( maya_tr_a_b1_b_left));
		thread(f_trench_a_turret_reveal_move( maya_tr_a_b1_b_right));
	sleep_s(1.5);
		device_animate_position( maya_tr_a_blocker_left, 0.4, 2.5, 0.1, 0.0, FALSE );
		device_animate_position( maya_tr_a_blocker_right, 0.4, 2.5, 0.1, 0.0, FALSE );	
end


script static void reveal_test()
	device_set_position_track( maya_tr_a_b1_b_left, 'any:idle', 0.0 );
	device_set_position_track( maya_tr_a_b1_b_right, 'any:idle', 0.0 );
	device_set_position_track( maya_tr_a_b1_a_left, 'any:idle', 0.0 );
	device_set_position_track( maya_tr_a_b1_a_right, 'any:idle', 0.0 );
		sleep(1);
		thread(f_trench_a_turret_reveal_move( maya_tr_a_b1_a_left));
		thread(f_trench_a_turret_reveal_move( maya_tr_a_b1_a_right));
		sleep(30);
		thread(f_trench_a_turret_reveal_move( maya_tr_a_b1_b_left ));
		thread(f_trench_a_turret_reveal_move( maya_tr_a_b1_b_right));

end

global real s_TR_A_TIME = 3.5;
global real s_TR_A_POSITION = 0.85;
///////////////////////////////////
///  FIRST TURRET REVEAL         // 
///////////////////////////////////

script static void f_trench_a_turret_reveal_move( device dm )
	device_animate_position( dm, 0.55, s_TR_A_TIME / 2, 0.1, 0.0, TRUE );
	sleep_s(s_TR_A_TIME / 2);
	device_animate_position( dm, s_TR_A_POSITION, s_TR_A_TIME / 2, 0.1, 0.0, TRUE );
end

///////////////////////////////////
///  END TURRET REVEAL         // 
///////////////////////////////////
script static void f_trench_a_turret_end_wait()

	sleep_until (volume_test_players(tv_trench_a_turret_end), 1);
		thread(f_trench_a_turret_reveal_end_left());
		thread(f_trench_a_turret_reveal_end_right());

end

script static void end_turret()
		thread(f_trench_a_turret_reveal_end_left());
		thread(f_trench_a_turret_reveal_end_right());
end

script static void f_trench_a_turret_reveal_end_left()
	device_animate_position( maya_tr_a_end_4_left, 0.80, s_TR_A_TIME, 0.1, 0.0, TRUE );
	sleep_s(0.75);
	//device_animate_position( maya_tr_a_end_3_left, 1, s_TR_A_TIME, 0.1, 0.0, TRUE );
	thread(f_trench_a_open_obj( maya_tr_a_end_3_left, 09 ));
	//sleep(30);
	sleep_until( volume_test_players( tv_trench_a_door_1 ) , 1 );

		device_animate_position( maya_tr_a_end_2_left, 0, s_TR_A_TIME, 0.1, 0.0, TRUE );
		sleep_s( 0.75 );
		//device_animate_position( maya_tr_a_end_1_left, 1, 0.5, 0.1, 0.0, TRUE );
		thread(f_trench_a_open_obj( maya_tr_a_end_1_left, 09 ));
		sleep_s( 0.75 );
		device_animate_position( maya_tr_a_end_0_left,0.95, s_TR_A_TIME, 0.1, 0.0, TRUE );
end

script static void f_trench_a_turret_reveal_end_right()
	device_animate_position( maya_tr_a_end_4_right, 0.80, s_TR_A_TIME, 0.1, 0.0, TRUE );
	sleep_s(0.75);
	device_animate_position( maya_tr_a_end_3_right, 0.0, s_TR_A_TIME, 0.1, 0.0, TRUE );
	sleep_until( volume_test_players( tv_trench_a_door_1 ) , 1 );
		//device_animate_position( maya_tr_a_end_2_right, 1.0, s_TR_A_TIME, 0.1, 0.0, TRUE );
		thread(f_trench_a_open_obj( maya_tr_a_end_2_right, 09 ));
		sleep_s( 0.75 );
		device_animate_position( maya_tr_a_end_1_right, 0.1, s_TR_A_TIME, 0.1, 0.0, TRUE );
		sleep_s( 0.75 );
		device_animate_position( maya_tr_a_end_0_right, 0.8, s_TR_A_TIME, 0.1, 0.0, TRUE );
end

script static void f_trench_a_open_obj( device dm, real pos )

	//device_set_position_track( dm, 'any:idle', 0.0 );
	//sleep(5);
	device_animate_position( dm, 0.75, 1.0, 0.1, 0.0, TRUE );
	sleep_s(1);
	device_animate_position( dm, pos, 1.5, 0.1, 0.0, TRUE );
end






///////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////
// TRANSITION AB
///////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////


script dormant f_trench_a_gate_wait()
	device_set_position_track( maya_tr_a_gate_1, 'any:idle', 0.0 );
	sleep_until(object_get_health(cr_trench_a_gate_lock) <= 0, 1);		
		dprint("open gate");
		device_animate_position( maya_tr_a_gate_1, 1.0, 1.75, 0.1, 0.0, TRUE );
		sleep(3);		
		f_unblip_flag(fg_tr_a_gate_wp);
end





script dormant f_trench_a_door_1_wait()

	sleep_until (volume_test_players(tv_trench_a_door_1), 1);
		thread(f_close_trench_a_door_1());
end

script static void f_close_trench_a_door_1()

	sleep_until( object_valid(dm_trench_a_door_1), 1 );
		device_set_position_track( dm_trench_a_door_1, 'any:idle', 0.0 );
		device_animate_position( dm_trench_a_door_1, 0.70, 5, 0.1, 0.0, TRUE );
	sleep_until(volume_test_players(tv_trench_a_door_1_shut), 1);
	//sleep_s(4);
		device_animate_position( dm_trench_a_door_1, 1.0, 5, 0.1, 0.0, TRUE );
		sleep_s( 8 );
		f_trench_activate_death_zone( kill_trench_a_tv, true );
end

script dormant f_trench_a_exit_wait()
	sleep_until (volume_test_players(tv_trench_a_exit), 1);
		object_create( dm_trans_1_probe_1 );
end



script dormant f_trans_ab_wait()
	sleep_until( volume_test_players( tv_trench_a_exit ), 1);
		//object_create_folder( crs_trans_ab );
		sleep(3);
		
		//thread( cr_trans_ab_tower_1->f_wait_destruction( cr_trans_ab_lock_1 ) );
		//thread( cr_trans_ab_tower_2->f_wait_destruction( cr_trans_ab_lock_2 ) );
		//thread( cr_trans_ab_tower_3->f_wait_destruction( cr_trans_ab_lock_3 ) );
		//thread( cr_trans_ab_tower_4->f_wait_destruction( cr_trans_ab_lock_4 ) );
		
end

///////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////
// TRENCH B
///////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////

script dormant f_trench_b_init()
	sleep_until (volume_test_players(tv_trench_b_init), 1);	
		//thread( f_tut_trick() );
		dprint("INIT::: trench b");
		set_broadsword_respawns ( true );
		object_create_folder(trench_b_blockers);
		object_create_folder(trench_b_ants);
		//object_create(dm_trench_b_gate);
		wake( nar_flight_trench_b_init );
		thread( f_trench_door_close_setup(maya_tr_ab_tran_dr_1_inner_1, 8, true, 7, tv_trench_a_cleanup, kill_trans_ab_1) );
		sleep(3);
		garbage_collect_now();
		object_create( sc_trench_b_splip_space );
		sleep(1);
		object_cinematic_visibility(sc_trench_b_splip_space, TRUE);
////		SetSkyObjectOverride("m90_trench_sky");
		//wake(f_trench_b_gate_wait);
	sleep_until (volume_test_players(tv_trench_b_post_init), 1);	
			dprint("create trench b objects");

			sleep(1);

			wake(f_trench_b_turret_spawn_controller);
			thread(f_trench_b_cleanup());
			//wake(f_trench_b_end_turr_destroy_wait);
			wake(f_trench_b_teeth_wait);
			wake(f_trench_b_rail_guard_wait);

			wake(f_trench_b_platform_save_wait);
			wake( f_trench_bc_trans_door_setup );
			thread( f_trench_b_wall_reveal_wait() );
			thread( f_death_orb_damage(tv_trench_b_gate_a, cr_trench_b_lock_4) );
			thread( f_death_orb_damage(tv_trench_b_gate_b, cr_trench_b_lock_7) );
			thread( f_death_orb_damage(tv_trench_b_gate_c, cr_trench_b_lock_5) );
			thread( f_death_orb_damage(tv_trench_b_gate_d, cr_trench_b_lock_6) );
			garbage_collect_now();
			sleep(1);
			
		if is_skull_active(skull_iron) then
			dprint ("iron skull on, no save");
		else	
		 	f_m90_game_save_no_timeout();
		end


end

script dormant f_trench_b_turret_spawn_controller()
				
	ai_place(sq_for_trenchb_turrets_begin);
	
	sleep_until (volume_test_players(tv_trench_b_spawn_mid_turs) , 1);			
		ai_place(sq_for_trenchb_mid);
		sleep(3);
		
		ai_place( sq_for_trenchb_power_end );
		sleep(5);
		ai_place(sq_for_trenchb_av_end);
		sleep(1);	
		ai_place( sq_for_trenchb_tracers_end );		
		sleep(1);
		
	sleep_until (volume_test_players(	tv_trench_b_spawn_end_turrs) , 1);			

		ai_erase ( sq_for_trenchb_turrets_begin );
		sleep(3);
		
		
end

script dormant f_trench_b_phase_in_turrets_mid()
	sleep(1);
	//object_dissolve_from_marker( ai_vehicle_get ( turret ), phase_in, fx_life_source );
	//object_dissolve_from_marker( ai_vehicle_get ( turret ), phase_in, fx_life_source );
	//object_dissolve_from_marker( ai_vehicle_get ( turret ), phase_in, fx_life_source );

end

script static void f_trench_b_cleanup()
	sleep_until (volume_test_players(tv_trench_b_cleanup) or b_ForceCleanup == true, 1);	
		dprint("ClEANUP::: trench b");
		object_destroy_folder(trench_b_blockers);
		object_destroy_folder(trench_b_ants);
		b_trench_b_complete = TRUE;
		ai_erase( sq_for_trenchb_turrets_begin );
		ai_erase( sq_for_trenchb_mid );
		ai_erase( sq_for_trenchb_av_end );
		ai_erase( sq_for_trenchb_tracers_end );
		ai_erase( sq_for_trenchb_power_end );
		wake ( f_trench_b_device_cleanup );

end

//maya_tr_b_m90_door_left
//maya_tr_b_m90_door_right


script static void f_trench_b_wall_reveal_wait()

	device_set_position_track( maya_tr_b_m90_door_left, 'any:idle', 0.0 );
	device_set_position_track( maya_tr_b_m90_door_right, 'any:idle', 0.0 );
	device_set_position_track( maya_tr_b_m90_door_right_2, 'any:idle', 0.0 );
	device_animate_position( maya_tr_b_m90_door_left, 1 , 0, 0.1, 0, FALSE );
	device_animate_position( maya_tr_b_m90_door_right, 1 , 0, 0.1, 0, FALSE );
	device_animate_position( maya_tr_b_m90_door_right_2, 1 , 0, 0.1, 0, FALSE );
	//maya_tr_b_m90_door_right_2
	sleep_until (volume_test_players(tv_trench_b_spawn_mid_turs), 1);
		device_animate_position( maya_tr_b_m90_door_right_2, 0 , 6, 0.1, 0, FALSE );
		sleep(30);	
		device_animate_position( maya_tr_b_m90_door_left, 0 , 6, 0.1, 0, FALSE );
		sleep(15);
		device_animate_position( maya_tr_b_m90_door_right, 0 , 6, 0.1, 0, FALSE );

end

script static void tb_reveal()
	device_set_position_track( maya_tr_b_m90_door_left, 'any:idle', 0.0 );
	device_set_position_track( maya_tr_b_m90_door_right, 'any:idle', 0.0 );
	sleep(1);
	device_animate_position( maya_tr_b_m90_door_left, 1 , 0, 0.1, 0, FALSE );
	device_animate_position( maya_tr_b_m90_door_right, 1 , 0, 0.1, 0, FALSE );
	sleep(90);
	
	device_animate_position( maya_tr_b_m90_door_left, 0 , 6, 0.1, 0, FALSE );
	sleep(60);
	device_animate_position( maya_tr_b_m90_door_right, 0 , 6, 0.1, 0, FALSE );
	
end

script dormant f_trench_b_platform_save_wait()
	sleep_until (volume_test_players(tv_trench_b_platform_1), 1);

		if is_skull_active(skull_iron) then
			dprint ("iron skull on, no save");
		else	
		 	f_m90_game_save_no_timeout();
		end

		sleep_s(2);
		object_cinematic_visibility(sc_trench_b_splip_space, FALSE);
		sleep(1);
		object_set_function_variable(sc_trench_a_splip_space, exit_slipspace, 1, 4.0);
		object_set_function_variable(sc_trench_b_splip_space, exit_slipspace, 1, 4.0);
		sound_set_state( 'set_state_amb_m90_ac_flight_nonslipspace' );
		sound_impulse_start( 'sound\environments\solo\m090\amb_m90_slipspace_exit_st', NONE, 1 );
end



script dormant f_trench_b_teeth_wait()
	sleep_until (volume_test_players(tv_trench_b_teeth), 1);
	

		f_trench_b_teeth();
end


script static void f_trench_b_teeth()
	if not object_valid(maya_tr_b_teeth_rise) then
		object_create(maya_tr_b_teeth_rise);
		sleep(2);
	end
	device_set_position_track( maya_tr_b_teeth_rise, 'any:idle', 0.0 );
	device_animate_position( maya_tr_b_teeth_rise, 1.0, 7.0, 0.1, 0.0, TRUE );
	
	sleep_until( device_get_position( maya_tr_b_teeth_rise ) >= .98 , 1 );
			object_dissolve_from_marker( ai_vehicle_get ( sq_for_trenchb_tracers_end.teeth_2 ), phase_in, fx_life_source );
			object_dissolve_from_marker( ai_vehicle_get ( sq_for_trenchb_av_end.teeth_1 ), phase_in, fx_life_source );
		//ai_place(sq_for_trenchb_av_end);	
		//ai_place( sq_for_trenchb_tracers_end );
end


global real TOOTH_TIME = 2.0;
script dormant f_trench_b_rail_guard_wait()

	device_set_position_track( maya_tr_b_wall_guard_2, 'any:idle', 0.0 );
	device_set_position_track( maya_tr_b_wall_guard_3, 'any:idle', 0.0 );
	device_set_position_track( maya_tr_b_wall_guard_4, 'any:idle', 0.0 );
	device_set_position_track( maya_tr_b_wall_guard_5, 'any:idle', 0.0 );
	device_set_position_track( maya_tr_b_wall_guard_6, 'any:idle', 0.0 );
	device_set_position_track( maya_tr_b_wall_guard_7, 'any:idle', 0.0 );
	
	//sleep_until (volume_test_players(tv_trench_b_rail_guard_a), 1);
		
	sleep_until (volume_test_players(tv_trench_b_rail_guard_b), 1);
		//dprint("RAIL GUARD");
		device_animate_position( maya_tr_b_wall_guard_2, 1.0, TOOTH_TIME, 0.1, 0.0, TRUE );
		sleep(60);
		device_animate_position( maya_tr_b_wall_guard_3, 1.0, TOOTH_TIME, 0.1, 0.0, TRUE );
		sleep(120);
		device_animate_position( maya_tr_b_wall_guard_4, 1.0, TOOTH_TIME, 0.1, 0.0, TRUE );
		sleep(90);
		device_animate_position( maya_tr_b_wall_guard_5, 1.0, TOOTH_TIME, 0.1, 0.0, TRUE );
		sleep(90);
		device_animate_position( maya_tr_b_wall_guard_6, 1.0, TOOTH_TIME, 0.1, 0.0, TRUE );
		sleep(90);
		device_animate_position( maya_tr_b_wall_guard_7, 1.0, TOOTH_TIME, 0.1, 0.0, TRUE );

end


script static void f_trench_b_rail_guard(device dm)
	device_animate_position( dm, 1.0, TOOTH_TIME, 0.1, 0.0, TRUE );
end



script static void f_trench_b_exit_gate()
	sleep_s(17.5);
	f_trench_activate_death_zone( kill_trench_b_tv, true );
end

script dormant f_trench_bc_trans_door_setup()
		sleep_until( object_valid( maya_tr_bc_tran_dr_1_outer), 1);
		thread( f_trench_door_close_setup( maya_tr_bc_tran_dr_1_outer, 12, TRUE,  6, tv_trench_b_door_1 , kill_trench_b_tv) );
		sleep_until( object_valid( maya_tr_bc_tran_dr_1_inner), 1);
			thread( f_trench_door_close_setup( maya_tr_bc_tran_dr_1_inner, 8, TRUE,  5, tv_trench_b_exit, kill_trans_bc_1 ) );
		//sleep_until( object_valid( maya_tr_bc_transition_door_1), 1);
			//thread( f_trench_door_close_setup( maya_tr_bc_transition_door_1, 8, FALSE,  0, tv_trench_bc_door_2, tv_none ) );
		//sleep_until( object_valid( maya_tr_bc_transition_door_2), 1);
			//thread( f_trench_door_close_setup( maya_tr_bc_transition_door_2, 12, FALSE,  0, tv_trench_bc_door_2, tv_none ) );
		sleep_until( object_valid( maya_tr_bc_transition_door_3), 1);
			thread( f_trench_door_close_setup( maya_tr_bc_transition_door_3, 8, FALSE,  0, tv_trench_b_cleanup, tv_none ) );
		sleep_until( object_valid( maya_tr_bc_transition_door_4), 1);
			thread( f_trench_door_close_setup( maya_tr_bc_transition_door_4, 12, TRUE,  6, tv_trench_b_cleanup, kill_trans_bc_2 ) );
end





///////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////
// TRANSITION BC
///////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////


///////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////
// TRENCH C
///////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////
script dormant f_trench_c_init()
	sleep_until (volume_test_players(tv_trench_c_init), 5);	
		dprint("INIT::TRENCH C");
		set_broadsword_respawns ( true );
////		SetSkyObjectOverride("m90_trench_sky");
		
		
		//object_create_folder(dm_trench_c);
		object_create_folder(crs_trench_c);
		//object_create_folder(trench_c_ants);
		//thread(f_death_beam_damage(tv_trench_c_longbeam));
		//object_create(cr_tr_c_beam_left_a);
		//object_create(cr_tr_c_beam_left_b);
		wake( nar_flight_trench_c_init );
		wake( f_trench_c_spawn_controller );
		wake ( f_trench_c_entry_save );
		sleep(5);

		thread(f_trench_c_cleanup());
		wake(f_trench_c_entryblock_wait);
		wake(f_trench_c_entryblock_wait_2);
		wake( f_trench_c_exitblock_wait );

		
		wake(f_trench_c_init_tower_wait);
		wake(f_trench_c_containers);
		wake ( f_trench_c_tun_a_lock_wait );
//		wake ( f_trench_c_tun_b_lock_wait );

		wake( f_trench_c_side_walls );
		
		//wake ( f_trench_c_turrets_end_wait );
		garbage_collect_now();

		sleep( 60 );
		thread( f_trench_cd_trans_init() );
		//thread( f_weapon_boost_tutorial() );
		wake( f_transition_cd_doors_wait );
		
		thread( f_death_orb_damage(tv_trench_c_gate, cr_tc_lock_intro_1) );
		thread( f_death_orb_damage(tv_trench_c_intro_left, cr_tc_intro_left) );
		thread( f_death_orb_damage(tv_trench_c_intro_right, cr_tc_intro_right) );
			sleep(5);
			
		if is_skull_active(skull_iron) then
			dprint ("iron skull on, no save");
		else	
		 	f_m90_game_save_no_timeout();
		end			
		
end

script static void f_trench_c_cleanup()

	
	sleep_until ( volume_test_players(tv_trench_c_cleanup) or b_ForceCleanup == true, 1);	

	//object_destroy_folder(dm_trench_c);
	object_destroy_folder(crs_trench_c);
	//object_destroy_folder(trench_c_ants);
	b_trench_c_complete = TRUE;
	ai_erase( sq_for_tr_c_turrets_beg );
	ai_erase( sq_for_tr_c_turrets_mid );
	ai_erase( sq_for_tr_c_turrets_mid_joined );
	ai_erase( sq_for_tr_c_turrets_end );
	ai_erase( sq_for_tr_c_turrets_trans );
	wake ( f_trench_c_device_cleanup );
	f_unblip_flag( flag_trench_c_under );
		dprint("CLEANUP::: trench c");

end


script dormant f_trench_c_entry_save()
	sleep_until ( volume_test_players(tv_trench_c_entry_save) , 1);	
		
		if is_skull_active(skull_iron) then
			dprint ("iron skull on, no save");
		else	
		 	f_m90_game_save_no_timeout();
		end		

end




script dormant f_trench_c_side_walls()
	device_set_position_track( maya_trench_c_mid_side_a, 'any:idle', 0.0 );
	device_set_position_track( maya_trench_c_mid_side_b, 'any:idle', 0.0 );
	device_animate_position ( maya_trench_c_mid_side_a, 1, 0, 0.1, 0.1, TRUE);
	device_animate_position ( maya_trench_c_mid_side_b, 1, 0, 0.1, 0.1, TRUE);

end

script dormant f_trench_c_spawn_controller()


	sleep_until ( volume_test_players(tv_trench_c_spawn_beg) , 1);
		ai_place( sq_for_tr_c_turrets_beg );
		ai_place( sq_for_tr_c_turr_a );
	sleep_until ( volume_test_players(tv_trench_c_spawn_mid) , 1);	
		ai_place( sq_for_tr_c_turrets_mid );
		ai_place( sq_for_tr_c_turrets_mid_joined );
		sleep(1);

		if is_skull_active(skull_iron) then
			dprint ("iron skull on, no save");
		else	
		 	f_m90_game_save_no_timeout();
		end

	sleep_until ( volume_test_players(tv_trench_c_spawn_end) , 1);	
		ai_erase( sq_for_tr_c_turrets_beg );
		sleep(3);
		ai_erase( sq_for_tr_c_turr_a );
		ai_place( sq_for_tr_c_turrets_end );
		f_unblip_flag(flag_trench_c_under);
	sleep_until ( volume_test_players(tv_trench_c_spawn_trans) , 1);	
		ai_erase( sq_for_tr_c_turrets_mid );
		sleep(3);
		ai_place( sq_for_tr_c_turrets_trans );
end





script dormant f_trench_c_init_tower_wait()

		//thread( cr_tc_tower_1->f_wait_destruction( cr_tc_lock_1 ) );
		//thread( cr_tc_tower_2->f_wait_destruction( cr_tc_lock_2 ) );
		//thread( cr_tc_tower_3->f_wait_destruction( cr_tc_lock_3 ) );

		//thread( cr_tc_tower_5->f_wait_destruction( cr_tc_lock_5 ) );
		//thread( cr_tc_tower_6->f_wait_destruction( cr_tc_lock_6 ) );
		//thread( cr_tc_tower_7->f_wait_destruction( cr_tc_lock_7 ) );	
	sleep(1);

end

script dormant f_trench_c_turrets_end_wait()
	//sleep_until( object_get_health(cr_tc_lock_7 ) <= 0, 1 );
		sleep(3);
	
		//f_trench_c_turr_end_destroy();
				
end


script static void f_trench_c_turr_end_destroy()

	damage_object( ai_vehicle_get(sq_for_tr_c_turrets_mid_joined.1 ), "default" , 100000);
	damage_object( ai_vehicle_get(sq_for_tr_c_turrets_mid_joined.3 ), "default" , 100000);

	sleep(15);
	damage_object( ai_vehicle_get(sq_for_tr_c_turrets_mid_joined.2 ), "default" , 100000);
	damage_object( ai_vehicle_get(sq_for_tr_c_turrets_mid_joined.4 ), "default" , 100000);
	sleep(2);

end

//cr_tc_lock_7


script static void tc_overhead()
	wake(f_trench_c_containers);
end

script dormant f_trench_c_containers()
	sleep_until( object_valid(maya_trench_c_giant_container), 1 );
		device_set_position_track( maya_trench_c_giant_container, 'any:idle', 0.0 );

end

script dormant f_trench_c_entryblock_wait()



	device_set_position_track( maya_trench_c_intro_obstacle_rt, 'any:idle', 0.0 );

		
	sleep_until(object_get_health(cr_tc_lock_intro_1) <= 0, 1);
		sleep(3);
		device_animate_position( maya_trench_c_intro_obstacle_rt,2.0, 1, 0.1, 0.0, TRUE );

		
end

script dormant f_trench_c_entryblock_wait_2()

		
	sleep_until(object_get_health( cr_tc_lock_turrets_a_1 ) <= 0, 1);
			thread( f_trench_c_blip_under() );
	//sleep_until(object_get_health(cr_tc_lock_turrets_a_2) <= 0, 1);
		sleep(3);
		device_animate_position ( maya_trench_c_mid_side_a, 0.57, 1.0, 0.1, 0.1, TRUE);
		device_animate_position ( maya_trench_c_mid_side_b, 0.57, 1.0, 0.1, 0.1, TRUE);
		sleep_s(0.5);
		f_trench_c_turr_a_destroy();	
		sleep_s(1.25);
		device_animate_position ( maya_trench_c_mid_side_a, 0.9, 1.5, 0.1, 0.1, TRUE);
		device_animate_position ( maya_trench_c_mid_side_b, 0.9, 1.5, 0.1, 0.1, TRUE);
		//device_animate_position ( maya_trench_c_mid_side_a, 0.0, 0.5, 0.1, 0.1, TRUE);
		//device_animate_position ( maya_trench_c_mid_side_b, 0.0, 0.5, 0.1, 0.1, TRUE);
		//sleep_s(1);

end




script static void f_trench_c_turr_a_destroy()
	sleep( 3);
	//effect_new_at_ai_point ( objects\vehicles\covenant\storm_space_phantom\fx\destruction\main_explosion.effect,  ps_trench_c.splode_0 );

	//ai_erase( (sq_for_tr_c_turr_a) );
	damage_object( ai_vehicle_get(sq_for_tr_c_turr_a.tur_a_1 ), "default" , 100000);

	sleep(2);
	damage_object( ai_vehicle_get(sq_for_tr_c_turr_a.tur_a_2 ), "default" , 100000);
	//sleep(7);
	damage_object( ai_vehicle_get(sq_for_tr_c_turr_a.tur_a_3 ), "default" , 100000);
	//sleep(3);
	damage_object( ai_vehicle_get(sq_for_tr_c_turr_a.tur_a_4 ), "default" , 100000);
	damage_object( ai_vehicle_get(sq_for_tr_c_turr_a.tur_a_5 ), "default" , 100000);
	sleep(2);
	damage_object( ai_vehicle_get(sq_for_tr_c_turr_a.tur_a_6 ), "default" , 100000);

end

script static void f_trench_c_blip_under()
	f_blip_flag(flag_trench_c_under, "default");
	sleep_until ( volume_test_players(tv_trench_c_blip_under) or volume_test_players(tv_trench_c_spawn_mid), 1);	
			f_unblip_flag(flag_trench_c_under);
end


script dormant f_trench_c_exitblock_wait()

	device_set_position_track( maya_trench_c_intro_obs_end_rt, 'any:idle', 0.0 );
	device_set_position_track( maya_trench_c_intro_obs_end_lt, 'any:idle', 0.0 );

		
	device_animate_position( maya_trench_c_intro_obs_end_rt, 0.75, 0, 0.1, 0.0, TRUE );
	device_animate_position( maya_trench_c_intro_obs_end_lt, 0.75, 0, 0.1, 0.0, TRUE );
	sleep_until (volume_test_players( tv_trench_c_probes ), 1);	
	//f_blip_flag( flag_tr_c_destroy, "neutralize" );
	sleep_until(object_get_health(cr_tc_lock_end) <= 0, 1);
		sleep(3);
		device_animate_position( maya_trench_c_intro_obs_end_rt,1, 2, 0.1, 0.0, TRUE );
		device_animate_position( maya_trench_c_intro_obs_end_lt, 1, 2, 0.1, 0.0, TRUE );	
		//f_unblip_flag( flag_tr_c_destroy );	
end




script dormant f_trench_c_tun_a_lock_wait()
	
	sleep_until( object_get_health( cr_tc_lock_end ) <= 0, 1);
		//sleep(3);
		//object_move_by_offset(so_maya_trench_c_obs_08 , 0.33, 0,20,0);		
end





script static void f_trench_cd_trans_init()

	//sleep_until( current_zone_set_fully_active() >= s_trench_c_idx, 1 );
	sleep_until (volume_test_players(tv_trench_c_probes), 1);	
		dprint("f_trench_e_trans_init");
		sleep_until( object_valid(maya_tr_d_molars_1) and object_valid(maya_tr_d_molars_2) ,1);
		device_set_position_track( maya_tr_d_molars_1, 'any:idle', 0.0 );
		device_set_position_track( maya_tr_d_molars_2, 'any:idle', 0.0 );
		sleep(5);
		device_animate_position( maya_tr_d_molars_1, 1.0, 0.1, 0.1, 0.0, TRUE );
		device_animate_position( maya_tr_d_molars_2, 1.0, 0.1, 0.1, 0.0, TRUE );
	sleep_until (volume_test_players(tv_trench_cd_trans_1), 1);	
		device_animate_position( maya_tr_d_molars_1, 0.0, 1.0, 0.1, 0.0, TRUE );	
	sleep_until (volume_test_players(tv_trench_cd_trans_2), 1);	
		device_animate_position( maya_tr_d_molars_2, 0.0, 1.0, 0.1, 0.0, TRUE );
end


///////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////
// TRANSITION CD
///////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////
//		sleep_until( object_valid( maya_tr_bc_tran_dr_1_outer), 1);
//		thread( f_trench_door_close_setup( maya_tr_bc_tran_dr_1_outer, 12, TRUE,  4, tv_trench_b_door_1 , kill_trench_b_tv) );
//maya_tr_cd_transition_door_1
//maya_tr_trans_cd_door_4

script dormant f_transition_cd_doors_wait()
		sleep_until( object_valid( maya_tr_cd_transition_door_1), 1);
			thread( f_trench_door_close_setup( maya_tr_cd_transition_door_1, 12, TRUE,  6, tv_trench_c_spawn_trans , kill_trench_c_tv) );
		sleep_until( object_valid( maya_tr_trans_cd_door_4), 1);
			thread( f_trench_door_close_setup( maya_tr_trans_cd_door_4, 9, TRUE,  6, tv_trench_cd_exit_door , kill_trans_cd_1) );
end

///////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////
// TRENCH D
///////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////

global boolean b_trench_d_active = FALSE;

script dormant f_trench_d_init()


	sleep_until (volume_test_players(tv_trench_d_init), 1);	
		dprint("INIT:::TRENCH D");
		set_broadsword_respawns ( true );
////		SetSkyObjectOverride("m90_trench_sky");
		object_create_folder(crs_trench_d);
		thread( f_trench_e_trans_init() );
		wake(f_trench_d_chomp_molars_wait);
		wake(f_stomp_molars_wait);

//// Death Beam Enabling
		thread(f_death_beam_damage(tv_cr_td_beam_1));
		thread(f_death_beam_damage(tv_cr_td_beam_1b));
		thread(f_death_beam_damage(tv_cr_td_beam_2));
		thread(f_death_beam_damage(tv_cr_td_beam_2b));
		thread(f_death_beam_damage(tv_cr_td_beam_2c));
		thread(f_death_beam_damage(tv_cr_td_beam_3));
		thread(f_death_beam_damage(tv_cr_td_beam_4));
		thread(f_death_beam_damage(tv_cr_td_beam_4b));
		thread(f_death_beam_damage(tv_cr_td_beam_5));
		
		thread (f_trench_d_save_prevention());
		
		wake( nar_flight_trench_d_init );
		thread(f_trench_d_cleanup());
		b_trench_d_active = TRUE;
		sleep(1);
		wake( f_transition_de_doors_wait );
		garbage_collect_now();
		sleep(1);

		if is_skull_active(skull_iron) then
			dprint ("iron skull on, no save");
		else	
		 	f_m90_game_save_no_timeout();
		end

end

script static void f_trench_d_save_prevention()
	//this is to avoid death loops in the laser field
	
	repeat
	
		if 
		volume_test_players (tv_not_safe_to_save_1) or 
		volume_test_players (tv_not_safe_to_save_2) or 
		volume_test_players (tv_not_safe_to_save_3) or 
		volume_test_players (tv_not_safe_to_save_4) or 
		volume_test_players (tv_not_safe_to_save_5) or 
		volume_test_players (tv_not_safe_to_save_6)
		then
	
			game_save_cancel();
		
		else
		
			sleep (1);
			
		end		
	
	until (b_trench_d_active == FALSE);
	
end

script static void f_trench_d_cleanup()

	
	sleep_until ( volume_test_players(tv_trench_d_cleanup) or b_ForceCleanup == true, 1);	
		ai_erase(sq_for_tr_d_turrets_1);
		ai_erase(sq_for_tr_d_turrets_2);
		ai_erase(sq_for_tr_d_turrets_3);
		ai_erase(sq_for_tr_d_turrets_4);
		ai_erase(sq_for_tr_d_turrets_5);
		b_trench_d_complete = TRUE;
		dprint("CLEANUP::: trench D");
		object_destroy_folder(crs_trench_d);
		object_destroy_folder(crs_trench_d_special);
		wake ( f_trench_d_device_cleanup );
		b_trench_d_active = FALSE;
end




script dormant f_trench_d_chomp_molars_wait()
	sleep_until (volume_test_players(tv_trench_d_teeth), 1);
		thread(f_chomp_molars());
end

global short s_MOLAR_MOVE_DISTANCE_UP = 30;
global short s_MOLAR_MOVE_DISTANCE_DOWN = -30;

script dormant f_stomp_molars_wait()
	device_set_position_track( dm_maya_tr_d_beamobj_1, 'any:idle', 0.0 );
	device_set_position_track( dm_maya_tr_d_beamobj_2, 'any:idle', 0.0 );
	device_set_position_track( dm_maya_tr_d_beamobj_3, 'any:idle', 0.0 );
	device_set_position_track( dm_maya_tr_d_beamobj_4, 'any:idle', 0.0 );
	device_set_position_track( dm_maya_tr_d_beamobj_5, 'any:idle', 0.0 );
	device_set_position_track( dm_maya_tr_d_beamobj_6, 'any:idle', 0.0 );
	device_animate_position( dm_maya_tr_d_beamobj_1, 0.80, 0, 0.0, 1, TRUE );
	device_animate_position( dm_maya_tr_d_beamobj_2, 0.60, 0, 0.0, 1, TRUE );
	sleep(5);
	device_animate_position( dm_maya_tr_d_beamobj_3, 0.55, 0, 0.1, 1, TRUE );
	device_animate_position( dm_maya_tr_d_beamobj_4, 0.85, 0, 0.1, 1, TRUE );	
	sleep(5);
	device_animate_position( dm_maya_tr_d_beamobj_5, 0.7, 0, 0.1, 1, TRUE );
	device_animate_position( dm_maya_tr_d_beamobj_6, 0.7, 0, 0.1, 1, TRUE );	
	sleep_until (volume_test_players(tv_trench_d_blockers), 1);	
		f_stomp_molars();
end



script static void f_stomp_molars()

	sleep(80);
	//object_create(cr_td_beam_1);
	//object_create(cr_td_beam_1b);
	//thread(f_trench_d_beam_mover( cr_td_beam_1, 7, 25, false ));
	//thread(f_trench_d_beam_mover( cr_td_beam_1b, 7, 25, false));
	thread(f_trench_d_beam_mover( cr_tr_d_beamhole_1_left, 7, 25, false ));
	thread(f_trench_d_beam_mover( cr_tr_d_beamhole_1_right, 7, 25, false ));
	thread(f_trench_d_beam_mover( cr_tr_d_beamhole_1b_left, 7, 25, false ));
	thread(f_trench_d_beam_mover( cr_tr_d_beamhole_1b_right, 7, 25, false ));
	sleep(15);
	//object_create(cr_td_beam_2);
	//object_create(cr_td_beam_2b);
	//object_create(cr_td_beam_2c);
	//thread(f_trench_d_beam_mover( cr_td_beam_2, 3.0, 25,  false));
	//thread(f_trench_d_beam_mover( cr_td_beam_2b, 3.0, 25,  false ));
	//thread(f_trench_d_beam_mover( cr_td_beam_2c, 3.0, 25,  false  ));
	thread(f_trench_d_beam_mover( cr_tr_d_beamhole_2_left, 3.0, 25, false ));
	thread(f_trench_d_beam_mover( cr_tr_d_beamhole_2_right, 3.0, 25, false ));
	thread(f_trench_d_beam_mover( cr_tr_d_beamhole_2b_right, 3.0, 25, false ));
	thread(f_trench_d_beam_mover( cr_tr_d_beamhole_2b_left, 3.0, 25, false ));	
	thread(f_trench_d_beam_mover( cr_tr_d_beamhole_2c_left, 3.0, 25, false ));
	thread(f_trench_d_beam_mover( cr_tr_d_beamhole_2c_right, 3.0, 25, false ));		
	sleep(15);	
	
	//object_create(cr_td_beam_3);
	//object_create(cr_td_beam_4);
	//object_create(cr_td_beam_4b);
	
	//thread(f_trench_d_beam_mover( cr_td_beam_3, 1, 10, false ));
	//thread(f_trench_d_beam_mover( cr_td_beam_4b, 1, 10, false ));
	thread(f_trench_d_beam_mover( cr_tr_d_beamhole_3_left, 1, 10, false ));
	thread(f_trench_d_beam_mover( cr_tr_d_beamhole_3_right, 1, 10, false ));	
	thread(f_trench_d_beam_mover( cr_tr_d_beamhole_4b_left, 1, 10, false ));
	thread(f_trench_d_beam_mover( cr_tr_d_beamhole_4b_right, 1, 10, false ));	
	//object_create(cr_td_beam_5);
	//thread(f_trench_d_beam_mover( cr_td_beam_3, 5 ));		
end



script static void f_trench_d_beam_mover( object_name o, real time, real dist, boolean b_oddmove)
	repeat
		if b_oddmove then
			object_move_by_offset( o, time, 0,dist,0);
			object_move_by_offset( o, time, 0,-(dist),0);		
		
		else
			object_move_by_offset( o, time, 0,0,dist);
			object_move_by_offset( o, time, 0,0,-(dist));

		end
	//sleep(1);

	until ( b_trench_d_active == FALSE , 1 );

end


script static void f_chomp_molars()
	local real s_A_TIME = 1.4;
	device_set_position_track( dm_maya_tr_d_molars_1, 'any:idle', 0.0 );
	device_set_position_track( dm_maya_tr_d_molars_2, 'any:idle', 0.0 );
	device_set_position_track( dm_maya_tr_d_molars_3, 'any:idle', 0.0 );
	device_set_position_track( dm_maya_tr_d_molars_4, 'any:idle', 0.0 );
	device_set_position_track( dm_maya_tr_d_molars_5, 'any:idle', 0.0 );
	device_set_position_track( dm_maya_tr_d_molars_6, 'any:idle', 0.0 );
	
	

	device_animate_position( dm_maya_tr_d_molars_2, 1.0, s_A_TIME, 0.1, 0.0, TRUE );

	sleep(15);
	device_animate_position( dm_maya_tr_d_molars_3, 1.0, s_A_TIME, 0.1, 0.2, TRUE );
	thread(f_trench_d_spawn_turret_squad( sq_for_tr_d_turrets_1 ));
	sleep(15);
	device_animate_position( dm_maya_tr_d_molars_4, 1.0, s_A_TIME, 0.1, 0.2, TRUE );
	thread(f_trench_d_spawn_turret_squad( sq_for_tr_d_turrets_2 ));
	sleep(15);
	device_animate_position( dm_maya_tr_d_molars_5, 1.0, s_A_TIME, 0.1, 0.2, TRUE );
	thread(f_trench_d_spawn_turret_squad( sq_for_tr_d_turrets_3 ));
	sleep(15);
	device_animate_position( dm_maya_tr_d_molars_6, 1.0, s_A_TIME, 0.1, 0.2, TRUE );
	thread(f_trench_d_spawn_turret_squad( sq_for_tr_d_turrets_4 ));
	sleep(15);
	device_animate_position( dm_maya_tr_d_molars_1, 1.0, s_A_TIME, 0.1, 0.2, TRUE );
	thread(f_trench_d_spawn_turret_squad( sq_for_tr_d_turrets_5 ));
	
	//sleep(20);
	//ai_place( sq_for_tr_d_turrets );
end


script static void f_trench_d_spawn_turret_squad( ai squad )
	sleep(30);
	ai_place( squad );
	//sleep(1);
end




script dormant f_trench_e_trans_init_tower_wait()
		object_create( cr_tr_e_trans_lock_01 );
		object_create( cr_tr_e_trans_lock_02 );
		object_create( cr_tr_e_trans_lock_03 );
//		object_create( cr_tr_e_trans_lock_04 );
		sleep(5);
end






script static void f_trench_e_trans_init()

		sleep_until( volume_test_players(tv_trans_04_e_init), 1 );
		dprint("f_trench_e_trans_init");
		device_set_position_track( maya_tr_de_molars_1, 'any:idle', 0.0 );
		device_set_position_track( maya_tr_de_molars_2, 'any:idle', 0.0 );
		device_set_position_track( maya_tr_de_molars_3, 'any:idle', 0.0 );
		//device_set_position_track( maya_tr_de_molars_4, 'any:idle', 0.0 );
		device_set_position_track( maya_tr_de_molars_5, 'any:idle', 0.0 );
		//device_set_position_track( maya_tr_de_molars_6, 'any:idle', 0.0 );
		device_set_position_track( maya_tr_de_molars_7, 'any:idle', 0.0 );
		object_create( cr_tr_e_trans_lock_01 );
		object_create( cr_tr_e_trans_lock_02 );
		object_create( cr_tr_e_trans_lock_03 );
		//object_create( cr_tr_e_trans_lock_04 );
		object_create( cr_tr_e_trans_lock_05 );
		//object_create( cr_tr_e_trans_lock_06 );
		object_create( cr_tr_e_trans_lock_07 );
		sleep(5);
		wake( nar_flight_trench_e_init );
		
		thread( f_trench_de_molar_wait( cr_tr_e_trans_lock_01, maya_tr_de_molars_1, FALSE ) );
		thread( f_trench_de_molar_wait( cr_tr_e_trans_lock_02, maya_tr_de_molars_2, FALSE ) );
		thread( f_trench_de_molar_wait( cr_tr_e_trans_lock_03, maya_tr_de_molars_3, FALSE ) );
		//thread( f_trench_de_molar_wait( cr_tr_e_trans_lock_04, maya_tr_de_molars_4, FALSE ) );
		thread( f_trench_de_molar_wait( cr_tr_e_trans_lock_05, maya_tr_de_molars_5, FALSE ) );
		//thread( f_trench_de_molar_wait( cr_tr_e_trans_lock_06, maya_tr_de_molars_6, FALSE ) );
		thread( f_trench_de_molar_wait( cr_tr_e_trans_lock_07, maya_tr_de_molars_7, FALSE ) );
end

script static void f_trench_de_molar_wait(object_name lock, device molar, boolean b_reverse )
	sleep_until( object_get_health(lock) <= 0 , 1);
		if b_reverse then
			device_animate_position( molar, 0.0, 0.5, 0.1, 0.0, TRUE );
		else
			device_animate_position( molar, 1.0, 0.75, 0.1, 0.0, TRUE );
		end
		//dprint("open molar");
end

script static void f_move_molar_up(object molar)
	object_move_by_offset( molar, 1.15, 0,0,s_MOLAR_MOVE_DISTANCE_UP);
end

script static void f_move_molar_down(object molar)
	object_move_by_offset( molar, 1.15, 0,0,s_MOLAR_MOVE_DISTANCE_DOWN);
end


script static void f_move_molar_down_r(object molar, short distance, real r_time)
	object_move_by_offset( molar, r_time, 0,0,distance);
end

script static void f_move_molar_in_r(object molar, short distance, real r_time)
	object_move_by_offset( molar, r_time, distance,0,0);
end


///////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////
// TRANSITION DE
///////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////
script dormant f_transition_de_doors_wait()
		object_create( dm_trench_de_exit_door );
		
		thread( f_death_orb_damage(tv_trans_de_gate_a, cr_tr_e_trans_lock_01) );
		thread( f_death_orb_damage(tv_trans_de_gate_b, cr_tr_e_trans_lock_02) );
		thread( f_death_orb_damage(tv_trans_de_gate_c, cr_tr_e_trans_lock_03) );
		thread( f_death_orb_damage(tv_trans_de_gate_d, cr_tr_e_trans_lock_05) );
		thread( f_death_orb_damage(tv_trans_de_gate_e, cr_tr_e_trans_lock_07 ) );
		sleep_until( object_valid( maya_tr_trans_de_door_1), 1);
			thread( f_trench_door_close_setup( maya_tr_trans_de_door_1, 9, TRUE,  6, tv_trench_d_door , kill_trench_d) );
		sleep_until( object_valid( dm_trench_de_exit_door), 1);
			thread( f_trench_door_close_setup( dm_trench_de_exit_door, 9, TRUE,  5, tv_trench_d_cleanup , kill_trans_de_1) );
end


///////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////
// TRENCH E
///////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////

//global boolean b_trench_e_door_towers_alive = TRUE;

script dormant f_trench_e_init()

	sleep_until (volume_test_players(tv_trench_e_init), 1);	
		dprint("INIT::: trench e");
		//b_Eye_Complete = FALSE;
		set_broadsword_respawns ( true );
////		SetSkyObjectOverride("m90_trench_sky");
		wake(f_trench_e_eye_gate_wait);
		thread(f_trench_e_cleanup());
		wake(f_trench_e_save_wait);

		
		//object_create( dm_trench_e_gate );
		object_create_folder(crs_trench_e);
		//object_create(dm_eye_gate);
		
		//wake(f_eye_door_1_init);
		sleep(1);

		//object_create( dm_tr_e_tower_01 );
		//object_create( dm_tr_e_tower_02 );
		wake( f_trench_e_rail_guard_wait );
		

		sleep(5);

		garbage_collect_now(); 
		sleep(1);
		
		if is_skull_active(skull_iron) then
			dprint ("iron skull on, no save");
		else	
		 	f_m90_game_save_no_timeout();
		end
		
		sleep(5);
		//clear_all_text(); 
		
		//thread(f_trench_c_chainsaw());
end

script static void f_trench_e_cleanup()

	
	sleep_until (volume_test_players( tv_eye_close ) or b_ForceCleanup == true, 1);	
		dprint("CLEANUP::: trench e");
		b_trench_e_complete = TRUE;
		//object_destroy( dm_tr_e_tower_01 );
		//object_destroy( dm_tr_e_tower_02 );

		object_destroy_folder(crs_trench_e);
		
		object_destroy( dm_trench_de_exit_door );
//		object_destroy( dm_tr_e_trans_tower_01 );
	//	object_destroy( dm_tr_e_trans_tower_02 );
	//	object_destroy( dm_tr_e_trans_tower_03 );
	//	object_destroy( dm_tr_e_trans_tower_04 );
		object_destroy( cr_tr_e_trans_lock_01 );
		object_destroy( cr_tr_e_trans_lock_02 );
		object_destroy( cr_tr_e_trans_lock_03 );
//		object_destroy( cr_tr_e_trans_lock_04 );		
		wake ( f_trench_e_device_cleanup );
//		thread(f_open_eye_door_1());
end

script dormant f_trench_e_save_wait()
	sleep_until (volume_test_players(tv_trench_e_save), 1);
		dprint("SAVE::: Trench E");
		sleep(1);

		if is_skull_active(skull_iron) then
			dprint ("iron skull on, no save");
		else	
		 	f_m90_game_save_no_timeout();
		end

end





script dormant f_trench_e_rail_guard_wait()
	device_set_position_track( maya_tr_e_finger_r_1, 'any:idle', 0.0 );
	device_set_position_track( maya_tr_e_finger_r_2, 'any:idle', 0.0 );
	device_set_position_track( maya_tr_e_finger_r_3, 'any:idle', 0.0 );
	device_set_position_track( maya_tr_e_finger_r_4, 'any:idle', 0.0 );
	device_set_position_track( maya_tr_e_finger_l_1, 'any:idle', 0.0 );
	device_set_position_track( maya_tr_e_finger_l_2, 'any:idle', 0.0 );
	device_set_position_track( maya_tr_e_finger_l_3, 'any:idle', 0.0 );
	device_set_position_track( maya_tr_e_finger_l_4, 'any:idle', 0.0 );

	sleep(2);

	sleep_until (volume_test_players(tv_trench_e_guard), 1);

		device_animate_position( maya_tr_e_finger_r_4, 1, 1.5, 0.1, 0.0, TRUE );
		device_animate_position( maya_tr_e_finger_l_4, 1, 1.5, 0.1, 0.0, TRUE );	
		sleep(30);		
		device_animate_position( maya_tr_e_finger_r_3, 1, 1.5, 0.1, 0.0, TRUE );
		device_animate_position( maya_tr_e_finger_l_3, 1, 1.5, 0.1, 0.0, TRUE );
		sleep(30);		
		device_animate_position( maya_tr_e_finger_r_2, 1, 1.5, 0.1, 0.0, TRUE );
		device_animate_position( maya_tr_e_finger_l_2, 1, 1.5, 0.1, 0.0, TRUE );
		sleep(30);
		device_animate_position( maya_tr_e_finger_r_1, 1, 1.5, 0.1, 0.0, TRUE );
		device_animate_position( maya_tr_e_finger_l_1, 1, 1.5, 0.1, 0.0, TRUE );
end

script dormant f_trench_e_eye_gate_wait()

	
	device_set_position_track( maya_tr_e_gate_right, 'any:idle', 0.0 );	
	device_set_position_track( maya_tr_e_gate_left, 'any:idle', 0.0 );



	sleep_until (volume_test_players(tv_eye_gate), 1);

		//thread( f_weapon_boost_tutorial() );
		f_trench_e_eye_gate();
		//dprint("no gate for you");

end


script static void f_trench_e_eye_gate()
	//dprint("EYE GATE");

	//sleep(5);
	sleep_until( object_valid(maya_tr_e_gate_right) and object_valid(maya_tr_e_gate_left) ,1 );
	device_animate_position( maya_tr_e_gate_right, 0.15, 3, 0.1, 0.0, FALSE );
	device_animate_position( maya_tr_e_gate_left, 0.15, 3, 0.1, 0.0, FALSE );		
	//device_animate_position( dm_maya_eye_gate, 0.45, 3.0, 0.1, 0.0, TRUE );
	sleep_s(3);
	//device_animate_position( dm_maya_eye_gate, 0.9, 12, 0.1, 0.0, TRUE );
	if game_is_cooperative() and not difficulty_legendary() then
		device_animate_position( maya_tr_e_gate_right, 0.50, 7.5, 0.1, 0.0, FALSE );
		device_animate_position( maya_tr_e_gate_left, 0.50, 7.5, 0.1, 0.0, FALSE );	
		sleep_s(7.5);
	else
		device_animate_position( maya_tr_e_gate_right, 0.50, 3.5, 0.1, 0.0, FALSE );
		device_animate_position( maya_tr_e_gate_left, 0.50, 3.5, 0.1, 0.0, FALSE );	
		sleep_s(3.5);
	end
	//device_animate_position( dm_maya_eye_gate, 1.0, 5, 0.1, 0.0, TRUE );
	sleep_s(1);
	
	f_trench_activate_death_zone( kill_trench_e_tv, true );
end







///////////////////////////////////////////
// trench a turret command scripts
///////////////////////////////////////////

script command_script cs_scale_flight_ship()
	//dprint("scale banshee");
	object_set_scale ( ai_vehicle_get ( ai_current_actor ) , 4.0, 0);

	ai_set_clump ( ai_current_actor, 2 );
	ai_designer_clump_perception_range( 650 );
	//cs_force_combat_status (3);

	//cs_shoot ( TRUE, player0);

end

script command_script cs_turret_auto_target_init()
	//dprint("Scale up bro");
	//object_set_scale ( ai_vehicle_get ( ai_current_actor ), _TURRET_SCALE_SIZE, 0);
//	vehicle_hover ( ai_vehicle_get ( ai_current_actor ), TRUE); 

	ai_set_clump ( ai_current_actor, 1 );
	ai_designer_clump_perception_range( 650 );
	//cs_force_combat_status (3);
	ai_magically_see_object ( ai_current_actor , player0	);
	cs_shoot ( TRUE, player0);
end

script command_script cs_turret_generic_init()

	object_dissolve_from_marker( ai_vehicle_get ( ai_current_actor ), phase_in, fx_life_source );
	ai_set_clump ( ai_current_actor, 1 );
	ai_designer_clump_perception_range( 650 );
	object_set_scale ( ai_vehicle_get ( ai_current_actor ) , _TURRET_SCALE_SIZE, 0);
end

script command_script cs_turret_generic_init_hidden()


	ai_set_clump ( ai_current_actor, 1 );
	ai_designer_clump_perception_range( 650 );
	object_set_scale ( ai_vehicle_get ( ai_current_actor ) , _TURRET_SCALE_SIZE, 0);
	object_hide(ai_vehicle_get(ai_current_actor), TRUE);
end

script command_script cs_turret_init_a_1()

	object_dissolve_from_marker( ai_vehicle_get ( ai_current_actor ), phase_in, fx_life_source );
	ai_set_clump ( ai_current_actor, 1 );
		ai_designer_clump_perception_range( 650 );
	object_set_scale ( ai_vehicle_get ( ai_current_actor ) , _TURRET_SCALE_SIZE, 0);
	repeat
		cs_shoot_point(true, ps_trench_a.hita);

		sleep(45);
		cs_shoot_point(false, ps_trench_a.hita);
		//sleep_rand_s(0.75,1.5);

		cs_shoot_point(true, ps_trench_a.p2);
		sleep(45);
		cs_shoot_point(false, ps_trench_a.p2);
		//sleep_rand_s(0.75,1.5);
		
		cs_shoot_point(true, ps_trench_a.p3);
		sleep(45);
		cs_shoot_point(false, ps_trench_a.p3);
		//sleep_rand_s(0.75,1.5);
		
		cs_shoot_point(true, ps_trench_a.p0);
		sleep(45);
		cs_shoot_point(false, ps_trench_a.p0);
		
		
		cs_shoot_point(true, ps_trench_a.p6);
		sleep(45);
		cs_shoot_point(false, ps_trench_a.p6);
		
		cs_shoot_point(true, ps_trench_a.p7);
		sleep(45);
		cs_shoot_point(false, ps_trench_a.p7);
		
		cs_shoot_point(true, ps_trench_a.p8);
		sleep(45);
		cs_shoot_point(false, ps_trench_a.p8);
		sleep_rand_s(0.75,1.5);
	until( b_trench_a_complete ,5 );
	sleep_forever();

end


script command_script cs_turret_init_a_2()


	ai_set_clump ( ai_current_actor, 1 );
		ai_designer_clump_perception_range( 650 );
	object_set_scale ( ai_vehicle_get ( ai_current_actor ) , _TURRET_SCALE_SIZE, 0);
	repeat
		cs_shoot_point(true, ps_trench_a.hitb);
		sleep(30);
		cs_shoot_point(false, ps_trench_a.hitb);
		sleep_rand_s(0.75,1.5);

		cs_shoot_point(true, ps_trench_a.p3);
		sleep(30);
		cs_shoot_point(false, ps_trench_a.p3);
		sleep_rand_s(0.75,1.5);
		
		cs_shoot_point(true, ps_trench_a.p2);
		sleep(30);
		cs_shoot_point(false, ps_trench_a.p2);
		sleep_rand_s(0.75,1.5);
		
		cs_shoot_point(true, ps_trench_a.p1);
		sleep(30);
		cs_shoot_point(false, ps_trench_a.p1);
		sleep_rand_s(0.75,1.5);
	until( b_trench_a_complete ,1 );
	sleep_forever();

end


script command_script cs_turret_init_a_3()


	ai_set_clump ( ai_current_actor, 1 );
		ai_designer_clump_perception_range( 650 );
	object_set_scale ( ai_vehicle_get ( ai_current_actor ) , _TURRET_SCALE_SIZE, 0);
	repeat
		cs_shoot_point(true, ps_trench_a.p5);
		sleep(30);
		cs_shoot_point(false, ps_trench_a.p5);
		sleep_rand_s(1.5,2);

		cs_shoot_point(true, ps_trench_a.p4);
		sleep(30);
		cs_shoot_point(false, ps_trench_a.p4);
		sleep_rand_s(1.5,2);
		

	until( b_trench_a_complete ,1 );
	sleep_forever();

end

script command_script cs_turret_init_a_4()


	ai_set_clump ( ai_current_actor, 1 );
		ai_designer_clump_perception_range( 650 );
	object_set_scale ( ai_vehicle_get ( ai_current_actor ) , _TURRET_SCALE_SIZE, 0);
	repeat
		cs_shoot_point(true, ps_trench_a.p4);
		sleep(30);
		cs_shoot_point(false, ps_trench_a.p4);
		sleep_rand_s(1.5,2);

		cs_shoot_point(true, ps_trench_a.p5);
		sleep(30);
		cs_shoot_point(false, ps_trench_a.p5);
		sleep_rand_s(1.5,2);
		
	until( b_trench_a_complete ,1 );
	sleep_forever();

end




script command_script cs_turret_init_b_1()


	ai_set_clump ( ai_current_actor, 1 );
		ai_designer_clump_perception_range( 650 );
	object_set_scale ( ai_vehicle_get ( ai_current_actor ) , _TURRET_SCALE_SIZE, 0);
	repeat
		cs_shoot_point(true, ps_trench_b.p0);
		sleep(30);
		cs_shoot_point(false, ps_trench_b.p0);
		sleep_rand_s(1.5,2);

		cs_shoot_point(true, ps_trench_b.p1);
		sleep(30);
		cs_shoot_point(false, ps_trench_b.p1);
		sleep_rand_s(1.5,2);
		
		cs_shoot_point(true, ps_trench_b.p2);
		sleep(30);
		cs_shoot_point(false, ps_trench_b.p2);
		sleep_rand_s(1.5,2);		
	until( b_trench_b_complete ,1 );
	sleep_forever();

end

script command_script cs_turret_init_b_2()


	ai_set_clump ( ai_current_actor, 1 );
		ai_designer_clump_perception_range( 650 );
	object_set_scale ( ai_vehicle_get ( ai_current_actor ) , _TURRET_SCALE_SIZE, 0);
	repeat
		cs_shoot_point(true, ps_trench_b.p1);
		sleep(30);
		cs_shoot_point(false, ps_trench_b.p1);
		sleep_rand_s(1.5,2);

		cs_shoot_point(true, ps_trench_b.p2);
		sleep(30);
		cs_shoot_point(false, ps_trench_b.p2);
		sleep_rand_s(1.5,2);
		
		cs_shoot_point(true, ps_trench_b.p0);
		sleep(30);
		cs_shoot_point(false, ps_trench_b.p0);
		sleep_rand_s(1.5,2);		
		
	until( b_trench_b_complete ,1 );
	sleep_forever();

end

script command_script cs_turret_init_b_3()


	ai_set_clump ( ai_current_actor, 1 );
		ai_designer_clump_perception_range( 650 );
	object_set_scale ( ai_vehicle_get ( ai_current_actor ) , _TURRET_SCALE_SIZE, 0);
	repeat
		cs_shoot_point(true, ps_trench_b.p5);
		sleep(20);
		cs_shoot_point(false, ps_trench_b.p5);
		sleep_rand_s(0.5,1);

		cs_shoot_point(true, ps_trench_b.p6);
		sleep(20);
		cs_shoot_point(false, ps_trench_b.p6);
		sleep_rand_s(0.5,1);
		
	until( b_trench_b_complete ,1 );
	sleep_forever();

end

script command_script cs_turret_init_b_4()


	ai_set_clump ( ai_current_actor, 1 );
		ai_designer_clump_perception_range( 650 );
	object_set_scale ( ai_vehicle_get ( ai_current_actor ) , _TURRET_SCALE_SIZE, 0);
	repeat
		cs_shoot_point(true, ps_trench_b.p3);
		sleep(20);
		cs_shoot_point(false, ps_trench_b.p3);
		sleep_rand_s(0.5,1);

		cs_shoot_point(true, ps_trench_b.p4);
		sleep(20);
		cs_shoot_point(false, ps_trench_b.p4);
		sleep_rand_s(0.5,1);
		
	until( b_trench_b_complete ,1 );
	sleep_forever();

end

//mid turret
script command_script cs_turret_init_b_5()


	ai_set_clump ( ai_current_actor, 1 );
		ai_designer_clump_perception_range( 650 );
	object_set_scale ( ai_vehicle_get ( ai_current_actor ) , _TURRET_SCALE_SIZE, 0);
	repeat
		cs_shoot_point(true, ps_trench_b.p7);
		sleep(20);
		cs_shoot_point(false, ps_trench_b.p7);
		sleep_rand_s(0.2,0.3);

		cs_shoot_point(true, ps_trench_b.p8);
		sleep(20);
		cs_shoot_point(false, ps_trench_b.p8);
		sleep_rand_s(0.2,0.3);
		
		cs_shoot_point(true, ps_trench_b.p9);
		sleep(20);
		cs_shoot_point(false, ps_trench_b.p9);
		sleep_rand_s(0.2,0.3);	
		
	until( b_trench_b_complete ,1 );
	sleep_forever();

end

script command_script cs_turret_init_c_1()


	ai_set_clump ( ai_current_actor, 1 );
		ai_designer_clump_perception_range( 650 );
	object_set_scale ( ai_vehicle_get ( ai_current_actor ) , _TURRET_SCALE_SIZE, 0);
	repeat
		cs_shoot_point(true, ps_trench_c.p4);
		sleep(20);
		cs_shoot_point(false, ps_trench_c.p4);
		//sleep_rand_s(0.5,0.5);
		sleep(30);

		cs_shoot_point(true, ps_trench_c.p5);
		sleep(20);
		cs_shoot_point(false, ps_trench_c.p5);
		sleep(30);
		//sleep_rand_s(0.5,0.5);
		
	until( b_trench_c_complete ,1 );
	sleep_forever();

end

script command_script cs_turret_init_c_2()


	ai_set_clump ( ai_current_actor, 1 );
		ai_designer_clump_perception_range( 650 );
	object_set_scale ( ai_vehicle_get ( ai_current_actor ) , _TURRET_SCALE_SIZE, 0);
	repeat
		cs_shoot_point(true, ps_trench_c.p5);
		sleep(20);
		cs_shoot_point(false, ps_trench_c.p5);
		//sleep_rand_s(0.5,0.5);
		sleep(30);

		cs_shoot_point(true, ps_trench_c.p4);
		sleep(20);
		cs_shoot_point(false, ps_trench_c.p4);
		sleep(30);
		//sleep_rand_s(0.5,0.5);
		
	until( b_trench_c_complete ,1 );
	sleep_forever();

end
script command_script cs_turret_init_transcd_1()


	ai_set_clump ( ai_current_actor, 1 );
		ai_designer_clump_perception_range( 650 );
	object_set_scale ( ai_vehicle_get ( ai_current_actor ) , _TURRET_SCALE_SIZE, 0);
	repeat
		cs_shoot_point(true, ps_trench_d.p7);
		sleep(20);
		cs_shoot_point(false, ps_trench_d.p7);
		//sleep_rand_s(0.5,0.5);
		sleep(30);

		cs_shoot_point(true, ps_trench_d.p9);
		sleep(20);
		cs_shoot_point(false, ps_trench_d.p9);
		sleep(30);
		//sleep_rand_s(0.5,0.5);
		
	until( b_trench_d_complete ,1 );
	sleep_forever();

end


script command_script cs_turret_init_transcd_2()


	ai_set_clump ( ai_current_actor, 1 );
		ai_designer_clump_perception_range( 650 );
	object_set_scale ( ai_vehicle_get ( ai_current_actor ) , _TURRET_SCALE_SIZE, 0);
	repeat
		cs_shoot_point(true, ps_trench_d.p10);
		sleep(20);
		cs_shoot_point(false, ps_trench_d.p10);
		sleep(30);
		//sleep_rand_s(0.5,0.5);

		cs_shoot_point(true, ps_trench_d.p8);
		sleep(20);
		cs_shoot_point(false, ps_trench_d.p8);
		sleep(30);
		//sleep_rand_s(0.5,0.5);
		
	until( b_trench_d_complete ,1 );
	sleep_forever();

end





script command_script cs_turret_generic_eye_init()


	ai_set_clump ( ai_current_actor, 1 );
	ai_designer_clump_perception_range( 500 );
	object_dissolve_from_marker( ai_vehicle_get ( ai_current_actor ), phase_in, fx_life_source );
	object_set_scale ( ai_vehicle_get ( ai_current_actor ) , _TURRET_SCALE_SIZE, 0);
end




script command_script cs_trench_d_fire()

	object_set_scale ( ai_vehicle_get ( ai_current_actor ), _TURRET_SCALE_SIZE, 0);
	cs_shoot_point (TRUE, ai_nearest_point ( ai_current_actor,  ps_trench_d));

	object_dissolve_from_marker( ai_vehicle_get ( ai_current_actor ), phase_in, fx_life_source );
	ai_set_clump ( ai_current_actor, 3 );
	ai_designer_clump_perception_range( 800 );
end




script static void f_trench_activate_death_zone( trigger_volume tv , boolean b_on)

	if b_on then
		kill_volume_enable (tv);
		dprint("activating death volume");
	else
		kill_volume_disable (tv);
		dprint("DE-activating death volume");
	end

end






script static void f_trench_door_close_setup(device dm, real r_time, boolean b_full_close, real r_full_close_time, trigger_volume tv, trigger_volume dv)

	device_set_position_track( dm, 'any:idle', 0.0 );
	sleep_until( volume_test_players( tv ) , 1);
		if b_full_close then
			if r_time > 0.1 then			
				device_animate_position( dm, 0.7, r_time  , 0.1, 0.0, TRUE );	
				sleep( 30 * r_time );
				if volume_test_players( dv ) then
					game_save_cancel();
				end
				sleep(1);
				
				if r_full_close_time > 0 then
					device_animate_position( dm, 1.0, r_full_close_time, 0.1, 0.0, TRUE );	
					sleep_s( r_full_close_time );
				else
					device_animate_position( dm, 1.0, 6, 0.1, 0.0, TRUE );	
					sleep_s( 6 );
				end
				
			else
				device_animate_position( dm, 1.0, r_time , 0.1, 0.0, TRUE );
			end
			
			if dv != TV_NONE then
				
				sleep_s(3);
				f_trench_activate_death_zone( dv, true );
			end
		else
			device_animate_position( dm, 0.7, r_time, 0.1, 0.0, TRUE );	
		end
	
end


script dormant f_trench_a_device_cleanup()
	dprint("a device cleanup");
	object_destroy( dm_trench_a_door_1 );
	object_destroy( maya_tr_a_end_0_left );
	object_destroy( maya_tr_a_end_0_right );
	object_destroy( maya_tr_a_end_1_left );
	object_destroy( maya_tr_a_end_1_right );
	object_destroy( maya_tr_a_end_2_left );
	object_destroy( maya_tr_a_end_2_right );
	object_destroy( maya_tr_a_end_4_left );
	object_destroy( maya_tr_a_end_4_right );
	object_destroy( maya_tr_a_container_1 );
	object_destroy( maya_tr_a_container_2 );
	object_destroy( maya_tr_a_container_3 );
	object_destroy( maya_tr_a_container_4 );
	object_destroy( maya_tr_a_pg_b_left );
	object_destroy( maya_tr_a_pg_b_right );
	object_destroy( maya_tr_a_pg_a_right );
	object_destroy( maya_tr_a_pg_a_left );
	object_destroy( maya_tr_a_tun_a_1 );
	object_destroy( maya_tr_a_tun_a_2 );
	object_destroy( maya_tr_a_gate_1 );

	object_destroy( maya_tr_a_b1_a_left );
	object_destroy( maya_tr_a_b1_a_right );
	object_destroy( maya_tr_a_b1_b_left );
	object_destroy( maya_tr_a_b1_b_right );
	object_destroy( maya_tr_a_end_4_left );
	object_destroy( maya_tr_a_end_3_left );
	object_destroy( maya_tr_a_end_2_left );
	object_destroy( maya_tr_a_end_1_left );
	object_destroy( maya_tr_a_end_0_left );
	object_destroy( maya_tr_a_end_4_right );
	object_destroy( maya_tr_a_end_3_right );
	object_destroy( maya_tr_a_end_2_right );
	object_destroy( maya_tr_a_end_1_right );
	object_destroy( maya_tr_a_end_0_right );

end

script dormant f_trench_b_device_cleanup()
	dprint("b device cleanup");

	object_destroy( dm_trench_a_door_1 );
	object_destroy( maya_tr_b_teeth_rise );
	object_destroy( maya_tr_b_wall_guard_2 );
	object_destroy( maya_tr_b_wall_guard_3 );
	object_destroy( maya_tr_b_wall_guard_4 );
	object_destroy( maya_tr_b_wall_guard_5 );
	object_destroy( maya_tr_b_wall_guard_6 );
	object_destroy( maya_tr_b_wall_guard_7 );
	object_destroy( dm_trans_1_probe_1 );
end

script dormant f_trench_c_device_cleanup()
	dprint("c device cleanup");
	object_destroy( maya_tr_bc_tran_dr_1_inner );
	object_destroy( maya_tr_bc_tran_dr_1_outer );
	object_destroy( maya_trench_c_mid_side_b );
	object_destroy( maya_trench_c_mid_side_a );
	object_destroy( maya_trench_c_intro_obstacle_rt );
	object_destroy( maya_trench_c_giant_container );
	object_destroy( maya_trench_c_intro_obs_end_rt );
	object_destroy( maya_trench_c_intro_obs_end_lt );


end

script dormant f_trench_d_device_cleanup()
	dprint("d device cleanup");
	object_destroy( dm_maya_tr_d_beamobj_1 );
	object_destroy( dm_maya_tr_d_beamobj_2 );
	object_destroy( dm_maya_tr_d_beamobj_3 );
	object_destroy( dm_maya_tr_d_beamobj_4 );
	object_destroy( dm_maya_tr_d_beamobj_5 );
	object_destroy( dm_maya_tr_d_beamobj_6 );

	object_destroy( dm_maya_tr_d_molars_1 );
	object_destroy( dm_maya_tr_d_molars_2 );
	object_destroy( dm_maya_tr_d_molars_3 );
	object_destroy( dm_maya_tr_d_molars_4 );
	object_destroy( dm_maya_tr_d_molars_5 );
	object_destroy( dm_maya_tr_d_molars_6 );
	object_destroy( maya_tr_d_molars_1  ); //trans cd
	object_destroy( maya_tr_d_molars_2 );  //trans cd
end

script dormant f_trench_e_device_cleanup()
	dprint("e device cleanup");

	object_destroy( maya_tr_de_molars_1 );
	object_destroy( maya_tr_de_molars_2 );
	object_destroy( maya_tr_de_molars_3 );
	object_destroy( maya_tr_de_molars_5 );
	object_destroy( maya_tr_de_molars_7 );

	object_destroy( maya_tr_e_finger_r_1 );
	object_destroy( maya_tr_e_finger_r_2 );
	object_destroy( maya_tr_e_finger_r_3 );
	object_destroy( maya_tr_e_finger_r_4 );
	object_destroy( maya_tr_e_finger_l_1 );
	object_destroy( maya_tr_e_finger_l_2 );
	object_destroy( maya_tr_e_finger_l_3 );
	object_destroy( maya_tr_e_finger_l_4 );
	object_destroy( maya_tr_e_gate_right );
	object_destroy( maya_tr_e_gate_left );

end

script dormant f_trench_eye_device_cleanup()
	dprint("eye device cleanup");
	
end

script static void trench_a_editor()
	wake( f_trench_e_device_cleanup );
	wake( f_trench_b_device_cleanup );
	wake( f_trench_c_device_cleanup );
	wake( f_trench_d_device_cleanup );
end

script static void trench_b_editor()
	wake( f_trench_a_device_cleanup );
	wake( f_trench_e_device_cleanup );
	wake( f_trench_c_device_cleanup );
	wake( f_trench_d_device_cleanup );
end

script static void trench_c_editor()
	wake( f_trench_a_device_cleanup );
	wake( f_trench_e_device_cleanup );
	wake( f_trench_b_device_cleanup );
	wake( f_trench_d_device_cleanup );
end

script static void trench_d_editor()
	wake( f_trench_a_device_cleanup );
	wake( f_trench_b_device_cleanup );
	wake( f_trench_d_device_cleanup );
	wake( f_trench_e_device_cleanup );
end

script static void trench_e_editor()
	wake( f_trench_a_device_cleanup );
	wake( f_trench_b_device_cleanup );
	wake( f_trench_c_device_cleanup );
	wake( f_trench_d_device_cleanup );
end






global boolean b_trench_a_exit_wp = FALSE;
global boolean b_flight_player_0_wrong_way = FALSE;
global boolean b_flight_player_1_wrong_way = FALSE;
global boolean b_flight_player_2_wrong_way = FALSE;
global boolean b_flight_player_3_wrong_way = FALSE;
global boolean b_flight_wp_check_done = FALSE;
global cutscene_flag flag_flight_waypoint_goal = flag_tr_a_exit_wp;



script dormant f_flight_waypoint_goals()
	flag_flight_waypoint_goal = flag_tr_a_exit_wp;
	sleep_until ( volume_test_players(tv_trench_a_door_1 ) , 1);
		//b_trench_a_exit_wp = TRUE;

		f_blip_flag( flag_tr_a_exit_wp , "default" );
	sleep_until ( volume_test_players(tv_trench_a_door_1_shut ) , 1);
		thread(  f_flight_cleanup_goals() );
		flag_flight_waypoint_goal = flag_trans_ab_exit;
		f_unblip_flag( flag_tr_a_exit_wp );
		navpoint_set_next_improved(TRUE);
		f_blip_flag( flag_trans_ab_exit , "default" );
	sleep_until ( volume_test_players( tv_trans_ab_exit ) , 1);
		thread(  f_flight_cleanup_goals() );		
 		flag_flight_waypoint_goal = flag_tr_b_exit_wp;
 		f_unblip_flag( flag_trans_ab_exit );
 	sleep_until ( volume_test_players(tv_trench_b_exit ), 1);			
 		thread(  f_flight_cleanup_goals() );
 		flag_flight_waypoint_goal = flag_trans_bc_exit;
 		f_unblip_flag( flag_tr_b_exit_wp );
 	//sleep_until ( volume_test_players(tv_trench_bc_door_2 ) , 1);		
 		//tv_trench_bc_door_2
 	sleep_until ( volume_test_players(tv_trans_bc_exit ) , 1);	 		
 		thread(  f_flight_cleanup_goals() );
 		flag_flight_waypoint_goal = flag_tr_c_exit;
 		f_unblip_flag( flag_trans_bc_exit ); 		
 	sleep_until ( volume_test_players(tv_trench_cd_trans_1 ), 1);	 
 		thread(  f_flight_cleanup_goals() );		
 		flag_flight_waypoint_goal = flag_trans_cd_exit;
 		f_unblip_flag( flag_tr_c_exit );
 		//f_unblip_flag( flag_tr_c_destroy );	
 	sleep_until ( volume_test_players(tv_trench_c_cleanup ), 1);	
 		thread(  f_flight_cleanup_goals() ); 		
 		flag_flight_waypoint_goal = flag_tr_d_exit_wp;
 		f_unblip_flag( flag_trans_cd_exit );
 	sleep_until ( volume_test_players(tv_trench_e_init ), 1);	 	
 		thread(  f_flight_cleanup_goals() );	
 		flag_flight_waypoint_goal = flag_trans_de_exit;
 		f_unblip_flag( flag_tr_d_exit_wp );
 	sleep_until ( volume_test_players(tv_trench_e_save ), 1);	
 		thread(  f_flight_cleanup_goals() ); 		
 		flag_flight_waypoint_goal = flag_tr_e_exit_wp;
 		f_unblip_flag( flag_trans_de_exit );
 	sleep_until ( volume_test_players(tv_trench_e_exit_wp ), 1);
 		thread(  f_flight_cleanup_goals() );	 		
 		flag_flight_waypoint_goal = flag_trans_ee_exit;
 		f_unblip_flag( flag_tr_e_exit_wp );
 	sleep_until ( volume_test_players(tv_open_eye_door_1 ), 1);	
 		thread(  f_flight_cleanup_goals() ); 		
 		flag_flight_waypoint_goal = flg_none;
 		f_unblip_flag( flag_trans_ee_exit );
 		sleep(60);
		thread(  f_flight_cleanup_goals() );
end

script static void f_flight_cleanup_goals()
		f_unblip_flag( flag_tr_a_exit_wp );
		f_unblip_flag( flag_trans_ab_exit );
		f_unblip_flag( flag_tr_b_exit_wp ); 
		f_unblip_flag( flag_trans_bc_exit ); 
		f_unblip_flag( flag_tr_c_exit );
		f_unblip_flag( flag_trans_cd_exit );
		f_unblip_flag( flag_tr_d_exit_wp );
 		f_unblip_flag( flag_trans_de_exit );
 		f_unblip_flag( flag_tr_e_exit_wp );
 		f_unblip_flag( flag_trans_ee_exit );
 		f_unblip_flag( flg_none );
 		
end

script dormant f_flight_waypoints_breadcrumbs()
	sleep_until(objects_distance_to_position(players(), 1804, -218, -562) < 50);
	f_blip_position_breadcrumbs(1726.64, -838.38, -563.70, "trench_split_right", "default");
	f_blip_position_breadcrumbs(1866.83, -898.09, -563.70, "trench_split_left", "default");
	
	sleep_until(objects_distance_to_position(players(), 1726.64, -838.38, -563.70) < 50 or
				objects_distance_to_position(players(), 1866.83, -898.09, -563.70) < 50);
				
	f_unblip_position_breadcrumbs("trench_split_right");
	f_unblip_position_breadcrumbs("trench_split_left");
end

script dormant f_flight_setup_players_waypoints()
	b_flight_wp_check_done = FALSE;
	
	
	//DISABLED FOR NOW
//	thread( f_flight_direction_update() );
	if player_valid( player0() ) then
		thread( f_flight_waypoints( player0() ));
	end

	if player_valid( player1() ) then
		thread( f_flight_waypoints( player1() ));
	end
	
	if player_valid( player2() ) then
		thread( f_flight_waypoints( player2() ));
	end
	
	if player_valid( player3() ) then
		thread( f_flight_waypoints( player3() ));
	end		

	
end

script static void f_flight_waypoints( unit playa)
	local real cur_distance = 0;
	local real new_distance = 0;
	repeat
		if flag_flight_waypoint_goal != flg_none then
			if f_flight_is_going_backwards( playa, flag_flight_waypoint_goal ) then
					dprint("TURN AROUND");
					
									
					if not f_trench_get_turn_around_var( playa ) then		
						dprint("bliping trench goal");	
						if not b_flight_wp_check_done then	
									
							f_blip_flag( flag_flight_waypoint_goal , "default" );
							f_trench_set_turn_around_var(  playa, true );	
						else
							f_trench_set_turn_around_var(  playa, FALSE );
						end
					end
					
								
			else
				if f_trench_get_turn_around_var ( playa ) then
					f_trench_set_turn_around_var( playa, FALSE );
				end
			end

		end	
	until( b_flight_wp_check_done, 15 );	
	
	f_trench_set_turn_around_var( playa, FALSE );
	sleep(1);
	kill_script( f_flight_direction_update );
end


script static boolean f_flight_is_going_backwards(unit playa, cutscene_flag flag_g)
	local real cur_distance = 0;
	local real new_distance = 0;
	local boolean b_backwards = FALSE;
	cur_distance = objects_distance_to_flag ( playa, flag_g );
	//inspect( cur_distance );
	sleep(60);
	new_distance = objects_distance_to_flag ( playa, flag_g );		

	if new_distance - 60 > cur_distance then
		b_backwards = TRUE;
	end
	b_backwards;
end


script static void f_trench_set_turn_around_var( unit playa, boolean b_on)

	if playa == player0 then
		b_flight_player_0_wrong_way = b_on ; 		
	elseif playa == player1 then
		b_flight_player_1_wrong_way = b_on ; 
	elseif playa == player2 then
		b_flight_player_2_wrong_way = b_on ;
	elseif playa == player3 then
		b_flight_player_3_wrong_way = b_on ;
	end
end

script static boolean f_trench_get_turn_around_var( unit playa)
	local boolean var = FALSE;
	if playa == player0 then
		var = b_flight_player_0_wrong_way; 		
	elseif playa == player1 then
		var = b_flight_player_1_wrong_way; 
	elseif playa == player2 then
		var = b_flight_player_2_wrong_way;
	elseif playa == player3 then
		var = b_flight_player_3_wrong_way;
	end
	
	var;
end


script static void f_flight_stop_direction_check()


	b_flight_wp_check_done = TRUE;
	sleep(30);
	//kill_script( f_flight_direction_update );
	
	b_flight_player_0_wrong_way = FALSE;
	b_flight_player_1_wrong_way = FALSE;
	b_flight_player_2_wrong_way = FALSE;
	b_flight_player_3_wrong_way = FALSE;
	sleep(1);
	chud_show_screen_training( player0,"" ); 
	chud_show_screen_training( player1,"" ); 
	chud_show_screen_training( player2,"" ); 
	chud_show_screen_training( player3,"" ); 
	thread( f_flight_cleanup_goals() );
end

global boolean b_just_showed_message_player0 = FALSE;
global boolean b_just_showed_message_player1 = FALSE;
global boolean b_just_showed_message_player2 = FALSE;
global boolean b_just_showed_message_player3 = FALSE;


script static void f_flight_wrongway_message_timer( unit playa )

	local long l_timer = timer_stamp( 12 );
	
	if playa == player0 then
		b_just_showed_message_player0 = TRUE; 		
	elseif playa == player1 then
		b_just_showed_message_player1 = TRUE; 
	elseif playa == player2 then
		b_just_showed_message_player2 = TRUE;
	elseif playa == player3 then
		b_just_showed_message_player3 = TRUE;
	end
	
	sleep_until( timer_expired(l_timer), 1 );
		if playa == player0 then
			b_just_showed_message_player0 = FALSE; 		
		elseif playa == player1 then
			b_just_showed_message_player1 = FALSE; 
		elseif playa == player2 then
			b_just_showed_message_player2 = FALSE;
		elseif playa == player3 then
			b_just_showed_message_player3 = FALSE;
		end		
end

script static void f_flight_direction_update( )

	dprint("start waypoint update");
	repeat
	
		if not b_showing_tutorial then
			if b_flight_player_0_wrong_way and( unit_get_health(player_get(player_00)) > 0 and not b_flight_wp_check_done) then
				 //dprint("show turn around");
				 thread ( f_flight_wrongway_message_timer	(player0) );
				 chud_show_screen_training( player0, bsword_turn_around ); 	
			else
				chud_show_screen_training( player0,"" ); 
			end		
			if b_flight_player_1_wrong_way and( unit_get_health(player_get(player_01)) > 0 and not b_flight_wp_check_done)then
				 thread ( f_flight_wrongway_message_timer	(player1) );
				 chud_show_screen_training( player1, bsword_turn_around ); 	
			else
				chud_show_screen_training( player1,"" ); 
			end	
	
			if b_flight_player_2_wrong_way and( unit_get_health(player_get(player_02)) > 0 and not b_flight_wp_check_done)then
				 thread ( f_flight_wrongway_message_timer	(player2) );
				 chud_show_screen_training( player2, bsword_turn_around ); 	
			else
				chud_show_screen_training( player2,"" ); 
			end	
			if b_flight_player_3_wrong_way and( unit_get_health(player_get(player_03)) > 0  and not b_flight_wp_check_done)then
				thread ( f_flight_wrongway_message_timer	(player3) );
				chud_show_screen_training( player3, bsword_turn_around ) ; 	
			else
				chud_show_screen_training( player3,"" ); 
			end	
		end
		
	until( b_flight_wp_check_done, 15 );
	dprint("end waypoint update");
	chud_show_screen_training( player0,"" ); 
	chud_show_screen_training( player1,"" ); 
	chud_show_screen_training( player2,"" ); 
	chud_show_screen_training( player3,"" ); 
	

end

/////////////////////////////////////////////////////////////////////////////////////////////////
//DAMAGE FROM BEAMS
/////////////////////////////////////////////////////////////////////////////////////////////////

script static void f_death_beam_damage( trigger_volume the_trig )
	
	if player_valid( player0 ) then
		thread(f_beam_damage_per_player(the_trig, player0));
	end
	
	if player_valid( player1 ) then
		thread(f_beam_damage_per_player(the_trig, player1));
	end
	
	if player_valid( player2 ) then
		thread(f_beam_damage_per_player(the_trig, player2));
	end
	
	if player_valid( player3 ) then
		thread(f_beam_damage_per_player(the_trig, player3));
	end
end

script static void f_beam_damage_per_player(trigger_volume the_trig, player the_player)
	local vehicle the_ship = NONE;
	repeat
		if player_valid( the_player ) then	
			sleep_until (volume_test_object (the_trig, the_player) , 1);
				if not b_Eye_Complete then
					the_ship = unit_get_vehicle( the_player );
					damage_object(the_ship, "default", 250);
					damage_objects_effect ("objects\vehicles\covenant\storm_wraith\turrets\storm_wraith_mortar\weapon\projectiles\damage_effects\storm_wraith_mortar_round_impact.damage_effect", the_ship);
					dprint("Hit by a beam");
					thread( f_eye_beam_camera_shake(the_player )  );
				end
				sleep (10);
		end
	until ( b_eye_complete , 1);
end

/////////////////////////////////////////////////////////////////////////////////////////////////
//DAMAGE FROM DOOR ORBS
/////////////////////////////////////////////////////////////////////////////////////////////////

script static void f_death_orb_damage( trigger_volume the_trig, object_name orb )
	
	if player_valid( player0 ) then
		thread(f_orb_damage_per_player(the_trig, orb, player0));
	end
	
	if player_valid( player1 ) then
		thread(f_orb_damage_per_player(the_trig, orb, player1));
	end
	
	if player_valid( player2 ) then
		thread(f_orb_damage_per_player(the_trig, orb, player2));
	end
	
	if player_valid( player3 ) then
		thread(f_orb_damage_per_player(the_trig, orb, player3));
	end
end

script static void f_orb_damage_per_player(trigger_volume the_trig, object_name orb, player the_player)
	local vehicle the_ship = NONE;
	sleep_until( object_valid( orb ),1);
	repeat
		if player_valid( the_player ) then	
			sleep_until (volume_test_object (the_trig, the_player) or b_Eye_Complete, 1);
				if not b_Eye_Complete and object_get_health(orb) > 0 then
					the_ship = unit_get_vehicle( the_player );
					damage_object(the_ship, "default", 250);
					damage_objects_effect ("objects\vehicles\covenant\storm_wraith\turrets\storm_wraith_mortar\weapon\projectiles\damage_effects\storm_wraith_mortar_round_impact.damage_effect", the_ship);
					dprint("Hit by orb energy");
					thread( f_eye_beam_camera_shake(the_player )  );
				end
				sleep (8);
		end
	until ( object_get_health(orb) <= 0 or b_Eye_Complete, 1);
end

// --- End m90_sacrifice_mission_flight.hsc ---

// --- Begin m90_streaming.hsc ---


// Scripted load of eye zoneset, which includes cin_m91_sacrifice so we avoid
// a blocking load once the player completes the area. We use the begin_zone_set trigger to initiate the load,
// which handles player teleports automatically, then we script the commit so checkpoints become available again
// as soon as possible.
script dormant f_load_eye_zoneset()
	// Sleep until we've begun loading the eye zoneset
	sleep_until(current_zone_set() == s_eye_idx);

	dprint("Eye zoneset loading begun");
	
	// Wait until we've completely loaded it
	sleep_until(not PreparingToSwitchZoneSet());
	
	// Commit the switch so checkpoints are usable again.
	switch_zone_set(eye);
end
// --- End m90_streaming.hsc ---

// --- Begin m90_teleport.hsc ---
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343
//
// Mission: 					m90_sacrifice
//	Insertion Points:	teleport
//										
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343

// =================================================================================================
// =================================================================================================
// *** GLOBALS ***
// =================================================================================================
// =================================================================================================



// =================================================================================================
// =================================================================================================
// *** START-UP ***
// =================================================================================================
// =================================================================================================


global boolean b_teleport_complete = FALSE;
global boolean b_teleport_special = FALSE;
global boolean b_teleport_platform_done = FALSE;
global boolean b_Teleporter_Active_1 = FALSE;
global boolean b_Teleporter_Active_2 = FALSE;
global boolean b_Teleporter_Active_3 = FALSE;
global boolean b_Teleporter_Active_4 = FALSE;
global boolean b_Teleporter_Active_5 = FALSE;
global boolean b_Teleporter_Active_6 = FALSE;
global boolean b_engineroom_done = FALSE;
global short s_objcon_teleport = 0;
global boolean b_tele_main_front_flush = FALSE;



script startup m90_teleport()		
	if b_debug then 
		print_difficulty(); 
	end
	
	sleep_until( b_arcade_complete , 4 );
	sleep_until( volume_test_players( tv_teleport_init ),3 );
		dprint("== INIT == TELEPORT ==");
		data_mine_set_mission_segment ("m90_teleport");
		set_broadsword_respawns ( false );
		garbage_collect_now();
		zone_set_trigger_volume_enable( "zone_set:teleport_rooms", FALSE);
		zone_set_trigger_volume_enable( "zone_set:walls_teleport_room", FALSE);
		zone_set_trigger_volume_enable( "begin_zone_set:walls_teleport_room", FALSE);
		wake( nar_teleportals_init );

		object_create_folder( dms_teleport );
		//object_create_folder( dms_teleport_trains );
		object_create_folder( crs_teleport );
		sleep(1);
		wake( f_teleport_intro );
		wake( f_teleport_controller );

		wake( f_teleport_setup_portals );
		wake( f_teleport_objcon_controller);

		wake( f_teleport_intro_spawn );
		//wake( f_teleport_intro_intro_surprise );
		wake( f_teleport_cleanup );
		sleep(1);		
		f_m90_game_save_no_timeout();

end


script dormant f_teleport_cleanup()
	sleep_until ( b_teleport_complete	 == TRUE, 1 ); 
		object_destroy_folder( crs_teleport );
		object_destroy_folder( crs_teleport_portals );
		object_destroy_folder( dms_teleport );
		//object_destroy_folder( dms_teleport_trains );
		kill_script(f_engineroom_found_a_success);
		kill_script(f_engineroom_start_bullet_catcher);
		
		ai_erase ( sg_teleport_all );
		f_unblip_flag( flag_teleport_main_up_portal);
		f_unblip_flag ( flag_teleport_main_plat_exit);
		
		
end

script dormant f_teleport_intro_crates()
	sleep_until( volume_test_players( tv_teleport_intro_crate ) or b_arcade_complete,1 );	
		object_create_folder(crs_teleport_intro);
end


script dormant f_teleport_intro_intro_surprise()

		

	sleep_until( volume_test_players( tv_teleport_spawn_surprise ),1 );		
		ai_place_in_limbo( sq_for_arc_dd_knight );
		sleep(5);
		pup_play_show( pup_drop_down_hall );
//pup_play_show( pup_reaction );
			
end



// =================================================================================================
// =================================================================================================
// *** INTRO ***
// =================================================================================================
// =================================================================================================

global long l_intro_pawns_a = -1;
global long l_intro_pawns_b = -1;

script dormant f_teleport_intro_spawn()
	dprint("spawning intros");
	ai_place( sq_for_main_bishop_intro_1 );
	ai_place( sq_for_main_bishop_intro_2 );
	
	sleep_until( ai_task_count(obj_teleport.bi_start) == 0 );
		
		if ( s_objcon_teleport < 20 ) then
			dprint(" ------  beez nest spawn shards -----");
			l_intro_pawns_a = ai_place_with_shards( sq_for_main_intro_pawns_a, 2 );
			l_intro_pawns_b = ai_place_with_shards( sq_for_main_intro_pawns_b, 2 );
		end
end

script dormant f_teleport_intro()

	//
	sleep_until ( volume_test_players( tv_teleport_intro )	, 1 );

	local long l_timer = timer_stamp( 15 ); 


		sleep_until( dialog_id_played_check(l_teleport_put_in) or timer_expired(l_timer), 1 );
			sleep(2);
			object_create( dc_teleport_intro );
			sleep(3);
			f_blip_object (dc_teleport_intro, "activate");
	//	wake( f_teleport_engineroom_sentinal_spawner );
	//	wake( f_teleport_engineroom_sentinal_spawner_rear );

	sleep_until ( device_get_position( dc_teleport_intro ) != 0 );
		local long insert_show = pup_play_show(pup_cort_insert_1);
		thread(nar_teleport_intro_open());
		f_unblip_object (dc_teleport_intro);
		sleep_until(not pup_is_playing(insert_show));

		
		//dprint("cortana in");
		//sleep(5);
		//effect_new( objects\characters\storm_cortana\fx\rez\cor_rez_in.effect, fx_cortana_rez_insert_1 );
		//object_create( sn_teleport_cortana_intro );
		//sleep(30);

	

		sleep_s(3);
		zone_set_trigger_volume_enable( "zone_set:teleport_rooms", TRUE);
		//f_insertion_zoneload( s_teleport_rooms_idx, INSERTION_INDEX_TELEPORT, TRUE );
		
		sleep_s(2);
		//object_create( cr_teleport_portal_1 );
		thread( f_teleport_open_portal( dm_teleport_portal_init, 0.0, TRUE, flg_none ) );
		object_destroy (sn_teleport_cortana_intro);
		//effect_new_at_ai_point (environments\solo\m10_crash\fx\flash_white.effect, ps_teleport.p1);
		sleep_s(1.5);
		b_Teleporter_Active_1 = TRUE;
		f_m90_game_save();
		
end

script static void f_spawn_orb
	sleep(26);
	effect_new_on_object_marker("objects\characters\storm_cortana\fx\orb\cor_orb_persistant_ramp",cr_tele_plinth,m_top_stand);
end






// =================================================================================================
// =================================================================================================
// *** ENGINE ROOM ***
// =================================================================================================
// =================================================================================================
global short s_teleport_plat_wave = 1;
global boolean b_teleport_bishop_pod_a_alive = FALSE;
global boolean b_teleport_reuse_shards = FALSE;
global boolean b_teleport_bishop_bail = FALSE;


script static void debug_engineroom()
	s_objcon_teleport = 20;
	wake(f_teleport_engineroom_init);
end

script dormant f_teleport_engineroom_init()
		dprint("ENGINE ROOM INIT");
		thread(fx_engine_room_beams());
		wake ( f_teleport_engineroom_spawn );
		wake ( f_teleport_engineroom_portal_activate );
		//object_create( dc_teleport_platform );
		//effect_new_at_ai_point ( environments\solo\m10_crash\fx\flash_white.effect, ps_teleport.p1 );
		f_teleport_party_to_next_portal( flag_teleport_1a, flag_teleport_1b, flag_teleport_1c, flag_teleport_1d, ps_teleport.p1, dm_teleport_er_enter );
		//object_destroy ( cr_teleport_portal_1 );		
		f_teleport_return_from_teleport();
		wake( f_teleport_enginerroom_event_wait );
		thread( f_engineroom_start_bullet_catcher() );
		object_destroy_folder( crs_teleport_intro );
		sleep(2);
		f_m90_game_save();
		
		sleep_s(2);

		
end
global boolean b_engineroom_release_hounds = FALSE;
script dormant f_teleport_enginerroom_event_wait()
			pup_play_show(pup_pawn_roar);
	sleep_until( volume_test_players( tv_teleport_er_event), 1);
		ai_place( sq_for_tele_pawnz_intro);	

end

script dormant f_teleport_engineroom_portal_activate()
	sleep_until( volume_test_players( tv_teleport_er_portal_active), 1);
		device_animate_position(  dm_teleport_er_enter , 0 , 1.5, 0.1, 0.0, TRUE );
		sleep( 5 );
		device_animate_position(  dm_teleport_portal_plat_exit , 1 , 1.5, 0.1, 0.0, TRUE );

end

global long l_engineroom_shards_a = -1;
global boolean b_platorm_timer_up = FALSE;
script dormant f_teleport_engineroom_spawn()

	//ai_place( sq_for_tele_pawnz_intro);
	ai_place(sg_engine_room_sentinels);
	ai_place( sq_for_tele_pawnz_intro_b);
	sleep_until( s_objcon_teleport == 20, 2 );
		thread( 		f_mus_m90_e02_start() );
		thread( f_teleport_plat_open_portal() );
	sleep_until( ai_spawn_count(sg_teleport_1) > 3 and ai_living_count( sg_teleport_1 ) <= 1 or b_platorm_timer_up, 2 );
		dprint("**** fight over ****");	
		b_teleport_platform_done = TRUE;

	
end

script static void f_teleport_plat_open_portal()
	
	sleep_rand_s( 30, 40 );
	b_platorm_timer_up = TRUE;
	//dprint("platform timer up");
end





// =================================================================================================
// =================================================================================================
// *** MAIN UP ***
// =================================================================================================
// =================================================================================================
script static void debug_main_up()
	//wake( f_teleport_objcon_controller );

	wake( f_teleport_main_up_init );
	sleep(1);
		s_objcon_teleport = 20;
		wake(f_teleport_objcon_controller);
	//f_teleport_spawn_main_up();
		object_create_folder( dms_teleport );
		//object_create_folder( dms_teleport_trains );
		object_create_folder( crs_teleport );
end

script dormant f_teleport_main_up_init()

		DestroyDynamicTask( l_intro_pawns_a );
		DestroyDynamicTask( l_intro_pawns_b );
		
		f_teleport_main_up_bishop_spawn();
		ai_erase( sg_teleport_intro_bishops );

		f_teleport_party_to_next_portal( flag_teleport_2a, flag_teleport_2b,flag_teleport_2c,flag_teleport_2d,ps_teleport.p2,dm_teleport_dummy_6  );
		thread( f_teleport_spawn_main_up() );
		//object_destroy ( cr_teleport_portal_2 );
		f_teleport_return_from_teleport();
		f_m90_game_save_no_timeout();
	
		sleep_until( ai_spawn_count( sg_teleport_2 ) > 4 and ai_living_count( sq_for_tele_rt_bot_bw ) == 0 and ai_living_count( sq_2c_knight_1 ) and ai_living_count( sq_2b_knight_2 ));
			f_m90_game_save();
end

script dormant f_teleport_main_up_wp()
	//sleep_s( 90 );
	dprint("i would like to blip exit flag");
	if ( not b_Teleporter_Active_3 ) then
		dprint("blip exit flag");
		f_blip_flag( flag_teleport_main_up_portal, "default");
	end
end

script static void f_teleport_main_up_bishop_spawn()
		dprint("adding up bishops" );

		ai_place ( sq_2c_bishop );		
		if ( ai_spawn_count(sg_teleport_intro_bishops) > 0 ) then

			if ( ai_living_count(sg_teleport_intro_bishops) >= 2 ) then

				dprint("adding another bishop to main platform");
				ai_place ( sq_2c_bishop_3 );
			end
			

		end

		sleep(5);
		//RequestAutomatedTurretActivation( ai_vehicle_get(sq_for_tele_up_tur.gustov ) );
end

script static void f_teleport_spawn_main_up()

	wake( f_teleport_force_front_flush );
	sleep_until( volume_test_players( tv_teleport_main_up_enter ) );
		wake( f_teleport_spawn_main_up_2 );
		thread( f_mus_m90_e03_start() );
		sleep(15);
		thread( f_teleport_spawn_main_portal( sq_for_tele_lt_bot_comm , dm_teleport_dummy_2, ps_teleport.dummy_2, flg_none ) );
		sleep( 60 );
		thread( f_teleport_spawn_main_portal( sq_for_tele_rt_top_ranger , dm_teleport_dummy_3, ps_teleport.dummy_3, flg_none ) );
		sleep( 45 );
		
		if ( difficulty_legendary() or coop_players_3() ) then
			//thread( f_teleport_spawn_main_portal( sq_for_tele_rt_bot_bw , dm_teleport_dummy_2, ps_teleport.dummy_2 ) );	
			sleep( 90 );
		end
		//

		ai_place ( sq_2c_bishop_2 );
		sleep(30);
		//ai_place_with_shards( sq_for_tele_up_tur );
	sleep_s(20);
	if not ( coop_players_3() or difficulty_legendary() ) then
		sleep_s( 15 );
	end
	//dprint("halfback flush");
	b_tele_main_front_flush = TRUE;
	
	//NEW FLUSH
	//ai_place_with_shards( sq_for_main_intro_pawns_a, 2 )

end

script dormant f_teleport_force_front_flush()

	sleep_until( volume_test_players( tv_teleport_main_lower_2 ) );
		//b_teleport_force_front_flush = TRUE;
	//	dprint("force front flush");
		//b_tele_main_front_flush = TRUE;

end


script dormant f_teleport_spawn_main_up_2()
		
		ai_place_in_limbo(sq_2b_knight_2);
		sleep(15);
		ai_place_in_limbo(sq_2c_knight_1);
end




script static void f_teleport_spawn_main_portal( ai tele_squad, device dm, point_reference pt0, cutscene_flag fg  )

	//object_create( portal_a );
	//object_create( portal_b );
	thread( f_teleport_open_portal( dm, 3, FALSE, fg ) );
	sleep( 20 );
	ai_place( tele_squad );
	sleep( 35 );
	//object_destroy( portal_a );
	//object_destroy( portal_b );
	
end


// =================================================================================================
// =================================================================================================
// *** NOTLAB ***
// =================================================================================================
// ================================================================================================


script static void debug_notlab()
	//object_create( sentinel_tim );
	object_create_folder(crs_teleport);
	sleep(3);
	wake(f_teleport_notlab_init);

end

script dormant f_teleport_notlab_init()
		wake(f_notlab_weapon_setup);
		sleep(1);
		object_wake_physics ( cr_nl_crate_a );
		object_wake_physics ( cr_nl_crate_b );
		ai_place(sq_for_notlab_sent);
		f_teleport_party_to_next_portal( flag_teleport_3a, flag_teleport_3b, flag_teleport_3c, flag_teleport_3d, ps_teleport.p3,dm_teleport_lab_enter );
		//object_destroy ( cr_teleport_portal_3 );
		wake( f_teleport_lab_sent_wait );
		f_teleport_return_from_teleport();

		f_m90_game_save();
	
	
end



script dormant f_teleport_lab_sent_wait()
	
	sleep_until( volume_test_players( tv_tele_lab_sent ) );
		device_animate_position(  dm_teleport_lab_enter , 0 , 1.5, 0.1, 0.0, TRUE );
		sleep( 5 );
		device_animate_position(  dm_teleport_lab_exit , 1 , 1.5, 0.1, 0.0, TRUE );
		sleep( 30 * 2 );
		nar_teleport_special_weapons();

		f_m90_game_save();
end


script dormant f_notlab_weapon_setup()


	objects_attach(   cr_notlab_hammer_holder, "m_weapon_large",   wp_notlab_hammer, "");
	objects_attach(   cr_notlab_weapon_holder_a, "m_weapon_medium",   wp_notlab_weapon_a, "");
	objects_attach(   cr_notlab_weapon_holder_a, "m_weapon_large",   wp_notlab_weapon_a_2, "");	


	objects_attach(   cr_notlab_weapon_holder_b, "m_weapon_medium",   wp_notlab_weapon_b_1, "");
	objects_attach(   cr_notlab_weapon_holder_b, "m_weapon_large",   wp_notlab_weapon_b_2, "");	
	
	objects_attach(   cr_notlab_weapon_holder_c, "m_weapon_large",  wp_notlab_weapon_c , "");
	objects_attach(   cr_notlab_weapon_holder_c_2, "m_weapon_large",  wp_notlab_weapon_c_2 , "");
	sleep(3);
	
	thread(f_rotate_weapon_holder( cr_notlab_hammer_holder ));

	
end

script static void f_rotate_weapon_holder( object_name rack )

	repeat
		object_rotate_by_offset( rack,1,0,0,10,0,0);
	until( b_notlab_weapon_rotate == FALSE, 1);

end

global boolean b_notlab_weapon_rotate = TRUE;



// =================================================================================================
// =================================================================================================
// *** MAIN DOWN ***
// =================================================================================================
// =================================================================================================


script static void debug_down()
	s_objcon_teleport = 45;
	wake( f_teleport_objcon_controller_down );
	wake( f_teleport_main_down_init );
	object_create_folder( crs_teleport );
end

script dormant f_teleport_main_down_init()
		//effect_new_at_ai_point (environments\solo\m10_crash\fx\flash_white.effect, ps_teleport.p4);
		
		f_teleport_party_to_next_portal( flag_teleport_4a, flag_teleport_4b,flag_teleport_4c,flag_teleport_4d,ps_teleport.p4,dm_teleport_lab_to_main );
		ai_erase( sg_teleport_all );	//clear all previous spawns
		sleep(1);
		b_notlab_weapon_rotate = false;
		ai_place ( sg_teleport_4 );
		//f_m90_game_save();	
		object_destroy ( cr_teleport_portal_4 );
		zone_set_trigger_volume_enable( "zone_set:walls_teleport_room", TRUE);
		zone_set_trigger_volume_enable( "begin_zone_set:walls_teleport_room", TRUE);
		sleep(3);	
		player_enable_input ( TRUE );
		pup_play_show( teleport_down_knight_marz ); 

		sleep_until( ai_living_count( sg_teleport_4 ) <= 0 );
			f_m90_game_save();
end



script command_script cs_teleport_main_down_knight()

	cs_stow (true);
	cs_abort_on_alert (true);
	cs_abort_on_damage (true);
	cs_enable_moving (false);
	sleep_forever();	
end


script command_script cs_teleport_drop_down_knight()
	cs_phase_in();
	//cs_stow (true);
	cs_abort_on_alert (true);
	cs_abort_on_damage (true);

	sleep_forever();	
end

// =================================================================================================
// =================================================================================================
// *** EXIT ***
// =================================================================================================
// =================================================================================================






// =================================================================================================
// =================================================================================================
// *** GENERAL ***
// =================================================================================================
// =================================================================================================
script dormant f_teleport_controller()


	////// Portal 1 into Engine Room Platform Combat  /////////
	sleep_until ( volume_test_players( tv_teleport_1 ) and b_Teleporter_Active_1 == TRUE, 1 );
		thread( f_dropdown_stop_fall_damage( FALSE ) ); //make sure everyone has this flagged cleared from dropdown edge cases
		object_destroy_folder( dms_arcade );
		wake( f_teleport_engineroom_init );	
		sleep (30 * 2);

		nar_teleport_bad_1();
	
	sleep_until ( b_teleport_platform_done == TRUE );

		nar_teleport_plat_1();
		sleep( 30 * 2 );
		//object_create (cr_teleport_portal_2);
		thread( f_teleport_open_portal(dm_teleport_portal_plat_exit , 0 , FALSE, flag_engineroom_exit ));
		sleep_s( 1.5 );
		b_Teleporter_Active_2 = TRUE;
		f_m90_game_save_no_timeout();
		
	/////  Portal 2 into Main Combat Bottom  //////////
	sleep_until ( volume_test_players( tv_teleport_2 ) and b_Teleporter_Active_2 == TRUE, 1 );
		ai_erase(sg_engine_room_sentinels);
		ai_erase(sg_teleport_1);
		b_engineroom_done = TRUE;
		kill_thread( l_feo_good_thread );
		kill_thread( l_feo_bad_thread );
		thread( f_mus_m90_e02_finish() );
		wake( f_teleport_main_up_init );	
		sleep (30 * 2);
	
		sleep_until( s_objcon_teleport > 30, 1 );
		//dprint("wtf");
			//object_create (cr_teleport_portal_3);
			
			thread( f_teleport_open_portal( dm_teleport_portal_main_exit_1, 0, FALSE, flag_teleport_main_up_portal ) );
			sleep_s(2);
			b_Teleporter_Active_2 = TRUE;
			wake( f_teleport_main_up_wp );
	
	///// Portal 3 into NOTLAB Area /////
	sleep_until ( volume_test_players( tv_teleport_3 )and b_Teleporter_Active_2 == TRUE, 1 );
		f_unblip_flag( flag_teleport_main_up_portal);
		thread( 		nar_teleport_special() );
		thread( f_mus_m90_e03_finish() );
		wake( f_teleport_notlab_init );	
		//sleep (30 * 2);	

		 thread( f_teleport_close_portal( dm_teleport_portal_main_exit_1, FALSE, flag_teleport_main_up_portal ) );
		sleep(1);
		sleep_until( dialog_id_played_check(l_dlg_90_wrong_room_2) , 1 );
		sleep_s (1);
		if player_count() > 1 then
			sleep_s( 14 );
		end 
		//object_create (cr_teleport_portal_4);
		thread( f_teleport_open_portal( dm_teleport_lab_exit, 0, FALSE, flag_lab_exit ) );
		sleep_s(2);
		b_Teleporter_Active_3 = TRUE;
				
	/////// Portal 4 Back to Main Platform Reverse  /////
	sleep_until ( volume_test_players( tv_teleport_4 ) and b_Teleporter_Active_3 == TRUE, 1 );		
		garbage_collect_now();
		wake( f_teleport_main_down_init );

		

		//sleep_s(7);
		//sleep_until( ai_living_count( sq_for_main_dwn_commander ) == 0, 1 );
		sleep_rand_s(12,20);
		
		//nar_teleport_plat_1();
		//object_create (cr_teleport_portal_5);
		
		thread( f_teleport_open_portal( dm_teleport_portal_main_exit_2, 0, FALSE, flag_teleport_main_plat_exit ) );
		sleep_s(2);
		thread( nar_teleport_reenter() );
		b_Teleporter_Active_5 = TRUE;
		sleep( 15 );
		f_blip_flag ( flag_teleport_main_plat_exit, "default" );	
		
	////// Portal 5  	/ Onwards into Wallz ////// /////
	sleep_until ( volume_test_players( tv_teleport_5 ) and b_Teleporter_Active_5 == TRUE, 1 );
		f_unblip_flag ( flag_teleport_main_plat_exit);
		//thread( f_mus_m90_e04_finish() );
		//object_destroy (cr_teleport_portal_5);
		//f_teleport_return_from_teleport();
		//nar_teleport_finally_out();


		object_create_folder(dms_walls);
		object_create_folder(crs_walls);
		//f_insertion_zoneload( s_walls_teleport_room_idx, INSERTION_INDEX_TELEPORT, TRUE );
		sleep(1);
		f_teleport_party_to_next_portal( flag_teleport_6a,  flag_teleport_6b, flag_teleport_6c, flag_teleport_6d, ps_teleport.p1, dm_walls_enter);
		
		f_teleport_return_from_teleport();
		b_teleport_complete = TRUE;
		f_m90_game_save();

		b_Teleporter_Active_6 = TRUE;
end


script static void f_teleport_party_to_next_portal( cutscene_flag tele_flag_1,cutscene_flag tele_flag_2,cutscene_flag tele_flag_3,cutscene_flag tele_flag_4, point_reference pt, object_name dm_portal )
	player_enable_input ( FALSE );

	fade_out(0,0,0,0);

	sleep(20);
	if ( player_valid( player0() ) ) then	
		sound_impulse_start ( 'sound\environments\solo\m090\amb_m90_device_machines\events\amb_m90_dm_portal_flash', player0, 1 ); //AUDIO!
		object_teleport( player0(), tele_flag_1 );
	end
	
	if ( player_valid( player1() ) ) then	
		sound_impulse_start ( 'sound\environments\solo\m090\amb_m90_device_machines\events\amb_m90_dm_portal_flash', player1, 1 ); //AUDIO!
		object_teleport( player1(), tele_flag_2 );
	end
	
	if ( player_valid( player2() ) ) then	
		sound_impulse_start ( 'sound\environments\solo\m090\amb_m90_device_machines\events\amb_m90_dm_portal_flash', player2, 1 ); //AUDIO!
		object_teleport( player2(), tele_flag_3 );
	end
	
	if ( player_valid( player3() ) ) then
		sound_impulse_start ( 'sound\environments\solo\m090\amb_m90_device_machines\events\amb_m90_dm_portal_flash', player3, 1 ); //AUDIO!
		object_teleport( player3(), tele_flag_4 );
	end
	
	fade_in(0,0,0,8);
	screen_effect_new(environments\solo\m90_sacrifice\fx\portal\parts\portal_exit_sfx.area_screen_effect, tele_flag_1);
end


script static void f_teleport_player_to_next_portal( unit player_teleport, cutscene_flag tele_flag, point_reference pt )
	local long player_index = -1;
	
	if player_teleport == player0 then
		player_index	=  player_00 ;
	elseif player_teleport == player1 then
		player_index	=  player_01 ;
	elseif player_teleport == player2 then
		player_index	=  player_02 ;
	elseif player_teleport == player3 then
		player_index	=  player_03 ;
	else
		player_index	=  player_00 ;
	end
	
//	effect_new_at_ai_point (environments\solo\m10_crash\fx\flash_white.effect, pt);
	//player_enable_input ( FALSE );
		fade_out_for_player ( player_get( player_index ) );
		sound_impulse_start ( 'sound\environments\solo\m090\amb_m90_device_machines\events\amb_m90_dm_portal_flash', player0, 1 ); //AUDIO!
		sound_impulse_start ( 'sound\environments\solo\m090\amb_m90_device_machines\events\amb_m90_dm_portal_flash', player1, 1 ); //AUDIO!
		sound_impulse_start ( 'sound\environments\solo\m090\amb_m90_device_machines\events\amb_m90_dm_portal_flash', player2, 1 ); //AUDIO!
		sound_impulse_start ( 'sound\environments\solo\m090\amb_m90_device_machines\events\amb_m90_dm_portal_flash', player3, 1 ); //AUDIO!
		object_teleport( player_get( player_index ), tele_flag );
		fade_in_for_player ( player_get( player_index ) );
end


script static void f_teleport_return_from_teleport()
		sleep(10);	
		player_enable_input ( TRUE );

end

script dormant f_teleport_objcon_controller()

	garbage_collect_now();
	sleep_until (volume_test_players (tv_teleport_objcon_10) or s_objcon_teleport >= 10, 1);
		if s_objcon_teleport <= 10 then
			s_objcon_teleport = 10;
			dprint("s_objcon_teleport = 10 ");
		end
					
	sleep_until (volume_test_players (tv_teleport_objcon_20) or s_objcon_teleport >= 20, 1);
		if s_objcon_teleport <= 20 then
			s_objcon_teleport = 20;
			dprint("s_objcon_teleport = 20 ");
		end
			
	sleep_until (volume_test_players (tv_teleport_objcon_30) or s_objcon_teleport >= 30, 1);
		if s_objcon_teleport <= 30 then 
			s_objcon_teleport = 30;
			dprint("s_objcon_teleport = 30 ");
		end
		

		
	sleep_until (volume_test_players (tv_teleport_objcon_40) or s_objcon_teleport >= 40, 1);
		if s_objcon_teleport <= 40 then 
			s_objcon_teleport = 40;
			dprint("s_objcon_teleport = 40 ");
		end
		
	sleep_until( b_Teleporter_Active_3 == TRUE );
		dprint("teleport 3 was activated");
		
		wake(f_teleport_objcon_controller_down);
end

script dormant f_teleport_objcon_controller_down()
	// MAIN PLATFORM REVERSE
	
	sleep_until (volume_test_players (tv_teleport_objcon_45) or s_objcon_teleport >= 45, 1);
		if s_objcon_teleport <= 45 then 
			s_objcon_teleport = 45;
			dprint("s_objcon_teleport = 45 ");
		end	

	sleep_until (volume_test_players (tv_teleport_objcon_47) or s_objcon_teleport >= 47, 1);
		if s_objcon_teleport <= 47 then 
			s_objcon_teleport = 47;
			dprint("s_objcon_teleport = 47 ");
		end	


		
	sleep_until (volume_test_players (tv_teleport_objcon_50) or s_objcon_teleport >= 50, 1);
		if s_objcon_teleport <= 50 then 
			s_objcon_teleport = 50;
			dprint("s_objcon_teleport = 50 ");
		end		

	//wake( f_teleport_main_down_turrets );

	sleep_until (volume_test_players (tv_teleport_objcon_60) or s_objcon_teleport >= 60, 1);
		if s_objcon_teleport <= 60 then 
			s_objcon_teleport = 60;
			dprint("s_objcon_teleport = 60 ");
		end
		ai_place( sq_for_main_dwn_mid_bishop );

	
	sleep_until (volume_test_players (tv_teleport_objcon_70) or s_objcon_teleport >= 70, 1);
		if s_objcon_teleport <= 70 then 
			s_objcon_teleport = 70;
			dprint("s_objcon_teleport = 70 ");
		end


end

global boolean b_engineroom_catcher_success = TRUE;
global boolean b_engineroom_catcher_reset = FALSE;
global boolean b_bullet_timer_up = FALSE;
global boolean b_bullet_timer_active = FALSE;
global short s_bullet_count = 0;
global boolean b_engineroom_next = TRUE;


script static void f_engineroom_start_bullet_catcher()

	repeat
		//dprint("WAITING TO START");
		sleep_s(6);
		//sleep_until( not b_bullet_timer_active, 1);
			//dprint("a");
			//dprint("START");
			f_engineroom_reset_bullets();
			sleep(1);
			//thread( f_engineroom_start_bullet_timer());
			
			repeat
				if s_bullet_count < 1 or s_bullet_count > 2 then
					f_engineroom_create_catcher( 1 );
					
				else
					f_engineroom_create_catcher( 2 );
				end
					sleep(1);
					f_engineroom_found_a_success();
					sleep(1);
					//dprint("huh");
					kill_thread( l_feo_good_thread );
					kill_thread( l_feo_bad_thread );
					object_destroy( cr_bullet_left );		
					object_destroy( cr_bullet_right );
					b_catcher_halt = FALSE;
				sleep(15);
			until( s_bullet_count == 4 or not b_engineroom_catcher_success or b_engineroom_done, 1 );
		
		if not b_engineroom_catcher_success then
			//dprint("catcher failure");
			sleep(1);
		end
			
		
	until( b_engineroom_done or b_engineroom_catcher_success, 1);
		if b_engineroom_catcher_success then
				//dprint("TOTAL SUCCESS!!!!");
				f_er_sentinel_event();
		end
end
//1 left
//2 right
script static void f_engineroom_create_catcher( short s_type_good )
		local object catcher_good = NONE;
		local object catcher_bad = NONE;
		
		object_create( cr_bullet_left );		
		object_create( cr_bullet_right );
		sleep(1);
		if s_type_good == 1 then
			
			catcher_good = cr_bullet_left;
			catcher_bad = cr_bullet_right;
			//dprint("left catcher");
		else
			catcher_good = cr_bullet_right;
			catcher_bad = cr_bullet_left;
			//dprint("right catcher");
		end
		sleep(1);
		//sleep_until( object_get_health( catcher ) <= 0 , 1 );
		//	object_destroy(catcher);
		s_bullet_count = s_bullet_count + 1;
		l_feo_good_thread = thread(f_engineroom_organizer( catcher_good, TRUE ));
		l_feo_bad_thread = thread(f_engineroom_organizer( catcher_bad, FALSE ));
			//sleep(15);
			//dprint("boom");
end

global long l_feo_good_thread = -1;
global long l_feo_bad_thread = -1;
global boolean b_good_catcher_done_1st = FALSE;
global boolean b_bad_catcher_done_1st = FALSE;
global boolean b_catcher_halt = FALSE;

script static void f_engineroom_organizer( object catcher, boolean b_good )
	inspect(object_get_health( catcher ));
	local boolean b_right = TRUE;
	if catcher == cr_bullet_left then
		b_right = FALSE;
	end
	
	sleep_until( object_get_health( catcher ) <= 0 , 1 );
		object_destroy( catcher );
		if not b_catcher_halt then
			if b_good then
				if not b_bad_catcher_done_1st then
					b_good_catcher_done_1st = TRUE;
					b_catcher_halt = TRUE;
					
					if b_right then
						effect_new( environments\solo\m80_delta\fx\sparks\atr_dmg_sparks_lg_01.effect, flag_engineroom_effect_right);
					else
						effect_new( environments\solo\m80_delta\fx\sparks\atr_dmg_sparks_lg_01.effect, flag_engineroom_effect_left);
					end
					
					//dprint("good catcher done 1st");
				end
			else
				if not b_good_catcher_done_1st then
					b_bad_catcher_done_1st = TRUE;
					b_catcher_halt = TRUE;
					//print("bad catcher done 1st");
				end
			end
		end
	
end

script static void f_engineroom_found_a_success()
		//local boolean b_success = FALSE;
		
		sleep_until( b_good_catcher_done_1st or b_bad_catcher_done_1st, 1 );
			//if b_good_catcher_done_1st then
				//dprint("SUCCESS");
				
				if b_good_catcher_done_1st then
					//dprint("SUCCESS");
				//	if unit_has_weapon_readied( player0, 'objects\weapons\pistol\storm_stasis_pistol\storm_stasis_pistol.weapon' ) then
						thread(f_m90_trans_beep());
						//effect_new( environments\solo\m80_delta\fx\sparks\atr_dmg_sparks_lg_01.effect, );
				//	end
						dprint("");
				end
				b_engineroom_catcher_success = b_good_catcher_done_1st;
				b_good_catcher_done_1st = FALSE;
				b_bad_catcher_done_1st = FALSE;
				sleep(3);
end



script static void f_engineroom_reset_bullets()
	dprint("");
	dprint("RESET");
	s_bullet_count = 0;
	b_bullet_timer_active = FALSE;
	b_bullet_timer_up = FALSE;
	b_good_catcher_done_1st = FALSE;
	b_bad_catcher_done_1st = FALSE;
	b_catcher_halt = FALSE;
	kill_thread( l_feo_good_thread );
	kill_thread( l_feo_bad_thread );
	
	object_destroy( cr_bullet_left );		
	object_destroy( cr_bullet_right );
end


script static void f_er_sentinel_event()
	ai_place(sq_ers_kenzie);
end

script command_script cs_sentinel_kenzie()
	//dprint("kenzie, naptime");
	cs_fly_to(ps_engine_room_sent.p1);
	cs_fly_to(ps_engine_room_sent.p0);
	cs_fly_to(ps_engine_room_sent.p2);

	//sleep( 3 );
	if( not b_engineroom_done and object_get_health( sq_ers_kenzie ) > 0 ) then
		//dprint("nite nite kenzie");
		ai_place( sq_ers_kenzie_2 );
		
	end
	sleep(1);
	ai_erase( sq_ers_kenzie );
end


script command_script cs_sentinel_kenzie_2()
	//dprint("night night kenzie");
	sleep_until( b_engineroom_done, 1 );
	cs_fly_to(ps_engine_room_sent.p8);
	cs_fly_to(ps_engine_room_sent.p9);
	cs_fly_to(ps_engine_room_sent.p10);
	object_create( wp__weapon_a_br1 );
	object_create( wp__weapon_a_br2 );
	object_create( wp__weapon_a_br3 );
	sleep(1);
	ai_erase(sq_ers_kenzie_2);

end

script static void f_teleport_manual_open( device dm, cutscene_flag fg )
		effect_new_on_object_marker(  'environments\solo\m90_sacrifice\fx\portal\portal_start.effect', dm, "fx_portal" );	
		sleep(15);
		effect_new_on_object_marker(  'environments\solo\m90_sacrifice\fx\portal\portal_main.effect', dm, "fx_portal" );	
		screen_effect_new(  'environments\solo\m90_sacrifice\fx\portal\parts\portal_sfx.area_screen_effect', fg  );	
		
		sleep_s(2);
end  

script static void f_teleport_manual_close( device dm, cutscene_flag fg )
		effect_new_on_object_marker( 'environments\solo\m90_sacrifice\fx\portal\portal_off.effect', dm, "fx_portal" );
		sleep(15);
		effect_stop_object_marker(  'environments\solo\m90_sacrifice\fx\portal\portal_main.effect', dm, "fx_portal" );
		screen_effect_delete(  'environments\solo\m90_sacrifice\fx\portal\parts\portal_sfx.area_screen_effect', fg  );	
		sleep_s(2);
end

script dormant f_teleport_setup_portals()
	sleep(3);
	//device_set_position_track( dm_teleport_portal_init, 'open:portal', 0.0 );
	device_set_position_track( dm_teleport_portal_init, 'open_portal', 0.0 );
	device_set_position_track( dm_teleport_portal_main_exit_1, 'stop_idle', 0.0 );
	device_set_position_track( dm_teleport_portal_main_exit_2, 'stop_idle', 0.0 );
	device_set_position_track( dm_teleport_lab_exit, 'stop_idle', 0.0 );
	device_set_position_track( dm_teleport_portal_plat_exit, 'stop_idle', 0.0 );
	device_set_position_track( dm_teleport_portal_to_walls, 'stop_idle', 0.0 );
	device_set_position_track( dm_teleport_lab_to_main, 'stop_idle', 0.0 );
	device_set_position_track( dm_teleport_er_enter, 'stop_idle', 0.0 );
	device_set_position_track( dm_teleport_lab_enter, 'stop_idle', 0.0 );
	
	device_set_position_track( dm_teleport_dummy_1, 'stop_idle', 0.0 );
	device_set_position_track( dm_teleport_dummy_2, 'stop_idle', 0.0 );
	device_set_position_track( dm_teleport_dummy_3, 'stop_idle', 0.0 );	
	device_set_position_track( dm_teleport_dummy_4, 'stop_idle', 0.0 );
	device_set_position_track( dm_teleport_dummy_5, 'stop_idle', 0.0 );
	device_set_position_track( dm_teleport_dummy_6, 'stop_idle', 0.0 );	
		
	//device_animate_position(  dm_teleport_portal_init , 1 , 0.1, 0.1, 0.0, TRUE );
	device_animate_position(  dm_teleport_portal_main_exit_1 , 1 , 0.1, 0.1, 0.0, TRUE );
	device_animate_position(  dm_teleport_portal_main_exit_2 , 1 , 0.1, 0.1, 0.0, TRUE );
	device_animate_position(  dm_teleport_lab_exit , 1 , 0.1, 0.1, 0.0, TRUE );
	device_animate_position(  dm_teleport_portal_plat_exit , 0 , 0.1, 0.1, 0.0, TRUE );
	device_animate_position(  dm_teleport_portal_to_walls , 1 , 0.1, 0.1, 0.0, TRUE );
	device_animate_position(  dm_teleport_lab_to_main , 1 , 0.1, 0.1, 0.0, TRUE );
	device_animate_position(  dm_teleport_er_enter , 1 , 0.1, 0.1, 0.0, TRUE );
	device_animate_position(  dm_teleport_lab_enter , 1 , 0.1, 0.1, 0.0, TRUE );
	
	device_animate_position(  dm_teleport_dummy_1 , 1 , 0.1, 0.1, 0.0, TRUE );
	device_animate_position(  dm_teleport_dummy_2 , 1 , 0.1, 0.1, 0.0, TRUE );
	device_animate_position(  dm_teleport_dummy_3 , 1 , 0.1, 0.1, 0.0, TRUE );	
	device_animate_position(  dm_teleport_dummy_4 , 1 , 0.1, 0.1, 0.0, TRUE );
	device_animate_position(  dm_teleport_dummy_5 , 1 , 0.1, 0.1, 0.0, TRUE );
	device_animate_position(  dm_teleport_dummy_6 , 1 , 0.1, 0.1, 0.0, TRUE );		
end


script static void f_teleport_open_portal( device dm, real r_time_open, boolean b_from_ground, cutscene_flag fg )
	//device_set_position_track( portal_structure, 'any:idle', 0.0 );
	if b_from_ground then
		dprint("from ground");
		device_animate_position(  dm , 1 , 1.5, 0.1, 0.0, TRUE );
		sleep_s(1.5);
		f_teleport_manual_open( dm, fg );
	else
		f_teleport_manual_open( dm, fg );
	end

	if r_time_open > 0 then
		sleep( r_time_open );
		f_teleport_close_portal( dm, FALSE, fg );
	end
end

script static void f_teleport_close_portal( device dm, boolean b_into_ground, cutscene_flag fg )

		//object_create(dm_teleport_portal_init);
		if b_into_ground then
			dprint("SWITCHING TRACKS!!!!");
			device_set_position_track( dm, 'open:portal', 0.0 );
			device_animate_position(  dm , 1 , 0.0, 0.1, 0.0, TRUE );
			sleep(1);			
			device_animate_position(  dm , 0 , 3.0, 0.1, 0.0, TRUE );
		else
			//device_set_position_track( dm, 'stop_idle', 0.0 );
			f_teleport_manual_close( dm, fg );
		end

end


script static void f_port()
	object_create( test_portal );
			device_set_position_track( test_portal, 'open_portal', 0.0 );
			//device_animate_position(  test_portal , 1 , 5, 0.1, 0.0, TRUE );
	
	sleep(1);
end
// --- End m90_teleport.hsc ---

// --- Begin m90_walls.hsc ---
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343
//
// Mission: 					m90_sacrifice
//	Insertion Points:	Walls
//										
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343

// =================================================================================================
// =================================================================================================
// *** GLOBALS ***
// =================================================================================================
// =================================================================================================



// =================================================================================================
// =================================================================================================
// *** START-UP ***
// =================================================================================================
// =================================================================================================

global boolean b_walls_complete = FALSE;
global boolean b_walls_last_stand = FALSE;
global boolean b_walls_debug_last_stand = FALSE;
global boolean b_walls_wave_2_active = FALSE;
script startup m90_walls()		
	if b_debug then 
		print_difficulty(); 
	end
	
	dprint("You are having lots of fun");
	sleep_until( b_teleport_complete , 4 );
	sleep_until( volume_test_players( tv_walls_init ) or volume_test_players( tv_walls_init_teleport ) ,5 );
		dprint("walls startup");

		data_mine_set_mission_segment ("m90_walls");
		set_broadsword_respawns ( false );
		zone_set_trigger_volume_enable( "begin_zone_set:jump", FALSE);
		wake( f_walls_controller );
		wake (f_walls_eye_teleport);
		wake( f_walls_turret_defense_start );
		wake( nar_walls_init );
		//wake( f_walls_blip_controller_update );
		wake( f_walls_last_stand_init );
		//object_create_folder(crs_walls);
		
		//creating dms in teleports
		//object_create_folder(dms_walls);
		sleep( 1 );
		sound_impulse_start ( 'sound\environments\solo\m090\amb_m90_device_machines\amb_m90_dm_plinth_close', cr_walls_plinth, 1 ); //AUDIO!
		object_hide(cr_walls_plinth, TRUE);
		
		//to make neutral turrets
		ai_allegiance (player, human);	
		ai_allegiance (human, player);
		ai_place(sq_walls_player_turret_2);
		ai_place(sq_walls_player_turret_1);
	//	ai_allegiance (forerunner, human);	
	//	ai_allegiance (human, forerunner);
		wake( f_walls_setup_portal );
		sleep(1);
		sleep_until( volume_test_players( tv_walls_init ),2 );		
			sleep_s(2);
			thread(on_walls_entry());
			sleep_s(1);
			thread( f_teleport_close_portal(dm_walls_enter , true, flg_none ));
			
			garbage_collect_now();
			
		wake (walls_distortion_control);
end

script dormant f_walls_cleanup()
	dprint("walls cleanup");
	object_destroy_folder(crs_walls);
	object_destroy_folder(dms_walls);
	object_destroy( dc_walls_turret_activator );
	//object_destroy( cr_walls_exit_portal );
	kill_script( f_walls_turret_defense_start );
	ai_erase( sg_walls_all );
end

//cr_walls_false_portal
// =================================================================================================
// =================================================================================================
// START
// =================================================================================================
// =================================================================================================

script dormant f_walls_eye_teleport()

	sleep_until ( b_walls_exit_portal_active == TRUE and volume_test_players( tv_walls_to_jump_teleport ), 1 );
	
		dprint("clear blips");
		thread( f_walls_clear_blip());
		f_teleport_party_to_next_portal( flag_eye_teleport_a, flag_eye_teleport_b,flag_eye_teleport_c,flag_eye_teleport_d,ps_walls.p0, dm_jump_portal_enter );
		f_teleport_return_from_teleport();
		sleep(3);
		b_walls_complete = TRUE;
		thread( f_mus_m90_e04_finish() );
		wake( f_walls_cleanup );
		garbage_collect_now();
		sleep( 1 );
		f_m90_game_save_no_timeout();
		
end

script dormant walls_distortion_control
	
	effects_distortion_enabled = FALSE;
	
	sleep_until (b_walls_complete == TRUE);

	effects_distortion_enabled = TRUE;
	
end


script dormant f_walls_setup_portal()

	//device_set_position_track( dm_walls_exit_portal, 'open:portal', 0.0 );	
	device_set_position_track( dm_walls_exit_portal, 'open_portal', 0.0 );
	//device_animate_position(  dm_walls_exit_portal , 1 , 1, 0.1, 0.0, TRUE );
//	device_set_position (dm_walls_exit_portal, 1.0);
	device_set_position_track( dm_walls_enter, 'stop_idle', 0.0 );	

end



script dormant f_wall_activate_portals()

	//device_animate_position(  dm_walls_enter , 0 , 1.5, 0.1, 0.0, TRUE );
	
	//sleep( 3 );
	
	//f_teleport_manual_open(dm_walls_exit_false, flg_none);
	f_teleport_manual_close(dm_walls_exit_false, flg_none);
	//device_animate_position(  dm_walls_exit_false , 1 , 1.0, 0.1, 0.0, TRUE );
	//sleep_s(3);
	//thread( f_teleport_close_portal( dm_walls_exit_false, FALSE ) );
end

global boolean b_walls_intro_fight = FALSE;

script dormant f_walls_controller()



	ai_place (sq_walls_3_pawns);
	sleep(3);

	
	sleep_until ( volume_test_players( tv_walls_3 ) or ai_living_count( sq_walls_3_pawns ) < 2 , 1 );
		//wake( f_wall_activate_portals );
		sleep(60);
		print("walls 1");
		//ai_place (sg_walls_3);
		//ai_place (sq_walls_3_knight_ground);
		thread( f_mus_m90_e04_start() );
		thread( f_walls_spawn_false_portal () );
		ai_place (sq_walls_3_bishop);
		///game_save();

		b_walls_intro_fight = TRUE;
	sleep_until ( volume_test_players( tv_walls_end), 1 );
		print("walls end");		
		f_m90_game_save();
	

end



script static void f_walls_spawn_false_portal(   )

	//object_create( cr_walls_false_portal );

	sleep( 25 );
	
	//effect_new_at_ai_point (objects\characters\storm_pawn\fx\pawn_phase_in.effect,ps_walls.p1);	
	ai_place_in_limbo( sq_walls_3_knight_ground );
	//ai_place( sq_walls_3_knight_ground );
	sleep( 35 );
	//object_destroy( cr_walls_false_portal );

	
end

global boolean b_walls_cortana_pulled = FALSE;
global boolean b_walls_exit_portal_active = FALSE;

script static void test_pull()
	b_SHOW_BLIP = TRUE;

		sound_impulse_start ( 'sound\environments\solo\m090\amb_m90_device_machines\amb_m90_dm_plinth_open', cr_walls_plinth, 1 ); //AUDIO!
		f_m90_global_rezin( cr_walls_plinth , fx_dissolve );
		thread( f_walls_cortana_start() );
		thread( f_walls_next_blip( s_DEF_PLINTH_GRAB ));
	device_set_power(dc_walls_turret_activator ,1 );
	sleep_until( device_get_position( dc_walls_turret_activator ) != 0 );
		pup_play_show(pup_walls_cort_pull);
		device_set_power(dc_walls_turret_activator , 0 );	

end

global long g_wall_end_time=0;
global long g_wall_animation=0;

script static void f_walls_cortana_start()

	pup_play_show( pup_walls_cortana );
		sleep(1);
	wake( f_walls_ignore_cortana );
end

global boolean b_walls_cortana_come_get_me = FALSE;

script dormant f_walls_activate_exit_portal()

	thread( nar_walls_portal_open() );
	b_walls_cortana_come_get_me = TRUE;
	thread(f_walls_clear_blip());	
	sleep_s(1);
	device_set_power(dc_walls_turret_activator ,1 );

	thread( f_walls_next_blip( s_DEF_PLINTH_GRAB ));
	zone_set_trigger_volume_enable( "begin_zone_set:jump", TRUE);
	sleep_until( device_get_position( dc_walls_turret_activator ) != 0 );
		b_walls_last_stand = TRUE;
		pup_play_show(pup_walls_cort_pull);
		device_set_power(dc_walls_turret_activator , 0 );
		//object_destroy( biped_walls_cortana );

		thread( f_walls_clear_blip());
		//power to switch

		sleep( 15 );
		thread( f_teleport_open_portal( dm_walls_exit_portal, 3.0, TRUE, flg_none ) );
		//object_create( cr_walls_exit_portal );
		sleep_s(1.5);
		b_walls_exit_portal_active = TRUE;
		thread( f_walls_next_blip(s_DEF_WALLS_EXIT) );
		thread( f_objective_set( DEF_R_OBJECTIVE_ON_FOOT_GO, TRUE, FALSE, TRUE,TRUE ) );
end


//
script dormant f_walls_start_objective()
	local long l_timer = timer_stamp( 15 ); 
	sleep_until( dialog_id_played_check( l_walls_hold_off ) or timer_expired(l_timer), 1 );
		sleep_s(2);
		thread( f_walls_clear_blip());
		sleep(1);
		thread(f_walls_next_blip( s_DEF_DEFEND_ALL));
		thread( f_objective_set( DEF_R_OBJECTIVE_WALLS_HOLD, TRUE, FALSE, TRUE,TRUE ) );
end

global boolean b_walls_begin_attack = FALSE;
global boolean b_walls_plinth_ready = FALSE;

script dormant f_walls_turret_defense_start()

	sleep_until( volume_test_players( tv_walls_4 ), 1 );
		dprint("tv_walls_4 check");
		sleep_s(3);
	sleep_until ( ai_living_count ( sg_walls_3 ) <= 1 and ai_living_count( sq_walls_3_knight_ground ) <= 0, 1 );
		//thread( nar_walls_need_time() );
		dprint("starting f_walls_turret_defense_start" );
	//(sq_walls_player_turret_1);
	//ai_place(sq_walls_player_turret_2);

	sound_impulse_start ( 'sound\environments\solo\m090\amb_m90_device_machines\amb_m90_dm_plinth_open', cr_walls_plinth, 1 ); //AUDIO!
	f_m90_global_rezin( cr_walls_plinth , fx_dissolve );
	object_dissolve_from_marker( cr_walls_plinth , phase_out, fx_dissolve );
	sleep(30);

	dprint("clear blips");

	thread(f_walls_clear_blip());	
	sleep( 30 );
	object_create(dc_walls_turret_activator);
	sleep( 1 );
	device_set_power(dc_walls_turret_activator , 0 );
	b_walls_plinth_ready = TRUE;
	dprint("**** PLINTH BLIP ****");
	//thread( f_walls_next_blip( s_DEF_PLINTH_START ) );

	thread( f_walls_cortana_start() );
	sleep(1);

	//wake ( f_wall_portal_dialogue );
	ai_lod_full_detail_actors (22);
	thread( f_wall_td_wave_spawner_main() );
	wake( f_walls_start_objective );
	//wake( f_walls_close_false_portal );   
	sleep(5);
	f_m90_game_save();

	//sleep_until( volume_test_players( tv_walls_start_defense ) , 1 );

	sleep_s(6);
	
	b_walls_begin_attack = TRUE;
	dprint("1st wave");  

	//thread(f_walls_next_blip( s_DEF_DEFEND_ALL));
	//thread( f_objective_set( DEF_R_OBJECTIVE_WALLS_HOLD, TRUE, FALSE, TRUE,TRUE ) );
	sleep_s(6);
 
	thread( f_wall_td_wave_spawner_main() );
	sleep_s(4);
	thread( f_wall_td_wave_spawner_main() );
	//thread( f_wall_td_wave_spawner_main() );
	sleep_s(5);
	thread( f_wall_td_wave_spawner_main() );
					
   		
  	sleep_until( ai_living_count ( sg_walls_4 ) < 3 or volume_test_players( tv_walls_going_for_it ) , 1 );
   			//garbage_collect_now();	
 				
   			sleep_s( 5 );
   			//thread(f_walls_clear_blip( ));	 
   			dprint("2nd wave");  
	   		thread( f_wall_td_wave_spawner_flank() );
	   		sleep_s(3);
	   		//wake( f_dialog_m90_final_portal_wave2 );
	   		//thread(f_walls_next_blip( s_DEF_DEFEND_FLANK ));
	   		//sleep_s(3);	
	   		//thread( f_wall_td_wave_spawner_flank() );	
	   		 	sleep_s(1);	
	   		 	b_walls_wave_2_active = TRUE;
	   		thread( f_walls_raise_turrets() );
	   		sleep_s(5);
	   		thread( f_wall_td_wave_spawner_flank() );
				thread( f_wall_td_wave_spawner_flank() ); 				
				 	sleep_s(7);	
				thread( f_wall_td_wave_spawner_flank() ); 	
	   	sleep_until( ai_living_count ( sg_walls_4_flank ) < 3 or volume_test_players( tv_walls_going_for_it ) , 1 );
	   		dprint("clear blips");
	   		//thread(f_walls_clear_blip());	
	   		b_walls_wave_2_active = FALSE;
	   		sleep_s( 3 );
	   		//wake( f_dialog_m90_final_portal_wave3 );
	   		thread( f_wall_td_wave_spawner_main() );
	   		//thread(f_walls_next_blip( s_DEF_DEFEND_ALL));  
	   		sleep_s( 9 );
	   		dprint("3rd wave");
	   		thread( f_wall_td_wave_spawner_flank() );   		
	   		sleep_s(2);
	   		//wake( f_dialog_m90_on_the_walls );
	   		thread( f_wall_td_wave_spawner_main() );  
	   		//thread( f_wall_td_wave_spawner_flank() );	
	   		sleep_s(3);
	   		//thread( f_wall_td_wave_spawner_main() );	
	   	//	sleep_s(4);
	   		thread( f_wall_td_wave_spawner_main() );
	   		if (difficulty_legendary() and game_is_cooperative() ) then
	   			thread( f_wall_td_wave_spawner_flank() );
	   		end
	   	sleep_until( ( ai_living_count ( sg_walls_4 ) + ai_living_count ( sg_walls_4_flank ) < 3 )  or volume_test_players( tv_walls_going_for_it ) , 1 );
	   	//	garbage_collect_now();
	   		
	   		sleep_s(3);	   		
	   		f_m90_game_save();
	   		dprint("4th wave"); 
	   		thread( f_wall_td_wave_spawner_main() );
	   		sleep_s(2);  		   		
	  		wake( f_walls_activate_exit_portal ); 
	  		sleep_s(3);		
	  		wake( f_walls_exit_spawns );	  
	  				
	  	sleep_until( ( ai_living_count ( sg_walls_4 ) + ai_living_count ( sg_walls_4_flank )  < 1 ) , 1 );	  			  		
	  		ai_lod_full_detail_actors (18);
	  		garbage_collect_now();
	  		
	  		f_m90_game_save();
	   		
end

script dormant f_walls_ignore_cortana()
	sleep_until( object_valid(biped_walls_cortana) , 1);
		ai_disregard ( biped_walls_cortana ,TRUE);
end
//f_dialog_m90_behind_you - Chief, behind you!
//f_dialog_m90_from_above - Coming from above!
//f_dialog_m90_turn_around - Turn around!
//f_dialog_m90_came_in - The way you came in!

script dormant f_walls_exit_spawns()
	//local short s_walls_flood_count = 0;
	sleep_until( b_walls_exit_portal_active , 1 );	
	wake( f_walls_exit_spawns_bridge );
	sleep_rand_s( 10,13 );
	repeat 
		//s_walls_flood_count = s_walls_flood_count + 1;
		ai_place(sq_walls_end_flood_1);
		sleep(4);
		sleep_until( ai_living_count(sq_walls_end_flood_1)  <= 1 );
		sleep_s(4);
	until( b_walls_complete , 1 );	
		

end

script dormant f_walls_exit_spawns_bridge()

	
	//side spawns for flavor ,like the walls are crawling with pawns from everywhere
	repeat
		sleep_until( ai_living_count( sg_walls_all ) <= 9  and s_walls_objcon >= 10 , 1);	
			sleep_rand_s(5,7);
			if not b_walls_complete then
				ai_place(sq_walls_flood_bridge, 2);
			end
			
			sleep_until( ai_living_count( sg_walls_all ) <= 11 );
				if not b_walls_complete then
					ai_place(sq_walls_flood_bridge2, 2);
					sleep_rand_s(10,13);
				end
			
			
	until( b_walls_complete , 5);

end

script static void f_wall_td_wave_spawner_flank()


	if ( ai_living_count ( sq_walls_td_pawn_flank ) >= 3 ) then
		ai_place( sq_walls_td_pawn_flank, 2 );
	//elseif ( ai_living_count ( sq_walls_td_pawn_flank ) >= 3 ) then
		//ai_place( sq_walls_td_pawn_flank, 2 );
	else
		ai_place( sq_walls_td_pawn_flank, 3 );
	end

end


script static void f_wall_td_wave_spawner_main()

	if ( ai_living_count ( sq_walls_4_pawn_td_1 ) <= 2 ) then
		ai_place( sq_walls_4_pawn_td_1 );
	//dprint("place pawns 1");
	elseif ( ai_living_count ( sq_walls_4_pawn_td_2 ) <= 2 ) then
		ai_place( sq_walls_4_pawn_td_2, 3 );
		//dprint("place pawns 2");
	elseif ( ai_living_count ( sq_walls_4_pawn_td_3 ) <= 2 ) then
		ai_place( sq_walls_4_pawn_td_3 );
		//dprint("place pawns 3");
	else
		dprint("no pawns needed");
		sleep(1);
	end

end

script dormant f_walls_flanking_reminder()

	sleep_until( not ( volume_test_players (tv_walls_4 ) ) , 1);
		if b_walls_wave_2_active then
			//wake( f_dialog_m90_flanking_us );
			sleep(1);
		end
end


script dormant f_wall_portal_dialogue()
	 //nar_walls_portal_opening() ;
	 nar_walls_incoming() ;
	 sleep(1);
	 
end
	
script dormant f_walls_close_false_portal()
	//device_animate_position(  dm_walls_exit_false , 0 , 1.5, 0.1, 0.0, TRUE );
//	thread( f_teleport_close_portal( dm_walls_exit_false, TRUE ) );
			//device_set_position_track( dm_walls_exit_false, 'any:idle', 0.0 );
			object_destroy(dm_walls_exit_false);	
			sleep(3);
			object_create(dm_walls_exit_false);	
end
	


script static void f_walls_raise_turrets()
	thread( nar_walls_turrets() );
	
	// raise turret pillar out of the floor
	sound_impulse_start_marker('sound\environments\solo\m090\amb_m90_device_machines\add_on_machine_tags\machine_m90_for_pillar_crate_rise', cr_walls_turret_tower_a, audio_marker_topw, 1);
	object_move_by_offset( cr_walls_turret_tower_a, 0.5 , 0, 0, 0.65);

	sleep(30);

	thread( f_walls_turret_rez_in( sq_walls_player_turret_2.casbah ) );
	ai_set_blind( sq_walls_player_turret_2.casbah, FALSE );
	ai_braindead ( sq_walls_player_turret_2.casbah, FALSE );
	sleep_s(20);

	// raise turret pillar out of the floor
	sound_impulse_start_marker('sound\environments\solo\m090\amb_m90_device_machines\add_on_machine_tags\machine_m90_for_pillar_crate_rise', cr_walls_turret_tower_b, audio_marker_topw, 1);
	object_move_by_offset( cr_walls_turret_tower_b, 0.5, 0, 0, 0.65);
	
	sleep(30);

	thread( f_walls_turret_rez_in( sq_walls_player_turret_1.pinback ) );
end




///////////////////////////
// LAST STAND
//////////////////////////
script static void f_walls_debug_last_stand()
	dprint("debug last stand");
	b_walls_debug_last_stand = TRUE;
	b_walls_last_stand = TRUE;
	wake( f_walls_last_stand_init );

end

script dormant f_walls_spawn_last_stand_turrets()
	sleep_until( (b_walls_exit_portal_active  or s_walls_objcon >= 10 ) , 1 );

		//sleep_s(1);
		ai_allegiance (player, human);	

		//ai_place( sq_walls_player_turret_ls_1 );


		sleep(5);
		//AutomatedTurretActivate( ai_vehicle_get( sq_walls_player_turret_ls_1.last_stand_1 ) );
		ai_place(sq_walls_player_turret_ls_1.last_stand_1);
		sleep(5);
		thread( f_walls_turret_rez_in( sq_walls_player_turret_ls_1.last_stand_1 ) );
		//AutomatedTurretSwitchTeams(ai_vehicle_get( sq_walls_player_turret_ls_1.last_stand_1 ), player_get_first_valid() );
		sleep(5);
		ai_place(sq_walls_player_turret_ls_1.last_stand_2);
		//AutomatedTurretActivate( ai_vehicle_get( sq_walls_player_turret_ls_1.last_stand_2 ) );
		sleep(5);
		thread( f_walls_turret_rez_in( sq_walls_player_turret_ls_1.last_stand_2 ) );
		//AutomatedTurretSwitchTeams(ai_vehicle_get( sq_walls_player_turret_ls_1.last_stand_2 ), player_get_first_valid() );	
	
	sleep_until ( s_walls_objcon >= 10, 1);

		sleep_s(2);
		//ai_place( sq_walls_player_turret_ls_2 );
				dprint("spawning far turrets");
		//sleep(5);
	
		//AutomatedTurretActivate( ai_vehicle_get( sq_walls_player_turret_ls_2.last_stand_3 ) );
		ai_place(sq_walls_player_turret_ls_2.last_stand_3);
		sleep(5);
		thread( f_walls_turret_rez_in( sq_walls_player_turret_ls_2.last_stand_3 ) );
		//AutomatedTurretSwitchTeams(ai_vehicle_get( sq_walls_player_turret_ls_2.last_stand_3 ), player_get_first_valid() );
		sleep(5);
		//AutomatedTurretActivate( ai_vehicle_get( sq_walls_player_turret_ls_2.last_stand_4 ) );
		ai_place(sq_walls_player_turret_ls_2.last_stand_4);
		sleep(5);
		thread( f_walls_turret_rez_in(sq_walls_player_turret_ls_2.last_stand_4 ) );
		//AutomatedTurretSwitchTeams(ai_vehicle_get( sq_walls_player_turret_ls_2.last_stand_4 ), player_get_first_valid() );	
end

global short s_walls_objcon = 0;

script dormant f_walls_spawn_last_stand_objcon_10()
	sleep_until (volume_test_players ( tv_walls_last_stand_front ) or s_walls_objcon >= 10, 1);
		if s_walls_objcon <= 10 then
			s_walls_objcon = 10;
			dprint("s_walls_objcon = 10 ");
		end
end

script dormant f_walls_spawn_last_stand_objcon_20()					
	sleep_until (volume_test_players ( tv_walls_last_stand_mid ) or s_walls_objcon >= 20, 1);
		if s_walls_objcon <= 20 then
			s_walls_objcon = 20;
			dprint("s_walls_objcon = 20 ");
		end
end

script dormant f_walls_spawn_last_stand_objcon_30()		
	sleep_until (volume_test_players ( tv_walls_last_stand_rear ) or s_walls_objcon >= 30, 1);
		if s_walls_objcon <= 30 then 
			s_walls_objcon = 30;
			dprint("s_walls_objcon = 30 ");
		end
	
end


script dormant f_walls_last_stand_init()
	dprint("last stand init");

	sleep_until(  b_walls_last_stand , 1 );
		garbage_collect_now();

		sleep(5);
		wake( f_walls_spawn_last_stand_objcon_10 );
		wake( f_walls_spawn_last_stand_objcon_20 );
		wake( f_walls_spawn_last_stand_objcon_30 );
		thread( f_wall_last_stand_spawner() );
		sleep( 3 );
		thread( f_wall_last_stand_spawner() );
		sleep( 3 );
		thread( f_wall_last_stand_spawner() );
		wake( f_walls_spawn_last_stand_turrets );
		//wake( f_dialog_m90_catwalk );
		repeat
				sleep_until( ai_living_count( sg_walls_4 ) <= 5 );

					//thread( f_wall_last_stand_spawner() );
					if s_walls_objcon <= 20 then
						thread( f_wall_last_stand_spawner() );
						sleep(15);
					end

					if s_walls_objcon <= 10 then
						thread( f_wall_last_stand_spawner() );
						thread( f_wall_last_stand_spawner() );
						thread( f_wall_last_stand_spawner() );
					end
					sleep_s(5);
		until( s_walls_objcon >= 30 , 1 );
end

script static void f_wall_last_stand_spawner()
	dprint("lll");
	if ( ai_living_count ( sq_walls_4_pawn_td_1 ) <= 2 ) then
		ai_place( sq_walls_4_pawn_td_1,3 );
		//dprint("place pawns 1");
	elseif ( ai_living_count ( sq_walls_4_pawn_td_2 ) <= 2 ) then
		ai_place( sq_walls_4_pawn_td_2, 2 );
		//dprint("place pawns 2");
	elseif ( ai_living_count ( sq_walls_4_pawn_td_3 ) <= 2 ) then
		ai_place( sq_walls_4_pawn_td_3, 2 );
		//dprint("place pawns 3");
	else
		dprint("no pawns needed");
		ai_place( sq_walls_4_pawn_td_1, 1 );
		if (difficulty_legendary() and game_coop_player_count() >= 3) then
			ai_place( sq_walls_4_pawn_td_2, 3 );
		end
		sleep(1);
	end

end



global short s_walls_blip_index = -1;
global short s_DEF_PLINTH_START = 0;
global short s_DEF_DEFEND_FRONT = 1;
global short s_DEF_DEFEND_FLANK = 2;
global short s_DEF_DEFEND_ALL 	= 3;
global short s_DEF_PLINTH_GRAB 	= 4;
global short s_DEF_WALLS_EXIT 	= 5;
global boolean b_SHOW_BLIP			= FALSE;



script static void f_walls_next_blip( short DEF_BLIP )
	//thread( f_walls_clear_blip());
	sleep(15 );
	s_walls_blip_index = DEF_BLIP;
	dprint("turning on blip");
	b_SHOW_BLIP = TRUE;
	thread( f_walls_blip_controller_update() );
end

script static void f_walls_clear_blip()
	//dprint("turning off blips");
	b_SHOW_BLIP = FALSE;
	if object_valid( dc_walls_turret_activator ) then
		thread( f_unblip_object ( dc_walls_turret_activator ) );	
	end
	thread( f_unblip_flag ( flag_walls_cortana ) );	
	thread( f_unblip_flag ( flag_walls_exit ));	
	thread( f_unblip_flag ( flag_walls_defend_a ));
	thread( f_unblip_flag ( flag_walls_defend_b ));
	thread( f_unblip_flag ( flag_walls_defend_c ));
	//sleep(5);
end



script static void f_walls_blip_controller_update()


	
		if b_SHOW_BLIP then
			if s_walls_blip_index == s_DEF_PLINTH_START then
				thread( f_blip_flag (flag_walls_cortana, "default") );
			end
			
			if s_walls_blip_index == s_DEF_DEFEND_FRONT then
				thread( f_blip_flag ( flag_walls_defend_a, "defend" ) );
			end
			
			if s_walls_blip_index == s_DEF_DEFEND_FLANK then
				thread( f_blip_flag ( flag_walls_defend_b, "defend" ) );
			end
			
			if s_walls_blip_index == s_DEF_DEFEND_ALL then
				thread(f_blip_flag ( flag_walls_defend_c, "defend" ) );
			end

			if s_walls_blip_index == s_DEF_PLINTH_GRAB then
				thread( f_blip_object (dc_walls_turret_activator, "activate") );
			end
			
			if s_walls_blip_index == s_DEF_WALLS_EXIT then
				thread( f_blip_flag( flag_walls_exit ,"default") );
			end

		end
		
		if not b_SHOW_BLIP then
			//dprint("clear blips");
			thread( f_walls_clear_blip() );
		end

end

script command_script turret_phasein()
	object_hide(ai_vehicle_get ( ai_current_actor ) , TRUE);
	ai_set_blind(ai_current_actor, TRUE);
	ai_braindead (ai_current_actor, TRUE);
	
	
end

script static void f_walls_turret_rez_in(ai turret )
	AutomatedTurretSwitchTeams(ai_vehicle_get( turret ), player_get_first_valid()  );
	object_dissolve_from_marker( ai_vehicle_get ( turret ), phase_in, control_marker );
	sleep(5);
	ai_set_blind( turret, FALSE );
	ai_braindead ( turret, FALSE );
	
	
	//giving a little xtra vitality, because they die easily to pawns. we inherit health from the normal turret and we cant adjust it on the tag
	sleep_until( object_get_health( 	ai_vehicle_get( turret ) ) <= 0.10 ,1 );
		//dprint("double the effort turret!");
		object_set_health (ai_vehicle_get( turret ),1 );
		sleep(2);
	sleep_until( object_get_health( 	ai_vehicle_get( turret ) ) <= 0.10 ,1 );
		object_set_health (ai_vehicle_get( turret ),1 );
end



script command_script m90_pawn_phasein()
	object_dissolve_from_marker(ai_get_object(ai_current_actor), "resurrect", "phase_in");
end
// --- End m90_walls.hsc ---

