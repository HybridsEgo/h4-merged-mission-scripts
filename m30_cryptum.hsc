; GLOBALS

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

// --- Begin m30_cryptum_audio.hsc ---
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343
//
// Mission: 					m30_cryptum_audio
//										
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343

// =================================================================================================
// =================================================================================================
// *** GLOBALS ***
// =================================================================================================
// =================================================================================================
global looping_sound amb_current = "";

global sound donut_camera_shake_weak = 'sound\environments\solo\m030\amb_m30_beta\amb_m30_screen_shakes\m30_donut_camera_shake_weak';
global sound donut_camera_shake_medium = 'sound\environments\solo\m030\amb_m30_beta\amb_m30_screen_shakes\m30_donut_camera_shake_medium';
global sound escape_camera_shake_weak = 'sound\environments\solo\m030\amb_m30_beta\amb_m30_screen_shakes\m30_escape_camera_shake_weak';
global sound escape_camera_shake_strong = 'sound\environments\solo\m030\amb_m30_beta\amb_m30_screen_shakes\m30_escape_camera_shake_strong';
global sound exterior_2_camera_shake = 'sound\environments\solo\m030\amb_m30_beta\amb_m30_screen_shakes\m30_exterior_2_camera_shake';

// =================================================================================================
// =================================================================================================
// *** START-UP ***
// =================================================================================================
// =================================================================================================

script startup m30_cryptum_audio()

	if b_debug then 
		print ("::: M30 - AUDIO :::");
	end

	thread (test_audio());
	thread (load_music_for_zone_set());
end

// this will always be 0 unless an insertion point is used
// in that case, it is used to skip past the trigger volumes that precede the selected insertion point
global short b_m30_music_progression = 0;
global long l_music_zone_set_thread_id = 0;

// This function runs in an endless loop and watches for zone set changes so it can set the approriate audio states
script static void load_music_for_zone_set()
	sleep_until(b_m30_music_progression > 0 or current_zone_set_fully_active() == zs_portal_idx, 1);
	music_start('Play_mus_m30');
	
	sleep_until(b_m30_music_progression > 10 or volume_test_players (tv_music_r01_start), 1);
	if b_m30_music_progression <= 10 then
		music_set_state('Play_mus_m30_r01_start');
		music_set_state('Play_mus_m30_r16_observationdeck_1');
		sound_set_state('Set_State_M30_Observation_Deck');
	end

	sleep_until(b_m30_music_progression > 20 or volume_test_players (tv_music_r02_caves), 1);
	if b_m30_music_progression <= 20 then
		music_set_state('Play_mus_m30_r02_caves');
		sound_set_state('Set_State_M30_Caves');
	end

	
	// RALLY POINT BRAVO
	sleep_until(b_m30_music_progression > 30 or volume_test_players (tv_music_r03_canyon), 1);
	if b_m30_music_progression <= 30 then
		music_set_state('Play_mus_m30_r03_canyon');
		sound_set_state('Set_State_M30_Canyon');
	end
	
	sleep_until(b_m30_music_progression > 40 or volume_test_players (tv_music_r04_forts), 1);
	if b_m30_music_progression <= 40 then
		l_music_zone_set_thread_id = thread (music_for_forts());
		sound_set_state('Set_State_M30_Forts1');
	end
	
	sleep_until(b_m30_music_progression > 50 or volume_test_players (tv_music_r17_observationdeck), 1);
	if (l_music_zone_set_thread_id != 0) then // kill old thread
	  	kill_thread (l_music_zone_set_thread_id);
	  	l_music_zone_set_thread_id = 0;
	end
	if b_m30_music_progression <= 50 then
		l_music_zone_set_thread_id = thread (music_for_beam1_obs_deck());
		sound_set_state('Set_State_M30_Beam1');
	end
	
	// RALLY POINT CHARLIE
	sleep_until(b_m30_music_progression > 60 or volume_test_players (tv_music_r07_start), 1);
	if (l_music_zone_set_thread_id != 0) then // kill old thread
	  	kill_thread (l_music_zone_set_thread_id);
	  	l_music_zone_set_thread_id = 0;
	end
	if b_m30_music_progression <= 60 then
		music_set_state('Play_mus_m30_r07_start');
		sound_set_state('Set_State_M30_Start2');
	end
	
	sleep_until(b_m30_music_progression > 70 or volume_test_players (tv_music_r08_canyon), 1);
	if b_m30_music_progression <= 70 then
		music_set_state('Play_mus_m30_r08_canyon');
		sound_set_state('Set_State_M30_Exterior2');
	end
	
	sleep_until(b_m30_music_progression > 80 or volume_test_players (tv_music_r09_forts), 1);
	if b_m30_music_progression <= 80 then
		l_music_zone_set_thread_id = thread (music_for_forts_2());
		sound_set_state('Set_State_M30_Forts2');
	end
	
	sleep_until(b_m30_music_progression > 90 or volume_test_players (tv_music_r18_observationdeck_3), 1);
	if (l_music_zone_set_thread_id != 0) then // kill old thread
	  	kill_thread (l_music_zone_set_thread_id);
	  	l_music_zone_set_thread_id = 0;
	end
	if b_m30_music_progression <= 90 then
		l_music_zone_set_thread_id = thread (music_for_beam2_obs_deck());
		sound_set_state('Set_State_M30_Beam2');
	end
	
	// RALLY POINT DELTA
	sleep_until(b_m30_music_progression > 100 or volume_test_players (tv_music_r12_donut), 1);
	if (l_music_zone_set_thread_id != 0) then // kill old thread
	  	kill_thread (l_music_zone_set_thread_id);
	  	l_music_zone_set_thread_id = 0;
	end
	if b_m30_music_progression <= 100 then
		l_music_zone_set_thread_id = thread (music_for_donut());
		sound_set_state('Set_State_M30_Donut');
	end

	sleep_until(b_m30_music_progression > 110 or volume_test_players (tv_music_r14_cryptum), 1);
	if (l_music_zone_set_thread_id != 0) then // kill old thread
	  	kill_thread (l_music_zone_set_thread_id);
	  	l_music_zone_set_thread_id = 0;
	end
	if b_m30_music_progression <= 110 then
		music_set_state('Play_mus_m30_r14_cryptum');
		sound_set_state('Set_State_M30_Cryptum');
	end
	
	sleep_until(b_m30_music_progression > 120 or volume_test_players (tv_music_r15_escape), 1);
	if (l_music_zone_set_thread_id != 0) then // kill old thread
	  	kill_thread (l_music_zone_set_thread_id);
	  	l_music_zone_set_thread_id = 0;
	end
	if b_m30_music_progression <= 120 then
		sound_set_state('Set_State_M30_Escape');
		music_set_state('Play_mus_m30_r15_escape');
	end
	
	sleep_until(current_zone_set_fully_active() == zs_cin_m32_idx, 1);
	music_stop('Stop_mus_m30'); 
end

script static void test_audio()
	print ("::: test FX :::");
	//effect_new( cinematics\cin_verticalslice\fx\rig_spark_pipe.effect, test_fx );
end

// REMOVE ME patridu
script static void dprint (string s)
	if b_debug then
		print (s);
	end
end

; =================================================================================================
; *** TEMP VOICE OVER ***
; =================================================================================================

script dormant voice_over_1()
	// This represents the opening cinematic dialogue. No player control. 
	sleep_until (volume_test_players (tv_vo1), 1);
	//player_disable_movement (TRUE);
	thread (placeholdercinematic());
	sleep (30);
	
	// 157 : Where did those things come from?
//	sound_impulse_start ('sound\dialog\Mission\m30\M_M30_MC_00100', NONE, 1);
//	print ("Where did those things come from?");
//	sleep (30 * 1.244);
	// 159 : Cor-?
//	sound_impulse_start ('sound\dialog\Mission\m30\M_M30_MC_00300', NONE, 1);
//	print ("Cor-?");
//	sleep (30 * 0.53);
	// 160 : I'm here. The portal must've... initiated a memory spike or... well, sorry.
//	sound_impulse_start ('sound\dialog\Mission\m30\M_M30_Cortana_00400', NONE, 1);
//	print ("I'm here. The portal must've... initiated a memory spike or... well, sorry.");
//	sleep (30 * 6.347);
	// 161 : What about those creatures?
//	sound_impulse_start ('sound\dialog\Mission\m30\M_M30_MC_00500', NONE, 1);
//	print ("What about those creatures?");
//	sleep (30 * 1.205);
	// 162 : You know as much as I do. One thing's for sure - whatever they are, they really don't like people messing with their things.
//	sound_impulse_start ('sound\dialog\Mission\m30\M_M30_Cortana_00600', NONE, 1);
//	print ("You know as much as I do. One thing's for sure - whatever they are, they really don't like people messing with their things.");
//	sleep (30 * 5.739);
	
	/*  (EDITED around UR#2. Lots of dialogue trimmed out.)	
	
	// 163 : Hm. I jumped us to the coordinates for the Reclaimer symbol, and now I'm not getting anything from the Covenant battlenets. And by that, I mean NOTHING. There's no sign of them whatsoever.
	sound_impulse_start ('sound\dialog\Mission\m30\M_M30_Cortana_00700', NONE, 1);
	print ("Hm. I jumped us to the coordinates for the Reclaimer symbol, and now I'm not getting anything from the Covenant battlenets. And by that, I mean NOTHING. There's no sign of them whatsoever.");
	sleep (30 * 9.301);
	// 164 : Where could they have gone?
	sound_impulse_start ('sound\dialog\Mission\m30\M_M30_MC_00800', NONE, 1);
	print ("Where could they have gone?");
	sleep (30 * 0.89);
	// 165 : I don't think THEY went anywhere.
	sound_impulse_start ('sound\dialog\Mission\m30\M_M30_Cortana_00900', NONE, 1);
	print ("I don't think THEY went anywhere.");
	sleep (30 * 1.944);	

	*/	

	//player_disable_movement (FALSE);
end

script static void placeholdercinematic()
	cinematic_set_title (placeholder_cinematic);	
	sleep (30 * 20);
end
	
script static void pylon1_complete_text()
	// Cinematic text for when player steps out of portal from Pylon 1 and arrives in 20_start.
	cinematic_set_title (dash1);
	sleep (30 * 1);
	cinematic_set_title (dash2);
	sleep (30 * 1);
	cinematic_set_title (obj_complete);
	sleep (30 * 3);
	sound_impulse_start (sound\game_sfx\ui\transition_beeps, NONE, 1);
	cinematic_set_title (dash1);
	sleep (30 * 1);
	sound_impulse_start (sound\game_sfx\ui\transition_beeps, NONE, 1);
	cinematic_set_title (dash2);
	sleep (30 * 1);
	sound_impulse_start (sound\game_sfx\ui\transition_beeps, NONE, 1);
	cinematic_set_title (new_obj);
	sleep (30 * 4);
	sound_impulse_start (sound\game_sfx\ui\transition_beeps, NONE, 1);
	cinematic_set_title (chcryptumstart2);
end

script static void pylon2_complete_text()
	cinematic_set_title (dash1);
	sleep (30 * 1);
	cinematic_set_title (dash2);
	sleep (30 * 1);
	cinematic_set_title (obj_complete);
	sleep (30 * 3);
	sound_impulse_start (sound\game_sfx\ui\transition_beeps, NONE, 1);
	cinematic_set_title (dash1);
	sleep (30 * 1);
	sound_impulse_start (sound\game_sfx\ui\transition_beeps, NONE, 1);
	cinematic_set_title (dash2);
	sleep (30 * 1);
	sound_impulse_start (sound\game_sfx\ui\transition_beeps, NONE, 1);
	cinematic_set_title (new_obj);
	sleep (30 * 4);
	sound_impulse_start (sound\game_sfx\ui\transition_beeps, NONE, 1);
	cinematic_set_title (chcryptumstart3);
end
	
script static void donut_complete_text()
	cinematic_set_title (dash1);
	sleep (30 * 1);
	cinematic_set_title (dash2);
	sleep (30 * 1);
	cinematic_set_title (obj_complete);
	sleep (30 * 3);
	sound_impulse_start (sound\game_sfx\ui\transition_beeps, NONE, 1);
	cinematic_set_title (dash1);
	sleep (30 * 1);
	sound_impulse_start (sound\game_sfx\ui\transition_beeps, NONE, 1);
	cinematic_set_title (dash2);
	sleep (30 * 1);
	sound_impulse_start (sound\game_sfx\ui\transition_beeps, NONE, 1);
	cinematic_set_title (new_obj);
	sleep (30 * 4);
	sound_impulse_start (sound\game_sfx\ui\transition_beeps, NONE, 1);
	cinematic_set_title (chescape);
end


; =================================================================================================
; *** AMBIENCES ***
; =================================================================================================
; See acoustic sectors in Sapien

; =================================================================================================
; *** MIXER STATES ***
; =================================================================================================

// script states for encounters in caves
/* script static void mixer_caves_encounters()
	sleep_until (b_first_pawn_fight_started, 1); // sleep until pawn squad is placed
	sound_set_state('Set_State_  Caves_Encounter1'); // This is the pawn encounter, the first encounter in m30

	sleep_until (b_first_pawn_fight_over, 1);
	music_set_state('Set_State_M30_Caves'); // restore caves state once the fight is over

	sleep_until (b_grassy_hill_encounter_started, 1); // this is the 2nd encounter, with knights and bishops spawning on the hill
	sound_set_state('Set_State_Caves_Encounter2');
	sleep_until (b_grassy_hill_encounter_over, 1);
	
	music_set_state('Set_State_M30_Caves'); // restore caves state once the fight is over
end */

// script states for encounters in canyon
/* script static void mixer_canyon_encounters()
	sleep_until (b_ext1_final_fight_started, 1); 
	sound_set_state('Set_State_Mixer_Canyon_Encounter2');
	sleep_until (b_ext1_final_fight_over, 1);
	
	sleep_until (b_ext1_final_fight_started, 1); 
	sound_set_state('Set_State_Mixer_Canyon_Encounter2');
	sleep_until (b_ext1_final_fight_over, 1);
	
	music_set_state('Set_State_M30_Canyon'); 
end */

; =================================================================================================
; *** MUSIC ***
; =================================================================================================

// ****** COMPLEX MUSIC STATES ******
script static void music_for_forts()
	music_set_state('Play_mus_m30_r04_forts');
	sleep_until (b_forts1_has_ended == TRUE, 1);
	music_set_state('Play_mus_m30_r05_elevator');
	sleep_until (device_get_position (pylon1_elevator) >= 0.85);
	music_set_state('Play_mus_m30_r06_pylon');
end

// set state when each generator is destoyed
script static void music_forts1_destroy1()
	music_set_state('Play_mus_m30_e07a_forts_destroy_1');
end

script static void music_forts1_destroy2()
	music_set_state('Play_mus_m30_e07b_forts_destroy_2');
end

script static void music_forts1_destroy3()
	music_set_state('Play_mus_m30_e07c_forts_destroy_3');
end

script static void music_forts2_destroy1()
	music_set_state('Play_mus_m30_e13a_forts_2_destroy_1');
end

script static void music_forts2_destroy2()
	music_set_state('Play_mus_m30_e13b_forts_2_destroy_2');
end

script static void music_forts2_destroy3()
	music_set_state('Play_mus_m30_e13c_forts_2_destroy_3');
end

script static void music_for_forts_2()
	music_set_state('Play_mus_m30_r09_forts');
	sleep_until (b_forts2_has_ended == TRUE, 1);
	music_set_state('Play_mus_m30_r10_elevator');
	sleep_until (device_get_position (pylon2_elevator) >= 0.85);
	music_set_state('Play_mus_m30_r11_pylon');
end

script static void music_for_beam1_obs_deck()
	sleep_until(volume_test_players(tv_pylon_1_exit) and (portal_count == 10), 1);
	dprint("music_for_beam1_obs_deck - set state");
	music_set_state('Play_mus_m30_r17_observationdeck_2');
end

script static void music_for_beam2_obs_deck()
	sleep_until(volume_test_players(tv_pylon_2_exit) and (portal_count == 20), 1);
	dprint("music_for_beam2_obs_deck - set state");
	music_set_state('Play_mus_m30_r18_observationdeck_3');
end

script static void music_for_donut()
	music_set_state('Play_mus_m30_r12_donut');
end

script static void f_mus_m30_r19_escape_section2()
	dprint("f_mus_m30_r19_escape_section2");
	music_set_state('Play_mus_m30_r19_escape1');
end

script static void f_mus_m30_r20_escape_section3()
	dprint("f_mus_m30_r20_escape_section3");
	music_set_state('Play_mus_m30_r20_escape2');
end

script static void f_mus_m30_r21_escape_section4()
	dprint("f_mus_m30_r21_escape_section4");
	music_set_state('Play_mus_m30_r21_escape3');
end

script static void f_mus_m30_r22_escape_section5()
	dprint("f_mus_m30_r22_escape_section5");
	music_set_state('Play_mus_m30_r22_escape4');
end

// ****** START MUSIC ******
// First pawn encounter
script static void f_mus_m30_e01_start()
	dprint("f_mus_m30_e01");
	music_set_state('Play_mus_m30_e01_caves_a');
	sound_set_state('Set_State_M30_Caves_Encounter1'); 
end

// Grassy hill encounter
script static void f_mus_m30_e02_start()
	dprint("f_mus_m30_e02");
	music_set_state('Play_mus_m30_e03_caves_b');
	sound_set_state('Set_State_M30_Caves_Encounter2'); 
end

script static void f_mus_m30_e03_start()
	dprint("f_mus_m30_e03");
	music_set_state('Play_mus_m30_e05_exterior_1');
	sound_set_state('Set_State_M30_Exterior1_Encounter1'); 
end

script static void f_mus_m30_e04_start()
	dprint("f_mus_m30_e04");
	music_set_state('Play_mus_m30_e07_forts_1');
	sound_set_state('Set_State_M30_Forts1_Encounter1'); 
end

script static void f_mus_m30_e05_start()
	dprint("f_mus_m30_e05");
	music_set_state('Play_mus_m30_e09_exterior_2a');
	sound_set_state('Set_State_M30_Exterior2_Encounter1'); 
end

script static void f_mus_m30_e06_start()
	dprint("f_mus_m30_e06");
	music_set_state('Play_mus_m30_e11_exterior_2b');
	sound_set_state('Set_State_M30_Exterior2_Encounter2'); 
end

script static void f_mus_m30_e07_start()
	dprint("f_mus_m30_e07");
	music_set_state('Play_mus_m30_e13_forts_2');
	sound_set_state('Set_State_M30_Forts2_Encounter1'); 
end

script static void f_mus_m30_e08_start()
	dprint("f_mus_m30_e08");
	music_set_state('Play_mus_m30_e15_donut_a');
	sound_set_state('Set_State_M30_Donut_A_Encounter'); 
end

script static void f_mus_m30_e09_start()
	dprint("f_mus_m30_e09");
	music_set_state('Play_mus_m30_e17_donut_b_left');
	sound_set_state('Set_State_M30_Donut_B_Left_Encounter'); 
end

script static void f_mus_m30_e10_start()
	dprint("f_mus_m30_e10");
	music_set_state('Play_mus_m30_e19_donut_b_right');
	sound_set_state('Set_State_M30_Donut_B_Right_Encounter'); 
end

script static void f_mus_m30_e11_start()
	dprint("f_mus_m30_e11");
	music_set_state('Play_mus_m30_e21_donut_final');
	sound_set_state('Set_State_M30_Donut_Final_Encounter'); 
end

// not currently used since Play_mus_m30_r15_escape has just been set
script static void f_mus_m30_e12_start()
	dprint("f_mus_m30_e12");
	music_set_state('Play_mus_m30_e23_escape');
end


// ****** FINISH MUSIC ******
script static void f_mus_m30_e01_finish()
	dprint("f_mus_m30_e01");
	music_set_state('Play_mus_m30_e02_caves_a_end');
	sound_set_state('Set_State_M30_Caves');
end

script static void f_mus_m30_e02_finish()
	dprint("f_mus_m30_e02");
	music_set_state('Play_mus_m30_e04_caves_b_end');
	sound_set_state('Set_State_M30_Caves');
end

script static void f_mus_m30_e03_finish()
	dprint("f_mus_m30_e03");
	music_set_state('Play_mus_m30_e06_exterior_1_end');
	sound_set_state('Set_State_M30_Exterior1');
end

script static void f_mus_m30_e04_finish()
	dprint("f_mus_m30_e04");
	music_set_state('Play_mus_m30_e08_forts_1_end');
	sound_set_state('Set_State_M30_Forts1');
end

script static void f_mus_m30_e05_finish()
	dprint("f_mus_m30_e05");
	music_set_state('Play_mus_m30_e10_exterior_2a_end');
	sound_set_state('Set_State_M30_Exterior2');
end

script static void f_mus_m30_e06_finish()
	dprint("f_mus_m30_e06");
	music_set_state('Play_mus_m30_e12_exterior_2b_end');
	sound_set_state('Set_State_M30_Exterior2');
end

script static void f_mus_m30_e07_finish()
	dprint("f_mus_m30_e07");
	music_set_state('Play_mus_m30_e14_forts_2_end');
	sound_set_state('Set_State_M30_Forts2');
end

script static void f_mus_m30_e08_finish()
	dprint("f_mus_m30_e08");
	music_set_state('Play_mus_m30_e16_donut_a_end');
	sound_set_state('Set_State_M30_Donut');
end

script static void f_mus_m30_e09_finish()
	dprint("f_mus_m30_e09");
	music_set_state('Play_mus_m30_e18_donut_b_left_end');
	sound_set_state('Set_State_M30_Donut');
end

script static void f_mus_m30_e10_finish()
	dprint("f_mus_m30_e10");
	music_set_state('Play_mus_m30_e20_donut_b_right_end');
	sound_set_state('Set_State_M30_Donut');
end

script static void f_mus_m30_e11_finish()
	dprint("f_mus_m30_e11");
	music_set_state('Play_mus_m30_e22_donut_final_end');
	sound_set_state('Set_State_M30_Donut');
end

script static void f_mus_m30_e12_finish()
	dprint("f_mus_m30_e12");
	music_set_state('Play_mus_m30_e24_escape_end');
end

// ****** MUSIC TWEAKS ******
script static void f_music_m30_tweak01()
	dprint("f_music_m30_tweak01");
	music_set_state('Play_mus_m30_t01_tweak');
end

script static void f_music_m30_tweak02()
	dprint("f_music_m30_tweak02");
	music_set_state('Play_mus_m30_t02_tweak');
end

script static void f_music_m30_tweak03()
	dprint("f_music_m30_tweak03");
	music_set_state('Play_mus_m30_t03_tweak');
end

script static void f_music_m30_tweak04()
	dprint("f_music_m30_tweak04");
	music_set_state('Play_mus_m30_t04_tweak');
end

script static void f_music_m30_tweak05()
	dprint("f_music_m30_tweak05");
	music_set_state('Play_mus_m30_t05_tweak');
end

script static void f_music_m30_tweak06()
	dprint("f_music_m30_tweak06");
	music_set_state('Play_mus_m30_t06_tweak');
end

script static void f_music_m30_tweak07()
	dprint("f_music_m30_tweak07");
	music_set_state('Play_mus_m30_t07_tweak');
end

script static void f_music_m30_tweak08()
	dprint("f_music_m30_tweak08");
	music_set_state('Play_mus_m30_t08_tweak');
end

script static void f_music_m30_tweak09()
	dprint("f_music_m30_tweak09");
	music_set_state('Play_mus_m30_t09_tweak');
end

script static void f_music_m30_tweak10()
	dprint("f_music_m30_tweak10");
	music_set_state('Play_mus_m30_t10_tweak');
end

// --- End m30_cryptum_audio.hsc ---

// --- Begin m30_cryptum_donut.hsc ---
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343
//
// 	Mission: 					m30_cryptum
//	Subsection: 			donut
//										
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343

// =================================================================================================
// =================================================================================================
// *** GLOBALS ***
// =================================================================================================
// =================================================================================================

global short aa_fire = 5;
global short ledge_flank = 5;
global short playfighting = 10;
global short donut_switch_check = 0;
global short left1_obj_count = 0;
global short left2_obj_count = 0;
global short right1_obj_count = 0;
global short right2_obj_count = 0;
global short final_obj_count = 0;
global boolean b_phantom_in_place = FALSE;
global boolean b_commander_has_shot = FALSE;
global boolean b_right1_covenant_advance = FALSE;
global boolean b_cryptum_cinematic_go = FALSE;
global boolean b_right_side2_knights_dead = FALSE;
global boolean b_donut_left_door_button_hit = FALSE;
global boolean b_donut_right_door_button_hit = FALSE;
global object g_ics_player2 = NONE;

// =================================================================================================
// =================================================================================================
// *** DONUT ***
// =================================================================================================
// =================================================================================================

script dormant m30_cryptum_donut()	
	sleep_until (volume_test_players (tv_insertion_wake_donut), 1);
	dprint  ("::: donut start :::");
//	wake (camera_shake_donut);
	wake (cryptum_obj_blip);
//	wake (ambient_turrets);
	wake (left_side_spawn_1);
	wake (left_side_spawn_2);
	wake (left_room_checkpoint);
	wake (final_knight_fight);
	wake (right_side_spawn_1);
	wake (right_side_spawn_2);
	wake (right_room_checkpoint);
	wake (left_endramp_save);
	wake (right_endramp_save);
	wake (phantom_flybys);
	wake (left2_obj_count_10);
	wake (right2_obj_count_10);
	wake (m30_donut_enter); //Narrative Scripting
	wake (f_donut_repeating_gc);

	game_save_no_timeout();
	ai_lod_full_detail_actors (24);
	data_mine_set_mission_segment ("m30_donut");
	effects_distortion_enabled = FALSE;
	m30_donut_grinder->f_animate();
	thread (donut_door_activate());	
	thread (f_mus_m30_e08_start());
	
	device_set_position_immediate (donut_left_elevator_01, 0);
	device_set_power (donut_left_elevator_01, 0);
	device_set_position_immediate (donut_right_elevator_01, 0);
	device_set_power (donut_right_elevator_01, 0);
	dprint ("elevators turned off");
	
	Object_set_function_variable (m30_donut_grinder, electricity_on, 1, 0);
	
	game_insertion_point_unlock (9);
	dprint ("you unlocked the Donut Insertion Point!");
	
	if game_difficulty_get_real() == "legendary" then		
		wake (donut_jackal_check);
	else	
		sleep (1);
	end
	
	kill_script (ghost_boost_help);
	kill_script (destroy_all_banshees);
	
end

// ====================================================================
// DONUT DOORS =================================================
// ====================================================================

script static void donut_door_activate()
	dprint ("donut_door_activate is a go");

	wake (donut_door_failsafe);

	sleep_until ((ai_task_status (cov_skirmish.parent) == ai_task_status_exhausted) or (donut_skirmish_task_check()) or (b_donut_fight_failsafe == TRUE), 1);
	
	dprint ("covvies are dead, blipping and activating switches");
	sleep_forever (donut_door_failsafe);
	
	sleep (60);

	f_blip_flag (donut_left_door_flag, "activate");
	f_blip_flag (donut_right_door_flag, "activate");
	device_group_set_immediate (left_front_door_group, 1);
	device_group_set_immediate (right_front_door_group, 1);
	thread (donut_door_logic());
//	thread (donut_left_door_open());
	//thread (donut_right_door_open());
	
end

script static boolean donut_skirmish_task_check()

	ai_task_status (cov_skirmish.parent) == ai_task_status_empty and ai_task_status (cov_skirmish.sniper) == ai_task_status_empty and ai_task_status (cov_skirmish.grunts) == ai_task_status_empty;

end

global boolean b_donut_fight_failsafe = FALSE;

script dormant donut_door_failsafe
	sleep_until (volume_test_players (tv_donut_skirmish_timer), 1);
	
	sleep (30 * 60);
	
	dprint ("door lock failsafe timer triggered");
	b_donut_fight_failsafe = TRUE;
	
end

script static void f_activator_get_2( object trigger, unit activator )
	g_ics_player2 = activator;
end

script static void donut_door_logic()
	
	inspect (device_get_position (donut_right_front_door));
  dprint ("right door status above");
  inspect (device_get_position (donut_left_front_door));
  dprint ("left door status above");
	
	sleep_until ((device_get_position (donut_right_front_door) != 0) or (device_get_position (donut_left_front_door) != 0), 1);
	//sleep_until (device_get_position (donut_left_front_door) != 0);

	inspect (device_get_position (donut_right_front_door));
  dprint ("right door status above");
  inspect (device_get_position (donut_left_front_door));
  dprint ("left door status above");

	sleep (5);

		//if the right door is hit and opening

	
		//if the left door is hit and opening
		if (device_get_position (donut_left_front_door) != 0) then
	
			device_group_set_immediate (left_front_door_group, 0);
			device_group_set_immediate (right_front_door_group, 0);
			dprint ("left door opening, right door locked");
		
			f_unblip_flag (donut_left_door_flag);
			f_unblip_flag (donut_right_door_flag);
			dprint ("button press anim go!");
			pup_play_show ("left_button_press");

			sleep (60);
	
			pup_play_show ("left_door_open");
		
			sleep (1);
		
			thread (f_donut_left_door_2_open());
			thread (f_donut_left_door_3_open());

			wake (f_bcs_blip_left_elevator);
			
		elseif (device_get_position (donut_right_front_door) != 0) then
	
			device_group_set_immediate (right_front_door_group, 0);
			device_group_set_immediate (left_front_door_group, 0);
			dprint ("right door opening, left door locked");
	
			f_unblip_flag (donut_left_door_flag);
			f_unblip_flag (donut_right_door_flag);
	
			dprint ("button press anim go!");
			pup_play_show ("right_button_press");

			sleep (60);

			pup_play_show ("right_door_open");
	
			sleep (1);
	
			thread (f_donut_right_door_2_open());
			thread (f_donut_right_door_3_open());	

			wake (f_bcs_blip_right_elevator);

		end
	
end

script static void donut_left_door_open()
	
	sleep_until (device_get_position (donut_left_front_door) != 0);
	
	sleep (5);
	
	if (device_get_position (donut_right_front_door) != 1) then
	
		device_group_set_immediate (left_front_door_group, 0);
		device_group_set_immediate (right_front_door_group, 0);
		sleep_forever (donut_right_door_open);
		
		f_unblip_flag (donut_left_door_flag);
		f_unblip_flag (donut_right_door_flag);
		dprint ("button press anim go!");
		pup_play_show ("left_button_press");

		sleep (60);
	
		dprint ("left door opening, right door locked");
		pup_play_show ("left_door_open");
	
		sleep (1);
		
		thread (f_donut_left_door_2_open());
		thread (f_donut_left_door_3_open());
	
	elseif (device_get_position (donut_right_front_door) != 0) then
	
		device_group_set_immediate (left_front_door_group, 1);
		
		thread (donut_left_door_open());
		
	end
	
end

script static void donut_right_door_open()
	
	sleep_until (device_get_position (donut_right_front_door) != 0);
	
	sleep (5);
	
	if 	(device_get_position (donut_left_front_door) != 1) then
		
		device_group_set_immediate (right_front_door_group, 0);
		device_group_set_immediate (left_front_door_group, 0);
		sleep_forever (donut_left_door_open);	
	
		f_unblip_flag (donut_left_door_flag);
		f_unblip_flag (donut_right_door_flag);
	
		dprint ("button press anim go!");
		pup_play_show ("right_button_press");

		sleep (60);
	
		dprint ("right door opening, left door locked");
		pup_play_show ("right_door_open");
	
		sleep (1);
	
		thread (f_donut_right_door_2_open());
		thread (f_donut_right_door_3_open());
	
	elseif (device_get_position (donut_right_front_door) != 0) then
	
		device_group_set_immediate (right_front_door_group, 1);
		
		thread (donut_right_door_open());
	
	end
	
end

script static void f_donut_left_door_2_open()
	sleep_until (volume_test_players (tv_donut_left_door_2_open), 1);

	donut_door_left_02->open_slow();
	
	thread (f_donut_left_door_2_close());
end

script static void f_donut_left_door_2_close()
	sleep_until (volume_test_players (tv_donut_left_door_2_close), 1);

	donut_door_left_02->close_slow();
	
	thread (f_donut_left_door_2_open());
end

script static void f_donut_left_door_3_open()
	sleep_until (volume_test_players (tv_donut_left_door_3_open), 1);

	donut_door_left_03->open_slow();
	
	thread (f_donut_left_door_3_close());
end

script static void f_donut_left_door_3_close()
	sleep_until (volume_test_players (tv_donut_left_door_3_close), 1);

	donut_door_left_03->close_slow();
	
	thread (f_donut_left_door_3_open());
end



script static void f_donut_right_door_2_open()
	sleep_until (volume_test_players (tv_donut_right_door_2_open), 1);

	donut_door_right_02->open_slow();
	
	thread (f_donut_right_door_2_close());
end

script static void f_donut_right_door_2_close()
	sleep_until (volume_test_players (tv_donut_right_door_2_close), 1);

	donut_door_right_02->close_slow();
	
	thread (f_donut_right_door_2_open());
end

script static void f_donut_right_door_3_open()
	sleep_until (volume_test_players (tv_donut_right_door_3_open), 1);

	donut_door_right_03->open_slow();
	
	thread (f_donut_right_door_3_close());
end

script static void f_donut_right_door_3_close()
	sleep_until (volume_test_players (tv_donut_right_door_3_close), 1);

	donut_door_right_03->close_slow();
	
	thread (f_donut_right_door_3_open());
end

script dormant f_bcs_blip_left_elevator()
	sleep_until (volume_test_players (tv_left_spawn_1), 1);
	
	f_blip_position_breadcrumbs(147.39, -90.05, -130.71, "donut_left_elevator", "default");
	sleep_until (volume_test_players (tv_left_elevator), 1);
	f_unblip_position_breadcrumbs("donut_left_elevator");
end

script dormant f_bcs_blip_right_elevator()
	sleep_until (volume_test_players (tv_right_spawn_1), 1);
	
	f_blip_position_breadcrumbs(147.39, -157.17, -130.71, "donut_right_elevator", "default");
	sleep_until (volume_test_players (tv_right_elevator), 1);
	f_unblip_position_breadcrumbs("donut_right_elevator");
end

// ====================================================================
// GARBAGE COLLECTION =================================================
// ====================================================================

script dormant f_donut_repeating_gc()
	sleep_until (volume_test_players (tv_donut_garbage), 1);
		
		repeat
		
			sleep( 30 * 30 );
			dprint( "Garbage collecting..." );
			add_recycling_volume_by_type (tv_donut_garbage, 1, 10, 1 + 2 + 1024);
		
		until (not volume_test_players (tv_donut_garbage), 1);	

end

// ====================================================================
// OBJECTIVE COUNT CHANGES ============================================
// ====================================================================

script dormant left2_obj_count_10
	sleep_until (volume_test_players (tv_left2_obj_10), 1);
	
	dprint ("left2_obj_count set to 10");
	left2_obj_count = 10;
	
end

script dormant right2_obj_count_10
	sleep_until (volume_test_players (tv_right2_obj_10), 1);
	
	dprint ("right2_obj_count set to 10");
	right2_obj_count = 10;
	
end

// ====================================================================
// PLAYFIGHTING STUFF =================================================
// ====================================================================

script command_script donut_playfighting
	unit_only_takes_damage_from_players_team (ai_current_actor, TRUE);
end

// ====================================================================
// AMBIENT SCRIPTS ====================================================
// ====================================================================

script dormant camera_shake_donut()
	sleep_until (volume_test_players (tv_donut_ambience), 1);
	sleep (random_range (120, 300));
	thread(start_camera_shake_loop (medium, long, donut_camera_shake_medium)); 
	sleep (random_range (120, 300));
	thread(start_camera_shake_loop (weak, long, donut_camera_shake_weak));
end

script dormant cryptum_obj_blip()
	sleep_until (volume_test_players (tv_cryptum_obj1) or volume_test_players (tv_cryptum_obj2), 1);
	
	f_blip_flag (cryptum_button_flag, "activate");
	
	device_group_set_immediate (cryptum_controlgroup, 1);
	
	object_hide (cryptum_activate_button, TRUE);
	
	wake (cryptum_activate);
end

script dormant cryptum_activate()
	sleep_until (device_get_position (cryptum_activate_button) != 0);
	sleep_forever(f_dialog_m30_cryptum_approach);
	kill_script(f_dialog_m30_cryptum_approach);
	f_unblip_flag (cryptum_button_flag);
	donut_switch_check = 15;
	dprint ("g_ics_player is set to player");
	sleep (5);
	effects_distortion_enabled = TRUE;
	
	f_start_cin_m31_transition();
	local long show = pup_play_show(cryptum);	
	device_group_set_immediate (cryptum_controlgroup, 0);
		

		
	//sleep_until (not pup_is_playing(show) , 1);
	

	
end

script dormant donut_jackal_check
		repeat
		sleep_until (volume_test_players (tv_jackal_check), 1);
	
		sleep (30 * 5);
		
		if
			
			volume_test_players (tv_jackal_check)
		
		then

			dprint ("boop");
			sound_impulse_start(sound\game_sfx\ui\button_based_ui_sounds\start_menu_open, NONE, 1 );			
			object_create (portal_crate_2);
			sleep (1);
			sleep_until(object_get_health(portal_crate_2) < 1 , 1);
  		sound_impulse_start(sound\game_sfx\ui\button_based_ui_sounds\start_menu_open, NONE, 1 );
			object_destroy (portal_crate_2);
			object_create (portal_crate_3);
			sleep (1);
			sleep_until(object_get_health(portal_crate_3) < 1 , 1);
  		sound_impulse_start(sound\game_sfx\ui\button_based_ui_sounds\start_menu_open, NONE, 1 );
  		object_destroy (portal_crate_3);

  		sleep (5);
  
			sound_impulse_start(sound\game_sfx\ui\button_based_ui_sounds\start_menu_open, NONE, 1 );

 			object_create (old_debug_rack_2);
			object_create (old_debug_rack_3);

		end

	until (object_valid (old_debug_rack_2) or volume_test_players (tv_left_spawn_1) or volume_test_players (tv_right_spawn_1), 1);
	
end

script dormant ambient_turrets()
	sleep_until (volume_test_players (tv_donut_ambience), 1);
	
	ai_place (aa_turret_left_1);
	vehicle_hover (aa_turret_left_1, TRUE);
	ai_disregard (ai_actors(aa_turret_left_1), TRUE);

	ai_place (aa_turret_left_2);
	vehicle_hover (aa_turret_left_2, TRUE);
	ai_disregard (ai_actors(aa_turret_left_2), TRUE);
	
	ai_place (aa_turret_left_3);
	vehicle_hover (aa_turret_left_3, TRUE);
	ai_disregard (ai_actors(aa_turret_left_3), TRUE);
	
	ai_place (aa_turret_left_4);
	vehicle_hover (aa_turret_left_4, TRUE);
	ai_disregard (ai_actors(aa_turret_left_4), TRUE);
	
	ai_place (aa_turret_right_1);
	vehicle_hover (aa_turret_right_1, TRUE);
	ai_disregard (ai_actors(aa_turret_right_1), TRUE);

	ai_place (aa_turret_right_2);
	vehicle_hover (aa_turret_right_2, TRUE);
	ai_disregard (ai_actors(aa_turret_right_2), TRUE);
	
	ai_place (aa_turret_right_3);
	vehicle_hover (aa_turret_right_3, TRUE);
	ai_disregard (ai_actors(aa_turret_right_3), TRUE);
	
	ai_place (aa_turret_right_4);
	vehicle_hover (aa_turret_right_4, TRUE);
	ai_disregard (ai_actors(aa_turret_right_4), TRUE);
	
end

// ====================================================
// GAME SAVES
// ====================================================

script dormant left_endramp_save()
	sleep_until (volume_test_players (tv_final_ramp_left_save), 1);
	
	thread (donut_left_area1_cleanup());
	thread (donut_left_area2_cleanup());
	
	game_save_no_timeout();
end

script dormant right_endramp_save()
	sleep_until (volume_test_players (tv_final_ramp_right_save), 1);	

	cs_run_command_script (phantom_right_side2_flank, cs_phantom_forced_retreat);
	b_right_side2_knights_dead = TRUE;

	thread (donut_right_area1_cleanup());
	thread (donut_right_area2_cleanup());

	game_save_no_timeout();
end

// ====================================================
// PHANTOM SPAWNING
// ====================================================

script dormant phantom_flybys()
	print ("phantom flybys set up");
	//ai_place (phantom_flyby_3);
	sleep_until (volume_test_players (tv_donut_ambience), 1);
	print ("incoming phantom flybys");
	ai_place (phantom_flyby_3);
	sleep (30);
	ai_place (phantom_flyby_1);
//	ai_place (phantom_flyby_4);
	sleep (30);
	ai_place (phantom_flyby_2);
	sleep (30 * 2);

end


// ====================================================
// PHANTOM COMMAND SCRIPTS
// ====================================================

script command_script cs_phantom_flyby_1
	object_set_scale (ai_vehicle_get(ai_current_actor), 0.01, 0);
	object_set_scale (ai_vehicle_get(ai_current_actor), 1.0, 120);
	cs_fly_to (ps_phantom_flyby_1.p0);
	cs_fly_to (ps_phantom_flyby_1.p1);
	cs_pause (1.0);
	cs_fly_to (ps_phantom_flyby_1.p3);
	cs_fly_to (ps_phantom_flyby_1.p4);
	cs_fly_to (ps_phantom_flyby_1.p5);
	cs_fly_to (ps_phantom_flyby_1.p6);
	object_set_scale (ai_vehicle_get(ai_current_actor), 0.01, 180);
	sleep (180);
	ai_erase (phantom_flyby_1);
end

script command_script cs_phantom_flyby_2
	object_set_scale (ai_vehicle_get(ai_current_actor), 0.01, 0);
	object_set_scale (ai_vehicle_get(ai_current_actor), 1.0, 120);
	cs_fly_to (ps_phantom_flyby_2.p0);
	cs_fly_to (ps_phantom_flyby_2.p1);
	cs_pause (2.0);
	cs_fly_to (ps_phantom_flyby_2.p2);
	cs_fly_to (ps_phantom_flyby_2.p3);
	cs_fly_to (ps_phantom_flyby_2.p4);
	object_set_scale (ai_vehicle_get(ai_current_actor), 0.01, 180);
	sleep (180);
	ai_erase (phantom_flyby_2);
end

script command_script cs_phantom_flyby_3
	object_set_scale (ai_vehicle_get(ai_current_actor), 0.01, 0);
	object_set_scale (ai_vehicle_get(ai_current_actor), 1.0, 90);
	
	ai_place (phantom_cov_skirmish_grunts);
	ai_place (phantom_cov_skirmish_jackal);
	
	//f_load_phantom (ai_vehicle_get(ai_current_actor),	"left", phantom_cov_skirmish_grunts, phantom_cov_skirmish_jackal, none, none);
	
	sleep_until (ai_living_count (phantom_cov_skirmish_grunts) > 0 and ai_living_count (phantom_cov_skirmish_jackal) > 0);
		
	ai_vehicle_enter_immediate ( phantom_cov_skirmish_grunts, phantom_flyby_3, "phantom_p_lb" );
	ai_vehicle_enter_immediate ( phantom_cov_skirmish_jackal, phantom_flyby_3, "phantom_p_lf" );

	cs_fly_to (ps_phantom_flyby_3.p2);
	cs_fly_to_and_face (ps_phantom_flyby_3.p3, ps_phantom_flyby_3.p4);
	f_unload_phantom (ai_vehicle_get(ai_current_actor),	"left");
	sleep (30);
	cs_fly_to (ps_phantom_flyby_3.p5);
	cs_fly_to (ps_phantom_flyby_3.p6);
	object_set_scale (ai_vehicle_get(ai_current_actor), 0.01, 240);
	sleep (240);
	ai_erase (phantom_flyby_3);
	
end

script command_script cs_phantom_3_jackal_left
	
	cs_move_towards_point (ps_skirmish_moves.p0, 0.2);
	cs_move_towards_point (ps_skirmish_moves.p1, 0.2);
	cs_move_towards_point (ps_skirmish_moves.p2, 0.2);
	
	ai_erase (ai_current_actor);
	
end

script command_script cs_phantom_3_jackal_right
	
	cs_move_towards_point (ps_skirmish_moves.p3, 0.2);
	cs_move_towards_point (ps_skirmish_moves.p4, 0.2);
	cs_move_towards_point (ps_skirmish_moves.p5, 0.2);
	
	ai_erase (ai_current_actor);
	
end

script command_script cs_phantom_flyby_4
	object_set_scale (ai_vehicle_get(ai_current_actor), 0.01, 0);
	object_set_scale (ai_vehicle_get(ai_current_actor), 1.0, 120);
	cs_fly_to (ps_phantom_flyby_4.p0);
	cs_fly_to (ps_phantom_flyby_4.p1);
	cs_fly_to (ps_phantom_flyby_4.p2);
	effect_new_at_ai_point (fx\reach\fx_library\explosions\human_explosion_aerial\human_explosion_aerial.effect, ps_phantom_flyby_4.p2);
	damage_object (unit_get_vehicle(ai_current_actor), engine_right, 10000);
	damage_object (unit_get_vehicle(ai_current_actor), engine_left, 10000);
	damage_object (unit_get_vehicle(ai_current_actor), hull, 10000);
end


// ====================================================
// AA TURRET COMMAND SCRIPTS
// ====================================================

script command_script aa_turret_left_1_shoot()
	repeat
		cs_shoot_point (TRUE, ps_turret_left_1.p0);
		sleep (random_range (15, 90));
		cs_shoot_point (TRUE, ps_turret_left_1.p1);
		sleep (random_range (15, 90));	
		cs_shoot_point (TRUE, ps_turret_left_1.p2);
		sleep (random_range (15, 90));
		cs_shoot_point (TRUE, ps_turret_left_1.p3);
		sleep (random_range (15, 90));
	until (1 == 0);
end

script command_script aa_turret_left_2_shoot()
	repeat
		cs_shoot_point (TRUE, ps_turret_left_2.p0);
		sleep (random_range (15, 90));
		cs_shoot_point (TRUE, ps_turret_left_2.p1);
		sleep (random_range (15, 90));	
		cs_shoot_point (TRUE, ps_turret_left_2.p2);
		sleep (random_range (15, 90));
		cs_shoot_point (TRUE, ps_turret_left_2.p3);
		sleep (random_range (15, 90));
	until (1 == 0);
end

script command_script aa_turret_left_3_shoot()
	repeat
		cs_shoot_point (TRUE, ps_turret_left_3.p0);
		sleep (random_range (15, 90));
		cs_shoot_point (TRUE, ps_turret_left_3.p1);
		sleep (random_range (15, 90));	
		cs_shoot_point (TRUE, ps_turret_left_3.p2);
		sleep (random_range (15, 90));
		cs_shoot_point (TRUE, ps_turret_left_3.p3);
		sleep (random_range (15, 90));
	until (1 == 0);
end

script command_script aa_turret_left_4_shoot()
	repeat
		cs_shoot_point (TRUE, ps_turret_left_4.p0);
		sleep (random_range (15, 90));
		cs_shoot_point (TRUE, ps_turret_left_4.p1);
		sleep (random_range (15, 90));	
		cs_shoot_point (TRUE, ps_turret_left_4.p2);
		sleep (random_range (15, 90));
		cs_shoot_point (TRUE, ps_turret_left_4.p3);
		sleep (random_range (15, 90));
	until (1 == 0);
end

script command_script aa_turret_right_1_shoot()
	repeat
		cs_shoot_point (TRUE, ps_turret_right_1.p0);
		sleep (random_range (15, 90));
		cs_shoot_point (TRUE, ps_turret_right_1.p1);
		sleep (random_range (15, 90));	
		cs_shoot_point (TRUE, ps_turret_right_1.p2);
		sleep (random_range (15, 90));
		cs_shoot_point (TRUE, ps_turret_right_1.p3);
		sleep (random_range (15, 90));
	until (1 == 0);
end

script command_script aa_turret_right_2_shoot()
	repeat
		cs_shoot_point (TRUE, ps_turret_right_2.p0);
		sleep (random_range (15, 90));
		cs_shoot_point (TRUE, ps_turret_right_2.p1);
		sleep (random_range (15, 90));	
		cs_shoot_point (TRUE, ps_turret_right_2.p2);
		sleep (random_range (15, 90));
		cs_shoot_point (TRUE, ps_turret_right_2.p3);
		sleep (random_range (15, 90));
	until (1 == 0);
end

script command_script aa_turret_right_3_shoot()
	repeat
		cs_shoot_point (TRUE, ps_turret_right_3.p0);
		sleep (random_range (15, 90));
		cs_shoot_point (TRUE, ps_turret_right_3.p1);
		sleep (random_range (15, 90));	
		cs_shoot_point (TRUE, ps_turret_right_3.p2);
		sleep (random_range (15, 90));
		cs_shoot_point (TRUE, ps_turret_right_3.p3);
		sleep (random_range (15, 90));
	until (1 == 0);
end

script command_script aa_turret_right_4_shoot()
	repeat
		cs_shoot_point (TRUE, ps_turret_right_4.p0);
		sleep (random_range (15, 90));
		cs_shoot_point (TRUE, ps_turret_right_4.p1);
		sleep (random_range (15, 90));	
		cs_shoot_point (TRUE, ps_turret_right_4.p2);
		sleep (random_range (15, 90));
		cs_shoot_point (TRUE, ps_turret_right_4.p3);
		sleep (random_range (15, 90));
	until (1 == 0);
end

// ====================================================
// LEFT SIDE - NEW VERSION
// ====================================================

script dormant left_side_spawn_1()
	sleep_until (volume_test_players (tv_left_spawn_1), 1);
	
	thread (f_mus_m30_e08_finish());
	thread (f_mus_m30_e09_start());
	
	game_save();
	
	ai_place (area1_left_cov_1);
	ai_prefer_target_team (area1_left_cov_1, forerunner);
	ai_place (area1_left_cov_2);
	ai_prefer_target_team (area1_left_cov_2, forerunner);
	ai_place (area1_left_cov_3);
	ai_prefer_target_team (area1_left_cov_3, forerunner);
	ai_place (area1_left_cov_4);
	ai_prefer_target_team (area1_left_cov_4, forerunner);
	
	ai_place (area1_left_fore_1);
	ai_disregard (ai_actors(area1_left_fore_1), TRUE);
	ai_place (area1_left_fore_2);
	unit_only_takes_damage_from_players_team (area1_left_fore_2, TRUE);
	ai_prefer_target_team (area1_left_fore_2, covenant);
	ai_allow_resurrect (area1_left_fore_2, FALSE);
	ai_place (area1_left_fore_3);
	unit_only_takes_damage_from_players_team (area1_left_fore_3, TRUE);
	ai_prefer_target_team (area1_left_fore_3, covenant);
	ai_place (area1_left_fore_4);
	unit_only_takes_damage_from_players_team (area1_left_fore_4, TRUE);
	ai_prefer_target_team (area1_left_fore_4, covenant);
	ai_place (area1_left_fore_5);
	unit_only_takes_damage_from_players_team (area1_left_fore_5, TRUE);
	ai_prefer_target_team (area1_left_fore_5, covenant);
	
	sleep (5);
	
	AutomatedTurretActivate (ai_vehicle_get(area1_left_fore_1.spawn_points_0));
	
	wake (left_encounter_1_over_save);
	
end

script static void donut_left_area1_cleanup()
	dprint ("attempting to clean up donut_left_side, area1");
	f_ai_garbage_kill (area1_left_cov_1, 5, -1, -1, -1, TRUE);
	f_ai_garbage_kill (area1_left_cov_2, 5, -1, -1, -1, TRUE);
	f_ai_garbage_kill (area1_left_cov_3, 5, -1, -1, -1, TRUE);
	f_ai_garbage_kill (area1_left_cov_4, 5, -1, -1, -1, TRUE);
	f_ai_garbage_kill (area1_left_fore_1, 5, -1, -1, -1, TRUE);
	f_ai_garbage_kill (area1_left_fore_2, 5, -1, -1, -1, TRUE);
	f_ai_garbage_kill (area1_left_fore_3, 5, -1, -1, -1, TRUE);
	f_ai_garbage_kill (area1_left_fore_4, 5, -1, -1, -1, TRUE);
	f_ai_garbage_kill (area1_left_fore_5, 5, -1, -1, -1, TRUE);
end

script dormant left_encounter_1_over_save()

	sleep_until 
	(
	ai_living_count (left_area1_center_cov) == 0 and
	ai_living_count (left_area1_ledge_cov) == 0 and
	ai_living_count (area1_left_fore_1) == 0 and
	ai_living_count (area1_left_fore_2) == 0 and
	ai_living_count (area1_left_fore_3) == 0 and
	ai_living_count (area1_left_fore_4) == 0 and
	ai_living_count (area1_left_fore_5) == 0
	);
	
	game_save_no_timeout();
	
end

script dormant left_room_checkpoint()
	sleep_until (volume_test_players (tv_left_spawn_2), 1);
	wake (donut_left_side_elevator_poweron);
	sleep_forever (left_encounter_1_over_save);
	thread (donut_left_area1_cleanup());
	wake (final_right_side_cov_spawn);
	sleep (5);
	game_save_no_timeout();
end

script dormant donut_left_side_elevator_poweron
	
	sleep_until (volume_test_players (tv_left_elevator), 1);
		
	device_set_power (donut_left_elevator_01, 1);
	
end


script dormant left_side_objcon
	sleep_until (volume_test_players (tv_left1_obj_10), 1);
	
	left1_obj_count = 10;
	dprint ("left1_obj_count = 10");
	
end

script dormant left_side_spawn_2()
	sleep_until (volume_test_players (tv_left_spawn_2), 1);
	
	ai_place (area2_left_cov_1);
	ai_place (area2_left_cov_2);
	ai_place (area2_left_cov_3);
	ai_place (area2_left_cov_4);
	
	ai_place (area2_left_fore_1);
	unit_only_takes_damage_from_players_team (area2_left_fore_1, TRUE);
	ai_prefer_target_team (area2_left_fore_1, covenant);
	ai_place (area2_left_fore_2);
	unit_only_takes_damage_from_players_team (area2_left_fore_2, TRUE);
	ai_prefer_target_team (area2_left_fore_2, covenant);
	ai_place (area2_left_fore_3);
	unit_only_takes_damage_from_players_team (area2_left_fore_3, TRUE);
	ai_prefer_target_team (area2_left_fore_3, covenant);
	ai_place (area2_left_fore_4);
	unit_only_takes_damage_from_players_team (area2_left_fore_4, TRUE);
	ai_prefer_target_team (area2_left_fore_4, covenant);
	//ai_place (area2_left_fore_5);
	//unit_only_takes_damage_from_players_team (area2_left_fore_5, TRUE);
	//ai_prefer_target_team (area2_left_fore_5, covenant);
	//ai_disregard (ai_actors(area2_left_fore_5), TRUE);
	
	wake (left_encounter_2_over_save);
	
	sleep (5);
	
	AutomatedTurretActivate (ai_vehicle_get(area2_left_fore_5.spawn_points_0));

end

script dormant left_encounter_2_over_save()

	sleep_until 
	(
	ai_living_count (area2_left_cov_1) == 0 and
	ai_living_count (area2_left_cov_2) == 0 and
	ai_living_count (area2_left_cov_3) == 0 and
	ai_living_count (area2_left_cov_4) == 0 and
	ai_living_count (area1_left_fore_1) == 0 and
	ai_living_count (area1_left_fore_2) == 0 and
	ai_living_count (area1_left_fore_3) == 0 and
	ai_living_count (area1_left_fore_4) == 0 and
	ai_living_count (area1_left_fore_5) == 0
	);
	
	game_save_no_timeout();
	
end

script static void donut_left_area2_cleanup()
	dprint ("attempting to clean up donut_left_side, area2");
	f_ai_garbage_kill (area2_left_cov_1, 5, -1, -1, -1, FALSE);
	f_ai_garbage_kill (area2_left_cov_2, 5, -1, -1, -1, FALSE);
	f_ai_garbage_kill (area2_left_cov_3, 5, -1, -1, -1, FALSE);
	f_ai_garbage_kill (area2_left_cov_4, 5, -1, -1, -1, FALSE);
	f_ai_garbage_kill (area2_left_fore_1, 5, -1, -1, -1, FALSE);
	f_ai_garbage_kill (area2_left_fore_2, 5, -1, -1, -1, FALSE);
	f_ai_garbage_kill (area2_left_fore_3, 5, -1, -1, -1, FALSE);
	f_ai_garbage_kill (area2_left_fore_4, 5, -1, -1, -1, FALSE);
	f_ai_garbage_kill (area2_left_fore_5, 5, -1, -1, -1, FALSE);
end


// ====================================================
// RIGHT SIDE - NEW VERSION
// ====================================================

script dormant right_side_spawn_1()
	sleep_until (volume_test_players (tv_right_spawn_1), 1);
	
	thread (f_mus_m30_e08_finish());
	thread (f_mus_m30_e10_start());
	
	game_save();
	
	ai_place (phantom_crash_1);
	
	ai_place (area1_right_cov_1);
	unit_only_takes_damage_from_players_team (area1_right_cov_1, TRUE);
	ai_place (area1_right_cov_2);
	unit_only_takes_damage_from_players_team (area1_right_cov_2, TRUE);
	ai_place (area1_right_cov_3);
	unit_only_takes_damage_from_players_team (area1_right_cov_3, TRUE);
	
	ai_place (area1_right_fore_1);
	ai_disregard (ai_actors(area1_right_fore_1), TRUE);
	ai_place (area1_right_fore_2);
	ai_place (area1_right_fore_3);
	ai_place (area1_right_fore_4);
	ai_place (area1_right_fore_5);
	
	sleep (5);
	
	AutomatedTurretActivate (ai_vehicle_get(area1_right_fore_1.spawn_points_0));

end

script dormant right_encounter_1_over_save()
	
	sleep_until 
	(
	ai_living_count (area1_right_cov_1) == 0 and
	ai_living_count (area1_right_cov_2) == 0 and
	ai_living_count (area1_right_cov_3) == 0 and
	ai_living_count (area1_right_fore_1) == 0 and
	ai_living_count (area1_right_fore_2) == 0 and
	ai_living_count (area1_right_fore_3) == 0 and
	ai_living_count (area1_right_fore_4) == 0 and
	ai_living_count (area1_right_fore_5) == 0
	);
	
	game_save_no_timeout();

end

script static void right_side_1_debris_move()
	dprint ("boom.");
	ai_kill (area1_right_fore_2);
	ai_kill (area1_right_fore_3);
	ai_kill (area1_right_fore_4);
	ai_kill (area1_right_fore_5);
	
	sleep (30 * 2);
	add_recycling_volume (tv_rightside1_recycle, 1, 5);

end


script static void donut_right_area1_cleanup()
	dprint ("attempting to clean up donut_right_side, area1");
	f_ai_garbage_kill (area1_right_cov_1, 5, -1, -1, -1, TRUE);
	f_ai_garbage_kill (area1_right_cov_2, 5, -1, -1, -1, TRUE);
	f_ai_garbage_kill (area1_right_cov_3, 5, -1, -1, -1, TRUE);
	f_ai_garbage_kill (area1_right_fore_1, 5, -1, -1, -1, TRUE);
	f_ai_garbage_kill (area1_right_fore_2, 5, -1, -1, -1, TRUE);
	f_ai_garbage_kill (area1_right_fore_3, 5, -1, -1, -1, TRUE);
	f_ai_garbage_kill (area1_right_fore_4, 5, -1, -1, -1, TRUE);
	f_ai_garbage_kill (area1_right_fore_5, 5, -1, -1, -1, TRUE);
end

script command_script donut_phantom_crash_1
	cs_shoot (TRUE);
	object_set_scale (ai_vehicle_get(ai_current_actor), 0.01, 0);
	object_set_scale (ai_vehicle_get(ai_current_actor), 1.0, 90);
	cs_fly_to (ps_phantom_crash_1.p0);
	cs_fly_to (ps_phantom_crash_1.p1);
	
	b_phantom_in_place = TRUE;
	
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\phantom_crash\phantom_cliff_explosion1.effect, ps_phantom_crash_1.p1); 
	effect_new_at_ai_point (environments\solo\m10_crash\fx\flash_white.effect, ps_phantom_crash_1.p1);
	
	cs_fly_to (ps_phantom_crash_1.p4);
	
	b_right1_covenant_advance = TRUE;
	thread (right_side_1_debris_move());
	damage_object (coil_4, "default", 10000);
	damage_object (coil_5, "default", 10000);
	damage_object (unit_get_vehicle(ai_current_actor), engine_right, 10000);
	damage_object (unit_get_vehicle(ai_current_actor), engine_left, 10000);
	damage_object (unit_get_vehicle(ai_current_actor), hull, 10000);
	

	
end

script dormant right_side_spawn_2()
	sleep_until (volume_test_players (tv_right_spawn_2), 1);
	
	wake (donut_right_side_elevator_poweron);

	ai_place (area2_right_cov_1);
	unit_only_takes_damage_from_players_team (area2_right_cov_1, TRUE);
	ai_place (area2_right_cov_2);
	unit_only_takes_damage_from_players_team (area2_right_cov_2, TRUE);
	ai_place (area2_right_cov_3);
	unit_only_takes_damage_from_players_team (area2_right_cov_3, TRUE);
	
	//ai_place (area2_right_fore_1);
	//ai_disregard (ai_actors(area2_right_fore_1), TRUE);
	b_right_side2_knights_dead = FALSE;
	ai_place (area2_right_fore_2);
	ai_place (area2_right_fore_3);
	ai_place (area2_right_fore_4);

	AutomatedTurretActivate (ai_vehicle_get(area2_right_fore_1.spawn_points_0));

	sleep_until (volume_test_players (tv_donut_right_door_3_close), 1);

	sleep (30 * 2);

	ai_place (phantom_right_side2_flank);

end

script dormant right_encounter_2_over_save()
	
	sleep_until 
	(
	ai_living_count (area2_right_cov_1) == 0 and
	ai_living_count (area2_right_cov_2) == 0 and
	ai_living_count (area2_right_cov_3) == 0 and
	ai_living_count (area2_right_fore_1) == 0 and
	ai_living_count (area2_right_fore_2) == 0 and
	ai_living_count (area2_right_fore_3) == 0 and
	ai_living_count (area2_right_fore_4) == 0
	);
	
	game_save_no_timeout();

end

script dormant donut_right_side_elevator_poweron
	
	sleep_until (volume_test_players (tv_right_elevator), 1);
	
	device_set_power (donut_right_elevator_01, 1);
	
end

script static void donut_right_area2_cleanup()
	dprint ("attempting to clean up donut_right_side, area2");
	f_ai_garbage_kill (area2_right_cov_1, 5, -1, -1, -1, FALSE);
	f_ai_garbage_kill (area2_right_cov_2, 5, -1, -1, -1, FALSE);
	f_ai_garbage_kill (area2_right_cov_3, 5, -1, -1, -1, FALSE);
	f_ai_garbage_kill (area2_right_fore_1, 5, -1, -1, -1, FALSE);
	f_ai_garbage_kill (area2_right_fore_2, 5, -1, -1, -1, FALSE);
	f_ai_garbage_kill (area2_right_fore_3, 5, -1, -1, -1, FALSE);
	f_ai_garbage_kill (area2_right_fore_4, 5, -1, -1, -1, FALSE);

end

script command_script right_side2_flank_phantom
	object_set_scale (ai_vehicle_get(ai_current_actor), 0.01, 0);
	object_set_scale (ai_vehicle_get(ai_current_actor), 1.0, 60);
	cs_fly_to_and_face (ps_phantom_flank.p0, ps_phantom_flank.p1);
	unit_set_current_vitality (area2_right_fore_2, 0.1, 0.1);
	unit_set_current_vitality (area2_right_fore_3, 0.1, 0.1);
	unit_set_current_vitality (area2_right_fore_4, 0.1, 0.1);
	cs_fly_to_and_face (ps_phantom_flank.p2, ps_phantom_flank.p3);
	
	cs_vehicle_speed (0.1);
	cs_fly_to_and_dock (ps_phantom_flank.p2, ps_phantom_flank.p3, 4);
	
	thread (right_side2_knight_weakening());
	
	sleep_until (b_right_side2_knights_dead == TRUE or volume_test_players (tv_final_ramp_right_save), 1);
	
	dprint ("phantom retreating!");
	
	sleep (30 * 2);
	
	cs_vehicle_speed (1);
	cs_fly_to_and_face (ps_phantom_flank.p2, ps_phantom_flank.p3);
	cs_fly_to_and_face (ps_phantom_flank.p0, ps_phantom_flank.p1);
	cs_fly_to_and_face (ps_phantom_flank.p4, ps_phantom_flank.p1);
	
	object_set_scale (ai_vehicle_get(ai_current_actor), 1, 0);
	object_set_scale (ai_vehicle_get(ai_current_actor), 0.01, 90);
	
	sleep (90);
	
	ai_erase (phantom_right_side2_flank);
	dprint ("bye bye");
	
end

script command_script cs_phantom_forced_retreat	

	dprint ("phantom retreating!");
	
	sleep (30);
	
	cs_vehicle_speed (1);
	cs_fly_to_and_face (ps_phantom_flank.p2, ps_phantom_flank.p3);
	cs_fly_to_and_face (ps_phantom_flank.p0, ps_phantom_flank.p1);
	cs_fly_to_and_face (ps_phantom_flank.p4, ps_phantom_flank.p1);
	
	object_set_scale (ai_vehicle_get(ai_current_actor), 1, 0);
	object_set_scale (ai_vehicle_get(ai_current_actor), 0.01, 90);
	
	sleep (90);
	
	ai_erase (phantom_right_side2_flank);
	dprint ("bye bye"); 
	
end	

script static void right_side2_knight_weakening()
	repeat
		dprint ("weakening right side2 knights");
		unit_set_current_vitality (area2_right_fore_2, 0.25, 0.25);
		unit_set_current_vitality (area2_right_fore_3, 0.25, 0.25);
		unit_set_current_vitality (area2_right_fore_4, 0.25, 0.25);
		sleep (30 * 5);
	until ((ai_living_count (area2_right_fore_2) == 0) and (ai_living_count (area2_right_fore_3) == 0) and (ai_living_count (area2_right_fore_4) == 0));

	b_right_side2_knights_dead = TRUE;
	dprint ("right side2 knights are dead - covenant advancing!");
	
end


script dormant right_room_checkpoint()
	sleep_until (volume_test_players (tv_right_spawn_2), 1);
	sleep_forever (right_encounter_1_over_save);
	thread (donut_right_area1_cleanup());
	wake (final_left_side_cov_spawn);
	sleep (5);
	game_save();
end


// ====================================================
// FINAL BATTLE SCRIPTS
// ====================================================

script dormant final_knight_fight()
	sleep_until ((volume_test_players (tv_left_endpath_spawn)) or (volume_test_players (tv_right_endpath_spawn)), 1);
	
	sleep_forever (left_encounter_2_over_save);
	sleep_forever (right_encounter_2_over_save);
	
	thread (hovering_cover_start(shieldwall_1));
	thread (hovering_cover_start(shieldwall_2));
	thread (hovering_cover_start(shieldwall_3));
	thread (hovering_cover_start(shieldwall_4));
	thread (hovering_cover_start(shieldwall_5));
	thread (hovering_cover_start(shieldwall_6));
	thread (f_mus_m30_e09_finish());
	thread (f_mus_m30_e10_finish());
	thread (f_mus_m30_e11_start());
	
	ai_place (final_fore_3);
	
	sleep (30 * 3);
	
	ai_place (final_fore_2);
	ai_place (final_fore_1);
	ai_place (final_fore_4);

	sleep (5);
	
	AutomatedTurretActivate( ai_vehicle_get( final_fore_3.spawn_points_0 ) );
	
	wake (m30_cryptum_approach);
	
end

script static void hovering_cover_start (object_name shieldwall)
	sleep (random_range (10, 45));
	repeat
    object_move_by_offset(shieldwall, 3, 0.0, 0.0, -0.03);
    sleep (20);
    object_move_by_offset(shieldwall, 3, 0.0, 0.0, 0.03);
  until(1 == 0);
end

script dormant final_left_side_cov_spawn
	sleep_until (volume_test_players (tv_right_endpath_spawn), 1);
	
	//sleep_forever (final_right_side_cov_spawn);
	effects_distortion_enabled = TRUE;
	ai_place (left_cov_final_fight);
	ai_prefer_target_team (left_cov_final_fight, forerunner);
	dprint ("final elites prefer fighting knights");
	
	sleep_until (ai_living_count (final_fore_1) == 0 and ai_living_count (sg_cov_final_fight) == 0, 1);
	
	ai_prefer_target_team (left_cov_final_fight, player);
	dprint ("final elites prefer fighting the player");
	
end

script dormant final_right_side_cov_spawn
	sleep_until (volume_test_players (tv_left_endpath_spawn), 1);
	
	//sleep_forever (final_left_side_cov_spawn);
	effects_distortion_enabled = TRUE;
	ai_place (right_cov_final_fight);
	ai_prefer_target_team (right_cov_final_fight, forerunner);
	dprint ("final elites prefer fighting knights");
	
	sleep_until (ai_living_count (final_fore_1) == 0 and ai_living_count (sg_cov_final_fight) == 0, 1);
	
	ai_prefer_target_team (right_cov_final_fight, player);
	dprint ("final elites prefer fighting the player");
	
end

// ====================================================
// END KNIGHT COMMAND SCRIPTS
// ====================================================

script command_script left_endknight_1()
	cs_phase_to_point (ps_endknight_phase.p0);
end

script command_script left_endknight_2()
	cs_phase_to_point (ps_endknight_phase.p1);
end

script command_script right_endknight_1()
	cs_phase_to_point (ps_endknight_phase.p2);
end

script command_script right_endknight_2()
	cs_phase_to_point (ps_endknight_phase.p3);
end

script command_script final_endknight_1()
	cs_phase_to_point (ps_endknight_phase.p4);
end

script command_script final_endknight_2()
	cs_phase_to_point (ps_endknight_phase.p5);
end

// ====================================================
// OLD STUFF BELOW
// ====================================================
/*

// ====================================================
// PHANTOM FLYBYS
// ====================================================

script dormant f_phantom_flyby_1()
	sleep_until (volume_test_players (tv_phantom_flyby_1), 1);
	ai_place (sq_phantom_flyby_1);
	ai_place (sq_phantom_flyby_2);
	print ("phantom flyby 1 start");
	game_save_no_timeout();
end

script dormant f_phantom_left_shotdown()
	sleep_until (volume_test_players (tv_left_spawn_1), 1);
	ai_place (sq_phantom_shotdown_left);
//	print ("incoming phantom above");
end
	
script dormant f_turret_spawn_left()
	sleep_until (volume_test_players (tv_phantom_flyby_1), 1);
	
	ai_place (sq_aa_left_2);
	unit_only_takes_damage_from_players_team (sq_aa_left_2, TRUE);
	vehicle_hover (sq_aa_left_2, TRUE);
	
	ai_place (sq_aa_left_1);
	unit_only_takes_damage_from_players_team (sq_aa_left_1, TRUE);
	vehicle_hover (sq_aa_left_1, TRUE);
	
	ai_place (sq_ainf_left_1);
	unit_only_takes_damage_from_players_team (sq_ainf_left_1, TRUE);
	vehicle_hover (sq_ainf_left_1, TRUE);
	
	ai_place (sq_aa_left_3);
	unit_only_takes_damage_from_players_team (sq_aa_left_3, TRUE);
	vehicle_hover (sq_aa_left_3, TRUE);
	
	ai_place (sq_aa_left_4);
	unit_only_takes_damage_from_players_team (sq_aa_left_4, TRUE);
	vehicle_hover (sq_aa_left_4, TRUE);
end

script dormant f_turret_spawn_right()
	sleep_until (volume_test_players (tv_phantom_flyby_1), 1);
	
	ai_place (sq_aa_right_2);
	vehicle_hover (sq_aa_right_2, TRUE);
	
	ai_place (sq_aa_right_1);
	vehicle_hover (sq_aa_right_1, TRUE);
	
	ai_place (sq_ainf_right_1);
	vehicle_hover (sq_ainf_right_1, TRUE);
	
	ai_place (sq_aa_right_3);
	vehicle_hover (sq_aa_right_3, TRUE);
	
	ai_place (sq_aa_right_4);
	vehicle_hover (sq_aa_right_4, TRUE);
end

script command_script cs_phantom_flyby_1()
	object_set_scale (ai_vehicle_get(ai_current_actor), 0.01, 0);
	object_set_scale (ai_vehicle_get(ai_current_actor), 1.0, 120);
	cs_fly_to (ps_phantom_flyby_1.p0);
	cs_fly_to (ps_phantom_flyby_1.p1);
	cs_fly_to (ps_phantom_flyby_1.p2);
//	sleep (30 * 2);
	cs_fly_to (ps_phantom_flyby_1.p3);
	cs_fly_to (ps_phantom_flyby_1.p4);	
	cs_fly_to (ps_phantom_flyby_1.p5);	
	cs_fly_to (ps_phantom_flyby_1.p6);
	object_set_scale (ai_vehicle_get(ai_current_actor), 0.01, 120);
	sleep (30 * 4);
	ai_erase (sq_phantom_flyby_1);
end

script command_script cs_phantom_shotdown_left()
	object_set_scale (ai_vehicle_get(ai_current_actor), 0.01, 0);
	object_set_scale (ai_vehicle_get(ai_current_actor), 1.0, 120);
	cs_fly_to (ps_phantom_shotdown_left.p0);
	cs_fly_to (ps_phantom_shotdown_left.p1);
	sleep (30 * 3);
	effect_new_at_ai_point (fx\reach\fx_library\explosions\human_explosion_aerial\human_explosion_aerial.effect, ps_phantom_shotdown_left.p1);
	sleep (10);
	effect_new_at_ai_point (fx\reach\fx_library\explosions\human_explosion_aerial\human_explosion_aerial.effect, ps_phantom_shotdown_left.p3);
	cs_fly_by (ps_phantom_shotdown_left.p2);
	sleep (10);
	effect_new_at_ai_point (fx\reach\fx_library\explosions\human_explosion_aerial\human_explosion_aerial.effect, ps_phantom_shotdown_left.p2);
	object_set_scale (ai_vehicle_get(ai_current_actor), 0.01, 15);
	effect_new_at_ai_point (fx\reach\fx_library\explosions\human_explosion_aerial\human_explosion_aerial.effect, ps_phantom_shotdown_left.p2);
	sleep (30);
	ai_erase (sq_phantom_shotdown_left);
end

script command_script cs_phantom_left_1()
	object_set_scale (ai_vehicle_get(ai_current_actor), 0.01, 0);
	object_set_scale (ai_vehicle_get(ai_current_actor), 1.0, 120);
	f_load_phantom (sq_phantom_left_1, "right", sq_left_cov_4, none, none, none);
//	f_load_phantom (sq_phantom_left_1, "chute",  sq_left_cov_5, none, none, none);
	cs_fly_to (ps_phantom_left_1.p0);
	cs_fly_to_and_face (ps_phantom_left_1.p1, ps_phantom_left_1.p2);
	sleep (15);
	f_unload_phantom (sq_phantom_left_1, "right");
//	sleep (3 * 30);
	cs_fly_to (ps_phantom_left_1.p3);
	effect_new_at_ai_point (fx\reach\fx_library\explosions\human_explosion_aerial\human_explosion_aerial.effect, ps_phantom_left_1.p3);
	sleep (10);
//	f_unload_phantom (sq_phantom_left_1, "chute");
	cs_fly_by (ps_phantom_left_1.p4);
	sleep (10);
	effect_new_at_ai_point (fx\reach\fx_library\explosions\human_explosion_aerial\human_explosion_aerial.effect, ps_phantom_left_1.p4);
	object_set_scale (ai_vehicle_get(ai_current_actor), 0.01, 60);
	effect_new_at_ai_point (fx\reach\fx_library\explosions\human_explosion_aerial\human_explosion_aerial.effect, ps_phantom_left_1.p4);
	sleep (30 * 2);
	ai_erase (sq_phantom_left_1);
end
	
script command_script cs_phantom_left_2()
	object_set_scale (ai_vehicle_get(ai_current_actor), 0.01, 0);
	object_set_scale (ai_vehicle_get(ai_current_actor), 1.0, 120);
	f_load_phantom (sq_phantom_left_2, "right", sq_left_cov_5, none, none, none);
	cs_fly_to (ps_phantom_left_2.p0);
	cs_fly_to_and_face (ps_phantom_left_2.p1, ps_phantom_left_2.p2);
	sleep (15);
	f_unload_phantom (sq_phantom_left_2, "right");
	effect_new_at_ai_point (fx\reach\fx_library\explosions\human_explosion_aerial\human_explosion_aerial.effect, ps_phantom_left_2.p1);
	cs_fly_to (ps_phantom_left_2.p2);
	effect_new_at_ai_point (fx\reach\fx_library\explosions\human_explosion_aerial\human_explosion_aerial.effect, ps_phantom_left_2.p2);
	sleep (10);
	cs_fly_to (ps_phantom_left_2.p3);
	effect_new_at_ai_point (fx\reach\fx_library\explosions\human_explosion_aerial\human_explosion_aerial.effect, ps_phantom_left_2.p3);
	cs_fly_to (ps_phantom_left_2.p4);
	object_set_scale (ai_vehicle_get(ai_current_actor), 0.01, 60);
	effect_new_at_ai_point (fx\reach\fx_library\explosions\human_explosion_aerial\human_explosion_aerial.effect, ps_phantom_left_2.p4);
	sleep (30 * 2);
	ai_erase (sq_phantom_left_2);
end

// ====================================================
// AA TURRETS
// ====================================================

script command_script cs_aa_left_2_fire()
	repeat
	cs_shoot_point (TRUE, ps_aa_left_2.p0);
	sleep (random_range (15, 90));
	cs_shoot_point (TRUE, ps_aa_left_2.p1);
	sleep (random_range (15, 90));	
	cs_shoot_point (TRUE, ps_aa_left_2.p2);
	sleep (random_range (15, 90));
	until (aa_fire == 0);
end

script command_script cs_aa_left_1_fire()
	repeat
	cs_shoot_point (TRUE, ps_aa_left_1.p0);
	sleep (random_range (15, 90));
	cs_shoot_point (TRUE, ps_aa_left_1.p1);
	sleep (random_range (15, 90));	
	cs_shoot_point (TRUE, ps_aa_left_1.p2);
	sleep (random_range (15, 90));
	until (aa_fire == 0);
end

script command_script cs_aa_left_3_fire()
	repeat
	cs_shoot_point (TRUE, ps_aa_left_3.p0);
	sleep (random_range (15, 90));
	cs_shoot_point (TRUE, ps_aa_left_3.p1);
	sleep (random_range (15, 90));	
	cs_shoot_point (TRUE, ps_aa_left_3.p2);
	sleep (random_range (15, 90));
	until (aa_fire == 0);
end

script command_script cs_aa_left_4_fire()
	repeat
	cs_shoot_point (TRUE, ps_aa_left_4.p0);
	sleep (random_range (15, 90));
	cs_shoot_point (TRUE, ps_aa_left_4.p1);
	sleep (random_range (15, 90));	
	cs_shoot_point (TRUE, ps_aa_left_4.p2);
	sleep (random_range (15, 90));
	until (aa_fire == 0);
end

script command_script cs_aa_right_1_fire()
	repeat
	cs_shoot_point (TRUE, ps_aa_right_1.p0);
	sleep (random_range (15, 90));
	cs_shoot_point (TRUE, ps_aa_right_1.p1);
	sleep (random_range (15, 90));	
	cs_shoot_point (TRUE, ps_aa_right_1.p2);
	sleep (random_range (15, 90));
	until (aa_fire == 0);
end

script command_script cs_aa_right_2_fire()
	repeat
	cs_shoot_point (TRUE, ps_aa_right_2.p0);
	sleep (random_range (15, 90));
	cs_shoot_point (TRUE, ps_aa_right_2.p1);
	sleep (random_range (15, 90));	
	cs_shoot_point (TRUE, ps_aa_right_2.p2);
	sleep (random_range (15, 90));
	until (aa_fire == 0);
end

script command_script cs_aa_right_3_fire()
	repeat
	cs_shoot_point (TRUE, ps_aa_right_3.p0);
	sleep (random_range (15, 90));
	cs_shoot_point (TRUE, ps_aa_right_3.p1);
	sleep (random_range (15, 90));	
	cs_shoot_point (TRUE, ps_aa_right_3.p2);
	sleep (random_range (15, 90));
	until (aa_fire == 0);
end

script command_script cs_aa_right_4_fire()
	repeat
	cs_shoot_point (TRUE, ps_aa_right_4.p0);
	sleep (random_range (15, 90));
	cs_shoot_point (TRUE, ps_aa_right_4.p1);
	sleep (random_range (15, 90));	
	cs_shoot_point (TRUE, ps_aa_right_4.p2);
	sleep (random_range (15, 90));
	until (aa_fire == 0);
end

// ====================================================
// LEFT PATH
// ====================================================

script dormant left_side_start()
	sleep_until (volume_test_players (tv_left_spawn_1), 1);
	wake (f_left_side_spawn_1);
	wake (f_ledge_flank_check);
	wake (f_left_side_spawn_2);
	wake (f_left_side_phantoms);
	object_create (left1_1);
	object_create (left1_2);
	object_create (left1_3);
	object_create (left1_4);
	object_create (left1_5);
	object_create (left1_6);
	object_create (left1_7);
	object_create (left1_8);
	object_create (left1_9);
	object_create (left1_10);
	object_create (left1_11);
	object_create (left1_12);
	object_create (left1_13);
	object_create (left1_14);
	object_create (left1_15);
	object_create (left1_16);
	object_create (left1_17);
	object_create (left1_18);
	object_create (left1_19);
	object_create (left1_20);
	object_create (left1_21);
	object_create (left1_22);
	object_create (left1_23);
end

script dormant f_ledge_flank_check()
	sleep_until (volume_test_players (tv_ledge_flank), 1);
	ledge_flank == 4;
end

script dormant f_left_side_spawn_1()
	ai_place (sq_left_cov_1);
	unit_only_takes_damage_from_players_team (sq_left_cov_1, TRUE);
	ai_place (sq_left_cov_2);
	unit_only_takes_damage_from_players_team (sq_left_cov_2, TRUE);
	ai_place (sq_left_cov_3);
	unit_only_takes_damage_from_players_team (sq_left_cov_3, TRUE);
	ai_place (sq_left_fore_1);
	unit_only_takes_damage_from_players_team (sq_left_fore_1, TRUE);
	ai_place (sq_left_fore_2);
	unit_only_takes_damage_from_players_team (sq_left_fore_2, TRUE);
	ai_place (sq_left_fore_3);
	unit_only_takes_damage_from_players_team (sq_left_fore_3, TRUE);
	ai_place (sq_left_fore_4);
	unit_only_takes_damage_from_players_team (sq_left_fore_4, TRUE);
	ai_place (sq_left_fore_5);
	unit_only_takes_damage_from_players_team (sq_left_fore_5, TRUE);
end

script dormant f_left_side_spawn_2()
	sleep_until (volume_test_players (tv_left_spawn_2), 1);
	ai_place (sq_left_fore_6);
	unit_only_takes_damage_from_players_team (sq_left_fore_6, TRUE);
	ai_place (sq_left_fore_7);
	unit_only_takes_damage_from_players_team (sq_left_fore_7, TRUE);
	ai_place (sq_left_fore_8);
	unit_only_takes_damage_from_players_team (sq_left_fore_8, TRUE);
	ai_place (sq_left_fore_9);
	unit_only_takes_damage_from_players_team (sq_left_fore_9, TRUE);
	object_create (left2_1);
	object_create (left2_2);
	object_create (left2_3);
	object_create (left2_4);
	object_create (left2_5);
	object_create (left2_6);
	object_create (left2_7);
	object_create (left2_8);
	object_create (left2_9);
end

script dormant f_left_side_mid_save()
	sleep_until (volume_test_players (tv_left_mid_save), 1);
	//Checks to make sure player not being fired at, falling, etc... and keeps waiting for good time, like being behind cover.
	game_save_no_timeout();
	print ("game saved");
end

script dormant f_left_side_phantoms()
	sleep_until (volume_test_players (tv_left_phantoms), 1);
	ai_place (sq_phantom_left_1);
	ai_place (sq_phantom_left_2);
end
	
	
/*
script command_script left_cov_1_playfight()
	cs_abort_on_damage (sq_left_cov_1, TRUE);
	repeat
	cs_move_towards_point (ps_left_cov_1_playfighting.p0, 2);
	cs_shoot_point (TRUE, ps_left_cov_1_playfighting.p3);
	sleep (random_range (15, 60));
	cs_move_towards_point (ps_left_cov_1_playfighting.p1, 2);
	cs_shoot_point (TRUE, ps_left_cov_1_playfighting.p5);
	sleep (random_range (15, 60));
	cs_move_towards_point (ps_left_cov_1_playfighting.p2, 0.5);
	cs_shoot_point (TRUE, ps_left_cov_1_playfighting.p4);
	sleep (random_range (15, 60));
	until (playfighting == 0);
end

script command_script left_cov_3_playfight()
	cs_abort_on_damage (sq_left_cov_3, TRUE);
	repeat
	cs_move_towards_point (ps_left_cov_3_playfighting.p0, 1);
	sleep (30);
	cs_shoot_point (TRUE, ps_left_cov_3_playfighting.p4);
	sleep (random_range (15, 60));
	cs_move_towards_point (ps_left_cov_3_playfighting.p1, 1);
	sleep (30);
	cs_shoot_point (TRUE, ps_left_cov_3_playfighting.p5);
	sleep (random_range (15, 60));
	cs_move_towards_point (ps_left_cov_3_playfighting.p2, 3);
	sleep (30);
	cs_shoot_point (TRUE, ps_left_cov_3_playfighting.p3);
	sleep (random_range (15, 60));
	until (playfighting == 0);
end

script command_script left_fore_1_playfight()
	cs_abort_on_damage (sq_left_fore_1, TRUE);
	repeat
	cs_move_towards_point (ps_left_fore_1_playfighting.p0, 1);
	sleep (30);
	cs_shoot_point (TRUE, ps_left_fore_1_playfighting.p3);
	sleep (random_range (15, 90));
	cs_shoot_point (FALSE, ps_left_fore_1_playfighting.p3);
	cs_shoot_point (TRUE, ps_left_fore_1_playfighting.p4);
	sleep (random_range (15, 60));
	cs_move_towards_point (ps_left_fore_1_playfighting.p1, 1);
	sleep (15);
	cs_shoot_point (TRUE, ps_left_fore_1_playfighting.p5);
	sleep (random_range (15, 60));
	cs_move_towards_point (ps_left_fore_1_playfighting.p2, 1);
	sleep (random_range (15, 60));
	until (playfighting == 0);
end	


script command_script cs_jackal_1()
	cs_abort_on_damage (sq_left_cov_2, TRUE);
//	cs_abort_on_alert (TRUE);
	print ("jackals moving to ramps");
	cs_move_towards_point (ps_jackals_1.p0, 5);
	cs_move_towards_point (ps_jackals_1.p1, 2);
	cs_move_towards_point (ps_jackals_1.p2, 0.5);
	cs_move_towards_point (ps_jackals_1.p3, 0.5);
end

// ====================================================
// RIGHT PATH
// ====================================================

script dormant f_right_side_start()
	sleep_until (volume_test_players (tv_right_spawn_1), 1);
	ai_place (sq_right_cov_1);
	ai_place (sq_right_cov_2);
	ai_place (sq_right_cov_3);
	ai_place (sq_right_fore_1);
	ai_place (sq_right_fore_2);
	ai_place (sq_right_cov_4);
	ai_place (sq_phantom_right_1);
	wake (f_right_side_start_2);
	object_create (right1_1);
	object_create (right1_2);
	object_create (right1_3);
	object_create (right1_4);
	object_create (right1_5);
	object_create (right1_6);
	object_create (right1_7);
	object_create (right1_8);
	object_create (right1_9);
	object_create (right1_10);
	object_create (right1_11);
	object_create (right1_12);
	object_create (right1_13);
	object_create (right1_14);
	object_create (right1_15);
	object_create (right1_16);
	object_create (right1_17);
	object_create (right1_18);
	object_create (right1_19);
	object_create (right1_20);
	object_create (right1_21);
	object_create (right1_22);
	object_create (right1_23);
	object_create (right1_24);
	object_create (right1_25);
	object_create (right1_26);
	object_create (right1_27);
	object_create (right1_28);
	object_create (right1_29);
	object_create (right1_30);
end

script command_script charging_elite()
	cs_abort_on_damage (TRUE);
	cs_shoot (TRUE, sq_right_fore_1);
	cs_move_towards_point (ps_right_cov_4.p0, 1);
	cs_move_towards_point (ps_right_cov_4.p1, 1);
	cs_move_towards_point (ps_right_cov_4.p2, 1);
	cs_move_towards_point (ps_right_cov_4.p3, 1);
	cs_move_towards_point (ps_right_cov_4.p4, 1);
end

script command_script winning_phantom()
	object_set_scale (ai_vehicle_get(ai_current_actor), 0.01, 0);
	object_set_scale (ai_vehicle_get(ai_current_actor), 1.0, 120);
	cs_fly_to (ps_right_phantom_1.p0);
	cs_fly_to (ps_right_phantom_1.p1);
	cs_fly_to (ps_right_phantom_1.p2);
	sleep (30 * 4);
	cs_shoot_point (TRUE, ps_right_phantom_1.p6);
	effect_new_at_ai_point (fx\reach\fx_library\explosions\human_explosion_aerial\human_explosion_aerial.effect, ps_right_phantom_1.p6);
//	damage_object (ai_vehicle_get_from_spawn_point (sq_ainf_right_1.driver), left_door, 1000); 
	ai_kill (sq_ainf_right_1);
	ai_erase (sq_ainf_right_1);
	cs_shoot_point (TRUE, ps_right_phantom_1.p7);
	effect_new_at_ai_point (fx\reach\fx_library\explosions\human_explosion_aerial\human_explosion_aerial.effect, ps_right_phantom_1.p7);
	ai_kill (sq_aa_right_2);
	ai_erase (sq_aa_right_2);
	cs_shoot_point (TRUE, ps_right_phantom_1.p8);
	effect_new_at_ai_point (fx\reach\fx_library\explosions\human_explosion_aerial\human_explosion_aerial.effect, ps_right_phantom_1.p8);
	ai_kill (sq_aa_right_1);
	ai_erase (sq_aa_right_1);
	sleep (10);
	cs_fly_by (ps_right_phantom_1.p3);
	cs_fly_to (ps_right_phantom_1.p4);
	cs_fly_to (ps_right_phantom_1.p5);
	object_set_scale (ai_vehicle_get(ai_current_actor), 0.01, 120);
	sleep (30 * 4);
	ai_erase (sq_phantom_right_1);
end

script dormant f_right_side_mid_save()
	sleep_until (volume_test_players (tv_right_mid_save), 1);
	//Checks to make sure player not being fired at, falling, etc... and keeps waiting for good time, like being behind cover.
	game_save_no_timeout();
	print ("game saved");
end

script dormant f_right_side_start_2()
	sleep_until (volume_test_players (tv_right_spawn_2), 1);
	ai_place (sq_right_fore_3);
	ai_place (sq_right_fore_4);
	ai_place (sq_right_fore_5);
	ai_place (sq_right_fore_6);
	ai_place (sq_right_cov_5);
	ai_place (sq_right_cov_6);
	ai_place (sq_phantom_right_2);
	object_create (right2_1);
	object_create (right2_2);
	object_create (right2_3);
	object_create (right2_4);
	object_create (right2_5);
	object_create (right2_6);
	object_create (right2_7);
	object_create (right2_8);
	object_create (right2_9);
end

script command_script jackal_advance_2()
	cs_abort_on_damage (sq_right_cov_5, TRUE);
	cs_move_towards_point (ps_right_cov_5.p0, 1);
	cs_move_towards_point (ps_right_cov_5.p1, 1);
	cs_move_towards_point (ps_right_cov_5.p2, 1);
	cs_move_towards_point (ps_right_cov_5.p3, 1);
end

script command_script right_phantom_2()
	object_set_scale (ai_vehicle_get(ai_current_actor), 0.01, 0);
	object_set_scale (ai_vehicle_get(ai_current_actor), 1.0, 120);
	f_load_phantom (sq_phantom_right_2, "dual", sq_right_cov_7, sq_right_cov_8, none, none);
	cs_fly_to (ps_right_phantom_2.p0);
	cs_fly_to (ps_right_phantom_2.p1);
	cs_fly_to (ps_right_phantom_2.p2);
	cs_fly_to (ps_right_phantom_2.p3);
	f_unload_phantom (sq_phantom_right_2, "dual");
	cs_shoot_point (TRUE, ps_right_phantom_2.p7);
	sleep (3 * 30);
	cs_shoot_point (TRUE, ps_right_phantom_2.p8);
	sleep (3 * 30);
	effect_new_at_ai_point (fx\reach\fx_library\explosions\human_explosion_aerial\human_explosion_aerial.effect, ps_right_phantom_2.p8);
	effect_new_at_ai_point (fx\reach\fx_library\explosions\human_explosion_aerial\human_explosion_aerial.effect, ps_right_phantom_2.p7);
	ai_kill (sq_aa_right_3);
	ai_erase (sq_aa_right_3);
	ai_kill (sq_aa_right_4);
	ai_erase (sq_aa_right_4);
	sleep (30);
	cs_fly_to_and_face (ps_right_phantom_2.p4, ps_right_phantom_2.p5);
	cs_fly_to (ps_right_phantom_2.p5);
	cs_fly_to (ps_right_phantom_2.p6);
	object_set_scale (ai_vehicle_get(ai_current_actor), 0.01, 120);
	sleep (30 * 4);
	ai_erase (sq_phantom_right_2);
end	

script command_script cs_phantom_flyby_2()
	object_set_scale (ai_vehicle_get(ai_current_actor), 0.01, 0);
	object_set_scale (ai_vehicle_get(ai_current_actor), 1.0, 120);
	cs_fly_to (ps_phantom_flyby_2.p0);
	cs_fly_to (ps_phantom_flyby_2.p1);
	cs_fly_to (ps_phantom_flyby_2.p2);
	cs_fly_to (ps_phantom_flyby_2.p3);
	cs_fly_to (ps_phantom_flyby_2.p4);
	object_set_scale (ai_vehicle_get(ai_current_actor), 0.01, 120);
	sleep (30 * 4);
	ai_erase (sq_phantom_flyby_2);
end
*/

/*

script dormant endknights_left()
	sleep_until (volume_test_players (tv_left_endknights), 1);
	
	ai_place (sq_left_endknights);
	
end

script dormant endknights_right()
	sleep_until (volume_test_players (tv_right_endknights), 1);
	
	ai_place (sq_right_endknights);
	
end

script command_script endknight_1()
	cs_phase_to_point (ps_endramp_knights.p0);
end

script command_script endknight_2()
	cs_phase_to_point (ps_endramp_knights.p1);
end

script command_script endknight_3()
	cs_phase_to_point (ps_endramp_knights.p2);
end

script command_script endknight_4()
	cs_phase_to_point (ps_endramp_knights.p3);
end

// --- End m30_cryptum_donut.hsc ---

// --- Begin m30_cryptum_escape.hsc ---
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343
//
// 	Mission: 					m30_cryptum
//	Subsection: 			escape
//										
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343

// =================================================================================================
// =================================================================================================
// *** GLOBALS ***
// =================================================================================================
// =================================================================================================

global boolean b_escape_started	= FALSE;
global boolean b_escape_over = FALSE;
global boolean b_speed_fx_playing = FALSE;
global short rift_pulse = 0;
global short cruiser_explosion_check = 0;
global boolean b_section_one_closed = FALSE;
global boolean b_section_two_closed = FALSE;
global boolean b_section_three_closed = FALSE;
global boolean b_section_four_closed = FALSE;
global boolean b_kill_timer_expired = FALSE;
global boolean b_phantom_crash_1_explosion = FALSE;
global boolean b_escape_respawns = FALSE;
global boolean b_boost_tutorial = FALSE;
global long player_0_kill = -1;
global long player_1_kill =	-1;
global long player_2_kill = -1;
global long player_3_kill = -1;
global object g_ics_player = NONE;

// =================================================================================================
// ***CO-OP AND EASY SCRIPTING DELAYS ***
// =================================================================================================

global long r_short_coop_delay = 0;
global long r_medium_coop_delay = 0;
global long r_long_coop_delay = 0;
global long r_verylong_coop_delay = 0;


script static void coop_escape_check
	if game_is_cooperative() or (game_difficulty_get_real() == "easy") or (game_difficulty_get_real() == "normal") then
			
			dprint ("co-op timing values updated");
			r_short_coop_delay = (real_random_range (1, 1.75));
			dprint ("short delay set to");
			inspect (r_short_coop_delay);
			r_medium_coop_delay = (real_random_range (2, 3));
			dprint ("medium delay set to");
			inspect (r_medium_coop_delay);
			r_long_coop_delay = (real_random_range (3, 4.25));
			dprint ("long delay set to");
			inspect (r_long_coop_delay);
			r_verylong_coop_delay = (real_random_range (5, 6.5));
			dprint ("very long delay set to");
			inspect (r_verylong_coop_delay);
		
	end
end

// =================================================================================================
// =================================================================================================
// *** ESCAPE ***
// =================================================================================================
// =================================================================================================

script dormant m30_cryptum_escape()	
	sleep_until (volume_test_players (tv_insertion_wake_escape), 1);

	thread (coop_escape_check());

	cinematic_exit_no_fade ("cin_m031_didact", TRUE);

	g_ics_player = player_get_first_valid();
	local long show = pup_play_show(ghost_escape);
	cinematic_tag_fade_in_to_game ("cin_m031_didact");
	
	sleep_until (not pup_is_playing(show),1);
	
	dprint  ("::: escape start :::");
	effects_distortion_enabled = TRUE;
	//thread (f_mus_m30_e12_start()); 
	
	wake (escape_start);
	wake (escape_chaos_1);
	wake (escape_chaos_2);
	wake (escape_chaos_3);
	wake (escape_chaos_4);
	wake (phantom_crash_1);
	wake (rock_slam_1);
	wake (large_ambient_fires);
	wake (smaller_ambient_fires);
	wake (escape_collapse_1);
	wake (cave_collapse_1);
	thread (escape_speed_lines(player0));
	thread (escape_speed_lines(player1));
	thread (escape_speed_lines(player2));
	thread (escape_speed_lines(player3));
	wake (escape_collapse_4);
	wake (escape_chaos_6);
	wake (escape_chaos_7);
	wake (escape_chaos_8);
	wake (rock_ramp_raise);
	wake (wall_moving_1);
	wake (escape_collapse_5);
	wake (rocksplosion_v2);
	wake (escape_collapse_6);
	wake (terrain_fall_fx_2);
	wake (escape_final_chaos);
	wake (escape_chaos_10);
	wake (cave_1_explosions);
	wake (escape_save_1);
	wake (escape_save_2);
	wake (escape_section_1);
	wake (escape_section_2);
	wake (escape_section_3);
	wake (escape_section_4);
	wake (corner_explosions);
	data_mine_set_mission_segment ("m30_escape");
	wake (cave_2_explosion);
	thread (escape_ambient_rock_fx());
	wake (temp_rumble_sound_start);
	wake (M30_escape_open_vignette); //Narrative Scripting
	wake (m30_escape_volume_01);//Narrative Scripting
	wake (m30_escape_volume_02); //Narrative Scripting
	wake (m30_escape_volume_03); //Narrative Scripting
	//wake (f_start_escape_timer);
	thread (out_of_ghost_timer(player0));
	thread (out_of_ghost_timer(player1));
	thread (out_of_ghost_timer(player2));
	thread (out_of_ghost_timer(player3));
	thread (ambient_crack_fx_1());
	thread (ambient_crack_fx_2());
	thread (ambient_crack_fx_3());
	thread (ambient_crack_fx_4());
	thread (ambient_crack_fx_5());
	thread (placed_ambient_rocks_1());
	thread (placed_ambient_rocks_2());
	wake (area_1_fx_shutdown);
	wake (area_2_fx_shutdown);
	wake (area_3_fx_shutdown);
	wake (area_4_fx_shutdown);	
	wake (escape_collapse_8_go);
	thread (set_ghost_respawns());
	wake (escape_dead_phantom_cleanup);
//	thread (cave_dust_1());
//	thread (cave_dust_2());
	
end

// ====================================================
// ESCAPE TIMER =======================================
// ====================================================


/*
script dormant f_start_escape_timer()
	dprint ("escape timer has started!");
	sleep (30 * 80);
	b_section_one_closed = TRUE;
	dprint ("b_section_one_closed = TRUE");
	sleep_until (device_get_position (escape_collapse_2) == 1);
	sleep (30 * 70);
	b_section_two_closed = TRUE;
	dprint ("b_section_two_closed = TRUE");
	sleep_until (device_get_position (escape_collapse_3) == 1);
	sleep (30 * 70);
	b_section_three_closed = TRUE;
	dprint ("b_section_three_closed = TRUE");
	sleep_until (device_get_position (escape_collapse_4) == 1);
	sleep (30 * 70);
	b_section_four_closed = TRUE;
	dprint ("b_section_four_closed = TRUE");
	
end
*/

script static void out_of_ghost_timer(player p_player)
	
	sleep_until (unit_in_vehicle (p_player), 1);
	
	sleep (30 * 2);
	
	unit_falling_damage_disable (player0, TRUE);
	unit_falling_damage_disable (player1, TRUE);
	unit_falling_damage_disable (player2, TRUE);
	unit_falling_damage_disable (player3, TRUE);
	
	thread (player_dies_in_escape (player0));
	thread (player_dies_in_escape (player1));
	thread (player_dies_in_escape (player2));
	thread (player_dies_in_escape (player3));

	thread (player_boost_tutorial (player0));
	thread (player_boost_tutorial (player1));	
	thread (player_boost_tutorial (player2));
	thread (player_boost_tutorial (player3));
	
	wake (m30_objective_8);
	
	dprint ("timer has begun... don't get out of the ghost!");
	
	local long thread_ID = -1;
	
	repeat
		if not
			unit_in_vehicle (p_player) 
		then
			dprint ("you got out of the ghost - timer started!");
			wake (m30_leave_ghost);
			thread_ID = thread (kill_player_off_ghost (p_player));
			sleep_until (unit_in_vehicle (p_player), 1);
			dprint ("lucky bugger got back in the ghost");
			kill_thread (thread_ID);
		end
	until (b_escape_over == TRUE, 1);

end	

script static void kill_player_off_ghost (player p_player)
	sleep (30 * 10);
	dprint ("BOOM YOU DEAD");
	
	effect_new_on_object_marker (environments\solo\m30_cryptum\fx\rock\playerdeath.effect, p_player, "drop");

	unit_kill (p_player);
end


script static void player_dies_in_escape (player p_player)
	
	sleep_until (object_get_health(p_player) <= 0, 1);
	
	dprint ("BOOM YOU DEAD");
	effect_new_on_object_marker (environments\solo\m30_cryptum\fx\rock\playerdeath.effect, p_player, "drop");
	fade_out_for_player (p_player);
	
	sleep (30);
	
	sleep_until (object_get_health(p_player) > 0, 1) or (b_escape_over == TRUE);
	
	fade_in_for_player (p_player);

	thread (player_dies_in_escape (p_player));
	thread (player_escape_shield_stun (p_player));

end

script static void player_boost_tutorial (player p_player)
	
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
  
end

script static void player_escape_shield_stun (player p_player)
	
	dprint ("SHIELD STUNNED");
	
	object_set_shield (p_player, 0);
	
	object_set_shield_stun_infinite (p_player);
	
  sleep_until (volume_test_players (tv_finish_escape), 1);

  object_set_shield_stun (player0, 0);
  object_set_shield_stun (player1, 0);
  object_set_shield_stun (player2, 0);
  object_set_shield_stun (player3, 0);
  
  dprint ("SHIELD RESTORED");
  
end

// ====================================================
// ESCAPE GHOST RESPAWNING ============================
// ====================================================

script static void set_ghost_respawns()

	player_set_respawn_vehicle ( player0, "objects\vehicles\covenant\storm_ghost\storm_ghost_infinite_boost.vehicle");
  player_set_respawn_vehicle ( player1, "objects\vehicles\covenant\storm_ghost\storm_ghost_infinite_boost.vehicle");
  player_set_respawn_vehicle ( player2, "objects\vehicles\covenant\storm_ghost\storm_ghost_infinite_boost.vehicle");
  player_set_respawn_vehicle ( player3, "objects\vehicles\covenant\storm_ghost\storm_ghost_infinite_boost.vehicle");                     
  
end

script static void remove_ghost_respawns()		
		
	player_set_respawn_vehicle ( player0, none );
	player_set_respawn_vehicle ( player1, none );
	player_set_respawn_vehicle ( player2, none );
	player_set_respawn_vehicle ( player3, none );
	
end


// ====================================================
// PROGRESSION BLOCKER TESTS ==========================
// ====================================================

script dormant escape_section_1()
	
	sleep_until ((device_get_position (escape_collapse_2) >= 0.85) or (b_section_one_closed == TRUE), 1);
		
		dprint ("section one is closed off!");
		thread( f_mus_m30_r19_escape_section2() ); // cue music for section 2
		
		if volume_test_object (tv_escape_section_1, player0) then 
			dprint ("attempting to kill player 1");
			effect_new_on_object_marker (environments\solo\m30_cryptum\fx\rock\playerdeath.effect, player0, "drop");
			unit_kill (player0);
		else
			sleep (1);
		end
		
		if volume_test_object (tv_escape_section_1, player1) then 
			dprint ("attempting to kill player 2");
			effect_new_on_object_marker (environments\solo\m30_cryptum\fx\rock\playerdeath.effect, player1, "drop");
			unit_kill (player1);
		else
			sleep (1);
		end
		
		if volume_test_object (tv_escape_section_1, player2) then 
			dprint ("attempting to kill player 3");
			effect_new_on_object_marker (environments\solo\m30_cryptum\fx\rock\playerdeath.effect, player2, "drop");
			unit_kill (player2);
		else
			sleep (1);
		end
		
		if volume_test_object (tv_escape_section_1, player3) then 
			dprint ("attempting to kill player 4");
			effect_new_on_object_marker (environments\solo\m30_cryptum\fx\rock\playerdeath.effect, player3, "drop");
			unit_kill (player3);
		else
			sleep (1);
		end
end

script dormant escape_section_2()
	sleep_until ((device_get_position (escape_collapse_3) >= 0.95) or (b_section_two_closed == TRUE), 1);
		
		dprint ("section two is closed off!");
		thread( f_mus_m30_r20_escape_section3() ); // cue music for section 3
		
		if volume_test_object (tv_escape_section_2, player0) then 
			dprint ("attempting to kill player 1");
			effect_new_on_object_marker (environments\solo\m30_cryptum\fx\rock\playerdeath.effect, player0, "drop");
			unit_kill (player0);
		else
			sleep (1);
		end
		
		if volume_test_object (tv_escape_section_2, player1) then 
			dprint ("attempting to kill player 2");
			effect_new_on_object_marker (environments\solo\m30_cryptum\fx\rock\playerdeath.effect, player1, "drop");
			unit_kill (player1);
		else
			sleep (1);
		end
		
		if volume_test_object (tv_escape_section_2, player2) then 
			dprint ("attempting to kill player 3");
			effect_new_on_object_marker (environments\solo\m30_cryptum\fx\rock\playerdeath.effect, player2, "drop");
			unit_kill (player2);
		else
			sleep (1);
		end
		
		if volume_test_object (tv_escape_section_2, player3) then 
			dprint ("attempting to kill player 4");
			effect_new_on_object_marker (environments\solo\m30_cryptum\fx\rock\playerdeath.effect, player3, "drop");
			unit_kill (player3);
		else
			sleep (1);
		end
end

script dormant escape_section_3()
	sleep_until ((device_get_position (escape_collapse_4) >= 0.75) or (b_section_three_closed == TRUE), 1);
		
		dprint ("section three is closed off!");
		thread( f_mus_m30_r21_escape_section4() ); // cue music for section 4
		
		if volume_test_object (tv_escape_section_3, player0) then 
			dprint ("attempting to kill player 1");
			effect_new_on_object_marker (environments\solo\m30_cryptum\fx\rock\playerdeath.effect, player0, "drop");
			unit_kill (player0);
		else
			sleep (1);
		end
		
		if volume_test_object (tv_escape_section_3, player1) then 
			dprint ("attempting to kill player 2");
			effect_new_on_object_marker (environments\solo\m30_cryptum\fx\rock\playerdeath.effect, player1, "drop");
			unit_kill (player1);
		else
			sleep (1);
		end
		
		if volume_test_object (tv_escape_section_3, player2) then 
			dprint ("attempting to kill player 3");
			effect_new_on_object_marker (environments\solo\m30_cryptum\fx\rock\playerdeath.effect, player2, "drop");
			unit_kill (player2);
		else
			sleep (1);
		end
		
		if volume_test_object (tv_escape_section_3, player3) then 
			dprint ("attempting to kill player 4");
			effect_new_on_object_marker (environments\solo\m30_cryptum\fx\rock\playerdeath.effect, player3, "drop");
			unit_kill (player3);
		else
			sleep (1);
		end
		
end

script dormant escape_section_4()
	sleep_until ((device_get_position (escape_collapse_5) >= 0.85) or (b_section_four_closed == TRUE), 1);
		
		dprint ("section four is closed off!");
		thread( f_mus_m30_r22_escape_section5() ); // cue music for section 5
		
		if volume_test_object (tv_escape_section_4, player0) then 
			dprint ("attempting to kill player 1");
			effect_new_on_object_marker (environments\solo\m30_cryptum\fx\rock\playerdeath.effect, player0, "drop");
			unit_kill (player0);
		else
			sleep (1);
		end
		
		if volume_test_object (tv_escape_section_4, player1) then 
			dprint ("attempting to kill player 2");
			effect_new_on_object_marker (environments\solo\m30_cryptum\fx\rock\playerdeath.effect, player1, "drop");
			unit_kill (player1);
		else
			sleep (1);
		end
		
		if volume_test_object (tv_escape_section_4, player2) then 
			dprint ("attempting to kill player 3");
			effect_new_on_object_marker (environments\solo\m30_cryptum\fx\rock\playerdeath.effect, player2, "drop");
			unit_kill (player2);
		else
			sleep (1);
		end
		
		if volume_test_object (tv_escape_section_4, player3) then 
			dprint ("attempting to kill player 4");
			effect_new_on_object_marker (environments\solo\m30_cryptum\fx\rock\playerdeath.effect, player3, "drop");
			unit_kill (player3);
		else
			sleep (1);
		end
end


// ====================================================
// CAMERA SHAKES ===================================
// ====================================================

script static void strong_camera_shake()
	camera_shake_all_coop_players(1, 1, 2, 2, escape_camera_shake_weak);
end

script static void weak_camera_shake()
	camera_shake_all_coop_players(1, 1, 1, 1, escape_camera_shake_strong);
end

// ====================================================
// SET UP AND SAVES ===================================
// ====================================================

script dormant escape_start()
	sleep_until (volume_test_players (tv_start_escape), 1);
	physics_set_gravity (0.7);
	dprint ("gravity set to 0.7");
	fade_in_for_player (player0);	
	fade_in_for_player (player1);
	fade_in_for_player (player2);
	fade_in_for_player (player3);
	game_save();
	//thread (strong_camera_shake(player0));
	//thread (strong_camera_shake(player1));
	//thread (strong_camera_shake(player2));
	//thread (strong_camera_shake(player3));
	object_create (escape_collapse_7);
end

// ====================================================
// BOOSTING EFFECTS ===================================
// ====================================================

script static void escape_speed_lines(player p_player)
	repeat
		sleep_until (unit_in_vehicle (p_player), 1);

		unit_action_test_reset (p_player);
	
		if (unit_action_test_grenade_trigger (p_player)) then
			f_play_speed_lines();
		else
			f_stop_speed_lines();
			
			if b_boost_tutorial == FALSE then
			
				f_remind_player_to_boost(p_player);
			
			end
		
		end

	until (b_escape_over == TRUE);

end	

script static void f_play_speed_lines()
	if (b_speed_fx_playing == FALSE) 
		then
			print ("speed FX playing - old, no FX played here anymore");
			//effect_attached_to_camera_new (environments\solo\m90_sacrifice\fx\particulates\particulate_space.effect);
			//effect_attached_to_camera_new (environments\solo\m90_sacrifice\fx\particulates\particulate_space.effect);   
			b_speed_fx_playing = TRUE;
		end
end

script static void f_stop_speed_lines()
	if (b_speed_fx_playing == TRUE)
		then
			print ("speed FX stopped - old, no FX played here anymore");
			//effect_attached_to_camera_stop (environments\solo\m90_sacrifice\fx\particulates\particulate_space.effect);
			//effect_attached_to_camera_stop (environments\solo\m90_sacrifice\fx\particulates\particulate_space.effect);    
			b_speed_fx_playing = FALSE;
		end
end

script static void f_remind_player_to_boost(player p_player)
	
		b_boost_tutorial = TRUE;
	
		sleep (30 * 3);
		unit_action_test_reset(p_player);
	
		if not unit_action_test_grenade_trigger (p_player) and unit_in_vehicle (p_player) then
		
				print ("REMEMBER TO BOOST, MORTAL");	
				chud_show_screen_training (p_player, "training_ghostboost");
 				sleep (30 * 3);
 				
 				if unit_in_vehicle (p_player) then

  				unit_action_test_reset (p_player);
  				sleep_until (unit_action_test_grenade_trigger (p_player) or not unit_in_vehicle(p_player), 1);
 					chud_show_screen_training (p_player, "");
					b_boost_tutorial = FALSE;
				
				else
				
					chud_show_screen_training (p_player, "");
					b_boost_tutorial = FALSE;
				
				end
		
		else
		
			chud_show_screen_training (p_player, "");
			b_boost_tutorial = FALSE;
				
		end
			
			
			
end

// ====================================================
// FX CONTROL =========================================
// ====================================================
	
script dormant area_1_fx_shutdown()
	sleep_until (volume_test_players (tv_chaos_5), 1) or (b_section_one_closed == TRUE);
	
	dprint ("turning off FX in area 1");
	effect_delete_all_in_volume (tv_escape_section_1);
	
end

script dormant area_2_fx_shutdown()
	sleep_until (volume_test_players (tv_chaos_7), 1) or (b_section_two_closed == TRUE);

	dprint ("turning off FX in area 1");
	dprint ("turning off FX in area 2");
	effect_delete_all_in_volume (tv_escape_section_1);
	effect_delete_all_in_volume (tv_escape_section_2);
	
end
	
script dormant area_3_fx_shutdown()
	sleep_until (volume_test_players (tv_rock_ramp), 1) or (b_section_three_closed == TRUE);

	dprint ("turning off FX in area 1");
	dprint ("turning off FX in area 2");
	dprint ("turning off FX in area 3");
	effect_delete_all_in_volume (tv_escape_section_1);
	effect_delete_all_in_volume (tv_escape_section_2);
	effect_delete_all_in_volume (tv_escape_section_3);

end	

script dormant area_4_fx_shutdown()
	sleep_until (volume_test_players (tv_final_chaos), 1) or (b_section_four_closed == TRUE);	
	
	dprint ("turning off FX in area 1");
	dprint ("turning off FX in area 2");
	dprint ("turning off FX in area 3");
	dprint ("turning off FX in area 4");
	effect_delete_all_in_volume (tv_escape_section_1);
	effect_delete_all_in_volume (tv_escape_section_2);
	effect_delete_all_in_volume (tv_escape_section_3);
	effect_delete_all_in_volume (tv_escape_section_4);
	effect_delete_all_in_volume (tv_escape_section_5);
end
	
	
// ====================================================
// AMBIENT ROCKS ======================================
// ====================================================

script static void escape_ambient_rock_fx()

	effect_attached_to_camera_new (environments\solo\m30_cryptum\fx\rock\rock_player_pebbles.effect);
	effect_attached_to_camera_new (environments\solo\m30_cryptum\fx\rock\rock_player_pebbles.effect);
	effect_attached_to_camera_new (environments\solo\m30_cryptum\fx\rock\rock_largefloating.effect);
	effect_attached_to_camera_new (environments\solo\m30_cryptum\fx\rock\rock_largefloating.effect);

	sleep_until (b_escape_over == TRUE);
	
	effect_attached_to_camera_stop (environments\solo\m30_cryptum\fx\rock\rock_player_pebbles.effect);
	effect_attached_to_camera_stop (environments\solo\m30_cryptum\fx\rock\rock_player_pebbles.effect);
	effect_attached_to_camera_stop (environments\solo\m30_cryptum\fx\rock\rock_largefloating.effect);
	effect_attached_to_camera_stop (environments\solo\m30_cryptum\fx\rock\rock_largefloating.effect);

end	

script static void placed_ambient_rocks_1()
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_largefloating.effect, ps_floating_rocks.p0);
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_largefloating.effect, ps_floating_rocks.p1);
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_largefloating.effect, ps_floating_rocks.p2);
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_largefloating.effect, ps_floating_rocks.p3);
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_largefloating.effect, ps_floating_rocks.p4);
	
	sleep_until (volume_test_players (tv_rock_slam_1), 1);

	garbage_collect_now();

	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_largefloating.effect, ps_floating_rocks.p5);
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_largefloating.effect, ps_floating_rocks.p6);
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_largefloating.effect, ps_floating_rocks.p7);
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_largefloating.effect, ps_floating_rocks.p8);
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_largefloating.effect, ps_floating_rocks.p9);
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_largefloating.effect, ps_floating_rocks.p10);
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_largefloating.effect, ps_floating_rocks.p11);
	
	sleep_until (volume_test_players (tv_ambient_rocks_2), 1);
	garbage_collect_now();
	
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_largefloating.effect, ps_floating_rocks.p12);
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_largefloating.effect, ps_floating_rocks.p13);
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_largefloating.effect, ps_floating_rocks.p14);
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_largefloating.effect, ps_floating_rocks.p15);
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_largefloating.effect, ps_floating_rocks.p16);
	
	sleep_until (volume_test_players (tv_cave_1_explosions), 1);
	garbage_collect_now();
	
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_largefloating.effect, ps_floating_rocks.p17);
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_largefloating.effect, ps_floating_rocks.p18);
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_largefloating.effect, ps_floating_rocks.p19);
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_largefloating.effect, ps_floating_rocks.p20);
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_largefloating.effect, ps_floating_rocks.p21);
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_largefloating.effect, ps_floating_rocks.p22);
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_largefloating.effect, ps_floating_rocks.p23);
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_largefloating.effect, ps_floating_rocks.p24);
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_largefloating.effect, ps_floating_rocks.p25);
	
	sleep_until (volume_test_players (tv_rock_ramp), 1);
	garbage_collect_now();
	
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_largefloating.effect, ps_floating_rocks.p26);
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_largefloating.effect, ps_floating_rocks.p27);
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_largefloating.effect, ps_floating_rocks.p28);
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_largefloating.effect, ps_floating_rocks.p29);
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_largefloating.effect, ps_floating_rocks.p30);
	
end

script static void placed_ambient_rocks_2()
	
	sleep_until (volume_test_players (tv_cave_2_explosions), 1);
	garbage_collect_now();
	
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_largefloating.effect, ps_floating_rocks.p31);
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_largefloating.effect, ps_floating_rocks_2.p0);
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_largefloating.effect, ps_floating_rocks_2.p1);
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_largefloating.effect, ps_floating_rocks_2.p2);
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_largefloating.effect, ps_floating_rocks_2.p3);
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_largefloating.effect, ps_floating_rocks_2.p4);
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_largefloating.effect, ps_floating_rocks_2.p5);
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_largefloating.effect, ps_floating_rocks_2.p6);
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_largefloating.effect, ps_floating_rocks_2.p7);
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_largefloating.effect, ps_floating_rocks_2.p8);
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_largefloating.effect, ps_floating_rocks_2.p9);
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_largefloating.effect, ps_floating_rocks_2.p10);
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_largefloating.effect, ps_floating_rocks_2.p11);
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_largefloating.effect, ps_floating_rocks_2.p12);
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_largefloating.effect, ps_floating_rocks_2.p13);
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_largefloating.effect, ps_floating_rocks_2.p14);
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_largefloating.effect, ps_floating_rocks_2.p15);
end


// ====================================================
// AMBIENT CRACK FX ===================================
// ====================================================

script static void ambient_crack_fx_1()

	sleep_until (volume_test_players (tv_rock_slam_1), 1);

	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_xsml_loop.effect, ps_orange_cracks.p0);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_small_loop.effect, ps_orange_cracks.p1);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_xsml_loop.effect, ps_orange_cracks.p2);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_xsml_loop.effect, ps_orange_cracks.p3);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_xsml_loop.effect, ps_orange_cracks.p4);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_xsml_loop.effect, ps_orange_cracks.p5);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_small_loop.effect, ps_orange_cracks.p6);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_xsml_loop.effect, ps_orange_cracks.p7);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_xsml_loop.effect, ps_orange_cracks.p8);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_small_loop.effect, ps_orange_cracks.p9);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_xsml_loop.effect, ps_orange_cracks.p10);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_small_loop.effect, ps_orange_cracks.p11);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_xsml_loop.effect, ps_orange_cracks.p12);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_xsml_loop.effect, ps_orange_cracks.p13);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_small_loop.effect, ps_orange_cracks.p14);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_xsml_loop.effect, ps_orange_cracks.p15);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_xsml_loop.effect, ps_orange_cracks.p16);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_xsml_loop.effect, ps_orange_cracks.p17);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_xsml_loop.effect, ps_orange_cracks.p18);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_small_loop.effect, ps_orange_cracks.p19);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_xsml_loop.effect, ps_orange_cracks.p20);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_xsml_loop.effect, ps_orange_cracks.p21);
	sleep (random_range (1, 8));
	
	sleep_until (volume_test_players (tv_ambient_rocks_2), 1);
	garbage_collect_now();
	
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_small_loop.effect, ps_orange_cracks.p22);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_xsml_loop.effect, ps_orange_cracks.p23);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_xsml_loop.effect, ps_orange_cracks.p24);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_xsml_loop.effect, ps_orange_cracks.p25);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_xsml_loop.effect, ps_orange_cracks.p26);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_small_loop.effect, ps_orange_cracks.p27);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_xsml_loop.effect, ps_orange_cracks.p28);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_xsml_loop.effect, ps_orange_cracks.p29);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_xsml_loop.effect, ps_orange_cracks.p30);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_small_loop.effect, ps_orange_cracks.p31);
end

script static void ambient_crack_fx_2()

	sleep_until (volume_test_players (tv_rumble_start_1), 1);
	garbage_collect_now();

	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_small_loop.effect, ps_orange_cracks_2.p0);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_xsml_loop.effect, ps_orange_cracks_2.p1);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_small_loop.effect, ps_orange_cracks_2.p2);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_small_loop.effect, ps_orange_cracks_2.p3);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_xsml_loop.effect, ps_orange_cracks_2.p4);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_small_loop.effect, ps_orange_cracks_2.p5);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_xsml_loop.effect, ps_orange_cracks_2.p6);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_small_loop.effect, ps_orange_cracks_2.p7);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_xsml_loop.effect, ps_orange_cracks_2.p8);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_xsml_loop.effect, ps_orange_cracks_2.p9);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_small_loop.effect, ps_orange_cracks_2.p10);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_small_loop.effect, ps_orange_cracks_2.p11);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_xsml_loop.effect, ps_orange_cracks_2.p12);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_xsml_loop.effect, ps_orange_cracks_2.p13);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_small_loop.effect, ps_orange_cracks_2.p14);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_small_loop.effect, ps_orange_cracks_2.p15);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_small_loop.effect, ps_orange_cracks_2.p16);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_xsml_loop.effect, ps_orange_cracks_2.p17);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_xsml_loop.effect, ps_orange_cracks_2.p18);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_xsml_loop.effect, ps_orange_cracks_2.p19);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_small_loop.effect, ps_orange_cracks_2.p20);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_small_loop.effect, ps_orange_cracks_2.p21);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_xsml_loop.effect, ps_orange_cracks_2.p22);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_xsml_loop.effect, ps_orange_cracks_2.p23);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_small_loop.effect, ps_orange_cracks_2.p24);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_xsml_loop.effect, ps_orange_cracks_2.p25);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_xsml_loop.effect, ps_orange_cracks_2.p26);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_xsml_loop.effect, ps_orange_cracks_2.p27);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_small_loop.effect, ps_orange_cracks_2.p28);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_small_loop.effect, ps_orange_cracks_2.p29);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_xsml_loop.effect, ps_orange_cracks_2.p30);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_small_loop.effect, ps_orange_cracks_2.p31);
end

script static void ambient_crack_fx_3()

	sleep_until (volume_test_players (tv_collapse_1), 1);
	garbage_collect_now();

	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_small_loop.effect, ps_orange_cracks_3.p0);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_small_loop.effect, ps_orange_cracks_3.p1);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_small_loop.effect, ps_orange_cracks_3.p2);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_xsml_loop.effect, ps_orange_cracks_3.p3);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_small_loop.effect, ps_orange_cracks_3.p4);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_small_loop.effect, ps_orange_cracks_3.p5);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_small_loop.effect, ps_orange_cracks_3.p6);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_small_loop.effect, ps_orange_cracks_3.p7);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_xsml_loop.effect, ps_orange_cracks_3.p8);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_small_loop.effect, ps_orange_cracks_3.p9);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_small_loop.effect, ps_orange_cracks_3.p10);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_xsml_loop.effect, ps_orange_cracks_3.p11);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_small_loop.effect, ps_orange_cracks_3.p12);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_small_loop.effect, ps_orange_cracks_3.p13);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_small_loop.effect, ps_orange_cracks_3.p14);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_xsml_loop.effect, ps_orange_cracks_3.p15);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_small_loop.effect, ps_orange_cracks_3.p16);
	sleep (random_range (1, 8));
	
	sleep_until (volume_test_players (tv_escape_save_2), 1);
	garbage_collect_now();
	
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_small_loop.effect, ps_orange_cracks_3.p17);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_small_loop.effect, ps_orange_cracks_3.p18);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_xsml_loop.effect, ps_orange_cracks_3.p19);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_xsml_loop.effect, ps_orange_cracks_3.p20);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_small_loop.effect, ps_orange_cracks_3.p21);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_small_loop.effect, ps_orange_cracks_3.p22);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_small_loop.effect, ps_orange_cracks_3.p23);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_small_loop.effect, ps_orange_cracks_3.p24);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_xsml_loop.effect, ps_orange_cracks_3.p25);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_small_loop.effect, ps_orange_cracks_3.p26);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_xsml_loop.effect, ps_orange_cracks_3.p27);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_small_loop.effect, ps_orange_cracks_3.p28);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_small_loop.effect, ps_orange_cracks_3.p29);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_small_loop.effect, ps_orange_cracks_3.p30);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_small_loop.effect, ps_orange_cracks_3.p31);
end

script static void ambient_crack_fx_4()

	sleep_until (volume_test_players (tv_corner_explosions), 1);
	garbage_collect_now();

	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_small_loop.effect, ps_orange_cracks_4.p0);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_small_loop.effect, ps_orange_cracks_4.p1);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_small_loop.effect, ps_orange_cracks_4.p2);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_small_loop.effect, ps_orange_cracks_4.p3);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_xsml_loop.effect, ps_orange_cracks_4.p4);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_small_loop.effect, ps_orange_cracks_4.p5);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_small_loop.effect, ps_orange_cracks_4.p6);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_small_loop.effect, ps_orange_cracks_4.p7);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_small_loop.effect, ps_orange_cracks_4.p8);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_small_loop.effect, ps_orange_cracks_4.p9);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_small_loop.effect, ps_orange_cracks_4.p10);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_xsml_loop.effect, ps_orange_cracks_4.p11);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_small_loop.effect, ps_orange_cracks_4.p12);
	
	sleep_until (volume_test_players (tv_rock_ramp), 1);
	garbage_collect_now();
	
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_small_loop.effect, ps_orange_cracks_4.p13);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_small_loop.effect, ps_orange_cracks_4.p14);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_small_loop.effect, ps_orange_cracks_4.p15);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_small_loop.effect, ps_orange_cracks_4.p16);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_small_loop.effect, ps_orange_cracks_4.p17);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_small_loop.effect, ps_orange_cracks_4.p18);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_small_loop.effect, ps_orange_cracks_4.p19);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_xsml_loop.effect, ps_orange_cracks_4.p20);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_small_loop.effect, ps_orange_cracks_4.p21);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_xsml_loop.effect, ps_orange_cracks_4.p22);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_small_loop.effect, ps_orange_cracks_4.p23);
	sleep (random_range (1, 8));
	
	sleep_until (volume_test_players (tv_cave_2_explosions), 1);
	garbage_collect_now();
	
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_small_loop.effect, ps_orange_cracks_4.p24);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_small_loop.effect, ps_orange_cracks_4.p25);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_small_loop.effect, ps_orange_cracks_4.p26);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_xsml_loop.effect, ps_orange_cracks_4.p27);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_small_loop.effect, ps_orange_cracks_4.p28);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_xsml_loop.effect, ps_orange_cracks_4.p29);
	sleep (random_range (1, 8));
	
	sleep_until (volume_test_players (tv_chaos_9), 1);
	garbage_collect_now();	
	
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_small_loop.effect, ps_orange_cracks_4.p30);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_small_loop.effect, ps_orange_cracks_4.p31);
end

script static void ambient_crack_fx_5()

	sleep_until (volume_test_players (tv_chaos_9), 1);
	garbage_collect_now();

	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_small_loop.effect, ps_orange_cracks_5.p0);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_small_loop.effect, ps_orange_cracks_5.p1);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_small_loop.effect, ps_orange_cracks_5.p2);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_small_loop.effect, ps_orange_cracks_5.p3);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_small_loop.effect, ps_orange_cracks_5.p4);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_small_loop.effect, ps_orange_cracks_5.p5);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_small_loop.effect, ps_orange_cracks_5.p6);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_small_loop.effect, ps_orange_cracks_5.p7);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_small_loop.effect, ps_orange_cracks_5.p8);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_small_loop.effect, ps_orange_cracks_5.p9);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\energy\energy_geyser_small_loop.effect, ps_orange_cracks_5.p10);
end

// ====================================================
// CAVE DUST ==========================================
// ====================================================

script static void cave_dust_1()
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_fallingdebris_long.effect, ps_cave_dust.p0);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_fallingdebris_long.effect, ps_cave_dust.p1);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_fallingdebris_long.effect, ps_cave_dust.p2);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_fallingdebris_long.effect, ps_cave_dust.p3);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_fallingdebris_long.effect, ps_cave_dust.p4);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_fallingdebris_long.effect, ps_cave_dust.p5);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_fallingdebris_long.effect, ps_cave_dust.p6);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_fallingdebris_long.effect, ps_cave_dust.p7);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_fallingdebris_long.effect, ps_cave_dust.p8);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_fallingdebris_long.effect, ps_cave_dust.p9);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_fallingdebris_long.effect, ps_cave_dust.p10);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_fallingdebris_long.effect, ps_cave_dust.p11);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_fallingdebris_long.effect, ps_cave_dust.p12);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_fallingdebris_long.effect, ps_cave_dust.p13);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_fallingdebris_long.effect, ps_cave_dust.p14);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_fallingdebris_long.effect, ps_cave_dust.p15);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_fallingdebris_long.effect, ps_cave_dust.p16);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_fallingdebris_long.effect, ps_cave_dust.p17);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_fallingdebris_long.effect, ps_cave_dust.p18);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_fallingdebris_long.effect, ps_cave_dust.p19);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_fallingdebris_long.effect, ps_cave_dust.p20);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_fallingdebris_long.effect, ps_cave_dust.p21);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_fallingdebris_long.effect, ps_cave_dust.p22);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_fallingdebris_long.effect, ps_cave_dust.p23);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_fallingdebris_long.effect, ps_cave_dust.p24);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_fallingdebris_long.effect, ps_cave_dust.p25);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_fallingdebris_long.effect, ps_cave_dust.p26);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_fallingdebris_long.effect, ps_cave_dust.p27);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_fallingdebris_long.effect, ps_cave_dust.p28);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_fallingdebris_long.effect, ps_cave_dust.p29);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_fallingdebris_long.effect, ps_cave_dust.p30);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_fallingdebris_long.effect, ps_cave_dust.p31);
end

script static void cave_dust_2()
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_fallingdebris_long.effect, ps_cave_dust_2.p0);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_fallingdebris_long.effect, ps_cave_dust_2.p1);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_fallingdebris_long.effect, ps_cave_dust_2.p2);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_fallingdebris_long.effect, ps_cave_dust_2.p3);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_fallingdebris_long.effect, ps_cave_dust_2.p4);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_fallingdebris_long.effect, ps_cave_dust_2.p5);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_fallingdebris_long.effect, ps_cave_dust_2.p6);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_fallingdebris_long.effect, ps_cave_dust_2.p7);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_fallingdebris_long.effect, ps_cave_dust_2.p8);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_fallingdebris_long.effect, ps_cave_dust_2.p9);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_fallingdebris_long.effect, ps_cave_dust_2.p10);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_fallingdebris_long.effect, ps_cave_dust_2.p11);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_fallingdebris_long.effect, ps_cave_dust_2.p12);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_fallingdebris_long.effect, ps_cave_dust_2.p13);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_fallingdebris_long.effect, ps_cave_dust_2.p14);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_fallingdebris_long.effect, ps_cave_dust_2.p15);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_fallingdebris_long.effect, ps_cave_dust_2.p16);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_fallingdebris_long.effect, ps_cave_dust_2.p17);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_fallingdebris_long.effect, ps_cave_dust_2.p18);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_fallingdebris_long.effect, ps_cave_dust_2.p19);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_fallingdebris_long.effect, ps_cave_dust_2.p20);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_fallingdebris_long.effect, ps_cave_dust_2.p21);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_fallingdebris_long.effect, ps_cave_dust_2.p22);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_fallingdebris_long.effect, ps_cave_dust_2.p23);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_fallingdebris_long.effect, ps_cave_dust_2.p24);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_fallingdebris_long.effect, ps_cave_dust_2.p25);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_fallingdebris_long.effect, ps_cave_dust_2.p26);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_fallingdebris_long.effect, ps_cave_dust_2.p27);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_fallingdebris_long.effect, ps_cave_dust_2.p28);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_fallingdebris_long.effect, ps_cave_dust_2.p29);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_fallingdebris_long.effect, ps_cave_dust_2.p30);
	sleep (random_range (1, 8));
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_fallingdebris_long.effect, ps_cave_dust_2.p31);
end

// ====================================================
// CHAOS (NEW STUFF) ==================================
// ====================================================

script dormant escape_chaos_1()
	sleep_until (volume_test_players (tv_chaos_1), 1);
	
	// THUNDER AND LIGHTNING VERY VERY FRIGHTENING
	sound_impulse_start('sound\environments\solo\m030\vin\play_m30_ghost_escape_thunder_start', NONE, 1 );
	
	game_save();
	sleep_s (r_short_coop_delay);
	
	/*
	thread (rock_raise_1());
	sleep (15);
	thread (rock_raise_2());
	sleep (25);
	thread (rock_raise_5());
	sleep (25);
	thread (rock_raise_6());
	*/
	sleep (30 * 3);
	thread (terrain_raise_1());
	thread (terrain_raise_2());
	thread (terrain_raise_3());
	thread (terrain_raise_4());
	thread (terrain_raise_5());
	thread (terrain_raise_6());
	
end

script static void rock_raise_1()
	thread (weak_camera_shake());

	sound_impulse_start('sound\environments\solo\m030\amb_m30_beta\amb_m30_escape_run\Amb_m30_rock_explodes_tier_1', NONE, 1 );
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_dust_burst_xl.effect, ps_rock_raising.p0);
	//effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_dust_burst_nodust.effect, ps_rock_raising.p0);
	//effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_dust_burst_xl.effect, ps_rock_raising.p0);
	object_move_to_flag (rock_raise_1, 0.6, flag_rock_raise_1);
	wake (m30_escape_destruction_01);
end

script static void rock_raise_2()
	sound_impulse_start('sound\environments\solo\m030\amb_m30_beta\amb_m30_escape_run\Amb_m30_rock_explodes_tier_1', NONE, 1 );
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_dust_burst_xl.effect, ps_rock_raising.p1);
	//effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_dust_burst_xl.effect, ps_rock_raising.p1);
	object_move_to_flag (rock_raise_2, 0.6, flag_rock_raise_2);
end

script static void rock_raise_5()
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_dust_burst_xl.effect, ps_rock_raising.p25);
	sound_impulse_start('sound\environments\solo\m030\amb_m30_beta\amb_m30_escape_run\Amb_m30_rock_explodes_tier_1', NONE, 1 );
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_dust_burst_xl, ps_rock_raising.p11);
	object_move_to_flag (rock_raise_5, 0.6, flag_rock_raise_5);
end

script static void rock_raise_6()
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_dust_burst_xl, ps_rock_raising.p12);
	sound_impulse_start('sound\environments\solo\m030\amb_m30_beta\amb_m30_escape_run\Amb_m30_rock_explodes_tier_1', NONE, 1 );
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_dust_burst_xl, ps_rock_raising.p12);
	object_move_to_flag (rock_raise_6, 0.1, flag_rock_raise_6);
end

script static void terrain_raise_1()
	sound_impulse_start('sound\environments\solo\m030\amb_m30_beta\amb_m30_escape_run\Amb_m30_terrain_raise', NONE, 1 );
	object_move_to_flag (terrain_raise_1, 2.3, flag_terrain_raise_1);
end

script static void terrain_raise_2()
	sound_impulse_start('sound\environments\solo\m030\amb_m30_beta\amb_m30_escape_run\Amb_m30_terrain_raise', NONE, 1 );
	object_move_to_flag (terrain_raise_2, 2.9, flag_terrain_raise_2);
end

script static void terrain_raise_3()
	sound_impulse_start('sound\environments\solo\m030\amb_m30_beta\amb_m30_escape_run\Amb_m30_terrain_raise', NONE, 1 );
	object_move_to_flag (terrain_raise_3, 2.3, flag_terrain_raise_3);
end

script static void terrain_raise_4()
	sound_impulse_start('sound\environments\solo\m030\amb_m30_beta\amb_m30_escape_run\Amb_m30_terrain_raise', NONE, 1 );
	object_move_to_flag (terrain_raise_4, 2.9, flag_terrain_raise_4);
end

script static void terrain_raise_5()
	sound_impulse_start('sound\environments\solo\m030\amb_m30_beta\amb_m30_escape_run\Amb_m30_terrain_raise', NONE, 1 );
	object_move_to_flag (terrain_raise_5, 2.4, flag_terrain_raise_5);
end

script static void terrain_raise_6()
	sound_impulse_start('sound\environments\solo\m030\amb_m30_beta\amb_m30_escape_run\Amb_m30_terrain_raise', NONE, 1 );
	object_move_to_flag (terrain_raise_6, 3.2, flag_terrain_raise_6);
end

script dormant escape_chaos_2()
	sleep_until (volume_test_players (tv_chaos_2), 1);
	
	thread (rock_raise_3());
	thread (rock_raise_4());
	
end	

script static void rock_raise_3()
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_dust_burst_xl.effect, ps_rock_raising.p2);
	sound_impulse_start('sound\environments\solo\m030\amb_m30_beta\amb_m30_escape_run\Amb_m30_rock_explodes_tier_1', NONE, 1 );
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_dust_burst_xl, ps_rock_raising.p2);
	object_move_to_flag (rock_raise_3, 0.4, flag_rock_raise_3);
end	

script static void rock_raise_4()
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_dust_burst_xl.effect, ps_rock_raising.p3);
	thread (weak_camera_shake());

	sound_impulse_start('sound\environments\solo\m030\amb_m30_beta\amb_m30_escape_run\Amb_m30_rock_explodes_tier_1', NONE, 1 );
	
	sound_impulse_start('sound\environments\solo\m030\vin\m30_ghost_escape_pillar1', rock_raise_4, 1 );
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_dust_burst_xl.effect, ps_rock_raising.p3);
	object_move_to_flag (rock_raise_4, 0.3, flag_rock_raise_4);
end	

script dormant escape_chaos_3()
	sleep_until (volume_test_players (tv_chaos_3), 1);
	
	sound_impulse_start('sound\environments\solo\m030\vin\m30_ghost_escape_pillar7', terrain_move_1, 1 );
	object_move_to_flag (terrain_move_1, 24.2, flag_world_center);

end

script dormant phantom_crash_1()
	sleep_until (volume_test_players (tv_phantom_crash_1), 1);
	
	thread (phantom_1_crashing());
//	thread (ambient_rocks_2_start());
	
end

script dormant temp_rumble_sound_start()
	sleep_until (volume_test_players (tv_rumble_start_1), 1);
	sound_impulse_start (sound\environments\solo\m030\amb_m30_beta\amb_m30_escape_run\Amb_m30_rock_slides_loop, NONE, 1 );
	wake (temp_rumble_sound_stop);
end

script dormant temp_rumble_sound_stop()
	sleep_until (volume_test_players (tv_chaos_5), 1);
	sound_impulse_stop (sound\environments\solo\m030\amb_m30_beta\amb_m30_escape_run\Amb_m30_rock_slides_loop);
end

script static void phantom_1_crashing()
	/*
	object_create (sce_phantom_crash_1);
	object_set_scale (sce_phantom_crash_1, 0.01, 0);
	object_set_scale (sce_phantom_crash_1, 0.5, 80);
	object_set_scale (sce_phantom_crash_1, 1.0, 40);
	object_move_to_point (sce_phantom_crash_1, 3.0, ps_phantom_crashes.p1);
	object_destroy (sce_phantom_crash_1);
	*/
	pup_play_show ("pup_phantom_crash");

	sleep_until (b_phantom_crash_1_explosion == TRUE);

	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\phantom_crash\main_explosion.effect, ps_phantom_crashes.p1);
	
	sound_impulse_start('sound\environments\solo\m010\ambience\explosions\amb_m10_explosions_large_01', NONE, 1 );
	// sound_impulse_start('sound\environments\solo\m030\vin\play_m30_ghost_escape_phantom_crash_02', NONE, 1 );
	effect_new_at_ai_point (environments\solo\m10_crash\fx\flash_white.effect, ps_phantom_crashes.p1);
	sleep (5);
	effect_new_at_ai_point (environments\solo\m10_crash\fx\flash_white.effect, ps_phantom_crashes.p2);
	sound_impulse_start('sound\environments\solo\m030\amb_m30_beta\amb_m30_escape_run\Amb_m30_rock_explodes_tier_1', NONE, 1 );
	sleep (5);
	thread (weak_camera_shake());

	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\phantom_crash\main_explosion.effect, ps_phantom_crashes.p3);
	sound_impulse_start('sound\environments\solo\m030\amb_m30_beta\amb_m30_escape_run\Amb_m30_rock_explodes_tier_2', NONE, 1 );
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_dust_burst_nodust.effect, ps_phantom_crashes.p3);
end

script dormant rock_slam_1()
	sleep_until (volume_test_players (tv_rock_slam_1), 1);
	
	// Jump #1
	sound_impulse_start('sound\environments\solo\m030\ambience\events\amb_m30_ghost_jump', NONE, 1 );	// player enters tv_rock_slam_1 right before jumping the ghost
	
	thread (phantom_debris());
	
	thread (rock_1_slamup());
	sleep (15);
	thread (rock_2_slamup());
	sleep (15);
	thread (rock_3_slamup());
	sleep (25);
	thread (rock_4_slamup());
	sleep (30);
	thread (rock_5_slamup());
	sleep (25);
	thread (rock_6_slamup());
	sleep (20);
	thread (rock_7_slamup());
	sleep (25);
	
	
end
	
script static void rock_1_slamup()
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_dust_burst_xl.effect, ps_rock_raising.p4);
	sound_impulse_start('sound\environments\solo\m030\amb_m30_beta\amb_m30_escape_run\Amb_m30_rock_explodes_tier_2', NONE, 1 );
	sound_impulse_start('sound\environments\solo\m030\amb_m30_beta\amb_m30_escape_run\sound\environments\solo\m030\vin\m30_ghost_escape_pillar3', rockslam_1, 1 );
	object_move_to_flag (rockslam_1, 0.3, flag_rockslam_1);
	//effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_dust_burst_xl.effect, ps_rock_raising.p4);
end

script static void rock_2_slamup()
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_dust_burst_xl.effect, ps_rock_raising.p5);
	sound_impulse_start('sound\environments\solo\m030\amb_m30_beta\amb_m30_escape_run\Amb_m30_rock_explodes_tier_2', NONE, 1 );
	object_move_to_flag (rockslam_2, 0.3, flag_rockslam_2);
	//effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_dust_burst_xl.effect, ps_rock_raising.p5);
end

script static void rock_3_slamup()
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_dust_burst_xl.effect, ps_rock_raising.p6);
	sound_impulse_start('sound\environments\solo\m030\amb_m30_beta\amb_m30_escape_run\Amb_m30_rock_explodes_tier_2', NONE, 1 );
	sound_impulse_start('sound\environments\solo\m030\vin\m30_ghost_escape_pillar4to6', NONE, 1 );
	object_move_to_flag (rockslam_3, 0.3, flag_rockslam_3);
	//effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_dust_burst_xl.effect, ps_rock_raising.p6);
end

script static void rock_4_slamup()
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_dust_burst_xl.effect, ps_rock_raising.p7);
	sound_impulse_start('sound\environments\solo\m030\amb_m30_beta\amb_m30_escape_run\Amb_m30_rock_explodes_tier_2', NONE, 1 );
	object_move_to_flag (rockslam_4, 0.3, flag_rockslam_4);
	//effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_dust_burst_xl.effect, ps_rock_raising.p7);
end

script static void rock_5_slamup()
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_dust_burst_xl.effect, ps_rock_raising.p8);
	sound_impulse_start('sound\environments\solo\m030\amb_m30_beta\amb_m30_escape_run\Amb_m30_rock_explodes_tier_2', NONE, 1 );
	object_move_to_flag (rockslam_5, 0.3, flag_rockslam_5);
	//effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_dust_burst_xl.effect, ps_rock_raising.p8);
end

script static void rock_6_slamup()
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_dust_burst_xl.effect, ps_rock_raising.p9);
	sound_impulse_start('sound\environments\solo\m030\amb_m30_beta\amb_m30_escape_run\Amb_m30_rock_explodes_tier_2', NONE, 1 );
	object_move_to_flag (rockslam_6, 0.3, flag_rockslam_6);
	//effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_dust_burst_xl.effect, ps_rock_raising.p9);
end

script static void rock_7_slamup()
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_dust_burst_xl.effect, ps_rock_raising.p10);
	sound_impulse_start('sound\environments\solo\m030\amb_m30_beta\amb_m30_escape_run\Amb_m30_rock_explodes_tier_2', NONE, 1 );
	object_move_to_flag (rockslam_7, 0.3, flag_rockslam_7);
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_dust_burst_xl.effect, ps_rock_raising.p10);
end

script static void phantom_debris()
	ai_place (sq_dead_phantom1);
	ai_place (sq_dead_phantom2);
	ai_place (sq_dead_phantom3);
	ai_place (sq_dead_phantom4);
	ai_place (sq_dead_phantom5);
	ai_place (sq_dead_phantom6);
	
	sleep (30 * 3);
	
	ai_place (sq_cov_panic_1);
	ai_place (sq_cov_panic_2);
	ai_place (sq_cov_panic_3);
	
	sleep (1);
	
	thread (cov_panic_1_flee_anims());
	thread (cov_panic_2_flee_anims());
	thread (cov_panic_3_flee_anims());
end

script static void cov_panic_1_flee_anims()
	unit_set_stance (ai_get_unit (sq_cov_panic_1.spawn_points_0), "flee");
	unit_set_stance (ai_get_unit (sq_cov_panic_1.spawn_points_1), "flee");
	unit_set_stance (ai_get_unit (sq_cov_panic_1.spawn_points_2), "flee");
	unit_set_stance (ai_get_unit (sq_cov_panic_1.spawn_points_3), "flee");
	unit_set_stance (ai_get_unit (sq_cov_panic_1.spawn_points_4), "flee");
	unit_set_stance (ai_get_unit (sq_cov_panic_1.spawn_points_5), "flee");
	unit_set_stance (ai_get_unit (sq_cov_panic_1.spawn_points_6), "flee");
	unit_set_stance (ai_get_unit (sq_cov_panic_1.spawn_points_7), "flee");
end

script static void cov_panic_2_flee_anims()
	unit_set_stance (ai_get_unit (sq_cov_panic_2.spawn_points_0), "flee");
	unit_set_stance (ai_get_unit (sq_cov_panic_2.spawn_points_1), "flee");
	unit_set_stance (ai_get_unit (sq_cov_panic_2.spawn_points_2), "flee");
	unit_set_stance (ai_get_unit (sq_cov_panic_2.spawn_points_3), "flee");
	unit_set_stance (ai_get_unit (sq_cov_panic_2.spawn_points_4), "flee");
	unit_set_stance (ai_get_unit (sq_cov_panic_2.spawn_points_5), "flee");
	unit_set_stance (ai_get_unit (sq_cov_panic_2.spawn_points_6), "flee");
	unit_set_stance (ai_get_unit (sq_cov_panic_2.spawn_points_7), "flee");
end

script static void cov_panic_3_flee_anims()
	unit_set_stance (ai_get_unit (sq_cov_panic_3.spawn_points_0), "flee");
	unit_set_stance (ai_get_unit (sq_cov_panic_3.spawn_points_1), "flee");
	unit_set_stance (ai_get_unit (sq_cov_panic_3.spawn_points_2), "flee");
	unit_set_stance (ai_get_unit (sq_cov_panic_3.spawn_points_3), "flee");
	unit_set_stance (ai_get_unit (sq_cov_panic_3.spawn_points_4), "flee");
end

script static void cov_panic_4_flee_anims()
	unit_set_stance (ai_get_unit (sq_cov_panic_4.spawn_points_0), "flee");
	unit_set_stance (ai_get_unit (sq_cov_panic_4.spawn_points_1), "flee");
	unit_set_stance (ai_get_unit (sq_cov_panic_4.spawn_points_2), "flee");
	unit_set_stance (ai_get_unit (sq_cov_panic_4.spawn_points_3), "flee");
	unit_set_stance (ai_get_unit (sq_cov_panic_4.spawn_points_4), "flee");
end

script static void cov_panic_5_flee_anims()
	unit_set_stance (ai_get_unit (sq_cov_panic_5.spawn_points_0), "flee");
	unit_set_stance (ai_get_unit (sq_cov_panic_5.spawn_points_1), "flee");
	unit_set_stance (ai_get_unit (sq_cov_panic_5.spawn_points_2), "flee");
	unit_set_stance (ai_get_unit (sq_cov_panic_5.spawn_points_3), "flee");
	unit_set_stance (ai_get_unit (sq_cov_panic_5.spawn_points_4), "flee");
	unit_set_stance (ai_get_unit (sq_cov_panic_5.spawn_points_5), "flee");
	unit_set_stance (ai_get_unit (sq_cov_panic_5.spawn_points_6), "flee");
	unit_set_stance (ai_get_unit (sq_cov_panic_5.spawn_points_7), "flee");
	unit_set_stance (ai_get_unit (sq_cov_panic_5.spawn_points_8), "flee");
	unit_set_stance (ai_get_unit (sq_cov_panic_5.spawn_points_9), "flee");
end

script command_script cs_cov_panic_1()
	cs_abort_on_damage (ai_current_actor, TRUE);
	cs_go_to (ps_cov_panic.p0);
	cs_go_to (ps_cov_panic.p1);
	cs_go_to (ps_cov_panic.p2);
	cs_go_to (ps_cov_panic.p3);
	cs_go_to (ps_cov_panic.p4);
	cs_go_to (ps_cov_panic.p5);
	cs_go_to (ps_cov_panic.p6);
	cs_go_to (ps_cov_panic.p7);
	cs_go_to (ps_cov_panic.p8);
	ai_kill (ai_current_actor);
end

script command_script cs_cov_panic_2()
	cs_abort_on_damage (ai_current_actor, TRUE);
	cs_go_to (ps_cov_panic.p3);
	cs_go_to (ps_cov_panic.p4);
	cs_go_to (ps_cov_panic.p5);
	cs_go_to (ps_cov_panic.p6);
	cs_go_to (ps_cov_panic.p7);
	cs_go_to (ps_cov_panic.p8);
	ai_kill (ai_current_actor);
end

script command_script cs_cov_panic_3()
	cs_abort_on_damage (ai_current_actor, TRUE);
	cs_go_to (ps_cov_panic.p5);
	cs_go_to (ps_cov_panic.p6);
	cs_go_to (ps_cov_panic.p7);
	cs_go_to (ps_cov_panic.p8);
	ai_kill (ai_current_actor);
end

script command_script sq_dead_phantom_explode()
	damage_object (unit_get_vehicle(ai_current_actor), engine_right, 10000);
	damage_object (unit_get_vehicle(ai_current_actor), engine_left, 10000);
	damage_object (unit_get_vehicle(ai_current_actor), hull, 10000);
end

script dormant escape_chaos_4()
	sleep_until (volume_test_players (tv_chaos_4), 1);
	
	sleep_s (r_medium_coop_delay);
	
	// Jump #2
	sound_impulse_start('sound\environments\solo\m030\ambience\events\amb_m30_ghost_jump', NONE, 1 );	// player enters escape_chaos_4 right before jumping the ghost
	
	thread (weak_camera_shake());
	
	escape_collapse_2->f_animate();
	thread (ragdoll_bodies());

	// wait for the player to exit tv_choas_4, this is right before the 3rd ghost jump
	sleep_until (volume_test_players (tv_chaos_4), 0);
	
	// Jump #3
	sound_impulse_start('sound\environments\solo\m030\ambience\events\amb_m30_ghost_jump', NONE, 1 );
end


script dormant escape_save_1()
	//sleep_until (f_escape_save_check (tv_escape_save_1, player0) or f_escape_save_check (tv_escape_save_1, player1) or f_escape_save_check (tv_escape_save_1, player2) or f_escape_save_check (tv_escape_save_1, player3), 1);
	sleep_until (volume_test_players (tv_escape_save_1), 1);
	
	if is_skull_active(skull_iron) then
		dprint ("You have iron skull on, WELCOME TO HELL");
	elseif game_is_cooperative() then
		
		sleep (5);
		
		volume_teleport_players_not_inside_with_vehicles (tv_escape_save_1,  flag_escape_teleport_1);
		
		sleep (5);
		
		game_save();
		
	elseif unit_in_vehicle (player0) then
		game_save();
	elseif not unit_in_vehicle (player0) then
		dprint ("Not in a vehicle - not going to save you!");	
	end	
	
	
end

script dormant escape_save_2()
	//sleep_until (f_escape_save_check (tv_escape_save_2, player0) or f_escape_save_check (tv_escape_save_2, player1) or f_escape_save_check (tv_escape_save_2, player2) or f_escape_save_check (tv_escape_save_2, player3), 1);
	sleep_until (volume_test_players (tv_escape_save_2), 1);
	
	if is_skull_active(skull_iron) then
		dprint ("You have iron skull on, WELCOME TO HELL");
	elseif game_is_cooperative() then
		
		sleep (5);
		
		volume_teleport_players_not_inside_with_vehicles (tv_escape_save_2,  flag_escape_teleport_2);
		
		sleep (5);
		
		game_save();
		
	elseif unit_in_vehicle (player0) then
		game_save();
	elseif not unit_in_vehicle (player0) then
		dprint ("Not in a vehicle - not going to save you!");	
	end	

end

script static boolean f_escape_save_check(trigger_volume tv_save, player p_player)
	volume_test_players (tv_save) and unit_in_vehicle (p_player);
end

script dormant escape_dead_phantom_cleanup()
	sleep_until (volume_test_players (tv_escape_save_2), 1);
	
	ai_place (sq_cov_panic_4);
	sleep (1);
	thread (cov_panic_4_flee_anims());
	ai_erase (sq_dead_phantom1);
	ai_erase (sq_dead_phantom2);
	ai_erase (sq_dead_phantom3);
	ai_erase (sq_dead_phantom4);
	ai_erase (sq_dead_phantom5);
	ai_erase (sq_dead_phantom6);
	ai_erase (sq_cov_panic_1);
	ai_erase (sq_cov_panic_2);
	ai_erase (sq_cov_panic_3);
	wake (cov_panic_2_kill);
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_dust_burst_xl.effect, ps_rubble_explosions_1.p23);
	sound_impulse_start('sound\environments\solo\m030\amb_m30_beta\amb_m30_escape_run\Amb_m30_rock_explodes_tier_2', NONE, 1 );
	sleep (15);
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_dust_burst_xl.effect, ps_rubble_explosions_1.p24);
	sound_impulse_start('sound\environments\solo\m030\amb_m30_beta\amb_m30_escape_run\Amb_m30_rock_explodes_tier_2', NONE, 1 );
	sleep (15);
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_dust_burst_xl.effect, ps_rubble_explosions_1.p25);
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_dust_burst_xl.effect, ps_rubble_explosions_1.p26);
	sound_impulse_start('sound\environments\solo\m030\amb_m30_beta\amb_m30_escape_run\Amb_m30_rock_explodes_tier_2', NONE, 1 );
	sleep (20);
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_dust_burst_xl.effect, ps_rubble_explosions_1.p27);
	sound_impulse_start('sound\environments\solo\m030\amb_m30_beta\amb_m30_escape_run\Amb_m30_rock_explodes_tier_2', NONE, 1 );
	
end

script command_script cov_panic_2()
	cs_shoot (TRUE);
	cs_move_towards_point (ps_cov_panic_2.p1, 3);
	
end

script dormant cov_panic_2_kill()
	sleep_until (device_get_position (escape_collapse_4) > 0.2);

	ai_kill (sq_cov_panic_4);
end

script dormant large_ambient_fires()
	sleep_until (volume_test_players (tv_chaos_5), 1);
//	thread (ambient_rocks_3_start());
	thread (phantom_2_crashing());
	thread (ambient_fire_1());
	thread (ambient_fire_2());
	thread (ambient_fire_3());
	thread (ambient_fire_4());
	thread (ambient_fire_5());
	thread (ambient_fire_6());
	thread (ambient_fire_7());
	thread (ambient_fire_8());
	thread (ambient_fire_9());
	thread (ambient_fire_10());
	thread (ambient_fire_13());
	thread (ambient_fire_14());
	thread (ambient_fire_15());
	thread (ambient_fire_16());
	sleep (60);
	dprint ("world_move_1 go!");
	object_move_to_flag (world_move_1, 4.2, flag_world_move_1);
	
end

script dormant smaller_ambient_fires()
	sleep_until (volume_test_players (tv_chaos_5), 1);
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\fire\covenant_fire_cheap_med.effect, ps_phantom_fires_2.p0);
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\fire\covenant_fire_cheap_med.effect, ps_phantom_fires_2.p1);
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\fire\covenant_fire_cheap_med.effect, ps_phantom_fires_2.p2);
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\fire\covenant_fire_cheap_small.effect, ps_phantom_fires_2.p3);
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\fire\covenant_fire_cheap_med.effect, ps_phantom_fires_2.p4);
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\fire\covenant_fire_cheap_med.effect, ps_phantom_fires_2.p5);
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\fire\covenant_fire_cheap_med.effect, ps_phantom_fires_2.p6);
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\fire\covenant_fire_cheap_med.effect, ps_phantom_fires_2.p7);
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\fire\covenant_fire_cheap_med.effect, ps_phantom_fires_2.p8);
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\fire\covenant_fire_cheap_med.effect, ps_phantom_fires_2.p9);
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\fire\covenant_fire_cheap_med.effect, ps_phantom_fires_2.p10);
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\fire\covenant_fire_cheap_small.effect, ps_phantom_fires_2.p11);
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\fire\covenant_fire_cheap_med.effect, ps_phantom_fires_2.p12);
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\fire\covenant_fire_cheap_med.effect, ps_phantom_fires_2.p13);
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\fire\covenant_fire_cheap_med.effect, ps_phantom_fires_2.p14);
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\fire\covenant_fire_cheap_med.effect, ps_phantom_fires_2.p15);
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\fire\covenant_fire_cheap_med.effect, ps_phantom_fires_2.p16);
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\fire\covenant_fire_cheap_small.effect, ps_phantom_fires_2.p17);
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\fire\covenant_fire_cheap_med.effect, ps_phantom_fires_2.p18);
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\fire\covenant_fire_cheap_med.effect, ps_phantom_fires_2.p19);
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\fire\covenant_fire_cheap_med.effect, ps_phantom_fires_2.p20);
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\fire\covenant_fire_cheap_med.effect, ps_phantom_fires_2.p21);
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\fire\covenant_fire_cheap_med.effect, ps_phantom_fires_2.p22);
end

script static void ragdoll_bodies()
	object_wake_physics (body1);
	object_wake_physics (body2);
	object_wake_physics (body3);
	object_wake_physics (body4);
	object_wake_physics (body5);
	object_wake_physics (body6);
	object_wake_physics (body7);
	object_wake_physics (body8);
	object_wake_physics (body9);
	object_wake_physics (body10);
	object_wake_physics (body11);
	object_wake_physics (body12);
end

script static void ambient_fire_1()
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\fire\covenant_fire_cheap_large.effect, ps_phantom_fires.p0);
end

script static void ambient_fire_2()
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\fire\covenant_fire_cheap_large.effect, ps_phantom_fires.p1);
end

script static void ambient_fire_3()
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\fire\covenant_fire_cheap_large.effect, ps_phantom_fires.p2);
end

script static void ambient_fire_4()
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\fire\covenant_fire_cheap_large.effect, ps_phantom_fires.p3);
end

script static void ambient_fire_5()
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\fire\covenant_fire_cheap_large.effect, ps_phantom_fires.p4);
end

script static void ambient_fire_6()
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\fire\covenant_fire_cheap_large.effect, ps_phantom_fires.p5);
end

script static void ambient_fire_7()
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\fire\covenant_fire_cheap_large.effect, ps_phantom_fires.p6);
end

script static void ambient_fire_8()
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\fire\covenant_fire_cheap_large.effect, ps_phantom_fires.p7);
end

script static void ambient_fire_9()
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\fire\covenant_fire_cheap_large.effect, ps_phantom_fires.p8);
end

script static void ambient_fire_10()
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\fire\covenant_fire_cheap_large.effect, ps_phantom_fires.p9);
end

script static void ambient_fire_11()
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\fire\covenant_fire_cheap_large.effect, ps_phantom_fires.p10);
end

script static void ambient_fire_12()
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\fire\covenant_fire_cheap_large.effect, ps_phantom_fires.p11);
end

script static void ambient_fire_13()
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\fire\covenant_fire_cheap_large.effect, ps_phantom_fires.p12);
end

script static void ambient_fire_14()
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\fire\covenant_fire_cheap_large.effect, ps_phantom_fires.p13);
end

script static void ambient_fire_15()
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\fire\covenant_fire_cheap_large.effect, ps_phantom_fires.p14);
end

script static void ambient_fire_16()
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\fire\covenant_fire_cheap_large.effect, ps_phantom_fires.p15);
end


script static void phantom_2_crashing()
	
	//sleep_s (r_short_coop_delay);
	
	object_create (sce_phantom_crash_2);
	object_set_scale (sce_phantom_crash_2, 0.01, 0);
	object_set_scale (sce_phantom_crash_2, 1.0, 120);
	
	sound_impulse_start('sound\environments\solo\m030\vin\m30_ghost_escape_phantom_incoming_02', sce_phantom_crash_2, 1 );
	object_move_to_point (sce_phantom_crash_2, 3.0, ps_phantom_crashes.p0);
	
	object_destroy (sce_phantom_crash_2);
	effect_new_at_ai_point (environments\solo\m10_crash\fx\flash_white.effect, ps_phantom_crashes.p4);
	
	sound_impulse_start('sound\environments\solo\m030\amb_m30_beta\amb_m30_escape_run\Amb_m30_rock_explodes_tier_2', NONE, 1 );
	object_create (phantom_crash_2_debris);
	thread (phantom_2_fire_1());
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\phantom_crash\phantom_cliff_explosion1.effect, ps_phantom_crashes.p4);
	sound_impulse_start('sound\environments\solo\m030\amb_m30_beta\amb_m30_escape_run\Amb_m30_rock_explodes_tier_2', NONE, 1 );
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\phantom_crash\phantom_cliff_explosion2.effect, ps_phantom_crashes.p5);
	thread (phantom_2_fire_2());
	sleep (10);
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_dust_burst_xl.effect, ps_phantom_crashes.p0);
	sound_impulse_start('sound\environments\solo\m030\vin\play_m30_ghost_escape_phantom_crash_02', sce_phantom_crash_2, 1 );
	sound_impulse_start('sound\environments\solo\m030\amb_m30_beta\amb_m30_escape_run\Amb_m30_rock_explodes_tier_1', NONE, 1 );
	thread (phantom_2_fire_3());
end

script static void phantom_2_fire_1()
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\fire\covenant_fire_cheap_large.effect, ps_phantom_crashes.p4);
end

script static void phantom_2_fire_2()
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\fire\covenant_fire_cheap_large.effect, ps_phantom_crashes.p5);	
end

script static void phantom_2_fire_3()
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\fire\covenant_fire_cheap_large.effect, ps_phantom_crashes.p0);	
end

script dormant escape_collapse_1()
	sleep_until (volume_test_players (tv_collapse_1), 1);
	sleep_s (r_medium_coop_delay);

	escape_collapse_1->f_animate();
	print ("device machine: escape_collapse_1 animating");
end

script dormant cave_collapse_1()
	sleep_until (volume_test_players (tv_cave_collapse), 1);
	
	sleep_s (r_medium_coop_delay);
	
	thread (strong_camera_shake());
	
	escape_collapse_3->f_animate();
end

script dormant cave_1_explosions()
	sleep_until (volume_test_players (tv_cave_1_explosions), 1);
	
	sleep (10);
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_dust_burst_xl.effect, ps_rubble_explosions_1.p0);
	//effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_dust_burst_xl.effect, ps_rubble_explosions_1.p0);
	sound_impulse_start('sound\environments\solo\m030\amb_m30_beta\amb_m30_escape_run\Amb_m30_rock_explodes_tier_2', NONE, 1 );
	sleep (25);
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_dust_burst_xl.effect, ps_rubble_explosions_1.p1);
	//effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_dust_burst_xl.effect, ps_rubble_explosions_1.p1);
	sound_impulse_start('sound\environments\solo\m030\amb_m30_beta\amb_m30_escape_run\Amb_m30_rock_explodes_tier_1', NONE, 1 );
	sleep (30);
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_dust_burst_xl.effect, ps_rubble_explosions_1.p2);
	//effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_dust_burst_xl.effect, ps_rubble_explosions_1.p2);
	sound_impulse_start('sound\environments\solo\m030\amb_m30_beta\amb_m30_escape_run\Amb_m30_rock_explodes_tier_3', NONE, 1 );
	sleep (25);
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_dust_burst_xl.effect, ps_rubble_explosions_1.p3);
	//effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_dust_burst_xl.effect, ps_rubble_explosions_1.p3);
	sound_impulse_start('sound\environments\solo\m030\amb_m30_beta\amb_m30_escape_run\Amb_m30_rock_explodes_tier_1', NONE, 1 );
	sleep (30);
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_dust_burst_xl.effect, ps_rubble_explosions_1.p4);
	//effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_dust_burst_xl.effect, ps_rubble_explosions_1.p4);
	sound_impulse_start('sound\environments\solo\m030\amb_m30_beta\amb_m30_escape_run\Amb_m30_rock_explodes_tier_2', NONE, 1 );
	sleep (25);
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_dust_burst_xl.effect, ps_rubble_explosions_1.p5);
	//effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_dust_burst_xl.effect, ps_rubble_explosions_1.p5);
	sound_impulse_start('sound\environments\solo\m030\amb_m30_beta\amb_m30_escape_run\Amb_m30_rock_explodes_tier_2', NONE, 1 );
	sleep (25);
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_dust_burst_xl.effect, ps_rubble_explosions_1.p6);
	//effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_dust_burst_xl.effect, ps_rubble_explosions_1.p6);
	sound_impulse_start('sound\environments\solo\m030\amb_m30_beta\amb_m30_escape_run\Amb_m30_rock_explodes_tier_3', NONE, 1 );
end

script dormant corner_explosions()
	sleep_until (volume_test_players (tv_corner_explosions), 1);
	
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_dust_burst_xl.effect, ps_rubble_explosions_1.p9);
	sound_impulse_start('sound\environments\solo\m030\amb_m30_beta\amb_m30_escape_run\Amb_m30_rock_explodes_tier_2', NONE, 1 );
	sleep (20);
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_dust_burst_xl.effect, ps_rubble_explosions_1.p10);
	sound_impulse_start('sound\environments\solo\m030\amb_m30_beta\amb_m30_escape_run\Amb_m30_rock_explodes_tier_1', NONE, 1 );
	sleep (15);
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_dust_burst_xl.effect, ps_rubble_explosions_1.p7);
	sound_impulse_start('sound\environments\solo\m030\amb_m30_beta\amb_m30_escape_run\Amb_m30_rock_explodes_tier_3', NONE, 1 );
	sleep (10);
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_dust_burst_xl.effect, ps_rubble_explosions_1.p8);
	sound_impulse_start('sound\environments\solo\m030\amb_m30_beta\amb_m30_escape_run\Amb_m30_rock_explodes_tier_2', NONE, 1 );
end

script dormant escape_chaos_6()
	sleep_until (volume_test_players (tv_chaos_8), 1);
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_dust_burst_xl.effect, ps_rubble_explosions_1.p28);
	sound_impulse_start('sound\environments\solo\m030\amb_m30_beta\amb_m30_escape_run\Amb_m30_rock_explodes_tier_2', NONE, 1 );
	sound_impulse_start('sound\environments\solo\m030\vin\m30_ghost_escape_pillar9', rock_raise_7, 1 );
	object_move_to_flag (rock_raise_7, 0.4, flag_rock_raise_7);
	object_move_to_flag (rock_raise_9, 2.8, flag_rock_raise_9);
end

script dormant escape_chaos_7()
	sleep_until (volume_test_players (tv_chaos_6), 1);
	
	// Jump #4
	sound_impulse_start('sound\environments\solo\m030\ambience\events\amb_m30_ghost_jump', NONE, 1 ); // player enters tv_chaos_6 right before a jump
	
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_dust_burst_xl.effect, ps_rubble_explosions_1.p11);
	sound_impulse_start('sound\environments\solo\m030\amb_m30_beta\amb_m30_escape_run\Amb_m30_rock_explodes_tier_1', NONE, 1 );
	sleep (10);
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_dust_burst_xl.effect, ps_rubble_explosions_1.p12);
	sound_impulse_start('sound\environments\solo\m030\amb_m30_beta\amb_m30_escape_run\Amb_m30_rock_explodes_tier_3', NONE, 1 );
	
	thread (rock_raise_10_go());
	sleep (random_range (5, 45));
	thread (rock_raise_11_go());
	
end

script static void rock_raise_10_go()
	object_move_to_flag (rock_raise_10, 2.2, flag_rock_raise_10);
	sound_impulse_start('sound\environments\solo\m030\amb_m30_beta\amb_m30_escape_run\Amb_m30_rock_explodes_tier_1', NONE, 1 );
	sound_impulse_start('sound\environments\solo\m030\vin\m30_ghost_escape_pillar10', rock_raise_10, 1 );
end

script static void rock_raise_11_go()
	object_move_to_flag (rock_raise_11, 2.8, flag_rock_raise_11);
	sound_impulse_start('sound\environments\solo\m030\amb_m30_beta\amb_m30_escape_run\Amb_m30_rock_explodes_tier_1', NONE, 1 );
end

script dormant escape_chaos_8()
	sleep_until (volume_test_players (tv_chaos_7), 1);
	thread (weak_camera_shake());

	thread (rock_raise_12_go());
	thread (rock_raise_13_go());
	thread (rock_raise_14_go());
	sleep (30);
	
	object_move_to_flag (rock_raise_15, 6.8, flag_rock_raise_15);
end

script static void rock_raise_12_go()
	object_move_to_flag (rock_raise_12, 3.8, flag_rock_raise_12);
	sound_impulse_start('sound\environments\solo\m030\amb_m30_beta\amb_m30_escape_run\Amb_m30_rock_explodes_tier_1', NONE, 1 );
	sound_impulse_start('sound\environments\solo\m030\vin\m30_ghost_escape_pillar14_turnoff_area2', rock_raise_12, 1 );
end

script static void rock_raise_13_go()
	object_move_to_flag (rock_raise_13, 4.2, flag_rock_raise_13);
	sound_impulse_start('sound\environments\solo\m030\amb_m30_beta\amb_m30_escape_run\Amb_m30_rock_explodes_tier_1', NONE, 1 );
end

script static void rock_raise_14_go()
	object_move_to_flag (rock_raise_14, 4.1, flag_rock_raise_14);
	sound_impulse_start('sound\environments\solo\m030\vin\m30_ghost_escape_pillar15_stone_burst', rock_raise_14, 1 );
	sound_impulse_start('sound\environments\solo\m030\amb_m30_beta\amb_m30_escape_run\Amb_m30_rock_explodes_tier_1', NONE, 1 );
end

script dormant escape_collapse_4()
	sleep_until (volume_test_players (tv_escape_collapse_4), 1);
	
	//sleep_s (r_short_coop_delay);
	
	thread (weak_camera_shake());
	thread (escape_collapse_4_explosions());
	escape_collapse_4->f_animate();

end

script static void escape_collapse_4_explosions()
	sleep (30 * 3);
	
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_dust_burst_xl.effect, ps_rubble_explosions_1.p13);
	sound_impulse_start('sound\environments\solo\m030\amb_m30_beta\amb_m30_escape_run\Amb_m30_rock_explodes_tier_2', NONE, 1 );
	sleep (10);
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_dust_burst_xl.effect, ps_rubble_explosions_1.p14);
	//sound_impulse_start('sound\environments\solo\m030\amb_m30_beta\amb_m30_escape_run\Amb_m30_rock_explodes_tier_3', NONE, 1 );
	sleep (5);
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_dust_burst_xl.effect, ps_rubble_explosions_1.p15);
	sound_impulse_start('sound\environments\solo\m030\amb_m30_beta\amb_m30_escape_run\Amb_m30_rock_explodes_tier_1', NONE, 1 );
end

script dormant rock_ramp_raise()
	sleep_until (volume_test_players (tv_rock_ramp), 1);
	ai_place (sq_cov_panic_5);
	sleep (1);
	thread (cov_panic_5_flee_anims());
	
	sound_impulse_start('sound\environments\solo\m030\vin\m30_ghost_escape_pillar17_slide', rock_raise_16, 1 );
		
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_dust_burst_xl.effect, ps_rock_raising.p13);
	sound_impulse_start('sound\environments\solo\m030\amb_m30_beta\amb_m30_escape_run\Amb_m30_rock_explodes_tier_2', NONE, 1 );
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_dust_burst_xl.effect, ps_rock_raising.p14);

	object_move_to_flag (rock_raise_16, 0.3, flag_rock_raise_16);

	sleep (25);
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_dust_burst_xl.effect, ps_rock_raising.p19);
	sound_impulse_start('sound\environments\solo\m030\amb_m30_beta\amb_m30_escape_run\Amb_m30_rock_explodes_tier_3', NONE, 1 );
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_dust_burst_xl.effect, ps_rock_raising.p20);

end

script dormant wall_moving_1()
	sleep_until (volume_test_players (tv_wall_crush), 1);
	
	sleep_s (r_medium_coop_delay);
	
	thread (weak_camera_shake());
	
	sound_impulse_start('sound\environments\solo\m030\vin\m30_ghost_escape_pillar18_22_collapse', wall_move_1, 1 );

	thread (wall_move_1_go());
	thread (wall_move_2_go());
	sleep (60);
	thread (rocksplosion_1_go());
	sleep (25);
	thread (rocksplosion_2_go());
	sleep (15);
	thread (rock_raise_17_go());
	thread (rocksplosion_3_go());
	sleep (20);
	thread (rocksplosion_4_go());
	sleep (10);
	thread (rocksplosion_5_go());
end

script static void wall_move_1_go()
	object_move_to_flag (wall_move_1, 6.8, flag_wall_move_1);
end

script static void wall_move_2_go()
	object_move_to_flag (wall_move_2, 6.8, flag_wall_move_2);
end

script static void rock_raise_17_go()
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_dust_burst_xl.effect, ps_rock_raising.p15);
	sound_impulse_start('sound\environments\solo\m030\amb_m30_beta\amb_m30_escape_run\Amb_m30_rock_explodes_tier_2', NONE, 1 );
	object_move_to_flag (rock_raise_17, 1.2, flag_rock_raise_17);
end

script static void rocksplosion_1_go()
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_dust_burst_xl.effect, ps_rock_raising.p16);
	sound_impulse_start('sound\environments\solo\m030\amb_m30_beta\amb_m30_escape_run\Amb_m30_rock_explodes_tier_3', NONE, 1 );
	object_move_to_flag (rocksplosion_1, 0.5, flag_rocksplosion_1);
end

script static void rocksplosion_2_go()
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_dust_burst_xl.effect, ps_rock_raising.p17);
	sound_impulse_start('sound\environments\solo\m030\amb_m30_beta\amb_m30_escape_run\Amb_m30_rock_explodes_tier_3', NONE, 1 );
	object_move_to_flag (rocksplosion_2, 0.6, flag_rocksplosion_2);
end

script static void rocksplosion_3_go()
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_dust_burst_xl.effect, ps_rock_raising.p18);
	sound_impulse_start('sound\environments\solo\m030\amb_m30_beta\amb_m30_escape_run\Amb_m30_rock_explodes_tier_3', NONE, 1 );
	object_move_to_flag (rocksplosion_3, 0.8, flag_rocksplosion_3);
end

script static void rocksplosion_4_go()
	sound_impulse_start('sound\environments\solo\m030\amb_m30_beta\amb_m30_escape_run\Amb_m30_rock_explodes_tier_3', NONE, 1 );
	object_move_to_flag (rocksplosion_4, 5.8, flag_rocksplosion_4);
end

script static void rocksplosion_5_go()
	sound_impulse_start('sound\environments\solo\m030\amb_m30_beta\amb_m30_escape_run\Amb_m30_rock_explodes_tier_3', NONE, 1 );
	object_move_to_flag (rocksplosion_5, 4.4, flag_rocksplosion_5);
end

script dormant cave_2_explosion()
	sleep_until (volume_test_players (tv_cave_2_explosions), 1);
	
	sleep_s (r_short_coop_delay);
	
	sleep (30);
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_dust_burst_xl.effect, ps_rubble_explosions_1.p16);
	sound_impulse_start('sound\environments\solo\m030\amb_m30_beta\amb_m30_escape_run\Amb_m30_rock_explodes_tier_3', NONE, 1 );
	sleep (55);
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_dust_burst_xl.effect, ps_rubble_explosions_1.p17);
	sound_impulse_start('sound\environments\solo\m030\amb_m30_beta\amb_m30_escape_run\Amb_m30_rock_explodes_tier_2', NONE, 1 );
	sleep (45);
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_dust_burst_xl.effect, ps_rubble_explosions_1.p18);
	sound_impulse_start('sound\environments\solo\m030\amb_m30_beta\amb_m30_escape_run\Amb_m30_rock_explodes_tier_3', NONE, 1 );
	sleep (55);
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_dust_burst_xl.effect, ps_rubble_explosions_1.p19);
	sound_impulse_start('sound\environments\solo\m030\amb_m30_beta\amb_m30_escape_run\Amb_m30_rock_explodes_tier_1', NONE, 1 );
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_dust_burst_large.effect, ps_rubble_explosions_1.p20);
	sleep (65);
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_dust_burst_xl.effect, ps_rubble_explosions_1.p21);
	sound_impulse_start('sound\environments\solo\m030\amb_m30_beta\amb_m30_escape_run\Amb_m30_rock_explodes_tier_3', NONE, 1 );
	//effect_new_at_ai_point (fx\reach\fx_library\explosions\reach_test_explosion_large\reach_test_explosion_large.effect, ps_rubble_explosions_1.p22);
end

script dormant escape_collapse_5()
	sleep_until (volume_test_players (tv_escape_collapse_5), 1);
	sleep_s (r_short_coop_delay);
	
	thread (weak_camera_shake());
	escape_collapse_5->f_animate();
	
end

script dormant rocksplosion_v2()
	sleep_until (volume_test_players (tv_chaos_9), 1);
	ai_erase (sq_cov_panic_5);
	ai_erase (sq_cov_panic_4);
	thread (rocksplosion_6_go());
	sleep (10);
	thread (rocksplosion_7_go());
	
end

script static void rocksplosion_6_go()
	object_move_to_flag (rocksplosion_6, 3.8, flag_rocksplosion_6);
end

script static void rocksplosion_7_go()
	object_move_to_flag (rocksplosion_7, 2.8, flag_rocksplosion_7);
end

script dormant escape_collapse_6()
	sleep_until (volume_test_players (tv_escape_collapse_7), 1);
	
	//sleep_s (r_short_coop_delay);
	
	effect_new (environments\solo\m30_cryptum\fx\portal\teleport_lg_portal_end.effect, escape_end_portal_flag);
	
	thread (weak_camera_shake());
	thread (terrain_fall_fx());
	escape_collapse_7->f_animate(tv_escape_collapse_7v2);
end

script dormant escape_collapse_8_go
	sleep_until (volume_test_players (tv_escape_collapse_7v2), 1);
	
	escape_collapse_8->f_animate();
end

script dormant escape_chaos_10()
	sleep_until (volume_test_players (tv_chaos_10), 1);
	
	thread (rock_boom_4_go());
	sleep (15);
	thread (rock_boom_1_go());
	sleep (15);
	thread (rock_boom_2_go());
	sleep (30);
	thread (rock_boom_3_go());
	
end

script static void terrain_fall_fx()
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_dust_burst_xl.effect, ps_rock_booms.p1);
	sound_impulse_start('sound\environments\solo\m030\amb_m30_beta\amb_m30_escape_run\Amb_m30_rock_explodes_tier_2', NONE, 1 );
	sleep (10);
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_dust_burst_xl.effect, ps_rock_booms.p2);
	sound_impulse_start('sound\environments\solo\m030\amb_m30_beta\amb_m30_escape_run\Amb_m30_rock_explodes_tier_3', NONE, 1 );
end

script dormant terrain_fall_fx_2()
	sleep_until (volume_test_players (tv_escape_collapse_7v2), 1);
	
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_dust_burst_xl.effect, ps_rock_booms.p3);
	sound_impulse_start('sound\environments\solo\m030\amb_m30_beta\amb_m30_escape_run\Amb_m30_rock_explodes_tier_3', NONE, 1 );
	sleep (10);
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_dust_burst_xl.effect, ps_rock_booms.p4);
	sound_impulse_start('sound\environments\solo\m030\amb_m30_beta\amb_m30_escape_run\Amb_m30_rock_explodes_tier_2', NONE, 1 );
end

script static void rock_boom_1_go()
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_dust_burst_xl.effect, ps_rock_booms.p0);
	sound_impulse_start('sound\environments\solo\m030\amb_m30_beta\amb_m30_escape_run\Amb_m30_rock_explodes_tier_2', NONE, 1 );
	object_move_to_flag (rock_boom_1, 0.4, flag_rock_boom_1);
end

script static void rock_boom_2_go()
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_dust_burst_xl.effect, ps_rock_booms.p5);
	sound_impulse_start('sound\environments\solo\m030\amb_m30_beta\amb_m30_escape_run\Amb_m30_rock_explodes_tier_2', NONE, 1 );
	object_move_to_flag (rock_boom_2, 0.3, flag_rock_boom_2);
end

script static void rock_boom_3_go()
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_dust_burst_xl.effect, ps_rock_booms.p6);
	sound_impulse_start('sound\environments\solo\m030\amb_m30_beta\amb_m30_escape_run\Amb_m30_rock_explodes_tier_3', NONE, 1 );
	object_move_to_flag (rock_boom_3, 0.5, flag_rock_boom_3);
end

script static void rock_boom_4_go()
	sound_impulse_start('sound\environments\solo\m030\amb_m30_beta\amb_m30_escape_run\Amb_m30_rock_explodes_tier_3', NONE, 1 );
	sound_impulse_start('sound\environments\solo\m030\vin\play_m30_ghost_escape_pillar26to27', rock_boom_4, 1 );
	object_move_to_flag (rock_boom_4, 4.5, flag_rock_boom_4);
end

script dormant final_camera_shake()
	sleep_until (volume_test_players (tv_escape_collapse_7v2), 1);
	
	thread (weak_camera_shake());
	
end

script dormant escape_final_chaos()
	sleep_until (volume_test_players (tv_final_chaos), 1);
	
	sleep_s (r_short_coop_delay);
	
	thread (weak_camera_shake());
	
	thread (m30_level_end(player0));
	thread (m30_level_end(player1));
	thread (m30_level_end(player2));
	thread (m30_level_end(player3));
	
	thread (final_rock_1_go());
	thread (final_rock_2_go());
	
	sleep (15);
	
	thread (final_rock_3_go());
	thread (final_rock_4_go());
	
	sleep (15);
	
	thread (final_rock_5_go());
	thread (final_rock_6_go());
	
	thread (remove_ghost_respawns());

	sleep_until (volume_test_players (m30_escape_volume_end), 1);
	
	thread (f_mus_m30_e12_finish());
	
	effects_distortion_enabled = 1;
	self_illum_color_setting_set(0);
	
end

global boolean wake_m30_cinematic = true;

script static void m30_level_end (player p_player)
	sleep_until (volume_test_players (m30_escape_volume_end) and (unit_in_vehicle (p_player)), 1);
	
	unit_falling_damage_disable (player0, FALSE);
	unit_falling_damage_disable (player1, FALSE);
	unit_falling_damage_disable (player2, FALSE);
	unit_falling_damage_disable (player3, FALSE);
	
	thread (m30_flavor_cheevo_check (p_player));

	if wake_m30_cinematic then
		wake_m30_cinematic = false;
		effects_distortion_enabled = 1;
		self_illum_color_setting_set(0);
		wake (M30_escape_volume_end);
	end

end

script static void final_rock_1_go()
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_dust_burst_xl.effect, ps_final_rocks.p0);
	
	sound_impulse_start('sound\environments\solo\m030\vin\play_m30_ghost_escape_pillar29to32_end', final_rock_1, 1 );
	sound_impulse_start('sound\environments\solo\m030\amb_m30_beta\amb_m30_escape_run\Amb_m30_rock_explodes_tier_2', NONE, 1 );
	object_move_to_flag (final_rock_1, 0.3, flag_final_rock_1);
end

script static void final_rock_2_go()
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_dust_burst_xl.effect, ps_final_rocks.p1);
	sound_impulse_start('sound\environments\solo\m030\amb_m30_beta\amb_m30_escape_run\Amb_m30_rock_explodes_tier_1', NONE, 1 );
	object_move_to_flag (final_rock_2, 0.4, flag_final_rock_2);
end

script static void final_rock_3_go()
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_dust_burst_xl.effect, ps_final_rocks.p2);
	sound_impulse_start('sound\environments\solo\m030\amb_m30_beta\amb_m30_escape_run\Amb_m30_rock_explodes_tier_3', NONE, 1 );
	object_move_to_flag (final_rock_3, 0.5, flag_final_rock_3);
end

script static void final_rock_4_go()
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_dust_burst_xl.effect, ps_final_rocks.p3);
	sound_impulse_start('sound\environments\solo\m030\amb_m30_beta\amb_m30_escape_run\Amb_m30_rock_explodes_tier_2', NONE, 1 );
	object_move_to_flag (final_rock_4, 0.4, flag_final_rock_4);
end

script static void final_rock_5_go()
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_dust_burst_xl.effect, ps_final_rocks.p4);
	sound_impulse_start('sound\environments\solo\m030\amb_m30_beta\amb_m30_escape_run\Amb_m30_rock_explodes_tier_3', NONE, 1 );
	object_move_to_flag (final_rock_5, 0.5, flag_final_rock_5);
end

script static void final_rock_6_go()
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_dust_burst_xl.effect, ps_final_rocks.p5);
	sound_impulse_start('sound\environments\solo\m030\amb_m30_beta\amb_m30_escape_run\Amb_m30_rock_explodes_tier_2', NONE, 1 );
	object_move_to_flag (final_rock_6, 0.4, flag_final_rock_6);
end


// --- End m30_cryptum_escape.hsc ---

// --- Begin m30_cryptum_exterior_1.hsc ---
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343
//
// 	Mission: 					m30_cryptum
//	Subsection: 			exterior1
//										
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343

// =================================================================================================
// =================================================================================================
// *** GLOBALS ***
// =================================================================================================
// =================================================================================================

global short s_objcon_checker = 1;
global boolean rear_fight_spawn = FALSE;
global boolean b_right_side_bishop_born = FALSE;
global boolean b_left_side_bishop_born = FALSE;
global boolean b_endfight_bishop_born = FALSE;
global boolean b_left_side_knight_2_dead = FALSE;



// =================================================================================================
// EXTERIOR 1 SETUP ================================================================================
// =================================================================================================


script dormant m30_cryptum_exterior_1()	
	sleep_until (b_mission_started == TRUE);
	//	Waits until the insertion point trigger has been hit, inside m30_design scenario layer. 
	sleep_until (volume_test_players (tv_insertion_wake_py1_ext), 1); 

	effects_perf_armageddon = 1;

	// Stop the pylon effects from the 1_start zoneset (pyelectric_02) and start the next one (pyelectric_03)
	pup_stop_show(id_for_pylon_pups);
	
	dprint ("Starting puppet pyelectric_03");
	id_for_pylon_pups = pup_play_show(pyelectric_03);
	
	game_save_no_timeout(); 	
	dprint  ("::: Canyons 1 start :::");
	
	wake (knight_firstwave_spawn);
	//wake (ext1_left_mid_spawn_from_right);
	wake (ext1_rear_fight_pawn_spawn);
	wake (ext1_rear_fight_spawn);
	wake (bishop_towers_step1);
	wake (bishop_towers_step3);
	wake (bishop_towers_step4);
	wake (front_knight_pup);
	wake (left_front_knight_pup);
	wake (f_ext1_repeating_gc);
	wake (bcs_ext1_blip_platform);
	thread (ext1_hovering_cover_start (ext1_wall_cover));
	thread (ext1_front_cleanup());
	player_set_profile (default_FR);
	dprint ("starting profile changed");
	data_mine_set_mission_segment ("m30_exterior_1");
	
	game_insertion_point_unlock (2);
	dprint ("you unlocked the Exterior 1 Insertion Point!");
	effects_distortion_enabled = FALSE;
	
end

// ====================================================================
// GARBAGE COLLECTION =================================================
// ====================================================================

script dormant f_ext1_repeating_gc()
	sleep_until (volume_test_players (tv_ext1_garbage), 1);
		
		repeat
		
			sleep( 30 * 30 );
			dprint( "Garbage collecting..." );
			add_recycling_volume_by_type (tv_ext1_garbage, 1, 10, 1 + 2 + 1024);
		
		until (not volume_test_players (tv_ext1_garbage), 1);	

end

// ====================================================================
// EXTERIOR 1 =================================================
// ====================================================================

script dormant front_knight_pup
	sleep_until (volume_test_players (tv_ext1_part1), 1);
	thread (f_mus_m30_e03_start());
	pup_play_show ("pup_front_knight");
	
	sleep (30);
	
	wake (ext1_right_mid_spawn);
	
end

script dormant left_front_knight_pup
	sleep_until (volume_test_players (tv_ext1_part2_left), 1);
	
	pup_play_show ("pup_front_left_knight");
	
	sleep (30);
	
	wake (ext1_left_mid_spawn_from_front);
	
	sleep_until (ai_living_count (sq_ext1_knight_2) == 0);
	
	b_left_side_knight_2_dead = TRUE;
	
end

script command_script ambient_bishop1_go
	cs_fly_to (ps_ambient_bishop1.p0);
	cs_fly_to (ps_ambient_bishop1.p1);
	cs_fly_to (ps_ambient_bishop1.p2);
	cs_fly_to (ps_ambient_bishop1.p3);
	cs_fly_to (ps_ambient_bishop1.p4);
	cs_fly_to (ps_ambient_bishop1.p5);
	cs_fly_to (ps_ambient_bishop1.p6);
	ai_erase (ai_current_actor);
end

script command_script ambient_bishop2_go
	cs_pause (1.0);
	cs_fly_to (ps_ambient_bishop2.p0);
	cs_fly_to (ps_ambient_bishop2.p1);
	cs_fly_to (ps_ambient_bishop2.p2);
	cs_fly_to (ps_ambient_bishop2.p3);
	cs_fly_to (ps_ambient_bishop2.p4);
	cs_fly_to (ps_ambient_bishop2.p5);
	cs_fly_to (ps_ambient_bishop2.p6);
	cs_fly_to (ps_ambient_bishop2.p7);
	cs_fly_to (ps_ambient_bishop1.p5);
	cs_fly_to (ps_ambient_bishop1.p6);
	ai_erase (ai_current_actor);
end

script dormant knight_firstwave_spawn
	sleep_until (volume_test_players (tv_canyons1_entry), 1);

	dprint ("Old function, clean up!");

end

script dormant bishop_towers_step1()
	sleep_until (volume_test_players (tv_ext1_combat_start), 1);
	sleep (30);
	ext1_bishop_tower_1->start_animating();
	sleep (4 * 30);
	ext1_bishop_tower_2->start_animating();
	sleep (4 * 30);
	thread (bishop_tower_3());
	sleep (random_range (15, 30));
	thread (bishop_tower_4());

end

script dormant bishop_towers_step3()
	sleep_until (volume_test_players (tv_right_mid_spawn), 1);
	
	ext1_bishop_tower_5->start_animating();
end

script dormant bishop_towers_step4()
	sleep_until (volume_test_players (tv_right_bishoptower), 1);
	
	ext1_bishop_tower_6->start_animating();
end

script static void bishop_tower_3()
	ext1_bishop_tower_3->start_animating();
end

script static void bishop_tower_4()
	ext1_bishop_tower_4->start_animating();
end

script command_script cs_ext1_knight1
	sleep_until (volume_test_players (tv_ext1_combat_start), 1);
	
	cs_phase_to_point (ps_ext1_knightphase.p0);
	
end

script command_script cs_ext1_knight2
	sleep_until (volume_test_players (tv_ext1_combat_start), 1);
	cs_phase_to_point (ps_ext1_knightphase.p1);
	
end

script dormant ext1_left_mid_spawn_from_front()

	dprint ("mid left encounter spawning from front");
	ai_place (sq_ext1_pawns_3_v3);
	ai_place (sq_ext1_pawns_3_v4);
	ai_place (sq_ext1_pawns_3);

	sleep_forever (ext1_left_mid_spawn_from_right);

	//sleep_until (volume_test_players (tv_left_mid_spawn_front), 1);

	ai_place (sq_ext1_pawns_3_v2);
	
end	
	
script dormant ext1_left_mid_spawn_from_right()
	sleep_until (volume_test_players (tv_left_mid_spawn_right), 1);

	dprint ("mid left encounter spawning from right");
	ai_place (sq_ext1_pawns_3);
	ai_place (sq_ext1_pawns_3_v2);
	ai_place (sq_ext1_pawns_3_v5);
	ai_place (sq_ext1_pawns_3_v6);

	sleep_forever (ext1_left_mid_spawn_from_front);
end	
	
script command_script cs_ext1_knight3
	
	cs_phase_to_point (ps_ext1_knightphase.p2);
	
end	

script dormant ext1_right_mid_spawn()
	sleep_until (volume_test_players (tv_right_mid_spawn), 1) or (ai_living_count (sg_right_front) == 0);
	
	ai_place (sq_ext1_bishop_4);
	ai_place (sq_ext1_pawns_4);
	ai_place (sq_ext1_pawns_4v2);
	ai_place (sq_ext1_bishop_4v2);
	//ai_place (sq_ext1_pawns_4v3);
	sleep (5);
	ai_place (sq_ext1_knight_4);

end

script command_script cs_bishop_spawn_ext1_right()
	print("gh bishop sleeping");
  ai_enter_limbo (ai_current_actor);
  CreateDynamicTask(TT_SPAWN, FT_BIRTHER, ai_get_object(ai_current_actor), OnCompleteProtoSpawn_ext1_right, 0);
  cs_pause (1.0);
end

script static void OnCompleteProtoSpawn_ext1_right()

	b_right_side_bishop_born = TRUE;

end

script command_script cs_ext1_knight4
	
	cs_phase_to_point (ps_ext1_knightphase.p3);
	
end

script dormant ext1_rear_fight_pawn_spawn()

	sleep_until (volume_test_players (tv_ext1_rear_pawns) or (volume_test_players (tv_left_mid_spawn_front)), 1);
	dprint ("rear pawns incoming!");
	game_save_no_timeout();
	ai_place (sq_ext1_wall_pawns_1);
	//ai_place (sq_ext1_wall_pawns_2);

	sleep_until (volume_test_players (tv_ext1_rear_pawns), 1);

	ai_place (sq_ext1_pawns_5);
	ai_place (sq_ext1_pawns_6);
	ai_place (sq_ext1_pawns_7);
	ai_place (sq_ext1_pawns_8);


end

script dormant ext1_rear_fight_spawn()
	sleep_until (volume_test_players (tv_ext1_end), 1);
	dprint ("rear battlewagon incoming!");
	//ai_place (sq_ext1_turret_bishop);
	ai_place (sq_ext1_bishop_5);
	//ai_place (sq_ext1_turret_1);
	ai_place (sq_ext1_knight_5);


	//wake (ext1_rear_battlewagon_backup);

	sleep_until (rear_fight_spawn == TRUE);
	
	wake (m30_pylonone_hallwaytwo_enter);
	
	thread (f_door_hallway_2_in_open());
	thread (f_door_hallway_2_out_open());
	wake (m30_ext1_final_fight_check);
	wake (ext1_rear_fight_over);
	wake (bcs_ext1_blip_exit_door);
	
	sleep (30);
	
	ai_allow_resurrect(sq_ext1_knight_5, FALSE);

	
	//RequestAutomatedTurretActivation (ai_vehicle_get (sq_ext1_turret_1.spawn_points_0));
	//dprint ("turret requesting activation");
	
end

script static void ext1_front_cleanup()

	sleep_until (volume_test_players (tv_ext1_rear_pawns), 1);

		dprint ("attempting to clean up ext1, front side");
		f_ai_garbage_erase (sq_ext1_knight_1, 1, -1, -1, -1, TRUE);
		f_ai_garbage_erase (sq_ext1_knight_2, 1, -1, -1, -1, TRUE);
		f_ai_garbage_erase (sq_ext1_knight_3, 1, -1, -1, -1, TRUE);
		f_ai_garbage_erase (sq_ext1_bishop_3, 1, -1, -1, -1, TRUE);
		f_ai_garbage_erase (sq_ext1_pawns_3, 1, -1, -1, -1, TRUE);
		f_ai_garbage_erase (sq_ext1_pawns_3_v2, 1, -1, -1, -1, TRUE);
		f_ai_garbage_erase (sq_ext1_pawns_3_v3, 1, -1, -1, -1, TRUE);
		f_ai_garbage_erase (sq_ext1_pawns_3_v4, 1, -1, -1, -1, TRUE);
		f_ai_garbage_erase (sq_ext1_knight_4, 1, -1, -1, -1, TRUE);
		f_ai_garbage_erase (sq_ext1_bishop_4, 1, -1, -1, -1, TRUE);
		f_ai_garbage_erase (sq_ext1_pawns_4, 1, -1, -1, -1, TRUE);
		f_ai_garbage_erase (sq_ext1_pawns_4v2, 1, -1, -1, -1, TRUE);
		f_ai_garbage_erase (sq_ext1_pawns_4v3, 1, -1, -1, -1, TRUE);
		f_ai_garbage_erase (sq_ext1_bishop_4v2, 1, -1, -1, -1, TRUE);
		f_ai_garbage_erase (sq_ext1_right_knight_1, 1, -1, -1, -1, TRUE);
		
end

script dormant rear_encounter_test
	dprint ("rear encounter ready for testing");
	wake (ext1_rear_fight_pawn_spawn);
	wake (ext1_rear_fight_spawn);
end

script dormant ext1_rear_battlewagon_backup
	sleep_until (rear_fight_spawn == TRUE);
	
	dprint ("battlewagon reinforcements are waiting to arrive");
	sleep (1);
	
	sleep_until (volume_test_players (tv_ext1_pawn_frenzy) or (ai_living_count (sq_ext1_bishop_5) == 0) or (ai_living_count (sq_ext1_turret_1) == 0), 1);
	
	dprint ("battlewagon reinforcements incoming!");
	
	sleep (45);
	
	ai_place (sq_ext1_knight_6);
	
end

script static boolean is_rear_fight_depleted()
	(ai_living_count (sq_ext1_bishop_5) == 0 and ai_living_count (sq_ext1_turret_1) == 0);
end

script command_script cs_bishop_spawn_ext1_rearfight()
	print("gh bishop sleeping");
  ai_enter_limbo (ai_current_actor);
  CreateDynamicTask(TT_SPAWN, FT_BIRTHER, ai_get_object(ai_current_actor), OnCompleteProtoSpawn_ext1_rearfight, 0);
  cs_pause (1.0);
end

script static void OnCompleteProtoSpawn_ext1_rearfight()
	b_endfight_bishop_born = TRUE;
	rear_fight_spawn = TRUE;	
end

script command_script cs_ext1_knight5
	sleep_until (rear_fight_spawn == TRUE);
	cs_phase_to_point (ps_ext1_knightphase.p4);
	
end	

script command_script cs_ext1_knight6
	sleep_until (rear_fight_spawn == TRUE);
	cs_pause (1.0);
	cs_phase_to_point (ps_ext1_knightphase.p5);
	
end	

script dormant ext1_rear_fight_over
	sleep_until (volume_test_players (tv_ext1_music_end) or (b_ext1_final_fight_over  == TRUE), 1);
	
	thread (f_mus_m30_e03_finish());
	
	// turn effects back on, the fight is over
	effects_perf_armageddon = 0;

	game_save();
	
end

script dormant bcs_ext1_blip_exit_door
	sleep_until (b_ext1_final_fight_over, 1);
	f_blip_position_breadcrumbs(-199.03, -114.30, 2.06, "ext1_door", "default");
	sleep_until (volume_test_players (tv_ext1_music_end), 1);
	f_unblip_position_breadcrumbs("ext1_door");
end

script dormant bcs_ext1_blip_platform
	sleep_until (volume_test_players (tv_ext1_combat_start), 1);
	f_blip_position_breadcrumbs(-167.88, -93.06, 0.44, "ext1_platform", "default");
	sleep_until (volume_test_players (tv_ext1_end), 1);
	f_unblip_position_breadcrumbs("ext1_platform");
end

script static void ext1_hovering_cover_start (object_name shieldwall)
	repeat
    object_move_by_offset(shieldwall, 3, 0.0, 0.0, -0.03);
    sleep (20);
    object_move_by_offset(shieldwall, 3, 0.0, 0.0, 0.03);
  until(1 == 0);
end



// --- End m30_cryptum_exterior_1.hsc ---

// --- Begin m30_cryptum_exterior_2.hsc ---
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343
//
// 	Mission: 					m30_cryptum
//	Subsection: 			exterior2
//										
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343

// =================================================================================================
// =================================================================================================
// *** GLOBALS ***
// =================================================================================================
// =================================================================================================

global short loop_check = 0;
global short obj_check = 0;
global short rear_obj_check = 0;

// =================================================================================================
// =================================================================================================
// *** EXTERIOR 2 ***
// =================================================================================================
// =================================================================================================

script dormant m30_cryptum_exterior_2()	
	sleep_until (volume_test_players (tv_insertion_wake_exterior2), 1);
	dprint  ("::: ext 2 start :::");
	wake (f_canyon_2_setup);
	wake (f_drop_pods);
	wake (f_phantom_flyby);
	wake (f_ramp_forerunners);
	wake (ramp_check);
	wake (ramp_check_2);
	wake (overhead_fleet);

	wake (f_canyon_part_2);
	wake (M30_plylontwo_arrival); //narrative scripts
	wake (M30_canyons_ramp_enter); //narrative scripts
	wake (M30_start_ramp_enter); //narrative scripts
	wake (M30_pylontwo_hallway_1_enter); //narrative scripts
	wake (f_ext2_repeating_gc);

	// Controls setting the right effects state on the cryptum shield
	wake (cryptshield_2_start_to_2_canyon);
	wake (cryptshield_2_canyon);
	wake (cryptshield_2_elevator);
	wake (cryptshield_2_pylon);
	wake (cryptshield_obsdeck3);
	wake (cryptshieldstate);
	
	data_mine_set_mission_segment ("m30_exterior_2");
	
	effects_distortion_enabled = FALSE;
	
	game_insertion_point_unlock (5);
	dprint ("you unlocked the Exterior 2 Insertion Point!");
	
	zone_set_trigger_volume_enable ("zone_set:2_elevator:*", FALSE);
	
end

// ====================================================================
// PLAYFIGHTING STUFF =================================================
// ====================================================================

script command_script ext2_playfighting
	unit_only_takes_damage_from_players_team (ai_current_actor, TRUE);
end

// ====================================================================
// GARBAGE COLLECTION =================================================
// ====================================================================

script dormant f_ext2_repeating_gc()
	sleep_until (volume_test_players (tv_ext2_garbage), 1);
		
		repeat
		
			sleep( 30 * 30 );
			dprint( "Garbage collecting..." );
			add_recycling_volume_by_type (tv_ext2_garbage, 1, 10, 1 + 2 + 1024);
		
		until (not volume_test_players (tv_ext2_garbage), 1);	

end

// ====================================================================
// EXTERIOR 2 STUFF ===================================================
// ====================================================================

script dormant cryptshield_2_start_to_2_canyon()
	sleep_until (volume_test_players ("begin_zone_set:2_start_to_2_canyon"), 1);
	dprint("cryptshield_2_start_to_2_canyon_1");
	thread(set_cryptum_shield_stage(3, 2, FALSE));
	sleep_until (volume_test_players ("zone_set:2_start_to_2_canyon"), 1);
	dprint("cryptshield_2_start_to_2_canyon_2");
	thread(set_cryptum_shield_stage(3, 2, TRUE));
end

script dormant cryptshield_2_canyon()
	sleep_until (volume_test_players ("begin_zone_set:2_canyon"), 1);
	dprint("cryptshield_2_canyon_1");
	thread(set_cryptum_shield_stage(3, 2, FALSE));
	sleep_until (volume_test_players ("zone_set:2_canyon"), 1);
	dprint("cryptshield_2_canyon_2");
	thread(set_cryptum_shield_stage(3, 2, TRUE));
end

script dormant cryptshield_2_elevator()
	sleep_until (volume_test_players ("zone_set:2_elevator:*"), 1);
	dprint("cryptshield_2_elevator");
	thread(set_cryptum_shield_stage(3, 2, TRUE));
end

script dormant cryptshield_2_pylon()
	sleep_until (volume_test_players ("zone_set:2_pylon"), 1);
	dprint("cryptshield_2_pylon");
	thread(set_cryptum_shield_stage(3, 2, TRUE));
end

script dormant cryptshield_obsdeck3()
	sleep_until (volume_test_players ("begin_zone_set:3_donut"), 1);
	dprint("cryptshield_obsdeck3");
	thread(set_cryptum_shield_stage(1, 3, FALSE));
end

// Controls setting the right effects state on the cryptum shield bsp markers
script dormant cryptshieldstate()
	sleep_until (volume_test_players (tv_fx_cryptshield22), 1);
	dprint("cryptshieldstate");
	thread(set_cryptum_shield_stage(3, 2, FALSE));
end

script dormant ramp_check()
	sleep_until (volume_test_players (tv_ramp_check), 1);
	obj_check == 5;
	ai_place (sq_ext2_vignette_elite_1);
	print ("obj_check = 5");
	game_save_no_timeout();
end

script command_script elite_cs_test
	cs_shoot (TRUE);
end

script dormant ramp_check_2()
	sleep_until (volume_test_players (tv_ramp_check_2), 1);
	obj_check == 10;
	print ("obj_check = 10");
		
end

script dormant f_midfightsave2()
	//trying to save if players are under the overhang and are safe
	sleep_until (volume_test_players (tv_midfight_save), 1);
	game_save_no_timeout();
end

script dormant f_midfightsave3()
	//trying to save once the lower bowl is weakened sufficiently
	sleep_until (ai_living_count (sg_ramp) <= 2 and (ai_living_count (sg_canyon_cov_1) <= 2), 1);
	game_save_no_timeout();
end

script dormant f_phantom_flyby()
	sleep_until (volume_test_players (tv_phantom_flyby), 1);
	ai_place (sq_phantom_1);
	game_save_no_timeout ();
	sleep (30);
	ai_place (sq_phantom_2);
end

script dormant f_canyon_2_setup()
	sleep_until (volume_test_players (tv_canyon_turrets), 1);

	ai_place (sq_knight_1);
	unit_only_takes_damage_from_players_team (sq_knight_1, TRUE);
	ai_place (sq_bishop_1);
	unit_only_takes_damage_from_players_team (sq_bishop_1, TRUE);
	ai_place (sq_pawns_1);
	//unit_only_takes_damage_from_players_team (sq_pawns_1, TRUE);
	sleep (30 * 3);
end

script command_script cs_phantom_1()
	object_set_scale (ai_vehicle_get(ai_current_actor), 0.01, 0);
	object_set_scale (ai_vehicle_get(ai_current_actor), 1.0, 60);
	cs_fly_to (ps_phantom_1.p0);
	cs_fly_to_and_face (ps_phantom_1.p1, ps_phantom_1.p2);
	cs_fly_to (ps_phantom_1.p2);
	cs_fly_to (ps_phantom_1.p3);
	cs_fly_to (ps_phantom_1.p4);
	cs_fly_to (ps_phantom_1.p5);
	ai_erase (sq_phantom_1);
end

script command_script cs_phantom_2()
	object_set_scale (ai_vehicle_get(ai_current_actor), 0.01, 0);
	object_set_scale (ai_vehicle_get(ai_current_actor), 1.0, 60);
	cs_fly_to (ps_phantom_2.p0);
	cs_fly_to (ps_phantom_2.p1);
	cs_fly_to (ps_phantom_2.p2);
	cs_fly_to (ps_phantom_2.p3);
	ai_erase (sq_phantom_2);
end

script dormant f_drop_pods()
	sleep_until (volume_test_players (tv_spawn_1), 1);
	
	thread (f_mus_m30_e05_start());
	
	ai_place (sq_fore_pawn_attack);
	ai_place (sq_fore_pawn_attack_2);
	
	//first drop pod incoming
	
	thread(new_drop_pod_1->drop_to_point(sq_cov_canyon_5, ps_drop_pod_1.p1, .65, 0));

	wake (M30_plyontwo_drop_pods);
	object_hide (fake_drop_pod, FALSE);
	unit_open (fake_drop_pod);
	
	ai_place (sq_fore_knight_3);
	unit_only_takes_damage_from_players_team (sq_fore_knight_3.p0, TRUE);
	sleep (20);
	ai_place (sq_fore_knight_4);
	unit_only_takes_damage_from_players_team (sq_fore_knight_4.p0, TRUE);
	
	//second drop pod incoming

	thread(new_drop_pod_2->drop_to_point(sq_cov_canyon_4, ps_drop_pod_1.p0, .65, 0));
		
	//third drop pod incoming
	
	thread(new_drop_pod_3->drop_to_point(sq_cov_canyon_6, ps_drop_pod_1.p2, .65, 0));	

	wake (e2_ramp_phase1);
	wake (e2_ramp_phase2);

	wake (f_bcs_blip_ext2);
end

script dormant f_bcs_blip_ext2()
	f_blip_position_breadcrumbs(-87.21, 53.61, -0.27, "ext2_droppods", "default");
	sleep_until (volume_test_players (tv_ghost_spawn), 1);
	f_unblip_position_breadcrumbs("ext2_droppods");

	f_blip_position_breadcrumbs(-111.21, 125.72, -7.01, "ext2_tunnel", "default");
	sleep_until (volume_test_players (tv_tunnel_advance), 1);
	f_unblip_position_breadcrumbs("ext2_tunnel");
end

script command_script e2_knight_phase1()
	cs_phase_to_point (ps_canyon2_knights.p0);
end

script command_script e2_knight_phase2()
	cs_phase_to_point (ps_canyon2_knights.p1);
end

script dormant e2_ramp_phase1()
	sleep_until ((ai_living_count (sg_cov_canyon2_part1) <= 1) or (volume_test_players (tv_ramp_check)), 1);
	dprint ("fore_knight_3 retreat!");
	cs_run_command_script (sq_fore_knight_3, e2_knight_phase3);
end

script dormant e2_ramp_phase2()
	sleep_until ((ai_living_count (sg_cov_canyon2_part1) <= 1) or (volume_test_players (tv_ramp_check)), 1);
	dprint ("fore_knight_4 retreat!");
	cs_run_command_script (sq_fore_knight_4, e2_knight_phase4);
end


script command_script e2_knight_phase3()
	cs_phase_to_point (ps_canyon2_knights.p4);
	ai_erase (sq_fore_knight_3);
end

script command_script e2_knight_phase4()
	cs_phase_to_point (ps_canyon2_knights.p4);
	ai_erase (sq_fore_knight_4);
end

script static void drop_pod_1_landing()
	effect_new_at_ai_point (objects\props\covenant\cov_squad_drop_pod\fx\dp_squad_impact.effect, ps_drop_pod_1.p0);
	ai_place (sq_cov_canyon_4);
	camera_shake_all_coop_players (0.65, 0.45, 1, 0.60, exterior_2_camera_shake);
end

script static void drop_pod_2_landing()
	effect_new_at_ai_point (objects\props\covenant\cov_squad_drop_pod\fx\dp_squad_impact.effect, ps_drop_pod_1.p1);
	ai_place (sq_cov_canyon_5);
	camera_shake_all_coop_players (0.65, 0.45, 1, 0.60, exterior_2_camera_shake);
end

script static void drop_pod_3_landing()
	effect_new_at_ai_point (objects\props\covenant\cov_squad_drop_pod\fx\dp_squad_impact.effect, ps_drop_pod_1.p2);
	ai_place (sq_cov_canyon_6);
	camera_shake_all_coop_players (0.65, 0.45, 1, 0.60, exterior_2_camera_shake);
end

script dormant f_ramp_forerunners()
	sleep_until (volume_test_players (tv_ramp_spawn), 1);

	pup_play_show ("knight_elite");
	wake (ghost_moment);
	sleep (30);
	
	thread (ghost_boost_help (player0));
	thread (ghost_boost_help (player1));
	thread (ghost_boost_help (player2));
	thread (ghost_boost_help (player3));
		
	ai_place (sq_bishop_2);
	
	sleep (90);
	
	ai_place_with_shards(sq_turret_1); 
	
	sleep (5);
		
end

script command_script knight_jump()
	cs_abort_on_damage (TRUE);
	cs_move_towards_point (ps_knight_jump.p0, 0.1);
end


script dormant ghost_moment()
	sleep_until (volume_test_players (tv_ghost_spawn), 1);
	thread (f_mus_m30_e05_finish());
	game_save_no_timeout();
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\fire\covenant_fire_cheap_med.effect, ps_crashed_phantom_fires.p0);
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\fire\covenant_fire_cheap_small.effect, ps_crashed_phantom_fires.p1);
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\fire\covenant_fire_cheap_med.effect, ps_crashed_phantom_fires.p2);
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\fire\covenant_fire_cheap_small.effect, ps_crashed_phantom_fires.p3);

	pup_play_show(ggggghosts);
	player_set_profile (default_BOTH);
	dprint ("palyer profiles set to both COV and FR weapons");
	thread (f_mus_m30_e06_start());
	
	//sleep (30 * 3);
	
	thread (ext2_area1_cleanup());
	
end

script static void ext2_area1_cleanup()
	dprint ("attempting to clean up ext2, area1");
	f_ai_garbage_erase (sq_bishop_1, 3, -1, -1, -1, TRUE);
	f_ai_garbage_erase (sq_knight_1, 3, -1, -1, -1, TRUE);
	f_ai_garbage_erase (sq_pawns_1, 3, -1, -1, -1, TRUE);
	f_ai_garbage_erase (sq_fore_pawn_attack, 3, -1, -1, -1, TRUE);
	f_ai_garbage_erase (sq_cov_canyon_4, 3, -1, -1, -1, TRUE);
	f_ai_garbage_erase (sq_cov_canyon_5, 3, -1, -1, -1, TRUE);
	f_ai_garbage_erase (sq_cov_canyon_6, 3, -1, -1, -1, TRUE);
end

script static void ghost_boost_help (player p_player)
	sleep_until (unit_in_vehicle_type (p_player, 26));
	sleep (15);
	chud_show_screen_training (p_player, "training_ghostboost");
	sleep (30 * 6);
	chud_show_screen_training (p_player, "");
end

script dormant f_canyon_part_2()
	sleep_until (volume_test_players (tv_spawn_2), 1);

	thread (canyon2_forerunners());
	//thread (drop_pod_4_landing());
	
	thread(new_drop_pod_4->drop_to_point(sq_cov_canyon_8, ps_drop_pod_1.p4, .65, 0));
	
	sleep (15);
	//thread (drop_pod_5_landing());
	
	thread(new_drop_pod_5->drop_to_point(sq_cov_canyon_7, ps_drop_pod_1.p3, .65, 0));
	
	sleep (15);
	//thread (drop_pod_6_landing());
	
	thread(new_drop_pod_6->drop_to_point(sq_cov_canyon_9, ps_drop_pod_1.p5, .65, 0));
	
	sleep (15);
	//thread (drop_pod_7_landing());
	
	thread(new_drop_pod_7->drop_to_point(sq_cov_canyon_10, ps_drop_pod_1.p6, .65, 0));
	
	sleep (15);
	//thread (drop_pod_8_landing());
	
	thread(new_drop_pod_8->dead_drop_to_point(ps_drop_pod_1.p7, .65, 0));
	
	wake (tunnel_spawns);
	
	unit_open (new_drop_pod_8);
	
	if game_difficulty_get_real() == "legendary" then		
		wake (ext2_rear_spawn_go);
	else	
		sleep (1);
	end
	
end

script static void canyon2_forerunners()
	ai_place (sq_fore_squad_1);
//	ai_place (sq_fore_squad_2);
	ai_place (sq_fore_squad_3);
end

script static void drop_pod_4_landing()
	object_create (drop_pod_4);
	object_set_scale (drop_pod_4, 0.01, 0);
	object_set_scale (drop_pod_4, 1.0, 15);
	object_move_to_point (drop_pod_4, 0.75, ps_drop_pod_1.p3);
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_dust_burst_xl.effect, ps_drop_pod_1.p3);
	ai_place (sq_cov_canyon_7);
	camera_shake_all_coop_players (0.65, 0.45, 1, 0.75, exterior_2_camera_shake);
end

script static void drop_pod_5_landing()
	object_create (drop_pod_5);
	object_set_scale (drop_pod_5, 0.01, 0);
	object_set_scale (drop_pod_5, 1.0, 15);
	object_move_to_point (drop_pod_5, 0.75, ps_drop_pod_1.p4);
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_dust_burst_xl.effect, ps_drop_pod_1.p4);
	ai_place (sq_cov_canyon_8);
	camera_shake_all_coop_players (0.65, 0.45, 1, 0.75, exterior_2_camera_shake);
end

script static void drop_pod_6_landing()
	object_create (drop_pod_6);
	object_set_scale (drop_pod_6, 0.01, 0);
	object_set_scale (drop_pod_6, 1.0, 15);
	object_move_to_point (drop_pod_6, 0.75, ps_drop_pod_1.p5);
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_dust_burst_xl.effect, ps_drop_pod_1.p5);
	ai_place (sq_cov_canyon_9);
	camera_shake_all_coop_players (0.65, 0.45, 1, 0.75, exterior_2_camera_shake);
end

script static void drop_pod_7_landing()
	object_create (drop_pod_7);
	object_set_scale (drop_pod_7, 0.01, 0);
	object_set_scale (drop_pod_7, 1.0, 15);
	object_move_to_point (drop_pod_7, 0.75, ps_drop_pod_1.p6);
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_dust_burst_xl.effect, ps_drop_pod_1.p6);
	ai_place (sq_cov_canyon_10);	
	camera_shake_all_coop_players (0.65, 0.45, 1, 0.75, exterior_2_camera_shake);
end

script static void drop_pod_8_landing()
	object_create (drop_pod_8);
	object_set_scale (drop_pod_8, 0.01, 0);
	object_set_scale (drop_pod_8, 1.0, 15);
	object_move_to_point (drop_pod_8, 0.75, ps_drop_pod_1.p7);
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\rock\rock_dust_burst_xl.effect, ps_drop_pod_1.p7);	
	camera_shake_all_coop_players (0.65, 0.45, 1, 0.75, exterior_2_camera_shake);
end

script dormant tunnel_spawns()
	sleep_until (volume_test_players (tv_tunnel_advance), 1);
	
	dprint ("changing ai combat preferences in the lower bowl");
	
	ai_prefer_target_team (sq_fore_squad_1, covenant);
	ai_prefer_target_team (sq_fore_squad_2, covenant);
	ai_prefer_target_team (sq_fore_squad_3, covenant);
	
	ai_prefer_target_team (sq_cov_canyon_7, forerunner);
	ai_prefer_target_team (sq_cov_canyon_8, forerunner);
	ai_prefer_target_team (sq_cov_canyon_9, forerunner);
	ai_prefer_target_team (sq_cov_canyon_10, forerunner);
	
	thread (f_door_hallway_3_in_open());
	thread (f_door_hallway_3_out_open());
	wake (tunnel_spawns_2);
	
	game_save_no_timeout();
end

script dormant tunnel_spawns_2()
	sleep_until (volume_test_players (tv_tunnel_advance_2), 1);
	ai_place (sq_fore_squad_5);
	ai_place (sq_cov_canyon_11);

end

script dormant overhead_fleet()
	sleep_until (volume_test_players (tv_canyon_turrets), 1);
	
	pup_play_show ("pup_cruiser_flyby");
end

script static void cruiser_1_move()
	object_set_scale (cruiser_1, 0.01, 0);
	object_set_scale (cruiser_1, 0.20, 60);
	object_move_to_point (cruiser_1, 10, ps_fleet.p0);
	object_set_scale (cruiser_1, 0.01, 720);
	sleep (1120);
	object_destroy (cruiser_1);
end
	
script dormant ext2_rear_spawn_go()
	sleep_until (volume_test_players (tv_ext2_rear_spawn), 1);
	
	rear_obj_check = 5;
	
	thread (ext2_rear_bw_spawn());

end

script static void ext2_rear_bw_spawn()
	repeat
		sleep_until (volume_test_players (tv_ext2_rear_spawn2), 1);
	
		sleep (30 * 5);
		
		if
			volume_test_players (tv_ext2_rear_spawn2)
		then
			
			sound_impulse_start(sound\game_sfx\ui\button_based_ui_sounds\start_menu_open, NONE, 1 );
			ai_place (sq_fore_battlewagon_5);
			sleep (30);
			wake (ext2_rear_spawn_cleanup);
			
		end
	
	until (ai_living_count (sq_fore_battlewagon_5) > 0 or volume_test_players (tv_ext2_garbage), 1);

end

script dormant ext2_rear_spawn_cleanup()

	sleep_until (ai_living_count (sq_fore_battlewagon_5) == 0);
	
	sleep (30);
	
	sound_impulse_start(sound\game_sfx\ui\button_based_ui_sounds\start_menu_open, NONE, 1 );
	
	sleep_until (volume_test_players (tv_ghost_spawn), 1);
	
	object_create (old_delete_1);
	object_create (old_delete_2);
	object_create (old_delete_3);
	object_create (old_delete_4);
	object_create (old_delete_5);
	object_create (old_delete_6);
	object_create (old_delete_7);
	object_create (old_delete_8);
	object_create (old_delete_9);
	
end

// --- End m30_cryptum_exterior_2.hsc ---

// --- Begin m30_cryptum_forerunners.hsc ---
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343
//
// 	Mission: 					m30_cryptum
//	Subsection: 			Intro
//										
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343

// =================================================================================================
// =================================================================================================
// *** GLOBALS ***
// =================================================================================================
// =================================================================================================

global short intro_pawn_check = 5;
global short intro_pawn_fight = 0;
global short caves_knight_2_obj = 0;
global short portal_count = 0;
global short knight_gating = 0;
global boolean gh_bishop_spawned = FALSE;
global boolean b_first_time_through = FALSE;
global boolean b_second_time_through = FALSE;
global boolean b_final_time_through = FALSE;
global boolean puppeteer_done = FALSE;
global boolean b_first_pawn_fight_started = FALSE;
global boolean b_pawn_reveal_go = FALSE;
global boolean b_bridge_button_hit = FALSE;
global boolean b_bridge_gate_check = FALSE;
global boolean b_grassy_hill_encounter_over = FALSE;

// Puppet id for tracking which "Pylon Electricity" puppet is active
global long id_for_pylon_pups = -1;

// =================================================================================================
// =================================================================================================
// *** FORERUNNER INTRO ***
// =================================================================================================
// =================================================================================================

script dormant m30_cryptum_intro_forerunners()	
	sleep_until (b_mission_started == TRUE);

	dprint  ("::: intro forerunners start :::");
	thread (aa_turret_1_float());
	thread (aa_turret_2_float());
	thread (aa_turret_3_float());
	thread (aa_turret_4_float());
	wake (f_bishop_intro);
	wake (f_grassy_hill_spawn);
	thread (observation_deck_setup());
	wake (distant_knight_phasing);
	wake (caves_save_setup);
	wake (first_pawn_setup);
	wake (knight_ambush_pup);
	wake (cryptshield_1_caves);
	data_mine_set_mission_segment ("m30_start/caves");
end

script dormant first_pawn_setup
	sleep_until (volume_test_players (tv_first_pawn_place), 1);
	
	b_pawn_reveal_go = TRUE;
	
	sound_impulse_start('sound\environments\solo\m030\ambience\events\amb_m30_pawns_appear', NONE, 1 );

	dprint ("first pawn fight placed");
	
	//sleep_until (ai_living_count (sg_intro_pawn) <= 3);
	
	//dprint ("pawn reinforcements incoming!");
	
	//ai_place (sq_caves_pawn_intro_2);
	//ai_place (sq_caves_pawn_intro_3);
	
end

script dormant bridge_button_dissolve()
	dprint ("bridge button dissolving");
	object_dissolve_from_marker(bridge_button, "phase_out", "button_marker");
	//gets rid of collision device machine proxy
	object_destroy(m30_button_fake1);
end

script static void f_phase_to_point( object obj, point_reference point )
	cs_phase_to_point(object_get_ai(obj), TRUE, point);
	
end

script static void f_phase_to_point_and_erase (object obj, point_reference point)
	
	sleep (5);
	
	dprint ("phasing away now weeeeee");
	
	cs_phase_to_point(object_get_ai(obj), TRUE, point);
	
	sleep (40);
	
	dprint ("erase");
	ai_erase (object_get_ai(obj));
end


script dormant caves_save_setup
	sleep_until (volume_test_players (tv_caves_save), 1);

	game_save_no_timeout();
	
	pup_play_show ("pawn_reveal");
		
end

script command_script knight_phase_spawn()
	cs_phase_in();
end

script dormant knight_ambush_pup
	sleep_until (volume_test_players (tv_knight_attack), 1);
	
	if game_is_cooperative() then
	
	dprint ("no show for you");
	
	else
	
	thread (knight_attack());
	
	end
	
end

script static void knight_attack()

	g_ics_player = player0;
	streamer_pin_tag("objects\characters\storm_knight\storm_knight.biped", object_type_get_variant_index("objects\characters\storm_knight\storm_knight.biped", "e3_hero_head"));
	local long show = pup_play_show ("knight_attack");
	sleep_until(not pup_is_playing(show),1);
	show = pup_play_show ("knight_attack2");
	sleep_until(not pup_is_playing(show),1);
	streamer_unpin_tag("objects\characters\storm_knight\storm_knight.biped", object_type_get_variant_index("objects\characters\storm_knight\storm_knight.biped", "e3_hero_head"));
end

script dormant f_bishop_intro()
	sleep_until (volume_test_players (tv_intro_pawn_fight), 1);

	thread (f_mus_m30_e01_start());
	
	ai_place (sq_barking_pawn);
	local long show = pup_play_show(barking_pawn);
		
	//sleep (30);
	ai_place (sq_caves_pawn_intro);
	sleep (10);
	ai_place (sq_caves_pawn_intro_2);
	sleep (20);
	ai_place (sq_caves_pawn_intro_3);
	dprint ("here come the pawns on de floor");
	wake (bridge_gating);
	wake (bridge_failsafe);
	wake (m30_prepawn);

	intro_pawn_fight = 0;

	wake (canyon_bridge_create);

	device_group_set_immediate (bridge_group, 1);

end

script command_script start_pawn_waiting()
	cs_pause (0.25);
end	

script dormant bridge_gating()
	sleep_until (ai_living_count (sg_intro_pawn) == 0) and (b_bridge_gate_check == FALSE);
	
	wake (M30_plyon_1_lightbridge);
	f_blip_flag (bridge_button_flag, "activate");
	thread (f_mus_m30_e01_finish());
	//sleep_forever (bridge_failsafe);
end

script dormant bridge_failsafe()
	sleep_until (volume_test_players (tv_bridge_failsafe_check), 1);
	 //and (b_bridge_gate_check == FALSE)
	b_bridge_gate_check = TRUE;
	f_unblip_flag (bridge_button_flag);
	thread (f_mus_m30_e01_finish());
	sleep_forever (bridge_gating);
	dprint ("you made it across the bridge before all them pawns were dead, sleeping blip forever");
	
end

script command_script intro_bishop_fly()
	cs_pause (1.0);
	cs_fly_to (ps_intro_bishop.p0);
	cs_fly_to (ps_intro_bishop.p1);
	cs_fly_to (ps_intro_bishop.p2);
	ai_erase (sq_caves_bishop_1);
end

script static void f_activator_get( object trigger, unit activator )
	g_ics_player = activator;

	if ( trigger == domain_terminal_button ) then
		f_narrative_domain_terminal_interact( 1, domain_terminal, domain_terminal_button, activator, 'pup_domain_terminal' );
	end
	
end


script dormant canyon_bridge_create()
	sleep_until (device_get_position (bridge_button) != 0);

	device_group_set_immediate (bridge_group, 0);
	
	sleep_forever (bridge_failsafe);
	sleep_forever (bridge_gating);
	
	f_unblip_flag (bridge_button_flag);

	local long show = pup_play_show ("canyon_bridge");
	sleep (60);
	object_create (m30_caves_lightbridge);
	sound_impulse_start ( 'sound\environments\solo\m030\amb_m30_beta\amb_m30_machines\amb_m30_machine_spawn_forerunner_bridge', m30_caves_lightbridge, 1 ); //AUDIO!
	dprint ("canyon bridge is created.  if you're in sapien, it's time for a leap of faith.");
	
	sleep_until(not pup_is_playing(show),1);
	
	game_save_no_timeout();
	
	sleep_until ((ai_living_count (sg_intro_pawn) == 0) or (volume_test_players (tv_bridge_failsafe_check)), 1);
	
	wake (M30_plyon_1_lightbridge);
	thread (f_mus_m30_e01_finish());

end

script command_script surprise_bishop1()
	cs_fly_to (ps_bishop_surprise1.p0);
	cs_fly_to (ps_bishop_surprise1.p1);
	cs_fly_to (ps_bishop_surprise1.p2);
	ai_erase (bishop_surprise.sp0);
end

script command_script surprise_bishop2()
	cs_fly_to (ps_bishop_surprise1.p3);
	cs_fly_to (ps_bishop_surprise1.p1);
	cs_fly_to (ps_bishop_surprise1.p2);
	ai_erase (bishop_surprise.sp1);
end

script command_script surprise_bishop3()
	cs_fly_to (ps_bishop_surprise1.p4);
	cs_fly_to (ps_bishop_surprise1.p6);
	cs_fly_to (ps_bishop_surprise1.p7);
	ai_erase (bishop_surprise.sp2);
end

script command_script surprise_bishop4()
	cs_fly_to (ps_bishop_surprise1.p5);
	cs_fly_to (ps_bishop_surprise1.p6);
	cs_fly_to (ps_bishop_surprise1.p7);
	ai_erase (bishop_surprise.sp3);
end
	

script command_script f_bridgepawns_run()
	cs_abort_on_damage (TRUE);
	cs_abort_on_alert (TRUE);
	cs_shoot (TRUE);
	cs_move_towards_point (ps_bridge_pawns.p0, 1);
	cs_move_towards_point (ps_bridge_pawns.p1, 1);
end

// Spawn the knights in the distance that will teleport away
script dormant distant_knight_phasing()
	sleep_until (volume_test_players (tv_start_obj), 1);
	
	ai_place (sq_caves_knight_2);
	ai_place (sq_caves_flavor_knight2);
	ai_place (sq_caves_flavor_knight1);
end

script command_script bishop_2_flyaway()
	cs_pause (1.5);
	cs_fly_to (ps_bishop2_flyaway.p0);
	cs_fly_to (ps_bishop2_flyaway.p1);
	cs_fly_to (ps_bishop2_flyaway.p2);
	cs_fly_to (ps_bishop2_flyaway.p3);
	cs_fly_to (ps_bishop2_flyaway.p4);
	ai_erase (sq_caves_bishop_2);
end	

script command_script knight_intro_move()
	cs_pause (3.0);
	cs_move_towards_point (ps_knight_move.p0, 1);
end

script command_script knight_phase_intro()
	sleep_until ((unit_get_shield (ai_current_actor) < 0.90) or (volume_test_players (tv_phase1)), 1);
	cs_pause (0.5);
//	cs_phase_to_point (ps_knight_phasing.p4);
//	cs_pause (1.0);

	// The first knight teleports away
	sound_impulse_start('sound\environments\solo\m030\ambience\events\amb_m30_knights_phasing', NONE, 1 );
	
	cs_phase_to_point (ps_knight_phasing.p0);
	ai_erase (sq_caves_knight_2);
end

script command_script knight_flavor_phase1()
	sleep_until ((unit_get_shield (ai_current_actor) < 0.90) or (volume_test_players (tv_phase2)), 1);
	cs_pause (1.25);
//	cs_phase_to_point (ps_knight_phasing.p5);
//	cs_pause (1.5);
	cs_phase_to_point (ps_knight_phasing.p1);
	ai_erase (sq_caves_flavor_knight2);
end

script command_script knight_flavor_phase2()
	sleep_until ((unit_get_shield (ai_current_actor) < 0.90) or (volume_test_players (tv_phase2)), 1);
//	cs_phase_to_point (ps_knight_phasing.p6);
	cs_pause (0.75);
	wake (M30_grassy_hills_start);
	cs_phase_to_point (ps_knight_phasing.p2);
	ai_erase (sq_caves_flavor_knight1);
end

script dormant f_grassy_hill_spawn()
	sleep_until (volume_test_players (tv_grassy_hill_spawn), 1);
	thread (f_mus_m30_e02_start());
	game_save_no_timeout();
	knight_gating = 0;
	thread (gh_bishop_tower_left());
	thread (gh_bishop_tower_right());

	ai_place (sq_caves_bishop_3);
//	ai_place (sq_bishop_watchers);
	//ai_place (sq_caves_knight_watchers);
	
	thread (place_voyeur_knights());
	
	ai_disregard (ai_actors(sq_caves_knight_watchers), TRUE);

	thread (f_door_hallway_1_in_open());
	ai_place (sq_grassy_hill_pawns);
	sleep (5);
	ai_place (sq_grassy_hill_pawns_2);
	sleep (5);
	ai_place (sq_grassy_hill_pawns_3);
	local long show = pup_play_show ("knight_intro");
	//wake (f_grassy_hill_step_1);
	
	//sleep (30 * 2);
	wake (f_grassy_hill_end);
	
	sleep_until (not pup_is_playing (show), 1);
	
	puppeteer_done = TRUE;
	//ai_reset_objective (before_bishop_spawn);
	
end

script static void place_voyeur_knights()

	local long voyeur_1 = pup_play_show ("knight_voyeur_1");
	sleep (15);
	local long voyeur_2 = pup_play_show ("knight_voyeur_2");
	sleep (10);
	local long voyeur_3 = pup_play_show ("knight_voyeur_3");
	sleep (10);
	local long voyeur_4 = pup_play_show ("knight_voyeur_4");
	sleep (15);
	local long voyeur_5 = pup_play_show ("knight_voyeur_5");

	sleep_until (knight_gating == 15, 1);
	
	pup_stop_show (voyeur_1);

	pup_stop_show (voyeur_2);

	pup_stop_show (voyeur_3);

	pup_stop_show (voyeur_4);

	pup_stop_show (voyeur_5);

end

script command_script knight_watcher_1()
	cs_phase_to_point (ps_knight_move.p7);
	
	sleep_until ((unit_get_shield (ai_current_actor) < 0.75) or (knight_gating == 15), 1);
	dprint ("you scared him away!");
	cs_phase_to_point (ps_knight_move.p13);
	ai_erase (ai_current_actor);
	
end

script command_script knight_watcher_2()
	cs_phase_to_point (ps_knight_move.p8);
	
	sleep_until ((unit_get_shield (ai_current_actor) < 0.75) or (knight_gating == 15), 1);
	dprint ("you scared him away!");
	cs_phase_to_point (ps_knight_move.p13);
	ai_erase (ai_current_actor);
	
end

script command_script knight_watcher_3()
	cs_phase_to_point (ps_knight_move.p9);
	
	sleep_until ((unit_get_shield (ai_current_actor) < 0.75) or (knight_gating == 15), 1);
	dprint ("you scared him away!");
	cs_phase_to_point (ps_knight_move.p13);
	ai_erase (ai_current_actor);
	
end

script command_script knight_watcher_4()
	cs_phase_to_point (ps_knight_move.p12);
	
	sleep_until ((unit_get_shield (ai_current_actor) < 0.75) or (knight_gating == 15), 1);
	dprint ("you scared him away!");
	cs_phase_to_point (ps_knight_move.p13);
	ai_erase (ai_current_actor);
	
end

script command_script knight_watcher_5()
	cs_phase_to_point (ps_knight_move.p11);
	
	sleep_until ((unit_get_shield (ai_current_actor) < 0.75) or (knight_gating == 15), 1);
	dprint ("you scared him away!");
	cs_phase_to_point (ps_knight_move.p13);
	ai_erase (ai_current_actor);
	
end

script command_script knight_watcher_6()
	cs_phase_to_point (ps_knight_move.p3);
	
	sleep_until ((unit_get_shield (ai_current_actor) < 0.75) or (knight_gating == 15), 1);
	dprint ("you scared him away!");
	cs_phase_to_point (ps_knight_move.p13);
	ai_erase (ai_current_actor);
	
end

script command_script knight_watcher_7()
	cs_phase_to_point (ps_knight_move.p4);
	
	sleep_until ((unit_get_shield (ai_current_actor) < 0.75) or (knight_gating == 15), 1);
	dprint ("you scared him away!");
	cs_phase_to_point (ps_knight_move.p13);
	ai_erase (ai_current_actor);
	
end

script static void gh_bishop_tower_left()
	gh_bishop_tower_1->start_animating();
end

script static void gh_bishop_tower_right()
	gh_bishop_tower_2->start_animating();
end

script dormant f_grassy_hill_end()
	dprint ("f_grassy_hill_end was woken");
	sleep_until (ai_living_count (sq_caves_knight_3) == 0 and ai_living_count (sg_gh_pawns) == 0 and (ai_living_count(sq_caves_bishop_3) - ai_in_limbo_count(sq_caves_bishop_3)) == 0, 1);
	
	knight_gating = 15;

	thread (f_mus_m30_e02_finish());
	dprint ("knight_gating is set to 15, blip appearing");
	f_blip_flag (grassy_hill_end_flag, "default");
	game_save();
	b_grassy_hill_encounter_over = TRUE;	
	wake (grassy_hill_end_blip_gone);
end

script command_script gh_knight_phase_2()
	cs_phase_to_point (ps_knight_move.p3);

	//cs_pause (1);
	
	//cs_custom_animation (objects\characters\storm_knight\storm_knight.model_animation_graph, "combat:any:go_berserk", TRUE);
		
	sleep_until ((unit_get_shield (ai_current_actor) < 0.5) or (knight_gating == 5), 1);
	
	dprint ("knight was threatened - phase into combat now");
	
	sleep (15);
	
	cs_phase_to_point (ps_knight_move.p5);

end

script command_script gh_knight_phase_3()
	cs_phase_to_point (ps_knight_move.p4);
	
	//cs_pause (0.5);
	
	//cs_custom_animation (objects\characters\storm_knight\storm_knight.model_animation_graph, "combat:any:go_berserk", TRUE);
	
	sleep_until ((unit_get_shield (ai_current_actor) < 0.5) or (knight_gating == 10), 1);

	dprint ("knight was threatened - phase into combat now");

	sleep (15);

	cs_phase_to_point (ps_knight_move.p5);
	
end

script command_script cs_bishop_spawn()
	print("bishop sleeping");
  ai_enter_limbo (ai_current_actor);
  CreateDynamicTask(TT_SPAWN, FT_BIRTHER, ai_get_object(ai_current_actor), OnCompleteProtoSpawn, 0);
  cs_pause (1.0);
end

script command_script cs_bishop_spawn_gh()
	print("gh bishop sleeping");
  ai_enter_limbo (ai_current_actor);
  CreateDynamicTask(TT_SPAWN, FT_BIRTHER, ai_get_object(ai_current_actor), OnCompleteProtoSpawn_gh, 0);
  cs_pause (1.0);
end

script static void OnCompleteProtoSpawn_gh()
	dprint ("bishop is spawned");
	gh_bishop_spawned = TRUE;
	//thread (knight_leap());
end

script static void knight_leap()
	sleep_until (gh_bishop_spawned == TRUE);
	sleep (30);
	pup_play_show ("knight_leap");
	dprint ("knight leaping");
end

script static void OnCompleteProtoSpawn()
	print ("BLARSH");
end

script command_script gh_first_knight_rush()
	//cs_go_to (ps_knight_move.p2, 0.5);
	cs_phase_to_point (ps_knight_move.p2);
end

script dormant grassy_hill_end_blip_gone()
	sleep_until (volume_test_players (tv_grassy_hill_end_flag), 1);
	//sleep_forever (grassy_hill_end_blip);
	f_unblip_flag (grassy_hill_end_flag);
	thread (f_door_hallway_1_out_open());

end

// =================================================================================================
// =================================================================================================
// *** OBSERVATORY ***
// =================================================================================================

// =================================================================================================
// =================================================================================================
// 
//	portal_count = 0; this is at the very start of the level
// 	portal_count = 5; this is after the first button has been activated
// 	portal_count = 10; this is after the first pylon has been activated
//  portal_count = 15; this is after the second button has been activated
//  portal_count = 20; this is after the second pylon has been activated
//  portal_count = 25; this is after the final button has been activated
//
// =================================================================================================
// =================================================================================================

script static void observation_deck_setup()
	wake (first_time_through);
	wake (second_time_through);
	wake (final_time_through);
	wake (left_portal_activate);
	wake (first_time_through_sky);
	wake (second_time_through_sky);
	wake (second_time_through_cryptshield);
	wake (final_time_through_sky);
end

script dormant first_time_through()
	sleep_until (volume_test_players (tv_portal_1) and (portal_count == 0), 1);
		
	zone_set_trigger_volume_enable ("begin_zone_set:2_start", FALSE);
	zone_set_trigger_volume_enable ("zone_set:2_start", FALSE);
	
	zone_set_trigger_volume_enable ("begin_zone_set:3_donut", FALSE);
	zone_set_trigger_volume_enable ("zone_set:3_donut", FALSE);
	device_set_power (deck_button, 0); // turn the power off until the converation is finished
	
	pup_play_show(pyelectric_hide);
	
	sleep_until (volume_test_players (tv_didact_portal_open), 1);
	
	// audio stinger when player enters the observatory for the first time
	sound_impulse_start('sound\environments\solo\m030\amb_m30_beta\amb_30_observation_deck_stinger_1', NONE, 1);
		
	sleep_until (b_first_time_dialog_over == TRUE);
	device_group_set_immediate (deck_switch_group, 1);
	
	if b_relay_cine_done == FALSE then
		f_blip_flag (deck_switch_blip, "activate");

	else
	
		dprint ("you already hit it, no need to blip");
		
	end

end

script static void aa_turret_1_float()
	object_set_physics (pve_turret_1, FALSE);
	
	repeat
    object_move_by_offset(pve_turret_1, 2, 0.0, 0.0, -0.05);
    sleep (20);
    object_move_by_offset(pve_turret_1, 2, 0.0, 0.0, 0.05);
  until (object_get_parent (pve_turret_1) != none);

	dprint ("aa picked up, looping anim cancelled");

end

script static void aa_turret_2_float()
	object_set_physics (pve_turret_2, FALSE);
	
	repeat
    object_move_by_offset(pve_turret_2, 2, 0.0, 0.0, -0.05);
    sleep (20);
    object_move_by_offset(pve_turret_2, 2, 0.0, 0.0, 0.05);
  until (object_get_parent (pve_turret_2) != none);

	dprint ("aa picked up, looping anim cancelled");

end

script static void aa_turret_3_float()
	object_set_physics (pve_turret_3, FALSE);
	
	repeat
    object_move_by_offset(pve_turret_3, 2, 0.0, 0.0, -0.05);
    sleep (20);
    object_move_by_offset(pve_turret_3, 2, 0.0, 0.0, 0.05);
  until (object_get_parent (pve_turret_3) != none);

	dprint ("aa picked up, looping anim cancelled");
end

script static void aa_turret_4_float()
	object_set_physics (pve_turret_4, FALSE);
	
	repeat
    object_move_by_offset(pve_turret_4, 2, 0.0, 0.0, -0.05);
    sleep (20);
    object_move_by_offset(pve_turret_4, 2, 0.0, 0.0, 0.05);
  until (object_get_parent (pve_turret_4) != none);

	dprint ("aa picked up, looping anim cancelled");
end

script dormant first_time_through_sky()
	sleep_until (volume_test_players (tv_od_sky_change) and (portal_count == 0), 1);
	
	dprint ("setting sky to default");
	SetSkyObjectOverride("");

	dprint ("Starting puppet pyelectric_01");
	id_for_pylon_pups = pup_play_show(pyelectric_01);

end


script dormant second_time_through_sky()
	sleep_until (volume_test_players (tv_od_sky_change) and (portal_count == 10), 1);
	
	dprint ("setting sky to 5 - m30_sky_obdeck_02");
	SetSkyObjectOverride("m30_sky_obdeck_02");

end

script dormant second_time_through_cryptshield()
	sleep_until (volume_test_players ("begin_zone_set:2_start") and (portal_count == 10), 1);
	dprint ("second_time_through_cryptshield");
	thread(set_cryptum_shield_stage(1, 2, FALSE));
end

script dormant final_time_through_sky()
	sleep_until (volume_test_players (tv_od_sky_change) and (portal_count == 20), 1);
	
	dprint ("setting sky to 6 - m30_sky_obdeck_03");
	SetSkyObjectOverride("m30_sky_obdeck_03");

	thread(set_cryptum_shield_stage(1, 3, FALSE));
end


script dormant second_time_through()
	sleep_until (volume_test_players (tv_portal_1) and (portal_count == 10), 1);
	
	zone_set_trigger_volume_enable ("begin_zone_set:2_start", TRUE);
	zone_set_trigger_volume_enable ("zone_set:2_start", TRUE);
	
	zone_set_trigger_volume_enable ("begin_zone_set:3_donut", FALSE);
	zone_set_trigger_volume_enable ("zone_set:3_donut", FALSE);
		
	sleep_until (volume_test_players (tv_didact_portal_open) and (portal_count == 10), 1);

	// audio stinger when player enters the observatory for the second time
	sound_impulse_start('sound\environments\solo\m030\amb_m30_beta\amb_30_observation_deck_stinger_2', NONE, 1);
	
	dprint ("incoming covvie fleet");
	
	// covenant ship shows
	pup_play_show ("obs_fleet1"); // ships
	pup_play_show(obs_fleet1_portals); // portal fx
	
	wake (right_portal_activate);
end

script dormant final_time_through()
	sleep_until (volume_test_players (tv_portal_1) and (portal_count == 20), 1);
	
	zone_set_trigger_volume_enable ("begin_zone_set:2_start", FALSE);
	zone_set_trigger_volume_enable ("zone_set:2_start", FALSE);
	
	zone_set_trigger_volume_enable ("begin_zone_set:3_donut", TRUE);
	zone_set_trigger_volume_enable ("zone_set:3_donut", TRUE);
		
	sleep_until (b_final_time_through == TRUE and volume_test_players (tv_didact_portal_open), 1);
	
	wake (center_portal_activate);
	
	pup_play_show ("obs_fleet2");

end

script dormant left_portal_activate()
	sleep_until (device_get_position (deck_button) != 0);

	device_group_set_immediate (deck_switch_group, 0);

	f_unblip_flag (deck_switch_blip);
	
	local long relay_cin_intro = pup_play_show (relay_cin_intro);
	
	sleep_until (not pup_is_playing(relay_cin_intro) , 1);
	
	wake (M30_Console_Button_one);
	
	sleep_until (b_didact_portal_open == TRUE);
	
	sleep_until (device_get_position (observation_portal_01) >= 0.90) and (b_didact_portal_open == TRUE);

	portal_count = 5;
	//f_blip_flag (left_portal_loc, "default");
	print ("portal count set to 5");
	print ("portal to first pylon is open!");
	thread (left_portal_teleport());
	
	f_unblip_flag (deck_switch_blip);
	
end

script dormant right_portal_activate()
//	sleep_until (device_get_position (right_button) != 0);
	device_group_set_immediate (deck_switch_group, 0);

	observation_portal_02->f_animate();
	
	sleep_until (device_get_position (observation_portal_02) >= 0.90);
	
	portal_count = 15;
	//f_blip_flag (right_portal_loc, "default");
	wake (M30_Console_Button_two);
	print ("portal count set to 15");
	print ("portal to second pylon is open!");
	thread (right_portal_teleport());

end

script dormant center_portal_activate()
//	sleep_until (device_get_position (center_button) != 0);
	device_group_set_immediate (deck_switch_group, 0);

	pup_play_show ("obs_donut_portal");
	thread (observation_stairs_go());
	
	sleep (30);
	
	thread (observation_platform_go());
	thread (observation_supports_go());
	
//	sleep_until (device_get_position (observation_portal_03) >= 0.85);
	
	portal_count = 25;
	//f_blip_flag (center_portal_loc, "default");
//	wake (M30_Console_Button_three);
	print ("portal count set to 25");
	print ("portal to the cryptum platform is open!");
	thread (center_portal_teleport());

end

script static void observation_stairs_go
	observation_stairs->f_animate();
end

script static void observation_platform_go
	//observation_deck_01->f_animate();
	dprint ("old script, no use no more");
end

script static void observation_supports_go
	//observation_deck_support_01->f_animate();
	dprint ("old script, no use no more");
end

script static void left_portal_teleport()
	sleep_until (volume_test_players (tv_left_portal_teleport) and (portal_count == 5), 1);
	
	effect_new_at_ai_point (environments\solo\m10_crash\fx\flash_white.effect, ps_teleports.p0);
	sound_impulse_start(sound\environments\solo\m030\amb_m30_beta\amb_m30_machines\amb_m30_machine_forerunner_portal_flash, player0, 1);
	sound_impulse_start(sound\environments\solo\m030\amb_m30_beta\amb_m30_machines\amb_m30_machine_forerunner_portal_flash, player1, 1);
	sound_impulse_start(sound\environments\solo\m030\amb_m30_beta\amb_m30_machines\amb_m30_machine_forerunner_portal_flash, player2, 1);
	sound_impulse_start(sound\environments\solo\m030\amb_m30_beta\amb_m30_machines\amb_m30_machine_forerunner_portal_flash, player3, 1);
	fade_out_for_player (player0);
	fade_out_for_player (player1);
	fade_out_for_player (player2);
	fade_out_for_player (player3);
	
	f_unblip_flag (deck_switch_blip);
	dprint ("setting sky to default");
	SetSkyObjectOverride("");

	object_teleport (player0, caves_teleport_flag_1);
	object_teleport (player1, caves_teleport_flag_2);
	object_teleport (player2, caves_teleport_flag_3);
	object_teleport (player3, caves_teleport_flag_4);
	
	print ("TELEPORT!");
	pup_play_show ("start_1_portal");
	
	dprint ("Starting puppet pyelectric_02");
	id_for_pylon_pups = pup_play_show(pyelectric_02);

	fade_in_for_player (player0);
	fade_in_for_player (player1);
	fade_in_for_player (player2);
	fade_in_for_player (player3);
	
	game_save();
	
end

script static void right_portal_teleport()
	sleep_until (volume_test_players (tv_right_portal_teleport) and (portal_count == 15), 1);
	
	effect_new_at_ai_point (environments\solo\m10_crash\fx\flash_white.effect, ps_teleports.p2);
	sound_impulse_start(sound\environments\solo\m030\amb_m30_beta\amb_m30_machines\amb_m30_machine_forerunner_portal_flash, player0, 1);
	sound_impulse_start(sound\environments\solo\m030\amb_m30_beta\amb_m30_machines\amb_m30_machine_forerunner_portal_flash, player1, 1);
	sound_impulse_start(sound\environments\solo\m030\amb_m30_beta\amb_m30_machines\amb_m30_machine_forerunner_portal_flash, player2, 1);
	sound_impulse_start(sound\environments\solo\m030\amb_m30_beta\amb_m30_machines\amb_m30_machine_forerunner_portal_flash, player3, 1);
	fade_out_for_player (player0);
	fade_out_for_player (player1);
	fade_out_for_player (player2);
	fade_out_for_player (player3);
	
	dprint ("setting sky to default");
	SetSkyObjectOverride("");

	object_teleport (player0, flag_2_start_1);
	object_teleport (player1, flag_2_start_2);
	object_teleport (player2, flag_2_start_3);
	object_teleport (player3, flag_2_start_4);
	
	print ("TELEPORT!");
	pup_play_show ("start_2_portal");
	
	pup_play_show(pyelectric2_01);
	
	fade_in_for_player (player0);
	fade_in_for_player (player1);
	fade_in_for_player (player2);
	fade_in_for_player (player3);
	
	game_save();
	
	sleep (5);
	
	object_destroy (obs_octopus1);
	object_destroy (obs_octopus2);
	
	
end

script static void center_portal_teleport()
	sleep_until (volume_test_players (tv_center_portal_teleport) and (portal_count == 25), 1);
	
	effect_new_at_ai_point (environments\solo\m10_crash\fx\flash_white.effect, ps_teleports.p1);
	sound_impulse_start(sound\environments\solo\m030\amb_m30_beta\amb_m30_machines\amb_m30_machine_forerunner_portal_flash, player0, 1);
	sound_impulse_start(sound\environments\solo\m030\amb_m30_beta\amb_m30_machines\amb_m30_machine_forerunner_portal_flash, player1, 1);
	sound_impulse_start(sound\environments\solo\m030\amb_m30_beta\amb_m30_machines\amb_m30_machine_forerunner_portal_flash, player2, 1);
	sound_impulse_start(sound\environments\solo\m030\amb_m30_beta\amb_m30_machines\amb_m30_machine_forerunner_portal_flash, player3, 1);
	fade_out_for_player (player0);
	fade_out_for_player (player1);
	fade_out_for_player (player2);
	fade_out_for_player (player3);
	
	dprint ("setting sky to default");
	SetSkyObjectOverride("");

	object_teleport (player0, flag_donut_1);
	object_teleport (player1, flag_donut_2);
	object_teleport (player2, flag_donut_3);
	object_teleport (player3, flag_donut_4);
	print ("TELEPORT!");
	pup_play_show ("donut_portal");
	
	fade_in_for_player (player0);
	fade_in_for_player (player1);
	fade_in_for_player (player2);
	fade_in_for_player (player3);
	
	object_destroy (obs_octopus3);
	
end
	
script static void prepare_obs_fleet1( object_name cruiser, object_name phantom1, object_name phantom2 )
  object_create(cruiser);
  object_create(phantom1);
  object_create(phantom2);

	// NOTE: temporarily disable imposters to see the phantoms
	object_cinematic_visibility(cruiser,true);
	object_cinematic_visibility(phantom1,true);
	object_cinematic_visibility(phantom2,true);
	object_cinematic_lod(phantom1,true);
	object_cinematic_lod(phantom2,true);
	
	// Turn on the shield fx for the cruiser and phantoms
	obs_fleet_shields_on(cruiser, phantom1, phantom2);	
end

script static void prepare_obs_fleet2()
	object_create_folder(sc_obs_fleet2);

	// NOTE: temporarily disable imposters to see the phantoms
	object_cinematic_visibility(obs_phantom3_4,true);
	object_cinematic_visibility(obs_phantom3_5,true);
	object_cinematic_visibility(obs_phantom3_6,true);
	object_cinematic_visibility(obs_phantom3_7,true);
	object_cinematic_lod(obs_phantom3_4,true);
	object_cinematic_lod(obs_phantom3_5,true);
	object_cinematic_lod(obs_phantom3_6,true);
	object_cinematic_lod(obs_phantom3_7,true);
end

// --- End m30_cryptum_forerunners.hsc ---

// --- Begin m30_cryptum_forts_1.hsc ---
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343
//
// 	Mission: 					m30_cryptum
//	Subsection: 			Forts 1
//										
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343

// =================================================================================================
// =================================================================================================
// *** GLOBALS ***
// =================================================================================================
// =================================================================================================

global short forts_south_advance = 0;
global short forts_east_advance = 0;
global short forts_west_advance = 0;
global short forts_1_generator_south_dead = 0;
global short forts_1_generator_east_dead = 0;
global short forts_1_generator_west_dead = 0;
global short forts_1_generator_count = 0;
global short forts_1_sequencer = 0;
global short DEF_CURRENT_POSITION = 0;
global boolean south_fort_bishop_spawned = FALSE;
global boolean east_fort_bishop_spawned = FALSE;
global boolean west_fort_bishop_spawned = FALSE;
global boolean doorway_bishop1_spawned = FALSE;
global boolean doorway_bishop2_spawned = FALSE;
global boolean b_symbols_created = FALSE;
global boolean gooby_pls = TRUE;
global boolean b_all_cores_destroyed = FALSE;
global long VAR_SYMBOL_COLOR = VAR_OBJ_LOCAL_A;
global boolean b_west_generator_dead = FALSE;
global boolean b_east_generator_dead = FALSE;
global boolean b_south_generator_dead = FALSE;
global boolean b_forts1_has_ended = FALSE;
global boolean b_elevator1_button_hit = FALSE;
global boolean VAR_OBJ_TRACKER_1 = FALSE;
global boolean VAR_OBJ_TRACKER_2 = FALSE;
global boolean VAR_OBJ_TRACKER_3 = FALSE;


// =================================================================================================
// =================================================================================================
// *** FORTS 1 ***
// =================================================================================================
// =================================================================================================

script dormant m30_cryptum_forts_1()	

	sleep_until (b_mission_started == TRUE);
	//	Waits until the insertion point trigger has been hit, inside m30_design scenario layer. 
	sleep_until (volume_test_players (tv_insertion_wake_py1_forts), 1); 
	
	// huge encounter, we need effects perf
	effects_perf_armageddon = 1;

	game_save_no_timeout();
	
	dprint ("Stopping puppet pyelectric_03");
	pup_stop_show(id_for_pylon_pups);
	
	dprint ("Starting puppet pyelectric_04");
	id_for_pylon_pups = pup_play_show(pyelectric_04);
	
	//object_destroy (pylon_near_canyons2);
	//object_destroy (pylon_far_canyons2);
	//pup_play_show ("pylon_electricity_forts1");
	
	dprint  ("::: forts1 start :::");

	wake (f_elevator_1_mover);
	wake (f_save_generators_one);
	wake (f_save_generators_three);
	wake (f_save_main_fort_entrance);
	wake (f_forts1_shields_deactivate);
	wake (f_generator_blip_prox_01);
	wake (f_generator_blip_prox_02);
	wake (f_generator_blip_prox_03);
	wake (f_forts1_mainfort_blip);
	wake (f_forts_initial_spawn);
	wake (f_forts_eastfort_spawn);
	wake (f_forts_westfort_spawn);
	wake (f_forts_rearpawns_spawn);
	wake (final_forts1_doorway_fight);
	thread (device_machine_attaching());
	wake (f_forts1_start);
	wake (f_pylon1_setup);
	thread (M30_pylonone_bridgetoelevator()); //Narrative Scripting
	wake (M30_pylonone_top_enter); //Narrative Scripting
	//thread (f_orderly_shield_deactivation());
	
	wake (f_forts1_repeating_gc);
	wake (forts1_objective_go);
	
	//f_color_change_go();
	data_mine_set_mission_segment ("m30_forts_1");
	effects_distortion_enabled = FALSE;

	if game_difficulty_get_real() == "legendary" then		
		thread (recycle_volume_start());
	else	
		sleep (1);
	end
	
end


script dormant forts1_objective_go()
	sleep_until (volume_test_players (tv_player_in_space), 1);
	
	wake (m30_objective_2);
	
	wake (south_fort_defeated_save);
	wake (west_fort_defeated_save);
	wake (east_fort_defeated_save);
	
end


// INITIAL SETUP ===================================================================================

script dormant f_forts1_start()
	
	sleep_until (volume_test_players (tv_save_fort_entry_top), 1);
	
	//game_save();
	
	object_create (generator_01_core);
	//sleep (5);
	object_create (generator_02_core);
	//sleep (5);
	object_create (generator_03_core);
	dprint ("cores created");
	
	sleep (30 * 2);
	//Fort Gates Activation
	thread (f_generator_startup());
	thread (f_generator_switch_01());
	thread (f_generator_switch_02());
	thread (f_generator_switch_03());	
	
	//ai_place (sq_main_turret1);
	//ai_place (sq_main_turret2);
	sleep (30);
	//AutomatedTurretActivate (ai_vehicle_get(sq_main_turret1.sp_main_turret1));
	//AutomatedTurretActivate (ai_vehicle_get(sq_main_turret2.sp_main_turret2));
	//dprint ("turrets spawned");

end

script static void device_machine_attaching()
	objects_attach (south_device_2, locator, south_device_1, locator);
	objects_attach (east_device_2, locator, east_device_1, locator);
	objects_attach (west_device_2, locator, west_device_1, locator);
end

script command_script cs_knight_phase_spawn()
	cs_phase_in();
end

script static void recycle_volume_start()
	repeat
		sleep_until (volume_test_players (tv_recycle_debris), 1);
	
		sleep (30 * 5);
		
		if
			volume_test_players (tv_recycle_debris)
		then
			thread (obj_tracker_0());
			sound_impulse_start(sound\game_sfx\ui\button_based_ui_sounds\start_menu_open, NONE, 1 );
		end

	until (object_valid (debug_button_0) or volume_test_players (tv_pylon_elevator_start), 1);

end

script static void obj_tracker_0()
	object_create (debug_button_0);
	device_group_set_immediate (dg_debug_button0, 1);
	
	sleep_until (device_get_position (debug_button_0) != 0);
	
	sound_impulse_start(sound\game_sfx\ui\button_based_ui_sounds\start_menu_open, NONE, 1 );
	device_group_set_immediate (dg_debug_button0, 0);
	object_create (debug_button_1);
	thread (obj_tracker_1());
	
end

script static void obj_tracker_1()
	device_group_set_immediate (dg_debug_button1, 1);
	
	sleep_until (device_get_position (debug_button_1) != 0);
	
	sound_impulse_start(sound\game_sfx\ui\button_based_ui_sounds\start_menu_open, NONE, 1 );
	device_group_set_immediate (dg_debug_button1, 0);
	object_create (debug_button_2);
	VAR_OBJ_TRACKER_1 = TRUE;
	
	thread (obj_tracker_2());
	
end

script static void obj_tracker_2()
	device_group_set_immediate (dg_debug_button2, 1);
	
	sleep_until (device_get_position (debug_button_2) != 0);
	
	sound_impulse_start(sound\game_sfx\ui\button_based_ui_sounds\start_menu_open, NONE, 1 );
	device_group_set_immediate (dg_debug_button2, 0);
	object_create (debug_button_3);
	VAR_OBJ_TRACKER_2 = TRUE;
	thread (obj_tracker_3());
	
end
	
script static void obj_tracker_3()
	device_group_set_immediate (dg_debug_button3, 1);
	
	sleep_until (device_get_position (debug_button_3) != 0);
	
	sound_impulse_start(sound\game_sfx\ui\button_based_ui_sounds\start_menu_open, NONE, 1 );
	device_group_set_immediate (dg_debug_button3, 0);
	object_create (debug_weapon_1);
	object_create (debug_weapon_2);
	object_create (debug_weapon_3);
	object_create (debug_weapon_4);
	object_create (debug_weapon_5);
	object_create (debug_weapon_6);
	object_create (debug_weapon_7);
	object_create (debug_weapon_8);
	VAR_OBJ_TRACKER_3 = TRUE;
	
end

// ====================================================================
// GARBAGE COLLECTION =================================================
// ====================================================================

script dormant f_forts1_repeating_gc()
	sleep_until (volume_test_players (tv_forts1_garbage), 1);
		
		repeat
		
			sleep( 30 * 30 );
			dprint( "Garbage collecting..." );
			add_recycling_volume_by_type (tv_forts1_garbage, 1, 10, 1 + 2 + 1024);
		
		until (not volume_test_players (tv_forts1_garbage), 1);	

end

// =================================================================================================
// =================================================================================================
// *** FORTS 1 SAVE CONTROL ***
// =================================================================================================
// =================================================================================================

script dormant f_save_generators_one()
	//	saves game after 1st generator destroyed.
	sleep_until ((forts_1_generator_count == 1), 1);
	//game_save();
	dprint ("generator destroyed!");
end

script dormant f_save_generators_three()
	//	saves game after 3rd generator destroyed.
	sleep_until ((forts_1_generator_count == 3), 1);
	//game_save();
	dprint ("generator destroyed!");
end

script dormant f_save_main_fort_entrance()
	//	saves game as player starts running up back ramp entrance of Main Fort. *** May need to redo this, so happens after solving gate puzzle! ***
	sleep_until (volume_test_players (tv_mainfort_entrance), 1);
	//game_save();
	dprint ("generator destroyed!");
end

script static void forts1_looping_save_check()
	repeat
		dprint ("trying to save the game");
		game_save();
		sleep (30 * 10);
	until (b_forts1_has_ended == TRUE);
end

script dormant south_fort_defeated_save()

	sleep_until (south_fort_bishop_spawned) == TRUE;
	
	dprint ("south fort is spawned, waiting until depleted to save");

	sleep_until 
	(
	ai_living_count (sq_south_pawns_1) == 0 and
	ai_living_count (sq_south_pawns_2) == 0 and
	ai_living_count (sq_south_knight_1) == 0 and
	ai_living_count (sq_south_bishop_1) == 0
	);
	
	game_save();
	
end

script dormant west_fort_defeated_save()

	sleep_until (west_fort_bishop_spawned) == TRUE;

	dprint ("west fort is spawned, waiting until depleted to save");

	sleep_until 
	(
	ai_living_count (sq_west_pawns_1) == 0 and
	ai_living_count (sq_west_pawns_2) == 0 and
	ai_living_count (sq_west_knight_1) == 0 and
	ai_living_count (sq_west_bishop_1) == 0
	);
	
	game_save();
	
end

script dormant east_fort_defeated_save()

	sleep_until (east_fort_bishop_spawned) == TRUE;

	dprint ("east fort is spawned, waiting until depleted to save");

	sleep_until 
	(
	ai_living_count (sq_east_pawns_1) == 0 and
	ai_living_count (sq_east_pawns_2) == 0 and
	ai_living_count (sq_east_knight_1) == 0 and
	ai_living_count (sq_east_bishop_1) == 0
	);
	
	game_save();
	
end

script dormant rear_fight_defeated_save()

	dprint ("rear fight is spawned, waiting until depleted to save");

	sleep_until 
	(
	ai_living_count (sq_doorway_knight1) == 0 and
	ai_living_count (sq_doorway_knight2) == 0 and
	ai_living_count (sq_doorway_bishop1) == 0 and
	ai_living_count (sq_doorway_bishop2) == 0
	);
	
	game_save();
	
end

// =================================================================================================
// *** FORTS 1 ELEVATOR CONTROL ***
// =================================================================================================

script dormant f_elevator_1_mover
// Moves the elevator from the end of Forts up into the Pylon Rooftop. 

	sleep_until (volume_test_players (tv_pylon_elevator_start), 1);
	
	// we now resume you to your regularly scheduled effects
	effects_perf_armageddon = 0;

	b_forts1_has_ended = TRUE;
	wake (M30_plyonone_elevator_ride);	
	f_blip_flag (forts1_elevator_flag, "activate");
	device_group_set_immediate (dg_elevator_button_forts1, 1);
	sleep_until (device_get_position(elevator_button01) != 0);
	device_group_set_immediate (dg_elevator_button_forts1, 0);
	f_unblip_flag (forts1_elevator_flag);
	pup_play_show ("pylon1_elevator");

	sleep (30);
	object_create (elevator_door_1);
	volume_teleport_players_not_inside (tv_pylon_elevator_start, elevator01_teleport);
	sleep (90);
	
	//game_save_no_timeout();
	dprint ("Stopping puppet pyelectric_04");
	pup_stop_show(id_for_pylon_pups);
	
	dprint ("Starting puppet pyelectric_05");
	id_for_pylon_pups = pup_play_show(pyelectric_05);
	
	pylon1_elevator->f_animate();
	
end

script dormant f_pylon1_setup
	sleep_until (volume_test_players (tv_pylon1_entrance) or volume_test_players (tv_pylon_1_setup), 1);
	
	thread (beam_1_rumblor());
	
	pup_play_show ("pylon1_mechanism");
	
	thread (pylon1_beam_disintigration (player0));
	thread (pylon1_beam_disintigration (player1));
	thread (pylon1_beam_disintigration (player2));
	thread (pylon1_beam_disintigration (player3));
	
end


	global real r_rumble_pylon = 0;
	global boolean b_pylon_rumble_done = FALSE;

script static void beam_1_rumblor()

	thread(beam_1_rumble_set(player0));
	thread(beam_1_rumble_set(player1));
	thread(beam_1_rumble_set(player2));
	thread(beam_1_rumble_set(player3));
	
end

script static void beam_1_rumble_1()
	player_effect_set_max_rumble_for_player(player0, 0.4, 0.4);
	player_effect_set_max_rumble_for_player(player1, 0.4, 0.4);
	player_effect_set_max_rumble_for_player(player2, 0.4, 0.4);
	player_effect_set_max_rumble_for_player(player3, 0.4, 0.4);
end

script static void beam_1_rumble_2()
	player_effect_set_max_rumble_for_player(player0, 0.5, 0.5);
	player_effect_set_max_rumble_for_player(player1, 0.5, 0.5);
	player_effect_set_max_rumble_for_player(player2, 0.5, 0.5);
	player_effect_set_max_rumble_for_player(player3, 0.5, 0.5);
end

script static void beam_1_rumble_3()
	player_effect_set_max_rumble_for_player(player0, 0.6, 0.6);
	player_effect_set_max_rumble_for_player(player1, 0.6, 0.6);
	player_effect_set_max_rumble_for_player(player2, 0.6, 0.6);
	player_effect_set_max_rumble_for_player(player3, 0.6, 0.6);
end

script static void beam_1_rumble_4()
	player_effect_set_max_rumble_for_player(player0, 1, 1);
	player_effect_set_max_rumble_for_player(player1, 1, 1);
	player_effect_set_max_rumble_for_player(player2, 1, 1);
	player_effect_set_max_rumble_for_player(player3, 1, 1);
end

script static void beam_1_rumble_stop()
	player_effect_set_max_rumble_for_player(player0, 0, 0);
	player_effect_set_max_rumble_for_player(player1, 0, 0);
	player_effect_set_max_rumble_for_player(player2, 0, 0);
	player_effect_set_max_rumble_for_player(player3, 0, 0);
end

script static void beam_1_rumble_set(player p_player)

	sleep_until (volume_test_players (tv_pylon_elevator_rumble), 1);

	repeat
	
	inspect (r_rumble_pylon);
	
		if objects_distance_to_flag (p_player, flag_beam_1) >= 0.1 and objects_distance_to_flag (p_player, flag_beam_1) < 8.0 then
		
			player_effect_set_max_rumble_for_player(p_player, 0.3, 0.3);
			
		elseif objects_distance_to_flag (p_player, flag_beam_1) >= 8.0 and objects_distance_to_flag (p_player, flag_beam_1) < 15.0 then
		
			player_effect_set_max_rumble_for_player(p_player, 0.2, 0.2);
			
		elseif objects_distance_to_flag (p_player, flag_beam_1) >= 15.0 and objects_distance_to_flag (p_player, flag_beam_1) < 40.0 then
		
			player_effect_set_max_rumble_for_player(p_player, 0.1, 0.1);
			
		elseif objects_distance_to_flag (p_player, flag_beam_1) > 40.0 then
		
			player_effect_set_max_rumble_for_player(p_player, 0, 0);
			
		end
		
	until (b_pylon_rumble_done == TRUE, 1);
	
	dprint ("rumblin' stopped");

end

script dormant elevator01_button_dissolve()
	dprint ("elevator button dissolving");
	object_dissolve_from_marker(elevator_button01, "phase_out", "button_marker");
end

script static void pylon1_fx_shutoff()
	effect_new_at_ai_point (environments\solo\m10_crash\fx\flash_white.effect, ps_forts1_tempfx.p21);
	effect_new_on_object_marker (environments\solo\m30_cryptum\fx\electricity\pylon_burst_shutoff.effect, pylon1_beam_core, "fx_18_pylon_off_burst");
end

script dormant pylon1_reclaimer_appear()

	sleep (30);
	dprint ("reclaimer symbol appearing");
	//object_dissolve_from_marker(forts1_reclaimer, "phase_from_ground", "reclaimer_pivot");
	
end

global boolean b_beam_1_active = TRUE;

script static void pylon1_beam_disintigration (player p_player)
	
	repeat
	
	sleep_until (volume_test_object (tv_pylon1beam, p_player), 1);
	
	if (b_beam_1_active == TRUE) then
	
		repeat
	
			damage_object_effect (objects\weapons\rifle\storm_spread_gun\projectiles\damage_effects\storm_spread_gun_shard_super_detonation.damage_effect, p_player);
			add_recycling_volume (tv_pylon1beam, 0, 1);
			damage_object_effect (objects\weapons\rifle\storm_spread_gun\projectiles\damage_effects\storm_spread_gun_shard_super_detonation.damage_effect, p_player);
		
		until (object_get_health (p_player) <= 0 or b_beam_1_active == FALSE, 1);
		
	end
	
	until (b_beam_1_active == FALSE);
	
end

// =================================================================================================
// =================================================================================================
// *** FORTS 1 BLIP CONTROL ***
// =================================================================================================
// =================================================================================================
// Showing the player where to go next. 

// BASIC EVENT CONTROL. Event blips after the Shield Generator Puzzle has been completed.

script dormant f_forts1_mainfort_blip()
	// After the player has unlocked the path by deactivating enough generators, we blip the player to go to the top of the Fort. 
	sleep_until ((forts_1_generator_count == 3), 1);
	f_blip_flag (flag_waypoint_ramp, "default");
	wake (forts1_pylon_blip);
	wake (m30_objective_3); 
end

script dormant forts1_pylon_blip()
	// The bridge/ elevator blip remains on, until the player reaches the bridge.
	sleep_until (volume_test_players (tv_mainfort_entrance), 1);
	f_unblip_flag (flag_waypoint_ramp);
end

// GENERATOR PROXIMITY CONTROL. Having so many blips on screen can be detrimental to exploration. This keeps them off the screen until the player gets close to a generator.

script dormant f_generator_blip_prox_01
	// Checks to see if player is close to Fort, using a trigger volume, then activates a blip to remind the player what to do. 
	sleep_until (volume_test_players (tv_core_prox_01), 1)
	and (object_get_health (generator_01_core) != 0);
	
	f_blip_object (generator_01_core, "destroy");


end

script dormant f_generator_blip_prox_02
	sleep_until (volume_test_players (tv_core_prox_02), 1)
	and (object_get_health (generator_02_core) != 0);
	
	f_blip_object (generator_02_core, "destroy");

end

script dormant f_generator_blip_prox_03
	sleep_until (volume_test_players (tv_core_prox_03), 1)
	and (object_get_health (generator_03_core) != 0);
		
	f_blip_object (generator_03_core, "destroy");

end

// GENERATOR ELIMINATION CONTROL. Having so many blips on screen can be detrimental to exploration. This reminds the player of remaining generator locations, after destroying one.  

// =================================================================================================
// =================================================================================================
// *** FORTS 1 COMBAT CONTROL ***
// =================================================================================================
// =================================================================================================

script dormant f_forts_initial_spawn()
	sleep_until (volume_test_players (tv_save_fort_entry_top), 1);
	
	sleep (5);
	
	//patrolling pawns spawn
	ai_place (sq_loose_pawns_1);
	ai_place (sq_loose_pawns_2);
	ai_place (sq_loose_pawns_4);
	ai_place (sq_south_pawns_1);
	ai_place (sq_west_pawns_1);
	ai_place (sq_east_pawns_1);
	ai_place (sq_south_bishop_1);
	

	
	unit_doesnt_drop_items (ai_actors (sq_south_bishop_1));
	
	dprint ("initial forts spawn triggered");

	sleep (30);

	ai_place (sq_south_knight_1);
	ai_allow_resurrect(sq_south_knight_1, FALSE);
	dprint ("knight should be spawned");
	
	sleep_until (volume_test_players (tv_player_in_space), 1);
	
	thread (f_mus_m30_e04_start());
	
	
	
end

// =================================================================================================
// *** LOOSE PAWNS ***
// =================================================================================================

script static void f_loose_pawn1_spawn()

	effect_new_at_ai_point (objects\characters\storm_pawn\fx\pawn_phase_in.effect, ps_loose_pawns_fx.p0);
	effect_new_at_ai_point (objects\characters\storm_pawn\fx\pawn_phase_in.effect, ps_loose_pawns_fx.p1);
	effect_new_at_ai_point (objects\characters\storm_pawn\fx\pawn_phase_in.effect, ps_loose_pawns_fx.p2);
	effect_new_at_ai_point (objects\characters\storm_pawn\fx\pawn_phase_in.effect, ps_loose_pawns_fx.p3);
	effect_new_at_ai_point (objects\characters\storm_pawn\fx\pawn_phase_in.effect, ps_loose_pawns_fx.p4);

	ai_place (sq_loose_pawns_1);

end

script command_script cs_bishop_spawner_1()
	
	cs_fly_to (ps_bishop_spawner_1.p0);
	cs_pause (1.5);
	thread (f_loose_pawn1_spawn());
	cs_pause (1.0);
	cs_fly_to (ps_bishop_spawner_1.p1);
	cs_fly_to (ps_bishop_spawner_1.p2);
	cs_fly_to (ps_bishop_spawner_1.p3);
	ai_erase (sq_bishop_spawner_1);
		
end 

script dormant f_forts_rearpawns_spawn()
	sleep_until (volume_test_players (tv_east_progress) or (volume_test_players (tv_west_progress)), 1);
	
	print ("spawning loose_pawns_3");
	
	ai_place (sq_loose_pawns_3);
	
end

// =================================================================================================
// *** SOUTH FORT ***
// =================================================================================================

script command_script cs_bishop_spawn_southfort()
	print("south fort bishop sleeping");
  ai_enter_limbo (ai_current_actor);
  CreateDynamicTask(TT_SPAWN, FT_BIRTHER, ai_get_object(ai_current_actor), OnCompleteProtoSpawn_southfort, 0);
  cs_pause (1.0);
end

script static void OnCompleteProtoSpawn_southfort()

	sleep (5);
	cs_run_command_script (sq_south_bishop_1, cs_south_bishop_pawn_spawn);
	
end

script command_script cs_south_bishop_pawn_spawn()

	south_fort_bishop_spawned = TRUE;
	cs_pause (0.5);

end

script static void f_south_fort_pawn_spawn()

	effect_new_at_ai_point (objects\characters\storm_pawn\fx\pawn_phase_in.effect, ps_south_fort_fx.p0);
	effect_new_at_ai_point (objects\characters\storm_pawn\fx\pawn_phase_in.effect, ps_south_fort_fx.p1);
	effect_new_at_ai_point (objects\characters\storm_pawn\fx\pawn_phase_in.effect, ps_south_fort_fx.p2);
	effect_new_at_ai_point (objects\characters\storm_pawn\fx\pawn_phase_in.effect, ps_south_fort_fx.p3);
	effect_new_at_ai_point (objects\characters\storm_pawn\fx\pawn_phase_in.effect, ps_south_fort_fx.p4);
	
	ai_place (sq_south_pawns_1);

end

// =================================================================================================
// *** WEST FORT ***
// =================================================================================================

script command_script cs_bishop_spawn_westfort()
	print("west fort bishop sleeping");
  ai_enter_limbo (ai_current_actor);
  CreateDynamicTask(TT_SPAWN, FT_BIRTHER, ai_get_object(ai_current_actor), OnCompleteProtoSpawn_westfort, 0);
  cs_pause (1.0);
end

script static void OnCompleteProtoSpawn_westfort()

	sleep (5);
	
	cs_run_command_script (sq_west_bishop_1, cs_west_bishop_pawn_spawn);
	
end

script dormant f_forts_westfort_spawn()
	sleep_until (volume_test_players (tv_west_progress) or (volume_test_players (tv_west_progress2)),1 );
	
	dprint ("west forts spawn triggered");
	
	ai_place (sq_west_knight_1);
	ai_allow_resurrect(sq_west_knight_1, FALSE);
	ai_place (sq_west_bishop_1);
	
	sleep_until (west_fort_bishop_spawned == TRUE);
	
end

script static void f_west_fort_pawn_spawn()

	effect_new_at_ai_point (objects\characters\storm_pawn\fx\pawn_phase_in.effect, ps_forts1_tempfx.p16);
	effect_new_at_ai_point (objects\characters\storm_pawn\fx\pawn_phase_in.effect, ps_forts1_tempfx.p17);
	effect_new_at_ai_point (objects\characters\storm_pawn\fx\pawn_phase_in.effect, ps_forts1_tempfx.p18);
	effect_new_at_ai_point (objects\characters\storm_pawn\fx\pawn_phase_in.effect, ps_forts1_tempfx.p19);
	effect_new_at_ai_point (objects\characters\storm_pawn\fx\pawn_phase_in.effect, ps_forts1_tempfx.p20);
	
	ai_place (sq_west_pawns_1);

end

script command_script cs_west_bishop_pawn_spawn()

	west_fort_bishop_spawned = TRUE;
	cs_pause (0.5);

end


// =================================================================================================
// *** EAST FORT ***
// =================================================================================================

script command_script cs_bishop_spawn_eastfort()
	print("east fort bishop sleeping");
  ai_enter_limbo (ai_current_actor);
  CreateDynamicTask(TT_SPAWN, FT_BIRTHER, ai_get_object(ai_current_actor), OnCompleteProtoSpawn_eastfort, 0);
  cs_pause (1.0);
end

script static void OnCompleteProtoSpawn_eastfort()

	sleep (5);
	cs_run_command_script (sq_east_bishop_1, cs_east_bishop_pawn_spawn);
	
end

script command_script cs_east_bishop_pawn_spawn()

	east_fort_bishop_spawned = TRUE;
	cs_pause (0.5);

end

script dormant f_forts_eastfort_spawn()
	sleep_until (volume_test_players (tv_east_progress) or (volume_test_players (tv_east_progress2)),1 );
	
	dprint ("east forts spawn triggered");
	
	ai_place (sq_east_knight_1);
	ai_allow_resurrect(sq_east_knight_1, FALSE);
	ai_place (sq_east_bishop_1);

	sleep_until (east_fort_bishop_spawned == TRUE);

end

script static void f_east_fort_pawn_spawn()

	effect_new_at_ai_point (objects\characters\storm_pawn\fx\pawn_phase_in.effect, ps_forts1_tempfx.p6);
	effect_new_at_ai_point (objects\characters\storm_pawn\fx\pawn_phase_in.effect, ps_forts1_tempfx.p7);
	effect_new_at_ai_point (objects\characters\storm_pawn\fx\pawn_phase_in.effect, ps_forts1_tempfx.p8);
	effect_new_at_ai_point (objects\characters\storm_pawn\fx\pawn_phase_in.effect, ps_forts1_tempfx.p9);
	effect_new_at_ai_point (objects\characters\storm_pawn\fx\pawn_phase_in.effect, ps_forts1_tempfx.p10);
	
	ai_place (sq_east_pawns_1);

end

// =================================================================================================
// *** DOORWAY FIGHT ***
// =================================================================================================

script dormant final_forts1_doorway_fight()
	sleep_until ((b_all_cores_destroyed == TRUE) and (volume_test_players (tv_doorway_fight_turf)), 1);
	
	dprint ("spawning doorway encounter");
	
	sleep (30);
	
	ai_place (sq_doorway_bishop1);
	ai_place (sq_doorway_bishop2);
	ai_place (sq_doorway_knight1);
	ai_place (sq_doorway_knight2);
	ai_place (marty_the_battlewagon);
	
	wake (rear_fight_defeated_save);
	
	sleep (5);

	sleep_until (ai_living_count (marty_the_battlewagon) == 0 and volume_test_players (m30_fort1_infinity), 1);
	
	thread(m30_forts1_ifinity()); 
	
end

script command_script cs_bishop_spawn_doorway1()
	print("doorway bishop 1 sleeping");
  ai_enter_limbo (ai_current_actor);
  CreateDynamicTask(TT_SPAWN, FT_BIRTHER, ai_get_object(ai_current_actor), OnCompleteProtoSpawn_doorway1, 0);
  cs_pause (1.0);
end

script static void OnCompleteProtoSpawn_doorway1()

	sleep (5);
	doorway_bishop1_spawned = TRUE;
	
end

script command_script cs_bishop_spawn_doorway2()
	print("doorway bishop 2 sleeping");
  ai_enter_limbo (ai_current_actor);
  CreateDynamicTask(TT_SPAWN, FT_BIRTHER, ai_get_object(ai_current_actor), OnCompleteProtoSpawn_doorway2, 0);
  cs_pause (1.0);
end

script static void OnCompleteProtoSpawn_doorway2()

	sleep (5);
	doorway_bishop2_spawned = TRUE;
	
end

script command_script cs_doorway_bishop1_pawn_spawn()

	cs_fly_to (ps_bishop_spawner_1.p7);
	doorway_bishop1_spawned = TRUE;
	cs_pause (0.5);

end

script command_script cs_doorway_bishop2_pawn_spawn()

	cs_fly_to (ps_bishop_spawner_1.p8);
	doorway_bishop2_spawned = TRUE;
	cs_pause (0.5);

end

// *** Knight Spawns Bishop *** ====================================================================
// Place as Placement Script into each appropriate Bishop Spawn Point. 

script command_script cs_bishop_south_spawn
	print("bishop sleeping");
	ai_enter_limbo(sq_south_bishop_1);
	CreateDynamicTask(TT_SPAWN, FT_BIRTHER, ai_get_object(sq_south_bishop_1), OnCompleteProtoSpawn, 0);
end

script command_script cs_bishop_west_spawn
	print("bishop sleeping");
	ai_enter_limbo(sq_west_bishop_1);
	CreateDynamicTask(TT_SPAWN, FT_BIRTHER, ai_get_object(sq_west_bishop_1), OnCompleteProtoSpawn, 0);
end

script command_script cs_bishop_east_spawn
	print("bishop sleeping");
	ai_enter_limbo(sq_east_bishop_1);
	CreateDynamicTask(TT_SPAWN, FT_BIRTHER, ai_get_object(sq_east_bishop_1), OnCompleteProtoSpawn, 0);
end

// =================================================================================================
// =================================================================================================
// *** FORTS 1 CORES GATING PUZZLE ***
// =================================================================================================
// =================================================================================================

// This is Forts_1's gating puzzle. Deactivate 3 generators, which deactivates 3 shields, which lets the player enter the Pylon.  

// *** Setup *** ===================================================================================

script static void f_generator_startup()
	//Turns on shields as player enters space, and syncs up with Cortana dialogue explaining what's going on. A visual aid to draw attention to the shield gating. 

	sleep (10);
	object_create (shield_01);
	SetObjectRealVariable(shield_01, VAR_SYMBOL_COLOR, 1.0);
	//object_create (forts1_symbol_1);
	//SetObjectRealVariable(forts1_symbol_1, VAR_SYMBOL_COLOR, 1.0);
	object_create (fort_lights_south);
	SetObjectRealVariable(fort_lights_south, VAR_SYMBOL_COLOR, 1.0);
	sleep (10); 
	object_create (shield_02);
	SetObjectRealVariable(shield_02, VAR_SYMBOL_COLOR, 1.0);
	//object_create (forts1_symbol_2);
	//SetObjectRealVariable(forts1_symbol_2, VAR_SYMBOL_COLOR, 1.0);
	object_create (fort_lights_west);
	SetObjectRealVariable(fort_lights_west, VAR_SYMBOL_COLOR, 1.0);
	sleep (10); 
	object_create (shield_03);
	SetObjectRealVariable(shield_03, VAR_SYMBOL_COLOR, 1.0);
	//object_create (forts1_symbol_3);
	//SetObjectRealVariable(forts1_symbol_3, VAR_SYMBOL_COLOR, 1.0);
	object_create (fort_lights_east);
	SetObjectRealVariable(fort_lights_east, VAR_SYMBOL_COLOR, 1.0);
	
	sleep (30 * 1);
	dprint ("CORTANA: Those generators seem to be powering the shields...");

	b_symbols_created = TRUE;

	forts_1_sequencer = 1;
	
	sleep (30 * 10);
	
end


script static void f_stop_powercore_machine(device d_machine)
	sleep_until (f_check_device_position (d_machine, 2, 100), 1);
	//sleep (5);
	//sleep_until (f_check_device_position (d_machine, 2, 100), 1);
	device_set_power (d_machine, 0);
	sleep_until(device_get_power (d_machine) == 0, 1);
	DEF_CURRENT_POSITION = device_get_position (d_machine);
	device_set_position (d_machine, DEF_CURRENT_POSITION);
end

script static boolean f_check_device_position(device d_machine, short S_FRAME_CHECK, short S_TOTAL_FRAMES) 

  device_get_position(d_machine) <= (S_FRAME_CHECK / S_TOTAL_FRAMES);
  
end



// *** Generator 1 - SOUTH *** =============================================================================

script static void f_generator_switch_01()
	//Sets blip on Generator 1 until player deactivates, then triggers shield deactivation. 

	//Waits until core is destroyed...
	sleep_until (object_get_health (generator_01_core) <= 0, 1); 
	
	effect_new_at_ai_point (environments\solo\m10_crash\fx\flash_white.effect, ps_forts1_tempfx.p3);
	dprint ("core_01 destroyed");
	object_destroy (generator_01_core);
	f_unblip_object (generator_01_core);
	dprint ("core_01 destroyed part 2");
	//object_destroy (forts1_symbol_1);

	object_destroy (fort_lights_south);
	//object_set_shield (player0, 1);
	sleep (5);
	game_save_no_timeout();
	f_stop_powercore_machine(south_device_1);
	thread (south_machine_retract());
	//Now go do stuff. 
	print ("Shield 1 Deactivated");
	//Bumps up the Generator Count, so we can track how many generators are down. Important because player can do in any order.  
	forts_1_generator_count = (forts_1_generator_count + 1);
	print ("Generator Count is now ...");
	inspect (forts_1_generator_count); // prints value of variable. 
	
	//Tells the level this particular generator is dead. 
	forts_1_generator_south_dead = 1;
	b_south_generator_dead = TRUE;
	print ("South Generator dead!");

	sound_impulse_start ('sound\weapons\plasma_grenade\plasma_expl.sound', NONE, 1);
	print ("sound played");

	thread (f_orderly_shield_deactivation());

end

script static void south_machine_retract()
	south_device_2->f_animate();
end



// *** Generator 2 - WEST *** =============================================================================

script static void f_generator_switch_02()
	//Sets blip on Generator 2 until player deactivates, then triggers shield deactivation. 
	
	sleep_until (object_get_health (generator_02_core) <= 0, 1); 
	effect_new_at_ai_point (environments\solo\m10_crash\fx\flash_white.effect, ps_forts1_tempfx.p4);
	object_destroy (generator_02_core);
	f_unblip_object (generator_02_core);
	//object_destroy (forts1_symbol_2);

	object_destroy (fort_lights_west);
	//game_save_no_timeout();
	//object_set_shield (player0, 1);
	sleep (5);
	game_save_no_timeout();
	f_stop_powercore_machine(west_device_1);
	thread (west_machine_retract());

	print ("Shield 2 Deactivated");
	forts_1_generator_count = (forts_1_generator_count + 1);
	print ("Generator Count is now ...");
	inspect (forts_1_generator_count); 
	
	//Tells the level this particular generator is dead. 
	forts_1_generator_west_dead = 1;
	b_west_generator_dead = TRUE;
	print ("West Generator dead!");
	
	thread (f_orderly_shield_deactivation());

end

script static void west_machine_retract()
	west_device_2->f_animate();
end

// *** Generator 3 - EAST *** =============================================================================

script static void f_generator_switch_03()
	//Sets blip on Generator 3 until player deactivates, then triggers shield deactivation. 
	
	sleep_until (object_get_health (generator_03_core) <= 0, 1); 
	effect_new_at_ai_point (environments\solo\m10_crash\fx\flash_white.effect, ps_forts1_tempfx.p5);
	object_destroy (generator_03_core);
	f_unblip_object (generator_03_core);
	//object_destroy (forts1_symbol_3);

	object_destroy (fort_lights_east);
	//object_set_shield (player0, 1);
	sleep (5);
	game_save_no_timeout();
	f_stop_powercore_machine(east_device_1);
	thread (east_machine_retract());

	print ("Shield 3 Deactivated");
	forts_1_generator_count = (forts_1_generator_count + 1);
	print ("Generator Count is now ...");
	inspect (forts_1_generator_count); 
	
	//Tells the level this particular generator is dead. 
	forts_1_generator_east_dead = 1;
	b_east_generator_dead = TRUE;
	print ("East Generator dead!");
	
	thread (f_orderly_shield_deactivation());
	
end

script static void east_machine_retract()
	east_device_2->f_animate();
end


// *** All Generators Down *** =====================================================================


script static void f_orderly_shield_deactivation()
	//Always deactivates bridge shields from front to back, now matter the generator order. 
	
	if (forts_1_generator_count == 1) then 
		print ("CORTANA: Look Chief! That did it! One down!");
		object_destroy (shield_01);
		music_forts1_destroy1();
		wake (M30_plyonone_core_one);	
	end

	if (forts_1_generator_count == 2) then 
		print ("CORTANA: One more to go, Chief!");
		object_destroy (shield_01);
		object_destroy (shield_02);
		music_forts1_destroy2();
		wake (M30_plyonone_core_two);
	end

	if (forts_1_generator_count == 3) then 
		// Last one! Time to trigger final shields down, bridge up sequence. 
		object_destroy (shield_01);
		object_destroy (shield_02);
		object_destroy (shield_03);
		music_forts1_destroy3();
		forts_1_generator_count = 4; 
		b_all_cores_destroyed = TRUE;
		wake (M30_plyonone_core_three);
	end

end


script dormant f_forts1_shields_deactivate
	//All 3 Generators Deactivated. All Shields Down. Bridge Activated. 

	//	Generator counter check. 
	sleep_until ((forts_1_generator_count == 4), 1);
	sleep (30);
	print ("CORTANA: That should do it! Let's get up into the Pylon!");
	// Turn on Blip. 
	wake (f_forts1_mainfort_blip);
	
	//	Get rid of shields, switch off facade icon. 
	sleep (30);

	// Turn on triggers for hardlight bridge activation. 
	wake (f_forts1_bridge_activate);
	print ("*** Bridge Activated ***");
	
end


// *** Hardlight Bridge Activation *** =============================================================
// After the shields are deactivated, hardlight bridges activate on proximity. 

script dormant f_forts1_bridge_activate
// Gets woken up in f_forts1_shields_deactivate, after all shields down. 
	
	sleep_until (volume_test_players (tv_pylon1_entrance), 1);

	thread (f_mus_m30_e04_finish());
	f_unblip_flag (flag_waypoint_ramp);

end

// *** Synced Color Changing *** ==================================================================

script static void f_synced_color_changing (object core_ID, object shield_ID, object lights_ID)
	repeat
		
		sleep (1);
		
		SetObjectRealVariable(shield_ID, VAR_OBJ_LOCAL_A, (object_get_health(core_ID)));
		SetObjectRealVariable(lights_ID, VAR_OBJ_LOCAL_A, (object_get_health(core_ID)));
		
	until (object_get_health(core_ID) <= 0);
	

end
/*
script static void f_color_change_go()
	sleep_until (b_symbols_created == TRUE);
		thread (f_synced_color_changing (generator_01_core, shield_01, fort_lights_south));
		thread (f_synced_color_changing (generator_02_core, shield_02, fort_lights_west));
		thread (f_synced_color_changing (generator_03_core, shield_03, fort_lights_east));
end
*/

// --- End m30_cryptum_forts_1.hsc ---

// --- Begin m30_cryptum_forts_2.hsc ---
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343
//
// 	Mission: 					m30_cryptum
//	Subsection: 			Forts 2
//										
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343

// =================================================================================================
// =================================================================================================
// *** GLOBALS ***
// =================================================================================================
// =================================================================================================

global short aa_fire2 = 5;
global short advance_obj = 0;
global boolean b_forts2_symbols_created = FALSE;
global boolean b_forts2_all_cores_destroyed = FALSE;
global boolean b_forts2_west_generator_dead = FALSE;
global boolean b_forts2_east_generator_dead = FALSE;
global boolean b_forts2_north_generator_dead = FALSE;
global short forts_2_generator_count = 0;
global short forts_2_sequencer = 0;
global boolean b_forts2_has_ended = FALSE;
global boolean b_elevator2_button_hit = FALSE;


// =================================================================================================
// =================================================================================================
// *** FORTS 2 ***
// =================================================================================================
// =================================================================================================

script dormant m30_cryptum_forts_2()	
	sleep_until (volume_test_players (tv_insertion_wake_forts2), 1);
	
	pup_play_show(pyelectric2_02);
	thread(set_cryptum_shield_stage(3, 2, FALSE));
	dprint  ("::: forts2 start :::");
	object_destroy (cruiser_1);
	//object_destroy (pylon_electricity_near_2_1);
	
	thread (forts2_core_creation());
	
	wake (f_elevator_2_mover);

	wake (f_forts2_north_prox_blip);
	wake (f_forts2_east_prox_blip);
	wake (f_forts2_west_prox_blip);
	wake (forts2_initial_spawn);
	wake (f_pylon2_setup);
	
	wake (M30_pylontwo_bridgetoelevator); //narrative scripts
	wake (M30_pylontwo_reveal); //narrative scripts
	wake (m30_pylontwo_top_enter); //narrative scripts
	wake (f_forts2_repeating_gc);
	wake (forts2_core_obj_go);
	data_mine_set_mission_segment ("m30_forts_2");
	
	effects_distortion_enabled = FALSE;
	
	thread (f_mus_m30_e07_start());
//	thread (forts2_looping_save_check());
	wake (forts2_streaming_warp);

end

script dormant forts2_core_obj_go()
	sleep_until (volume_test_players (tv_core_destruction), 1);
	
	wake (m30_objective_5);
	
end

script dormant forts2_streaming_warp
	sleep_until (volume_test_players (tv_forts2_stream), 1);
	
	door_hallway_3_out->close_fast();
	
	sleep_until (device_get_position (door_hallway_3_out) <= 0, 1);
	
	volume_teleport_players_inside_with_vehicles (tv_forts2_hallway_warp, flag_forts2_teleport);
	
	sleep (30);
	
	zone_set_trigger_volume_enable ("zone_set:2_elevator:*", TRUE);
	
end

script static void forts2_core_creation()
	sleep_until (volume_test_players (tv_core_destruction), 1);

	object_create (forts2_core1);
	dprint ("forts2_core1 created");

	sleep (2);
	object_create (forts2_core2);
	dprint ("forts2_core2 created");
	
	sleep (2);
	object_create (forts2_core3);
	dprint ("forts2_core3 created");
	
	sleep (5);
	
	thread (f_forts2_generator_startup());
	
	sleep (30);
	
	thread (f_forts2_north_generator_shutdown());
	thread (f_forts2_west_generator_shutdown());
	thread (f_forts2_east_generator_shutdown());
	
	wake (forts_2_ambient_fires);
	
end

// ====================================================================
// GARBAGE COLLECTION =================================================
// ====================================================================

script dormant f_forts2_repeating_gc()
	sleep_until (volume_test_players (tv_forts2_garbage), 1);
		
		repeat
		
			sleep( 30 * 30 );
			dprint( "Garbage collecting..." );
			add_recycling_volume_by_type (tv_forts2_garbage, 1, 10, 1 + 2 + 1024);
		
		until (not volume_test_players (tv_forts2_garbage), 1);	

end

// ====================================================================
// SAVES ==============================================================
// ====================================================================

script static void forts2_looping_save_check()
	repeat
		dprint ("trying to save the game");
		game_save();
		sleep (30 * 60);
	until (volume_test_players (tv_pylon_2_elevator_start), 1) or (b_forts2_has_ended == TRUE);
end

script dormant forts2_save()
	sleep_until (volume_test_players (tv_forts2_save), 1);
	thread (f_mus_m30_e06_start());
	game_save_no_timeout();
end

// ====================================================================
// FIRE FX ============================================================
// ====================================================================

script dormant forts_2_ambient_fires

	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\fire\covenant_fire_cheap_med.effect, ps_crashed_drop_pods.p2);
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\fire\covenant_fire_cheap_med.effect, ps_crashed_drop_pods.p3);
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\fire\covenant_fire_cheap_med.effect, ps_crashed_drop_pods.p4);
	effect_new_at_ai_point (environments\solo\m30_cryptum\fx\fire\covenant_fire_cheap_med.effect, ps_crashed_drop_pods.p5);
	
end

// =================================================================================================
// *** GENERATOR SETUP ***
// =================================================================================================

script static void f_forts2_generator_startup()

	sleep (10);
	object_create (forts2_shield1);
	SetObjectRealVariable(shield_01, VAR_SYMBOL_COLOR, 1.0);
	object_create (fort2_lights_north);
	SetObjectRealVariable(fort2_lights_north, VAR_SYMBOL_COLOR, 1.0);

	sleep (10); 
	object_create (forts2_shield2);
	SetObjectRealVariable(shield_02, VAR_SYMBOL_COLOR, 1.0);
	object_create (fort2_lights_west);
	SetObjectRealVariable(fort2_lights_west, VAR_SYMBOL_COLOR, 1.0);

	sleep (10); 
	object_create (forts2_shield3);
	SetObjectRealVariable(shield_03, VAR_SYMBOL_COLOR, 1.0);
	object_create (fort2_lights_east);
	SetObjectRealVariable(fort2_lights_east, VAR_SYMBOL_COLOR, 1.0);
	
	sleep (30 * 1);

	b_symbols_created = TRUE;
	
	forts_2_sequencer = 1;
	
end

script static void forts2_orderly_shield_deactivation()
	//Always deactivates bridge shields from front to back, now matter the generator order. 
	
	if (forts_2_generator_count == 1) then 
		object_destroy (forts2_shield1);
		music_forts2_destroy1();
		wake (M30_pylontwo_core_one);
	end

	if (forts_2_generator_count == 2) then 
		object_destroy (forts2_shield1);
		object_destroy (forts2_shield2);
		music_forts2_destroy2();
		wake (M30_pylontwo_core_two);
	end

	if (forts_2_generator_count == 3) then 
		object_destroy (forts2_shield1);
		object_destroy (forts2_shield2);
		object_destroy (forts2_shield3);
		music_forts2_destroy3();
		
		thread (destroy_all_banshees (player0));
		thread (destroy_all_banshees (player1));
		thread (destroy_all_banshees (player2));
		thread (destroy_all_banshees (player3));
		
		forts_2_generator_count = 4; 
		wake (M30_pylontwo_core_three);
		wake (f_bcs_forts2_mainfort_blip);
	end

end

script dormant f_bcs_forts2_mainfort_blip()
	// After the player has unlocked the path by deactivating enough generators, we blip the player to go to the top of the Fort.
	navpoint_set_next_improved(TRUE);
	f_blip_flag (forts2_waypoint, "default");

	sleep_until (volume_test_players (tv_forts2_waypoint_check), 1);
	f_unblip_flag (forts2_waypoint);
end

// =================================================================================================
// *** NORTH GENERATOR - #1 ***
// =================================================================================================

script static void f_forts2_north_generator_shutdown()

	//Waits until core is destroyed...
	sleep_until (object_get_health (forts2_core1) <= 0, 1); 
	
	effect_new_at_ai_point (environments\solo\m10_crash\fx\flash_white.effect, ps_forts2_tempfx.p0);
	sound_impulse_start ('sound\weapons\plasma_grenade\plasma_expl.sound', NONE, 1);
	object_destroy (forts2_core1);
	f_unblip_object (forts2_core1);
	//object_destroy (forts2_symbol1);
	
	object_destroy (fort2_lights_north);

	//object_set_shield (player0, 1);
	sleep (5);
	game_save_no_timeout();
	f_stop_powercore_machine(north_machine_1);
	thread (forts2_north_machine_retract());

	dprint ("Forts2 - North Fort Deactivated");
	
	//Bumps up the Generator Count, so we can track how many generators are down. Important because player can do in any order.  
	forts_2_generator_count = (forts_2_generator_count + 1);
	print ("Generator Count is now ...");
	inspect (forts_2_generator_count);
	
	//Tells the level this particular generator is dead. 
	b_forts2_north_generator_dead = TRUE;

	thread (forts2_orderly_shield_deactivation());
end

script static void forts2_north_machine_retract()
	north_machine_2->f_animate();
end

script dormant f_forts2_north_prox_blip
	// Checks to see if player is close to Fort, using a trigger volume, then activates a blip to remind the player what to do. 
	sleep_until (volume_test_players (tv_forts2_north_prox), 1) and (object_get_health (forts2_core1) != 0);
	f_blip_object (forts2_core1, "destroy");
end

// =================================================================================================
// *** WEST GENERATOR - #2 ***
// =================================================================================================

script static void f_forts2_west_generator_shutdown()

	//Waits until core is destroyed...
	sleep_until (object_get_health (forts2_core2) <= 0, 1); 
	
	effect_new_at_ai_point (environments\solo\m10_crash\fx\flash_white.effect, ps_forts2_tempfx.p1);
	sound_impulse_start ('sound\weapons\plasma_grenade\plasma_expl.sound', NONE, 1);

	f_unblip_object (forts2_core2);
	//object_destroy (forts2_symbol2);
	//object_destroy (forts2_shield2);
	object_destroy (fort2_lights_west);
	//game_save_no_timeout();
	//object_set_shield (player0, 1);
	sleep (5);
	game_save_no_timeout();
	f_stop_powercore_machine(west_machine_1);
	thread (forts2_west_machine_retract());

	dprint ("Forts2 - West Fort Deactivated");
	
	//Bumps up the Generator Count, so we can track how many generators are down. Important because player can do in any order.  
	forts_2_generator_count = (forts_2_generator_count + 1);
	print ("Generator Count is now ...");
	inspect (forts_2_generator_count);
	
	//Tells the level this particular generator is dead. 
	b_forts2_west_generator_dead = TRUE;

	thread (forts2_orderly_shield_deactivation());
end

script static void forts2_west_machine_retract()
	west_machine_2->f_animate();
end

script dormant f_forts2_west_prox_blip
	// Checks to see if player is close to Fort, using a trigger volume, then activates a blip to remind the player what to do. 
	sleep_until (volume_test_players (tv_forts2_west_prox), 1) and (object_get_health (forts2_core2) != 0);
	f_blip_object (forts2_core2, "destroy");
end

// =================================================================================================
// *** EAST GENERATOR - #3 ***
// =================================================================================================

script static void f_forts2_east_generator_shutdown()

	//Waits until core is destroyed...
	sleep_until (object_get_health (forts2_core3) <= 0, 1); 
	
	effect_new_at_ai_point (environments\solo\m10_crash\fx\flash_white.effect, ps_forts2_tempfx.p2);
	sound_impulse_start ('sound\weapons\plasma_grenade\plasma_expl.sound', NONE, 1);

	f_unblip_object (forts2_core3);
	//object_destroy (forts2_symbol3);
	//object_destroy (forts2_shield3);
	object_destroy (fort2_lights_east);
	//game_save_no_timeout();
	//object_set_shield (player0, 1);
	sleep (5);
	game_save_no_timeout();
	f_stop_powercore_machine(east_machine_1);	
	sleep (5);
	thread (forts2_east_machine_retract());

	dprint ("Forts2 - East Fort Deactivated");
	
	//Bumps up the Generator Count, so we can track how many generators are down.  
	forts_2_generator_count = (forts_2_generator_count + 1);
	print ("Generator Count is now ...");
	inspect (forts_2_generator_count);
	
	//Tells the level this particular generator is dead. 
	b_forts2_east_generator_dead = TRUE;

	thread (forts2_orderly_shield_deactivation());
end

script static void forts2_east_machine_retract()
	dprint ("east machine retracting");
	east_machine_2->f_animate();
end

script dormant f_forts2_east_prox_blip
	// Checks to see if player is close to Fort, using a trigger volume, then activates a blip to remind the player what to do. 
	sleep_until (volume_test_players (tv_forts2_east_prox), 1) and (object_get_health (forts2_core3) != 0);
	f_blip_object (forts2_core3, "destroy");
end

//==================================================================================================
// COMBAT SCRIPTING ================================================================================
//==================================================================================================

script dormant forts2_initial_spawn()

	sleep_until (volume_test_players (tv_forts_2_start), 1);

	object_hide (drop_pod_prop_2, FALSE);
	object_wake_physics (drop_pod_prop_2);
	//unit_open (drop_pod_prop_2);
	object_hide (drop_pod_prop_3, FALSE);
	object_wake_physics (drop_pod_prop_3);
	//unit_open (drop_pod_prop_3);
	object_hide (drop_pod_prop_4, FALSE);
	object_wake_physics (drop_pod_prop_4);
	//unit_open (drop_pod_prop_4);
	object_hide (drop_pod_prop_5, FALSE);
	object_wake_physics (drop_pod_prop_5);
	//unit_open (drop_pod_prop_5);
	object_hide (drop_pod_prop_6, FALSE);
	object_wake_physics (drop_pod_prop_6);
	//unit_open (drop_pod_prop_6);

	unit_open (forts2_elite_banshee);
	unit_open (forts2_banshee_2);

	object_wake_physics (forts2_grunt_1);
	object_wake_physics (forts2_grunt_2);
	object_wake_physics (forts2_grunt_3);

	sleep (10);
	
	ai_place (sq_forts2_elite_banshee);
	
	ai_place (sq_forts2_banshees_1);
	ai_place (sq_forts2_banshees_2);
	//wake (m30_pylontwo_banshees); 
	
	ai_place (sq_forts2_ghost_1);
	ai_place (sq_forts2_ghost_2);
	
	ai_place (sq_forts2_mainfort_elite1);
	ai_place (sq_forts2_mainfort_elite2);
	
	thread (forts2_east_fort_spawn());
	thread (forts2_west_fort_spawn());
	thread (forts2_north_fort_spawn());
	thread (forts2_loose_grunts_spawn());
	thread (forts2_device_machine_attaching());
	
end

script static void forts2_device_machine_attaching()
	objects_attach (east_machine_2, locator, east_machine_1, locator);
	objects_attach (west_machine_2, locator, west_machine_1, locator);
	objects_attach (north_machine_2, locator, north_machine_1, locator);
end

script static void forts2_east_fort_spawn()
	ai_place (sq_forts2_east_elites);
	//ai_place (sq_forts2_east_jackals);
	ai_place (sq_forts2_east_grunts);
	dprint ("east fort covenant are spawned");
end

script static void forts2_west_fort_spawn()
	ai_place (sq_forts2_west_elites);
	//ai_place (sq_forts2_west_jackals);
	ai_place (sq_forts2_west_grunts);
	dprint ("west fort covenant are spawned");
end

script static void forts2_north_fort_spawn()
	ai_place (sq_forts2_north_elites);
	//ai_place (sq_forts2_north_jackals);
	ai_place (sq_forts2_north_grunts);
	dprint ("north fort covenant are spawned");
end

script static void forts2_loose_grunts_spawn()
	ai_place (sq_forts2_loose_grunts_1);
	ai_place (sq_forts2_loose_grunts_2);
	dprint ("loose grunts are spawned");
end



script command_script forts2_elite_banshee_entrance
	sleep_until (device_get_position (door_hallway_3_out) >= 0.3);
	dprint ("RUN FOR THE BANSHEE, ELITE!");
	cs_look (TRUE, ps_command_scripts.p1);
	cs_shoot (TRUE);
	//cs_look (FALSE, ps_command_scripts.p1);
	//cs_go_to (ps_command_scripts.p2);
	cs_go_to_vehicle (forts2_elite_banshee);
	//ai_vehicle_enter (sq_forts2_elite_banshee, forts2_elite_banshee);
end

//==================================================================================================
// ELEVATOR CONTROL ================================================================================
//==================================================================================================

script dormant f_elevator_2_mover
// Moves the elevator from the end of Forts 2 up into the Pylon 2 Rooftop. 

	sleep_until (volume_test_players (tv_pylon_2_elevator_start), 1);
	
	
	b_forts2_has_ended = TRUE;
	//wake (M30_pylontwo_elevator_ride);
	f_blip_flag (forts2_elevator_flag, "activate");
	device_group_set_immediate (dg_elevator_button_forts2, 1);
	sleep_until (device_get_position(elevator_button02) != 0);
	device_group_set_immediate (dg_elevator_button_forts2, 0);
	f_unblip_flag (forts2_elevator_flag);
	pup_play_show ("pylon2_elevator");
	
	sleep (30);
	
	object_create (elevator_door_2);
	volume_teleport_players_not_inside (tv_pylon_2_elevator_start, elevator02_teleport);
	
	sleep (90);
	
	//game_save_no_timeout();
	pup_play_show(pyelectric2_03);
	thread(set_cryptum_shield_stage(3, 2, FALSE));
	pylon2_elevator->f_animate();
	
end


script dormant f_pylon2_setup
	sleep_until (volume_test_players (tv_pylon2_entrance) or volume_test_players (tv_pylon_2_setup), 1);
	
	thread (beam_2_rumblor());
	
	pup_play_show ("pylon2_mechanism");
	
	thread (f_mus_m30_e07_finish());
	
	thread (pylon2_beam_disintigration (player0));
	thread (pylon2_beam_disintigration (player1));
	thread (pylon2_beam_disintigration (player2));
	thread (pylon2_beam_disintigration (player3));
	
end

	global real r_rumble_pylon2 = 0;
	global boolean b_pylon2_rumble_done = FALSE;

script static void beam_2_rumblor()

	thread(beam_2_rumble_set(player0));
	thread(beam_2_rumble_set(player1));
	thread(beam_2_rumble_set(player2));
	thread(beam_2_rumble_set(player3));

end

script static void beam_2_rumble_1()
	player_effect_set_max_rumble_for_player(player0, 0.4, 0.4);
	player_effect_set_max_rumble_for_player(player1, 0.4, 0.4);
	player_effect_set_max_rumble_for_player(player2, 0.4, 0.4);
	player_effect_set_max_rumble_for_player(player3, 0.4, 0.4);
end

script static void beam_2_rumble_2()
	player_effect_set_max_rumble_for_player(player0, 0.5, 0.5);
	player_effect_set_max_rumble_for_player(player1, 0.5, 0.5);
	player_effect_set_max_rumble_for_player(player2, 0.5, 0.5);
	player_effect_set_max_rumble_for_player(player3, 0.5, 0.5);
end

script static void beam_2_rumble_3()
	player_effect_set_max_rumble_for_player(player0, 0.6, 0.6);
	player_effect_set_max_rumble_for_player(player1, 0.6, 0.6);
	player_effect_set_max_rumble_for_player(player2, 0.6, 0.6);
	player_effect_set_max_rumble_for_player(player3, 0.6, 0.6);
end

script static void beam_2_rumble_4()
	player_effect_set_max_rumble_for_player(player0, 1, 1);
	player_effect_set_max_rumble_for_player(player1, 1, 1);
	player_effect_set_max_rumble_for_player(player2, 1, 1);
	player_effect_set_max_rumble_for_player(player3, 1, 1);
end

script static void beam_2_rumble_stop()
	player_effect_set_max_rumble_for_player(player0, 0, 0);
	player_effect_set_max_rumble_for_player(player1, 0, 0);
	player_effect_set_max_rumble_for_player(player2, 0, 0);
	player_effect_set_max_rumble_for_player(player3, 0, 0);
end

script static void beam_2_rumble_set(player p_player)
	
	sleep_until (volume_test_players (tv_pylon2_elevator_rumble), 1);
	
	repeat
	inspect (r_rumble_pylon2);
	
		if objects_distance_to_flag (p_player, flag_beam_2) >= 0.1 and objects_distance_to_flag (p_player, flag_beam_2) < 8.0 then
			
			player_effect_set_max_rumble_for_player(p_player, 0.3, 0.3);
			
		elseif objects_distance_to_flag (p_player, flag_beam_2) >= 8.0 and objects_distance_to_flag (p_player, flag_beam_2) < 15.0 then
			
			player_effect_set_max_rumble_for_player(p_player, 0.2, 0.2);
			
		elseif objects_distance_to_flag (p_player, flag_beam_2) >= 15.0 and objects_distance_to_flag (p_player, flag_beam_2) < 40.0 then
			
			player_effect_set_max_rumble_for_player(p_player, 0.1, 0.1);
			
		elseif objects_distance_to_flag (p_player, flag_beam_2) > 40.0 then
			
			player_effect_set_max_rumble_for_player(p_player, 0, 0);
			
		end
		
	until (b_pylon2_rumble_done == TRUE, 1);

	dprint ("rumblin' done");

end

script dormant elevator02_button_dissolve()
	dprint ("elevator button dissolving");
	object_dissolve_from_marker(elevator_button02, "phase_out", "button_marker");
end

script static void pylon2_fx_shutoff()
	effect_new_at_ai_point (environments\solo\m10_crash\fx\flash_white.effect, ps_forts2_tempfx.p3);
	effect_new_on_object_marker (environments\solo\m30_cryptum\fx\electricity\pylon_burst_shutoff.effect, pylon1_beam_core, "fx_26_pylon_off_burst");
end

script dormant pylon2_reclaimer_appear()

	sleep (30);
	dprint ("reclaimer symbol appearing");
	//object_dissolve_from_marker(forts2_reclaimer, "phase_from_ground", "reclaimer_pivot");
	
end

global boolean b_beam_2_active = TRUE;

script static void pylon2_beam_disintigration (player p_player)
	
	repeat
	
	sleep_until (volume_test_object (tv_pylon2beam, p_player), 1);
	
	if (b_beam_2_active == TRUE) then
	
		repeat
	
			damage_object_effect (objects\weapons\rifle\storm_spread_gun\projectiles\damage_effects\storm_spread_gun_shard_super_detonation.damage_effect, p_player);
			add_recycling_volume (tv_pylon2beam, 0, 1);
			damage_object_effect (objects\weapons\rifle\storm_spread_gun\projectiles\damage_effects\storm_spread_gun_shard_super_detonation.damage_effect, p_player);
		
		until (object_get_health (p_player) <= 0 or b_beam_2_active == FALSE, 1);
		
	end
	
	until (b_beam_2_active == FALSE);
	
end

//BLOW UP ANY BANSHEES IN HALLWAY
script static void destroy_all_banshees(player p_player)
	
	repeat
	
	sleep_until (volume_test_object (tv_banshee_destroy, p_player), 1); 
	
	dprint ("player in volume");
	
	if
		unit_in_vehicle_type (p_player, 30)
	then
		unit_exit_vehicle (p_player);
	end
	
	dprint ("ejecting player");
		
	sleep_until (not (unit_in_vehicle_type (p_player, 30)), 1);

	dprint ("player ejected, destroying");

	sleep (30);

	object_damage_damage_section (list_get(volume_return_objects_by_campaign_type (tv_banshee_destroy, 30), 0), "hull", 10000);
	object_damage_damage_section (list_get(volume_return_objects_by_campaign_type (tv_banshee_destroy, 30), 0), "canopy", 10000);
	object_damage_damage_section (list_get(volume_return_objects_by_campaign_type (tv_banshee_destroy, 30), 0), "wing_right", 10000);
	object_damage_damage_section (list_get(volume_return_objects_by_campaign_type (tv_banshee_destroy, 30), 0), "wing_left", 10000);

	object_damage_damage_section (list_get(volume_return_objects_by_campaign_type (tv_banshee_destroy, 30), 1), "hull", 10000);
	object_damage_damage_section (list_get(volume_return_objects_by_campaign_type (tv_banshee_destroy, 30), 1), "canopy", 10000);
	object_damage_damage_section (list_get(volume_return_objects_by_campaign_type (tv_banshee_destroy, 30), 1), "wing_right", 10000);
	object_damage_damage_section (list_get(volume_return_objects_by_campaign_type (tv_banshee_destroy, 30), 1), "wing_left", 10000);

	object_damage_damage_section (list_get(volume_return_objects_by_campaign_type (tv_banshee_destroy, 30), 2), "hull", 10000);
	object_damage_damage_section (list_get(volume_return_objects_by_campaign_type (tv_banshee_destroy, 30), 2), "canopy", 10000);
	object_damage_damage_section (list_get(volume_return_objects_by_campaign_type (tv_banshee_destroy, 30), 2), "wing_right", 10000);
	object_damage_damage_section (list_get(volume_return_objects_by_campaign_type (tv_banshee_destroy, 30), 2), "wing_left", 10000);
	
	object_damage_damage_section (list_get(volume_return_objects_by_campaign_type (tv_banshee_destroy, 30), 3), "hull", 10000);
	object_damage_damage_section (list_get(volume_return_objects_by_campaign_type (tv_banshee_destroy, 30), 3), "canopy", 10000);
	object_damage_damage_section (list_get(volume_return_objects_by_campaign_type (tv_banshee_destroy, 30), 3), "wing_right", 10000);
	object_damage_damage_section (list_get(volume_return_objects_by_campaign_type (tv_banshee_destroy, 30), 3), "wing_left", 10000);
	
	object_damage_damage_section (list_get(volume_return_objects_by_campaign_type (tv_banshee_destroy, 30), 4), "hull", 10000);
	object_damage_damage_section (list_get(volume_return_objects_by_campaign_type (tv_banshee_destroy, 30), 4), "canopy", 10000);
	object_damage_damage_section (list_get(volume_return_objects_by_campaign_type (tv_banshee_destroy, 30), 4), "wing_right", 10000);
	object_damage_damage_section (list_get(volume_return_objects_by_campaign_type (tv_banshee_destroy, 30), 4), "wing_left", 10000);
	
	object_damage_damage_section (list_get(volume_return_objects_by_campaign_type (tv_banshee_destroy, 30), 5), "hull", 10000);
	object_damage_damage_section (list_get(volume_return_objects_by_campaign_type (tv_banshee_destroy, 30), 5), "canopy", 10000);
	object_damage_damage_section (list_get(volume_return_objects_by_campaign_type (tv_banshee_destroy, 30), 5), "wing_right", 10000);
	object_damage_damage_section (list_get(volume_return_objects_by_campaign_type (tv_banshee_destroy, 30), 5), "wing_left", 10000);
	
	print ("Banshee destroyed, cleaning up");
	
	add_recycling_volume (tv_banshee_destroy, 0, 1);

	until (1 == 0);
	//until (list_count(volume_return_objects_by_campaign_type (tv_banshee_destroy, 30)) == 0, 1);

	//print ("ALL BANSHEES DESTROYED, CLEANING UP");
	
	//add_recycling_volume (tv_banshee_destroy, 0, 5);
	
end

// --- End m30_cryptum_forts_2.hsc ---

// --- Begin m30_cryptum_fx.hsc ---
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343
//
// Mission: 					m30_cryptum_fx
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

script startup m30_cryptum_fx()

	if b_debug then 
		print ("::: M30 - FX :::");
	end
	
	thread(test_fx());
end

script static void test_fx()
	print ("::: test FX :::");
	//effect_new( cinematics\cin_verticalslice\fx\rig_spark_pipe.effect, test_fx );
end


// This is used to "turn off" the pylon electricity beam effects after chief pulls the plug
script static void hide_pylon_beam(short s_pylon)
	dprint("Hiding pylon beam");
	pup_play_show(pyelectric_hide);
	
	if (s_pylon == 1) then
		// Kill the beam running through the pylon structure
		effect_kill_from_flag(environments\solo\m30_cryptum\fx\pylon_low\pylon_low.effect, pylon_shaft_fx_1);
		
		// Set the skybox cryptum shield to the next stage
		thread(set_cryptum_shield_stage(2, 2, FALSE));		
	end
	
	if (s_pylon == 2) then
		// Kill the beam running through the pylon structure
		effect_kill_from_flag(environments\solo\m30_cryptum\fx\pylon_low\pylon_low.effect, pylon_shaft_fx_2);
		
		// Set the skybox cryptum shield to the next stage
		thread(set_cryptum_shield_stage(3, 3, FALSE));		
	end
 
end

// Handles applying the correct "stage" of the skybox cryptum shield
script static void set_cryptum_shield_stage(short s_shield, short s_stage, boolean b_wait)
	
	if(b_wait == TRUE) then
		sleep_until(current_zone_set_fully_active() >= 0);
	end
		
	// First turn off everything, since the bsps get reloaded at various points
	effect_kill_from_flag(environments\solo\m30_cryptum\fx\core\core_stage1.effect, fx_cryptum_shield1);
	effect_kill_from_flag(environments\solo\m30_cryptum\fx\core\core_stage2.effect, fx_cryptum_shield1);
	effect_kill_from_flag(environments\solo\m30_cryptum\fx\core\core_stage3_flares.effect, fx_cryptum_shield1);
	
	effect_kill_from_flag(environments\solo\m30_cryptum\fx\core\core_stage1.effect, fx_cryptum_shield2);
	effect_kill_from_flag(environments\solo\m30_cryptum\fx\core\core_stage2.effect, fx_cryptum_shield2);
	effect_kill_from_flag(environments\solo\m30_cryptum\fx\core\core_stage2_under.effect, fx_cryptum_shield2);
	effect_kill_from_flag(environments\solo\m30_cryptum\fx\core\core_stage3_flares.effect, fx_cryptum_shield2);
	
	effect_kill_from_flag(environments\solo\m30_cryptum\fx\core\core_stage1.effect, fx_cryptum_shield3);
	effect_kill_from_flag(environments\solo\m30_cryptum\fx\core\core_stage2.effect, fx_cryptum_shield3);
	effect_kill_from_flag(environments\solo\m30_cryptum\fx\core\core_stage2_under.effect, fx_cryptum_shield3);
	effect_kill_from_flag(environments\solo\m30_cryptum\fx\core\core_stage3_flares.effect, fx_cryptum_shield3);
	
	// BSP shield markers set #1
	if (s_shield == 1) then
		if (s_stage == 2) then
			dprint("===Setting cryptum_shield1 effects to stage 2");
			// Apply the effects for stage 2
			effect_new(environments\solo\m30_cryptum\fx\core\core_stage2.effect, fx_cryptum_shield1);
		end
		
		if (s_stage == 3) then
			dprint("===Setting cryptum_shield1 effects to stage 3");
			// Apply the effects for stage 3
			effect_new(environments\solo\m30_cryptum\fx\core\core_stage3_flares.effect, fx_cryptum_shield1);
		end
	end
	
	// BSP shield markers set #2
	if (s_shield == 2) then
		if (s_stage == 1) then
			dprint("===Setting cryptum_shield2 effects to stage 1");
			// Apply the effects for stage 1
			effect_new(environments\solo\m30_cryptum\fx\core\core_stage1.effect, fx_cryptum_shield2);
		end
		
		if (s_stage == 2) then
			dprint("===Setting cryptum_shield2 effects to stage 2");
			// Apply the effects for stage 2
			effect_new(environments\solo\m30_cryptum\fx\core\core_stage2_under.effect, fx_cryptum_shield2);
		end
		
		if (s_stage == 3) then
			dprint("===Setting cryptum_shield2 effects to stage 3");
			// Apply the effects for stage 3
			effect_new(environments\solo\m30_cryptum\fx\core\core_stage3_flares.effect, fx_cryptum_shield2);
		end
	end
	
	// BSP shield markers set #3
	if (s_shield == 3) then
		if (s_stage == 2) then
			dprint("===Setting cryptum_shield3 effects to stage 2");
			// Apply the effects for stage 2
			effect_new(environments\solo\m30_cryptum\fx\core\core_stage2_under.effect, fx_cryptum_shield3);
		end
		
		if (s_stage == 3) then
			dprint("===Setting cryptum_shield3 effects to stage 3");			
			// Apply the effects for stage 3
			effect_new(environments\solo\m30_cryptum\fx\core\core_stage3_flares.effect, fx_cryptum_shield3);
		end
	end
end



// Daisy chain of triggered events for handling the cryptum shield effects following zone set and bsp changes
script dormant cryptshield_1_caves()
	sleep_until (volume_test_players ("begin_zone_set:1_caves"), 1);
	dprint("cryptshield_1_caves_1");
	thread(set_cryptum_shield_stage(2, 1, FALSE));
	sleep_until (volume_test_players ("zone_set:1_caves"), 1);
	dprint("cryptshield_1_caves_2");
	thread(set_cryptum_shield_stage(2, 1, TRUE));
	wake(cryptshield_1_canyon);
end

script dormant cryptshield_1_canyon()
	sleep_until (volume_test_players (tv_insertion_wake_py1_ext), 1);
	dprint("cryptshield_1_canyon_1");
	thread(set_cryptum_shield_stage(2, 1, FALSE));
	sleep_until (volume_test_players ("zone_set:1_canyon"), 1);
	dprint("cryptshield_1_caves_2");
	thread(set_cryptum_shield_stage(2, 1, TRUE));
	wake(cryptshield_1_forts);
end

script dormant cryptshield_1_forts()
	sleep_until (volume_test_players (tv_insertion_wake_py1_forts), 1);
	dprint("cryptshield_1_forts_1");
	thread(set_cryptum_shield_stage(2, 1, FALSE));
	sleep_until (volume_test_players ("zone_set:1_forts"), 1);
	dprint("cryptshield_1_forts_2");
	thread(set_cryptum_shield_stage(2, 1, TRUE));
	wake(cryptshield_1_pylon);
end


script dormant cryptshield_1_pylon()
	sleep_until (volume_test_players ("begin_zone_set:1_pylon"), 1);
	dprint("cryptshield_1_pylon_1");
	thread(set_cryptum_shield_stage(2, 1, FALSE));
	sleep_until (volume_test_players ("zone_set:1_pylon"), 1);
	dprint("cryptshield_1_pylon_2");
	thread(set_cryptum_shield_stage(2, 1, TRUE));
end



script static void obs_fleet_shields_on(object_name cruiser, object_name phantom1, object_name phantom2)
	object_set_function_variable(cruiser, slip_space_shield, 1, 0);
	object_set_function_variable(phantom1, slip_space_shield, 1, 0);
	object_set_function_variable(phantom2, slip_space_shield, 1, 0);
end

script static void obs_fleet_shields_off(object_name cruiser, object_name phantom1, object_name phantom2)
	object_set_function_variable(cruiser, slip_space_shield, 0, 2.0);
	object_set_function_variable(phantom1, slip_space_shield, 0, 2.0);
	object_set_function_variable(phantom2, slip_space_shield, 0, 2.0);
end

script static void clip_obs_fleet(object_name cruiser, object_name phantom1, object_name phantom2, cutscene_flag marker)
	object_set_clip_plane(cruiser, marker);
	object_set_clip_plane(phantom1, marker);
	object_set_clip_plane(phantom2, marker);
end

script static void unclip_obs_fleet(object_name cruiser, object_name phantom1, object_name phantom2)
	object_clear_clip_plane(cruiser);
	object_clear_clip_plane(phantom1);
	object_clear_clip_plane(phantom2);
end

// --- End m30_cryptum_fx.hsc ---

// --- Begin m30_cryptum_insertion.hsc ---
; =================================================================================================
; =================================================================================================
; *** GLOBALS ***
; =================================================================================================
; =================================================================================================

; Debug Options
global boolean b_debug 							= TRUE;
global boolean b_breakpoints				= FALSE;
global boolean b_md_print						=	TRUE;
global boolean b_debug_objectives 	= FALSE;
global boolean b_editor 						= editor_mode();
global boolean b_game_emulate				= FALSE;
global boolean b_cinematics 				= TRUE;
global boolean b_editor_cinematics 	= FALSE;
global boolean b_encounters				 	= TRUE;
global boolean b_dialogue 					= TRUE;
global boolean b_skip_intro					=	FALSE;
//global boolean s_insertion_index		= 0;

; Mission Started
global boolean b_mission_started 		=	FALSE;

; Zone Set Index
global short zs_portal_idx 			      = 0;	// default / start
global short zs_caves_idx 			      = 1;	// caves
global short zs_exterior1_idx 		    = 2;	// canyon
global short zs_forts_idx 			      = 3;	// forts
global short zs_beam1_idx 			      = 5;	// beam room
global short zs_start2_idx 			      = 6;	// start area 2
global short zs_exterior2_idx 		    = 7;	// exterior 2
global short zs_forts2_idx 			      = 8;	// forts 2
global short zs_beam2_idx 			      = 10;	// beam 2
global short zs_donut_idx 			      = 11;	// donut ring
global short zs_cryptum_idx 			    = 13;	// crpytum interior
global short zs_escape_idx 			      = 14;	// escape
global short zs_cin_m30_idx						= 17; // relay cinematic
global short zs_cin_m31_idx						= 15; // didact cinematic
global short zs_cin_m32_idx						= 16; // end cinematic		

; Insertion Index
global short portal_ins_idx 			    = 0;	// default / start
global short caves_ins_idx 			      = 1;	// caves
global short exterior1_ins_idx 		    = 2;	// canyon
global short forts_ins_idx 			      = 3;	// forts
global short beam1_ins_idx 			      = 4;	// beam room
global short start2_ins_idx 			    = 5;	// start area 2
global short exterior2_ins_idx 		    = 6;	// exterior 2
global short forts2_ins_idx 			    = 7;	// forts 2
global short beam2_ins_idx 			      = 8;	// beam 2
global short donut_ins_idx 			      = 9;	// donut ring
global short cryptum_ins_idx 			    = 10;	// crpytum interior
global short escape_ins_idx 			    = 11;	// escape

; Zone Sets
global short s_zoneset_all					= 0;

; =================================================================================================
; =================================================================================================
; *** INSERTIONS ***
; =================================================================================================
; =================================================================================================

script static void f_insertion_index_load( short s_insertion )
local boolean b_started = FALSE;
 //dprint( "::: f_insertion_index_load :::" );
 inspect( s_insertion );
 
 if (s_insertion == portal_ins_idx) then
  b_started = TRUE;
  ins_portal();
 end
 if (s_insertion == caves_ins_idx) then
  b_started = TRUE;
  ins_caves();
 end
 if (s_insertion == exterior1_ins_idx) then
  b_started = TRUE;
  ins_exterior1();
 end
 if (s_insertion == forts_ins_idx) then
  b_started = TRUE;
  ins_forts();
 end
 if (s_insertion == beam1_ins_idx) then
  b_started = TRUE;
  ins_beam1();
 end
 if (s_insertion == start2_ins_idx) then
  b_started = TRUE;
  ins_exterior2();
 end
 if (s_insertion == exterior2_ins_idx) then
  b_started = TRUE;
  ins_exterior2();
 end
 if (s_insertion == forts2_ins_idx) then
  b_started = TRUE;
  ins_forts2();
 end 
 if (s_insertion == beam2_ins_idx) then
  b_started = TRUE;
  ins_beam2();
 end 
 if (s_insertion == donut_ins_idx) then
  b_started = TRUE;
  ins_donut();
 end 
 if (s_insertion == escape_ins_idx) then
  b_started = TRUE;
  ins_escape();
 end 

 if ( not b_started ) then
  dprint( "f_insertion_index_load: ERROR: Failed to find insertion point index to load" );
  inspect( s_insertion );
 end

end

script static zone_set f_zoneset_get( short s_index )
local zone_set zs_return = "1_start"; 

 if ( s_index == zs_portal_idx ) then
  zs_return = "1_start";
 end
 if ( s_index == zs_caves_idx ) then
  zs_return = "1_caves";
 end
 if ( s_index == zs_exterior1_idx ) then
  zs_return = "1_canyon";
 end
 if ( s_index == zs_forts_idx ) then
  zs_return = "1_forts";
 end
 if ( s_index == zs_beam1_idx ) then
  zs_return = "1_pylon";
 end
 if ( s_index == zs_start2_idx ) then
  zs_return = "2_start";
 end
 if ( s_index == zs_exterior2_idx ) then
  zs_return = "2_canyon";
 end
 if ( s_index == zs_forts2_idx ) then
  zs_return = "2_forts";
 end
 if ( s_index == zs_beam2_idx ) then
  zs_return = "2_pylon";
 end
 if ( s_index == zs_donut_idx ) then
  zs_return = "3_donut";
 end
 if ( s_index == zs_cryptum_idx ) then
  zs_return = "3_cryptum";
 end
 if ( s_index == zs_escape_idx ) then
  zs_return = "4_escape";
 end

 // return
 zs_return;
end




; =================================================================================================
; PORTAL
; =================================================================================================

script static void ipo()
	f_insertion_reset( portal_ins_idx );
end

script static void ins_portal()

	f_insertion_begin( "OBSERVATION DECK" );
	f_insertion_zoneload( zs_portal_idx, FALSE );
	f_insertion_playerwait();
	f_insertion_teleport( ps_insertion_py1_start.p0, ps_insertion_py1_start.p1, ps_insertion_py1_start.p2, ps_insertion_py1_start.p3 );
	
	b_m30_music_progression = 0;
	pup_play_show ("obs_portal");
	sound_impulse_start(sound\environments\solo\m030\amb_m30_beta\amb_m30_machines\amb_m30_machine_forerunner_portal_flash, player0, 1);
	sound_impulse_start(sound\environments\solo\m030\amb_m30_beta\amb_m30_machines\amb_m30_machine_forerunner_portal_flash, player1, 1);
	sound_impulse_start(sound\environments\solo\m030\amb_m30_beta\amb_m30_machines\amb_m30_machine_forerunner_portal_flash, player2, 1);
	sound_impulse_start(sound\environments\solo\m030\amb_m30_beta\amb_m30_machines\amb_m30_machine_forerunner_portal_flash, player3, 1);
	
	dprint ("portal flash!");	
	f_insertion_playerprofile( default_SP, FALSE );
	dprint ("default player profile set");
	f_insertion_end();

	SetSkyObjectOverride("");
	
	zone_set_trigger_volume_enable ("begin_zone_set:2_start", FALSE);
	zone_set_trigger_volume_enable ("zone_set:2_start", FALSE);
	
	zone_set_trigger_volume_enable ("begin_zone_set:3_donut", FALSE);
	zone_set_trigger_volume_enable ("zone_set:3_donut", FALSE);
	
end


; =================================================================================================
; CAVES
; =================================================================================================

script static void ica()
	f_insertion_reset( caves_ins_idx );
end

script static void ins_caves()

	f_insertion_begin( "CAVES" );
	f_insertion_zoneload( zs_caves_idx, FALSE );
	f_insertion_playerwait();
	
	b_m30_music_progression = 20;
	f_insertion_teleport( ps_insertion_py1_caves.p0, ps_insertion_py1_caves.p1, ps_insertion_py1_caves.p2, ps_insertion_py1_caves.p3 );
	f_insertion_playerprofile( default_SP, FALSE );
	dprint ("default player profile set");
	f_insertion_end();
	
	music_start('Play_mus_m30');
	SetSkyObjectOverride("");
	
	self_illum_color_setting_set(1);
	
	effects_distortion_enabled = 1;
	
end

; =================================================================================================
; EXTERIOR 1
; =================================================================================================
// RALLY POINT BRAVO
script static void ie1()
	f_insertion_reset( exterior1_ins_idx );
end

script static void ins_exterior1()
	
	f_insertion_begin( "EXTERIOR 1" );
	f_insertion_zoneload( zs_exterior1_idx, FALSE );
	f_insertion_playerwait();
	f_insertion_teleport( ps_insertion_py1_ext.p0, ps_insertion_py1_ext.p1, ps_insertion_py1_ext.p2, ps_insertion_py1_ext.p3 );
	f_insertion_playerprofile( default_FR, FALSE );
	dprint ("ext1 player profile set");
	f_insertion_end();

	b_m30_music_progression = 30;
	SetSkyObjectOverride("");
		
	sleep_forever (m30_hallway_1_enter);
	thread (f_door_hallway_1_out_open());
	
	effects_distortion_enabled = 0;
	
	self_illum_color_setting_set(1);
	
end

; =================================================================================================
; FORTS
; =================================================================================================

script static void ifo1()
	f_insertion_reset( forts_ins_idx );
end

script static void ins_forts()
	
	f_insertion_begin( "FORTS 1" );
	f_insertion_zoneload( zs_forts_idx, FALSE );
	f_insertion_playerwait();
	f_insertion_teleport( ps_insertion_py1_forts.p0, ps_insertion_py1_forts.p1, ps_insertion_py1_forts.p2, ps_insertion_py1_forts.p3 );
	f_insertion_playerprofile( default_FR, FALSE );
	f_insertion_end();
	
	b_m30_music_progression = 40;
	SetSkyObjectOverride("");
	
	thread (f_door_hallway_2_out_open());
	
	effects_distortion_enabled = 0;
	
	self_illum_color_setting_set(1);
	
end

; =================================================================================================
; BEAM 1
; =================================================================================================

script static void ib1()
	f_insertion_reset( beam1_ins_idx );
end

script static void ins_beam1()
	
	f_insertion_begin( "PYLON 1" );
	f_insertion_zoneload( zs_beam1_idx, FALSE );
	f_insertion_playerwait();
	f_insertion_teleport( ps_insertion_py1_beam.p0, ps_insertion_py1_beam.p1, ps_insertion_py1_beam.p2, ps_insertion_py1_beam.p3 );
	f_insertion_playerprofile( default_FR, FALSE );
	f_insertion_end();
		
	wake (f_pylon1_setup);
	object_hide (forts1_reclaimer, TRUE);

	b_m30_music_progression = 50;
	SetSkyObjectOverride("");
		
	effects_distortion_enabled = 1;

	self_illum_color_setting_set(1);

	// Move the pylon beam effects into place
	pup_play_show(pyelectric_05);

end

; =================================================================================================
; EXTERIOR 2
; =================================================================================================
// RALLY POINT CHARLIE
script static void ie2()
	f_insertion_reset( exterior2_ins_idx );
end

script static void ins_exterior2()
	
	f_insertion_begin( "EXTERIOR 2" );
	f_insertion_zoneload( zs_start2_idx, FALSE );
	f_insertion_playerwait();
	f_insertion_teleport( ps_insertion_py2_caves.p0, ps_insertion_py2_caves.p1, ps_insertion_py2_caves.p2, ps_insertion_py2_caves.p3 );
	f_insertion_playerprofile( default_FR, FALSE );
	f_insertion_end();
	
	b_m30_music_progression = 70;
	SetSkyObjectOverride("");
	
	effects_distortion_enabled = 1;
	self_illum_color_setting_set(1);	
		
end

; =================================================================================================
; FORTS 2
; =================================================================================================

script static void ifo2()
	f_insertion_reset( forts2_ins_idx );
end

script static void ins_forts2()
	
	zone_set_trigger_volume_enable ("zone_set:2_elevator:*", FALSE);
	
	//wake (forts2_streaming_warp);
	
	f_insertion_begin( "FORTS 2" );
	f_insertion_zoneload( zs_forts2_idx, FALSE );
	f_insertion_playerwait();
	f_insertion_teleport( ps_insertion_py2_forts.p0, ps_insertion_py2_forts.p1, ps_insertion_py2_forts.p2, ps_insertion_py2_forts.p3 );
	f_insertion_playerprofile( default_BOTH, FALSE );
	f_insertion_end();
	
	b_m30_music_progression = 80;
	effects_distortion_enabled = 0;
	self_illum_color_setting_set(1);
	
	sleep (30 * 2);
	
	door_hallway_3_out->open_default();
	
end

; =================================================================================================
; BEAM 2
; =================================================================================================

script static void ib2()
	f_insertion_reset( beam2_ins_idx );
end

script static void ins_beam2()
	
	f_insertion_begin( "PYLON 2" );
	f_insertion_zoneload( zs_beam2_idx, FALSE );
	f_insertion_playerwait();
	f_insertion_teleport( ps_insertion_py2_beam.p0, ps_insertion_py2_beam.p1, ps_insertion_py2_beam.p2, ps_insertion_py2_beam.p3 );
	f_insertion_playerprofile( default_BOTH, FALSE );
	f_insertion_end();
	
	b_m30_music_progression = 90;
	SetSkyObjectOverride("");
	wake (f_pylon2_setup);
	object_hide (forts2_reclaimer, TRUE);
	effects_distortion_enabled = 1;
	self_illum_color_setting_set(1);
	
end


; =================================================================================================
; DONUT
; =================================================================================================
// RALLY POINT DELTA
script static void ido()
	f_insertion_reset( donut_ins_idx );
end

script static void ins_donut()
	
	f_insertion_begin( "DONUT" );
	f_insertion_zoneload( zs_donut_idx, FALSE );
	f_insertion_playerwait();
	f_insertion_teleport( ps_insertion_donut.p0, ps_insertion_donut.p1, ps_insertion_donut.p2, ps_insertion_donut.p3 );
	f_insertion_playerprofile( default_BOTH, FALSE );
	f_insertion_end();
	
	pup_play_show ("donut_portal");
	
	b_m30_music_progression = 100;
	SetSkyObjectOverride("");
	
	effects_distortion_enabled = 1;
	
	self_illum_color_setting_set(1);	
		
end

; =================================================================================================
; ESCAPE
; =================================================================================================

script static void ies()
	f_insertion_reset( escape_ins_idx );
end

script static void ins_escape()
	
	f_insertion_begin( "ESCAPE" );
	f_insertion_zoneload( zs_escape_idx, FALSE );
	f_insertion_playerwait();
	f_insertion_teleport( ps_insertion_escape.p0, ps_insertion_escape.p1, ps_insertion_escape.p2, ps_insertion_escape.p3 );
	f_insertion_playerprofile( default_BOTH, FALSE );
	f_insertion_end();
	
	b_m30_music_progression = 120;
	SetSkyObjectOverride("");
	
	effects_distortion_enabled = 1;
	
	self_illum_color_setting_set(1);
	
end


// =================================================================================================
// =================================================================================================
// *** CLEANUP ***
// =================================================================================================
// =================================================================================================

// =================================================================================================
// PORTAL
// =================================================================================================

//script static void f_portal_cleanup()
//	sleep_forever (f_portal_main);
//end

// =================================================================================================
// =================================================================================================
// UTILITY
// =================================================================================================
// =================================================================================================

// =================================================================================================
// Loadouts
// =================================================================================================
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

// =================================================================================================
// Insertion Fade
// =================================================================================================

global boolean b_insertion_fade_in = FALSE;
script dormant f_insertion_fade_in

	sleep_until (b_insertion_fade_in);
	// this is a global script
	insertion_fade_to_gameplay();
end

// --- End m30_cryptum_insertion.hsc ---

// --- Begin m30_cryptum_mission.hsc ---
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343
//
// 	Mission: 					m30_cryptum
//
//	Insertion Points:	start (or ipo)	- Beginning
//										ica							- Caves
//										ie1							- Exterior 1
//										ifo							- Fort 1
//										ib1							- Beams 1
//										is2							- Start Pylon 2
//										ie2							- Exterior 2
//										ib2							- Beams 2
//										ido							- Donut
//										icr							- Cryptum
//										ies							- Escape
//										
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343

// =================================================================================================
// =================================================================================================
// *** GLOBALS ***
// =================================================================================================
// =================================================================================================

global short pylon_1_activated_check = 0;
global boolean b_pylon1_shutdown_start = FALSE;
global boolean b_pylon2_shutdown_start = FALSE;
global boolean b_pylon1_portal_up = FALSE;
global boolean b_pylon2_portal_up = FALSE;

// =================================================================================================
// =================================================================================================
// *** START-UP ***
// =================================================================================================
// =================================================================================================

script startup m30_cryptum()
		
	//fade_out (255, 255, 255, 0);	
		
	if b_debug then 
		print_difficulty(); 
	end
	
	if b_debug then 
		print ("::: M30 - CRYPTUM :::");
	end
	
	if b_encounters then
		
		zone_set_trigger_volume_enable ("begin_zone_set:2_start", FALSE);
		zone_set_trigger_volume_enable ("zone_set:2_start", FALSE);
	
		zone_set_trigger_volume_enable ("begin_zone_set:3_donut", FALSE);
		zone_set_trigger_volume_enable ("zone_set:3_donut", FALSE);
		
		wake (m30_cryptum_intro_forerunners);
		wake (m30_cryptum_exterior_1);
		wake (m30_cryptum_forts_1);
		wake (m30_cryptum_exterior_2);
		wake (m30_cryptum_forts_2);
		wake (m30_cryptum_donut);
		wake (m30_cryptum_escape);
		wake (pylon_1_activated);
		wake (pylon_2_activated);
		//wake (chapter_two_display);
		wake (chapter_three_display);

		thread (door_setup());
		
		self_illum_color_setting_set(1);
		//effects_distortion_enabled = 0;
		
	objectives_set_string (0, m30_pause_obj_1);
	objectives_set_string (1, m30_pause_obj_2);
	objectives_set_string (2, m30_pause_obj_3);
	objectives_set_string (3, m30_pause_obj_4);
		
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

	end
	ai_lod_full_detail_actors (22);

end

// =================================================================================================
// M30 ACHIEVEMENTS
// =================================================================================================

script static void m30_flavor_cheevo_check (player p_player) 
	
	if (difficulty_heroic()) or (difficulty_legendary()) then
	
		if (unit_has_weapon (p_player, objects\weapons\rifle\storm_assault_rifle\storm_assault_rifle.weapon)) or (unit_has_weapon (p_player, objects\weapons\pistol\storm_magnum\storm_magnum.weapon)) then
			dprint ("You unlocked the Achievement This is my Rifle, This is my Gun");
			//achievement_grant_to_player (p_player, "m30_special");
			submit_incident_with_cause_player (achieve_m30_special, p_player);
		else
			dprint ("No UNSC Weapons: No cheevo for you, sorry!");
		end
	
	else	
		dprint ("Difficulty to low: No cheevo for you, sorry!");
	end	
		
end

// =================================================================================================
// =================================================================================================
// START
// =================================================================================================
// =================================================================================================

script static void start()

	f_insertion_index_load( game_insertion_point_get() );                


end

// =================================================================================================
// =================================================================================================
// PYLON CONTROL
// =================================================================================================
// =================================================================================================


script dormant pylon_1_activated()
	sleep_until (volume_test_players (tv_pylon_1_setup), 1);
	object_hide (forts1_reclaimer, TRUE);
	device_group_set_immediate (pylon_1_devicegroup, 1);
	f_blip_flag (pylon_1_button_flag, "activate");
	game_save();
	wake (pylon_1_buttonpress);
	sleep (30);
	pylon1_door->f_animate();
end

script dormant pylon_1_buttonpress()
	sleep_until (device_get_position (pylon_1_button) != 0);
	 
	f_unblip_flag (pylon_1_button_flag);
	hud_play_global_animtion (screen_fade_out);
	sleep (15);
	local long show = pup_play_show(pylon1);
	hud_stop_global_animtion (screen_fade_out);

	device_group_set_immediate (pylon_1_devicegroup, 0);

	sleep_until (not pup_is_playing(show) , 1);
	
	hud_play_global_animtion (screen_fade_in);
	hud_stop_global_animtion (screen_fade_in);

	b_pylon1_shutdown_start = TRUE;
	
	sleep_until (b_pylon1_portal_up == TRUE);
	
	portal_count = 10;

	f_blip_flag (pylon_1_exit_flag, "default");
	
	thread (pylon_1_to_deck());

	
end

script static void pylon_1_to_deck()
	sleep_until (volume_test_players (tv_pylon_1_exit) and (portal_count == 10), 1);
		
	f_unblip_flag (pylon_1_exit_flag);
	effect_new_at_ai_point (environments\solo\m10_crash\fx\flash_white.effect, ps_teleports.p3);
	sound_impulse_start(sound\environments\solo\m030\amb_m30_beta\amb_m30_machines\amb_m30_machine_forerunner_portal_flash, player0, 1);
	sound_impulse_start(sound\environments\solo\m030\amb_m30_beta\amb_m30_machines\amb_m30_machine_forerunner_portal_flash, player1, 1);
	sound_impulse_start(sound\environments\solo\m030\amb_m30_beta\amb_m30_machines\amb_m30_machine_forerunner_portal_flash, player2, 1);
	sound_impulse_start(sound\environments\solo\m030\amb_m30_beta\amb_m30_machines\amb_m30_machine_forerunner_portal_flash, player3, 1);
	fade_out_for_player (player0);
	fade_out_for_player (player1);
	fade_out_for_player (player2);
	fade_out_for_player (player3);
	
	object_teleport (player0, deck_portal_return_1);
	object_teleport (player1, deck_portal_return_2);
	object_teleport (player2, deck_portal_return_3);
	object_teleport (player3, deck_portal_return_4);
	
	print ("TELEPORT!");
	
	pup_play_show ("obs_portal");
	
	fade_in_for_player (player0);
	fade_in_for_player (player1);
	fade_in_for_player (player2);
	fade_in_for_player (player3);
	
end

script dormant pylon_2_activated()
	sleep_until (volume_test_players (tv_pylon_2_setup), 1);
	object_hide (forts2_reclaimer, TRUE);
	device_group_set_immediate (pylon_2_devicegroup, 1);
	f_blip_flag (pylon_2_button_flag, "activate");
	dprint ("pylon2 door is opening");

	game_save();
	wake (pylon_2_buttonpress);
	
	sleep (30);
	
	pylon2_door->f_animate();
end

script dormant pylon_2_buttonpress()
	sleep_until (device_get_position (pylon_2_button) != 0);

	f_unblip_flag (pylon_2_button_flag);
	hud_play_global_animtion (screen_fade_out);
	sleep (15);
	local long show = pup_play_show(pylon2);
	hud_stop_global_animtion (screen_fade_out);
	device_group_set_immediate (pylon_2_devicegroup, 0);	
	
	sleep_until (not pup_is_playing(show) , 1);
	
	hud_play_global_animtion (screen_fade_in);
	hud_stop_global_animtion (screen_fade_in);

	b_pylon2_shutdown_start = TRUE;
	
	sleep_until (b_pylon2_portal_up == TRUE);
	
	portal_count = 20;

	f_blip_flag (pylon_2_exit_flag, "default");

	thread (pylon_2_to_deck());

end


script static void pylon_2_to_deck()
	sleep_until (volume_test_players (tv_pylon_2_exit) and (portal_count == 20), 1);
	
	f_unblip_flag (pylon_2_exit_flag);
	
	effect_new_at_ai_point (environments\solo\m10_crash\fx\flash_white.effect, ps_teleports.p4);
	sound_impulse_start(sound\environments\solo\m030\amb_m30_beta\amb_m30_machines\amb_m30_machine_forerunner_portal_flash, player0, 1);
	sound_impulse_start(sound\environments\solo\m030\amb_m30_beta\amb_m30_machines\amb_m30_machine_forerunner_portal_flash, player1, 1);
	sound_impulse_start(sound\environments\solo\m030\amb_m30_beta\amb_m30_machines\amb_m30_machine_forerunner_portal_flash, player2, 1);
	sound_impulse_start(sound\environments\solo\m030\amb_m30_beta\amb_m30_machines\amb_m30_machine_forerunner_portal_flash, player3, 1);
	fade_out_for_player (player0);
	fade_out_for_player (player1);
	fade_out_for_player (player2);
	fade_out_for_player (player3);

	object_teleport (player0, deck_portal_return_1);
	object_teleport (player1, deck_portal_return_2);
	object_teleport (player2, deck_portal_return_3);
	object_teleport (player3, deck_portal_return_4);
	
	print ("TELEPORT!");
	
	pup_play_show ("obs_portal");
	
	fade_in_for_player (player0);
	fade_in_for_player (player1);
	fade_in_for_player (player2);
	fade_in_for_player (player3);
	
end

// =================================================================================================
// =================================================================================================
// CHAPTER TITLES
// =================================================================================================
// =================================================================================================


script dormant chapter_one_display()
	sleep_until (volume_test_players (tv_tsb1) and (portal_count == 0), 1);
	hud_play_global_animtion (screen_fade_out);
	cinematic_show_letterbox (TRUE);
	sleep_s (1.5);
	cinematic_set_title (ch_chapter1);
	hud_stop_global_animtion (screen_fade_out);
	sleep_s (3.5);	
	hud_play_global_animtion (screen_fade_in);
	hud_stop_global_animtion (screen_fade_in);
	cinematic_show_letterbox (FALSE);
end

script dormant chapter_two_display()
	//sleep_until (volume_test_players (tv_tsb1) and (portal_count == 10), 1);
	hud_play_global_animtion (screen_fade_out);
	cinematic_show_letterbox (TRUE);
	sleep_s (1.5);
	cinematic_set_title (ch_chapter2);
	hud_stop_global_animtion (screen_fade_out);
	sleep_s (3.5);
	hud_play_global_animtion (screen_fade_in);
	hud_stop_global_animtion (screen_fade_in);
	cinematic_show_letterbox (FALSE);
end

script dormant chapter_three_display()
	sleep_until (volume_test_players (tv_tsb_donut), 1);
	hud_play_global_animtion (screen_fade_out);
	cinematic_show_letterbox (TRUE);
	sleep_s (1.5);
	cinematic_set_title (ch_chapter3);
	hud_stop_global_animtion (screen_fade_out);
	sleep_s (3.5);
	hud_play_global_animtion (screen_fade_in);
	hud_stop_global_animtion (screen_fade_in);
	cinematic_show_letterbox (FALSE);
end

script dormant chapter_four_display()

	sleep (30);

	hud_play_global_animtion (screen_fade_out);
	cinematic_show_letterbox (TRUE);
	sleep_s (1.5);
	cinematic_set_title (ch_chapter4);
	hud_stop_global_animtion (screen_fade_out);
	sleep_s (3.5);
	hud_play_global_animtion (screen_fade_in);
	hud_stop_global_animtion (screen_fade_in);
	cinematic_show_letterbox (FALSE);
	
end


// =================================================================================================
// =================================================================================================
// DOOR CONTROLS
// =================================================================================================
// =================================================================================================

script static void door_setup()
	thread (f_door_deck_open());
	thread (f_door_hallway_1_in_open());
	thread (f_door_hallway_1_out_open());
	thread (f_door_hallway_2_in_open());
	thread (f_door_hallway_2_out_open());
	thread (f_door_hallway_3_in_open());
	thread (f_door_hallway_3_out_open());
end

// observation_door_01 is the first door at the beginning of the level
script static void f_door_deck_open()
	sleep_until (volume_test_players (tv_deck_door_control), 1);
	dprint ("deck door opening");
	
	// special one-off for the observatory door
	sound_impulse_start('sound\environments\solo\m030\amb_m30_beta\amb_30_observation_deck_door_oneoff', observation_door_01, 1);
	
	observation_door_01->open_default();
	thread (f_door_deck_close());
end

script static void f_door_deck_close()
	sleep_until (not volume_test_players (tv_deck_door_control), 1);
	dprint ("deck door closing");

	observation_door_01->close_default();
	thread (f_door_deck_open());
end


script static void f_door_hallway_1_in_open()
	sleep_until (volume_test_players (tv_door_1_open) and (knight_gating == 15), 1);

	door_hallway_1_in->open_default();
	
	thread (f_door_hallway_1_in_close());
end

script static void f_door_hallway_1_in_close()
	sleep_until (volume_test_players (tv_door_1_close), 1);
	
	door_hallway_1_in->close_default();
	
	sleep_until (device_get_position (door_hallway_1_in) <= 0, 1);
	
	volume_teleport_players_not_inside (tv_door_1_close,  flag_caves_door_teleport);
	
	zoneset_prepare_and_load (zs_exterior1_idx);

	thread (f_door_hallway_1_out_open());
	
end

script static void f_door_hallway_1_out_open()
	sleep_until (volume_test_players (tv_door_2_open), 1);

	door_hallway_1_out->open_default();
	
	thread (f_door_hallway_1_out_close());
end

script static void f_door_hallway_1_out_close()
	sleep_until (volume_test_players (tv_door_2_close) and not volume_test_players (tv_door_2_open), 1);

	door_hallway_1_out->close_default();
	
	thread (f_door_hallway_1_out_open());
end

script static void f_door_hallway_2_in_open()
	sleep_until (volume_test_players (tv_door_3_upper_open), 1);

	door_hallway_2_in->open_default();
	
	thread (f_door_hallway_2_in_close());
end

script static void f_door_hallway_2_in_close()

	sleep_until (volume_test_players (tv_door_3_upper_close), 1);

	door_hallway_2_in->close_default();
	
	sleep_until (device_get_position (door_hallway_2_in) <= 0, 1);
	
	volume_teleport_players_not_inside(tv_door_3_upper_close,  flag_door_teleport);

	zoneset_prepare_and_load (zs_forts_idx);

	thread (f_door_hallway_2_out_open());
	
end

script static void f_door_hallway_2_out_open()
	sleep_until (volume_test_players (tv_door_4_upper_open), 1);

	door_hallway_2_out->open_default();
	
	thread (f_door_hallway_2_out_close());
end

script static void f_door_hallway_2_out_close()
	sleep_until (volume_test_players (tv_door_4_upper_close) and not volume_test_players (tv_door_4_upper_open), 1);
//	object_move_by_offset (door_4_upper, 1, 0, 0, -3);
	door_hallway_2_out->close_default();
	thread (f_door_hallway_2_out_open());
end

script static void f_door_hallway_3_in_open()
	sleep_until (volume_test_players (tv_door_5_open), 1);
//	object_move_by_offset (door_5, 1, 0, 0, 3);
	door_hallway_3_in->open_fast();
	thread (f_door_hallway_3_in_close());
end

script static void f_door_hallway_3_in_close()
	sleep_until (volume_test_players (tv_door_5_close), 1);
	
	wake (forts2_save);
	
	door_hallway_3_in->close_fast();
	
	//thread (f_door_hallway_3_in_open());
	
	sleep_until (device_get_position (door_hallway_3_in) <= 0, 1);
	
	volume_teleport_players_not_inside_with_vehicles (tv_door_5_close,  flag_ext2_door_teleport);
	
	zoneset_prepare_and_load (zs_forts2_idx);

	thread (f_door_hallway_3_out_open());
end

script static void f_door_hallway_3_out_open()
	sleep_until (volume_test_players (tv_door_6_open), 1);
//	object_move_by_offset (door_6, 1, 0, 0, 3);
	door_hallway_3_out->open_fast();
	thread (f_door_hallway_3_out_close());
end

script static void f_door_hallway_3_out_close()
	sleep_until (volume_test_players (tv_door_6_close) and not volume_test_players (tv_door_6_open), 1);
//	object_move_by_offset (door_6, 1, 0, 0, -3);
	door_hallway_3_out->close_fast();
	thread (f_door_hallway_3_out_open());
end

// =================================================================================================
// =================================================================================================
// ICS INVINCIBILITY
// =================================================================================================
// =================================================================================================

script static void ics_player_deathless_on()
 	dprint ("ICS player made invincible for ICS");
	object_cannot_die (g_ics_player, TRUE);
	//object_cannot_die (player1, TRUE);
	//object_cannot_die (player2, TRUE);
	//object_cannot_die (player3, TRUE);
end

script static void ics_player_deathless_off()
	dprint ("ICS player made vulnerable for ICS");
	object_cannot_die (g_ics_player, FALSE);
	//object_cannot_die (player1, TRUE);
	//object_cannot_die (player2, TRUE);
	//object_cannot_die (player3, TRUE);
end
// --- End m30_cryptum_mission.hsc ---

// --- Begin m30_dialogue.hsc ---
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343
//
// Mission: 					m30_dialog
//										
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343

// -------------------------------------------------------------------------------------------------
// DIALOG
// -------------------------------------------------------------------------------------------------
// DEFINES


// VARIABLES

global boolean b_first_time_dialog_over = FALSE; //this is to trigger the button press the first time through, once they're finished talking.
global boolean b_cryptum_approach_dialog_complete = FALSE;  //this is to tell the player that cortana is finished gabbing as they approach the Cryptum button.
global long l_dlg_m30_plyon_1_lightbridge = DEF_DIALOG_ID_NONE();


// dialog ID variables






// --- END

script dormant f_dialog_m30_callout_banshees_fast_low()
dprint("f_dialog_callout_banshees_fast_low");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "BANSHEES_FAST_LOW", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\global\global_chatter_00176', FALSE, NONE, 0.0, "", "Cortana : Banshees. Fast and low." );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end


script dormant f_dialog_M30_observatory_first()
	dprint("f_dialog_M30_observatory_first");
	b_first_time_through = TRUE;;
	
	local long l_dialog_id = DEF_DIALOG_ID_NONE();
	l_dialog_id = dialog_start_foreground( "M30_OBSERVATORY_FIRST", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0 );      
						dialog_line_chief( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m30\m30_cryptum_into_00102', FALSE, NONE, 0.0, "", "Master Chief : What were those things?" );
						dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m30\m30_cryptum_into_00103', FALSE, NONE, 0.0, "", "Cortana : Some sort of advanced defense A.I's." );
						dialog_line_cortana( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m30\m30_cryptum_into_00104', FALSE, NONE, 0.0, "", "Cortana : Related to the Sentinels, I'm guessing, but it's hard to say without a closer look.  " );
						dialog_line_cortana( l_dialog_id, 3, TRUE, 'sound\dialog\mission\m30\M30_cryptum_into_00107', FALSE, NONE, 0.0, "", "Cortana : C'mon, let's figure out where that transit system dumped us.  " );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end

script dormant f_dialogue_m30_insert_into()
	dprint("f_dialogue_m30_insert_into");

	l_dlg_insert_into = dialog_start_foreground( "M30_INSERT_INTO", l_dlg_insert_into, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
	dialog_line_cortana( l_dlg_insert_into, 0, TRUE, 'sound\dialog\mission\global\global_chatter_00195', FALSE, NONE, 0.0, "", "Cortana : Put me in the console!" );
	l_dlg_insert_into = dialog_end( l_dlg_insert_into, TRUE, TRUE, "" );
				 
	b_first_time_dialog_over = TRUE;
end


script dormant f_dialog_m30_pat_pickup()
dprint("f_dialog_m30_pat_pickup");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M30_PAT_PICKUP", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
                dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m30\m30_pat_00100', FALSE, NONE, 0.0, "", "Cortana : Racks of deployable defense turrets?" );
								dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m30\m30_pat_00200', FALSE, NONE, 0.0, "", "Cortana : What exactly were the Forerunners expecting here?" );         
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
				 
end

script dormant f_dialog_m30_pylonone_arrival()
dprint("f_dialog_m30_pylonone_arrival");
		
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M30_PYLONONE_ARRIVAL", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
								//dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m30\m30_pylonone_arrival_00100', FALSE, NONE, 0.0, "", "Cortana : Have portal, will travel." );
								dialog_line_chief( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m30\m30_pylonone_arrival_00101', FALSE, NONE, 0.0, "", "Master Chief : This is the first pylon?" );
								hud_play_pip_from_tag( "bink\campaign\M30_A_60" );
								dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m30\m30_pylonone_arrival_00102', FALSE, NONE, 0.0, "", "Cortana : Negative - this is close as I could get us." );
								dialog_line_cortana( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m30\m30_pylonone_arrival_00103', FALSE, NONE, 0.0, "", "Cortana : Hope you don't mind hoofing it a little." );                
								
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end




script dormant f_dialog_M30_Console_Button_one()
dprint("f_dialog_M30_Console_Button_one");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					
					l_dialog_id = dialog_start_foreground( "M30_CONSOLE_BUTTON_ONE", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m30\m30_console_button_one_00108', FALSE, NONE, 0.0, "", "Cortana : This is Requiem's core, alright, but Infinity is most certainly not here." );
						dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m30\m30_console_button_one_00109', FALSE, NONE, 0.0, "", "Cortana : That satellite in the center is amplifying the ship�s broadcasts like a relay." );
						dialog_line_chief( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m30\m30_console_button_one_00110', FALSE, NONE, 0.0, "", "Master Chief : Maybe we can us it to respond to them." );
						dialog_line_cortana( l_dialog_id, 3, TRUE, 'sound\dialog\mission\m30\m30_console_button_one_00111', FALSE, NONE, 0.0, "", "Cortana : Perhaps." );
						dialog_line_cortana( l_dialog_id, 4, TRUE, 'sound\dialog\mission\m30\m30_console_button_one_00112', FALSE, NONE, 0.0, "", "Cortana : Those beams coming off of it are creating the interference we�ve been experiencing." );
						dialog_line_cortana( l_dialog_id, 5, TRUE, 'sound\dialog\mission\m30\m30_console_button_one_00113', FALSE, NONE, 0.0, "", "Cortana : We�d have to take them out to contact Infinity." );
						dialog_line_chief( l_dialog_id, 6, TRUE, 'sound\dialog\mission\m30\m30_console_button_one_00106', FALSE, NONE, 0.0, "", "Master Chief : Can you get us there?" );
						dialog_line_cortana( l_dialog_id, 7, TRUE, 'sound\dialog\mission\m30\m30_console_button_one_00107', FALSE, NONE, 0.0, "", "Cortana : Opening a gate to the first beam pylon. Pull me and let's go." );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
				 
end

script dormant f_dialog_M30_gargoyle_tease()
dprint("f_dialog_M30_gargoyle_tease");

local long l_dialog_id = DEF_DIALOG_ID_NONE();
				
					l_dialog_id = dialog_start_foreground( "M30_GARGOYLE_TEASE", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
							dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m30\m30_gargoyle_tease_00102', FALSE, NONE, 0.0, "", "Cortana : Contacts!" );
						//	dialog_line_chief( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m30\m30_gargoyle_tease_00101', FALSE, NONE, 0.0, "", "Master Chief : Where's it coming from?" );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );



end





script dormant f_dialog_m30_first_pawn_fight_start()
dprint("f_dialog_m30_first_pawn_fight_start");

local long l_dialog_id = DEF_DIALOG_ID_NONE();
				
					l_dialog_id = dialog_start_foreground( "M30_FIRST_PAWN_FIGHT_START", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
							dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m30\m30_first_pawn_fight_start_00100', FALSE, NONE, 0.0, "", "Cortana : AND they're back! " );
							dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m30\m30_first_pawn_fight_start_00101', FALSE, NONE, 0.0, "", "Cortana : Coming down the walls!" );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
	

end


script dormant f_dialog_M30_knight_post()
dprint("f_dialog_M30_knight_post");

local long l_dialog_id = DEF_DIALOG_ID_NONE();
				
					l_dialog_id = dialog_start_foreground( "M30_GRASSY_HILL", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
					
							dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m30\m30_knight_vignette_00101', FALSE, NONE, 0.0, "", "Well he's just a ray of sunshine, isn't he." );
							dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m30\m30_knight_vignette_00103b', FALSE, NONE, 0.0, "", "From that peek under the hood, I'd say these constructs must be mimetic in nature." );
							
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
				 
end


script dormant f_dialog_M30_grassy_hills()
dprint("f_dialog_M30_grassy_hill");

local long l_dialog_id = DEF_DIALOG_ID_NONE();
				
					l_dialog_id = dialog_start_foreground( "M30_GRASSY_HILL", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
							dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m30\m30_knight_vignette_00104', FALSE, NONE, 0.0, "", "More of them?" );
							dialog_line_chief( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m30\m30_knight_vignette_00106', FALSE, NONE, 0.0, "", "Similar phasing activity at the edge of our sensors. We're about to get busy." );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
				 
end

script dormant f_dialog_M30_grassy_hills_second()
dprint("f_dialog_M30_grassy_hill_second");

local long l_dialog_id = DEF_DIALOG_ID_NONE();
				
					l_dialog_id = dialog_start_foreground( "M30_GRASSY_HILL_SECOND", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
					dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\global\global_chatter_00119', FALSE, NONE, 0.0, "", "Cortana : Hostiles!" );
							//dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m30\m30_grassy_hills_start_00103', FALSE, NONE, 0.0, "", "Cortana : Incoming!" );
						//	dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m30\m30_grassy_hills_start_00104', FALSE, NONE, 0.0, "", "Cortana : It's spawning some sort of drone!" );
					//		dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m30\m30_grassy_hills_start_00105', FALSE, NONE, 0.0, "", "Cortana : Eyes up! In the air!" );
						//	dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m30\m30_grassy_hills_start_00106', FALSE, NONE, 0.0, "", "Cortana : Because bad guys weren't bad enough without giving birth to each other?" );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
				// sleep_s(2);
				// wake(f_dialog_M30_grassy_hills_third);
end

script dormant f_dialog_m30_knight_resurrection()
dprint("f_dialog_m30_knight_resurrection");

local long l_dialog_id = DEF_DIALOG_ID_NONE();
				
					l_dialog_id = dialog_start_foreground( "M30_KNIGHT_RESURRECTION", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
							dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m30\M30_grassy_hills_start_00110', FALSE, NONE, 0.0, "", "Cortana : Is he bringing the big one back to life???" );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
				 
end

script dormant f_dialog_m30_playing_catch()
dprint("f_dialog_m30_playing_catch");

local long l_dialog_id = DEF_DIALOG_ID_NONE();
				
					l_dialog_id = dialog_start_foreground( "M30_PLAYING_CATCH", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
							dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m30\M30_grassy_hills_start_00117', FALSE, NONE, 0.0, "", "Cortana : Careful! It caught the grenade!" );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
				 
end

/*script dormant f_dialog_M30_grassy_hills_third()
dprint("f_dialog_M30_grassy_hills_third");

local long l_dialog_id = DEF_DIALOG_ID_NONE();
				
					l_dialog_id = dialog_start_foreground( "M30_GRASSY_HILL_THIRD", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m30\m30_grassy_hills_start_00107', FALSE, NONE, 0.0, "", "Cortana : Up on the cliffs! Watching us!" );
							dialog_line_chief( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m30\m30_grassy_hills_start_00108', FALSE, NONE, 0.0, "", "Master Chief : Sentinels?" );
						dialog_line_cortana( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m30\m30_grassy_hills_start_00109', FALSE, NONE, 0.0, "", "Cortana : Negative! Something else!" );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );

				 
end*/



script dormant f_dialog_m30_plyon_1_lightbridge()
dprint("f_dialog_m30_plyon_1_lightbridge");


				
					l_dlg_m30_plyon_1_lightbridge = dialog_start_foreground( "M30_PYLON_1_LIGHTBRIDGE", l_dlg_m30_plyon_1_lightbridge, TRUE, DEF_DIALOG_STYLE_QUEUE(), TRUE, "", 0.25 );    
									dialog_line_chief( l_dlg_m30_plyon_1_lightbridge, 0, TRUE, 'sound\dialog\mission\m30\m30_prepawn_00100', FALSE, NONE, 0.0, "", "Master Chief : Those weren't the same things we saw in the Terminus." );
									dialog_line_cortana( l_dlg_m30_plyon_1_lightbridge, 1, TRUE, 'sound\dialog\mission\m30\m30_pylon_1_lightbridge_00100', FALSE, NONE, 0.0, "", "Cortana : Similar cortical footprint as the tower A.I's." );
									dialog_line_cortana( l_dlg_m30_plyon_1_lightbridge, 2, TRUE, 'sound\dialog\mission\m30\m30_pylon_1_lightbridge_00101', FALSE, NONE, 0.0, "", "Cortana : They're connected, alright." );
							//		dialog_line_chief( l_dialog_id, 3, TRUE, 'sound\dialog\mission\m30\m30_pylon_1_lightbridge_00102', FALSE, NONE, 0.0, "", "Master Chief : Anything else?" );
							//		dialog_line_cortana( l_dialog_id, 4, TRUE, 'sound\dialog\mission\m30\m30_pylon_1_lightbridge_00103', FALSE, NONE, 0.0, "", "Cortana : From the way they crawled down those walls?" );
						//			dialog_line_cortana( l_dialog_id, 5, TRUE, 'sound\dialog\mission\m30\m30_pylon_1_lightbridge_00104', FALSE, NONE, 0.0, "", "Cortana : I'd say they've been here a lot longer than we have." );
				 l_dlg_m30_plyon_1_lightbridge = dialog_end( l_dlg_m30_plyon_1_lightbridge, TRUE, TRUE, "" );
				 
end


script dormant f_dialog_M30_hallway_1_enter()
dprint("f_dialog_M30_hallway_1_enter");

local long l_dialog_id = DEF_DIALOG_ID_NONE();
				 
					l_dialog_id = dialog_start_foreground( "M30_HALLWAY_1_ENTER", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m30\m30_hallway_1_enter_00100', FALSE, NONE, 0.0, "", "Cortana : I've discovered something interesting about our new friends. " );
						hud_play_pip_from_tag( "bink\campaign\M30_B_60" );
						dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m30\m30_hallway_1_enter_00101a', FALSE, NONE, 0.0, "", "Cortana : When the big ones explode, that momentary flash we're seeing is actually a data purge." );
						dialog_line_chief( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m30\m30_hallway_1_enter_00102', FALSE, NONE, 0.0, "", "Master Chief : Can you tap into it?" );
						dialog_line_cortana( l_dialog_id, 3, TRUE, 'sound\dialog\mission\m30\m30_hallway_1_enter_00106', FALSE, NONE, 0.0, "", "Cortana : So far, I�ve pulled multiple strings referring to the big ones as Promethean Knights." );
						dialog_line_cortana( l_dialog_id, 4, TRUE, 'sound\dialog\mission\m30\m30_hallway_1_enter_00107', FALSE, NONE, 0.0, "", "Cortana : Beyond that, though, things get a bit dense." );
						
					//	dialog_line_chief( l_dialog_id, 5, TRUE, 'sound\dialog\mission\m30\M30_hallway_1_enter_00108', FALSE, NONE, 0.0, "", "Master Chief : Anything on those crawlers or the things that were watching us?" );
					//	dialog_line_cortana( l_dialog_id, 6, TRUE, 'sound\dialog\mission\m30\M30_hallway_1_enter_00109', FALSE, NONE, 0.0, "", "Cortana : Not yet, but I�ll let you know when I�ve dug in a little more." );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
				
end


script dormant f_dialog_m20_callout_ss()
dprint("f_dialog_callout_hostiles");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "HOSTILES", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
						
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end

script dormant f_dialog_m20_callout_taking_fire()
dprint("f_dialog_callout_taking_fire");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "TAKING_FIRE", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\global\global_chatter_00180', FALSE, NONE, 0.0, "", "Cortana : Taking fire." );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end


script dormant f_dialog_m30_canyons_1_rock_hallway()
dprint("f_dialog_m30_canyons_1_rock_hallway");

local long l_dialog_id = DEF_DIALOG_ID_NONE();
				 
					l_dialog_id = dialog_start_foreground( "M30_CANYONS_1_ROCK_HALLWAY", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
									hud_play_pip_from_tag( "bink\campaign\M30_C1_60" );
									thread(f_dialog_play_pip_m30_C_subtitles());
									start_radio_transmission( "unidentified_transmission_name" );

									sleep_s(1);
									dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m30\m30_canyons_1_rock_hallway_00101', FALSE, NONE, 0.0, "", "Cortana : The relay interference is increasing. " );
									dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m30\m30_canyons_1_rock_hallway_00102', FALSE, NONE, 0.0, "", "Cortana : We must be getting close to the Pylon." );
									end_radio_transmission();
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
				 
end

script static void f_dialog_play_pip_m30_C_subtitles()
	dialog_play_subtitle('sound\dialog\mission\m30\m30_delrio_transmission_full_00101');
end

script dormant f_dialog_m30_pylonone_hallwaytwo_enter()
	dprint("f_dialog_m30_pylonone_hallwaytwo_enter");
	
	local long l_dialog_id = DEF_DIALOG_ID_NONE();
	l_dialog_id = dialog_start_foreground( "M30_PYLONONE_HALLWAYTWO_ENTER", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
	
	//		dialog_line_chief( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m30\m30_hallway_2_enter_00100', FALSE, NONE, 0.0, "", "Master Chief : Is it just me, or are we seeing more of these things the closer we get to that pylon?" );
	//		dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m30\m30_hallway_2_enter_00101', FALSE, NONE, 0.0, "", "Cortana : It�s possible the Prometheans don�t want us using their relay--" );
	
	sleep_s(2);

	hud_set_rampancy_intensity(player0, 0.4);
	hud_set_rampancy_intensity(player1, 0.4);
	hud_set_rampancy_intensity(player2, 0.4);
	hud_set_rampancy_intensity(player3, 0.4);

  	sleep_s(3);

	dialog_line_chief( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m30\m30_hallway_2_enter_00102', FALSE, NONE, 0.0, "", "Master Chief : What�s that distortion?" );

	hud_set_rampancy_intensity(player0, 0);
  	hud_set_rampancy_intensity(player1, 0);
  	hud_set_rampancy_intensity(player2, 0);
  	hud_set_rampancy_intensity(player3, 0);
			
	hud_play_pip_from_tag( bink\campaign\M30_D_60 );
	thread(f_dialog_play_pip_m30_d_subtitles());

	sleep_s(3);
	
	hud_set_rampancy_intensity(player0, 0.2);
	hud_set_rampancy_intensity(player1, 0.2);
	hud_set_rampancy_intensity(player2, 0.2);
	hud_set_rampancy_intensity(player3, 0.2);
	
	sleep_s(3);
	hud_set_rampancy_intensity(player0, 0);
	hud_set_rampancy_intensity(player1, 0);
	hud_set_rampancy_intensity(player2, 0);
	hud_set_rampancy_intensity(player3, 0);
	
	sleep_s(16);
	
	//		dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m30\m30_hallway_2_enter_00103', FALSE, NONE, 0.0, "", "Cortana : That�s...me. Something about moving through those portals is increasing the load on my systems." );
	//		dialog_line_chief( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m30\m30_hallway_2_enter_00104', FALSE, NONE, 0.0, "", "Master Chief : Are you-- are you going to be OK?" );
	//		dialog_line_cortana( l_dialog_id, 3, TRUE, 'sound\dialog\mission\m30\m30_hallway_2_enter_00105', FALSE, NONE, 0.0, "", "Cortana : Don't worry." );
		//	dialog_line_cortana( l_dialog_id, 4, TRUE, 'sound\dialog\mission\m30\m30_hallway_2_enter_00106', FALSE, NONE, 0.0, "", "Cortana : I�ve held off rampancy this long, haven�t I?" );
	//		dialog_line_cortana( l_dialog_id, 5, TRUE, 'sound\dialog\mission\m30\m30_hallway_2_enter_00107', FALSE, NONE, 0.0, "", "Master Chief : Who said I was worried?" );
					
		
	l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end

script static void f_dialog_play_pip_m30_d_subtitles()
	sleep(90);
	dialog_play_subtitle('sound\dialog\mission\m30\m30_hallway_2_enter_00103');
	sleep(9);
	dialog_play_subtitle('sound\dialog\mission\m30\m30_hallway_2_enter_00104');
	sleep(30);
	dialog_play_subtitle('sound\dialog\mission\m30\m30_hallway_2_enter_00105');
	sleep(20);
	dialog_play_subtitle('sound\dialog\mission\m30\m30_hallway_2_enter_00106');
end

script dormant f_dialog_m30_pylonone_reveal()
dprint("f_dialog_m30_pylonone_reveal");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
				 
				 l_dialog_id = dialog_start_foreground( "M30_PYLONONE_REVEAL", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m30\m30_pyloneone_reveal_00102', FALSE, NONE, 0.0, "", "Cortana : That's the target, but looks like the entrance is shielded." );
						//dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m30\m30_pyloneone_reveal_00103', FALSE, NONE, 0.0, "", "Cortana : Not like that's stopped you before." );
						dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m30\m30_pyloneone_reveal_00104', FALSE, NONE, 0.0, "", "Cortana : Let's figure out how to take it down." );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );

end


script dormant f_dialog_m30_plyonone_core_close()
dprint("f_dialog_m30_plyonone_core_close");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
				 
				 b_one_core_down = TRUE;
				 l_dialog_id = dialog_start_foreground( "M30_PYLONONE_CORE_CLOSE", l_dialog_id, TRUE, DEF_DIALOG_STYLE_SKIP(), FALSE, "", 0.25 );    
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m30\m30_pylonone_core_one_00100', FALSE, NONE, 0.0, "", "Cortana : One of the shield's power cores. Take it out." );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );

end




script dormant f_dialog_m30_plyonone_core_one()
dprint("f_dialog_m30_plyonone_core_one");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
				 
				 l_dialog_id = dialog_start_foreground( "M30_PYLONONE_CORE_ONE", l_dialog_id, TRUE, DEF_DIALOG_STYLE_SKIP(), FALSE, "", 0.25 );    
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m30\m30_pylonone_core_one_00103', FALSE, NONE, 0.0, "", "Cortana : I read two more cores on our level." );
						dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m30\m30_pylonone_core_one_00104', FALSE, NONE, 0.0, "", "Cortana : Hit them before you climb all the way up." );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );

end


script dormant f_dialog_m30_plyonone_core_two()
dprint("f_dialog_m30_plyonone_core_two");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
				 b_two_core_down = TRUE;
				 l_dialog_id = dialog_start_foreground( "M30_PYLONONE_CORE_TWO", l_dialog_id, TRUE, DEF_DIALOG_STYLE_SKIP(), FALSE, "", 0.25 );    	
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m30\m30_pylonone_core_two_00100', FALSE, NONE, 0.0, "", "Cortana : Well done, Chief. One to go." );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );

end

script dormant f_dialog_m30_pylonone_nocores_down()
dprint("f_dialog_m30_pylonone_nocores_down");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
				 l_dialog_id = dialog_start_foreground( "M30_PYLONONE_NOCORES_DOWN", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    			
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m30\M30_pylonone_bridgetoelevator_00100', FALSE, NONE, 0.0, "", "Cortana : The Prometheans must have activated the pylon's security protocols." );
						dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m30\M30_pylonone_bridgetoelevator_00101', FALSE, NONE, 0.0, "", "Cortana : I'm tracking three power sources below. Let's see what we can do about them." );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );

end

script dormant f_dialog_m30_pylonone_nocores_down_2()
dprint("f_dialog_m30_pylonone_nocores_down_2");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
				 l_dialog_id = dialog_start_foreground( "M30_PYLONONE_NOCORES_DOWN_2", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );      				
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m30\M30_pylonone_bridgetoelevator_00103', FALSE, NONE, 0.0, "", "Cortana : Wishing's not going to make it happen, Chief. Take out those power cores!" );
						
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );

end



script dormant f_dialog_M30_pylonone_nocores_down_3()
dprint("f_dialog_M30_pylonone_nocores_down_3");

local long l_dialog_id = DEF_DIALOG_ID_NONE();
				
					l_dialog_id = dialog_start_foreground( "M30_PYLONONE_NOCORES_DOWN_3", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
							dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m30\M30_pylonone_bridgetoelevator_00102', FALSE, NONE, 0.0, "", "Cortana : This shield's not going anywhere until those power cores are all offline." );
							
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
				 
end


script dormant f_dialog_m30_pylonone_onecoredown()
dprint("f_dialog_m30_pylonone_onecoredown");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M30_PYLONONE_ONECOREDOWN", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    				
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m30\M30_pylonone_bridgetoelevator_00104', FALSE, NONE, 0.0, "", "Cortana : Looks like one core wasn't enough. We'd better take care of those other two as well." );
						
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );

end



script dormant f_dialog_m30_pylonone_twocoredown()
dprint("f_dialog_m30_pylonone_twocoredown");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M30_PYLONONE_TWOCOREDOWN", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    				
					  	dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m30\M30_pylonone_bridgetoelevator_00105', FALSE, NONE, 0.0, "", "Cortana : Shield's still up. Well, you know what they say: third time's the charm.." );
							//dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m30\M30_pylonone_bridgetoelevator_00106', FALSE, NONE, 0.0, "", "Cortana : Let's get that last power core down so we can get upstairs..");
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );

end

script dormant f_dialog_m30_pylonone_twocoredown_2()
dprint("f_dialog_m30_pylonone_twocoredown");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M30_PYLONONE_TWOCOREDOWN_2", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    				
					  	dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m30\M30_pylonone_bridgetoelevator_00106', FALSE, NONE, 0.0, "", "Cortana : Let's get that last power core down so we can get upstairs.");
							
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );

end


script dormant f_dialog_m30_pylonone_core_three()
dprint("f_dialog_m30_pylonone_core_three");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
				 
					l_dialog_id = dialog_start_foreground( "M30_PYLONONE_CORE_THREE", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m30\m30_pylonone_core_three_00100', FALSE, NONE, 0.0, "", "Cortana : Great. That's all the cores. Head for the top of the pylon." );
					l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );

				
end

script static void f_dialog_play_pip_m30_e_subtitles()
	dialog_play_subtitle('sound\dialog\mission\m30\m30_delrio_transmission_full_00102');
end

script dormant f_dialog_m30_start_ramp_enter()
	dprint("f_dialog_m30_start_ramp_enter");
	local long l_dialog_id = DEF_DIALOG_ID_NONE();
				 
					l_dialog_id = dialog_start_foreground( "M30_START_RAMP_ENTER", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m30\m30_pylonone_core_three_00104', FALSE, NONE, 0.0, "", "Cortana : Chief, look at this:" );
						
						hud_play_pip_from_tag( "bink\campaign\M30_E_60" );
						thread(f_dialog_play_pip_m30_e_subtitles());
						
						start_radio_transmission( "delrio_transmission_name" );
						//dialog_line_npc( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m30\m30_delrio_transmission_full_00102', FALSE, NONE, 0.0, "", "Del Rio :  [we're ap]proaching a la[rge cel]estial bod[y of F]orerunner ori[gin. The pla]netoid's metallic", TRUE);
						sleep_s(2);
						dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m30\m30_pylonone_core_three_00106', FALSE, NONE, 0.0, "", "Cortana : That�s Requiem." );
						end_radio_transmission();
						dialog_line_cortana( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m30\m30_pylonone_core_three_00107', FALSE, NONE, 0.0, "", "Cortana : They�re not inside at all - they�re moving into orbit." );
						
						//dialog_line_chief( l_dialog_id, 4, TRUE, 'sound\dialog\mission\m30\m30_pylonone_core_three_00108', FALSE, NONE, 0.0, "", "Master Chief : Can you respond?" );
						//dialog_line_cortana( l_dialog_id, 5, TRUE, 'sound\dialog\mission\m30\m30_pylonone_core_three_00109', FALSE, NONE, 0.0, "", "Cortana : Not until we get these beams down." );
				  l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end


script dormant f_dialog_m30_pylonone_elevator_ride()
	dprint("f_dialog_m30_pylonone_elevator_ride");
	
	local long l_dialog_id = DEF_DIALOG_ID_NONE();
	l_dialog_id = dialog_start_foreground( "M30_PYLONONE_ELEVATOR_RIDE", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
	
	hud_play_pip_from_tag( "bink\campaign\M30_F_60" );
	thread(f_dialog_play_pip_m30_f_subtitles());
						
	start_radio_transmission( "delrio_transmission_name" );
					
						sleep_s(5.5);
	
	//dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m30\m30_pylonone_elevator_ride_00100', FALSE, NONE, 0.0, "", "Del Rio : Captain Andrew Del Rio hailing survivors of the (garbled) Forward Unto Dawn", TRUE);
	end_radio_transmission();
						
	
	dialog_line_chief( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m30\m30_pylonone_elevator_ride_00101', FALSE, NONE, 0.0, "", "Master Chief : Did he say Forward Unto Dawn?" );
	dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m30\m30_pylonone_elevator_ride_00102', FALSE, NONE, 0.0, "", "Cortana : They must have intercepted our distress beacon!" );
	dialog_line_chief( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m30\m30_pylonone_elevator_ride_00103', FALSE, NONE, 0.0, "", "Master Chief : The beacon was pulled into Requiem with us." );
	dialog_line_chief( l_dialog_id, 3, TRUE, 'sound\dialog\mission\m30\m30_pylonone_elevator_ride_00104', FALSE, NONE, 0.0, "", "Master Chief : If they try to follow it�" );
	dialog_line_cortana( l_dialog_id, 4, TRUE, 'sound\dialog\mission\m30\m30_pylonone_elevator_ride_00110', FALSE, NONE, 0.0, "", "Cortana : ...they�ll get caught in gravity well." );
  	dialog_line_cortana( l_dialog_id, 5, TRUE, 'sound\dialog\mission\m30\m30_pylonone_elevator_ride_00107', FALSE, NONE, 0.0, "", "Cortana: I'll keep trying to warn them; you just get that beam down." );
	l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end

script static void f_dialog_play_pip_m30_f_subtitles()
	dialog_play_subtitle('sound\dialog\mission\m30\M30_pylonone_elevator_ride_00100');
end

script dormant f_dialog_M30_pylonone_top_enter()
		dprint("f_dialog_M30_pylonone_top_enter");
		local long l_dialog_id = DEF_DIALOG_ID_NONE();
				 
					l_dialog_id = dialog_start_foreground( "M30_PYLONONE_TOP_ENTER", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
								dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m30\M30_pylonone_elevator_ride_00108', FALSE, NONE, 0.0, "", "Cortana : See if you can disable the beam mechanism." );
				  l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );


end

script dormant f_dialog_m30_pylonone_end()
dprint("f_dialog_m30_pylonone_end");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
				 
					l_dialog_id = dialog_start_foreground( "M30_PYLONONE_END", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m30\m30_pylonone_end_00108', FALSE, NONE, 0.0, "", "Cortana : It�s working - the signal from the relay is starting to clear up." );
						start_radio_transmission( "delrio_transmission_name" );
						dialog_line_npc( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m30\m30_pylonone_end_00109', FALSE, NONE, 0.0, "", "Del Rio : eetcom Actual. We�ve detected a UNSC beacon coming from somewhere INSIDE the planet", TRUE);
						end_radio_transmission();
						dialog_line_chief( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m30\m30_pylonone_end_00110', FALSE, NONE, 0.0, "", "Master Chief : They haven�t hit the gravity well yet." );
						dialog_line_cortana( l_dialog_id, 3, TRUE, 'sound\dialog\mission\m30\m30_pylonone_end_00111', FALSE, NONE, 0.0, "", "Cortana : There�s still too much interference to warn them." );
						dialog_line_cortana( l_dialog_id, 4, TRUE, 'sound\dialog\mission\m30\m30_pylonone_end_00112', FALSE, NONE, 0.0, "", "Cortana : We�ve got to disable that other beam before they�re pulled in like we were." );
				//		dialog_line_cortana( l_dialog_id, 5, TRUE, 'sound\dialog\mission\m30\m30_observatory_second_00106', FALSE, NONE, 0.0, "", "Cortana : We can�t go directly to the second pylon, but I�ve instructed the portal network to route us back through the central hub." );
					//	dialog_line_cortana( l_dialog_id, 6, TRUE, 'sound\dialog\mission\m30\m30_observatory_second_00107', FALSE, NONE, 0.0, "", "Cortana : Or at least, I think that�s what I told it." );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
				
end




script dormant f_dialog_m30_observatory_second()
dprint("f_dialog_m30_observatory_second");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
				 
					l_dialog_id = dialog_start_foreground( "M30_observatory_second", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m30\m30_observatory_second_00108', FALSE, NONE, 0.0, "", "Cortana : I was wondering why Infinity hadn�t encountered the Covenant yet." );
						dialog_line_chief( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m30\m30_observatory_second_00109', FALSE, NONE, 0.0, "", "Master Chief : What are they doing here?" );
						dialog_line_cortana( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m30\m30_observatory_second_00110', FALSE, NONE, 0.0, "", "Cortana : They�re heading to the second pylon as well." );
						dialog_line_chief( l_dialog_id, 3, TRUE, 'sound\dialog\mission\m30\m30_observatory_second_00111', FALSE, NONE, 0.0, "", "Master Chief : That can�t be a coincidence." );
					//	dialog_line_cortana( l_dialog_id, 4, TRUE, 'sound\dialog\mission\m30\m30_observatory_second_00112', FALSE, NONE, 0.0, "", "Cortana : Weren�t you the one who said one mystery at a time?" );
					//	dialog_line_chief( l_dialog_id, 5, TRUE, 'sound\dialog\mission\m30\m30_observatory_second_00113', FALSE, NONE, 0.0, "", "Master Chief : Was I?" );
					//	dialog_line_cortana( l_dialog_id, 6, TRUE, 'sound\dialog\mission\m30\m30_observatory_second_00114', FALSE, NONE, 0.0, "", "Cortana : C�mon. Into the portal." );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );

end

script dormant f_dialog_m30_plyontwo_drop_pods()
dprint("f_dialog_m30_plyontwo_drop_pods");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
				 
					l_dialog_id = dialog_start_foreground( "M30_PYLONTWO_DROP_PODS", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
								dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m30\m30_pylontwo_drop_pods_00100', FALSE, NONE, 0.0, "", "Cortana : Drop pods!" );
				  l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );

end

script dormant f_dialog_m30_plyontwo_enemy()
dprint("f_dialog_m30_plyontwo_enemy");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
				 
					l_dialog_id = dialog_start_foreground( "M30_PYLONTWO_ENEMY", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );   
					dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m30\M30_pylontwo_drop_pods_00102', FALSE, NONE, 0.0, "", "Cortana : The enemy of my enemy." );
					dialog_line_chief( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m30\M30_pylontwo_drop_pods_00103', FALSE, NONE, 0.0, "", "Master Chief : They're ALL our enemy." );
				  l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );

end


script dormant f_dialog_m30_pylontwo_transmission_one()
dprint("f_dialog_m30_pylontwo_transmission_one");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
				 
					l_dialog_id = dialog_start_foreground( "M30_PYLONTWO_TRANSMISSION_ONE", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );   
									
									start_radio_transmission( "delrio_transmission_name" ); 

									hud_play_pip_from_tag( "bink\campaign\M30_I_60" );
									thread(f_dialog_play_pip_m30_i_subtitles());

										// dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m30\M30_start_ramp_enter_00100', FALSE, NONE, 0.0, "", "Del Rio : Fleetcom, we have detected what appears to be wreckage from the UNSC For-", TRUE);
										sleep_s(5);
										end_radio_transmission();
									dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m30\M30_start_ramp_enter_00101', FALSE, NONE, 0.0, "", "Cortana : The relay's signal is breaking up again. We're almost to the beam." );
										
				  l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );

end

script static void f_dialog_play_pip_m30_i_subtitles()
	// sleep_s(1);
	dialog_play_subtitle('sound\dialog\mission\m30\m30_delrio_transmission_full_00104');
end

script dormant f_dialog_m30_pylontwo_arrival()
dprint("f_dialog_m30_pylontwo_arrival");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
				 
					l_dialog_id = dialog_start_foreground( "M30_PYLONTWO_ARRIVAL", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    				
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m30\m30_pylontwo_arrival_00107', FALSE, NONE, 0.0, "", "Cortana : Sounds like the Prometheans don�t want the Covenant here either." );
						hud_play_pip_from_tag( bink\campaign\M30_H_60 );
						dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m30\m30_pylontwo_arrival_00108', FALSE, NONE, 0.0, "", "Cortana : The battlenet�s already lighting up with reports of resistance all around the pylon." );
						//dialog_line_chief( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m30\m30_pylontwo_arrival_00109', FALSE, NONE, 0.0, "", "Master Chief : Good. Maybe they�ll keep each other busy long enough for us to get that beam down." );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );

end

script dormant f_dialog_m30_pylontwo_reveal()
dprint("f_dialog_m30_pylontwo_reveal");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
				
					l_dialog_id = dialog_start_foreground( "M30_PYLONTWO_REVEAL", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    				
						//dialog_line_chief( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m30\m30_pylontwo_reveal_00100', FALSE, NONE, 0.0, "", "Master Chief : The Covenant beat us here." );
						//dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m30\m30_pylontwo_reveal_00101', FALSE, NONE, 0.0, "", "Cortana : It appears that the Pylon's security slowed them down. " );
					
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );

end

script dormant f_dialog_m30_pylontwo_banshees()
dprint("f_dialog_m30_pylontwo_banshee");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
				
					l_dialog_id = dialog_start_foreground( "M30_PYLONTWO_BANSHEE", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    				
						dialog_line_cortana( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m30\M30_pylontwo_banshees_00100', FALSE, NONE, 0.0, "", "Cortana : Eyes up! We've got Banshees! " );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );

end



script dormant f_dialog_m30_pylontwo_bridgetoelevator()
dprint("f_dialog_m30_pylontwo_bridgetoelevator");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
				 
					l_dialog_id = dialog_start_foreground( "M30_BRIDGETOELEVATOR", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    				
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m30\m30_pylontwo_bridgetoelevator_00100', FALSE, NONE, 0.0, "", "Cortana : Same protocols as the other pylon." );
						dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m30\m30_pylontwo_bridgetoelevator_00101', FALSE, NONE, 0.0, "", "Cortana : These shields probably run off power cores as well." );
						dialog_line_cortana( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m30\m30_pylontwo_bridgetoelevator_00102', FALSE, NONE, 0.0, "", "Cortana : We better find them." );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
				 

end

script dormant f_dialog_m30_pylontwo_core_one()
dprint("f_dialog_m30_pylontwo_core_one");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M30_PYLONTWO_CORE_ONE", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    				
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m30\m30_pylontwo_core_one_00100', FALSE, NONE, 0.0, "", "Cortana : Power core down. Shield's weak, but still online." );
						//dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m30\m30_pylontwo_core_one_00101', FALSE, NONE, 0.0, "", "Cortana : This is just like the other pylon." );
						dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m30\m30_pylontwo_core_one_00102', FALSE, NONE, 0.0, "", "Cortana : Take out the other two power cores and we can access the pylon." );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end

script dormant f_dialog_m30_pylontwo_core_two()
dprint("f_dialog_m30_pylontwo_core_two");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M30_PYLONTWO_CORE_TWO", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    				
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m30\m30_pylontwo_core_two_00100', FALSE, NONE, 0.0, "", "Cortana : Second power core offline. Good job, Chief." );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end

script dormant f_dialog_m30_pylontwo_core_three()
dprint("f_dialog_m30_pylontwo_core_three");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M30_PYLONTWO_CORE_THREE", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    				
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m30\m30_pylontwo_core_three_00100', FALSE, NONE, 0.0, "", "Cortana : That'll do it. Shields should be down. Get up to that beam!" );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end

script dormant f_dialog_m30_pylontwo_hallway()
dprint("f_dialog_m30_pylontwo_hallway");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
				 
					l_dialog_id = dialog_start_foreground( "M30_PYLONTWO_HALLWAY", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
					start_radio_transmission( "delrio_transmission_name" );
					hud_play_pip_from_tag( "bink\campaign\M30_J_60" );
					thread(f_dialog_play_pip_m30_j_subtitles());
					
								//					dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m30\m30_delrio_transmission_full_00104J_pip', FALSE, NONE, 0.0, "", "Del Rio : light source is an aperture of some sort. Will advise once we've reached", TRUE);					
									sleep_s(5);
									end_radio_transmission();
						dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m30\m30_pylontwo_hallway_1_enter_00106', FALSE, NONE, 0.0, "", "Cortana : They�ve found the opening." );
					//	dialog_line_chief( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m30\m30_pylontwo_hallway_1_enter_00107', FALSE, NONE, 0.0, "", "Master Chief : How close are they?" );
					//	dialog_line_cortana( l_dialog_id, 3, TRUE, 'sound\dialog\mission\m30\m30_pylontwo_hallway_1_enter_00108', FALSE, NONE, 0.0, "", "Cortana : 800,000 kilometers. ETA, six minutes, give or take." );
						dialog_line_cortana( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m30\m30_pylontwo_hallway_1_enter_00109', FALSE, NONE, 0.0, "", "Cortana : We can still warn them but we�re going to have to hurry up to that relay once the beam is down." );
						//dialog_line_chief( l_dialog_id, 7, TRUE, 'sound\dialog\mission\m30\m30_pylontwo_hallway_1_enter_00107', FALSE, NONE, 0.0, "", "Master Chief : Are you sure we can use the relay to contact the ship?" );
						//dialog_line_cortana( l_dialog_id, 8, TRUE, 'sound\dialog\mission\m30\m30_pylontwo_hallway_1_enter_00108', FALSE, NONE, 0.0, "", "Cortana : Not particularly, but we don�t have much of a choice, do we?" );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );

end

script static void f_dialog_play_pip_m30_j_subtitles()
	// sleep_s(1);
	dialog_play_subtitle('sound\dialog\mission\m30\m30_delrio_transmission_full_00104');
end

script dormant f_dialog_m30_pylontwo_hallway_ghost()
dprint("f_dialog_m30_pylontwo_hallway_ghost");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
				 
					l_dialog_id = dialog_start_foreground( "M30_PYLONTWO_HALLWAY_GHOST", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );   
						 start_radio_transmission( "delrio_transmission_name" );
						dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m30\m30_pylontwo_hallway_1_enter_00105', FALSE, NONE, 0.0, "", "Del Rio : light source is an aperture of some sort. Will advise once we've reached", TRUE);
						end_radio_transmission();
						dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m30\m30_pylontwo_hallway_1_enter_00106', FALSE, NONE, 0.0, "", "Cortana : They�ve found the opening." );
					//	dialog_line_chief( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m30\m30_pylontwo_hallway_1_enter_00107', FALSE, NONE, 0.0, "", "Master Chief : How close are they?" );
					//	dialog_line_cortana( l_dialog_id, 3, TRUE, 'sound\dialog\mission\m30\m30_pylontwo_hallway_1_enter_00108', FALSE, NONE, 0.0, "", "Cortana : 800,000 kilometers. ETA, six minutes, give or take." );
						dialog_line_cortana( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m30\m30_pylontwo_hallway_1_enter_00109', FALSE, NONE, 0.0, "", "Cortana : We can still warn them but we�re going to have to hurry up to that relay once the beam is down." );
						//dialog_line_chief( l_dialog_id, 7, TRUE, 'sound\dialog\mission\m30\m30_pylontwo_hallway_1_enter_00107', FALSE, NONE, 0.0, "", "Master Chief : Are you sure we can use the relay to contact the ship?" );
						//dialog_line_cortana( l_dialog_id, 8, TRUE, 'sound\dialog\mission\m30\m30_pylontwo_hallway_1_enter_00108', FALSE, NONE, 0.0, "", "Cortana : Not particularly, but we don�t have much of a choice, do we?" );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );

end

script static void f_dialog_play_pip_m30_k_subtitles()
	sleep_s(0.04);
	dialog_play_subtitle('sound\dialog\mission\m30\M30_pylontwo_elevator_ride_00105');
	sleep_s(1.06);
	dialog_play_subtitle('sound\dialog\mission\m30\M30_pylontwo_elevator_ride_00106');
	sleep_s(0.03);
	dialog_play_subtitle('sound\dialog\mission\m30\M30_pylontwo_elevator_ride_00107');
	sleep_s(0.11);
	dialog_play_subtitle('sound\dialog\mission\m30\M30_pylontwo_elevator_ride_00108');
	
	dialog_play_subtitle('sound\dialog\mission\m30\M30_pylontwo_elevator_ride_00109');
	sleep_s(0.15);
	dialog_play_subtitle('sound\dialog\mission\m30\M30_pylontwo_elevator_ride_00110');
	sleep_s(1.81);
	dialog_play_subtitle('sound\dialog\mission\m30\M30_pylontwo_elevator_ride_00111');
	sleep_s(0.61);
	dialog_play_subtitle('sound\dialog\mission\m30\M30_pylontwo_elevator_ride_00112');
	sleep_s(0.11);
	dialog_play_subtitle('sound\dialog\mission\m30\M30_pylontwo_elevator_ride_00113');
	sleep_s(0.47);
	dialog_play_subtitle('sound\dialog\mission\m30\M30_pylontwo_elevator_ride_00114');
	sleep_s(1.85);
	dialog_play_subtitle('sound\dialog\mission\m30\M30_pylontwo_elevator_ride_00115');
	dialog_play_subtitle('sound\dialog\mission\m30\M30_pylontwo_elevator_ride_00116');
end

script dormant f_dialog_m30_pylontwo_elevator_ride()
	dprint("f_dialog_m30_pylontwo_elevator_ride");

	local long l_dialog_id = DEF_DIALOG_ID_NONE();
	l_dialog_id = dialog_start_foreground( "M30_PYLONTWO_ELEVATOR_RIDE", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    

	hud_play_pip_from_tag( "bink\campaign\M30_K_60" );
	thread(f_dialog_play_pip_m30_k_subtitles());
								
	start_radio_transmission( "delrio_transmission_name" );
	//		dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m30\m30_pylontwo_elevator_ride_00105', FALSE, NONE, 0.0, "", "Del Rio : UNSC Infinity to Survivor, Forward Unto Dawn.", TRUE);
	//		dialog_line_npc( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m30\m30_pylontwo_elevator_ride_00106', FALSE, NONE, 0.0, "", "Del Rio : Reading a faint IFF tag near the planetary core. Do you read?", TRUE);
			//dialog_line_cortana( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m30\m30_pylontwo_elevator_ride_00107', FALSE, NONE, 0.0, "", "Cortana : The planet�s core? They know we�re here!");
	//		dialog_line_cortana( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m30\m30_pylontwo_elevator_ride_00108', FALSE, NONE, 0.0, "", "Cortana : Infinity, this is UNSC AI Cortana!" );
	//	dialog_line_cortana( l_dialog_id, 3, TRUE, 'sound\dialog\mission\m30\m30_pylontwo_elevator_ride_00109', FALSE, NONE, 0.0, "", "Cortana : Do not approach Forerunner planet! Repeat, do not approach--" );
	//	dialog_line_npc( l_dialog_id, 4, TRUE, 'sound\dialog\mission\m30\m30_pylontwo_elevator_ride_00111', FALSE, NONE, 0.0, "", "Del Rio : We read you but you�re breaking up!", TRUE);
	//	dialog_line_npc( l_dialog_id, 5, TRUE, 'sound\dialog\mission\m30\m30_pylontwo_elevator_ride_00112', FALSE, NONE, 0.0, "", "Del Rio : Helm, increase speed by point-seven. Get us in there.", TRUE);
	sleep_s(53);
	
	hud_play_pip_from_tag( "" );
	end_radio_transmission();
				
	//	dialog_line_cortana( l_dialog_id, 6, TRUE, 'sound\dialog\mission\m30\m30_pylontwo_elevator_ride_00113', FALSE, NONE, 0.0, "", "Cortana : NEGATIVE, INFINITY! DO NOT ENTER THE PLANET!" );	
	//dialog_line_npc( l_dialog_id, 8, TRUE, 'sound\dialog\mission\m30\m30_pylontwo_elevator_ride_00114', FALSE, NONE, 0.0, "", "Del Rio : If you can hear us, keep transmitting-", TRUE);
	 
	//	dialog_line_cortana( l_dialog_id, 9, TRUE, 'sound\dialog\mission\m30\m30_pylontwo_elevator_ride_00115', FALSE, NONE, 0.0, "", "Cortana : NO!" );	
	//	dialog_line_cortana( l_dialog_id, 7, TRUE, 'sound\dialog\mission\m30\m30_pylontwo_elevator_ride_00116', FALSE, NONE, 0.0, "", "Cortana : Chief, you�ve got to get that beam down NOW." );	
	 
	l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end

script dormant f_dialog_m30_pylontwo_top_enter()
dprint("f_dialog_m30_pylontwo_top_enter");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M30_PYLONTWO_TOP_ENTER", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m30\m30_pylontwo_end_00113', FALSE, NONE, 0.0, "", "Cortana : Quick! Shut it down!" );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end



script dormant f_dialog_m30_pylontwo_end()
dprint("f_dialog_m30_pylontwo_end");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M30_PYLONTWO_END", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m30\m30_pylontwo_end_00114', FALSE, NONE, 0.0, "", "Cortana : Cortana to Infinity, do you copy?" );
						dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m30\m30_pylontwo_end_00115', FALSE, NONE, 0.0, "", "Cortana : Come in, Infinity!" );
						dialog_line_cortana( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m30\m30_pylontwo_end_00116', FALSE, NONE, 0.0, "", "Cortana : The interference is gone, but your suit�s transmitter's not strong enough." );
						dialog_line_chief( l_dialog_id, 3, TRUE, 'sound\dialog\mission\m30\m30_pylontwo_end_00117', FALSE, NONE, 0.0, "", "Master Chief : Route us up to the relay satellite." );
						dialog_line_cortana( l_dialog_id, 4, TRUE, 'sound\dialog\mission\m30\m30_pylontwo_end_00118', FALSE, NONE, 0.0, "", "Cortana : Already done! Go!" );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end

script dormant f_dialog_m30_observatory_final()
dprint("f_dialog_m30_observatory_final");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M30_OBSERVATORY_FINAL", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m30\m30_observatory_final_00106', FALSE, NONE, 0.0, "", "Cortana : Once we�re on the satellite, there�s bound to be a central control point." );
						dialog_line_chief( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m30\m30_observatory_final_00107', FALSE, NONE, 0.0, "", "Master Chief : The Covenant are moving towards the relay too." );
						dialog_line_cortana( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m30\m30_observatory_final_00108', FALSE, NONE, 0.0, "", "Cortana : This doesn�t make any sense!" );
						dialog_line_cortana( l_dialog_id, 3, TRUE, 'sound\dialog\mission\m30\m30_observatory_final_00109', FALSE, NONE, 0.0, "", "Cortana : Why would they care about a broadcast relay?!?" );
						dialog_line_chief( l_dialog_id, 4, TRUE, 'sound\dialog\mission\m30\m30_observatory_final_00110', FALSE, NONE, 0.0, "", "Master Chief : I�ll handle them; you just find us that control node." );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end

script dormant f_dialog_m30_donut_enter()
dprint("f_dialog_m30_donut_enter");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M30_DONUT_ENTER", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
							dialog_line_chief( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m30\m30_donut_enter_00103', FALSE, NONE, 0.0, "", "Master Chief : How much time?" );
							dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m30\m30_donut_enter_00104', FALSE, NONE, 0.0, "", "Cortana : A minute or two, max!" );
							dialog_line_cortana( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m30\m30_donut_enter_00105', FALSE, NONE, 0.0, "", "Cortana : The Covenant are making a push for something on the far side of the satellite!" );
							//dialog_line_chief( l_dialog_id, 3, TRUE, 'sound\dialog\mission\m30\m30_donut_enter_00106', FALSE, NONE, 0.0, "", "Master Chief : The control node?" );
							//dialog_line_cortana( l_dialog_id, 4, TRUE, 'sound\dialog\mission\m30\m30_donut_enter_00107', FALSE, NONE, 0.0, "", "Cortana : As good a bet as any!" );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end


script dormant f_dialog_m30_donut_signal_relay()
dprint("f_dialog_m30_donut_signal_relay");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M30_DONUT_SIGNAL_RELAY", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
							dialog_line_chief( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m30\M30_donut_context_00100', FALSE, NONE, 0.0, "", "Master Chief : Is that the signal relay?" );
							dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m30\M30_donut_context_00101', FALSE, NONE, 0.0, "", "Cortana : Yes. Now we just have to hope we can use it to warn Infinity before it's too late!" );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end


script dormant f_dialog_m30_donut_infinity_broadcast()
dprint("f_dialog_m30_donut_infinity_broadcast");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M30_DONUT_INFINITY_BROADCAST", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
							dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m30\m30_donut_transit_00100', FALSE, NONE, 0.0, "", "Cortana : Chief, you need to hear this!" );
							start_radio_transmission( "infinity_transmission_name" );
							dialog_line_npc( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m30\m30_donut_transit_00101', FALSE, NONE, 0.0, "", "Infinity Comm : We're detecting a slight gravimetric disturbance near the planetary entrance.", TRUE);
							dialog_line_npc( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m30\m30_donut_transit_00102', FALSE, NONE, 0.0, "", "Infinity Comm : Suggest altering approach vector, 43K-750K-12k.", TRUE);
							end_radio_transmission();
							dialog_line_cortana( l_dialog_id, 3, TRUE, 'sound\dialog\mission\m30\m30_donut_transit_00103', FALSE, NONE, 0.0, "", "Cortana : They're not diverting from the opening! Hurry, Chief!" );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end

script dormant f_dialog_m30_cryptum_approach()
dprint("f_dialog_m30_cryptum_approach");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M30_CRYPTUM_APPROACH", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
							//dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m30\m30_cryptum_approach_00100', FALSE, NONE, 0.0, "", "Cortana : That's it!" );
							dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m30\m30_cryptum_approach_00101', FALSE, NONE, 0.0, "", "Cortana : Wait, this isn't a typical Forerunner interface! I don't--" );
							dialog_line_chief( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m30\M30_cryptum_approach_00105', FALSE, NONE, 0.0, "", "Master Chief : We don't have time." );
							dialog_line_cortana( l_dialog_id, 3, TRUE, 'sound\dialog\mission\m30\m30_cryptum_approach_00103', FALSE, NONE, 0.0, "", "Cortana : The handles! Grab the handles!" );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
				 
	b_cryptum_approach_dialog_complete = TRUE;

end



script dormant f_dialog_m30_escape_open_vignette()
dprint("f_dialog_m30_escape_open_vignette");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M30_ESCAPE_OPEN_VIGNETTE", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
							dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m30\m30_escape_open_vignette_00103', FALSE, NONE, 0.0, "", "Cortana : That -- Didact -- he manipulated Infinity�s signal to get us to release him!" );
							dialog_line_chief( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m30\m30_escape_open_vignette_00104', FALSE, NONE, 0.0, "", "Master Chief : Later! What�s happening?" );
							dialog_line_cortana( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m30\m30_escape_open_vignette_00105', FALSE, NONE, 0.0, "", "Cortana : Moving the satellite into slipspace destabilized the core." );
							dialog_line_cortana( l_dialog_id, 3, TRUE, 'sound\dialog\mission\m30\m30_escape_open_vignette_00106', FALSE, NONE, 0.0, "", "Cortana : We�ve got to find a portal out of here before the whole network collapses!" );
						//	dialog_line_cortana( l_dialog_id, 4, TRUE, 'sound\dialog\mission\m30\m30_escape_open_vignette_00102', FALSE, NONE, 0.0, "", "Cortana : Phantom!" );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end

script dormant f_dialog_m30_escape_volume_01_a()
dprint("f_dialog_m30_escape_volume_01_a");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M30_ESCAPE_VOLUME_01_A", l_dialog_id, TRUE, DEF_DIALOG_STYLE_SKIP(), FALSE, "", 0.25 );    
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m30\m30_escape_volume_01_00100', FALSE, NONE, 0.0, "", "Cortana : Grab one of those ghosts! " );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end

script dormant f_dialog_m30_leave_ghost()
dprint("f_dialog_m30_leave_ghost");
		sleep_s(3);
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M30_LEAVE_GHOST", l_dialog_id, TRUE, DEF_DIALOG_STYLE_SKIP(), FALSE, "", 0.25 );    
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m30\M30_escape_00116', FALSE, NONE, 0.0, "", "Cortana : Chief, what are you doing?!?" );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end


script dormant f_dialog_m30_escape_volume_01_b()
dprint("f_dialog_m30_escape_volume_01_b");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M30_ESCAPE_VOLUME_01_B", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m30\m30_escape_volume_01_00102', FALSE, NONE, 0.0, "", "Cortana : Hang on, I'm going to channel energy from your shields to overdrive the Ghost's boost." );
						thread (player_escape_shield_stun (player0));
						thread (player_escape_shield_stun (player1));
						thread (player_escape_shield_stun (player2));
						thread (player_escape_shield_stun (player3));
						//dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m30\m30_escape_volume_01_00103', FALSE, NONE, 0.0, "", "Cortana : Done - now floor it! " );
						//dialog_line_cortana( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m30\m30_escape_volume_01_00104', FALSE, NONE, 0.0, "", "Cortana : And whatever you do, don't let up on the gas!" );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end


script dormant f_dialog_m30_escape_destruction_02()
dprint("f_dialog_m30_escape_destruction_02");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					
					l_dialog_id = dialog_start_foreground( "M30_ESCAPE_DESTRUCTION_02", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
							dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m30\m30_escape_infinity_1_00100', FALSE, NONE, 0.0, "", "Cortana : Emergency broadcast from Infinity!");
							start_radio_transmission( "delrio_transmission_name" );
							dialog_line_npc( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m30\m30_escape_infinity_1_00101', FALSE, NONE, 0.0, "", "Del Rio : Fleetcom, this is Infinity! ", TRUE);
							dialog_line_npc( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m30\m30_escape_infinity_1_00102', FALSE, NONE, 0.0, "", "Del Rio : We are encountering an unidentifiable gravimetric disturbance and are being pulled INSIDE a planet of FORERUNNER origin!", TRUE);
							dialog_line_npc( l_dialog_id, 3, TRUE, 'sound\dialog\mission\m30\m30_escape_infinity_1_00103', FALSE, NONE, 0.0, "", "Del Rio : Possible contact with UNSC Forward Unto Dawn! ", TRUE);
							dialog_line_npc( l_dialog_id, 4, TRUE, 'sound\dialog\mission\m30\m30_escape_infinity_1_00104', FALSE, NONE, 0.0, "", "Del Rio : Jettisoning complete log beacons at our last known!", TRUE);
							end_radio_transmission();
							dialog_line_chief( l_dialog_id, 5, TRUE, 'sound\dialog\mission\m30\m30_escape_infinity_1_00105', FALSE, NONE, 0.0, "", "Master Chief : Cortana, we need to get up there." );
							dialog_line_cortana( l_dialog_id, 6, TRUE, 'sound\dialog\mission\m30\m30_escape_infinity_1_00106', FALSE, NONE, 0.0, "", "Cortana : It's not like I can get out and push!" );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
				
end


script dormant f_dialog_m30_escape_volume_02()
dprint("f_dialog_m30_escape_volume_02");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M30_ESCAPE_VOLUME_02", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m30\M30_escape_00106', FALSE, NONE, 0.0, "", "Cortana : This is no time to be timid, Chief! Gun it!" );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end

script dormant f_dialog_m30_escape_volume_03()
dprint("f_dialog_m30_escape_volume_03");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M30_ESCAPE_VOLUME_03", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m30\m30_escape_volume_03_00100', FALSE, NONE, 0.0, "", "Cortana : Portal, up ahead!" );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end

script dormant f_dialog_m30_escape_volume_03a()
dprint("f_dialog_m30_escape_volume_03");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M30_ESCAPE_VOLUME_03", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m30\M30_escape_00100', FALSE, NONE, 0.0, "", "Cortana : This is going to be tight!!" );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end


script dormant f_dialog_m30_escape_volume_04()
dprint("f_dialog_m30_escape_volume_04");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M30_ESCAPE_VOLUME_04", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m30\M30_escape_00101', FALSE, NONE, 0.0, "", "Cortana : Keep going! Keep going!" );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end

script dormant f_dialog_m30_escape_volume_05()
dprint("f_dialog_m30_escape_volume_05");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M30_ESCAPE_VOLUME_05", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
							dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m30\M30_escape_00103', FALSE, NONE, 0.0, "", "Cortana : I didn't think we were gonna make it for a second." );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end



script dormant f_dialog_m30_escape_volume_06()
dprint("f_dialog_m30_escape_volume_06");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M30_ESCAPE_VOLUME_06", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m30\M30_escape_00102', FALSE, NONE, 0.0, "", "Cortana : Don't worry about them! Just keep going!" );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end



script dormant f_dialog_m30_escape_volume_07()
dprint("f_dialog_m30_escape_volume_07");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M30_ESCAPE_VOLUME_07", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m30\M30_escape_00107', FALSE, NONE, 0.0, "", "Cortana : The core's not going to last much longer!" );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end



script dormant f_dialog_m30_escape_volume_08()
dprint("f_dialog_m30_escape_volume_08");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M30_ESCAPE_VOLUME_08", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m30\M30_escape_00111', FALSE, NONE, 0.0, "", "Cortana : The core's just an artificial construct, like the rest of the planet! It's trying to compensate for the loss of the satellite!" );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end


script dormant f_dialog_m30_escape_volume_09()
dprint("f_dialog_m30_escape_volume_09");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M30_ESCAPE_VOLUME_09", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m30\M30_escape_00108', FALSE, NONE, 0.0, "", "Cortana : I know this thing can go faster than this. Now, push it!" );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end




script dormant f_dialog_m30_pre_portal_01()
dprint("f_dialog_m30_pre_portal_01");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M30_ESCAPE_VOLUME_03", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m30\M30_escape_00113', FALSE, NONE, 0.0, "", "Cortana : There has to be a portal close by." );
						dialog_line_chief( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m30\M30_escape_00114', FALSE, NONE, 0.0, "", "Master Chief : Cortana, we need to get up there." );
					//	dialog_line_cortana( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m30\M30_escape_00115', FALSE, NONE, 0.0, "", "Cortana : There has to be a portal close by." );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end



script dormant f_dialog_m30_pre_portal_02()
dprint("f_dialog_m30_escape_preportal");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M30_ESCAPE_PREPORTAL", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m30\m30_escape_preportal_00100', FALSE, NONE, 0.0, "", "Cortana : We're not going to make it!" );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end


// =================================================================================================
// =================================================================================================
// NUDGES
// =================================================================================================
// =================================================================================================


script dormant f_dialog_M30_observ_1_nudge()
	dprint("f_dialog_M30_observ_1_nudge");
	
	local long l_dialog_id = DEF_DIALOG_ID_NONE();
	l_dialog_id = dialog_start_foreground( "M30_OBSERV_1_NUDGE", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
	dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m30\M30_obswalk_00108', FALSE, NONE, 0.0, "", "Cortana : Chief, I'm not going to be much help if you don't insert me into that console." );	
	l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
	
	b_first_time_dialog_over = TRUE;
end

script dormant f_dialog_M30_observ_1_nudge_2()
	dprint("f_dialog_M30_observ_1_nudge_2");

	local long l_dialog_id = DEF_DIALOG_ID_NONE();
	l_dialog_id = dialog_start_foreground( "M30_OBSERV_1_NUDGE_2", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
	 dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m30\M30_obswalk_00109', FALSE, NONE, 0.0, "", "Cortana : Weren't you the one that said you wanted to get us home? Put me in there, already." );	
	l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
	
	b_first_time_dialog_over = TRUE;
end

script static void f_dialog_m30_objective_1()
dprint("f_dialog_m30_objective_1");
static long l_dialog_id = DEF_DIALOG_ID_NONE();
		if ( (not dialog_foreground_id_active_check(l_dialog_id)) and (not b_objective_1_complete)) then
					l_dialog_id = dialog_start_foreground( "OBJECTIVE_1", l_dialog_id,  (not b_objective_1_complete), DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 ); 
								dialog_line_cortana( l_dialog_id, 1, (not b_objective_1_complete), 'sound\dialog\mission\m30\m30_pylonone_prompt_00100', FALSE, NONE, 0.0, "", "Cortana: Chief, we won't be able to contact Infinity if we don't get to that pylon and take it down." );
				 l_dialog_id = dialog_end( l_dialog_id, b_objective_1_complete, b_objective_1_complete, "" );
		end
end



script static void f_dialog_m30_objective_2()
dprint("f_dialog_m30_objective_2");
static long l_dialog_id = DEF_DIALOG_ID_NONE();
		if ( (not dialog_foreground_id_active_check(l_dialog_id)) and (not b_objective_2_complete)) then
					l_dialog_id = dialog_start_foreground( "OBJECTIVE_2", l_dialog_id,  (not b_objective_2_complete), DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 ); 
								dialog_line_cortana( l_dialog_id, 1, (not b_objective_2_complete), 'sound\dialog\mission\m30\M30_cryptum_objective_00101', FALSE, NONE, 0.0, "", "Cortana: Chief, you need to destroy the power cores if we're going to take that pylon down." );
				 l_dialog_id = dialog_end( l_dialog_id, b_objective_2_complete, b_objective_2_complete, "" );
		end
end

script static void f_dialog_m30_objective_3()
dprint("f_dialog_m30_objective_3");
static long l_dialog_id = DEF_DIALOG_ID_NONE();
		if ( (not dialog_foreground_id_active_check(l_dialog_id)) and (not b_objective_3_complete)) then
					l_dialog_id = dialog_start_foreground( "OBJECTIVE_3", l_dialog_id,  (not b_objective_1_complete), DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 ); 
								dialog_line_cortana( l_dialog_id, 1, (not b_objective_3_complete), 'sound\dialog\mission\m30\M30_pylontwo_prompts_00103', FALSE, NONE, 0.0, "", "Cortana: Chief, there is a second pylon causing inference. We need to bring it down." );
				 l_dialog_id = dialog_end( l_dialog_id, b_objective_3_complete, b_objective_3_complete, "" );
		end
end

script static void f_dialog_m30_objective_4()
dprint("f_dialog_m30_objective_4");
static long l_dialog_id = DEF_DIALOG_ID_NONE();
		if ( (not dialog_foreground_id_active_check(l_dialog_id)) and (not b_objective_3_complete)) then
					l_dialog_id = dialog_start_foreground( "OBJECTIVE_3", l_dialog_id,  (not b_objective_1_complete), DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 ); 
								dialog_line_cortana( l_dialog_id, 1, (not b_objective_3_complete), 'sound\dialog\mission\m30\M30_cryptum_objective_00103', FALSE, NONE, 0.0, "", "Cortana: 	Chief, this is just like last time. Destroy the power cores to take down the pylon." );
				 l_dialog_id = dialog_end( l_dialog_id, b_objective_3_complete, b_objective_3_complete, "" );
		end
end

script static void f_dialog_m30_objective_5()
dprint("f_dialog_m30_objective_5");
static long l_dialog_id = DEF_DIALOG_ID_NONE();
		if ( (not dialog_foreground_id_active_check(l_dialog_id)) and (not b_objective_5_complete)) then
					l_dialog_id = dialog_start_foreground( "OBJECTIVE_5", l_dialog_id,  (not b_objective_1_complete), DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 ); 
								dialog_line_cortana( l_dialog_id, 1, (not b_objective_5_complete), 'sound\dialog\mission\m30\M30_donut_enter_00103', FALSE, NONE, 0.0, "", "Cortana: Chief, we need to get to those relay controls!" );
				 l_dialog_id = dialog_end( l_dialog_id, b_objective_5_complete, b_objective_5_complete, "" );
		end
end


/*script static void f_dialog_m60_callout_find_some_cover()
dprint("f_dialog_callout_find_some_cover");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "FIND_SOME_COVER", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\global\global_chatter_00132', FALSE, NONE, 0.0, "", "Cortana : Find some cover!" );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end

script static void f_dialog_m60_callout_atta_boy_chief()
dprint("f_dialog_callout_find_some_cover");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "FIND_SOME_COVER", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\global\global_chatter_00132', FALSE, NONE, 0.0, "", "Cortana : Atta boy, Chief" );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end

script static void f_dialog_m60_callout_only_a_few_more_left()
dprint("f_dialog_callout_find_some_cover");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "FIND_SOME_COVER", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\global\global_chatter_00132', FALSE, NONE, 0.0, "", "Cortana : Only a few more left" );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end*/

// --- End m30_dialogue.hsc ---

// --- Begin m30_narrative.hsc ---

// =================================================================================================
// =================================================================================================
// NARRATIVE SCRIPTING M30
// =================================================================================================
// =================================================================================================


// =================================================================================================
// *** GLOBALS ***
// =================================================================================================

global boolean b_didact_portal_open = FALSE;
global boolean b_was_bridge_visited = FALSE;
global boolean b_second_portal_opens = FALSE;
global boolean b_opening_vignette_over = FALSE;
global boolean b_ext1_final_fight_over = FALSE;
global boolean b_pylon_two_cores_down = FALSE;
global boolean b_objective_1_complete = FALSE;
global boolean b_objective_2_complete = FALSE;
global boolean b_objective_3_complete = FALSE;
global boolean b_objective_4_complete = FALSE;
global boolean b_objective_5_complete = FALSE;
global boolean b_relay_cine_done = FALSE;  
global boolean b_one_core_down = FALSE; 
global boolean b_two_core_down = TRUE;
global long l_dlg_insert_into = DEF_DIALOG_ID_NONE();

///////////////////////////////////////////////////////////////////////////////////
// MAIN
///////////////////////////////////////////////////////////////////////////////////
script startup M30_narrative_main()

	print ("::: M30 Narrative Start :::");
	wake(M30_grassy_hills_first);
	thread (M30_cryptum_into());
	wake (M30_plylonone_arrival);
	wake (m30_pylonone_reveal);
	//wake (m30_hallway_1_enter);
	wake( m30_prepawn);
	//wake (M30_gargoyle_tease);
	wake(m30_escape_volume_09);
	wake (m30_canyons_1_rock_hallway);	
	//wake (M30_observatory_second);
	wake (M30_observatory_final);
	wake (m30_escape_preportal_01);
	wake (m30_escape_volume_04);
	wake (m30_escape_volume_05);
		wake (m30_escape_volume_06);
			wake (m30_escape_volume_07);
	wake(m30_grassy_hill_over);
	wake (m30_donut_infinity_broadcast);
	wake (f_m30_canyon_terminal);
	thread (m30_insert_into());
	//thread (M30_grassy_hills_second());
	//thread (m30_pylontwo_top_alt());
  wake(m30_plyonone_core_close);
  wake(m30_donut_signal_relay);
  wake(m30_pylonone_hallwaytwo_enter_1);
  wake(M30_pylontwo_elevator_ride);
//	thread (use_boost_VO_prompt(player0));

end

script static void M30_cryptum_into()
  sleep_until( volume_test_players(m30_cryptum_into), 1);

  if (portal_count == 0) then
			sleep_s(1);
			wake (f_dialog_M30_observatory_first);
	  	b_opening_vignette_over = TRUE;
	  else
	  	dprint("insertion");
	  end
	
	wake (chapter_one_display);

end


script dormant M30_observatory_first()
	sleep_until (volume_test_players (M30_observatory) and (portal_count == 0), 1);
   	

	thread(M30_observ_1_nudge());
	b_opening_vignette_over = TRUE;
end


script static void M30_observ_1_nudge()
		sleep_s(60);
		wake(f_dialog_M30_observ_1_nudge);
		thread(M30_observ_1_nudge_2());
end

script static void M30_observ_1_nudge_2()
		sleep_s(60);
		wake(f_dialog_M30_observ_1_nudge_2);
	 thread(M30_observ_1_nudge());
end


script static void m30_insert_into()
  sleep_until( volume_test_players(m30_obswalk), 1);
  
	dprint("m30_insert_into");
	if portal_count == 0 then
	wake(f_dialogue_m30_insert_into);
	end
  
end

script dormant M30_Console_Button_one()
	//triggers when the player activates the button to open portal one.(left)
	dprint ("m30_console_button_one is now awake");
	//wake(f_dialog_M30_Console_Button_one);
	dprint ("cinematic block in begin playing");
	kill_script(M30_observ_1_nudge);
	kill_script(M30_observ_1_nudge_2);

	dialog_end_interrupt(l_dlg_insert_into);
	b_relay_cine_done = TRUE;

	f_start_mission ("cin_m030_relay");
	b_didact_portal_open = TRUE;
	dprint ("relay cinematic done");
	observation_portal_01->f_animate_instant();
	cinematic_exit("cin_m030_relay", FALSE );
	players_weapon_down( -1, 0.25, FALSE ); //this is here temporarily to fix an issue where weapons turn invisible after a cinematic - we're going to have to fix the global cinematic scripts to permanently fix the issue.
 	  


end


script dormant M30_plylonone_arrival()
  sleep_until( volume_test_players(M30_plylonone_arrival), 1);
  

 				wake (m30_objective_1);
 				wake(f_dialog_m30_pylonone_arrival);

				
end

script dormant M30_gargoyle_tease()
			(sleep_until (volume_test_players (m30_gargoyle_tease), 1));
  			//wake(f_dialog_M30_gargoyle_tease);

    		
end

script dormant m30_prepawn()
  sleep_until	(volume_test_players (m30_prepawn), 1) or (ai_living_count (sq_caves_pawn_intro) == 0);
  				wake(f_dialog_m30_first_pawn_fight_start);   

end

script dormant M30_plyon_1_lightbridge()
	wake(f_dialog_m30_plyon_1_lightbridge);

end



script dormant M30_grassy_hills_start()
	//triggers when 2nd Knight "slides" away.
					//wake(f_dialog_M30_grassy_hills);
					dprint("d");
				

end

script dormant M30_grassy_hills_first()
(sleep_until (volume_test_players (grassy_hills_first), 1));

	wake(f_dialog_M30_grassy_hills);

end

script static void M30_grassy_hills_second()
  (sleep_until (volume_test_players (grassy_hills_second), 1));

	wake(f_dialog_M30_grassy_hills_second);

end


script dormant m30_knight_resurrection()
		wake(f_dialog_m30_knight_resurrection);
end

script dormant m30_playing_catch()
		wake(f_dialog_m30_playing_catch);
end



script dormant m30_hallway_1_enter()
	//triggers when entering hallway 1 or after the grassy hill encounter
  sleep_until (volume_test_players (m30_hallway_1_enter), 1);
	
	dprint ("testing testing");
	wake (f_dialog_M30_hallway_1_enter);   


end

script dormant m30_grassy_hill_over()
	//triggers when entering hallway 1 or after the grassy hill encounter
  sleep_until ( b_grassy_hill_encounter_over, 1);
	sleep_s(2);
	dprint ("grassy hill fight over, knight pip starting");
	wake (f_dialog_M30_hallway_1_enter);


end


script dormant m30_canyons_1_rock_hallway()
	//fires in the rocky transition space before the landing
  sleep_until( volume_test_players(m30_canyons_1_rock_hallway), 1);
  	wake(f_dialog_m30_canyons_1_rock_hallway);

end

script dormant f_m30_canyon_terminal()

	f_narrative_domain_terminal_setup( 1, domain_terminal, domain_terminal_button );
	
	/*
	//fires first time you use the map button
	sleep_until (object_valid (canyon_terminal_button), 1);
	sleep_until (device_get_position(canyon_terminal_button) > 0.0, 1 );
	device_set_power (canyon_terminal_button, 0.0);
		
	local long domain_show = pup_play_show ("pup_m30_domain");
			
	sleep_until(not pup_is_playing(domain_show),1);
		
		if (IsNarrativeFlagSetOnAnyPlayer(0) == FALSE) and (IsNarrativeFlagSetOnAnyPlayer(1) == FALSE) and (IsNarrativeFlagSetOnAnyPlayer(2) == FALSE) and (IsNarrativeFlagSetOnAnyPlayer(3) == FALSE) and (IsNarrativeFlagSetOnAnyPlayer(4) == FALSE) and (IsNarrativeFlagSetOnAnyPlayer(5) == FALSE) and (IsNarrativeFlagSetOnAnyPlayer(6) == FALSE)then
		
			dprint ("button press weeee");
			//wake(f_dialog_global_my_first_domain); 
		
		end
		
	SetNarrativeFlagWithFanfareMessageForAllPlayers( 1, TRUE );
	*/
			  
end

script dormant m30_ext1_final_fight_check()
	sleep_until (rear_fight_spawn == TRUE);
	
	sleep (1);
	dprint ("waiting for this encounter to end");
	sleep (1);
	
	sleep_until ((ai_living_count (sq_ext1_knight_5) == 0) and (ai_living_count (sg_ext1_rear_fight_pawns) == 0) and (ai_living_count (sq_ext1_bishop_5) == 0), 1);
	
	sleep (30 * 3);
	
	b_ext1_final_fight_over = TRUE;
	dprint ("b_ext1_final_fight_over = TRUE");

end

script dormant m30_pylonone_hallwaytwo_enter_1()
	
  sleep_until ((b_ext1_final_fight_over == TRUE) or (volume_test_players (m30_pylonone_hallwaytwo_enter)), 1);
  				wake(f_dialog_m30_pylonone_hallwaytwo_enter);
	
end

script dormant m30_pylonone_hallwaytwo_enter()
	
  dprint("d");

	
end



script dormant m30_pylonone_reveal()

  sleep_until( volume_test_players(m30_pylonone_reveal), 1);
  			wake(f_dialog_m30_pylonone_reveal);
       kill_script(m30_objective_1_nudge);

end

script dormant m30_plyonone_core_close()

  sleep_until( (volume_test_players(m30_power_core_1) or volume_test_players(m30_power_core_2) or volume_test_players(m30_power_core_3)), 1);
  			wake(f_dialog_m30_plyonone_core_close);


end



script dormant M30_plyonone_core_one()
  //triggers when the first generator at Pylon one is destroyed.
 		wake(f_dialog_m30_plyonone_core_one);

end




script dormant M30_plyonone_core_two()
	wake(f_dialog_m30_plyonone_core_two);

end

script dormant M30_plyonone_core_three()
  //triggers half way up pylon 
  			wake(f_dialog_m30_pylonone_core_three);
  			
  			kill_script(m30_objective_2_nudge);
  //thread (pip_on());
  
          //  thread (story_blurb_add("domain", "CORTANA: Great. That's all the cores. Head for the top of the pylon."));
          //  sleep_s (3.1);
            
//  thread (pip_on());

end

script static void m30_forts1_ifinity()
 


  		wake(f_dialog_m30_start_ramp_enter);

 
end

	

script static void M30_pylonone_bridgetoelevator()
	// Triggers when the player approches the bridge to the elevator
	// Cortana will advise you on destroying the power cores, depending on whether you've visited this trigger volume before and how many cores have been destroyed
		
		repeat
		sleep_s(12);
			sleep_until (volume_test_players (M30_pylonone_bridgetoelevator), 1);
			
			if (b_was_bridge_visited == TRUE) and (forts_1_generator_count == 0) then
				// on SECOND visit to volume with NO cores destroyed, say:
          //				thread (story_blurb_add("domain", "CORTANA: This shield's not going anywhere until those power cores are all off line."));
          
          wake(f_dialog_m30_pylonone_nocores_down_3);	
				
				
				inspect (forts_1_generator_count);
				inspect (b_was_bridge_visited);
				dprint ("SECOND visit to volume with NO cores destroyed");
			
			
	
			elseif (b_was_bridge_visited == TRUE) and (forts_1_generator_count == 1) and (b_one_core_down == TRUE) and (b_two_core_down == FALSE) then
				// on SUBSEQUENT visits to the bridge volume since destroying a SINGLE core, say:		
				//thread (story_blurb_add("domain", "CORTANA: The power cores we need to destroy are down on the ground level."));
				wake(f_dialog_m30_pylonone_nocores_down_2);
				inspect (forts_1_generator_count);
				inspect (b_was_bridge_visited);
				dprint ("SUBSEQUENT visits to the bridge volume since destroying a SINGLE core");

			elseif (b_was_bridge_visited == TRUE) and (forts_1_generator_count == 2) and (b_one_core_down == TRUE) and (b_two_core_down == TRUE)then
			  // on SUBSEQUENT visits to the bridge volume since destroying TWO cores, say:
          //				thread (story_blurb_add("domain", "CORTANA: Wishing's not going to make it happen, Chief. Take out those power cores!"));
          
         
		//		wake(f_dialog_m30_pylonone_twocoredown_2);
				inspect (forts_1_generator_count);
				inspect (b_was_bridge_visited);
				dprint ("SUBSEQUENT visits to the bridge volume since destroying TWO cores");
			
			elseif (forts_1_generator_count == 0) then
				// on FIRST visit to volume with NO cores destroyed, say:
				
          //				thread (story_blurb_add("domain", "CORTANA: The Prometheans must have activated the Pylon's security protocols."));
          //				sleep_s (5.1); 
          //				thread (story_blurb_add("domain", "CORTANA: I'm tracking three power sources below. Let's take see what we can do about them."));
		
					 			
            
            		wake(f_dialog_m30_pylonone_nocores_down);

    
            

				b_was_bridge_visited = TRUE;
				inspect (forts_1_generator_count);
				inspect (b_was_bridge_visited);
				dprint ("FIRST visit to volume with NO cores destroyed");
			
			elseif (forts_1_generator_count == 1) then
				// on FIRST visit since destroying only ONE power core, say:		
          //				thread (story_blurb_add("domain", "CORTANA: Looks like one core wasn't enough. We better take care of those other two as well."));
          				
          wake(f_dialog_m30_pylonone_onecoredown);	
				
				b_was_bridge_visited = TRUE;
				inspect (forts_1_generator_count);
				inspect (b_was_bridge_visited);
				dprint ("FIRST visit since destroying only ONE power core");
			
			
			
			elseif (forts_1_generator_count == 2) then
				// on FIRST visit since destroying TWO power cores, say:	
      

					wake(f_dialog_m30_pylonone_twocoredown);

				b_was_bridge_visited = TRUE;
				inspect (forts_1_generator_count);
				inspect (b_was_bridge_visited);
				dprint ("FIRST visit since destroying TWO power cores");
			
			end	
								
		until (forts_1_generator_count == 4);
			
		sleep (1);	
		dprint ("M30_pylonone_bridgetoelevator loop has ended.");

end

script dormant M30_plyonone_elevator_ride()
	//triggers when the elevator button to top of pylon one is activated.
	
		wake(f_dialog_m30_pylonone_elevator_ride);

end



script dormant M30_pylonone_top_enter()
	//triggers at the top of the pylon one elevator.
	sleep_until (volume_test_players (M30_pylonone_top_enter), 1);
	wake(f_dialog_M30_pylonone_top_enter);
				
end

script dormant M30_plyonone_end()

  //*** AFTER ICS ***
		wake(f_dialog_m30_pylonone_end);
		kill_script(m30_objective_1_nudge);
//// Cortana : Go!v
//sound_impulse_start ('sound\dialog\mission\m30\m30_pylonone_end_00107', NONE, 1);
//sleep (sound_impulse_time('sound\dialog\mission\m30\m30_pylonone_end_00107'));  

end	


script dormant M30_observatory_second()
 	//Triggers on the observation deck the second time we arrive on the observation platform.
//	sleep_until (volume_test_players (m30_obswalk_02) and (portal_count == 10), 1);
					wake(f_dialog_m30_observatory_second);
          b_second_portal_opens = TRUE;
          b_second_time_through = TRUE;

	
        
end

script dormant M30_Console_Button_two()
  //triggers when the player activates the button to open portal two.(right)
					dprint("deprecated");  
          //  thread (story_blurb_add("vo", "MASTER CHIEF: I assume that wasn't you."));
          //  	sleep_s (5.1);   
          //	thread (story_blurb_add("domain", "CORTANA: No, it wasn't. (nervous deep breath) Weren't you the one who said one mystery at a time?"));   
          
/*          // Master Chief : I assume that wasn't you.
          dprint( "MASTER CHIEF: I assume that wasn't you." );
          sound_impulse_start ('sound\dialog\mission\m30\m30_console_button_two_00100', NONE, 1);
          sleep (sound_impulse_time('sound\dialog\mission\m30\m30_console_button_two_00100'));
          
          // Cortana : No, it wasn't. 
          dprint( "CORTANA: No, it wasn't." ); 
          sound_impulse_start ('sound\dialog\mission\m30\m30_console_button_two_00101', NONE, 1)/*;
   */      // sleep (sound_impulse_time('sound\dialog\mission\m30\m30_console_button_two_00101')*/);
 /*         
          // Cortana : Weren't you the one who said one mystery at a time?
          dprint( "CORTANA: Weren't you the one who said one mystery at a time?" ); 
          sound_impulse_start ('sound\dialog\mission\m30\m30_console_button_two_00102', NONE, 1);
          sleep (sound_impulse_time('sound\dialog\mission\m30\m30_console_button_two_00102'));	
	*/ 
/*          thread (story_blurb_add("vo", "MASTER CHIEF: I assume that wasn't you?"));			
          sleep_s (3.1);	
          thread (story_blurb_add("domain", "CORTANA: No, it wasn't."));
          sleep_s (3.1);
          						
          thread (story_blurb_add("domain", "CORTANA: : I suppose when an ancient alien planet invites you inside, it would be rude to say no."));					*/

end


script dormant M30_plylontwo_arrival()
	//triggers when the player arrives at Plyon 2 start.

	sleep_until (volume_test_players (M30_plylontwo_arrival), 1);
	
	//thread (pip_on());
	//Hud_play_pip("TEMP_PIP");
	
			wake(m30_objective_4);
			wake(f_dialog_m30_pylontwo_arrival);
			
 										
end


script dormant M30_plyontwo_drop_pods()
	//triggers when first drop pod land in exterior 2.  
	  			
	  			wake(f_dialog_m30_plyontwo_drop_pods);
    
end

script dormant m30_plyontwo_enemy()
	dprint("d");
	//wake(f_dialog_m30_plyontwo_enemy);
end




script dormant M30_start_ramp_enter()
	//triggers after the first drop pod event in exterior 2.
	sleep_until (volume_test_players (M30_start_ramp_enter), 1);	
				//	wake(f_dialog_m30_start_ramp_enter);
	 

end



script dormant M30_canyons_ramp_enter()
	//This fires when the player enters the ramp at end of canyons.

	sleep_until (volume_test_players (M30_canyons_ramp_enter), 1);
						
	wake(f_dialog_m30_pylontwo_transmission_one);
										
end



script dormant M30_pylontwo_hallway_1_enter()
	//triggers when the player enters hallway one (could be on ghost cannot use PIP)
	sleep_until (volume_test_players (M30_pylontwo_hallway_1_enter), 1);
			
							wake(f_dialog_m30_pylontwo_hallway);
				
end
		


script dormant M30_pylontwo_reveal()
	//fires when the player first sees pylon 2 while exiting hallway 1 (could be on ghost cannot use PIP)
	//sleep_until (volume_test_players (M30_pylontwo_reveal), 1);	
//	sleep_s(2);
//	wake(f_dialog_m30_pylontwo_reveal);
	kill_script(m30_objective_3_nudge);
	

end					


script dormant m30_pylontwo_banshees()
	//fires when the player first sees pylon 2 while exiting hallway 1 (could be on ghost cannot use PIP)
	//sleep_until (volume_test_players (M30_pylontwo_reveal), 1);	
	wake(f_dialog_m30_pylontwo_banshees);

end				


script dormant M30_pylontwo_core_one()
	//triggers when the first generator at Pylon two is destroyed.     
				wake(f_dialog_m30_pylontwo_core_one);	
				wake(m30_objective_4);

end

script dormant M30_pylontwo_core_two()
	//triggers when the second generator at Pylon two is destroyed.
				wake(f_dialog_m30_pylontwo_core_two);
          //	thread (story_blurb_add("domain", "CORTANA: Second power core offline."));
          	
/*          // Cortana : Second power core offline. Good job, Chief.
          dprint( "CORTANA: Second power core offline. Good job, Chief." ); 
          sound_impulse_start ('sound\dialog\mission\m30\m30_pylontwo_core_two_00100', NONE, 1);
          sleep (sound_impulse_time('sound\dialog\mission\m30\m30_pylontwo_core_two_00100'));*/

end

script dormant M30_pylontwo_core_three()
	//triggers when the third generator at Pylon two is destroyed. 
			wake(f_dialog_m30_pylontwo_core_three);    
			kill_script(m30_objective_4_nudge);
			wake (m30_objective_6);
			

end


script dormant M30_pylontwo_bridgetoelevator()

	sleep_until (volume_test_players (M30_pylontwo_bridgetoelevator), 1);
						
          //	thread (story_blurb_add("domain", "CORTANA: Same protocols as the other pylon. These shields probably run off power cores as well. We better find them."));
        	if (b_pylon_two_cores_down == FALSE) then
 
          dprint("Not dropped cores");
          else 
          dprint("Dropped all the cores");
					end
					dprint("Volume test complete.");
end					


script dormant M30_pylontwo_elevator_ride()
	//triggers when the elevator button to top of pylon two is activated.
	sleep_until (volume_test_players (M30_pylontwo_elevator_ride), 1);

	//Hud_play_pip("TEMP_PIP_DELRIO_STATIC");		
//		thread (pip_on());
			     wake(f_dialog_m30_pylontwo_elevator_ride);
	
end


script dormant m30_pylontwo_top_enter()

	
				dprint("D");
 
						
end	
	
script static void m30_pylontwo_top_alt()

	sleep_until (volume_test_players (m30_pylontwo_top_enter), 1);
				
          //	thread (story_blurb_add("domain", "CORTANA: Quick! Shut it down!"));
         // wake(f_dialog_m30_pylontwo_top_enter);

						
end	
	


script dormant M30_pylontwo_end()

					wake(f_dialog_m30_pylontwo_end);

end

script dormant M30_observatory_final()
	sleep_until (volume_test_players (M30_observatory) and (portal_count == 20), 1);
  
          //	thread (story_blurb_add("domain", "CORTANA: There's got to be some way to control the relay on the satellite! If I can tap into it, I can try to boost our transmission."));
          //	sleep_s (3.1);
          //	thread (story_blurb_add("vo", "MASTER CHIEF: The Covenant are moving their ships towards the satellite too."));
          //	sleep_s (3.1);
          //	thread (story_blurb_add("domain", "CORTANA: I don't understand! Why would they care about a broadcast relay?!? "));
          //	sleep_s (3.1);
          //	thread (story_blurb_add("vo", "MASTER CHIEF: I'll handle them; just find us that control node."));
 					wake (m30_objective_7);
 					wake (f_dialog_m30_observatory_final);

	
	b_final_time_through = TRUE; 

end

//script dormant M30_Console_Button_three()
//	//triggers when the player activates the button to open portal three.(center) 
//	    
////	thread (story_blurb_add("domain", "CORTANA: The Covenant are moving towards to the relay as well. Why?"));    
//end
      
script dormant m30_donut_enter()

	sleep_until (volume_test_players (m30_donut_enter), 1);
	
          //	thread (story_blurb_add("domain", "CORTANA: Chief, the Covenant are making a push for something on the far side of the satellite."));	
          //	sleep_s (5.1);
          //	thread (story_blurb_add("vo", "MASTER CHIEF: The relay controls?"));	
          //	sleep_s (2.1);
          //	thread (story_blurb_add("domain", "CORTANA: Way too coincidental to be anything else!"));	
    

          wake(f_dialog_m30_donut_enter);

end


script dormant m30_donut_infinity_broadcast()
	sleep_until ((volume_test_players (m30_donut_infinity_broadcast) or volume_test_players(m30_donut_infinity_broadcast_2)), 1);
		wake(f_dialog_m30_donut_infinity_broadcast);

end


script dormant m30_donut_signal_relay()
	sleep_until ((volume_test_players (m30_donut_signal_relay)), 1);
	sleep_until ((volume_test_players_lookat(m30_donut_signal_look, 25, 2.5)), 1);

		wake(f_dialog_m30_donut_signal_relay);

end


script dormant m30_cryptum_approach()

	sleep_until (
	
	ai_living_count (finaL_fore_1) <= 0 and
	ai_living_count (final_fore_2) <= 0 and
	ai_living_count (final_fore_3) <= 0 and
	ai_living_count (final_fore_4) <= 0 and
	ai_living_count (left_cov_final_fight) <= 0 and
	ai_living_count (right_cov_final_fight) <= 0 and
	volume_test_players (tv_cryptum_final_approach)
	
	, 1);
	
	//wake (M30_cryptum_open_trigger);
	wake(f_dialog_m30_cryptum_approach);
    
	
	
end

script dormant M30_cryptum_open_trigger()

	//triggers when the player pushes the button to open the cryptum.  
	//sleep_until (volume_test_players (M30_cryptum_open_trigger), 1);  
	//sleep_until (b_cryptum_cinematic_go == TRUE);
	kill_script(m30_objective_5_nudge);
	f_unblip_flag (cryptum_obj_flag);
	
	dprint( "Cinematic entered!" );
	
	f_start_mission ("cin_m031_didact");
	
	//cinematic_exit ("cin_m031_didact", TRUE);
	/*
	dprint ("is it fading?");
	
	sleep (5);
	
	dprint ("FADE THE FUCK OUT");
	
	fade_out (0, 0, 0, 1);
	
	sleep (90);
	
	dprint ("NOW YOU FUCKED UP");
	
	players_weapon_down( -1, 0.25, FALSE ); //this is here temporarily to fix an issue where weapons turn invisible after a cinematic - we're going to have to fix the global cinematic scripts to permanently fix the issue.

	sleep (30);
	*/
	
	// Cover the load here. We've done pretty much all we can for this one.
	EnableMidmissionLoadScreenForDVDOnly(true);
	switch_zone_set ("4_escape"); 
	
	b_escape_started = TRUE;	// sets the scripting up for escape
	
	sleep_until (current_zone_set_fully_active() == zs_escape_idx, 1);
	EnableMidmissionLoadScreenForDVDOnly(false);
	
	sleep (1);
				
	object_teleport (player0, flag_escape_a);
	object_teleport (player1, flag_escape_b);
	object_teleport (player2, flag_escape_c);
	object_teleport (player3, flag_escape_d);
	print ("TELEPORT TO ESCAPE!");
	//cinematic_exit ("cin_m031_didact", TRUE);
  				
end

script dormant M30_escape_open_vignette()
	//play opening vignette
	
	sleep_until (volume_test_players (m30_escape_open_vignette), 1);
	
	
	wake (chapter_four_display);

	

end


script dormant m30_escape_volume_01()

	sleep_until (volume_test_players (m30_escape_volume_01), 1);
	
          //	thread (story_blurb_add("domain", "CORTANA: Grab one of those Ghosts! We have to find a portal out of here before the whole network shuts down."));
          //	sleep_s (10.1);
          //	thread (story_blurb_add("domain", "CORTANA: Hang on. I'm going to channel energy from your shields to overdrive the Ghost's boost."));	
          //	sleep_s (5.1);	
          //	thread (story_blurb_add("domain", "CORTANA: Done! Now floor it! And whatever you do, don't let up on the gas!"));	
 
				wake(f_dialog_m30_escape_volume_01_a);
          
	sleep_until (unit_in_vehicle_type (player0, 26), 1);
          
				wake(f_dialog_m30_escape_volume_01_b);
			
				
end


script dormant m30_escape_destruction_01()
	//triggers when the level first begins falling apart. 
	    print("d");
	//thread (story_blurb_add("domain", "CORTANA: AND the planet is falling apart.  Great."));
//	sleep_s (5.1);
	//thread (story_blurb_add("domain", "CORTANA: You'd better step on it Chief!"));

end

script static void use_boost_VO_prompt (player p_player)
	repeat
  	sleep_until (unit_in_vehicle_type (p_player, 26), 1);

    unit_action_test_reset (p_player);
                
    if (unit_action_test_grenade_trigger (p_player)) then
    sleep (30 * 3);
    
    else
    thread(story_blurb_add("domain", "CORTANA: You'd better step on it Chief!"));
		sleep (1);
  
  	end

  until (b_escape_over == TRUE);

end

/*

script dormant m30_escape_destruction_02()
    sleep_until (volume_test_players (m30_escape_destruction_02), 1);
	if (unit_in_vehicle_type(player0, 26) == TRUE) then
	  
			wake(f_dialog_m30_escape_destruction_02);

	else
		// nothing happens
		sleep(1);
		
	end
	
end*/

script dormant m30_escape_destruction_03()
	//Cortana comments about the walls closing in on you
	//thread (story_blurb_add("domain", "CORTANA: Whoooaa.  This is gonna be tight!"));
	if (unit_in_vehicle_type(player0, 26) == TRUE) then
	  
			wake(f_dialog_m30_escape_volume_03a);

	else
		// nothing happens
		sleep(1);
		
	end
	
end

script dormant m30_escape_volume_02()
	//Cortana shouts at player to get moving
	sleep_until (volume_test_players (m30_escape_volume_02), 1);
	
	if (unit_in_vehicle_type(player0, 26) == TRUE) then
	  
			wake(f_dialog_m30_escape_volume_02);

	else
		// nothing happens
		sleep(1);
		
	end
				
end

script dormant m30_escape_volume_04()
	
	sleep_until (volume_test_players (m30_escape_volume_04), 1);
	
	if (unit_in_vehicle_type(player0, 26) == TRUE) then
	  
			wake(f_dialog_m30_escape_volume_04);

	else
		// nothing happens
		sleep(1);
		
	end
	
	
end



script dormant m30_escape_volume_05()
	//Cortana: I have to admit, I didn't quite think we were going to make that one.
	sleep_until (volume_test_players (m30_escape_volume_05), 1);
	
	
	if (unit_in_vehicle_type(player0, 26) == TRUE) then
	  
			wake(f_dialog_m30_escape_destruction_02);

	else
		// nothing happens
		sleep(1);
		
	end
 
	
end

script dormant m30_escape_volume_06()
	//Cortana: If I had a grandmother, I�m sure she would drive faster than this!
	sleep_until (volume_test_players (m30_escape_volume_06), 1);
	
	if (unit_in_vehicle_type(player0, 26) == TRUE) then
	  
			wake(f_dialog_m30_escape_volume_06);

	else
		// nothing happens
		sleep(1);
		
	end
 
	
end


script dormant m30_escape_volume_07()
	//Cortana: I don't have to pull up the schematics on this thing to know can go faster than this! Now, push it!
	sleep_until (volume_test_players (m30_escape_volume_07), 1);
	print("d");

	if (unit_in_vehicle_type(player0, 26) == TRUE) then
	  
			wake(f_dialog_m30_escape_volume_07);

	else
		// nothing happens
		sleep(1);
		
	end
	
end


script dormant m30_escape_volume_08()
	//Cortana: This is going to be tight!
	sleep_until (volume_test_players (m30_escape_volume_08), 1);

	if (unit_in_vehicle_type(player0, 26) == TRUE) then
	  
			wake(f_dialog_m30_escape_volume_08);

	else
		// nothing happens
		sleep(1);
		
	end
 
	
end


script dormant m30_leave_ghost()

     wake(f_dialog_m30_leave_ghost);

end

script dormant m30_escape_volume_09()
	//Cortana: This is going to be tight!
	sleep_until (volume_test_players (m30_escape_volume_09), 1);

	if (unit_in_vehicle_type(player0, 26) == TRUE) then
	  
			wake(f_dialog_m30_escape_volume_04);

	else
		// nothing happens
		sleep(1);
		
	end
 
	
end

script dormant m30_escape_volume_03()
	//Cortana's last "come on, lets' go!"
	sleep_until (volume_test_players (m30_escape_volume_03), 1);

	wake(f_dialog_m30_escape_volume_03);
	
end

script dormant m30_escape_preportal_01()

sleep_until (volume_test_players ( m30_escape_preportal_01), 1);


					wake(f_dialog_m30_pre_portal_01);		
end	

script dormant m30_escape_preportal_02()

sleep_until (volume_test_players (m30_escape_preportal_02), 1);


					wake(f_dialog_m30_pre_portal_02);		
end	



script dormant M30_escape_volume_end()
	
	dprint("TRIGGER HIT - ESCAPE IS OVER");

	b_escape_over = TRUE;

	if object_get_health (player0) <= 0 then
		game_safe_to_respawn (TRUE, player0);
		fade_in_for_player (player0);
	end
	
	if object_get_health (player1) <= 0 then
		game_safe_to_respawn (TRUE, player1);
		fade_in_for_player (player1);
	end
	
	if object_get_health (player2) <= 0 then
		game_safe_to_respawn (TRUE, player2);
		fade_in_for_player (player2);
	end
	
	if object_get_health (player3) <= 0 then
		game_safe_to_respawn (TRUE, player3);
		fade_in_for_player (player3);
	end

	cinematic_show_letterbox (TRUE);
	cinematic_enter ("cin_m032_end", TRUE);
	
	switch_zone_set ("cin_m032_end");
	
	sleep_until (current_zone_set_fully_active() == zs_cin_m32_idx, 1);
	
	f_start_mission ("cin_m032_end");
	
	cinematic_exit_no_fade ("cin_m032_end", TRUE);

	game_won();
	
end



// =================================================================================================
// =================================================================================================
// OBJECTIVES
// =================================================================================================
// ===================================

script dormant m30_objective_1()

	objectives_show (0); 

	dprint ("objective: PROCEED TO THE FIRST PYLON");
	cui_hud_set_new_objective ("m30_objective_1");
	
 	thread(m30_objective_1_nudge());
	
end


script dormant m30_objective_2()

	cui_hud_set_objective_complete ("m30_objective_1");

	dprint ("objective: DESTROY THE POWER CORES");
	cui_hud_set_new_objective ("m30_objective_2");
	
	thread(m30_objective_2_nudge());
	
end


script dormant m30_objective_3()
	
	cui_hud_set_objective_complete ("m30_objective_2");
	
	dprint ("objective: SHUT DOWN THE FIRST BEAM ARRAY");
 	cui_hud_set_new_objective ("m30_objective_3");

end


script dormant m30_objective_4()
	
	objectives_finish (0); 

	objectives_show (1);
	 
	cui_hud_set_objective_complete ("m30_objective_3");
	
	dprint ("objective: PROCEED TO THE SECOND PYLON");
 	cui_hud_set_new_objective ("m30_objective_4");
 	
 	

end


script dormant m30_objective_5()
	
	cui_hud_set_objective_complete ("m30_objective_4");
	
	dprint ("objective: DESTROY THE POWER CORES");
 	cui_hud_set_new_objective ("m30_objective_5");
 	
 	thread(m30_objective_4_nudge());

end

script dormant m30_objective_6()
	
	cui_hud_set_objective_complete ("m30_objective_5");
	
	dprint ("objective: SHUT DOWN THE SECOND BEAM ARRAY");
 	cui_hud_set_new_objective ("m30_objective_6");

end

script dormant m30_objective_7()
	
	objectives_finish (1);
	
	objectives_show (2);
	
	cui_hud_set_objective_complete ("m30_objective_6");
	
	dprint ("objective: REACH THE RELAY CONTROLS");
 	cui_hud_set_new_objective ("m30_objective_7");

end

script dormant m30_objective_8()
	
	objectives_finish (2);
	
	objectives_show (3);
	
	cui_hud_set_objective_complete ("m30_objective_7");
	
	dprint ("objective: ESCAPE!");
 	cui_hud_set_new_objective ("m30_objective_8");

end

// =================================================================================================
// =================================================================================================
// NUDGES
// =================================================================================================
// =================================================================================================



script static void m30_objective_1_nudge()
			dprint("Nudge fired");
			sleep_s(600);
			if b_objective_1_complete == FALSE then
						thread(f_dialog_m30_objective_1());
			end
			
			thread(m30_objective_1_nudge());
end

script static void m30_objective_2_nudge()
			
			sleep_s(900);
			if b_objective_2_complete == FALSE then
						thread(f_dialog_m30_objective_2());
			end
			if b_objective_2_complete == FALSE then
					thread(m30_objective_2_nudge());
			end
end

script static void m30_objective_3_nudge()
			
			sleep_s(900);
			if b_objective_3_complete == FALSE then
						thread(f_dialog_m30_objective_3());
			end
			if b_objective_3_complete == FALSE then
					thread(m30_objective_3_nudge());
			end
end


script static void m30_objective_4_nudge()
			
			sleep_s(900);
			if b_objective_4_complete == FALSE then
						thread(f_dialog_m30_objective_4());
			end
			if b_objective_4_complete == FALSE then
					thread(m30_objective_4_nudge());
			end
end

script static void m30_objective_5_nudge()
			
			sleep_s(900);
			if b_objective_5_complete == FALSE then
						thread(f_dialog_m30_objective_5());
			end
				if b_objective_5_complete == FALSE then
					thread(m30_objective_5_nudge());
				end
end


// =================================================================================================
// =================================================================================================
// Armor Abilities
// =================================================================================================
// =================================================================================================


script static void f_waypoint_equipment_unlock()

		wake(f_waypoint_global_equipment_unlock);
end
// --- End m30_narrative.hsc ---

// --- Begin m30_streaming.hsc ---
// Script aids for streaming

global zone_set cin_m31_trans_zone = "cin_m31_trans";

// Callback from cin_m31
script static void f_start_cin_m31_transition()
	prepare_to_switch_to_zone_set(cin_m31_trans_zone);
end
// --- End m30_streaming.hsc ---

