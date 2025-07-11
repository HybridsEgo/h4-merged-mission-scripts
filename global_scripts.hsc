
// GLOBALS

(global long l_ability_timer_thread 0)
(global long l_ability_timer_active_start 0)
(global real r_ability_timer_active_time 0.0)
(global long l_ability_timer_inactive_start 0)
(global real r_ability_timer_inactive_time 0.0)
(global long l_ability_timer_enabled_time 0)
(global boolean f_ability_timer_loop::b_active false)
(global real global_ai::r_ai_garbage_distance_min_default 22.5)
(global real global_ai::r_ai_garbage_see_degrees_default 100.0)
(global short global_ai::s_ai_garbage_delay_squad_default 30)
(global short global_ai::s_ai_garbage_delay_unit_default 1)
(global long global_ai::l_ai_spawn_timer 0)
(global short l_ai_spawn_delay_default 5)
(global real r_fov_default 78.0)
(global long l_sys_transition_fov_thread 0)
(global long sys_transition_fov::l_time_start 0)
(global long sys_transition_fov::l_time_end 0)
(global real sys_transition_fov::r_fov_range 0.0)
(global real sys_transition_fov::r_fov_delta 0.0)
(global real sys_transition_fov::r_time_range 0.0)
(global long l_gazelock_p0_thread 0)
(global long l_gazelock_p1_thread 0)
(global long l_gazelock_p2_thread 0)
(global long l_gazelock_p3_thread 0)
(global boolean b_screenshake_shake false)
(global boolean b_screenshake_rumble false)
(global boolean b_screenshake_audio false)
(global boolean b_looping_save_check_on false)
(global long l_looping_save_thread_id -1)
(global long l_checkpoint_timer 0)
(global real r_checkpoint_ignore_time_default 10.0)
(global long sys_checkpoint::l_save_thread 0)
(global boolean b_combat_checkpoint_paused false)
(global long l_combat_checkpoint_thread_id 0)
(global long sys_combat_checkpoint::l_time_delay 0)
(global long sys_combat_checkpoint::l_time_out 0)
(global boolean b_debug_cinematic_scripts true)
(global boolean b_cinematic_entered false)
(global short global_cortana::s_cortana_location_state (def_s_cortana_location_chief))
(global object global_cortana::obj_cortana_location_object none)
(global object global_cortana::obj_cortana_location_parent none)
(global real r_cortana_hud_rampancy 0.0)
(global long l_cortana_hud_rampancy_thread 0)
(global long f_cortana_rampancy_state_set::l_rampancy_loop_thread 0)
(global short global_cortana::s_cortana_rampancy_state (def_s_cortana_rampancy_state_normal))
(global short global_cortana::s_cortana_rampancy_type (def_s_cortana_rampancy_type_none))
(global short global_cortana::r_cortana_rampancy_effect_time_min (def_s_cortana_rampancy_effect_time_min_default))
(global short global_cortana::r_cortana_rampancy_effect_time_max (def_s_cortana_rampancy_effect_time_max_default))
(global short global_cortana::r_cortana_rampancy_effect_delay_min (def_s_cortana_rampancy_effect_delay_min_default))
(global short global_cortana::r_cortana_rampancy_effect_delay_max (def_s_cortana_rampancy_effect_delay_max_default))
(global short global_cortana::s_cortana_rampancy_loop_cnt 0)
(global short global_cortana::s_cortana_rampancy_effect_cnt 0)
(global real global_cortana::r_cortana_scale (def_s_cortana_scale_default))
(global real global_cortana::r_cortana_scale_time 1.0)
(global real global_cortana::r_cortana_scale_current (def_s_cortana_scale_default))
(global boolean global_cortana::b_cortana_hide_force false)
(global boolean global_cortana::b_cortana_hide_auto false)
(global boolean global_cortana::b_cortana_hide_auto_state false)
(global long cortana_hud_rampancy_loop_begin::thread_id 0)
(global real cortana_hud_rampancy_loop_main::max_sleep_time (* 30.0 0.75))
(global real cortana_hud_rampancy_loop_main::min_sleep_time (* 30.0 0.2))
(global real cortana_hud_rampancy::loop_ticks 0.0)
(global real cortana_hud_rampancy::rampancy_ticks 0.0)
(global real r_device_machine_scale 1.0)
(global long transition_device_scale::l_sys_transition_device_scale 0)
(global long sys_transition_device_scale::l_time_start 0)
(global long sys_transition_device_scale::l_time_end 0)
(global real sys_transition_device_scale::r_scale_range 0.0)
(global real sys_transition_device_scale::r_scale_delta 0.0)
(global real sys_transition_device_scale::r_time_range 0.0)
(global boolean sys_dialog_mute_dialog false)
(global boolean b_chief_is_speaking false)
(global boolean b_cortana_is_speaking false)
(global boolean dialog_line_didact::b_speaking false)
(global boolean dialog_line_npc::b_speaking false)
(global boolean dialog_line_radio::b_speaking false)
(global boolean dialog_line_other::b_speaking false)
(global short global_dialog::s_dialog_foreground_line_index 0)
(global string global_dialog::str_dialog_foreground_line_speaker (def_dialog_speaker_id_none))
(global sound global_dialog::snd_dialog_foreground_line_sound none)
(global long global_dialog::l_dialog_foreground_line_timer 0)
(global long global_dialog::l_dialog_foreground_line_id 0)
(global short global_dialog::s_dialog_foreground_line_cnt 0)
(global short global_dialog::s_dialog_background_line_cnt 0)
(global real r_pad_line_time_auto 0.0)
(global boolean b_temp_line_display_blurb true)
(global boolean b_temp_line_display_blurb_force false)
(global real r_line_temp_pad_time 3.25)
(global long global_dialog::l_dialog_end_id (def_dialog_id_none))
(global long global_dialog::l_dialog_end_interrupt_id (def_dialog_id_none))
(global boolean global_dialog::b_dialog_foreground_end_all false)
(global boolean global_dialog::b_dialog_background_end_all false)
(global long global_dialog::l_dialog_foreground_id_current (def_dialog_id_none))
(global short global_dialog::s_dialog_foreground_active_cnt 0)
(global short global_dialog::s_dialog_background_active_cnt 0)
(global string global_dialog::str_dialog_foreground_name_current "def_str_dialog_name_none")
(global real global_dialog::r_dialog_back_pad_default 0.0)
(global boolean global_dialog::b_dialog_foreground_interruptable false)
(global short global_dialog::s_dialog_foreground_queue_cnt 0)
(global short global_dialog::s_dialog_background_queue_cnt 0)
(global short global_dialog::s_dialog_interrupt_foreground_queue_cnt 0)
(global short global_dialog::s_dialog_interrupt_background_queue_cnt 0)
(global string global_dialog::str_dialog_foreground_unqueue_name "def_str_dialog_name_none")
(global string global_dialog::str_dialog_foreground_unqueue_success "def_str_dialog_name_none")
(global string global_dialog::str_dialog_background_unqueue_name "def_str_dialog_name_none")
(global string global_dialog::str_dialog_background_unqueue_success "def_str_dialog_name_none")
(global boolean global_dialog::b_dialog_debug false)
(global boolean global_dialog::b_dialog_debug_details false)
(global real r_lightmap_direct_scale_default 1.0)
(global real r_lightmap_indirect_scale_default 1.0)
(global short f_lighting_environment_set::l_lighting_thread_static 0)
(global long f_lighting_direct_set::l_lighting_thread_static 0)
(global long sys_lighting_direct_thread::l_time_start 0)
(global long sys_lighting_direct_thread::l_time_end 0)
(global real sys_lighting_direct_thread::r_lighting_range 0.0)
(global real sys_lighting_direct_thread::r_lighting_delta 0.0)
(global real sys_lighting_direct_thread::r_time_range 0.0)
(global long f_lighting_indirect_set::l_lighting_thread_static 0)
(global long sys_lighting_indirect_thread::l_time_start 0)
(global long sys_lighting_indirect_thread::l_time_end 0)
(global real sys_lighting_indirect_thread::r_lighting_range 0.0)
(global real sys_lighting_indirect_thread::r_lighting_delta 0.0)
(global real sys_lighting_indirect_thread::r_time_range 0.0)
(global long l_lightmap_pulse_thread 0)
(global long l_lightmap_pulse_direct_thread 0)
(global long l_lightmap_pulse_indirect_thread 0)
(global real r_lightmap_pulse_light_min_scale 1.0)
(global real r_lightmap_pulse_light_max_scale 1.0)
(global boolean sys_lighting_pulse_thread::b_low true)
(global real sys_lighting_pulse_thread::r_lighting_target 0.0)
(global real sys_lighting_pulse_thread::r_lighting_time 0.0)
(global object obj_narrative_pup_player none)
(global object obj_narrative_pup_terminal none)
(global boolean play_temp_bink_cutscene_bool false)
(global long on_birth 0)
(global long on_death 1)
(global long on_interact 2)
(global long on_init_spawner_shard 3)
(global long on_init_knight_taint 4)
(global long ft_companion 0)
(global long ft_protector 1)
(global long ft_spawner 2)
(global long ft_birther 3)
(global long tt_interact 0)
(global long tt_protect 1)
(global long tt_shield 2)
(global long tt_resurrect 3)
(global long tt_spawn 4)
(global long tt_suppress 5)
(global long tt_shard_spawn 6)
(global long tf_friendly 0)
(global long tf_hostile 1)
(global long tf_any 2)
(global long cmd_interact 0)
(global long var_move_amount 1)
(global long var_cover_status 2)
(global long var_move_time 3)
(global long var_shard_spawn_delay 4)
(global long var_turret_active 5)
(global long var_turret_hijacked 6)
(global long var_obj_local_a 253)
(global long var_obj_local_b 254)
(global long var_obj_local_c 255)
(global real dynamiccoverevent_moveamount 0.0)
(global real dynamiccoverevent_movetime 0.0)
(global long dynamiccover_status 0)
(global long cs_moving_up 0)
(global long cs_up 1)
(global long cs_moving_down 2)
(global long cs_down 3)
(global long g_taskindex -1)
(global real def_gravity_current -666.0)
(global long transition_gravity::l_sys_transition_gravity 0)
(global long sys_transition_gravity::l_time_start 0)
(global long sys_transition_gravity::l_time_end 0)
(global real sys_transition_gravity::r_gravity_range 0.0)
(global real sys_transition_gravity::r_gravity_delta 0.0)
(global real sys_transition_gravity::r_time_range 0.0)
(global short player_00 0)
(global short player_01 1)
(global short player_02 2)
(global short player_03 3)
(global long players_weapon_down::l_player00_thread 0)
(global long players_weapon_down::l_player01_thread 0)
(global long players_weapon_down::l_player02_thread 0)
(global long players_weapon_down::l_player03_thread 0)
(global short s_damage_type_default 0)
(global short s_damage_type_fire 1)
(global long f_screenshake_ambient_remove::l_return 0)
(global short s_screenshake_global_cnt 0)
(global real r_screenshake_global_intensity 0.0)
(global boolean sys_screenshake_global_intensity_set::b_return false)
(global short s_screenshake_ambient_cnt 0)
(global long l_screenshake_ambient_timer 0)
(global real s_screenshake_ambient_timer_min 0.0)
(global real s_screenshake_ambient_timer_max 0.0)
(global boolean b_screenshake_ambient_playing false)
(global boolean b_screenshake_ambient_paused false)
(global real r_screenshake_ambient_intensity_mod 1.0)
(global short s_screenshake_rumble_cnt 0)
(global real r_screenshake_rumble_intensity_mod 1.0)
(global looping_sound r_screenshake_rumble_snd none)
(global real sys_screenshake_rumble_sound::r_intensity_snd 0.0)
(global boolean b_screenshake_general_applied false)
(global real r_screenshake_general_mod 1.0)
(global real r_screenshake_general_mod_screen 1.0)
(global real r_screenshake_general_mod_control 1.0)
(global real r_screenshake_general_mod_yaw (def_r_screenshake_general_mod_yaw_default))
(global real r_screenshake_general_mod_pitch (def_r_screenshake_general_mod_pitch_default))
(global real r_screenshake_general_mod_roll (def_r_screenshake_general_mod_roll_default))
(global long sys_screenshake_general_increment::l_thread 0)
(global real r_screenshake_intensity_p0_l 0.0)
(global real r_screenshake_intensity_p0_r 0.0)
(global real r_screenshake_intensity_p1_l 0.0)
(global real r_screenshake_intensity_p1_r 0.0)
(global real r_screenshake_intensity_p2_l 0.0)
(global real r_screenshake_intensity_p2_r 0.0)
(global real r_screenshake_intensity_p3_l 0.0)
(global real r_screenshake_intensity_p3_r 0.0)
(global boolean sys_screenshake_player0_intensity_set::b_was_applied b_screenshake_general_applied)
(global boolean sys_screenshake_player1_intensity_set::b_was_applied b_screenshake_general_applied)
(global boolean sys_screenshake_player2_intensity_set::b_was_applied b_screenshake_general_applied)
(global boolean sys_screenshake_player3_intensity_set::b_was_applied b_screenshake_general_applied)
(global real sys_screenshake_player_all_intensity_trigger_set::r_trigger_intensity 0.0)
(global real sys_screenshake_player_any_apply::r_intensity_max 0.0)
(global boolean toggle_drops false)
(global boolean b_debug_globals false)
(global short s_md_play_time 0)
(global boolean s_camera_shake_loop_on false)
(global string data_mine_mission_segment "")
(global sound sfx_a_button none)
(global sound sfx_b_button none)
(global sound sfx_hud_in none)
(global sound sfx_hud_out none)
(global sound sfx_objective none)
(global sound sfx_tutorial_complete "sound\game_sfx\ui\pda_transition.sound")
(global real r_chapter_title_fade_in_default 1.5)
(global real r_chapter_title_display_default 2.0)
(global real r_chapter_title_fade_out_default 1.5)
(global sound sfx_blip "sound\game_sfx\ui\transition_beeps")
(global object_list l_blip_list (players))
(global boolean b_blip_list_locked false)
(global short s_blip_list_index 0)
(global short blip_neutralize 0)
(global short blip_defend 1)
(global short blip_ordnance 2)
(global short blip_interface 3)
(global short blip_recon 4)
(global short blip_recover 5)
(global short blip_structure 6)
(global short blip_neutralize_alpha 7)
(global short blip_neutralize_bravo 8)
(global short blip_neutralize_charlie 9)
(global short blip_ammo 13)
(global short blip_hostile_vehicle 14)
(global short blip_hostile 15)
(global short blip_default_a 17)
(global short blip_default_b 18)
(global short blip_default_c 19)
(global short blip_default_d 20)
(global short blip_default 21)
(global short blip_destination 21)
(global short blip_type_id 21)
(global short blip_jetpack 41)
(global short blip_thruster 42)
(global short blip_shield 43)
(global short blip_pat 44)
(global short blip_regen 45)
(global short blip_hologram 46)
(global short blip_camo 47)
(global short blip_vision 48)
(global string_id f_return_blip_type_cui::cui_string "navpoint_goto")
(global boolean b_is_dialogue_playing false)
(global boolean b_dprint true)
(global short s_objtype_biped 1)
(global short s_objtype_vehicle 2)
(global short s_objtype_weapon 4)
(global short s_objtype_equipment 8)
(global short s_objtype_crate 1024)
(global long global_zoneset::l_zoneset_emulate_current 0)
(global long global_zoneset::l_zoneset_emulate_current_active 0)
(global long global_zoneset::l_zoneset_preparing -1)
(global long global_zoneset::s_zoneset_prepare_delay 0)
(global long global_zoneset::l_zoneset_loading -1)
(global long global_zoneset::s_zoneset_load_delay 0)
(global long global_zoneset::l_sys_zoneset_timer_stamp -1)
(global long global_zoneset::l_zoneset_timer_stamp_current -1)
(global long global_zoneset::l_zoneset_timer_stamp_current_active -1)
(global ai def_spops_ai_global_ai_none (object_get_ai none))
(global ai ai_ff_all def_spops_ai_global_ai_none)
(global short s_spops_ai_population_limit 20)
(global short spops_ai::s_spops_ai_population_extra_cnt 0)
(global short spops_ai::s_spops_ai_mop_up_cnt 5)
(global short def_spops_ai_garbage_type_erase 0)
(global short def_spops_ai_garbage_type_kill 1)
(global real spops_ai::r_spops_ai_garbage_distance_conditional_default 17.5)
(global real spops_ai::r_spops_ai_garbage_distance_force_default 40.0)
(global real spops_ai::r_spops_ai_garbage_see_degrees_player_default 90.0)
(global real spops_ai::r_spops_ai_garbage_see_degrees_ai_default 0.0)
(global short spops_ai::s_spops_ai_garbage_combat_status_min_default ai_combat_status_asleep)
(global short spops_ai::s_spops_ai_garbage_combat_status_max_default ai_combat_status_uninspected)
(global short spops_ai::s_spops_ai_garbage_delay_squad_default 1)
(global short spops_ai::s_spops_ai_garbage_delay_unit_default 1)
(global string spops_ai::str_spops_ai_garbage_debug_blip "")
(global long def_var_index_l_active_camo 1)
(global short spops_ai::s_spops_ai_active_camo_manager_activate_status_min_default ai_combat_status_active)
(global short spops_ai::s_spops_ai_active_camo_manager_activate_status_max_default ai_combat_status_dangerous)
(global real spops_ai::r_spops_ai_active_camo_manager_activate_distance_conditional_default 5.0)
(global real spops_ai::r_spops_ai_active_camo_manager_activate_distance_force_default 10.0)
(global real spops_ai::r_spops_ai_active_camo_manager_activate_see_angle_default 25.0)
(global real spops_ai::r_spops_ai_active_camo_manager_deactivate_distance_default 3.0)
(global real spops_ai::r_spops_ai_active_camo_manager_deactivate_damage_recent_default 0.125)
(global real spops_ai::r_spops_ai_active_camo_manager_reset_time_min_default 5.0)
(global real spops_ai::r_spops_ai_active_camo_manager_reset_time_max_default 10.0)
(global boolean spops_ai::b_spops_ai_active_camo_manager_editor_debug true)
(global short def_spops_ai_morale_ally 1)
(global short def_spops_ai_morale_tied 0)
(global short def_spops_ai_morale_enemy -1)
(global real spops_ai::r_spops_ai_morale_ally_weight_default 1.0)
(global real spops_ai::r_spops_ai_morale_enemy_weight_default 1.0)
(global real spops_ai::r_spops_ai_morale_ally_leader_weight_default 5.0)
(global real spops_ai::r_spops_ai_morale_enemy_leader_weight_default 5.0)
(global real spops_ai::r_spops_ai_morale_ally_player_weight_default 5.0)
(global real spops_ai::r_spops_ai_morale_enemy_player_weight_default -0.5)
(global real spops_ai::r_spops_ai_morale_ally_player_distance_default 5.0)
(global real spops_ai::r_spops_ai_morale_enemy_player_distance_default 2.5)
(global boolean b_spops_audio_debug_music true)
(global string_id spops_return_blip_type_cui::cui_string "navpoint_goto")
(global string_id def_spops_radio_transmission_general "incoming_transmission")
(global string_id def_spops_radio_transmission_dalton "dalton_transmission_name")
(global string_id def_spops_radio_transmission_demarco "demarco_transmission_name")
(global string_id def_spops_radio_transmission_miller "miller_transmission_name")
(global string_id def_spops_radio_transmission_palmer "palmer_transmission_name")
(global string_id def_spops_radio_transmission_roland "roland_transmission_name")
(global string_id def_spops_radio_transmission_thorne "thorne_transmission_name")
(global string_id def_spops_radio_transmission_murphy "murphy_transmission_name")
(global string_id def_spops_radio_transmission_esposito "e10_m3_spartan_male")
(global short spops_narrative::s_spops_radio_transmission_cnt 0)
(global real spops_narrative::s_spops_radio_transmission_delay_start_default 0.0)
(global real spops_narrative::s_spops_radio_transmission_delay_end_default 0.0)
(global string_id sid_spops_radio_transmission_active "none")
(global long spops_radio_transmission_end::l_thread 0)

// ===============================================================================================================================================
// GLOBAL SCRIPTS ================================================================================================================================
// ===============================================================================================================================================

// Testing feature, remove later: HAX
global boolean toggle_drops = FALSE;

global boolean b_debug_globals = FALSE;

global short s_md_play_time = 0;

global boolean s_camera_shake_loop_on = FALSE;

// Testing feature, remove later: HAX
script static void toggle_drops_set(boolean value)
	toggle_drops = value;
end

script static void print_difficulty

	if game_difficulty_get_real() == easy then 
		dprint ("easy");
	end
	
	if game_difficulty_get_real() == normal then
		dprint ("normal");
	end
	
	if game_difficulty_get_real() == heroic then
		dprint ("heroic");
	end
	
	if game_difficulty_get_real() == legendary then
		dprint ("legendary");
	end
end

// Globals 
global string data_mine_mission_segment = "";


// Difficulty level scripts 
script static boolean difficulty_legendary()
	game_difficulty_get_real() == legendary;
end

script static boolean difficulty_heroic()
	game_difficulty_get_real() == heroic;
end

script static boolean difficulty_normal()
	game_difficulty_get_real() <= normal;
end

//fades the vehicle out and then erases it
script static void f_vehicle_scale_destroy ( vehicle vehicle_variable )
	object_set_scale ( vehicle_variable, 0.01, (30 * 5) );
	sleep (30 * 5);
	object_destroy ( vehicle_variable );
end

//for placing pelicans and falcons etc that are critial and cannot die
script static void f_ai_place_vehicle_deathless ( ai squad )
	print("f_ai_place_vehicle_deathless");
	ai_place (squad);
	ai_cannot_die (  object_get_ai( vehicle_driver ( ai_vehicle_get_from_squad ( squad, 0 ))), TRUE);
	object_cannot_die ( ai_vehicle_get_from_squad ( squad, 0 ), TRUE );
end

script static void f_ai_place_vehicle_deathless_no_emp ( ai squad )
	ai_place (squad);
	ai_cannot_die (  object_get_ai( vehicle_driver ( ai_vehicle_get_from_squad ( squad, 0 ))), TRUE);
	object_cannot_die ( ai_vehicle_get_from_squad ( squad, 0 ), TRUE );
	object_ignores_emp ( ai_vehicle_get_from_squad ( squad, 0), TRUE );
end

//to get the number of ai passengers in a vehicle
script static short f_vehicle_rider_number (vehicle v)
	list_count (vehicle_riders (v));
end

//to determine if first squad is riding in vehicle of second squad
//note: not sure if this is returning the intended result cf 3/30/11
script static boolean f_all_squad_in_vehicle ( ai inf_squad, ai vehicle_squad )
		ai_living_count (inf_squad) == 0 and		
		ai_living_count (vehicle_squad) == f_vehicle_rider_number (ai_vehicle_get_from_squad (vehicle_squad, 0));
end

//return the driver of a vehicle assuming only one vehicle in squad
script static ai f_ai_get_vehicle_driver (ai squad)
	object_get_ai (vehicle_driver (ai_vehicle_get_from_squad (squad, 0)));
end


// ===============================================================================================================================================
// global health script =================================================================================================================================
// ===============================================================================================================================================
script dormant f_global_health_saves()
	sleep_until( player_count() > 0 );

	repeat
			sleep_until(unit_get_health (player0) < 1);
			sleep (30 * 7);
			if ( unit_get_health (player0) < 1) then
					sleep_until( unit_get_health (player0) == 1);
					print ("global health: health pack aquired");
					game_save();
					sleep( 1 );
			else			
					print ("global health: re-gen");
			end
	until ( FALSE );

			
end


// ===============================================================================================================================================
// Threads =======================================================================================================================================
// ===============================================================================================================================================
// f_thread_cleanup - A simple function for using a single variable to keep track of a thread; it takes the old thread and makes sure it's shut
//										down and returns the new thread index if it's still valid
script static long f_thread_cleanup( long l_thread_old, long l_thread_new )

	if ( (l_thread_old != 0) and (l_thread_old != GetCurrentThreadId()) ) then
		kill_thread( l_thread_old );
		l_thread_old = 0;
	end

	if ( not IsThreadValid(l_thread_new) ) then
		l_thread_new = 0;
	end

	// return
	l_thread_new;
	
end

// ===============================================================================================================================================
// Award Tourist =================================================================================================================================
// ===============================================================================================================================================

//The following were commented out in Reach -cf 3.30.11

/*
script dormant player0_award_tourist()
	f_award_tourist (player_00);
end
script dormant player1_award_tourist()
	f_award_tourist (player_01);
end
script dormant player2_award_tourist()
	f_award_tourist (player_02);
end
script dormant player3_award_tourist()
	f_award_tourist (player_03);
end
*/

/*
(script static void (f_award_tourist
							(short player_short)
				)
	(sleep_until(pda_is_active_deterministic (player_get player_short)) 45)
		(sleep 30)
	
	; award the achievement for accessing the pda 
	(achievement_grant_to_player (player_get player_short) "_achievement_tourist")
)

// ===============================================================================================================================================
// Waypoint Scripts ==============================================================================================================================
// ===============================================================================================================================================
(global short s_waypoint_index 0)
(global short s_waypoint_timer (* 30 10))

(script static void (f_sleep_until_activate_waypoint
									(short player_short)
				)
		(sleep 3)
	(unit_action_test_reset (player_get player_short))
		(sleep 3)
	(sleep_until	(and
					(> (object_get_health (player_get player_short)) 0)
					(or
						(unit_action_test_dpad_up (player_get player_short))
						(unit_action_test_dpad_down (player_get player_short))
					)
				)
	1)
	(f_sfx_a_button player_short)
		(sleep 3)
)

(script static void (f_sleep_deactivate_waypoint
									(short player_short)
				)
	; sleep until dpad pressed or player dies 
		(sleep 3)
	(unit_action_test_reset (player_get player_short))
		(sleep 3)
	(sleep_until	(or
					(<= (unit_get_health (player_get player_short)) 0)
					(unit_action_test_dpad_up (player_get player_short))
					(unit_action_test_dpad_down (player_get player_short))
				)
	1 s_waypoint_timer)
	(if	(or
			(unit_action_test_dpad_up (player_get player_short))
			(unit_action_test_dpad_down (player_get player_short))
		)
		(f_sfx_a_button player_short)
	)
	(sleep 3)
)

// ===============================================================================================================================================
(script static void	(f_waypoint_message
									(short			player_short)
									(cutscene_flag		waypoint_01)
									(cutscene_title	display_title)
									(cutscene_title	blank_title)
				)
	; reset player action test 
	(unit_action_test_reset (player_get player_short))
	
	; turn on waypoints 
	(if	(not (pda_is_active_deterministic (player_get player_short)))
		(begin
			(chud_show_cinematic_title (player_get player_short) display_title)
			(sleep 15)
	
				; sleep until dpad pressed or player dies 
				(f_sleep_deactivate_waypoint player_short)
			
			; turn waypoints off 
			(chud_show_cinematic_title (player_get player_short) blank_title)
		)
		(sleep 5)
	)
)
// ===============================================================================================================================================
(script static void	(f_waypoint_activate_1
									(short			player_short)
									(cutscene_flag		waypoint_01)
				)
	; reset player action test 
	(unit_action_test_reset (player_get player_short))
	
	; turn on waypoints 
	(if (not (pda_is_active_deterministic (player_get player_short))) (chud_show_navpoint (player_get player_short) waypoint_01 .55 TRUE))
	(sleep 15)
	
		; sleep until dpad pressed or player dies 
		(f_sleep_deactivate_waypoint player_short)
	
	; turn waypoints off 
	(chud_show_navpoint (player_get player_short) waypoint_01 0 FALSE)
)
// ===============================================================================================================================================
(script static void	(f_waypoint_activate_2
									(short			player_short)
									(cutscene_flag		waypoint_01)
									(cutscene_flag		waypoint_02)
				)
	; reset player action test 
	(unit_action_test_reset (player_get player_short))
	
	; turn on waypoints 
	(if (not (pda_is_active_deterministic (player_get player_short))) 
		(begin
			(chud_show_navpoint (player_get player_short) waypoint_01 .55 TRUE)
			(chud_show_navpoint (player_get player_short) waypoint_02 .55 TRUE)
		)
	)
	(sleep 15)
	
		; sleep until dpad pressed or player dies 
		(f_sleep_deactivate_waypoint player_short)
	
	; turn waypoints off 
	(chud_show_navpoint (player_get player_short) waypoint_01 0 FALSE)
	(chud_show_navpoint (player_get player_short) waypoint_02 0 FALSE)
)
// ===============================================================================================================================================
(script static void	(f_waypoint_activate_3
									(short			player_short)
									(cutscene_flag		waypoint_01)
									(cutscene_flag		waypoint_02)
									(cutscene_flag		waypoint_03)
				)
	; reset player action test 
	(unit_action_test_reset (player_get player_short))
	
	; turn on waypoints 
	(if (not (pda_is_active_deterministic (player_get player_short))) 
		(begin
			(chud_show_navpoint (player_get player_short) waypoint_01 .55 TRUE)
			(chud_show_navpoint (player_get player_short) waypoint_02 .55 TRUE)
			(chud_show_navpoint (player_get player_short) waypoint_03 .55 TRUE)
		)
	)
	(sleep 15)
	
		; sleep until dpad pressed or player dies 
		(f_sleep_deactivate_waypoint player_short)
	
	; turn waypoints off 
	(chud_show_navpoint (player_get player_short) waypoint_01 0 FALSE)
	(chud_show_navpoint (player_get player_short) waypoint_02 0 FALSE)
	(chud_show_navpoint (player_get player_short) waypoint_03 0 FALSE)
)
// ===============================================================================================================================================
(script static void	(f_waypoint_activate_4
									(short			player_short)
									(cutscene_flag		waypoint_01)
									(cutscene_flag		waypoint_02)
									(cutscene_flag		waypoint_03)
									(cutscene_flag		waypoint_04)
				)
	; reset player action test 
	(unit_action_test_reset (player_get player_short))
	
	; turn on waypoints 
	(if (not (pda_is_active_deterministic (player_get player_short))) 
		(begin
			(chud_show_navpoint (player_get player_short) waypoint_01 .55 TRUE)
			(chud_show_navpoint (player_get player_short) waypoint_02 .55 TRUE)
			(chud_show_navpoint (player_get player_short) waypoint_03 .55 TRUE)
			(chud_show_navpoint (player_get player_short) waypoint_04 .55 TRUE)
		)
	)
	(sleep 15)
	
		; sleep until dpad pressed or player dies 
		(f_sleep_deactivate_waypoint player_short)
	
	; turn waypoints off 
	(chud_show_navpoint (player_get player_short) waypoint_01 0 FALSE)
	(chud_show_navpoint (player_get player_short) waypoint_02 0 FALSE)
	(chud_show_navpoint (player_get player_short) waypoint_03 0 FALSE)
	(chud_show_navpoint (player_get player_short) waypoint_04 0 FALSE)
)
*/

// ===============================================================================================================================================
// COOP RESUME MESSAGING =========================================================================================================================
// ===============================================================================================================================================
script static void f_coop_resume_unlocked ( cutscene_title resume_title, short insertion_point )
				
	if (game_is_cooperative()) then
			sound_impulse_start (sfx_hud_in, NONE, 1);
			cinematic_set_chud_objective (resume_title);
			game_insertion_point_unlock (insertion_point);
			//(sleep (* 30 7)) commented this out because it was breaking stuff! dmiller march 28/09
			//(sound_impulse_start sfx_hud_out NONE 1) commented this out temp because it was gonna sound weird!
	end
end

// ===============================================================================================================================================
// INSERTION FADE ================================================================================================================================
// ===============================================================================================================================================

script static void insertion_snap_to_black()
	fade_out (0, 0, 0, 0);
	
	// ai ignores players
	ai_disregard (players(), TRUE);

	// players cannot take damage 
	object_cannot_take_damage (players());

	// scale player input to zero 
	player_control_fade_out_all_input (1);
	
	// lower the player's weapon
	players_weapon_down( -1, 0.0, TRUE );
	/*
	unit_lower_weapon (player0, 0);
	unit_lower_weapon (player1, 0);
	unit_lower_weapon (player2, 0);
	unit_lower_weapon (player3, 0);
	*/

	// pause the meta-game timer 
	campaign_metagame_time_pause (TRUE);

	// fade out the chud 
	chud_cinematic_fade (0, 0);
	
	// hide players 
	if b_debug_globals then
		print ("hiding players...");
	end
	
	players_hide( -1, TRUE );
	/*
	object_hide (player0, TRUE);
	object_hide (player1, TRUE);
	object_hide (player2, TRUE);
	object_hide (player3, TRUE);
	*/

	// disable player input 
	player_enable_input (FALSE);

	// player can now move 
	player_disable_movement (TRUE);
	sleep (1);
	
	// go time
	if b_debug_globals then 
		print ("camera control on");
	end
	
end

script static void insertion_fade_to_gameplay()
	designer_fade_in ("fade_from_black", true);
end

script static void designer_fade_in (string fade_type, boolean weapon_starts_lowered)
	cinematic_stop();
	camera_control (OFF);

	// unhide players 
	players_hide( -1, FALSE );
	/*
	object_hide (player0, FALSE);
	object_hide (player1, FALSE);
	object_hide (player2, FALSE);
	object_hide (player3, FALSE);
	*/
	
	// raise weapon 
	if (weapon_starts_lowered) then

			if b_debug_globals then
				print ("snapping weapon to lowered state...");
			end
			
			players_weapon_down( -1, 1.0/30.0, TRUE );
			/*
			unit_lower_weapon (player0, 1);
			unit_lower_weapon (player1, 1);
			unit_lower_weapon (player2, 1);
			unit_lower_weapon (player3, 1);
			*/
			sleep (1);
		
	end
	
	// unlock the players gaze 
	player_control_unlock_gaze (player0);
	player_control_unlock_gaze (player1);
	player_control_unlock_gaze (player2);
	player_control_unlock_gaze (player3);
	sleep (1);

	// fade or snap screen back

		if (fade_type == "fade_from_black") then	

				if b_debug_globals then
					print ("fading from black...");
				end
				
				fade_in (0, 0, 0, 30);
				sleep (20);
		end
		
		if (fade_type == "fade_from_white") then 

				if b_debug_globals then
					print ("fading from white...");
				end
				
				fade_in (1, 1, 1, 30);
				sleep (20);
		end
		
		if (fade_type == "snap_from_black") then 

				if b_debug_globals then
					print ("snapping from black...");
				end
				
				fade_in (0, 0, 0, 5);
				sleep (5);
		end
	
		if (fade_type == "snap_from_white") then
				if b_debug_globals then
					print ("snapping from white...");
				end
				
				fade_in (1, 1, 1, 5);
				sleep (5);
		end
	
		if (fade_type == "no_fade") then
				fade_in (1, 1, 1, 0);
				sleep (5);
		end
	
				//if b_debug_globals then
					//print ("WARNING: fade_type not defined for 'designer_fade_in', perhaps a miss-spelling");
				//end
		//end				
		
	
	


	cinematic_show_letterbox (0);
	
	// raise weapon 
	if (weapon_starts_lowered) then

			if b_debug_globals then
				print ("raising player weapons slowly...");
			end
			
			players_weapon_down( -1, 1.0, FALSE );
			/*
			unit_raise_weapon (player0, 30);
			unit_raise_weapon (player1, 30);
			unit_raise_weapon (player2, 30);
			unit_raise_weapon (player3, 30);
			*/
			sleep (10);		
	end
	
	// fade in the chud 
	chud_cinematic_fade (1, 1);
	sleep (1);
		
	// enable player input 
	player_enable_input (TRUE);

	// scale player input to one 
	player_control_fade_in_all_input (1);
	
	// pause the meta-game timer 
	campaign_metagame_time_pause (FALSE);

	// the ai will disregard all players 
	ai_disregard (players(), FALSE);

	// players can now take damage 
	object_can_take_damage (players());

	// player can now move 
	player_disable_movement (FALSE);
end

// ===============================================================================================================================================
// PERFORMANCES ==================================================================================================================================
// ===============================================================================================================================================

// This script is called from a thread spawned by a performance.
// Therefore all of the "performance_..." functions known which performance the function calls are intended for
// and thus we don't have to pass in a performance index.
// The default script function simply plays through all of the lines in the script, one after the other.


script static void performance_default_script()
	repeat
			performance_play_line_by_id (performance_get_last_played_line_index() + 1);
	until 
		( (performance_get_last_played_line_index()  + 1) >= performance_get_line_count(), 0);
end

// ===============================================================================================================================================
// PDA SCRIPTS ===================================================================================================================================
// ===============================================================================================================================================

/*
(global short g_pda_breadcrumb_fade (* 30 45))
(global short g_pda_breadcrumb_timer (* 30 1.5))


(script dormant pda_breadcrumbs
	(pda_set_footprint_dead_zone 5)
	
	(sleep_until
		(begin
			(player_add_footprint player0 g_pda_breadcrumb_fade)
			(player_add_footprint player1 g_pda_breadcrumb_fade)
			(player_add_footprint player2 g_pda_breadcrumb_fade)
			(player_add_footprint player3 g_pda_breadcrumb_fade)
		FALSE)
	g_pda_breadcrumb_timer)
)
*/
		
// ===============================================================================================================================================
// END MISSION ===================================================================================================================================
;// ===============================================================================================================================================
script static void end_mission()
	print ("343 End of mission! 343");
	game_won();
end

// ===== DO NOT DELETE THIS EVER ===================
script startup beginning_mission_segment()
	data_mine_set_mission_segment (mission_start);
end


//=============================================================================================================================================== 
// MESSAGE CONFIRMATION SCRIPTS ================================================================================================================== 
//=============================================================================================================================================== 

global sound sfx_a_button	= "sound\game_sfx\ui\hud_ui\b_button";
global sound sfx_b_button	= "sound\game_sfx\ui\hud_ui\a_button";
global sound sfx_hud_in	= "sound\game_sfx\ui\hud_ui\hud_in";
global sound sfx_hud_out	= "sound\game_sfx\ui\hud_ui\hud_out";
global sound sfx_objective	= "sound\game_sfx\ui\hud_ui\mission_objective";
global sound sfx_tutorial_complete = "sound\game_sfx\ui\pda_transition.sound";


script static void f_sfx_a_button(short player_short)					
	sound_impulse_start (sfx_a_button, player_get (player_short), 1);
end

script static void f_sfx_b_button(short player_short)		
	sound_impulse_start (sfx_b_button, player_get (player_short), 1);
end

script static void f_sfx_hud_in(short player_short)		
	sound_impulse_start (sfx_hud_in, player_get (player_short), 1);
end

script static void f_sfx_hud_out(short player_short)		
	sound_impulse_start (sfx_hud_out, player_get (player_short), 1);
end

script static void f_sfx_hud_tutorial_complete(player player_to_train)
	sound_impulse_start (sfx_tutorial_complete, player_to_train, 1);
end




// TIMEOUT 
script static void f_display_message(short player_short,	cutscene_title	display_title)
	chud_show_cinematic_title (player_get (player_short), display_title);
	sleep (5);
end

script static void f_tutorial_begin(player 	player_to_train,string_id display_title)
								
	//(chud_show_cinematic_title (player_get player_short) display_title)
	f_hud_training_forever (player_to_train, display_title);
	sleep (5);
	unit_action_test_reset (player_to_train);
	sleep (5);
end

script static void f_tutorial_end (player player_to_train)
	
	f_sfx_hud_tutorial_complete (player_to_train);

	f_hud_training_clear (player_to_train);
	sleep (30);
end


script static void f_tutorial_right_bumper (player	player_variable, string_id	display_title)
	f_tutorial_begin (player_variable, display_title);
	sleep_until(unit_action_test_melee (player_variable), 1);
	sleep_s(1);
	f_tutorial_end (player_variable);
end

script static void f_tutorial_left_bumper (player	player_variable, string_id	display_title)
	f_tutorial_begin (player_variable, display_title);
	sleep_until(unit_action_test_equipment (player_variable), 1);
	sleep_s(1);
	f_tutorial_end (player_variable);
end

// BOOST
script static void f_tutorial_boost (player	player_variable, string_id	display_title)
	f_tutorial_begin (player_variable, display_title);
	sleep_until(unit_action_test_grenade_trigger (player_variable), 1);
	sleep_s(1);
	f_tutorial_end (player_variable);
end

// SWITCH WEAPONS
script static void f_tutorial_rotate_weapons (player	player_variable, string_id	display_title)
	f_tutorial_begin (player_variable, display_title);
	sleep_until(unit_action_test_rotate_weapons( player_variable), 1);
	sleep_s(1);
	f_tutorial_end (player_variable);
end

// SWITCH WEAPONS
script static void f_tutorial_fire_weapon(player player_variable, string_id	display_title)
	f_tutorial_begin (player_variable, display_title);
	sleep_until(unit_action_test_primary_trigger (player_variable), 1);
	sleep_s(1);
	f_tutorial_end (player_variable);
end


script static void f_tutorial_turn (player	player_variable string_id	display_title)
	f_tutorial_begin (player_variable, display_title);
	sleep (20);
	sleep_until(unit_action_test_look_relative_all_directions (player_variable), 1);
	sleep_s(1);
	f_tutorial_end (player_variable);
end

script static void f_tutorial_throttle(player player_variable, string_id	display_title)
	f_tutorial_begin (player_variable, display_title);
	sleep (20);
	sleep_until(unit_action_test_move_relative_all_directions (player_variable), 1);
	sleep_s(1);
	f_tutorial_end (player_variable);
end

script static void f_tutorial_tricks (player player_variable, string_id	display_title)
	f_tutorial_begin (player_variable, display_title);
	sleep_until(unit_action_test_vehicle_trick_secondary (player_variable), 1);
	sleep_s(1);
	f_tutorial_end (player_variable);
end

/*   COMMENTED OUT IN REACH - cf 3.31.11
//=================================================

; Accept Button 
(script static void (f_display_message_accept
								(short			player_short)
								(cutscene_title	display_title)
								(cutscene_title	blank_title)
				)
	(chud_show_cinematic_title (player_get player_short) display_title)
		(sleep 5)
	(unit_action_test_reset (player_get player_short))
		(sleep 5)
	(unit_confirm_message (player_get player_short))
	(sleep_until(unit_action_test_accept (player_get player_short)) 1)
	(f_sfx_a_button player_short)
	(chud_show_cinematic_title (player_get player_short) blank_title)
		(sleep 5)
)

; Cancel Button 
(script static void (f_display_message_cancel
								(short			player_short)
								(cutscene_title	display_title)
								(cutscene_title	blank_title)
				)
	(chud_show_cinematic_title (player_get player_short) display_title)
		(sleep 5)
	(unit_action_test_reset (player_get player_short))
		(sleep 5)
	(unit_confirm_cancel_message (player_get player_short))
	(sleep_until(unit_action_test_cancel (player_get player_short)) 1)
	(f_sfx_a_button player_short)
	(chud_show_cinematic_title (player_get player_short) blank_title)
		(sleep 5)
)

; Accept / Cancel Button 
(script static void (f_display_message_confirm
								(short			player_short)
								(cutscene_title	display_title)
								(cutscene_title	blank_title)
				)
	(chud_show_cinematic_title (player_get player_short) display_title)
		(sleep 5)
	(unit_action_test_reset (player_get player_short))
		(sleep 5)
	(unit_confirm_message (player_get player_short))
	(unit_confirm_cancel_message (player_get player_short))
	(sleep_until	(or
					(unit_action_test_accept (player_get player_short))
					(unit_action_test_cancel (player_get player_short))
				)
	1)
	(cond
		((unit_action_test_accept (player_get player_short)) (f_sfx_a_button player_short))
		((unit_action_test_cancel (player_get player_short)) (f_sfx_b_button player_short))
	)
	(chud_show_cinematic_title (player_get player_short) blank_title)
		(sleep 5)
)
; REPEAT Training  
(script static void (f_display_repeat_training
								(short			player_short)
								(cutscene_title	display_title)
								(cutscene_title	blank_title)
								(trigger_volume	volume_01)
								(trigger_volume	volume_02)
				)
	(chud_show_cinematic_title (player_get player_short) display_title)
		(sleep 5)
	(unit_action_test_reset (player_get player_short))
		(sleep 5)
	(unit_confirm_y_button (player_get player_short))
	(unit_confirm_cancel_message (player_get player_short))
	(sleep_until	(or
					(unit_action_test_y (player_get player_short))
					(unit_action_test_cancel (player_get player_short))
					(and
						(not (volume_test_object volume_01 (player_get player_short)))
						(not (volume_test_object volume_02 (player_get player_short)))
					)
				)
	1)

	(if	(or
			(volume_test_object volume_01 (player_get player_short))
			(volume_test_object volume_02 (player_get player_short))
		)
		(begin
			(cond
				((unit_action_test_y	 (player_get player_short)) (f_sfx_a_button player_short))
				((unit_action_test_cancel (player_get player_short)) (f_sfx_b_button player_short))
			)
			(chud_show_cinematic_title (player_get player_short) blank_title)
				(sleep 5)
		)
	)
)
; Vision Button 
(script static void (f_display_message_vision
								(short			player_short)
								(cutscene_title	display_title)
								(cutscene_title	blank_title)
								(trigger_volume	volume_01)
								(trigger_volume	volume_02)
				)
	(chud_show_cinematic_title (player_get player_short) display_title)
		(sleep 5)
	(unit_action_test_reset (player_get player_short))
		(sleep 5)
	(sleep_until	(or
					(unit_action_test_vision_trigger (player_get player_short))
					(and
						(not (volume_test_object volume_01 (player_get player_short)))
						(not (volume_test_object volume_02 (player_get player_short)))
					)
				)
	1)
	(if	(or
			(volume_test_object volume_01 (player_get player_short))
			(volume_test_object volume_02 (player_get player_short))
		)
		(begin
			(f_sfx_a_button player_short)
			(chud_show_cinematic_title (player_get player_short) blank_title)
				(sleep 5)
		)
	)
)


; Accept Button w/ trigger timeout 
(script static void (f_display_message_accept_volume
								(short			player_short)
								(cutscene_title	display_title)
								(cutscene_title	blank_title)
								(trigger_volume	volume_01)
								(trigger_volume	volume_02)
				)
	(chud_show_cinematic_title (player_get player_short) display_title)
		(sleep 5)
	(unit_action_test_reset (player_get player_short))
		(sleep 5)
	(unit_confirm_message (player_get player_short))
	(sleep_until	(or
					(unit_action_test_accept (player_get player_short))
					(and
						(not (volume_test_object volume_01 (player_get player_short)))
						(not (volume_test_object volume_02 (player_get player_short)))
					)
				)
	1)
	(if	(or
			(volume_test_object volume_01 (player_get player_short))
			(volume_test_object volume_02 (player_get player_short))
		)
		(begin
			(f_sfx_a_button player_short)
			(chud_show_cinematic_title (player_get player_short) blank_title)
				(sleep 5)
		)
	)
)


; A Button 
(script static void (f_display_message_a
								(short			player_short)
								(cutscene_title	display_title)
								(cutscene_title	blank_title)
				)
	(chud_show_cinematic_title (player_get player_short) display_title)
		(sleep 5)
	(unit_action_test_reset (player_get player_short))
		(sleep 5)
	(sleep_until(unit_action_test_accept (player_get player_short)) 1)
	(f_sfx_a_button player_short)
	(chud_show_cinematic_title (player_get player_short) blank_title)
		(sleep 5)
)

; B Button 
(script static void (f_display_message_b
								(short			player_short)
								(cutscene_title	display_title)
								(cutscene_title	blank_title)
				)
	(chud_show_cinematic_title (player_get player_short) display_title)
		(sleep 5)
	(unit_action_test_reset (player_get player_short))
		(sleep 5)
	(sleep_until(unit_action_test_cancel (player_get player_short)) 1)
	(f_sfx_a_button player_short)
	(chud_show_cinematic_title (player_get player_short) blank_title)
		(sleep 5)
)
; X Button 
(script static void (f_display_message_x
								(short			player_short)
								(cutscene_title	display_title)
								(cutscene_title	blank_title)
				)
	(chud_show_cinematic_title (player_get player_short) display_title)
		(sleep 5)
	(unit_action_test_reset (player_get player_short))
		(sleep 5)
	(sleep_until(unit_action_test_x (player_get player_short)) 1)
	(f_sfx_a_button player_short)
	(chud_show_cinematic_title (player_get player_short) blank_title)
		(sleep 5)
)

; Y Button 
(script static void (f_display_message_y
								(short			player_short)
								(cutscene_title	display_title)
								(cutscene_title	blank_title)
				)
	(chud_show_cinematic_title (player_get player_short) display_title)
		(sleep 5)
	(unit_action_test_reset (player_get player_short))
		(sleep 5)
	(sleep_until(unit_action_test_y (player_get player_short)) 1)
	(f_sfx_a_button player_short)
	(chud_show_cinematic_title (player_get player_short) blank_title)
		(sleep 5)
)

; BACK Button 
(script static void (f_display_message_back
								(short			player_short)
								(cutscene_title	display_title)
								(cutscene_title	blank_title)
				)
	(chud_show_cinematic_title (player_get player_short) display_title)
		(sleep 5)
	(unit_action_test_reset (player_get player_short))
		(sleep 5)
	(sleep_until(unit_action_test_back (player_get player_short)) 1)
	(f_sfx_a_button player_short)
	(chud_show_cinematic_title (player_get player_short) blank_title)
		(sleep 5)
)

; BACK Button 
(script static void (f_display_message_back_b
								(short			player_short)
								(cutscene_title	display_title)
								(cutscene_title	blank_title)
				)
	(chud_show_cinematic_title (player_get player_short) display_title)
		(sleep 5)
	(unit_action_test_reset (player_get player_short))
		(sleep 5)
	(sleep_until	(or
					(unit_action_test_back (player_get player_short))
					(unit_action_test_cancel (player_get player_short))
				)
	1)
	(f_sfx_a_button player_short)
	(chud_show_cinematic_title (player_get player_short) blank_title)
		(sleep 5)
)

; Left Bumper Button 
(script static void (f_display_message_left_bumper
								(short			player_short)
								(cutscene_title	display_title)
								(cutscene_title	blank_title)
				)
	(chud_show_cinematic_title (player_get player_short) display_title)
		(sleep 5)
	(unit_action_test_reset (player_get player_short))
		(sleep 5)
	(sleep_until(unit_action_test_left_shoulder (player_get player_short)) 1)
	(f_sfx_a_button player_short)
	(chud_show_cinematic_title (player_get player_short) blank_title)
		(sleep 5)
)

; Right Bumper Button 
(script static void (f_display_message_right_bumper
								(short			player_short)
								(cutscene_title	display_title)
								(cutscene_title	blank_title)
				)
	(chud_show_cinematic_title (player_get player_short) display_title)
		(sleep 5)
	(unit_action_test_reset (player_get player_short))
		(sleep 5)
	(sleep_until(unit_action_test_right_shoulder (player_get player_short)) 1)
	(f_sfx_a_button player_short)
	(chud_show_cinematic_title (player_get player_short) blank_title)
		(sleep 5)
)
; Either Bumper Button 
(script static void (f_display_message_bumpers
								(short			player_short)
								(cutscene_title	display_title)
								(cutscene_title	blank_title)
				)
	(chud_show_cinematic_title (player_get player_short) display_title)
		(sleep 5)
	(unit_action_test_reset (player_get player_short))
		(sleep 5)
	(sleep_until	(or
					(unit_action_test_left_shoulder (player_get player_short))
					(unit_action_test_right_shoulder (player_get player_short))
				)
	1)
	(f_sfx_a_button player_short)
	(chud_show_cinematic_title (player_get player_short) blank_title)
		(sleep 5)
)

; Action Button 
(script static void (f_display_message_action
								(short			player_short)
								(cutscene_title	display_title)
								(cutscene_title	blank_title)
				)
	(chud_show_cinematic_title (player_get player_short) display_title)
		(sleep 5)
	(unit_action_test_reset (player_get player_short))
		(sleep 5)
	(sleep_until(unit_action_test_action (player_get player_short)) 1)
	(f_sfx_a_button player_short)
	(chud_show_cinematic_title (player_get player_short) blank_title)
		(sleep 5)
)

; D-Pad UP 
(script static void (f_display_message_dpad_up
								(short			player_short)
								(cutscene_title	display_title)
								(cutscene_title	blank_title)
				)
	(chud_show_cinematic_title (player_get player_short) display_title)
		(sleep 5)
	(unit_action_test_reset (player_get player_short))
		(sleep 5)
	(sleep_until(unit_action_test_dpad_up (player_get player_short)) 1)
	(f_sfx_a_button player_short)
	(chud_show_cinematic_title (player_get player_short) blank_title)
		(sleep 5)
)

; D-Pad UP -or- D-Pad DOWN 
(script static void (f_display_message_dpad_up_down
								(short			player_short)
								(cutscene_title	display_title)
								(cutscene_title	blank_title)
				)
	(chud_show_cinematic_title (player_get player_short) display_title)
		(sleep 5)
	(unit_action_test_reset (player_get player_short))
		(sleep 5)
	(sleep_until	(or
					(unit_action_test_dpad_up (player_get player_short))
					(unit_action_test_dpad_down (player_get player_short))
				)
	1)
	(f_sfx_a_button player_short)
	(chud_show_cinematic_title (player_get player_short) blank_title)
		(sleep 5)
)

; MOVE Stick 
(script static void (f_display_message_move_stick
								(short			player_short)
								(cutscene_title	display_title)
								(cutscene_title	blank_title)
				)
	(chud_show_cinematic_title (player_get player_short) display_title)
		(sleep 5)
	(unit_action_test_reset (player_get player_short))
		(sleep 5)
	(sleep_until(unit_action_test_move_relative_all_directions (player_get player_short)) 1)
	(f_sfx_a_button player_short)
		(sleep 150)
	(chud_show_cinematic_title (player_get player_short) blank_title)
		(sleep 5)
)

; LOOK Stick 
(script static void (f_display_message_look_stick
								(short			player_short)
								(cutscene_title	display_title)
								(cutscene_title	blank_title)
				)
	(chud_show_cinematic_title (player_get player_short) display_title)
		(sleep 5)
	(unit_action_test_reset (player_get player_short))
		(sleep 5)
	(sleep_until	(or
					(unit_action_test_look_relative_up (player_get player_short))
					(unit_action_test_look_relative_down (player_get player_short))
					(unit_action_test_look_relative_left (player_get player_short))
					(unit_action_test_look_relative_right (player_get player_short))
				)
	1)
	(f_sfx_a_button player_short)
		(sleep 150)
	(chud_show_cinematic_title (player_get player_short) blank_title)
		(sleep 5)
)
*/

// =================================================================================================
// TRAINING
// =================================================================================================
script static void f_hud_training_timed_players( string_id string_hud, real r_time )

	if ( player_valid(Player0) ) then
		thread( f_hud_training_timed(Player0, string_hud, r_time) );
	end
	if ( player_valid(Player1) ) then
		thread( f_hud_training_timed(Player1, string_hud, r_time) );
	end
	if ( player_valid(Player2) ) then
		thread( f_hud_training_timed(Player2, string_hud, r_time) );
	end
	if ( player_valid(Player3) ) then
		thread( f_hud_training_timed(Player3, string_hud, r_time) );
	end
	
end

script static void f_hud_training_timed( player player_num, string_id string_hud, real r_time )
	chud_show_screen_training( player_num, string_hud );
	if ( r_time >= 0.0 ) then
		sleep_s( r_time );
		f_hud_training_clear( player_num );
	end
end

script static void f_hud_training (player player_num, string_id string_hud)
	f_hud_training_timed( player_num, string_hud, 4.0 );
end

script static void f_hud_training_forever (player player_num, string_id string_hud)
	f_hud_training_timed( player_num, string_hud, -1.0 );
end

script static void f_hud_training_clear( player player_num )
	chud_show_screen_training (player_num, "");
end

script static void f_hud_training_new_weapon()
	chud_set_static_hs_variable (player0, 0, 1);
	chud_set_static_hs_variable (player1, 0, 1);
	chud_set_static_hs_variable (player2, 0, 1);
	chud_set_static_hs_variable (player3, 0, 1);
	sleep (200);
	chud_clear_hs_variable (player0, 0);
	chud_clear_hs_variable (player1, 0);
	chud_clear_hs_variable (player2, 0);
	chud_clear_hs_variable (player3, 0);
end

script static void f_hud_training_new_weapon_player (player p)
	chud_set_static_hs_variable (p, 0, 1);
	sleep (200);
	chud_clear_hs_variable (p, 0);
end

script static void f_hud_training_new_weapon_player_clear (player p)
	chud_clear_hs_variable (p, 0);
end

script static void f_hud_training_confirm (player player_num, string_id string_hud, string button_press)
	//kill script if there is no player
	if ( player_is_in_game (player_num) == FALSE ) then
		sleep_forever();
	end
	
	chud_show_screen_training (player_num, string_hud);
	sleep (10);
	
	player_action_test_reset();

	
			if ( button_press == "primary_trigger" ) then
				sleep_until( unit_action_test_primary_trigger (player_num)  ,1, (30 * 10))	;	
			end
			if ( button_press == "grenade_trigger" ) then
				sleep_until( unit_action_test_grenade_trigger  (player_num),1, (30 * 10))	;
			end
			if ( button_press == "equipment" ) then
				sleep_until( unit_action_test_equipment (player_num),1, (30 * 10))	;
			end
			if ( button_press == "melee" ) then
				sleep_until( unit_action_test_melee (player_num),1, (30 * 10))	;
			end
			if ( button_press == "jump" ) then
				sleep_until( unit_action_test_jump (player_num),1, (30 * 10))	;
			end
			if ( button_press == "rotate_weapons" ) then
				sleep_until( unit_action_test_rotate_weapons (player_num),1, (30 * 10))	;
			end
			if ( button_press == "context_primary" ) then
				sleep_until( unit_action_test_context_primary (player_num),1, (30 * 10))	;	
			end
			if ( button_press == "back" ) then
				sleep_until( unit_action_test_back (player_num),1, (30 * 10))	;
			end
			if ( button_press == "vehicle_trick" ) then 
				sleep_until( unit_action_test_vehicle_trick_primary (player_num),1, (30 * 10))	;
			end
			if ( button_press == "sprint") then 
				sleep_until( unit_action_test_hero_assist (player_num),1, (30 * 10))	;
			end
			
			
	
	chud_show_screen_training (player_num, "");
end

;example:
;(f_hud_training_confirm player0 ct_training_melee "melee")




// =================================================================================================
// OBJECTIVES
// =================================================================================================
script static void f_hud_obj_new (string_id string_hud, string_id string_start)
	f_hud_start_menu_obj (string_start);
	chud_show_screen_objective (string_hud);
	sleep (160);
	chud_show_screen_objective ("");
end

script static void f_hud_obj_repeat (string_id string_hud)
	chud_show_screen_objective (string_hud);
	sleep (160);
	chud_show_screen_objective ("");
end

script static void f_hud_start_menu_obj (string_id reference)
	objectives_clear();
	objectives_set_string (0, reference);
	objectives_show_string (reference); 
end



// =================================================================================================
// CHAPTER TITTES
// =================================================================================================
script static void f_hud_chapter (string_id string_hud)
	chud_cinematic_fade (0, 30);
	sleep (10);
	chud_show_screen_chapter_title (string_hud);
	chud_fade_chapter_title_for_player (player0, 1, 30);
	chud_fade_chapter_title_for_player (player1, 1, 30);
	chud_fade_chapter_title_for_player (player2, 1, 30);
	chud_fade_chapter_title_for_player (player3, 1, 30);
	
	sleep (120);
	chud_fade_chapter_title_for_player (player0, 0, 30);
	chud_fade_chapter_title_for_player (player1, 0, 30);
	chud_fade_chapter_title_for_player (player2, 0, 30);
	chud_fade_chapter_title_for_player (player3, 0, 30);
	chud_show_screen_chapter_title ("");
	
	sleep (10);
	chud_cinematic_fade (1, 30);
end

global real R_chapter_title_fade_in_default = 		1.5;
global real R_chapter_title_display_default = 		2.0;
global real R_chapter_title_fade_out_default = 		1.5;
script static void f_chapter_title( cutscene_title ct_title, boolean b_hud_hide, real r_title_display_time, real r_title_fade_in_time, real r_title_fade_out_time )

	// show letterbox
	cinematic_show_letterbox( TRUE );

	// hide hud
	if ( b_hud_hide ) then
		hud_play_global_animtion( screen_fade_out );
	end
	sleep_s( r_title_fade_in_time );
	if ( b_hud_hide ) then
		hud_stop_global_animtion( screen_fade_out );
	end
	
	cinematic_set_title( ct_title );
	sleep_s( r_title_fade_in_time + r_title_display_time );

	// hide letterbox	
	cinematic_show_letterbox( FALSE );
	
	// show hud
	if ( b_hud_hide ) then
		hud_play_global_animtion( screen_fade_in );
	end
	sleep_s( r_title_fade_out_time );
	if ( b_hud_hide ) then
		hud_stop_global_animtion( screen_fade_in );
	end

end
script static void f_chapter_title( cutscene_title ct_title, boolean b_hud_hide, real r_title_display_time )
	f_chapter_title( ct_title, b_hud_hide, r_title_display_time, R_chapter_title_fade_in_default, R_chapter_title_fade_out_default );
end
script static void f_chapter_title( cutscene_title ct_title, boolean b_hud_hide )
	f_chapter_title( ct_title, b_hud_hide, R_chapter_title_display_default, R_chapter_title_fade_in_default, R_chapter_title_fade_out_default );
end
script static void f_chapter_title( cutscene_title ct_title )
	f_chapter_title( ct_title, TRUE, R_chapter_title_display_default, R_chapter_title_fade_in_default, R_chapter_title_fade_out_default );
end


; =================================================================================================
; Flash object
; =================================================================================================
script static void f_hud_flash_object_fov (object_name hud_object_highlight)

	sleep_until(
		(
			objects_can_see_object (player0, hud_object_highlight, 25) or
			objects_can_see_object (player1, hud_object_highlight, 25) or
			objects_can_see_object (player2, hud_object_highlight, 25) or
			objects_can_see_object (player3, hud_object_highlight, 25)
		)
	,1);
	
	object_create (hud_object_highlight);
	chud_debug_highlight_object_color_red = 1;
	chud_debug_highlight_object_color_green = 1;
	chud_debug_highlight_object_color_blue = 0;
	f_hud_flash_single (hud_object_highlight);
	f_hud_flash_single (hud_object_highlight);
	f_hud_flash_single (hud_object_highlight);
	object_destroy (hud_object_highlight);
end

script static void f_hud_flash_object (object_name hud_object_highlight)
	object_create (hud_object_highlight);
	chud_debug_highlight_object_color_red = 1;
	chud_debug_highlight_object_color_green = 1;
	chud_debug_highlight_object_color_blue = 0;
	f_hud_flash_single (hud_object_highlight);
	f_hud_flash_single (hud_object_highlight);
	f_hud_flash_single (hud_object_highlight);
	object_destroy (hud_object_highlight);
end

script static void f_hud_flash_single (object_name hud_object_highlight)
	object_hide (hud_object_highlight, FALSE);
	chud_debug_highlight_object = hud_object_highlight;
	sleep (4);
	object_hide (hud_object_highlight, TRUE);
	sleep (5);
end

script static void f_hud_flash_single_nodestroy (object_name hud_object_highlight)
	chud_debug_highlight_object = hud_object_highlight;
	sleep (4);
	chud_debug_highlight_object = none;
	sleep (5);
end



// =================================================================================================
// TEMP
// =================================================================================================
global sound sfx_blip = "sound\game_sfx\ui\transition_beeps";
global object_list l_blip_list = players();
global boolean b_blip_list_locked = FALSE;
global short s_blip_list_index = 0;

// =================================================================================================
// low-level blip functions -- do not call directly!
script static void f_blip_internal (object obj, short icon_disappear_time, short final_delay)
	chud_track_object (obj, true);
	sound_impulse_start (sfx_blip, NONE, 1);
	sleep (icon_disappear_time);
	chud_track_object (obj, false);
	sleep (final_delay);
end

script static void f_blip_flag_internal (cutscene_flag f, short icon_disappear_time, short final_delay)
	chud_track_flag (f, true);
	sound_impulse_start (sfx_blip, NONE, 1);
	sleep (icon_disappear_time);
	chud_track_flag (f, false);
	sleep (final_delay);
end



// -------------------------------------------------------------------------------------------------
// BLIPS
// -------------------------------------------------------------------------------------------------
/*
0.	Neutralize
1.	Defend
2.	Ordnance
3.	Interface
4.	Recon
5.	Recover
6.	Hostile enemy
7.	Neutralize ALPHA
8.	Neutralize BRAVO
9.	Neutralize CHARLIE
*/

global short blip_neutralize 					=	0;
global short blip_defend 							=	1;
global short blip_ordnance 						=	2;
global short blip_interface 					=	3;
global short blip_recon 							=	4;
global short blip_recover 						=	5;
global short blip_structure						=	6;
global short blip_neutralize_alpha 		=	7;
global short blip_neutralize_bravo 		=	8;
global short blip_neutralize_charlie 	=	9;
global short blip_ammo 								=	13;
global short blip_hostile_vehicle			=	14;
global short blip_hostile 						=	15;
global short blip_default_a 					=	17;
global short blip_default_b 					=	18;
global short blip_default_c 					=	19;
global short blip_default_d 					=	20;
global short blip_default 						=	21;
global short blip_destination					=	21;
global short blip_type_id							=	21;

// AA's
global short blip_jetpack							= 41;
global short blip_thruster						= 42;
global short blip_shield							= 43;
global short blip_PAT									= 44;
global short blip_regen								= 45;
global short blip_hologram						= 46;
global short blip_camo								= 47;
global short blip_vision							= 48;

// returns the type of blip, based on a string input - JS343
// numbers are out of order, because the terrible string system
// thinks that "ammo" and "a" are the same thing, it doesn't do
// real string comparisons. First come, first serve!

script static long f_return_blip_type (string type)

	blip_type_id = 21;

	if type == "neutralize" then
		blip_type_id = blip_neutralize;
	end
	
	if type == "a" then
		blip_type_id = blip_default_a;
	end
	
	if type == "b" then
		blip_type_id = blip_default_b;
	end

	if type == "c" then
		blip_type_id = blip_default_c;
	end
	
	if type == "d" then
		blip_type_id = blip_default_d;
	end
	
	if type == "defend" then
		blip_type_id = blip_defend;
	end
	
	if type == "ordnance" then
		blip_type_id = blip_ordnance;
	end
	
	if type == "activate" then
		blip_type_id = blip_interface;
	end
	
	if type == "recon" then
		blip_type_id = blip_recon;
	end
	
	if type == "recover" then
		blip_type_id = blip_recover;
	end
	
	if type == "neutralize_a" then
		blip_type_id = blip_neutralize_alpha;
	end
	
	if type == "neutralize_b" then
		blip_type_id = blip_neutralize_bravo;
	end
	
	if type == "neutralize_c" then
		blip_type_id = blip_neutralize_charlie;
	end
	
	if type == "ammo" then
		blip_type_id = blip_ammo;
	end
	
	if type == "enemy" then
		blip_type_id = blip_hostile;
	end
	
	if type == "enemy_vehicle" then
		blip_type_id = blip_hostile_vehicle;
	end
	
	if type == "default" then
		blip_type_id = blip_type_id;
	end
	
	// AA's
	if type == "jetpack" then
		blip_type_id = blip_jetpack;
	end
	if type == "thruster" then
		blip_type_id = blip_thruster;
	end
	if type == "shield" then
		blip_type_id = blip_shield;
	end
	if type == "PAT" then
		blip_type_id = blip_PAT;
	end
	if type == "regen" then
		blip_type_id = blip_regen;
	end
	if type == "hologram" then
		blip_type_id = blip_hologram;
	end
	if type == "camo" then
		blip_type_id = blip_camo;
	end
	if type == "vision" then
		blip_type_id = blip_vision;
	end
	
	blip_type_id;
end

script static string_id f_return_blip_type_cui (string type)

	// HAX: Not currently used
		//navpoint_ally
		//navpoint_ally_group
		//navpoint_ally_vehicle
		//navpoint_enemy_group
		//navpoint_goto
		//navpoint_healthbar

	static string_id cui_string = "navpoint_goto";

	if type == "neutralize" then
		cui_string = "navpoint_neutralize";
	end
	
	// HAX: A,B,C,D need art.
	if type == "a" then
		cui_string = "navpoint_goto";
	end
	
	if type == "b" then
		cui_string = "navpoint_goto";
	end

	if type == "c" then
		cui_string = "navpoint_goto";
	end
	
	if type == "d" then
		cui_string = "navpoint_goto";
	end
	
	if type == "defend" then
		cui_string = "navpoint_defend";
	end

	if type == "destroy" then
		cui_string = "navpoint_destroy";
	end

	// HAX: ordnance needs art
	if type == "ordnance" then
		cui_string = "navpoint_ammo";
	end
	
	if type == "activate" then
		cui_string = "navpoint_activate";
	end
	
	// HAX: recon needs art
	if type == "recon" then
		cui_string = "navpoint_goto";
	end
	
	// HAX: recover needs art
	if type == "recover" then
		cui_string = "navpoint_generic";
	end
	
	// HAX: neutralize A,B,C needs art
	if type == "neutralize_a" then
		cui_string = "navpoint_neutralize";
	end
	
	if type == "neutralize_b" then
		cui_string = "navpoint_neutralize";
	end
	
	if type == "neutralize_c" then
		cui_string = "navpoint_neutralize";
	end
	
	if type == "ammo" then
		cui_string = "navpoint_ammo";
	end
	
	if type == "enemy" then
		cui_string = "navpoint_enemy";
	end
	
	if type == "enemy_vehicle" then
		cui_string = "navpoint_enemy_vehicle";
	end

	if type == "ally" then
		cui_string = "navpoint_ally";
	end

	if type == "ally_group" then
		cui_string = "navpoint_ally_group";
	end
	
	
	if type == "default" then
		cui_string = "navpoint_goto";
	end
	
	cui_string;
end


// blip a cinematic flag temporarily
script static void f_blip_flag (cutscene_flag f, string type)
	chud_track_flag_with_priority (f, f_return_blip_type (type));
	
	navpoint_track_flag_named (f, f_return_blip_type_cui (type));
	
	sound_impulse_start (sfx_blip, NONE, 1);
end

// HAX: Needs to be updated for CUI!
script static void f_blip_flag_title( cutscene_flag f, string type, string_id title )
	chud_track_flag_with_priority( f, f_return_blip_type(type), title );
	
	navpoint_track_flag_named_with_string( f, f_return_blip_type_cui (type), title );
	
	sound_impulse_start (sfx_blip, NONE, 1);
end

// unblip a cinematic flag
script static void f_unblip_flag (cutscene_flag f)

	if (navpoint_is_tracking_flag(f) == true) then
		chud_track_flag (f, false);
	
		navpoint_track_flag (f, false);
	
		sound_impulse_start (sfx_blip, NONE, 1);
	end
end

// blip an object temporarily
script static void f_blip_object (object obj, string type)
	chud_track_object_with_priority( obj, f_return_blip_type(type) );
	
	navpoint_track_object_named (obj, f_return_blip_type_cui (type));
	
	sound_impulse_start (sfx_blip, NONE, 1);
end

script static void f_blip_position_breadcrumbs (real x, real y, real z, string_id id, string type)
	navpoint_set_next_improved(TRUE);
	navpoint_track_position (x, y, z, id, f_return_blip_type_cui (type), TRUE);
	
	sound_impulse_start (sfx_blip, NONE, 1);
end

script static void f_unblip_position_breadcrumbs (string_id id)
	navpoint_track_position (0, 0, 0, id, f_return_blip_type_cui ("default"), FALSE);
	sound_impulse_start (sfx_blip, NONE, 1);
end

// HAX: Needs to be updated for CUI!
script static void f_blip_object_title (object obj, string type, string_id title)
	chud_track_object_with_priority( obj, f_return_blip_type(type), title );

	navpoint_track_object_named_with_string( obj, f_return_blip_type_cui(type), title );

	sound_impulse_start (sfx_blip, NONE, 1);
//	sleep (120);
//	chud_track_object (obj, FALSE);
end
	
// blip an object temporarily
script static void f_blip_object_offset (object obj, string type, real offset)
	chud_track_object_with_priority (obj, f_return_blip_type (type));
	chud_track_object_set_vertical_offset (obj, offset);
	
	navpoint_track_object_named (obj, f_return_blip_type_cui (type));
	navpoint_object_set_vertical_offset (obj, offset);
	
	sound_impulse_start (sfx_blip, NONE, 1);
end


// turn off a blip on an object that was blipped forever
script static void f_unblip_object (object obj)

	if (navpoint_is_tracking_object(obj) == true) then
		chud_track_object (obj, false);
	
		navpoint_track_object (obj, false);
	
		sound_impulse_start (sfx_blip, NONE, 1);
	end
end	

// put a blip over an object's head until dead	
script static void f_blip_object_until_dead (object obj)
	chud_track_object (obj, true);
	navpoint_track_object (obj, true);
	sound_impulse_start (sfx_blip, NONE, 1);
	
	sleep_until( object_get_health (obj) <= 0);
	
	chud_track_object (obj, false);
	navpoint_track_object (obj, false);
	sound_impulse_start (sfx_blip, NONE, 1);
end

// blip ai actors (single or multiple)
// TODO: use local list variables when they come online
script static void f_blip_ai (ai group, string blip_type)
	sleep_until( (b_blip_list_locked == FALSE), 1);

	b_blip_list_locked = TRUE;
	s_blip_list_index = 0;
	
	l_blip_list = ai_actors (group);
	repeat
	
			if ( object_get_health (list_get (l_blip_list, s_blip_list_index) )> 0) then
				f_blip_object (list_get (l_blip_list, s_blip_list_index), blip_type);
			end	
			
			s_blip_list_index = s_blip_list_index + 1;
	until ( s_blip_list_index >= list_count (l_blip_list), 1);

	b_blip_list_locked = FALSE;
end

// blip ai offset (single or multiple)
// TODO: use local list variables when they come online
script static void f_blip_ai_offset (ai group, string blip_type, short offset)
	sleep_until((b_blip_list_locked == FALSE), 1);
	b_blip_list_locked = TRUE;
	s_blip_list_index = 0;
	
	l_blip_list = ai_actors (group);
	repeat
			if ( object_get_health (list_get( l_blip_list, s_blip_list_index)) > 0) then
				f_blip_object_offset (list_get (l_blip_list, s_blip_list_index), blip_type, offset);
			end
			s_blip_list_index = (s_blip_list_index + 1);
	until ( s_blip_list_index >= list_count (l_blip_list), 1);

	b_blip_list_locked == FALSE;
end

// put a blip over someone's head until dead	
script static void f_blip_ai_until_dead (ai char)
	print ("f_blip_ai_until_dead will be rolled into the new f_blip_ai command. consider using that instead.");
	f_blip_ai (char, "enemy");
	sleep_until( object_get_health (ai_get_object (char)) <= 0);
	f_unblip_ai (char);
end

script static void f_unblip_ai (ai group)
	sleep_until( (b_blip_list_locked == FALSE ), 1);

	b_blip_list_locked = TRUE;
	s_blip_list_index = 0;
	
	l_blip_list = ai_actors (group);
	repeat
			if ( object_get_health (list_get (l_blip_list, s_blip_list_index)) > 0) then
				f_unblip_object (list_get (l_blip_list, s_blip_list_index));
			end	
			s_blip_list_index = (s_blip_list_index + 1);
	until ( s_blip_list_index >= list_count (l_blip_list), 1);
	
	b_blip_list_locked = FALSE;
end

//(f_blip_weapon w_plasma_launcher_01 2 5)
script static void f_blip_weapon (object gun, short dist, short dist2)

	sleep_until 
		(
			((objects_distance_to_object (player0, gun) <= dist) and ( (objects_distance_to_object (player0, gun) >= 0.1))) or
			((objects_distance_to_object (player1, gun) <= dist) and ( (objects_distance_to_object (player1, gun) >= 0.1))) or
			((objects_distance_to_object (player2, gun) <= dist) and ( (objects_distance_to_object (player2, gun) >= 0.1))) or
			((objects_distance_to_object (player3, gun) <= dist) and ( (objects_distance_to_object (player3, gun) >= 0.1)))
			
	,1);	
	print ("blip on");
	f_blip_object (gun, "ammo");

/*	
	(sleep_until
		(or
			(not (object_get_at_rest gun))
			 (and
			 	(>= (objects_distance_to_object player0 gun) dist2)
			 	(>= (objects_distance_to_object player0 gun) dist2)
			 	(>= (objects_distance_to_object player0 gun) dist2)
			 	(>= (objects_distance_to_object player0 gun) dist2)
			 )
		)
	1)
*/

// i'm guessing this never worked as intended as every test was for player 0 in Reach - cf 3.31.01
	sleep_until 
		(
			( not object_get_at_rest (gun) ) or
			 (
			 	(objects_distance_to_object (player0, gun)>= dist2) and
			 	(objects_distance_to_object (player1, gun)>= dist2) and
			 	(objects_distance_to_object (player2, gun)>= dist2) and
			 	(objects_distance_to_object (player3, gun)>= dist2)
			 )
		
	,1);
	
	print ("blip off");
	f_unblip_object (gun);

end

// -------------------------------------------------------------------------------------------------
// BLIPS: AUTO
// -------------------------------------------------------------------------------------------------

// SYSTEMS $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
script static void sys_blip_auto_thread()
	sleep_until( FALSE );
end

// -------------------------------------------------------------------------------------------------
// BLIPS: AUTO: FLAG
// -------------------------------------------------------------------------------------------------

// SYSTEMS $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
script static void sys_blip_auto_flag( player p_player, cutscene_flag flg_target, string_id sid_type, string_id sid_title, boolean b_blip )
	
	// set blip
	if ( not b_blip ) then
		navpoint_track_flag_for_player( p_player, flg_target, b_blip );
	else
		sleep( 1 );
		if ( sid_title == "" ) then
			navpoint_track_flag_for_player_named( p_player, flg_target, sid_type );
		else
			navpoint_track_flag_for_player_named_with_string( p_player, flg_target, sid_type, sid_title );
		end
	end

end

// -------------------------------------------------------------------------------------------------
// BLIPS: AUTO: FLAG: TRIGGER
// -------------------------------------------------------------------------------------------------

// FUNCTIONS ---------------------------------------------------------------------------------------
script static long f_blip_auto_flag_trigger( cutscene_flag flg_target, string str_type, trigger_volume tv_volume, boolean b_blip_in )
	f_blip_auto_flag_title_offset_trigger( flg_target, str_type, "", 0.0, tv_volume, b_blip_in, 0 );
end
script static long f_blip_auto_flag_trigger( cutscene_flag flg_target, string str_type, trigger_volume tv_volume, boolean b_blip_in, long l_thread )
	f_blip_auto_flag_title_offset_trigger( flg_target, str_type, "", 0.0, tv_volume, b_blip_in, l_thread );
end

script static long f_blip_auto_flag_title_trigger( cutscene_flag flg_target, string str_type, string_id sid_title, trigger_volume tv_volume, boolean b_blip_in )
	f_blip_auto_flag_title_offset_trigger( flg_target, str_type, sid_title, 0.0, tv_volume, b_blip_in, 0 );
end
script static long f_blip_auto_flag_title_trigger( cutscene_flag flg_target, string str_type, string_id sid_title, trigger_volume tv_volume, boolean b_blip_in, long l_thread )
	f_blip_auto_flag_title_offset_trigger( flg_target, str_type, sid_title, 0.0, tv_volume, b_blip_in, l_thread );
end

script static long f_blip_auto_flag_offset_trigger( cutscene_flag flg_target, string str_type, real r_offset, trigger_volume tv_volume, boolean b_blip_in )
	f_blip_auto_flag_title_offset_trigger( flg_target, str_type, "", r_offset, tv_volume, b_blip_in, 0 );
end
script static long f_blip_auto_flag_offset_trigger( cutscene_flag flg_target, string str_type, real r_offset, trigger_volume tv_volume, boolean b_blip_in, long l_thread )
	f_blip_auto_flag_title_offset_trigger( flg_target, str_type, "", r_offset, tv_volume, b_blip_in, l_thread );
end

script static long f_blip_auto_flag_title_offset_trigger( cutscene_flag flg_target, string str_type, string_id sid_title, real r_offset, trigger_volume tv_volume, boolean b_blip_in )
	f_blip_auto_flag_title_offset_trigger( flg_target, str_type, sid_title, r_offset, tv_volume, b_blip_in, 0 );
end
script static long f_blip_auto_flag_title_offset_trigger( cutscene_flag flg_target, string str_type, string_id sid_title, real r_offset, trigger_volume tv_volume, boolean b_blip_in, long l_thread )
	local string_id sid_type = f_return_blip_type_cui( str_type );
	inspect( sid_type );

	// create a new thread if needed
	if ( l_thread == 0 ) then
		l_thread = thread( sys_blip_auto_thread() );
	end
	
	// adjust offset
	if ( r_offset != 0.0 ) then
		navpoint_cutscene_flag_set_vertical_offset( flg_target, r_offset);
	end

	// setup blip on players
	thread( sys_blip_auto_flag_title_offset_trigger(player0, flg_target, sid_type, sid_title, tv_volume, b_blip_in, l_thread) );
	thread( sys_blip_auto_flag_title_offset_trigger(player1, flg_target, sid_type, sid_title, tv_volume, b_blip_in, l_thread) );
	thread( sys_blip_auto_flag_title_offset_trigger(player2, flg_target, sid_type, sid_title, tv_volume, b_blip_in, l_thread) );
	thread( sys_blip_auto_flag_title_offset_trigger(player3, flg_target, sid_type, sid_title, tv_volume, b_blip_in, l_thread) );
	
	// sound
	sound_impulse_start( sfx_blip, NONE, 1 );
	
	// return
	l_thread;
	
end

// SYSTEMS $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
script static void sys_blip_auto_flag_title_offset_trigger( player p_player, cutscene_flag flg_target, string_id sid_type, string_id sid_title, trigger_volume tv_volume, boolean b_blip_in, long l_thread )

	// wait for the player to be in the game
	if ( not player_is_in_game(p_player) )then
		sleep_until( player_is_in_game(p_player) or (not IsThreadValid(l_thread)), 1 );
	end

	if ( player_is_in_game(p_player) and IsThreadValid(l_thread) )then
		local boolean b_blip = false;
	
		repeat
		
			// wait for change
			sleep_until( (b_blip != sys_blip_auto_flag_title_offset_trigger_blip(p_player, flg_target, tv_volume, b_blip_in, l_thread)) or (not IsThreadValid(l_thread)) or (not player_is_in_game(p_player)), 1 );
	
			// store blip condition
			b_blip = sys_blip_auto_flag_title_offset_trigger_blip( p_player, flg_target, tv_volume, b_blip_in, l_thread );
			
			// blip
			sys_blip_auto_flag( p_player, flg_target, sid_type, sid_title, b_blip );
		
		until( ((not IsThreadValid(l_thread)) or (not player_is_in_game(p_player))) and (not b_blip), 1 );
		
	end

end
script static boolean sys_blip_auto_flag_title_offset_trigger_blip( player p_player, cutscene_flag flg_target, trigger_volume tv_volume, boolean b_blip_in, long l_thread )
	( volume_test_object(tv_volume, p_player) == b_blip_in ) and IsThreadValid( l_thread ) and player_is_in_game( p_player );
end

// -------------------------------------------------------------------------------------------------
// BLIPS: AUTO: FLAG: DISTANCE
// -------------------------------------------------------------------------------------------------

// FUNCTIONS ---------------------------------------------------------------------------------------
script static long f_blip_auto_flag_distance( cutscene_flag flg_target, string str_type, real r_distance, boolean b_blip_in )
	f_blip_auto_flag_title_offset_distance( flg_target, str_type, "", 0.0, r_distance, b_blip_in, 0 );
end
script static long f_blip_auto_flag_distance( cutscene_flag flg_target, string str_type, real r_distance, boolean b_blip_in, long l_thread )
	f_blip_auto_flag_title_offset_distance( flg_target, str_type, "", 0.0, r_distance, b_blip_in, l_thread );
end

script static long f_blip_auto_flag_title_distance( cutscene_flag flg_target, string str_type, string_id sid_title, real r_distance, boolean b_blip_in )
	f_blip_auto_flag_title_offset_distance( flg_target, str_type, sid_title, 0.0, r_distance, b_blip_in, 0 );
end
script static long f_blip_auto_flag_title_distance( cutscene_flag flg_target, string str_type, string_id sid_title, real r_distance, boolean b_blip_in, long l_thread )
	f_blip_auto_flag_title_offset_distance( flg_target, str_type, sid_title, 0.0, r_distance, b_blip_in, l_thread );
end

script static long f_blip_auto_flag_offset_distance( cutscene_flag flg_target, string str_type, real r_offset, real r_distance, boolean b_blip_in )
	f_blip_auto_flag_title_offset_distance( flg_target, str_type, "", r_offset, r_distance, b_blip_in, 0 );
end
script static long f_blip_auto_flag_offset_distance( cutscene_flag flg_target, string str_type, real r_offset, real r_distance, boolean b_blip_in, long l_thread )
	f_blip_auto_flag_title_offset_distance( flg_target, str_type, "", r_offset, r_distance, b_blip_in, l_thread );
end

script static long f_blip_auto_flag_title_offset_distance( cutscene_flag flg_target, string str_type, string_id sid_title, real r_offset, real r_distance, boolean b_blip_in )
	f_blip_auto_flag_title_offset_distance( flg_target, str_type, sid_title, r_offset, r_distance, b_blip_in, 0 );
end
script static long f_blip_auto_flag_title_offset_distance( cutscene_flag flg_target, string str_type, string_id sid_title, real r_offset, real r_distance, boolean b_blip_in, long l_thread )
	local string_id sid_type = f_return_blip_type_cui( str_type );
	inspect( sid_type );

	// create a new thread if needed
	if ( l_thread == 0 ) then
		l_thread = thread( sys_blip_auto_thread() );
	end
	
	// adjust offset
	if ( r_offset != 0.0 ) then
		navpoint_cutscene_flag_set_vertical_offset( flg_target, r_offset);
	end

	// setup blip on players
	thread( sys_blip_auto_flag_title_offset_distance(player0, flg_target, sid_type, sid_title, r_distance, b_blip_in, l_thread) );
	thread( sys_blip_auto_flag_title_offset_distance(player1, flg_target, sid_type, sid_title, r_distance, b_blip_in, l_thread) );
	thread( sys_blip_auto_flag_title_offset_distance(player2, flg_target, sid_type, sid_title, r_distance, b_blip_in, l_thread) );
	thread( sys_blip_auto_flag_title_offset_distance(player3, flg_target, sid_type, sid_title, r_distance, b_blip_in, l_thread) );
	
	// sound
	sound_impulse_start( sfx_blip, NONE, 1 );
	
	// return
	l_thread;
	
end

// SYSTEMS $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
script static void sys_blip_auto_flag_title_offset_distance( player p_player, cutscene_flag flg_target, string_id sid_type, string_id sid_title, real r_distance, boolean b_blip_in, long l_thread )

	// wait for the player to be in the game
	if ( not player_is_in_game(p_player) )then
		sleep_until( player_is_in_game(p_player) or (not IsThreadValid(l_thread)), 1 );
	end

	if ( player_is_in_game(p_player) and IsThreadValid(l_thread) )then
		local boolean b_blip = false;
	
		repeat
		
			// wait for change
			sleep_until( (b_blip != sys_blip_auto_flag_title_offset_distance_blip(p_player, flg_target, r_distance, b_blip_in, l_thread)) or (not IsThreadValid(l_thread)) or (not player_is_in_game(p_player)), 1 );
	
			// store blip condition
			b_blip = sys_blip_auto_flag_title_offset_distance_blip( p_player, flg_target, r_distance, b_blip_in, l_thread );
			
			// blip
			sys_blip_auto_flag( p_player, flg_target, sid_type, sid_title, b_blip );
		
		until( ((not IsThreadValid(l_thread)) or (not player_is_in_game(p_player))) and (not b_blip), 1 );
		
	end

end
script static boolean sys_blip_auto_flag_title_offset_distance_blip( player p_player, cutscene_flag flg_target, real r_distance, boolean b_blip_in, long l_thread )
	( (objects_distance_to_flag(p_player,flg_target) <= r_distance) == b_blip_in ) and IsThreadValid( l_thread ) and player_is_in_game( p_player );
end

// -------------------------------------------------------------------------------------------------
// BLIPS: AUTO: FLAG: DISTANCE: TOGGLE
// -------------------------------------------------------------------------------------------------
script static long f_blip_auto_flag_distance_toggle( cutscene_flag flg_target, string str_type_in, string str_type_out, real r_distance )
	f_blip_auto_flag_distance_toggle( flg_target, str_type_in, str_type_out, r_distance, 0 );
end
script static long f_blip_auto_flag_distance_toggle( cutscene_flag flg_target, string str_type_in, string str_type_out, real r_distance, long l_thread )
	l_thread = f_blip_auto_flag_title_offset_distance( flg_target, str_type_in, "", 0.0, r_distance, TRUE, l_thread );
	l_thread = f_blip_auto_flag_title_offset_distance( flg_target, str_type_out, "", 0.0, r_distance, FALSE, l_thread );
	l_thread;
end


// -------------------------------------------------------------------------------------------------
// BLIPS: AUTO: FLAG: EQUIPMENT
// -------------------------------------------------------------------------------------------------

// FUNCTIONS ---------------------------------------------------------------------------------------
script static long f_blip_auto_flag_equipment( cutscene_flag flg_target, string str_type, object_definition od_equipment, boolean b_blip_has )
	f_blip_auto_flag_title_offset_equipment( flg_target, str_type, "", 0.0, od_equipment, b_blip_has, 0 );
end
script static long f_blip_auto_flag_equipment( cutscene_flag flg_target, string str_type, object_definition od_equipment, boolean b_blip_has, long l_thread )
	f_blip_auto_flag_title_offset_equipment( flg_target, str_type, "", 0.0, od_equipment, b_blip_has, l_thread );
end

script static long f_blip_auto_flag_title_equipment( cutscene_flag flg_target, string str_type, string_id sid_title, object_definition od_equipment, boolean b_blip_has )
	f_blip_auto_flag_title_offset_equipment( flg_target, str_type, sid_title, 0.0, od_equipment, b_blip_has, 0 );
end
script static long f_blip_auto_flag_title_equipment( cutscene_flag flg_target, string str_type, string_id sid_title, object_definition od_equipment, boolean b_blip_has, long l_thread )
	f_blip_auto_flag_title_offset_equipment( flg_target, str_type, sid_title, 0.0, od_equipment, b_blip_has, l_thread );
end

script static long f_blip_auto_flag_offset_equipment( cutscene_flag flg_target, string str_type, real r_offset, object_definition od_equipment, boolean b_blip_has )
	f_blip_auto_flag_title_offset_equipment( flg_target, str_type, "", r_offset, od_equipment, b_blip_has, 0 );
end
script static long f_blip_auto_flag_offset_equipment( cutscene_flag flg_target, string str_type, real r_offset, object_definition od_equipment, boolean b_blip_has, long l_thread )
	f_blip_auto_flag_title_offset_equipment( flg_target, str_type, "", r_offset, od_equipment, b_blip_has, l_thread );
end

script static long f_blip_auto_flag_title_offset_equipment( cutscene_flag flg_target, string str_type, string_id sid_title, real r_offset, object_definition od_equipment, boolean b_blip_has )
	f_blip_auto_flag_title_offset_equipment( flg_target, str_type, sid_title, r_offset, od_equipment, b_blip_has, 0 );
end
script static long f_blip_auto_flag_title_offset_equipment( cutscene_flag flg_target, string str_type, string_id sid_title, real r_offset, object_definition od_equipment, boolean b_blip_has, long l_thread )
	local string_id sid_type = f_return_blip_type_cui( str_type );
	inspect( sid_type );

	// create a new thread if needed
	if ( l_thread == 0 ) then
		l_thread = thread( sys_blip_auto_thread() );
	end
	
	// adjust offset
	if ( r_offset != 0.0 ) then
		navpoint_cutscene_flag_set_vertical_offset( flg_target, r_offset);
	end

	// setup blip on players
	thread( sys_blip_auto_flag_title_offset_equipment(player0, flg_target, sid_type, sid_title, od_equipment, b_blip_has, l_thread) );
	thread( sys_blip_auto_flag_title_offset_equipment(player1, flg_target, sid_type, sid_title, od_equipment, b_blip_has, l_thread) );
	thread( sys_blip_auto_flag_title_offset_equipment(player2, flg_target, sid_type, sid_title, od_equipment, b_blip_has, l_thread) );
	thread( sys_blip_auto_flag_title_offset_equipment(player3, flg_target, sid_type, sid_title, od_equipment, b_blip_has, l_thread) );
	
	// sound
	sound_impulse_start( sfx_blip, NONE, 1 );
	
	// return
	l_thread;
	
end

// SYSTEMS $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
script static void sys_blip_auto_flag_title_offset_equipment( player p_player, cutscene_flag flg_target, string_id sid_type, string_id sid_title, object_definition od_equipment, boolean b_blip_has, long l_thread )

	if ( player_is_in_game(p_player) and IsThreadValid(l_thread) )then
		local boolean b_blip = false;
	
		repeat
		
			// wait for change
			sleep_until( (b_blip != sys_blip_auto_flag_title_offset_equipment_blip(p_player, flg_target, od_equipment, b_blip_has, l_thread)) or (not IsThreadValid(l_thread)) or (not player_is_in_game(p_player)), 1 );
		
			// store blip condition
			b_blip = sys_blip_auto_flag_title_offset_equipment_blip( p_player, flg_target, od_equipment, b_blip_has, l_thread );
			
			// blip
			sys_blip_auto_flag( p_player, flg_target, sid_type, sid_title, b_blip );
		
		until( ((not IsThreadValid(l_thread)) or (not player_is_in_game(p_player))) and (not b_blip), 1 );
	
	end

end
script static boolean sys_blip_auto_flag_title_offset_equipment_blip( player p_player, cutscene_flag flg_target, object_definition od_equipment, boolean b_blip_has, long l_thread )
	( unit_has_equipment(p_player,od_equipment) == b_blip_has ) and IsThreadValid( l_thread ) and player_is_in_game( p_player );
end


// -------------------------------------------------------------------------------------------------
// BLIPS: AUTO: OBJECT
// -------------------------------------------------------------------------------------------------

// SYSTEMS $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
script static void sys_blip_auto_object( player p_player, object obj_target, string_id sid_type, string_id sid_title, boolean b_blip )
	
	// set blip
	if ( not b_blip ) then
		navpoint_track_object_for_player( p_player, obj_target, b_blip );
	else
		sleep( 1 );
		if ( sid_title == "" ) then
			navpoint_track_object_for_player_named( p_player, obj_target, sid_type );
		else
			navpoint_track_object_for_player_named_with_string( p_player, obj_target, sid_type, sid_title );
		end
	end

end

// -------------------------------------------------------------------------------------------------
// BLIPS: AUTO: OBJECT: TRIGGER
// -------------------------------------------------------------------------------------------------

// FUNCTIONS ---------------------------------------------------------------------------------------
script static long f_blip_auto_object_trigger( object obj_target, string str_type, trigger_volume tv_volume, boolean b_blip_in )
	f_blip_auto_object_title_offset_trigger( obj_target, str_type, "", 0.0, tv_volume, b_blip_in, 0 );
end
script static long f_blip_auto_object_trigger( object obj_target, string str_type, trigger_volume tv_volume, boolean b_blip_in, long l_thread )
	f_blip_auto_object_title_offset_trigger( obj_target, str_type, "", 0.0, tv_volume, b_blip_in, l_thread );
end

script static long f_blip_auto_object_title_trigger( object obj_target, string str_type, string_id sid_title, trigger_volume tv_volume, boolean b_blip_in )
	f_blip_auto_object_title_offset_trigger( obj_target, str_type, sid_title, 0.0, tv_volume, b_blip_in, 0 );
end
script static long f_blip_auto_object_title_trigger( object obj_target, string str_type, string_id sid_title, trigger_volume tv_volume, boolean b_blip_in, long l_thread )
	f_blip_auto_object_title_offset_trigger( obj_target, str_type, sid_title, 0.0, tv_volume, b_blip_in, l_thread );
end

script static long f_blip_auto_object_offset_trigger( object obj_target, string str_type, real r_offset, trigger_volume tv_volume, boolean b_blip_in )
	f_blip_auto_object_title_offset_trigger( obj_target, str_type, "", r_offset, tv_volume, b_blip_in, 0 );
end
script static long f_blip_auto_object_offset_trigger( object obj_target, string str_type, real r_offset, trigger_volume tv_volume, boolean b_blip_in, long l_thread )
	f_blip_auto_object_title_offset_trigger( obj_target, str_type, "", r_offset, tv_volume, b_blip_in, l_thread );
end

script static long f_blip_auto_object_title_offset_trigger( object obj_target, string str_type, string_id sid_title, real r_offset, trigger_volume tv_volume, boolean b_blip_in )
	f_blip_auto_object_title_offset_trigger( obj_target, str_type, sid_title, r_offset, tv_volume, b_blip_in, 0 );
end
script static long f_blip_auto_object_title_offset_trigger( object obj_target, string str_type, string_id sid_title, real r_offset, trigger_volume tv_volume, boolean b_blip_in, long l_thread )
	local string_id sid_type = f_return_blip_type_cui( str_type );
	inspect( sid_type );

	// create a new thread if needed
	if ( l_thread == 0 ) then
		l_thread = thread( sys_blip_auto_thread() );
	end
	
	// adjust offset
	if ( r_offset != 0.0 ) then
		navpoint_object_set_vertical_offset( obj_target, r_offset);
	end

	// setup blip on players
	thread( sys_blip_auto_object_title_offset_trigger(player0, obj_target, sid_type, sid_title, tv_volume, b_blip_in, l_thread) );
	thread( sys_blip_auto_object_title_offset_trigger(player1, obj_target, sid_type, sid_title, tv_volume, b_blip_in, l_thread) );
	thread( sys_blip_auto_object_title_offset_trigger(player2, obj_target, sid_type, sid_title, tv_volume, b_blip_in, l_thread) );
	thread( sys_blip_auto_object_title_offset_trigger(player3, obj_target, sid_type, sid_title, tv_volume, b_blip_in, l_thread) );
	
	// sound
	sound_impulse_start( sfx_blip, NONE, 1 );
	
	// return
	l_thread;
	
end

// SYSTEMS $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
script static void sys_blip_auto_object_title_offset_trigger( player p_player, object obj_target, string_id sid_type, string_id sid_title, trigger_volume tv_volume, boolean b_blip_in, long l_thread )

	if ( player_is_in_game(p_player) and IsThreadValid(l_thread) )then
		local boolean b_blip = false;
	
		repeat
		
			// wait for change
			sleep_until( (b_blip != sys_blip_auto_object_title_offset_trigger_blip(p_player, obj_target, tv_volume, b_blip_in, l_thread)) or (not IsThreadValid(l_thread)) or (not player_is_in_game(p_player)), 1 );
		
			// store blip condition
			b_blip = sys_blip_auto_object_title_offset_trigger_blip( p_player, obj_target, tv_volume, b_blip_in, l_thread );
			
			// blip
			sys_blip_auto_object( p_player, obj_target, sid_type, sid_title, b_blip );
		
		until( ((not IsThreadValid(l_thread)) or (not player_is_in_game(p_player))) and (not b_blip), 1 );
	
	end

end
script static boolean sys_blip_auto_object_title_offset_trigger_blip( player p_player, object obj_target, trigger_volume tv_volume, boolean b_blip_in, long l_thread )
	( volume_test_object(tv_volume, p_player) == b_blip_in ) and ( obj_target != NONE ) and IsThreadValid( l_thread ) and player_is_in_game( p_player );
end

// -------------------------------------------------------------------------------------------------
// BLIPS: AUTO: OBJECT: DISTANCE
// -------------------------------------------------------------------------------------------------

// FUNCTIONS ---------------------------------------------------------------------------------------
script static long f_blip_auto_object_distance( object obj_target, string str_type, real r_distance, boolean b_blip_in )
	f_blip_auto_object_target_title_offset_distance( obj_target, obj_target, str_type, "", 0.0, r_distance, b_blip_in, 0 );
end
script static long f_blip_auto_object_distance( object obj_target, string str_type, real r_distance, boolean b_blip_in, long l_thread )
	f_blip_auto_object_target_title_offset_distance( obj_target, obj_target, str_type, "", 0.0, r_distance, b_blip_in, l_thread );
end

script static long f_blip_auto_object_title_distance( object obj_target, string str_type, string_id sid_title, real r_distance, boolean b_blip_in )
	f_blip_auto_object_target_title_offset_distance( obj_target, obj_target, str_type, sid_title, 0.0, r_distance, b_blip_in, 0 );
end
script static long f_blip_auto_object_title_distance( object obj_target, string str_type, string_id sid_title, real r_distance, boolean b_blip_in, long l_thread )
	f_blip_auto_object_target_title_offset_distance( obj_target, obj_target, str_type, sid_title, 0.0, r_distance, b_blip_in, l_thread );
end

script static long f_blip_auto_object_offset_distance( object obj_target, string str_type, real r_offset, real r_distance, boolean b_blip_in )
	f_blip_auto_object_target_title_offset_distance( obj_target, obj_target, str_type, "", r_offset, r_distance, b_blip_in, 0 );
end
script static long f_blip_auto_object_offset_distance( object obj_target, string str_type, real r_offset, real r_distance, boolean b_blip_in, long l_thread )
	f_blip_auto_object_target_title_offset_distance( obj_target, obj_target, str_type, "", r_offset, r_distance, b_blip_in, l_thread );
end

script static long f_blip_auto_object_title_offset_distance( object obj_target, string str_type, string_id sid_title, real r_offset, real r_distance, boolean b_blip_in )
	f_blip_auto_object_target_title_offset_distance( obj_target, obj_target, str_type, sid_title, r_offset, r_distance, b_blip_in, 0 );
end
script static long f_blip_auto_object_title_offset_distance( object obj_target, string str_type, string_id sid_title, real r_offset, real r_distance, boolean b_blip_in, long l_thread )
	f_blip_auto_object_target_title_offset_distance( obj_target, obj_target, str_type, sid_title, r_offset, r_distance, b_blip_in, 0 );
end

// -------------------------------------------------------------------------------------------------
// BLIPS: AUTO: OBJECT: TARGET: DISTANCE
// -------------------------------------------------------------------------------------------------

script static long f_blip_auto_object_target_distance( object obj_target_blip, object obj_target_distance, string str_type, real r_distance, boolean b_blip_in )
	f_blip_auto_object_target_title_offset_distance( obj_target_blip, obj_target_distance, str_type, "", 0.0, r_distance, b_blip_in, 0 );
end
script static long f_blip_auto_object_target_distance( object obj_target_blip, object obj_target_distance, string str_type, real r_distance, boolean b_blip_in, long l_thread )
	f_blip_auto_object_target_title_offset_distance( obj_target_blip, obj_target_distance, str_type, "", 0.0, r_distance, b_blip_in, l_thread );
end

script static long f_blip_auto_object_target_title_distance( object obj_target_blip, object obj_target_distance, string str_type, string_id sid_title, real r_distance, boolean b_blip_in )
	f_blip_auto_object_target_title_offset_distance( obj_target_blip, obj_target_distance, str_type, sid_title, 0.0, r_distance, b_blip_in, 0 );
end
script static long f_blip_auto_object_target_title_distance( object obj_target_blip, object obj_target_distance, string str_type, string_id sid_title, real r_distance, boolean b_blip_in, long l_thread )
	f_blip_auto_object_target_title_offset_distance( obj_target_blip, obj_target_distance, str_type, sid_title, 0.0, r_distance, b_blip_in, l_thread );
end

script static long f_blip_auto_object_target_offset_distance( object obj_target_blip, object obj_target_distance, string str_type, real r_offset, real r_distance, boolean b_blip_in )
	f_blip_auto_object_target_title_offset_distance( obj_target_blip, obj_target_distance, str_type, "", r_offset, r_distance, b_blip_in, 0 );
end
script static long f_blip_auto_object_target_offset_distance( object obj_target_blip, object obj_target_distance, string str_type, real r_offset, real r_distance, boolean b_blip_in, long l_thread )
	f_blip_auto_object_target_title_offset_distance( obj_target_blip, obj_target_distance, str_type, "", r_offset, r_distance, b_blip_in, l_thread );
end

script static long f_blip_auto_object_target_title_offset_distance( object obj_target_blip, object obj_target_distance, , string str_type, string_id sid_title, real r_offset, real r_distance, boolean b_blip_in )
	f_blip_auto_object_target_title_offset_distance( obj_target_blip, obj_target_distance, str_type, sid_title, r_offset, r_distance, b_blip_in, 0 );
end
script static long f_blip_auto_object_target_title_offset_distance( object obj_target_blip, object obj_target_distance, string str_type, string_id sid_title, real r_offset, real r_distance, boolean b_blip_in, long l_thread )
	local string_id sid_type = f_return_blip_type_cui( str_type );
	inspect( sid_type );

	// create a new thread if needed
	if ( l_thread == 0 ) then
		l_thread = thread( sys_blip_auto_thread() );
	end
	
	// adjust offset
	if ( r_offset != 0.0 ) then
		navpoint_object_set_vertical_offset( obj_target_blip, r_offset);
	end

	// setup blip on players
	thread( sys_blip_auto_object_target_title_offset_distance(player0, obj_target_blip, obj_target_distance, sid_type, sid_title, r_distance, b_blip_in, l_thread) );
	thread( sys_blip_auto_object_target_title_offset_distance(player1, obj_target_blip, obj_target_distance, sid_type, sid_title, r_distance, b_blip_in, l_thread) );
	thread( sys_blip_auto_object_target_title_offset_distance(player2, obj_target_blip, obj_target_distance, sid_type, sid_title, r_distance, b_blip_in, l_thread) );
	thread( sys_blip_auto_object_target_title_offset_distance(player3, obj_target_blip, obj_target_distance, sid_type, sid_title, r_distance, b_blip_in, l_thread) );
	
	// sound
	sound_impulse_start( sfx_blip, NONE, 1 );
	
	// return
	l_thread;
	
end

// SYSTEMS $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
script static void sys_blip_auto_object_target_title_offset_distance( player p_player, object obj_target_blip, object obj_target_distance, string_id sid_type, string_id sid_title, real r_distance, boolean b_blip_in, long l_thread )

	if ( player_is_in_game(p_player) and IsThreadValid(l_thread) )then
		local boolean b_blip = false;
	
		repeat
		
			// wait for change
			sleep_until( (b_blip != sys_blip_auto_object_title_offset_distance_blip(p_player, obj_target_distance, r_distance, b_blip_in, l_thread)) or (not IsThreadValid(l_thread)) or (not player_is_in_game(p_player)), 1 );
	
			// store blip condition
			b_blip = sys_blip_auto_object_title_offset_distance_blip( p_player, obj_target_distance, r_distance, b_blip_in, l_thread );
			
			// blip
			sys_blip_auto_object( p_player, obj_target_blip, sid_type, sid_title, b_blip );
		
		until( ((not IsThreadValid(l_thread)) or (not player_is_in_game(p_player))) and (not b_blip), 1 );
		
	end

end
script static boolean sys_blip_auto_object_title_offset_distance_blip( player p_player, object obj_target, real r_distance, boolean b_blip_in, long l_thread )
	( (objects_distance_to_object(p_player,obj_target) <= r_distance) == b_blip_in ) and ( obj_target != NONE ) and IsThreadValid( l_thread ) and player_is_in_game( p_player );
end

// -------------------------------------------------------------------------------------------------
// BLIPS: AUTO: OBJECT: DISTANCE: TOGGLE
// -------------------------------------------------------------------------------------------------
script static long f_blip_auto_object_distance_toggle( object obj_target, string str_type_in, string str_type_out, real r_distance )
	f_blip_auto_object_distance_toggle( obj_target, str_type_in, str_type_out, r_distance, 0 );
end
script static long f_blip_auto_object_distance_toggle( object obj_target, string str_type_in, string str_type_out, real r_distance, long l_thread )
	l_thread = f_blip_auto_object_title_offset_distance( obj_target, str_type_in, "", 0.0, r_distance, TRUE, l_thread );
	l_thread = f_blip_auto_object_title_offset_distance( obj_target, str_type_out, "", 0.0, r_distance, FALSE, l_thread );
	l_thread;
end

// -------------------------------------------------------------------------------------------------
// BLIPS: AUTO: OBJECT: EQUIPMENT
// -------------------------------------------------------------------------------------------------

// FUNCTIONS ---------------------------------------------------------------------------------------
script static long f_blip_auto_object_equipment( object obj_target, string str_type, object_definition od_equipment, boolean b_blip_has )
	f_blip_auto_object_title_offset_equipment( obj_target, str_type, "", 0.0, od_equipment, b_blip_has, 0 );
end
script static long f_blip_auto_object_equipment( object obj_target, string str_type, object_definition od_equipment, boolean b_blip_has, long l_thread )
	f_blip_auto_object_title_offset_equipment( obj_target, str_type, "", 0.0, od_equipment, b_blip_has, l_thread );
end

script static long f_blip_auto_object_title_equipment( object obj_target, string str_type, string_id sid_title, object_definition od_equipment, boolean b_blip_has )
	f_blip_auto_object_title_offset_equipment( obj_target, str_type, sid_title, 0.0, od_equipment, b_blip_has, 0 );
end
script static long f_blip_auto_object_title_equipment( object obj_target, string str_type, string_id sid_title, object_definition od_equipment, boolean b_blip_has, long l_thread )
	f_blip_auto_object_title_offset_equipment( obj_target, str_type, sid_title, 0.0, od_equipment, b_blip_has, l_thread );
end

script static long f_blip_auto_object_offset_equipment( object obj_target, string str_type, real r_offset, object_definition od_equipment, boolean b_blip_has )
	f_blip_auto_object_title_offset_equipment( obj_target, str_type, "", r_offset, od_equipment, b_blip_has, 0 );
end
script static long f_blip_auto_object_offset_equipment( object obj_target, string str_type, real r_offset, object_definition od_equipment, boolean b_blip_has, long l_thread )
	f_blip_auto_object_title_offset_equipment( obj_target, str_type, "", r_offset, od_equipment, b_blip_has, l_thread );
end

script static long f_blip_auto_object_title_offset_equipment( object obj_target, string str_type, string_id sid_title, real r_offset, object_definition od_equipment, boolean b_blip_has )
	f_blip_auto_object_title_offset_equipment( obj_target, str_type, sid_title, r_offset, od_equipment, b_blip_has, 0 );
end
script static long f_blip_auto_object_title_offset_equipment( object obj_target, string str_type, string_id sid_title, real r_offset, object_definition od_equipment, boolean b_blip_has, long l_thread )
	local string_id sid_type = f_return_blip_type_cui( str_type );
	inspect( sid_type );

	// create a new thread if needed
	if ( l_thread == 0 ) then
		l_thread = thread( sys_blip_auto_thread() );
	end
	
	// adjust offset
	if ( r_offset != 0.0 ) then
		navpoint_object_set_vertical_offset( obj_target, r_offset);
	end

	// setup blip on players
	thread( sys_blip_auto_object_title_offset_equipment(player0, obj_target, sid_type, sid_title, od_equipment, b_blip_has, l_thread) );
	thread( sys_blip_auto_object_title_offset_equipment(player1, obj_target, sid_type, sid_title, od_equipment, b_blip_has, l_thread) );
	thread( sys_blip_auto_object_title_offset_equipment(player2, obj_target, sid_type, sid_title, od_equipment, b_blip_has, l_thread) );
	thread( sys_blip_auto_object_title_offset_equipment(player3, obj_target, sid_type, sid_title, od_equipment, b_blip_has, l_thread) );
	
	// sound
	sound_impulse_start( sfx_blip, NONE, 1 );
	
	// return
	l_thread;
	
end

// SYSTEMS $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
script static void sys_blip_auto_object_title_offset_equipment( player p_player, object obj_target, string_id sid_type, string_id sid_title, object_definition od_equipment, boolean b_blip_has, long l_thread )

	if ( player_is_in_game(p_player) and IsThreadValid(l_thread) )then
		local boolean b_blip = false;
	
		repeat
		
			// wait for change
			sleep_until( (b_blip != sys_blip_auto_object_title_offset_equipment_blip(p_player, obj_target, od_equipment, b_blip_has, l_thread)) or (not IsThreadValid(l_thread)) or (not player_is_in_game(p_player)), 1 );
		
			// store blip condition
			b_blip = sys_blip_auto_object_title_offset_equipment_blip( p_player, obj_target, od_equipment, b_blip_has, l_thread );
			
			// blip
			sys_blip_auto_object( p_player, obj_target, sid_type, sid_title, b_blip );
		
		until( ((not IsThreadValid(l_thread)) or (not player_is_in_game(p_player))) and (not b_blip), 1 );
	
	end

end
script static boolean sys_blip_auto_object_title_offset_equipment_blip( player p_player, object obj_target, object_definition od_equipment, boolean b_blip_has, long l_thread )
	( unit_has_equipment(p_player,od_equipment) == b_blip_has ) and ( obj_target != NONE ) and IsThreadValid( l_thread ) and player_is_in_game( p_player );
end


// =================================================================================================
// SPARTAN WAYPOINT SCRIPTS
// =================================================================================================

script static void f_hud_spartan_waypoint (ai spartan, string_id spartan_hud, short max_dist)
	sleep_until
		(
				(
				if (objects_distance_to_object (ai_get_object (spartan), player0) < .95) then
						chud_track_object (spartan, FALSE);
						sleep (60);
						TRUE;	
		
				elseif (objects_distance_to_object (ai_get_object (spartan), player0)>  max_dist) then
						chud_track_object (spartan, FALSE);
						sleep (60);	
						TRUE;			

				elseif (objects_distance_to_object (ai_get_object (spartan), player0) < 3) then
						chud_track_object_with_priority (spartan, 22, spartan_hud);
						sleep (60);
						TRUE;					

				elseif (objects_can_see_object (player0, ai_get_object (spartan), 10)) then
						chud_track_object_with_priority (spartan, 22, spartan_hud);
						sleep (60);
						TRUE;	
				else
						chud_track_object_with_priority ( spartan, 5, "");
						TRUE;
				end 
			)
				
				,0,30);
	
end


// =================================================================================================
// CALLOUT SCRIPTS
// =================================================================================================
script static void f_callout_atom (object obj, short type, short time, short postdelay)
	chud_track_object_with_priority (obj, type);
	sound_impulse_start (sfx_blip, NONE, 1);
	sleep (time);
	chud_track_object (obj, false);
	sleep (postdelay);
end

script static void f_callout_flag_atom (cutscene_flag f, short type, short time, short postdelay)
	chud_track_flag_with_priority (f, type);
	sound_impulse_start (sfx_blip, NONE, 1);
	sleep (time);
	chud_track_flag (f, false);
	sleep (postdelay);
end

script static void f_callout_object (object obj, short type)
	f_callout_atom (obj, type, 120, 2);
end

script static void f_callout_object_fast (object obj, short type)
	f_callout_atom (obj, type, 20, 5);
end

script static void f_callout_ai (ai actors, short type)
	sleep_until((b_blip_list_locked == FALSE ), 1);
	b_blip_list_locked = TRUE;
	
	l_blip_list = ai_actors (actors);

		repeat
			if ( object_get_health (list_get ( l_blip_list, s_blip_list_index )) > 0) then
				f_callout_object (list_get (l_blip_list, s_blip_list_index), type);
			end
			s_blip_list_index = (s_blip_list_index + 1);
		until ( s_blip_list_index >= list_count (l_blip_list), 1);
	
	s_blip_list_index = 0;
	b_blip_list_locked = FALSE;	
end

script static void f_callout_ai_fast (ai actors, short type)
	sleep_until((b_blip_list_locked == FALSE), 1);
	b_blip_list_locked = TRUE;
	
	l_blip_list = ai_actors (actors);

		repeat
			if ( object_get_health (list_get (l_blip_list, s_blip_list_index)) >  0) then
				f_callout_object_fast (list_get (l_blip_list, s_blip_list_index), type);
			end
			s_blip_list_index = (s_blip_list_index + 1);
		until ( s_blip_list_index >= list_count (l_blip_list), 1);
	
	s_blip_list_index = 0;
	b_blip_list_locked = FALSE;	
end


script static void f_callout_and_hold_flag (cutscene_flag f, short type)
	chud_track_flag_with_priority (f, type);
	sound_impulse_start (sfx_blip, NONE, 1);
	sleep (10);
end
	
// MISSION DIALOGUE
// =================================================================================================
// Play the specified line, then delay afterwards for a specified amount of time.
// added if statement to check if character exists so we don't get into bad situations- dmiller 5/25
script static void f_md_ai_play (short delay, ai character, ai_line line)
	 b_is_dialogue_playing = TRUE;
	if ( ai_living_count ( character) >= 1) then
			s_md_play_time = ai_play_line (character, line);
			sleep (s_md_play_time);
			sleep (delay);
	else
		print ("THIS ACTOR DOES NOT EXIST TO PLAY F_MD_AI_PLAY");
	end
	b_is_dialogue_playing = FALSE;
end

// Play the specified line, then delay afterwards for a specified amount of time.
script static void f_md_object_play (short delay, object obj, ai_line line)
	b_is_dialogue_playing = TRUE;
	s_md_play_time = ai_play_line_on_object (obj, line);
	sleep (s_md_play_time);
	sleep (delay);
	b_is_dialogue_playing = FALSE;
end

// Play the specified line, then cutoff afterwards for a specified amount of time.
script static void f_md_ai_play_cutoff (short cutoff_time, ai character, ai_line line)
	b_is_dialogue_playing = TRUE;
	s_md_play_time = (ai_play_line (character, line) - cutoff_time);
	sleep (s_md_play_time);
	b_is_dialogue_playing = FALSE;
end

// Play the specified line, then cutoff afterwards for a specified amount of time.
script static void f_md_object_play_cutoff (short cutoff_time, object obj, ai_line line)
	b_is_dialogue_playing = TRUE;
	s_md_play_time = (ai_play_line_on_object(obj, line) - cutoff_time);
	sleep (s_md_play_time);
	b_is_dialogue_playing = FALSE;
end

// For branching scipts in dialog
script static void f_md_abort()
	sleep (s_md_play_time);
	print ("DIALOG SCRIPT ABORTED!");
	b_is_dialogue_playing = FALSE;
	ai_dialogue_enable (TRUE);
end

script static void f_md_abort_no_combat_dialog()
	f_md_abort();
	sleep (1);
	ai_dialogue_enable (FALSE);
end


// Play the specified line, then delay afterwards for a specified amount of time.
global boolean b_is_dialogue_playing = false;

script static void f_md_play (short delay, sound line)
	b_is_dialogue_playing = true;
	s_md_play_time = sound_impulse_language_time (line); //DMiller added this so he can reference a time in mission scripts
	sound_impulse_start (line, NONE, 1);
	sleep (sound_impulse_language_time (line));
	sleep (delay);
	s_md_play_time = 0 ; //Dmiller adds this to reset the current line time, indicating the line is finished.		
	b_is_dialogue_playing = false;
end
	
(script static boolean f_is_dialogue_playing
	b_is_dialogue_playing)
	
// LONGSWORDS
// =================================================================================================
// Make a longsword device activate. 
// Device Tag: sound\device_machines\040vc_longsword\start
// Flyby Sound Tag: sound\device_machines\040vc_longsword\start
// =================================================================================================
// Example: 	(f_ls_flyby my_longsword_device_machine)
//			(sound_impulse_start sound\device_machines\040vc_longsword\start NONE 1)
// =================================================================================================
/*
(script static void (f_ls_flyby (device d))
	(device_animate_position d 0 0.0 0.0 0.0 TRUE)
	(device_set_position_immediate d 0)
	(device_set_power d 0)
	(sleep 1)
	(device_set_position_track d device:position 0)
	(device_animate_position d 0.5 7.0 0.1 0.1 TRUE))
*/
; CARPETBOMBS
; =================================================================================================
; Spawn a trail of bombs across a point set.
; Effect Tag: fx\fx_library\explosions\reach_test_explosion_large\reach_test_explosion_large
; Count: How many points are in the set?
; Delay: Time (in ticks) between the detonation of each bomb effect
; =================================================================================================
; Example: 	(f_ls_carpetbomb pts_030 fx\my_explosion_fx 6 10)
; =================================================================================================
/*
(global short global_s_current_bomb 0)
(script static void (f_ls_carpetbomb (point_reference p) (effect e) (short count) (short delay))
	(set global_s_current_bomb 0)
	(sleep_until
		(begin
			(if b_debug_globals (print "boom..."))
			(effect_new_at_point_set_point e p global_s_current_bomb)
			(set global_s_current_bomb (+ global_s_current_bomb 1))
			(sleep delay)
		(>= global_s_current_bomb count)) 1)	
)
*/

; =================================================================================================
; DEBUG RENDERING OF PATHFINDING STUFF
; =================================================================================================

;(script static void debug_toggle_cookie_cutters
;	(if (= debug_instanced_geometry 0)
;		(begin
;			(set debug_objects_collision_models 0)
;			(set debug_objects_physics_models 0)
;			(set debug_objects_bounding_spheres 0)
;			(set debug_objects_cookie_cutters 1)
;			(set debug_objects 1)
;
;			(set debug_instanced_geometry_collision_geometry 0)
;			(set debug_instanced_geometry_cookie_cutters 1)
;			(set debug_instanced_geometry 1)
;		)
;		(begin
;			(set debug_objects_cookie_cutters 0)
;			(set debug_objects 0)
;
;			(set debug_instanced_geometry_cookie_cutters 0)
;			(set debug_instanced_geometry 0)
;		)
;	)
;)

script static void debug_toggle_pathfinding_collisions()
	if (collision_debug == 0) then
			collision_debug = 1;
			collision_debug_flag_ignore_invisible_surfaces = 0;		
		else
			collision_debug = 0;
			collision_debug_flag_ignore_invisible_surfaces = 1;
	end
end

// =================================================================================================
// THESPIAN SCRIPTS
// =================================================================================================

script static void f_branch_empty01()
	print ("branch exit");
end

script static void f_branch_empty02()
	print ("branch exit");
end

script static void f_branch_empty03()
	print ("branch exit");
end

//=================================================================================================
//     ______     ___  ______  
//    / ___  \   /   )/ ___  \ 
//    \/   \  \ / /) |\/   \  \
//       ___) // (_) (_  ___) /
//      (___ ((____   _)(___ (  
//          ) \    ) (      ) \
//    /\___/  /    | |/\___/  /
//    \______/     (_)\______/ 
//                         
//=================================================================================================


// =================================================================================================
// DPRINT
// =================================================================================================
global boolean b_dprint 							= TRUE;

script static void dprint( string s )
	if b_dprint then
		print( s );
	end
end
script static void dprint_if( boolean b_if, string s )
	if b_if then
		dprint( s );
	end
end
script static void dprint_if_else( boolean b_if, string s_TRUE, string s_FALSE )
	if b_if then
		dprint( s_TRUE );
	else
		dprint( s_FALSE );
	end
end
script static void dprint_enable( boolean b_enable )
	b_dprint = b_enable;
	dprint_if( b_enable, "dprint_enable" );
end

script static void warpto (cutscene_flag warp_point)
			object_teleport (player0, warp_point);
			object_teleport (player1, warp_point);
			object_teleport (player2, warp_point);
			object_teleport (player3, warp_point);
end

// =================================================================================================
// Seconds vs Frames
// =================================================================================================
script static long seconds_to_frames_authored(real r_seconds)
	long( r_seconds * 30.0 );
end

script static long seconds_to_frames( real r_seconds )
	long( r_seconds * real ( game_tick_rate_get() ) );
end

script static real frames_to_seconds_authored( long l_frames )
	real( l_frames ) / 30.0;
end

script static real frames_to_seconds( long l_frames )
	real( l_frames ) / real( game_tick_rate_get() );
end
// =================================================================================================
// Sleep seconds
// =================================================================================================
script static void sleep_s( real r_time )
	sleep( seconds_to_frames_authored(r_time) );
end
script static void sleep_s( real r_min, real r_max )
	sleep_s( real_random_range(r_min,r_max) );
end

script static void sleep_rand_s( real r_min, real r_max )
	sleep_s( r_min, r_max );
end

// =================================================================================================
// OBJECT TYPES
//	Add values together for combos
// =================================================================================================
global short s_objtype_biped 									= 1;
global short s_objtype_vehicle 								= 2;
global short s_objtype_weapon 								= 4;
global short s_objtype_equipment 							= 8;
global short s_objtype_crate 									= 1024;

// =================================================================================================
// =================================================================================================
// OBJECT NEAREST/farthest
// =================================================================================================
// =================================================================================================

// -------------------------------------------------------------------------------------------------
// OBJECT NEAREST/farthest: POINT
// -------------------------------------------------------------------------------------------------
// === objlist_index_nearestfarthest_point: Get the object index nearest/farthest a point
//			ol_list = object list to cycle through
//			p_point = point to test against
//			b_nearest = TRUE = nearest, FALSE = farthest
// 			b_check_health = if TRUE, checks the objects health is > 0
//	RETURNS:  index of the object nearest the point
script static short objlist_index_nearestfarthest_point( object_list ol_list, point_reference p_point, boolean b_nearest, boolean b_check_health )
local short s_found = 0;
local short s_index = 0;

	// initialize
	s_found = -1;
	s_index = list_count( ol_list );

	if ( s_index > 0 ) then
		repeat
			s_index = s_index - 1;
			
			if ( (not b_check_health) or (object_get_health(list_get(ol_list,s_index)) > 0) ) then
				if( s_found == -1 ) then
					s_found = s_index;
				elseif ( ((b_nearest) and (objects_distance_to_point(list_get(ol_list,s_index), p_point) < objects_distance_to_point(list_get(ol_list,s_index), p_point))) or ((not b_nearest) and (objects_distance_to_point(list_get(ol_list,s_index), p_point) < objects_distance_to_point(list_get(ol_list,s_index), p_point))) ) then
					s_found = s_index;
				end
			end
		
		until ( s_index <= 0, 0 );
	end

	s_found;

end

// === objlist_index_nearest_point: Get the object index nearest a point
//			ol_list = object list to cycle through
//			p_point = point to test against
//	RETURNS:  index of the object nearest the point
script static short objlist_index_nearest_point( object_list ol_list, point_reference p_point )
	objlist_index_nearestfarthest_point( ol_list, p_point, TRUE, FALSE );
end
script static short objlist_living_index_nearest_point( object_list ol_list, point_reference p_point )
	objlist_index_nearestfarthest_point( ol_list, p_point, TRUE, TRUE );
end
// === objlist_index_farthest_point: Get the object index farthest to a point
//			ol_list = object list to cycle through
//			p_point = point to test against
//	RETURNS:  index of the object nearest the point
script static short objlist_index_farthest_point( object_list ol_list, point_reference p_point )
	objlist_index_nearestfarthest_point( ol_list, p_point, FALSE, FALSE );
end
script static short objlist_living_index_farthest_point( object_list ol_list, point_reference p_point )
	objlist_index_nearestfarthest_point( ol_list, p_point, FALSE, TRUE );
end

// === objlist_object_nearestfarthest_point: Get the object nearest/farthest a point
//			ol_list = object list to cycle through
//			p_point = point to test against
//			b_nearest = TRUE = nearest, FALSE = farthest
// 			b_check_health = if TRUE, checks the objects health is > 0
//	RETURNS:  the object nearest the point
//		NOTE: Returns NONE if no object was found
script static object objlist_object_nearestfarthest_point( object_list ol_list, point_reference p_point, boolean b_nearest, boolean b_check_health )
local short s_found = 0;

	s_found = objlist_index_nearestfarthest_point( ol_list, p_point, b_nearest, b_check_health );

	if ( s_found != -1 ) then
		list_get(ol_list,s_found);
	else
		NONE;
	end

end

// === objlist_object_nearest_point: Get the object nearest to a point
//			ol_list = object list to cycle through
//			p_point = point to test against
//	RETURNS:  the object nearest the point
//		NOTE: Returns NONE if no object was found
script static object objlist_object_nearest_point( object_list ol_list, point_reference p_point )
	objlist_object_nearestfarthest_point( ol_list, p_point, TRUE, FALSE );
end
script static object objlist_living_object_nearest_point( object_list ol_list, point_reference p_point )
	objlist_object_nearestfarthest_point( ol_list, p_point, TRUE, TRUE );
end

// === objlist_object_farthest_point: Get the object farthest from a point
//			ol_list = object list to cycle through
//			p_point = point to test against
//	RETURNS:  the object nearest the point
//		NOTE: Returns NONE if no object was found
script static object objlist_object_farthest_point( object_list ol_list, point_reference p_point )
	objlist_object_nearestfarthest_point( ol_list, p_point, FALSE, FALSE );
end
script static object objlist_living_object_farthest_point( object_list ol_list, point_reference p_point )
	objlist_object_nearestfarthest_point( ol_list, p_point, FALSE, TRUE );
end

// === player_index_nearest_point: Get the player index nearest a point
//			p_point = point to test against
//	RETURNS:  index of the player nearest the point
script static long player_index_nearest_point( point_reference p_point )
	objlist_index_nearestfarthest_point( Players(), p_point, TRUE, FALSE );
end
script static long player_living_index_nearest_point( point_reference p_point )
	objlist_index_nearestfarthest_point( Players(), p_point, TRUE, TRUE );
end

// === player_index_farthest_point: Get the player object farthest from a point
//			p_point = point to test against
//	RETURNS:  index of the player nearest the point
script static long player_index_farthest_point( point_reference p_point )
	objlist_index_nearestfarthest_point( Players(), p_point, FALSE, FALSE );
end
script static long player_living_index_farthest_point( point_reference p_point )
	objlist_index_nearestfarthest_point( Players(), p_point, FALSE, TRUE );
end

// === player_nearest_point: Get the player nearest a point
//			p_point = point to test against
//	RETURNS:  player object nearest the point
script static player player_nearest_point( point_reference p_point )
	objlist_object_nearestfarthest_point( Players(), p_point, TRUE, FALSE );
end
script static player player_living_nearest_point( point_reference p_point )
	objlist_object_nearestfarthest_point( Players(), p_point, TRUE, TRUE );
end

// === player_farthest_point: Get the player farthest from a point
//			p_point = point to test against
//	RETURNS:  player object nearest the point
script static player player_farthest_point( point_reference p_point )
	objlist_object_nearestfarthest_point( Players(), p_point, FALSE, FALSE );
end
script static player player_living_farthest_point( point_reference p_point )
	objlist_object_nearestfarthest_point( Players(), p_point, FALSE, TRUE );
end

// -------------------------------------------------------------------------------------------------
// OBJECT NEAREST/farthest: POINT: IN TRIGGERS
// -------------------------------------------------------------------------------------------------
// === objlist_index_in_trigger_nearest_point: Get the object within the trigger index nearest a point
//			ol_list = object list to cycle through
//			tv_trigger = trigger to check if the object is inside of
//			p_point = point to test against
//			b_nearest = TRUE = nearest, FALSE = farthest
// 			b_check_health = if TRUE, checks the objects health is > 0
//	RETURNS:  index of the object nearest the point
script static short objlist_index_in_trigger_nearestfarthest_point( object_list ol_list, trigger_volume tv_trigger, point_reference p_point, boolean b_nearest, boolean b_check_health )
local short s_found = 0;
local short s_index = 0;

	// initialize
	s_found = -1;
	s_index = list_count( ol_list );
	
	if ( s_index > 0 ) then
		repeat
			s_index = s_index - 1;

			if ( (volume_test_object(tv_trigger, list_get(ol_list,s_index))) and (not b_check_health) or (object_get_health(list_get(ol_list,s_index)) > 0) ) then
				if( s_found == -1 ) then
					s_found = s_index;
				elseif ( ((b_nearest) and (objects_distance_to_point(list_get(ol_list,s_index), p_point) < objects_distance_to_point(list_get(ol_list,s_found), p_point))) or ((not b_nearest) and (objects_distance_to_point(list_get(ol_list,s_index), p_point) > objects_distance_to_point(list_get(ol_list,s_found), p_point))) ) then
					s_found = s_index;
				end
			end		
		until ( s_index <= 0, 0 );
	end

	s_found;

end

// === objlist_index_in_trigger_nearest_point: Get the object within the trigger index nearest to a point
//			ol_list = object list to cycle through
//			tv_trigger = trigger to check if the object is inside of
//			p_point = point to test against
//	RETURNS:  index of the object nearest the point
script static short objlist_index_in_trigger_nearest_point( object_list ol_list, trigger_volume tv_trigger, point_reference p_point )
	objlist_index_in_trigger_nearestfarthest_point( ol_list, tv_trigger, p_point, TRUE, FALSE );
end
script static short objlist_living_index_in_trigger_nearest_point( object_list ol_list, trigger_volume tv_trigger, point_reference p_point )
	objlist_index_in_trigger_nearestfarthest_point( ol_list, tv_trigger, p_point, TRUE, TRUE );
end
// === objlist_index_in_trigger_farthest_point: Get the object within the trigger index farthest from a point
//			ol_list = object list to cycle through
//			tv_trigger = trigger to check if the object is inside of
//			p_point = point to test against
//	RETURNS:  index of the object nearest the point
script static short objlist_index_in_trigger_farthest_point( object_list ol_list, trigger_volume tv_trigger, point_reference p_point )
	objlist_index_in_trigger_nearestfarthest_point( ol_list, tv_trigger, p_point, TRUE, FALSE );
end
script static short objlist_living_index_in_trigger_farthest_point( object_list ol_list, trigger_volume tv_trigger, point_reference p_point )
	objlist_index_in_trigger_nearestfarthest_point( ol_list, tv_trigger, p_point, TRUE, TRUE );
end

// === objlist_object_in_trigger_nearestfarthest_point: Get the object within the trigger index nearest/farthest a point
//			ol_list = object list to cycle through
//			tv_trigger = trigger to check if the object is inside of
//			p_point = point to test against
//			b_nearest = TRUE = nearest, FALSE = farthest
//	RETURNS:  index of the object nearest the point
//		NOTE: Returns NONE if no object was found
script static object objlist_object_in_trigger_nearestfarthest_point( object_list ol_list, trigger_volume tv_trigger, point_reference p_point, boolean b_nearest, boolean b_check_health )
local short s_found = 0;

	s_found = objlist_index_in_trigger_nearestfarthest_point( ol_list, tv_trigger, p_point, b_nearest, b_check_health );

	if ( s_found != -1 ) then
		list_get(ol_list,s_found);
	else
		NONE;
	end

end

// === objlist_object_in_trigger_nearest_point: Get the object within the trigger index nearest to a point
//			ol_list = object list to cycle through
//			tv_trigger = trigger to check if the object is inside of
//			p_point = point to test against
//	RETURNS:  index of the object nearest the point
//		NOTE: Returns NONE if no object was found
script static object objlist_object_in_trigger_nearest_point( object_list ol_list, trigger_volume tv_trigger, point_reference p_point )
	objlist_object_in_trigger_nearestfarthest_point( ol_list, tv_trigger, p_point, TRUE, FALSE );
end
script static object objlist_living_object_in_trigger_nearest_point( object_list ol_list, trigger_volume tv_trigger, point_reference p_point )
	objlist_object_in_trigger_nearestfarthest_point( ol_list, tv_trigger, p_point, TRUE, TRUE );
end
// === objlist_object_in_trigger_farthest_point: Get the object within the trigger index farthest from a point
//			ol_list = object list to cycle through
//			tv_trigger = trigger to check if the object is inside of
//			p_point = point to test against
//	RETURNS:  index of the object nearest the point
//		NOTE: Returns NONE if no object was found
script static object objlist_object_in_trigger_farthest_point( object_list ol_list, trigger_volume tv_trigger, point_reference p_point )
	objlist_object_in_trigger_nearestfarthest_point( ol_list, tv_trigger, p_point, FALSE, FALSE );
end
script static object objlist_living_object_in_trigger_farthest_point( object_list ol_list, trigger_volume tv_trigger, point_reference p_point )
	objlist_object_in_trigger_nearestfarthest_point( ol_list, tv_trigger, p_point, FALSE, TRUE );
end

// === player_index_in_trigger_nearest_point: Get the player index inside a trigger nearest to a point
//			tv_trigger = trigger to check players inside of
//			p_point = point to test against
//	RETURNS:  index of the player inside the trigger nearest the point
script static long player_index_in_trigger_nearest_point( trigger_volume tv_trigger, point_reference p_point )
	objlist_index_in_trigger_nearestfarthest_point( Players(), tv_trigger, p_point, TRUE, FALSE );
end
script static long player_living_index_in_trigger_nearest_point( trigger_volume tv_trigger, point_reference p_point )
	objlist_index_in_trigger_nearestfarthest_point( Players(), tv_trigger, p_point, TRUE, TRUE );
end
// === player_index_in_trigger_farthest_point: Get the player index inside a trigger farthest from a point
//			tv_trigger = trigger to check players inside of
//			p_point = point to test against
//	RETURNS:  index of the player inside the trigger nearest the point
script static long player_index_in_trigger_farthest_point( trigger_volume tv_trigger, point_reference p_point )
	objlist_index_in_trigger_nearestfarthest_point( Players(), tv_trigger, p_point, FALSE, FALSE );
end
script static long player_living_index_in_trigger_farthest_point( trigger_volume tv_trigger, point_reference p_point )
	objlist_index_in_trigger_nearestfarthest_point( Players(), tv_trigger, p_point, FALSE, TRUE );
end

// === player_in_trigger_nearest_point: Get the player inside a trigger nearest a point
//			tv_trigger = trigger to check players inside of
//			p_point = point to test against
//	RETURNS:  player inside the trigger nearest the point
//		NOTE: Returns NONE if no object was found
script static player player_in_trigger_nearest_point( trigger_volume tv_trigger, point_reference p_point )
	objlist_object_in_trigger_nearestfarthest_point( Players(), tv_trigger, p_point, TRUE, FALSE );
end
script static player player_living_in_trigger_nearest_point( trigger_volume tv_trigger, point_reference p_point )
	objlist_object_in_trigger_nearestfarthest_point( Players(), tv_trigger, p_point, TRUE, TRUE );
end
// === player_in_trigger_farthest_point: Get the player inside a trigger nearest a point
//			tv_trigger = trigger to check players inside of
//			p_point = point to test against
//	RETURNS:  player inside the trigger nearest the point
//		NOTE: Returns NONE if no object was found
script static player player_in_trigger_farthest_point( trigger_volume tv_trigger, point_reference p_point )
	objlist_object_in_trigger_nearestfarthest_point( Players(), tv_trigger, p_point, FALSE, FALSE );
end
script static player player_living_in_trigger_farthest_point( trigger_volume tv_trigger, point_reference p_point )
	objlist_object_in_trigger_nearestfarthest_point( Players(), tv_trigger, p_point, FALSE, TRUE );
end



// -------------------------------------------------------------------------------------------------
// OBJECT NEAREST/farthest: OBJECT
// -------------------------------------------------------------------------------------------------
// === objlist_index_nearestfarthest_object: Get the object index nearest/farthest a object
//			ol_list = object list to cycle through
//			o_object = object to test against
//			b_nearest = TRUE = nearest, FALSE = farthest
// 			b_check_health = if TRUE, checks the objects health is > 0
//	RETURNS:  index of the object nearest the object
script static short objlist_index_nearestfarthest_object( object_list ol_list, object o_object, boolean b_nearest, boolean b_check_health )
local short s_found = 0;
local short s_index = 0;

	// initialize
	s_found = -1;
	s_index = list_count( ol_list );

	if ( s_index > 0 ) then
		repeat
			s_index = s_index - 1;

			if ( (not b_check_health) or (object_get_health(list_get(ol_list,s_index)) > 0) ) then
				if( s_found == -1 ) then
					s_found = s_index;
				elseif ( ((b_nearest) and (objects_distance_to_object(list_get(ol_list,s_index), o_object) < objects_distance_to_object(list_get(ol_list,s_found), o_object))) or ((not b_nearest) and (objects_distance_to_object(list_get(ol_list,s_index), o_object) > objects_distance_to_object(list_get(ol_list,s_found), o_object))) ) then
					s_found = s_index;
				end
			end
		
		until ( s_index <= 0, 0 );
	end

	s_found;

end

// === objlist_index_nearest_object: Get the object index nearest a object
//			ol_list = object list to cycle through
//			o_object = object to test against
//	RETURNS:  index of the object nearest the object
script static short objlist_index_nearest_object( object_list ol_list, object o_object )
	objlist_index_nearestfarthest_object( ol_list, o_object, TRUE, FALSE );
end
script static short objlist_living_index_nearest_object( object_list ol_list, object o_object )
	objlist_index_nearestfarthest_object( ol_list, o_object, TRUE, TRUE );
end
// === objlist_index_farthest_object: Get the object index farthest to a object
//			ol_list = object list to cycle through
//			o_object = object to test against
//	RETURNS:  index of the object nearest the object
script static short objlist_index_farthest_object( object_list ol_list, object o_object )
	objlist_index_nearestfarthest_object( ol_list, o_object, FALSE, FALSE );
end
script static short objlist_living_index_farthest_object( object_list ol_list, object o_object )
	objlist_index_nearestfarthest_object( ol_list, o_object, FALSE, TRUE );
end

// === objlist_object_nearestfarthest_object: Get the object nearest/farthest a object
//			ol_list = object list to cycle through
//			o_object = object to test against
//			b_nearest = TRUE = nearest, FALSE = farthest
// 			b_check_health = if TRUE, checks the objects health is > 0
//	RETURNS:  the object nearest the object
//		NOTE: Returns NONE if no object was found
script static object objlist_object_nearestfarthest_object( object_list ol_list, object o_object, boolean b_nearest, boolean b_check_health )
local short s_found = 0;

	s_found = objlist_index_nearestfarthest_object( ol_list, o_object, b_nearest, b_check_health );

	if ( s_found != -1 ) then
		list_get(ol_list,s_found);
	else
		NONE;
	end

end

// === objlist_object_nearest_object: Get the object nearest to a object
//			ol_list = object list to cycle through
//			o_object = object to test against
//	RETURNS:  the object nearest the object
//		NOTE: Returns NONE if no object was found
script static object objlist_object_nearest_object( object_list ol_list, object o_object )
	objlist_object_nearestfarthest_object( ol_list, o_object, TRUE, FALSE );
end
script static object objlist_living_object_nearest_object( object_list ol_list, object o_object )
	objlist_object_nearestfarthest_object( ol_list, o_object, TRUE, TRUE );
end
// === objlist_object_farthest_object: Get the object farthest from a object
//			ol_list = object list to cycle through
//			o_object = object to test against
//	RETURNS:  the object nearest the object
//		NOTE: Returns NONE if no object was found
script static object objlist_object_farthest_object( object_list ol_list, object o_object )
	objlist_object_nearestfarthest_object( ol_list, o_object, FALSE, FALSE );
end
script static object objlist_living_object_farthest_object( object_list ol_list, object o_object )
	objlist_object_nearestfarthest_object( ol_list, o_object, FALSE, TRUE );
end

// === player_index_nearest_object: Get the player index nearest a object
//			o_object = object to test against
//	RETURNS:  index of the player nearest the object
script static long player_index_nearest_object( object o_object )
	objlist_index_nearestfarthest_object( Players(), o_object, TRUE, FALSE );
end
script static long player_living_index_nearest_object( object o_object )
	objlist_index_nearestfarthest_object( Players(), o_object, TRUE, TRUE );
end
// === player_index_farthest_object: Get the player object farthest from a object
//			o_object = object to test against
//	RETURNS:  index of the player nearest the object
script static long player_index_farthest_object( object o_object )
	objlist_index_nearestfarthest_object( Players(), o_object, FALSE, FALSE );
end
script static long player_living_index_farthest_object( object o_object )
	objlist_index_nearestfarthest_object( Players(), o_object, FALSE, TRUE );
end

// === player_nearest_object: Get the player nearest a object
//			o_object = object to test against
//	RETURNS:  player object nearest the object
script static player player_nearest_object( object o_object )
	objlist_object_nearestfarthest_object( Players(), o_object, TRUE, FALSE );
end
script static player player_living_nearest_object( object o_object )
	objlist_object_nearestfarthest_object( Players(), o_object, TRUE, TRUE );
end
// === player_farthest_object: Get the player farthest from a object
//			o_object = object to test against
//	RETURNS:  player object nearest the object
script static player player_farthest_object( object o_object )
	objlist_object_nearestfarthest_object( Players(), o_object, FALSE, FALSE );
end
script static player player_living_farthest_object( object o_object )
	objlist_object_nearestfarthest_object( Players(), o_object, FALSE, TRUE );
end

// -------------------------------------------------------------------------------------------------
// OBJECT NEAREST/farthest: object: IN TRIGGERS
// -------------------------------------------------------------------------------------------------
// === objlist_index_in_trigger_nearest_object: Get the object within the trigger index nearest a object
//			ol_list = object list to cycle through
//			tv_trigger = trigger to check if the object is inside of
//			o_object = object to test against
//			b_nearest = TRUE = nearest, FALSE = farthest
// 			b_check_health = if TRUE, checks the objects health is > 0
//	RETURNS:  index of the object nearest the object
script static short objlist_index_in_trigger_nearestfarthest_object( object_list ol_list, trigger_volume tv_trigger, object o_object, boolean b_nearest, boolean b_check_health )
local short s_found = 0;
local short s_index = 0;

	// initialize
	s_found = -1;
	s_index = list_count( ol_list );
	
	if ( s_index > 0 ) then
		repeat
			s_index = s_index - 1;

			if ( (volume_test_object(tv_trigger, list_get(ol_list,s_index))) and (not b_check_health) or (object_get_health(list_get(ol_list,s_index)) > 0) ) then
				if( s_found == -1 ) then
					s_found = s_index;
				elseif ( ((b_nearest) and (objects_distance_to_object(list_get(ol_list,s_index), o_object) < objects_distance_to_object(list_get(ol_list,s_index), o_object))) or ((not b_nearest) and (objects_distance_to_object(list_get(ol_list,s_index), o_object) < objects_distance_to_object(list_get(ol_list,s_index), o_object))) ) then
					s_found = s_index;
				end
			end		
			
		until ( s_index <= 0, 0 );
	end

	s_found;

end

// === objlist_index_in_trigger_nearest_object: Get the object within the trigger index nearest to a object
//			ol_list = object list to cycle through
//			tv_trigger = trigger to check if the object is inside of
//			o_object = object to test against
//	RETURNS:  index of the object nearest the object
script static short objlist_index_in_trigger_nearest_object( object_list ol_list, trigger_volume tv_trigger, object o_object )
	objlist_index_in_trigger_nearestfarthest_object( ol_list, tv_trigger, o_object, TRUE, FALSE );
end
script static short objlist_living_index_in_trigger_nearest_object( object_list ol_list, trigger_volume tv_trigger, object o_object )
	objlist_index_in_trigger_nearestfarthest_object( ol_list, tv_trigger, o_object, TRUE, TRUE );
end
// === objlist_index_in_trigger_farthest_object: Get the object within the trigger index farthest from a object
//			ol_list = object list to cycle through
//			tv_trigger = trigger to check if the object is inside of
//			o_object = object to test against
//	RETURNS:  index of the object nearest the object
script static short objlist_index_in_trigger_farthest_object( object_list ol_list, trigger_volume tv_trigger, object o_object )
	objlist_index_in_trigger_nearestfarthest_object( ol_list, tv_trigger, o_object, TRUE, FALSE );
end
script static short objlist_living_index_in_trigger_farthest_object( object_list ol_list, trigger_volume tv_trigger, object o_object )
	objlist_index_in_trigger_nearestfarthest_object( ol_list, tv_trigger, o_object, TRUE, TRUE );
end

// === objlist_object_in_trigger_nearestfarthest_object: Get the object within the trigger index nearest/farthest a object
//			ol_list = object list to cycle through
//			tv_trigger = trigger to check if the object is inside of
//			o_object = object to test against
//			b_nearest = TRUE = nearest, FALSE = farthest
//	RETURNS:  index of the object nearest the object
//		NOTE: Returns NONE if no object was found
script static object objlist_object_in_trigger_nearestfarthest_object( object_list ol_list, trigger_volume tv_trigger, object o_object, boolean b_nearest, boolean b_check_health )
local short s_found = 0;

	s_found = objlist_index_in_trigger_nearestfarthest_object( ol_list, tv_trigger, o_object, b_nearest, b_check_health );

	if ( s_found != -1 ) then
		list_get(ol_list,s_found);
	else
		NONE;
	end

end

// === objlist_object_in_trigger_nearest_object: Get the object within the trigger index nearest to a object
//			ol_list = object list to cycle through
//			tv_trigger = trigger to check if the object is inside of
//			o_object = object to test against
//	RETURNS:  index of the object nearest the object
//		NOTE: Returns NONE if no object was found
script static object objlist_object_in_trigger_nearest_object( object_list ol_list, trigger_volume tv_trigger, object o_object )
	objlist_object_in_trigger_nearestfarthest_object( ol_list, tv_trigger, o_object, TRUE, FALSE );
end
script static object objlist_living_object_in_trigger_nearest_object( object_list ol_list, trigger_volume tv_trigger, object o_object )
	objlist_object_in_trigger_nearestfarthest_object( ol_list, tv_trigger, o_object, TRUE, TRUE );
end
// === objlist_object_in_trigger_farthest_object: Get the object within the trigger index farthest from a object
//			ol_list = object list to cycle through
//			tv_trigger = trigger to check if the object is inside of
//			o_object = object to test against
//	RETURNS:  index of the object nearest the object
//		NOTE: Returns NONE if no object was found
script static object objlist_object_in_trigger_farthest_object( object_list ol_list, trigger_volume tv_trigger, object o_object )
	objlist_object_in_trigger_nearestfarthest_object( ol_list, tv_trigger, o_object, FALSE, FALSE );
end
script static object objlist_living_object_in_trigger_farthest_object( object_list ol_list, trigger_volume tv_trigger, object o_object )
	objlist_object_in_trigger_nearestfarthest_object( ol_list, tv_trigger, o_object, FALSE, TRUE );
end

// === player_index_in_trigger_nearest_object: Get the player index inside a trigger nearest to a object
//			tv_trigger = trigger to check players inside of
//			o_object = object to test against
//	RETURNS:  index of the player inside the trigger nearest the object
script static long player_index_in_trigger_nearest_object( trigger_volume tv_trigger, object o_object )
	objlist_index_in_trigger_nearestfarthest_object( Players(), tv_trigger, o_object, TRUE, FALSE );
end
script static long player_living_index_in_trigger_nearest_object( trigger_volume tv_trigger, object o_object )
	objlist_index_in_trigger_nearestfarthest_object( Players(), tv_trigger, o_object, TRUE, TRUE );
end
// === player_index_in_trigger_farthest_object: Get the player index inside a trigger farthest from a object
//			tv_trigger = trigger to check players inside of
//			o_object = object to test against
//	RETURNS:  index of the player inside the trigger nearest the object
script static long player_index_in_trigger_farthest_object( trigger_volume tv_trigger, object o_object )
	objlist_index_in_trigger_nearestfarthest_object( Players(), tv_trigger, o_object, FALSE, FALSE );
end
script static long player_living_index_in_trigger_farthest_object( trigger_volume tv_trigger, object o_object )
	objlist_index_in_trigger_nearestfarthest_object( Players(), tv_trigger, o_object, FALSE, TRUE );
end

// === player_in_trigger_nearest_object: Get the player inside a trigger nearest a object
//			tv_trigger = trigger to check players inside of
//			o_object = object to test against
//	RETURNS:  player inside the trigger nearest the object
//		NOTE: Returns NONE if no object was found
script static player player_in_trigger_nearest_object( trigger_volume tv_trigger, object o_object )
	objlist_object_in_trigger_nearestfarthest_object( Players(), tv_trigger, o_object, TRUE, FALSE );
end
script static player player_living_in_trigger_nearest_object( trigger_volume tv_trigger, object o_object )
	objlist_object_in_trigger_nearestfarthest_object( Players(), tv_trigger, o_object, TRUE, TRUE );
end
// === player_in_trigger_farthest_object: Get the player inside a trigger nearest a object
//			tv_trigger = trigger to check players inside of
//			o_object = object to test against
//	RETURNS:  player inside the trigger nearest the object
//		NOTE: Returns NONE if no object was found
script static player player_in_trigger_farthest_object( trigger_volume tv_trigger, object o_object )
	objlist_object_in_trigger_nearestfarthest_object( Players(), tv_trigger, o_object, FALSE, FALSE );
end
script static player player_living_in_trigger_farthest_object( trigger_volume tv_trigger, object o_object )
	objlist_object_in_trigger_nearestfarthest_object( Players(), tv_trigger, o_object, FALSE, TRUE );
end


// =================================================================================================
// =================================================================================================
// CHANCE
// =================================================================================================
// =================================================================================================
script static boolean f_chance( real r_percent )
	( real_random_range(0.0,100.0) <= r_percent );
end
script static boolean f_chance_player_sees( real r_percent_default, real r_percent_seen, object obj_target, real r_angle )

	if ( objects_can_see_object(Players(), obj_target, r_angle) ) then
		f_chance( r_percent_seen );
	else
		f_chance( r_percent_default );
	end
	
end

// =================================================================================================
// =================================================================================================
// OBJECT CREATE
// =================================================================================================
// =================================================================================================
script static void f_object_create( object_name obj_object, boolean b_wait )
	if ( not object_valid(obj_object) ) then
		object_create(obj_object);
		sleep_until( (not b_wait ) or object_valid(obj_object), 1 );
	end
end
script static void f_object_create_scale( object_name obj_object, real r_scale )
	f_object_create( obj_object, TRUE );
	object_set_scale( obj_object, r_scale, 0 );
end
script static void f_object_create_scale_range( object_name obj_object, real r_scale_min, real r_scale_max )
	f_object_create_scale( obj_object, real_random_range(r_scale_min,r_scale_max) );
end

// =================================================================================================
// =================================================================================================
// FIRE DAMAGE
// =================================================================================================
// =================================================================================================
script static void f_do_fire_damage_on_trigger( trigger_volume the_trig )
	
	//thread( f_do_fire_damage_per_player(the_trig, player0) );
	//thread( f_do_fire_damage_per_player(the_trig, player1) );
	//thread( f_do_fire_damage_per_player(the_trig, player2) );
	//thread( f_do_fire_damage_per_player(the_trig, player3) );
	f_damage_volume_players( the_trig, -1.0, -1.0, 1, 1, S_damage_type_fire );

end
/*
script static void f_do_fire_damage_per_player(trigger_volume the_trig, player the_player)
	if ( player_is_in_game(the_player) ) then
		repeat
			sleep_until (volume_test_object (the_trig, the_player), 1);
			damage_object_with_fire_from_trigger_volume (the_player, the_trig, "body", 10);
			dprint("Player took fire damage!");
			sleep (random_range(12, 22));
		until (FALSE, 1);
	end
end
*/

// =================================================================================================
// =================================================================================================
// RECENT DAMAGE
// =================================================================================================
// =================================================================================================
script static real object_get_recent_damage_total( object_name obj_object )

	( object_get_recent_body_damage(obj_object) + object_get_recent_shield_damage(obj_object) );
	
end

// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// TIMER
//	NOTE:  Initializing your timer to -1 (or anything less than 0) will make it so when testing the timer it will not expire until has been stamped
// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// ----------------------------------------------------------------------------------------------------------------------------------------------------------

// FUNCTIONS ------------------------------------------------------------------------------------------------------------------------------------------------
// === timer_stamp: Starts a timer
//			r_time [real] = [optional] Time to stamp on the timer
//			r_time_min [real] = [optional] Minimum random time to stamp on the timer
//			r_time_max [real] = [optional] Minimum random time to stamp on the timer
//	RETURNS:  [long] Returns a timer value for when you start the timer
script static long timer_stamp()
	game_tick_get();
end
script static long timer_stamp( real r_time )
	game_tick_get() + seconds_to_frames( r_time );
end
script static long timer_stamp( real r_time_min, real r_time_max )
	game_tick_get() + seconds_to_frames( real_random_range(r_time_min, r_time_max) );
end

// === timer_expired: Checks if a timer has expired
//			l_timer [long] = Timer variable you called timer_stamp() and returned into
//			r_time [real] = [optional] Time that has passed since the timer was stamped
//	RETURNS:  [long] Returns a timer value for when you start the timer
script static boolean timer_expired( long l_timer )
	( game_tick_get() > l_timer ) and ( l_timer >= 0 );
end
script static boolean timer_expired( long l_timer, real r_time )
	( game_tick_get() > (l_timer + seconds_to_frames(r_time)) ) and ( l_timer >= 0 );
end

// === timer_active: Checks if a timer is still active
//			l_timer [long] = Timer variable you called timer_stamp() and returned into
//			r_time [real] = [optional] Time that has passed since the timer was stamped
//	RETURNS:  [long] TRUE; timer is ative and was started
script static boolean timer_active( long l_timer )
	( game_tick_get() <= l_timer ) and ( l_timer >= 0 );
end
script static boolean timer_active( long l_timer, real r_time )
	( game_tick_get() <= (l_timer + seconds_to_frames(r_time)) ) and ( l_timer >= 0 );
end

// === timer_elapsed: Returns how much time has elapsed on a timer
//			l_timer [long] = Timer variable you called timer_stamp() and returned into
//	RETURNS:  [real] Number of seconds that has elapsed since the itmer started
script static real timer_elapsed( long l_timer )
	if ( l_timer > 0 ) then
		frames_to_seconds( game_tick_get() - l_timer );
	else
		0;
	end
end

// === timer_remaining: Returns how much time is remaining on the timer
//			l_timer [long] = Timer variable you called timer_stamp() and returned into
//	RETURNS:  [real] Number of seconds that has elapsed since the itmer started
script static real timer_remaining( long l_timer )
	if ( l_timer > 0 ) then
		frames_to_seconds( l_timer - game_tick_get() );
	else
		0;
	end
end
