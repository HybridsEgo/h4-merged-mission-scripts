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

// --- Begin fx_00_cryo_room.hsc ---

// CRYO ROOM


// Opening Cinematic - Cortana Orb
script static void fx_cortana_orb()
	print ("::: M10 - Cortana Orb - FX :::");
	effect_new( objects\characters\storm_cortana\fx\orb\cor_orb.effect, fx_cortana_orb );
end


// Opening Cinematic - Activate Cyro Tube Light
script static void fx_cryotube_light()
	print ("::: M10 - Cryotube Light - FX :::");
	effect_new( environments\solo\m10_crash\fx\lights\cry_tube_light.effect, fx_tube_light );

	// MC Cryo Tube LEDs
//	effect_new( environments\solo\m10_crash\fx\misc\cry_tube_led_01.effect, fx_tube_led_01 );
//	effect_new( environments\solo\m10_crash\fx\misc\cry_tube_led_02.effect, fx_tube_led_02 );
//	effect_new( environments\solo\m10_crash\fx\misc\cry_tube_led_03.effect, fx_tube_led_03 );
//	effect_new( environments\solo\m10_crash\fx\misc\cry_tube_led_04.effect, fx_tube_led_04 );
end


// Opening Cinematic - Activate Cryo Tube Steam (part 1)
script static void fx_cryotube_steam_01()
	print ("::: M10 - Cryotube Steam 01 - FX :::");
	effect_new( environments\solo\m10_crash\fx\atmosphere\cry_tube_low_fog.effect, fx_tube_floor_fog );
	effect_new( environments\solo\m10_crash\fx\atmosphere\cry_tube_vent_steam_01.effect, fx_tube_vent_01 );
	effect_new( environments\solo\m10_crash\fx\atmosphere\cry_tube_vent_steam_02.effect, fx_tube_vent_02 );
	effect_new( environments\solo\m10_crash\fx\atmosphere\cry_tube_vent_steam_02.effect, fx_tube_vent_03 );
end


// Opening Cinematic - Activate Cryo Tube Steam (part 2)
script static void fx_cryotube_steam_02()
	print ("::: M10 - Cryotube Steam 02 - FX :::");
	effect_new( environments\solo\m10_crash\fx\atmosphere\cry_tube_steam.effect, fx_tube_light );
	effect_new( environments\solo\m10_crash\fx\atmosphere\cry_tube_vent_steam_03.effect, fx_tube_vent_04 );
	effect_new( environments\solo\m10_crash\fx\atmosphere\cry_tube_vent_steam_03.effect, fx_tube_vent_05 );
end


// In-game Cryo Tube Light - Stay ON
script static void fx_cryotube_light_hold()
	print ("::: M10 - Cryotube Light Hold - FX :::");
	effect_new( environments\solo\m10_crash\fx\lights\cry_tube_light_hold.effect, fx_tube_light );
end


// In-game - Cryo Tube Lingering Fog
script static void fx_cryo_room_fog()
	print ("::: M10 - Cryo Room Lingering Fog - FX :::");
	effect_new( environments\solo\m10_crash\fx\atmosphere\cry_tube_low_fog_02.effect, fx_tube_floor_fog );
	effect_new( environments\solo\m10_crash\fx\atmosphere\cry_tube_room_steam_01.effect, fx_tube_vent_04 );
	effect_new( environments\solo\m10_crash\fx\atmosphere\cry_tube_room_steam_01.effect, fx_tube_vent_05 );
end


// Cryo Tube Door Open - Steam and Debris
script static void fx_cryotube_door_open()
	print ("::: M10 - Cryotube Door Open - FX :::");
	effect_new( environments\solo\m10_crash\fx\atmosphere\cry_steam_tube_door.effect, fx_tube_door );
end

/////// NOT USED ///
// Cortana Plinth - Activate
// script static void fx_cortana_plinth_activate()
// print ("::: M10 - Cortana Plinth Activate - FX :::");
// effect_new( objects\characters\storm_cortana\fx\plinth\cor_plinth_activate.effect, fx_cortana_plinth_cryo );
// end


///////////////////////////////////////
///   Cortana - Plinth Floor Glow   ///
///////////////////////////////////////

// Cortana Plinth Floor Glow
script static void fx_cortana_plinth_glow_cryo()
	print ("::: M10 - Cortana Plinth Floor Glow - FX :::");
	effect_new( objects\characters\storm_cortana\fx\plinth\cor_plinth_glow.effect, fx_cortana_plinth_cryo );
end


////////////////////////////
///   Cortana - Rez-in   ///
////////////////////////////

// Cortana Rez-in
script static void fx_cortana_rez_cryo()
	print ("::: M10 - Cortana Rez-in - FX :::");
	effect_new( objects\characters\storm_cortana\fx\rez\cor_rez_in.effect, fx_cortana_rez_cryo );
end



// --- End fx_00_cryo_room.hsc ---

// --- Begin fx_08_elevator.hsc ---

// script startup m10_crash_elevator_fx()


// 08 Elevator ICS - Shaft and Lens Flare FX
script static void fx_08_elevator()
	print ("::: M10 - Elevator - FX :::");
// sleep (150);
	
	effect_new (environments\solo\m10_crash\fx\atmosphere\elv_depressurize_elevator_slow.effect, fx_elev_depressure_01 );
	effect_new (environments\solo\m10_crash\fx\atmosphere\elv_depressurize_elevator_slow.effect, fx_elev_depressure_02 );
	effect_new (environments\solo\m10_crash\fx\atmosphere\elv_depressurize_elevator_slow.effect, fx_elev_depressure_04 );
	effect_new (environments\solo\m10_crash\fx\atmosphere\elv_depressurize_elevator_slow.effect, fx_elev_depressure_10 );

	effect_new (environments\solo\m10_crash\fx\atmosphere\elv_depressurize_elevator.effect, fx_elev_depressure_03 );
	effect_new (environments\solo\m10_crash\fx\atmosphere\elv_depressurize_elevator.effect, fx_elev_depressure_05 );
	effect_new (environments\solo\m10_crash\fx\atmosphere\elv_depressurize_elevator.effect, fx_elev_depressure_06 );
	effect_new (environments\solo\m10_crash\fx\atmosphere\elv_depressurize_elevator.effect, fx_elev_depressure_07 );
	effect_new (environments\solo\m10_crash\fx\atmosphere\elv_depressurize_elevator.effect, fx_elev_depressure_08 );
	effect_new (environments\solo\m10_crash\fx\atmosphere\elv_depressurize_elevator.effect, fx_elev_depressure_09 );

//	Commented out as these are now hooked up to the new looping FX Markers
//	effect_new (environments\solo\m10_crash\fx\lens_flare\elv_lensflare_yellow_lt.effect, fx_elev_light_01 );
//	effect_new (environments\solo\m10_crash\fx\lens_flare\elv_lensflare_yellow_lt.effect, fx_elev_light_02 );

end


// 08 Elevator ICS - Door Open FX
script static void fx_08_elevator_door()
	print ("::: M10 - Elevator Door Open - FX :::");
	effect_new (environments\solo\m10_crash\fx\atmosphere\elv_depressurize_door_steam.effect, fx_elev_depressure_door );
end


// 08 Elevator ICS - Depressurize Steam Exit FX
script static void fx_08_elev_exit()
	print ("::: M10 - Elevator Depressurize Exit - FX :::");
	effect_new (environments\solo\m10_crash\fx\atmosphere\elv_depressurize_exit_01.effect, fx_elev_depressurize_01 );
	effect_new (environments\solo\m10_crash\fx\atmosphere\elv_depressurize_exit_02.effect, fx_elev_depressurize_02 );
	effect_new (environments\solo\m10_crash\fx\atmosphere\elv_depressurize_exit_02.effect, fx_elev_depressurize_03 );
end


// 08 Elevator ICS - Debris Explosion 01 FX
script static void fx_08_elev_explo_01()
	print ("::: M10 - Elevator Debris Explosion 01 - FX :::");
	effect_new (environments\solo\m10_crash\fx\explosions\explosion_elv_med.effect, fx_elev_explo_01 );
end


// 08 Elevator ICS - Debris Explosion 02 FX
script static void fx_08_elev_explo_02()
	print ("::: M10 - Elevator Debris Explosion 02 - FX :::");
	effect_new (environments\solo\m10_crash\fx\explosions\explosion_elv_med_02.effect, fx_elev_explo_02 );
end


// 08 Elevator ICS - Debris Explosion 03 FX
script static void fx_08_elev_explo_03()
	print ("::: M10 - Elevator Debris Explosion 03 - FX :::");
	effect_new (environments\solo\m10_crash\fx\explosions\explosion_elv_med_03.effect, fx_elev_explo_03 );
end



// --- End fx_08_elevator.hsc ---

// --- Begin fx_12_observatory.hsc ---

// Observatory Window Shields ON

script static void fx_shield_fr_on()
	print ("::: shield front on FX:::");
	effect_new (environments\solo\m10_crash\fx\shields\obs_win_shield_03.effect, fx_win_shield_03 );
end

script static void fx_shield_rt_on()
	print ("::: shield right on FX:::");
	effect_new (environments\solo\m10_crash\fx\shields\obs_win_shield_01.effect, fx_win_shield_01 );	
end

script static void fx_shield_lf_on()
	print ("::: shield left on FX:::");
	effect_new (environments\solo\m10_crash\fx\shields\obs_win_shield_02.effect, fx_win_shield_02 );
end	


// Observatory Window Shields - Phantom Boarding Tube ON

script static void fx_shield_tube_fr_on()
	print ("::: shield tube front on FX:::");
	effect_new (environments\solo\m10_crash\fx\shields\obs_win_shield_hole_03.effect, fx_win_shield_03 );
end

script static void fx_shield_tube_rt_on()
	print ("::: shield tube right on FX:::");
	effect_new (environments\solo\m10_crash\fx\shields\obs_win_shield_hole_01.effect, fx_win_shield_01 );	
end
	
script static void fx_shield_tube_lf_on()
	print ("::: shield tube left on FX:::");
	effect_new (environments\solo\m10_crash\fx\shields\obs_win_shield_hole_02.effect, fx_win_shield_02 );
end


///////////////////////////////////////
///   Cortana - Plinth Floor Glow   ///
///////////////////////////////////////

// Cortana Plinth Floor Glow
script static void fx_cortana_plinth_glow_obs()
	print ("::: M10 - Cortana Plinth Floor Glow - FX :::");
	effect_new( objects\characters\storm_cortana\fx\plinth\cor_plinth_glow.effect, fx_cortana_plinth_obs );
end


////////////////////////////
///   Cortana - Rez-in   ///
////////////////////////////

// Cortana Rez-in
script static void fx_cortana_rez_obs()
	print ("::: M10 - Cortana Rez-in - FX :::");
	effect_new( objects\characters\storm_cortana\fx\rez\cor_rez_in.effect, fx_cortana_rez_obs );
end

// --- End fx_12_observatory.hsc ---

// --- Begin fx_30_beacons.hsc ---

// script startup m10_crash_30_beacons_fx()
// sleep (150);


// Beacons Vignette - Archer Missile Tube Door Opening
script static void fx_missile_door_open_vapor()
	//print ("::: M10 - Beacons Vignette - Archer Missile Tube Door Opening Vapor - FX :::");
	effect_new (environments\solo\m10_crash\fx\atmosphere\beac_door_open_vapor.effect, fx_beac_accel_A_main );
end


/// Beacons Vignette - Mag Accelerator Clamp Stuck Sparks ///
script static void fx_clamp_stuck_sparks( boolean b_active )
	if ( b_active ) then
		dprint ("::: M10 - Beacons Vignette - Mag Accelerator Clamp Sparks - FX :::");
		effect_new (environments\solo\m10_crash\fx\sparks\beac_clamp_sparks_01.effect, fx_sparks_lockup_05 );
		effect_new (environments\solo\m10_crash\fx\sparks\beac_clamp_sparks_01.effect, fx_sparks_lockup_06 );
		effect_new (environments\solo\m10_crash\fx\sparks\beac_clamp_sparks_01.effect, fx_sparks_lockup_09 );
		effect_new (environments\solo\m10_crash\fx\sparks\beac_clamp_sparks_01.effect, fx_sparks_lockup_10 );

		effect_new (environments\solo\m10_crash\fx\sparks\beac_clamp_sparks_02.effect, fx_sparks_lockup_07 );
		effect_new (environments\solo\m10_crash\fx\sparks\beac_clamp_sparks_02.effect, fx_sparks_lockup_08 );

		effect_new (environments\solo\m10_crash\fx\sparks\beac_clamp_sparks_03.effect, fx_sparks_lockup_03 );
		effect_new (environments\solo\m10_crash\fx\sparks\beac_clamp_sparks_03.effect, fx_sparks_lockup_04 );
	else
		effect_kill_from_flag (environments\solo\m10_crash\fx\sparks\beac_clamp_sparks_01.effect, fx_sparks_lockup_05 );
		effect_kill_from_flag (environments\solo\m10_crash\fx\sparks\beac_clamp_sparks_01.effect, fx_sparks_lockup_06 );
		effect_kill_from_flag (environments\solo\m10_crash\fx\sparks\beac_clamp_sparks_01.effect, fx_sparks_lockup_09 );
		effect_kill_from_flag (environments\solo\m10_crash\fx\sparks\beac_clamp_sparks_01.effect, fx_sparks_lockup_10 );

		effect_kill_from_flag (environments\solo\m10_crash\fx\sparks\beac_clamp_sparks_02.effect, fx_sparks_lockup_07 );
		effect_kill_from_flag (environments\solo\m10_crash\fx\sparks\beac_clamp_sparks_02.effect, fx_sparks_lockup_08 );

		effect_kill_from_flag (environments\solo\m10_crash\fx\sparks\beac_clamp_sparks_03.effect, fx_sparks_lockup_03 );
		effect_kill_from_flag (environments\solo\m10_crash\fx\sparks\beac_clamp_sparks_03.effect, fx_sparks_lockup_04 );
	end
end


// Turns on/off the sparks that spew out of the magnetic accelerator rails after Master Chief kicks it
script static void fx_mag_accel_sparks( boolean b_active )
	if ( b_active ) then
		//dprint("Spark effects ON");
		effect_new_on_object_marker(environments\solo\m10_crash\fx\beacon_stuck\bea_l_stuck.effect, beac_2_mag_3, left_sparks);
		effect_new_on_object_marker(environments\solo\m10_crash\fx\beacon_stuck\bea_l_stuck.effect, beac_2_mag_3, right_sparks);
	else
		//dprint("Spark effects OFF");
		effect_stop_object_marker( environments\solo\m10_crash\fx\beacon_stuck\bea_l_stuck.effect, beac_2_mag_3, left_sparks );
		effect_stop_object_marker( environments\solo\m10_crash\fx\beacon_stuck\bea_l_stuck.effect, beac_2_mag_3, right_sparks );
	end
end


/// Beacons Vignette - Archer Missile Accelerator Chargeup. After the mag accelerator clamps down and causes the activation ///
// This one also appears to play an effect on one of the other silos.
script static void fx_missile_accel_chargeup()
	dprint ("::: M10 - Beacons Vignette - Archer Missile Accelerator Chargeup - FX :::");
	effect_new (environments\solo\m10_crash\fx\energy\beac_mag_accel_energy.effect, fx_beac_accel_A_clamp_charge );
end


// Archer Missile (formerly called the Beacon) - Jettison Launch
// This function is called from m10_crash_fx.hsc
script static void fx_archer_jettison()
	dprint ("::: M10 - Beacon Jettison Launch - FX :::");
	effect_new_on_object_marker(environments\solo\m10_crash\fx\energy\bea_jettison.effect, archer, m_attach);
end


// Turns on the booster rocket effect of the archer missile
script static void fx_archer_rocket( boolean b_active )
	//dprint("Archer missile booster ON");
	//effect_new_on_object_marker(environments\solo\m10_crash\fx\fire\fire_streaming_large.effect, archer, m_attach);
	
	if ( b_active ) then
		//dprint("Archer missile rocket fire ON");
		effect_new_on_object_marker(environments\solo\m10_crash\fx\energy\archer_missile_thrust.effect, archer, m_attach);
	else
		//dprint("Archer missile rocket fire OFF");
		effect_stop_object_marker( environments\solo\m10_crash\fx\energy\bea_jettison.effect, archer, m_attach );
		effect_stop_object_marker( environments\solo\m10_crash\fx\energy\archer_missile_thrust.effect, archer, m_attach );
	end
end


// Play the archer missile explosion
//script static void fx_beacon_launch()
//	dprint("fx_beacon_launch placeholder until m10_beacon.hsc is checked back in.");
//end
/*script static void fx_archer_detonate()
	dprint("Archer missile EXPLOSION!");
	effect_new_on_object_marker(environments\solo\m10_crash\fx\explosions\beac_cruiser_explode_lg_03.effect, archer, m_attach);
end*/


/* 
	Plays the external explosions on the covenant cruisers in the Maw vignette. This particular function is for the "fx_explode_XX" markers
	that are located on the surface of the ship, as opposed to the fx_cov_cruiser_explosions2() function that is for the "fx_ship_explodeXX" markers that
	are for the internal explosions of the ship.
	
	inputs:
		oCruiser 	The name of the device machine that is getting the effect
		nMarker		The marker number (1-8) that gets the explosion
*/
script static void fx_cov_cruiser_explosions( object oCruiser, short nMarker )
	//dprint("Cruiser external explosion");	
	if (1 == nMarker) then
		effect_new_on_object_marker(environments\solo\m10_crash\fx\explosions\beac_cruiser_explode_lg_01.effect, oCruiser, fx_explode_01);
	elseif (2 == nMarker) then
		effect_new_on_object_marker(environments\solo\m10_crash\fx\explosions\beac_cruiser_explode_lg_02.effect, oCruiser, fx_explode_02);
	elseif (3 == nMarker) then
		effect_new_on_object_marker(environments\solo\m10_crash\fx\explosions\beac_cruiser_explode_lg_01.effect, oCruiser, fx_explode_03);
	elseif (4 == nMarker) then
		effect_new_on_object_marker(environments\solo\m10_crash\fx\explosions\beac_cruiser_explode_lg_01.effect, oCruiser, fx_explode_04);
	elseif (5 == nMarker) then
		effect_new_on_object_marker(environments\solo\m10_crash\fx\explosions\beac_cruiser_explode_lg_02.effect, oCruiser, fx_explode_05);
	elseif (6 == nMarker) then
		effect_new_on_object_marker(environments\solo\m10_crash\fx\explosions\beac_cruiser_explode_lg_01.effect, oCruiser, fx_explode_06);
	elseif (7 == nMarker) then
		effect_new_on_object_marker(environments\solo\m10_crash\fx\explosions\beac_cruiser_explode_lg_01.effect, oCruiser, fx_explode_07);
	elseif (8 == nMarker) then
		effect_new_on_object_marker(environments\solo\m10_crash\fx\explosions\beac_cruiser_explode_lg_02.effect, oCruiser, fx_explode_08);
	end
end


/* 
	Plays the internal explosions on the covenant cruisers in the Maw vignette.	
	inputs:
		oCruiser 	The name of the device machine that is getting the effect
		nMarker		The marker number (1-11) that gets the explosion
*/
script static void fx_cov_cruiser_explosions2( object oCruiser, short nMarker )
	//dprint("Cruiser internal explosion");	
	if (1 == nMarker) then
		effect_new_on_object_marker(environments\solo\m10_crash\fx\explosions\beac_cruiser_explode_lg_03.effect, oCruiser, fx_ship_explode01);
	elseif (2 == nMarker) then
		effect_new_on_object_marker(environments\solo\m10_crash\fx\explosions\beac_cruiser_explode_lg_03.effect, oCruiser, fx_ship_explode02);
	elseif (3 == nMarker) then
		effect_new_on_object_marker(environments\solo\m10_crash\fx\explosions\beac_cruiser_explode_lg_03.effect, oCruiser, fx_ship_explode03);
	elseif (4 == nMarker) then
		effect_new_on_object_marker(environments\solo\m10_crash\fx\explosions\beac_cruiser_explode_lg_03.effect, oCruiser, fx_ship_explode04);
	elseif (5 == nMarker) then
		effect_new_on_object_marker(environments\solo\m10_crash\fx\explosions\beac_cruiser_explode_lg_03.effect, oCruiser, fx_ship_explode05);
	elseif (6 == nMarker) then
		effect_new_on_object_marker(environments\solo\m10_crash\fx\explosions\beac_cruiser_explode_lg_03.effect, oCruiser, fx_ship_explode06);
	elseif (7 == nMarker) then
		effect_new_on_object_marker(environments\solo\m10_crash\fx\explosions\beac_cruiser_explode_lg_03.effect, oCruiser, fx_ship_explode07);
	elseif (8 == nMarker) then
		effect_new_on_object_marker(environments\solo\m10_crash\fx\explosions\beac_cruiser_explode_lg_03.effect, oCruiser, fx_ship_explode08);
	elseif (9 == nMarker) then
		effect_new_on_object_marker(environments\solo\m10_crash\fx\explosions\beac_cruiser_explode_lg_03.effect, oCruiser, fx_ship_explode09);
	elseif (10 == nMarker) then
		effect_new_on_object_marker(environments\solo\m10_crash\fx\explosions\beac_cruiser_explode_lg_03.effect, oCruiser, fx_ship_explode10);
	elseif (11 == nMarker) then
		effect_new_on_object_marker(environments\solo\m10_crash\fx\explosions\beac_cruiser_explode_lg_03.effect, oCruiser, fx_ship_explode11);
	end
end


script static void fx_play_all_cruiser_explosions()
	dprint("fx_play_all_cruiser_explosions()");	

	/*local short nMarker = 1; 
	repeat
		dprint("in repeat");
		fx_cov_cruiser_explosions2(beacon_ship2, nMarker);
		nMarker = nMarker + 1;
	until(11 == nMarker);*/
	
	effect_new_on_object_marker(environments\solo\m10_crash\fx\explosions\beac_cruiser_explode_lg_03.effect, beacon_ship1, fx_ship_explode01);
	effect_new_on_object_marker(environments\solo\m10_crash\fx\explosions\beac_cruiser_explode_lg_03.effect, beacon_ship1, fx_ship_explode02);
	effect_new_on_object_marker(environments\solo\m10_crash\fx\explosions\beac_cruiser_explode_lg_03.effect, beacon_ship1, fx_ship_explode03);
	effect_new_on_object_marker(environments\solo\m10_crash\fx\explosions\beac_cruiser_explode_lg_03.effect, beacon_ship1, fx_ship_explode04);
	effect_new_on_object_marker(environments\solo\m10_crash\fx\explosions\beac_cruiser_explode_lg_03.effect, beacon_ship1, fx_ship_explode05);
	effect_new_on_object_marker(environments\solo\m10_crash\fx\explosions\beac_cruiser_explode_lg_03.effect, beacon_ship1, fx_ship_explode06);
	effect_new_on_object_marker(environments\solo\m10_crash\fx\explosions\beac_cruiser_explode_lg_03.effect, beacon_ship1, fx_ship_explode07);
	effect_new_on_object_marker(environments\solo\m10_crash\fx\explosions\beac_cruiser_explode_lg_03.effect, beacon_ship1, fx_ship_explode08);
	effect_new_on_object_marker(environments\solo\m10_crash\fx\explosions\beac_cruiser_explode_lg_03.effect, beacon_ship1, fx_ship_explode09);
	effect_new_on_object_marker(environments\solo\m10_crash\fx\explosions\beac_cruiser_explode_lg_03.effect, beacon_ship1, fx_ship_explode10);
	effect_new_on_object_marker(environments\solo\m10_crash\fx\explosions\beac_cruiser_explode_lg_03.effect, beacon_ship1, fx_ship_explode11);	
end

/// Beacons Vignette - MAW Opening Debris Suck ///	
script static void fx_maw_debris_suck()
	dprint ("::: M10 - Beacons Vignette - MAW Opening Debris Suck - FX :::");

	effect_new (environments\solo\m10_crash\fx\debris\beac_maw_debris_sm_01.effect, fx_maw_debris_sm_01 );
	effect_new (environments\solo\m10_crash\fx\debris\beac_maw_debris_sm_02.effect, fx_maw_debris_sm_03 );
	effect_new (environments\solo\m10_crash\fx\debris\beac_maw_debris_sm_01.effect, fx_maw_debris_med_01 );
	effect_new (environments\solo\m10_crash\fx\debris\beac_maw_debris_01.effect, fx_maw_debris_lg_01 );
	effect_new (environments\solo\m10_crash\fx\debris\beac_maw_debris_03.effect, fx_maw_debris_lg_03 );
	effect_new (environments\solo\m10_crash\fx\debris\beac_maw_debris_01.effect, fx_maw_debris_lg_05 );

	sleep(30 * 0.3);

	effect_new (environments\solo\m10_crash\fx\debris\beac_maw_debris_sm_02.effect, fx_maw_debris_sm_02 );
	effect_new (environments\solo\m10_crash\fx\debris\beac_maw_debris_sm_02.effect, fx_maw_debris_med_02 );
	effect_new (environments\solo\m10_crash\fx\debris\beac_maw_debris_sm_01.effect, fx_maw_debris_sm_04 );
	effect_new (environments\solo\m10_crash\fx\debris\beac_maw_debris_03.effect, fx_maw_debris_lg_02 );
	effect_new (environments\solo\m10_crash\fx\debris\beac_maw_debris_02.effect, fx_maw_debris_lg_04 );
end













/// Cortana Plinth Floor Glow - 01 ///
script static void fx_cortana_plinth_glow_beac_01()
	print ("::: M10 - Cortana Plinth Floor Glow 01 - FX :::");
//	effect_new( objects\characters\storm_cortana\fx\plinth\cor_plinth_glow.effect, fx_cortana_plinth_beac_01 );
end


/// Cortana Plinth Floor Glow - 02 ///
script static void fx_cortana_plinth_glow_beac_02()
	print ("::: M10 - Cortana Plinth Floor Glow 02 - FX :::");
//	effect_new( objects\characters\storm_cortana\fx\plinth\cor_plinth_glow.effect, fx_cortana_plinth_beac_02 );
end


/// Cortana Rez-in - 01 ///
script static void fx_cortana_rez_beac_01()
	print ("::: M10 - Cortana Rez-in 01 - FX :::");
//	effect_new( objects\characters\storm_cortana\fx\rez\cor_rez_in.effect, fx_cortana_rez_beac_01 );
end


/// Cortana Rez-in - 02 ///
script static void fx_cortana_rez_beac_02()
	print ("::: M10 - Cortana Rez-in 02 - FX :::");
//	effect_new( objects\characters\storm_cortana\fx\rez\cor_rez_in.effect, fx_cortana_rez_beac_02 );
end







// Commented out until FX are ready for the sequence.

//	effect_new (environments\solo\m10_crash\fx\electric\bea_electric_clamp.effect, fx_beac_accel_A_clamp_01 );
//	effect_new (environments\solo\m10_crash\fx\electric\bea_electric_clamp.effect, fx_beac_accel_A_clamp_02 );
//	effect_new (environments\solo\m10_crash\fx\electric\bea_electric_clamp.effect, fx_beac_accel_A_clamp_03 );

//	effect_new (environments\solo\m10_crash\fx\electric\bea_electric_clamp.effect, fx_beac_accel_B_clamp_01 );
//	effect_new (environments\solo\m10_crash\fx\electric\bea_electric_clamp.effect, fx_beac_accel_B_clamp_02 );
//	effect_new (environments\solo\m10_crash\fx\electric\bea_electric_clamp.effect, fx_beac_accel_B_clamp_03 );

// end



// --- End fx_30_beacons.hsc ---

// --- Begin fx_30_beacons_02.hsc ---
// Maw scans chief during the beacon puppeteer
script static void fx_maw_scan_chief(object current_puppet)
	dprint ("fx_maw_scan_chief()");
	//sleep(1);
	effect_new_on_object_marker(environments\solo\m10_crash\fx\scan_exterior\didact_scan_chief.effect, current_puppet, body);
	effect_new_on_object_marker(environments\solo\m10_crash\fx\scan_exterior\didact_focus_scan.effect, maw_door, fx_focus_scan_start);
end

script static void fx_maw_scan_chief_end()
	dprint ("fx_maw_scan_chief_end()");
	//sleep(1);
	//effect_kill_object_marker(environments\solo\m10_crash\fx\scan_exterior\didact_scan_chief.effect, current_puppet, body);
	effect_kill_object_marker(environments\solo\m10_crash\fx\scan_exterior\didact_focus_scan.effect, maw_door, fx_focus_scan_start);
end

// --- End fx_30_beacons_02.hsc ---

// --- Begin m10_beacon.hsc ---

// =================================================================================================
// =================================================================================================
// THE BEACON ENCOUNTER
// =================================================================================================
// =================================================================================================

global short s_objcon_beacon	= 0;
global boolean b_suck_beacon_ships = false;
global boolean b_beacon_played = false;
global long show_missile = 0;

//DEFINE BEACON OBJECTIVES



script dormant f_beacon_main()
	sleep_until (b_mission_started == TRUE);

	wake (f_beacon_airlock_entrance_control);
		
	sleep_until (current_zone_set_fully_active() == S_zoneset_28_airlock_30_beacons, 1);

	// set co-op profiles
	thread(f_loadout_set ("beacon"));
	
	ai_grenades(FALSE);
	
	// objective scripting
	wake(f_beacon_objectives);
	
	object_create(close_cruiser2);
	zone_set_trigger_volume_enable ("begin_zone_set:32_broken_34_maintenance", FALSE);
	zone_set_trigger_volume_enable ("zone_set:32_broken_34_maintenance", FALSE);
	kill_volume_disable(kill_observatory);
	dprint  ("::: BEACON START :::");
	ai_erase(ai_all_hall_to_flank);
	object_create_folder_anew(dm_beacon);
	pup_play_show(beacon_ships); // needs to be after object_create_folder_anew because the ships are in the dm_beacon folder
	pup_play_show(debris_show);
	sleep(5);
	//object_create (ragdoll_phantom);
	physics_toggle_force_gravity_actions(true, .005);  // 0.001  
	object_create (missile_control_switch);
	object_create (beacon_ship);
	object_create (maw_door);
	object_create (grav_br);
	object_create (grav_cc);
	object_cinematic_visibility(beacon_ship,true);
	object_cinematic_visibility(m10_maw,true);
	object_cinematic_visibility(maw_door,true);
	object_cinematic_visibility(archer,true);
	
	object_create_folder_anew(beacon_cov_crates);
	wake(f_move_close_ship_beac);
	
	//DATA MINE
	data_mine_set_mission_segment ("m10_beacon");
	
	wake(f_beac_weapons);
	
	ai_grenades(FALSE);
	
	//MUSIC
	sleep_s(2);
	
	//dprint("::: staging complete:::");
	thread(f_music_beacon_deck_reached_first_airlock());
	//dprint(":::place ai:::");
	//game_save();
	//dprint(":::open door:::");
	//wake (f_crate_angular_velocity);
	object_set_velocity(grav_br, .09, 0, -.07);
	object_set_angular_velocity(grav_br, 1, 1, 1); 
	object_set_angular_velocity(grav_cc, 1, 1, 1);  
	wake(f_door_airlock_1_exterior_open);
	//thread(f_door_airlock_1_exterior_close());


	//ENCOUNTER START
	//sleep_until (volume_test_players (tv_beacon_start), 1);
	thread(f_mus_m10_e04_begin());
	//sleep_s(2);
	wake (f_objcon_beacon);
	//wake (f_weapon_crate_rise);
	
	//ai_place (sq_1_jackals);	
	//ai_place (sq_1_grunts);	
	ai_place (sg_2_jackals);
	ai_place (sq_1_jackals);	
	ai_place (sg_3_first_spawn);	
	ai_place (sq_phantom_2);	
	
	wake (f_missile_control_switch);
	
	
	//sleep_s(2);
	ai_place (sq_2_grunts_1);
	sleep(105);
	ai_place (sq_phantom_1);
	sleep(1);
	wake(f_beac_late_spawn);
	
	//sleep_until (volume_test_players (tv_sq_4), 1);
	//ai_place (sq_phantom_3);
	
	sleep_until (volume_test_players (tv_dialog_near_missile_room), 1);
	sleep_until(volume_test_players_lookat(tv_see_terminal_beacons, 30, 20), 1);
	//ai_place (sq_phantom_4);
	wake (f_dialog_near_missile_room);
	
end

// f_objective_set( real r_index, boolean b_new_msg, boolean b_new_blip, boolean b_complete_msg, boolean b_complete_unblip )
script dormant f_beacon_objectives
	// blip the missile control
	sleep_until(LevelEventStatus("blip missile control"), 1);
	thread (f_objective_blip( DEF_R_OBJECTIVE_FIND_MISSILE_CONTROLS, TRUE, TRUE ));
	
	// complete it, and un-blip the missile control
	sleep_until(LevelEventStatus("unblip missile control"), 1);
	thread (f_objective_complete( DEF_R_OBJECTIVE_FIND_MISSILE_CONTROLS, TRUE, TRUE ));
	
	// show the mag push point
	sleep_until(LevelEventStatus("blip push point"), 1);
	thread (f_objective_set( DEF_R_OBJECTIVE_MANUAL_LAUNCH, TRUE, TRUE, FALSE, FALSE ));

	// pushed it, complete
	sleep_until(LevelEventStatus("unblip push point"), 1);
	thread (f_objective_complete( DEF_R_OBJECTIVE_MANUAL_LAUNCH, FALSE, TRUE ));
	
	// oh noes time to leave
	sleep_until(LevelEventStatus("blip exit to broken"), 1);
	thread (f_objective_set( DEF_R_OBJECTIVE_REACH_ESCAPE_PODS, TRUE, TRUE, FALSE, FALSE ));
	wake (f_airlock_exit_blip);
	
	// got to exit
	sleep_until(LevelEventStatus("unblip exit to broken"), 1);
	thread (f_objective_blip( DEF_R_OBJECTIVE_REACH_ESCAPE_PODS, FALSE, TRUE ));
		
end

//script dormant f_weapon_crate_rise

	//sleep_until (volume_test_players (tv_weapon_rise), 1);
	



//end
script dormant f_move_close_ship_beac()
	object_move_to_point (beacon_ship, 500, ps_close_ship_beacons.p0);
end


script command_script cs_phantom_1()

	cs_ignore_obstacles( ai_current_actor, TRUE );	
	ai_set_blind ((sq_phantom_1.driver), TRUE);
	ai_set_deaf ((sq_phantom_1.driver), TRUE);
		
	f_load_phantom( sq_phantom_1, "left", sq_1_grunts, sq_1_grunts_2, none, none );
	sleep_s(1);
	cs_fly_to( ps_phantom_1.p3 );
	cs_fly_to( ps_phantom_1.p2 );
	
	//sleep_until (volume_test_players (tv_phantom_1_drop), 1);
	//sleep( 30 * 4.0 );	

	f_unload_phantom( sq_phantom_1, "left" );
	print ("unload phantom_1");
	
	cs_fly_to( ps_phantom_1.p0 );
	cs_fly_to( ps_phantom_1.p1 );
	//object_erase( ai_vehicle_get( ai_current_actor ) );
	ai_erase (sq_phantom_1);
	
end

script command_script cs_phantom_2()

	cs_ignore_obstacles( ai_current_actor, TRUE );	
	//ai_set_blind ((sq_phantom_2.driver), TRUE);
	//ai_set_deaf ((sq_phantom_2.driver), TRUE);
		
	f_load_phantom( sq_phantom_2, "left", none, sq_2_elite_1, none, none );
	f_load_phantom( sq_phantom_2, "right", sq_2_grunts_2, sq_2_elite_2, none, none );
	
	//sleep_until (volume_test_players (tv_phantom_1_drop), 1);
	//sleep( 30 * 4.0 );	

	ai_set_blind ((sq_phantom_2.driver), FALSE);
	ai_set_deaf ((sq_phantom_2.driver), FALSE);

	f_unload_phantom( sq_phantom_2, "left" );
	f_unload_phantom( sq_phantom_2, "right" );
	print ("unload phantom_2");
	
	cs_fly_to( ps_phantom_2.p0 );
	cs_fly_to( ps_phantom_2.p1 );
	//object_erase( ai_vehicle_get( ai_current_actor ) );
	ai_erase (sq_phantom_2);
	
end

script command_script cs_phantom_3()

	cs_ignore_obstacles( ai_current_actor, TRUE );	

	//sleep( 30 * 2.0 );	
	cs_fly_to( ps_phantom_3.p0 );
	cs_fly_to( ps_phantom_3.p1 );
	
	f_load_phantom( sq_phantom_3, "right", none, none, sq_4_grunts_1, none );
	f_load_phantom( sq_phantom_3, "left", none, sq_4_elite_grunts , sq_4_grunts_2, sq_4_jackal_3 );

	f_unload_phantom( sq_phantom_3, "right" );
	f_unload_phantom( sq_phantom_3, "left" );


	print ("unload phantom_2");
	
	cs_fly_to( ps_phantom_3.p2 );
	cs_fly_to( ps_phantom_3.p3 );
	//object_erase( ai_vehicle_get( ai_current_actor ) );
	ai_erase (sq_phantom_3);
end

script command_script cs_phantom_4()

	cs_ignore_obstacles( ai_current_actor, TRUE );	

	
	//f_load_phantom( sq_phantom_4, "left", sq_4_elite_jackal, sq_4_jackal_3, none, none );
	f_load_phantom( sq_phantom_4, "dual", none, sq_4_elite_jackal, none, sq_4_jackal_1);
	
	cs_fly_to( ps_phantom_4.p0 );
	cs_fly_to( ps_phantom_4.p1 );
	
	//f_unload_phantom( sq_phantom_4, "left" );
	f_unload_phantom( sq_phantom_4, "dual" );
	print ("unload phantom_2");
	
	cs_fly_to( ps_phantom_4.p2 );
	cs_fly_to( ps_phantom_4.p3 );
	//object_erase( ai_vehicle_get( ai_current_actor ) );
		ai_erase (sq_phantom_4);	
end

script dormant f_objcon_beacon()

		sleep_until (volume_test_players (tv_objcon_beacon_10), 1);
		s_objcon_beacon = 10;
		print ("objcon_beacon = 10");
		
		sleep_until (volume_test_players (tv_objcon_beacon_20), 1);
		s_objcon_beacon = 20;
		print ("objcon_beacon = 20");
		
		sleep_until (volume_test_players (tv_objcon_beacon_30), 1);
		s_objcon_beacon = 30;
		print ("objcon_beacon = 30");
		
		sleep_until (volume_test_players (tv_objcon_beacon_40), 1);
		object_set_angular_velocity(grav_cc, 1, 1, 1);  
		s_objcon_beacon = 40;
		print ("objcon_beacon = 40");
		
end	

global boolean g_airlockEffectsBeforeSwitch = true;

script dormant f_beacon_airlock_entrance_control

	sleep_until(volume_test_players(tv_near_airlock1),1);

	door_airlock_1_interior->open_default();
	
	if game_is_cooperative() == TRUE then
	f_blip_flag(flg_beac_door_blip, "default");
	end
	sleep_until (volume_test_players_all (tv_airlock_inside), 1);
	f_unblip_flag(flg_beac_door_blip);
	wake (f_dialog_airlock_beacon);
	game_save_cancel();
	sleep(1);
	game_save_no_timeout();
	f_door_airlock_1_interior_close();
	
	//dprint("check for door to close 100%");
	sleep_until (door_airlock_1_interior->check_close(), 1);
	
	prepare_to_switch_to_zone_set( f_zoneset_get(S_zoneset_28_airlock_30_beacons) );
	sleep_until (not PreparingToSwitchZoneSet(), 1); // poll whether async load is complete
	f_insertion_zoneload( S_zoneset_28_airlock_30_beacons, TRUE );

	B_airlock_1_complete = TRUE;

end

// this is used

script dormant f_beacon_airlock_exit_control
	
	door_airlock_2_exterior->speed_set( door_airlock_2_exterior->speed_fast() );
	door_airlock_2_exterior->open();
	
	sleep_until (volume_test_players_all (tv_inside_airlock_02), 1);
	
	// BLIP - is called at the end of BEACON PUPPETEER
	//device_operates_automatically_set(door_airlock_2_exterior, FALSE );
	door_airlock_2_exterior->auto_trigger_close( tv_inside_airlock_02, TRUE, TRUE, TRUE );

	sleep_until(door_airlock_2_exterior->check_close(), 1);

	
	// don't continue until the door is closed otherwise we might see beacons getting unloaded
	//prepare_to_switch_to_zone_set( f_zoneset_get(S_zoneset_32_broken_34_maintenance) ); // start to load zone set
	zone_set_trigger_volume_enable ("begin_zone_set:32_broken_34_maintenance", TRUE);
	
	// Play airlock-filling-with-air effects
	f_unblip_flag(flg_blip_coop_exit_beacons);
	thread(f_mus_m10_e04_finish());
	sound_impulse_start( 'sound\environments\solo\m010\placeholder\doors\m_m10_placeholder_airlock_low_to_high.sound', NONE, 1 );
	fx_airlock_compression();
	fx_airlock_compression2();
	f_zero_g_airlock_2_drop();
	physics_remove_all_gravity_actions();
	physics_toggle_force_gravity_actions(false, 0);
	sound_set_state( 'set_state_high_gravity' );
	

	game_save_cancel();
	sleep_until (not PreparingToSwitchZoneSet(), 1); // poll whether async load is complete		
	game_save_no_timeout();
	zone_set_trigger_volume_enable ("zone_set:32_broken_34_maintenance", TRUE);
	//f_insertion_zoneload( S_zoneset_32_broken_34_maintenance, FALSE ); // do acually zone switch
	sleep_until( current_zone_set_fully_active() > (S_zoneset_28_airlock_30_beacons), 1 );
	f_unblip_flag(flg_blip_coop_exit_beacons);
	
	door_airlock_2_interior->open();

end

script dormant f_airlock_exit_blip

	sleep_until(volume_test_players(tv_airlock_exit),1);
	NotifyLevel("unblip exit to broken");
	if
		game_is_cooperative() == TRUE then
	  f_blip_flag(flg_blip_coop_exit_beacons, "default");
	  sleep_until(volume_test_players_all (tv_inside_airlock_02));
	  f_unblip_flag(flg_blip_coop_exit_beacons);
	 end
	
end

/*script dormant f_maw_grav_tv

		sleep_until (volume_test_players (tv_maw_grav_10), 1);
		s_maw_grav = 10;
		print ("maw_grav = 10");
		
		sleep_until (volume_test_players (tv_maw_grav_20), 1);
		s_maw_grav = 20;
		print ("maw_grav = 20");
		
end*/

///////////////////////////////////////////////////////
//BEACON AI
///////////////////////////////////////////////////////






script dormant f_beacon_airlock2_exit()
	f_door_airlock_2_exterior();
	sleep_until (volume_test_players_all (tv_inside_airlock_02), 1);
	f_door_airlock_2_exterior_close();
end


// BEACON WEAPON RACKS 
script dormant f_beac_weapons()
	wake (f_wr_beac_a_airlock);
	wake (f_wr_beac_b_airlock);
end

script dormant f_wr_beac_a_airlock()
	wr_beac_airlock_a_02->chain_parent_open( wr_beac_airlock_a_01, wr_beac_airlock_a_02->close_position(), wr_beac_airlock_a_02->S_chain_state_greater() );
	wr_beac_airlock_a_03->chain_parent_open( wr_beac_airlock_a_02, wr_beac_airlock_a_03->close_position(), wr_beac_airlock_a_03->S_chain_state_greater() );
	wr_beac_airlock_a_04->chain_parent_open( wr_beac_airlock_a_03, wr_beac_airlock_a_04->close_position(), wr_beac_airlock_a_04->S_chain_state_greater() );
	wr_beac_airlock_a_01->auto_distance_open( -4.0, FALSE );
	
end

script dormant f_wr_beac_b_airlock()
	wr_beac_airlock_b_02->chain_parent_open( wr_beac_airlock_b_01, wr_beac_airlock_b_01->close_position(), wr_beac_airlock_b_02->S_chain_state_greater() );
	wr_beac_airlock_b_03->chain_parent_open( wr_beac_airlock_b_02, wr_beac_airlock_b_02->close_position(), wr_beac_airlock_b_03->S_chain_state_greater() );
	wr_beac_airlock_b_04->chain_parent_open( wr_beac_airlock_b_03, wr_beac_airlock_b_03->close_position(), wr_beac_airlock_b_04->S_chain_state_greater() );
	wr_beac_airlock_b_01->auto_distance_open( -4.0, FALSE );
end

// ANGULAR VELOCITY

script dormant f_crate_angular_velocity()
	object_set_angular_velocity(b_antennae_1, 0, 0, 1); 
	object_set_angular_velocity(b_antennae_2, 0, 0, 1);
	object_set_angular_velocity(b_antennae_3, 0, 0, 1);
	object_set_angular_velocity(b_crate_space_1, 0, 0, 1); 
	object_set_angular_velocity(b_crate_space_2, 0, 0, 1);
	object_set_angular_velocity(b_crate_space_3, 0, 0, 1);
	object_set_angular_velocity(b_crate_space_4, 0, 0, 1); 
	object_set_angular_velocity(b_crate_space_5, 0, 0, 1);
	object_set_angular_velocity(b_crate_space_6, 0, 0, 1);
	object_set_angular_velocity(b_crate_space_7, 0, 0, 1);
	object_set_angular_velocity(b_crate_space_8, 0, 0, 1);
end



//DOORS
script dormant f_door_airlock_1_exterior_open()
	//sleep_until( B_airlock_1_complete, 1 );
	sound_impulse_start( 'sound\environments\solo\m010\placeholder\doors\m_m10_placeholder_airlock_high_to_low.sound', NONE, 1 );
	thread(fx_airlock_decompression());
	thread(fx_airlock_decompression2());
	sleep(45);
	f_zero_g_airlock_1_lift();
	sound_set_state( 'set_state_no_gravity' );
	door_airlock_1_exterior->open_default();

end

script static void f_door_airlock_1_exterior_close()
	door_airlock_1_exterior->auto_trigger_close( tv_airlock_inside, FALSE, FALSE, TRUE );
end

script static void f_door_airlock_2_exterior()
	door_airlock_2_exterior->speed_set( door_airlock_2_exterior->speed_fast() );
	door_airlock_2_exterior->open();
end

script static void f_door_airlock_2_exterior_close()
	//device_operates_automatically_set(door_airlock_2_exterior, FALSE );
	door_airlock_2_exterior->close();
end


script dormant f_blip_missile()
		sleep_until (volume_test_players (tv_blip_missile_control), 1);
		wake (f_dialog_beacon_enter);
		//print ("blip missile control");
		//NotifyLevel("blip missile control");
end

script static void f_activator_get( object trigger, unit activator )
	g_ics_player = activator;
end


script dormant f_missile_control_switch()
	
		object_create (missile_control_switch);
		
		wake (f_blip_missile);	
		sleep_until( device_get_position( missile_control_switch ) > 0.0, 1 );
		print ("Missile Switch Fired");
	  f_ai_garbage_erase(sg_beac_erase, 10, 20, -1, -1, TRUE);
		NotifyLevel("unblip missile control");
		show_missile = pup_play_show (missile_button);
		sleep_s(1.5);
		game_save();
		wake (f_accelerator_switch);
		show_missile = pup_play_show (missile_control);
		wake (f_dialog_missile_launched);
		
		sleep_s(2);
		sleep_until(ai_living_count(sg_beacons_all) < 15);
		ai_place (sq_phantom_3);
		
		sleep_s(1);
		sleep_until(ai_living_count(sg_beacons_all) < 12);
		ai_place (sq_phantom_4);
		
		sleep_s(3.5);
		wake (f_dialog_magec_jam);
	

end


script dormant f_accelerator_switch()

		// sleep the length of the Missile Launch
		sleep_s(14.5);
		
		//wake (f_dialog_magac_jam);
		object_create (mag_push_switch);
		sleep_s(1);
		NotifyLevel("blip push point");
		
	
		sleep_until( device_get_position( mag_push_switch ) > 0.0, 1 );
		NotifyLevel("unblip push point");
		pup_stop_show(show_missile);
		//sleep_s(1); 
		object_destroy (mag_push_switch);
		
		local long show = pup_play_show(beacon);
		
		ai_erase_all();
		/*ai_erase(sq_phantom_3);
		//ai_set_deaf (sq_phantom_3, 1);
		ai_set_deaf (sq_phantom_4, 1);
		ai_set_blind (sq_phantom_4, 1);
		ai_erase (sg_1);
		ai_erase (sg_2);
		ai_erase(sg_2_jackals);
		ai_erase (sg_3);
		ai_erase (sg_4);
		ai_erase(sg_2_elites);
		ai_erase (sg_3_lr_jackals);
		ai_erase (sg_4_grunts_front_right);
		ai_erase (sg_4_grunts_back_phantom);*/

		//Music
		thread(f_music_beacon_deck_beacon_objective_complete());

		wake (f_beacon_airlock_exit_control);
		sleep(940);
		thread( f_maw_light_increase());
		sleep_until (b_beacon_played == TRUE); 		// Set true in Puppeter Script
		//sleep_until(not pup_is_playing(show), 1);
		
		game_save_immediate();
		print ("turn on way point");
		
		// GTFO!
		sleep_s(2);
		f_mission_screenshakes_ambient_layer_set_inc( DEF_S_AMBIENTSHAKE_STATE_BEACON_END );
		wake (maw_opens_description);
		pup_play_show(maw_grav_pull); 
		wake (f_dialog_beacon_get_objective_leave_beacon);
		wake (f_airlock_2_grav_trigger);

		objectives_finish(1);
		objectives_show_up_to(2);
			
		// Begin streaming in some of the next zone set.
		prepare_to_switch_to_zone_set("broken_maintenance_preload");
		
		sleep(30 * 2);
		NotifyLevel("blip exit to broken");
		
end

script dormant f_airlock_2_grav_trigger()	
	sleep_until(volume_test_players(tv_airlock_2_gravity),1);
	print("Player Hit Trigger");
	f_zero_g_airlock_2();
end

script static void mag_accel_push( object trigger, unit activator )
	g_ics_player = activator;
end

script dormant fx_grav_pull()
	effect_new ('fx\library\stand-in\stand_in_huge.effect', fx_beac_grav_exp_1 );
	sleep (2);
	effect_new ('fx\library\stand-in\stand_in_huge.effect', fx_beac_grav_exp_2 );
	effect_new ('fx\library\stand-in\stand_in_huge.effect', fx_beac_grav_exp_3 );
	sleep (2);
  effect_new ('fx\library\stand-in\stand_in_large.effect', fx_beac_grav_exp_4 );
  object_set_angular_velocity(b_crate_space_6, .5, 1, .8);
  sleep (17);
  effect_new ('fx\library\stand-in\stand_in_large.effect', fx_beac_grav_exp_5 );
  object_set_angular_velocity(b_crate_space_4, 1, .6, .2);
  object_set_angular_velocity(b_cov_barrier_6, .2, .9, .8);
  sleep (9);
  effect_new ('fx\library\stand-in\stand_in_large.effect', fx_beac_grav_exp_11 );
  object_set_angular_velocity(b_crate_space_5, 1, .8, .2);
  sleep (50);
  effect_new ('fx\library\stand-in\stand_in_large.effect', fx_beac_grav_exp_26 );
  object_set_angular_velocity(b_antennae_3, .8, .6, .7);
  sleep (23);
  effect_new ('fx\library\stand-in\stand_in_large.effect', fx_beac_grav_exp_6 );
  object_set_angular_velocity(b_cov_barrier_7, .3, .6, .5);
  object_set_angular_velocity(b_cov_barrier_5, 1, .2, 1);
  sleep (30);
  effect_new ('fx\library\stand-in\stand_in_large.effect', fx_beac_grav_exp_12 );
  object_set_angular_velocity(b_crate_space_8, .5, .6, 0);
  sleep (9);
  effect_new ('fx\library\stand-in\stand_in_large.effect', fx_beac_grav_exp_13 );
  sleep (47);
  effect_new ('fx\library\stand-in\stand_in_large.effect', fx_beac_grav_exp_14 );
  object_set_angular_velocity(b_antennae_1, 0, .5, .2);
  sleep (90);
  effect_new ('fx\library\stand-in\stand_in_large.effect', fx_beac_grav_exp_15 );
  object_set_angular_velocity(b_crate_space_8, .8, .7, 9);
  object_set_angular_velocity(b_cov_barrier_5, .6, .5, .3);
  effect_new ('fx\library\stand-in\stand_in_large.effect', fx_beac_grav_exp_7 );
  sleep (30);
  object_set_angular_velocity(b_cov_barrier_1, 1, .4, .6);
  sleep (15);
  effect_new ('fx\library\stand-in\stand_in_large.effect', fx_beac_grav_exp_8 );
  effect_new ('fx\library\stand-in\stand_in_large.effect', fx_beac_grav_exp_9 );
  sleep (9);
  effect_new ('fx\library\stand-in\stand_in_large.effect', fx_beac_grav_exp_16 );
  effect_new ('fx\library\stand-in\stand_in_large.effect', fx_beac_grav_exp_22 );
  object_set_angular_velocity(b_crate_space_7, .3, 1, .4);
  object_set_angular_velocity(b_cov_barrier_3, .8, .7, .6);
  sleep (11);
  effect_new ('fx\library\stand-in\stand_in_large.effect', fx_beac_grav_exp_23 );
  sleep (11);
  effect_new ('fx\library\stand-in\stand_in_large.effect', fx_beac_grav_exp_18 );
  effect_new ('fx\library\stand-in\stand_in_large.effect', fx_beac_grav_exp_10 );
  object_set_angular_velocity(b_cov_barrier_4, .5, .7, .5);
  sleep (18);
  effect_new ('fx\library\stand-in\stand_in_large.effect', fx_beac_grav_exp_21 );
  effect_new ('fx\library\stand-in\stand_in_large.effect', fx_beac_grav_exp_17 );
  object_set_angular_velocity(b_antennae_2, .6, .9, .1);  
  sleep (11);
  effect_new ('fx\library\stand-in\stand_in_large.effect', fx_beac_grav_exp_19 );
  object_set_angular_velocity(b_crate_space_3, 0, 0, .8);
  sleep (32);
  effect_new ('fx\library\stand-in\stand_in_large.effect', fx_beac_grav_exp_20 );
  effect_new ('fx\library\stand-in\stand_in_large.effect', fx_beac_grav_exp_25 );
  object_set_angular_velocity(b_cov_barrier_8, 1, 1, 1);
  sleep (21);
  effect_new ('fx\library\stand-in\stand_in_large.effect', fx_beac_grav_exp_24 );
end

script static void f_zero_g_airlock_2()
	object_set_velocity (airlock_2_cr_1, .1, .35, 0);
	object_set_velocity (airlock_2_cr_2, .4, .1, .35);
	object_set_velocity (airlock_2_cr_3, 0, .3, .15);
	object_set_velocity (airlock_2_cr_4, .35, .5, .1);
	object_set_velocity (airlock_2_cr_5, .45, .5, 0);
	print ("Shoot that debris");
	object_create(airlock_phantom);
end

script static void f_zero_g_airlock_2_drop()
	object_set_gravity (airlock_2_cr_1, 1, 1);
	object_set_gravity (airlock_2_cr_2, 1, 1);
	object_set_gravity (airlock_2_cr_3, 1, 1);
	object_set_gravity (airlock_2_cr_4, 1, 1);
	object_set_gravity (airlock_2_cr_5, 1, 1);
	object_set_velocity (airlock_2_cr_1, 0, .1, .1);
	object_set_velocity (airlock_2_cr_2, 0, .1, .1);
	object_set_velocity (airlock_2_cr_3, 0, .1, .1);
	object_set_velocity (airlock_2_cr_4, 0, .1, .1);
	object_set_velocity (airlock_2_cr_5, 0, .1, .1);
end

script static void f_zero_g_airlock_1_lift()
	object_set_gravity (cr_airlock_01, 0, 1);
	object_set_gravity (cr_airlock_02, 0, 1);
	object_set_gravity (cr_airlock_03, 0, 1);
	object_set_gravity (cr_airlock_04, 0, 1);
	object_set_gravity (cr_airlock_05, 0, 1);
	object_set_gravity (cr_airlock_06, 0, 1);
	object_set_gravity (cr_airlock_07, 0, 1);
	object_set_gravity (cr_airlock_08, 0, 1);
	object_set_gravity (cr_airlock_09, 0, 1);
	object_set_velocity (cr_airlock_01, .5, .1, 0);
	object_set_velocity (cr_airlock_02, .5, .1, 0);
	object_set_velocity (cr_airlock_03, .5, .1, 0);
	object_set_velocity (cr_airlock_04, .5, .1, 0);
	object_set_velocity (cr_airlock_05, .5, .1, 0);
	object_set_velocity (cr_airlock_06, .5, .1, 0);
	object_set_velocity (cr_airlock_07, .5, .1, 0);
	object_set_velocity (cr_airlock_08, .5, .1, 0);
	object_set_velocity (cr_airlock_09, .5, .1, 0);
end

script dormant f_beac_late_spawn()
	sleep_until(ai_living_count(sg_beacons_all) <= 20);
	sleep_until(volume_test_players_lookat(tv_late_spawn_1, 40, 40) == FALSE AND volume_test_players_lookat(tv_late_spawn_2, 40, 40) == FALSE);
	ai_place(sq_2_jackal_2);
	ai_place(sq_3_elite);
end

/// Lighting increase in beacons when the Maw opens

script static void f_maw_light_increase()
	print("::light is increasing::");
	interpolator_start('sun');
end
// --- End m10_beacon.hsc ---

// --- Begin m10_cortana_plinth.hsc ---
// -------------------------------------------------------------------------------------------------
// PLINTH
// -------------------------------------------------------------------------------------------------
// variables
global boolean B_player_has_cortana = FALSE;

global boolean g_cortana_pull_handle = false;

// --- End m10_cortana_plinth.hsc ---

// --- Begin m10_crash_audio.hsc ---

; =================================================================================================
; =================================================================================================
; *** GLOBALS ***
; =================================================================================================
; =================================================================================================
global looping_sound amb_current = "";

global boolean b_audio_debug = false;

script static void audio_print(string s)
	if b_audio_debug then
		print (s);
	end
end

script static void sleep_until_observatory_assassination_started()
	sleep_until ((ai_strength (ai_observatory_init) < 1) or player_action_test_grenade_trigger() or player_action_test_primary_trigger()  ,1);
end

script startup f_audio_main()
	sleep_until( b_mission_started == TRUE );
	
	audio_print("f_audio_main");
	wake(f_amb_m10_a01_pod_exit);
	wake(f_amb_m10_a01_exit);
	wake(f_amb_m10_a02_exit);
	wake(f_amb_m10_a04_exit);
	wake(f_amb_m10_a05_exit);
	wake(f_amb_m10_a06_halfway);
	
	// HACK - this is here until I can get an explicit hook from another script (patridu)
	wake(f_music_beacon_deck_exited_first_airlock);
	
	wake(f_amb_m10_enter_rooms_cryo);
	wake(f_amb_m10_enter_rooms_armory);
	wake(f_amb_m10_enter_rooms_hallways);
	wake(f_amb_m10_enter_rooms_observatory);
	wake(f_amb_m10_enter_rooms_lookout);
	wake(f_amb_m10_enter_rooms_airlock);
	wake(f_amb_m10_enter_rooms_maintenance);
	wake(f_amb_m10_enter_rooms_pod_chase);
	
	thread (sfx_campaign_enter());
	thread(f_music_state_controller());
	
	thread (load_music_for_zone_set());
end

// this will always be 0 unless an insertion point is used
// in that case, it is used to skip past the trigger volumes that precede the selected insertion point
global short b_m10_music_progression = 0;
global long s_music_zone_set_thread_id = 0;


script static void load_music_for_zone_set()
	sleep_until(b_m10_music_progression > 0 or current_zone_set_fully_active() == S_zoneset_00_cryo_02_hallway_04_armory, 1);
	
	music_start('Play_mus_m10_start');
	
	// cryo room
	sleep_until(b_m10_music_progression > 10 or volume_test_players (tv_music_r01_cryo_room), 1);
	if b_m10_music_progression <= 10 then
		// starts regions 1, 2, 3
		s_music_zone_set_thread_id = thread (f_zone_set_00_cryo_02_hallway_04_armory());
	end
	
	sleep_until(b_m10_music_progression > 15 or volume_test_players (tv_music_r04_hallway_elevator_lobby), 1);
	if (s_music_zone_set_thread_id != 0) then
		kill_thread (s_music_zone_set_thread_id);
		s_music_zone_set_thread_id = 0;
	end
	if b_m10_music_progression <= 15 then
		music_set_state('Play_mus_m10_r04_hallway_elevator_lobby');
	end
		
	sleep_until(b_m10_music_progression > 20 or volume_test_players (tv_music_r07_observatory), 1);
	if (s_music_zone_set_thread_id != 0) then
		kill_thread (s_music_zone_set_thread_id);
		s_music_zone_set_thread_id = 0;
	end
	if b_m10_music_progression <= 20 then
		sound_set_state('Set_State_M10_Observatory');
		music_set_state('Play_mus_m10_r07_observatory');
	end
	
	sleep_until(b_m10_music_progression > 25 or volume_test_players (tv_music_r08_elevator_lobby_top), 1);
	if (s_music_zone_set_thread_id != 0) then
		kill_thread (s_music_zone_set_thread_id);
		s_music_zone_set_thread_id = 0;
	end
	if b_m10_music_progression <= 25 then
		music_set_state('Play_mus_m10_r08_elevator_lobby_top');
	end

	sleep_until(b_m10_music_progression > 30 or volume_test_players (tv_music_r10_elevator_lobby_bottom), 1);
	if (s_music_zone_set_thread_id != 0) then
		kill_thread (s_music_zone_set_thread_id);
		s_music_zone_set_thread_id = 0;
	end
	if b_m10_music_progression <= 30 then
		sound_set_state('Set_State_M10_Elevator_Lobby_Bottom');
		music_set_state('Play_mus_m10_r10_elevator_lobby_bottom');
	end	

	// RALLY POINT BRAVO	
	sleep_until(b_m10_music_progression > 40 or volume_test_players (tv_music_r09_lookout), 1);
	if b_m10_music_progression <= 40 then
		music_set_state('Play_mus_m10_r09_lookout');
	end
	
	sleep_until(b_m10_music_progression > 50 or volume_test_players (tv_music_r11_cafe), 1);
	if b_m10_music_progression <= 50 then
		music_set_state('Play_mus_m10_r11_cafe');
	end
	
	sleep_until(b_m10_music_progression > 60 or volume_test_players (tv_music_r12_preparation_chamber), 1);
	if b_m10_music_progression <= 60 then
		music_set_state('Play_mus_m10_r12_preparation_chamber');
	end

	sleep_until(b_m10_music_progression > 60 or volume_test_players (tv_music_r13_corner_room), 1);
	if b_m10_music_progression <= 60 then
		music_set_state('Play_mus_m10_r13_corner_room');
	end
	
		sleep_until(b_m10_music_progression > 60 or volume_test_players (tv_amb_m10_c05_b), 1);
	if b_m10_music_progression <= 60 then
		music_set_state('Play_mus_m10_r14_box_room');
	end
	
	sleep_until(b_m10_music_progression > 60 or volume_test_players (tv_music_r15_airlock_a), 1);
	if b_m10_music_progression <= 60 then
		music_set_state('Play_mus_m10_r15_airlock_a');
	end
	
	sleep_until(b_m10_music_progression > 70 or volume_test_players (tv_music_r16_beacons), 1);
	if b_m10_music_progression <= 70 then
		if (s_music_zone_set_thread_id != 0) then
			kill_thread (s_music_zone_set_thread_id);
			s_music_zone_set_thread_id = 0;
		end
		sound_set_state('Set_State_M10_Beacons');
		// 16, 15
		s_music_zone_set_thread_id = thread (f_zone_set_28_airlock_30_beacons());
	end
	
	sleep_until(b_m10_music_progression > 80 or volume_test_players (tv_music_r17_broken_floor), 1);
	if b_m10_music_progression <= 80 then
		// 17, 18, 19
		if (s_music_zone_set_thread_id != 0) then
			kill_thread (s_music_zone_set_thread_id);
			s_music_zone_set_thread_id = 0;
		end
		s_music_zone_set_thread_id = thread (f_zone_set_28_airlock_32_broken());
	end
	
	// sleep_until(b_m10_music_progression > 100 or volume_test_players (tv_music_r20_vehicle_bay), 1);
	// thread(kill_music_thread());
	// if b_m10_music_progression <= 100 then
		// music_stop('Stop_mus_m10'); 
	// end

end

; =================================================================================================
; *** MUSIC ENCOUNTER HOOKS ***
; =================================================================================================
script static void f_mus_m10_e01_begin()
	dprint("f_mus_m10_e01");
	music_set_state('Play_mus_m10_e01_obervatory');
end

script static void f_mus_m10_e02_begin()
	dprint("f_mus_m10_e02");
	music_set_state('Play_mus_m10_e03_hallways');
end

script static void f_mus_m10_e03_begin()
	dprint("f_mus_m10_e03");
	music_set_state('Play_mus_m10_e05_flank_room');
end

script static void f_mus_m10_e04_begin()
	dprint("f_mus_m10_e04");
	music_set_state('Play_mus_m10_e07_beacon');
end

script static void f_mus_m10_e05_begin()
	dprint("f_mus_m10_e05");
	music_set_state('Play_mus_m10_e09_maintenance_upper');
end

script static void f_mus_m10_e06_begin()
	dprint("f_mus_m10_e06");
	music_set_state('Play_mus_m10_e11_maintenance_lower');
end

script static void f_mus_m10_e01_finish()
	dprint("f_mus_m10_e01");
	music_set_state('Play_mus_m10_e02_obervatory_end');
end

script static void f_mus_m10_e02_finish()
	dprint("f_mus_m10_e02");
	music_set_state('Play_mus_m10_e04_hallways_end');
end

script static void f_mus_m10_e03_finish()
	dprint("f_mus_m10_e03");
	music_set_state('Play_mus_m10_e06_flank_room_end');
end

script static void f_mus_m10_e04_finish()
	dprint("f_mus_m10_e04");
	music_set_state('Play_mus_m10_e08_beacon_end');
end

script static void f_mus_m10_e05_finish()
	dprint("f_mus_m10_e05");
	music_set_state('Play_mus_m10_e10_maintenance_upper_end');
end

script static void f_mus_m10_e06_finish()
	dprint("f_mus_m10_e06");
	music_set_state('Play_mus_m10_e12_maintenance_lower_end');
end

; =================================================================================================
; *** MUSIC ZONESET HOOKS ***
; =================================================================================================
script static void f_zone_set_00_cryo_02_hallway_04_armory()
	music_set_state('Play_mus_m10_r01_cryo_room');
	
	sleep_until (volume_test_players(tv_amb_m10_a02), 1);
	music_set_state('Play_mus_m10_r02_hallways_cryo');

	sleep_until (volume_test_players(tv_amb_m10_a05), 1);
	music_set_state('Play_mus_m10_r03_armory');
end

script static void f_zone_set_28_airlock_30_beacons()
	music_set_state('Play_mus_m10_r16_beacons');
	
	sleep_until( volume_test_players(vo_airlock_return), 1);
	music_set_state('Play_mus_m10_r15_airlock_b');
end

script static void f_zone_set_28_airlock_32_broken()
	music_set_state('Play_mus_m10_r17_broken_floor');
	
	sleep_until (volume_test_players(tv_amb_m10_e05_lower), 1);
	music_set_state('Play_mus_m10_r18_maintenance');
	
	sleep_until (volume_test_players(tv_music_m10_explosionalley_hall1), 1);
	music_set_state('Play_mus_m10_r19_hallway_maintenance');
end

script static void f_sfx_insertion_reset( short s_index )
	
	if s_index == DEF_INSERTION_INDEX_CINEMATIC then
		sound_impulse_start ('sound\environments\solo\m010\insertion_points\m_m10_insertion_point_cinematic', NONE, 1.0);
	end
	if s_index == DEF_INSERTION_INDEX_CRYO then
		sound_impulse_start ('sound\environments\solo\m010\insertion_points\m_m10_insertion_point_cryo', NONE, 1.0);
	end
	if s_index == DEF_INSERTION_INDEX_LAB then
		sound_impulse_start ('sound\environments\solo\m010\insertion_points\m_m10_insertion_point_lab', NONE, 1.0);
	end
	if s_index == DEF_INSERTION_INDEX_ELEVATOR_ICS then
		sound_impulse_start ('sound\environments\solo\m010\insertion_points\m_m10_insertion_point_elevator_ics', NONE, 1.0);
	end
	if s_index == DEF_INSERTION_INDEX_OBSERVATORY then
		sound_impulse_start ('sound\environments\solo\m010\insertion_points\m_m10_insertion_point_observatory', NONE, 1.0);
		// m_m10_music_observatory_after_elevator_ics
		dprint("observatory music set");
  end
  if s_index == DEF_INSERTION_INDEX_FLANK then
  	sound_impulse_start ('sound\environments\solo\m010\insertion_points\m_m10_insertion_point_flank', NONE, 1.0);
  	// m_m10_music_observatory_hallway_1
		dprint("flank music set");
  end
  if s_index == DEF_INSERTION_INDEX_BEACONS then
  	sound_impulse_start ('sound\environments\solo\m010\insertion_points\m_m10_insertion_point_beacon', NONE, 1.0);
  	// m_m10_music_beacon_beginning
		dprint("beacons music set");
  end
  if s_index == DEF_INSERTION_INDEX_BROKEN then
  	sound_impulse_start ('sound\environments\solo\m010\insertion_points\m_m10_insertion_point_broken', NONE, 1.0);
  	// m_m10_music_escape_broken_floor
		dprint("broken floor music set");
  end
  if s_index == DEF_INSERTION_INDEX_EXPLOSIONALLEY then
  	sound_impulse_start ('sound\environments\solo\m010\insertion_points\m_m10_insertion_point_explosionalley', NONE, 1.0);
  	// m_m10_music_observatory_hallway_1
		dprint("explosion alley music set");
	end
	if s_index == DEF_INSERTION_INDEX_VEHICLEBAY then
	  sound_impulse_start ('sound\environments\solo\m010\insertion_points\m_m10_insertion_point_vehiclebay', NONE, 1.0);
	  // sound\environments\solo\m010\music\events\m_m10_music_escape_hallway_2
		dprint("vehicle bay music set");
	end
	if s_index == DEF_INSERTION_INDEX_SPACE then
		sound_impulse_start ('sound\environments\solo\m010\insertion_points\m_m10_insertion_point_jumpdebris', NONE, 1.0);
		// m_m10_music_escape_into_space
		dprint("jump debris music set");
	end
	
end

; =================================================================================================
; *** PLACEHOLDER ***
; =================================================================================================
script static void sfx_unsc_ship_destroy()
	sound_impulse_start ('sound\environments\solo\m010\device_machines\streaming\m10_ship_destroy', NONE, 1);
end

script static void sfx_unsc_canister_explode_maintenance_hall(object canister_2)
	sound_impulse_start ('sound\environments\solo\m010\device_machines\explode\m10_vehicle_bay_explosions05', canister_2, 1);
end

//************************************
// FUEL CANISTERS IN MAINTENANCE HALL
//************************************

script static void sfx_unsc_canister_explode_maintenance_hall_1()
	sound_impulse_start ('sound\environments\solo\m010\device_machines\explode\m10_vehicle_bay_explosions05', fuel_can_u_1, 1);
end

script static void sfx_unsc_canister_explode_maintenance_hall_2()
	sound_impulse_start ('sound\environments\solo\m010\device_machines\explode\m10_vehicle_bay_explosions05', grunt_killer, 1);
end

script static void sfx_unsc_canister_explode_maintenance_hall_3()
	sound_impulse_start ('sound\environments\solo\m010\device_machines\explode\m10_vehicle_bay_explosions05', cr_maintenance_fuel_can_05, 1);
end

script static void sfx_unsc_canister_explode_maintenance_hall_4()
	sound_impulse_start ('sound\environments\solo\m010\device_machines\explode\m10_vehicle_bay_explosions05', cr_maintenance_fuel_can_03, 1);
end

script static void sfx_unsc_canister_explode_maintenance_hall_5()
	sound_impulse_start ('sound\environments\solo\m010\device_machines\explode\m10_vehicle_bay_explosions05', fuel_can_u_2, 1);
end

script static void sfx_unsc_canister_explode_maintenance_hall_6()
	sound_impulse_start ('sound\environments\solo\m010\device_machines\explode\m10_vehicle_bay_explosions05', fuel_can_u_3, 1);
end

script static void sfx_unsc_canister_explode_maintenance_hall_7()
	sound_impulse_start ('sound\environments\solo\m010\device_machines\explode\m10_vehicle_bay_explosions05', grunt_killer2, 1);
end

//************************************
//    Cryotube Gravity Generators
//************************************

script static void f_sfx_activating_gravity_generators()
	sound_impulse_start ('sound\environments\solo\m010\device_machines\cryotube\m10_gravity_generator', NONE, 1);
end

script static void sfx_cryo_exit()
	audio_print("[sfx] cryo exit");
	sound_impulse_start ('sound\environments\solo\m010\placeholder\doors\m_m10_cyro_chamber_exit', NONE, 1);
	sound_impulse_start ('sound\environments\solo\m010\device_machines\mach_m10_amb_cryotube_manual_release', NONE, 1);
end

script static void sfx_observatory_visor()
	audio_print("[sfx] observatory visor");
	sound_impulse_start ('sound\environments\solo\m010\placeholder\doors\m_m10_open_visor', NONE, 1);
end

//************************************
//    Doors
//************************************
script static void sfx_door_close()
	audio_print("[sfx] door close");
	sound_impulse_start ('sound\environments\solo\m010\placeholder\doors\m_m10_placeholder_door_close', NONE, 1);
end

script static void sfx_weapon_rack_open()
	audio_print("[sfx] weapon rack open");
	sound_impulse_start ('sound\environments\solo\m010\placeholder\doors\m_m10_placeholder_weapon_rack_open', NONE, 1);
end

script static void sfx_weapon_rack_close()
	audio_print("[sfx] weapon rack close");
	sound_impulse_start ('sound\environments\solo\m010\placeholder\doors\m_m10_placeholder_weapon_rack_close', NONE, 1);
end

script static sound sfx_airlock_high_to_low()
	audio_print("[sfx] airlock high to low");
	sound\environments\solo\m010\placeholder\doors\m_m10_placeholder_airlock_high_to_low;
end

script static sound sfx_airlock_low_to_high()
	audio_print("[sfx] airlock low to high");
	sound\environments\solo\m010\placeholder\doors\m_m10_placeholder_airlock_low_to_high;
end

//************************************
//    Elevators
//************************************
script static void sfx_elevator_door_open( object target)
	sound_impulse_start ('sound\environments\solo\m010\device_machines\doors\m10_door_elevator_open', target, 1);
end

script static void sfx_elevator_double_door( object target)
	sound_impulse_start ('sound\environments\solo\m010\device_machines\doors\m10_double_door_elevator', target, 1);
end

//************************************
//   Other
//************************************

script static sound sfx_zero_g_breach()
	audio_print("[sfx] zero g breach");
	sound\environments\solo\m010\placeholder\doors\m_m10_placeholder_zero_g_breach;
end

script static void sfx_ship_fly_by()
	audio_print("[sfx] ship fly by");
	sound_impulse_start ('sound\environments\solo\m010\placeholder\flyby\m_m10_placeholder_ship_fly_by', NONE, 1);
end

script static looping_sound sfx_rumble_low()
	sound\environments\solo\m010\placeholder\rumble\m_m10_placeholder_low_rumble;
end

script static looping_sound sfx_rumble_med()
	// XXX medium/high destruction rumble; beacon escape; broken floor
	sound\environments\solo\m010\placeholder\rumble\m_m10_placeholder_medium_rumble;
end

script static looping_sound sfx_rumble_high()
	// XXX high destruction rumble; maintenance
	sound\environments\solo\m010\placeholder\rumble\m_m10_placeholder_high_rumble;
end

script static looping_sound sfx_elevator_rumble()
	sound\environments\solo\m010\placeholder\rumble\m_m10_placeholder_elevator_rumble;
end

script static sound sfx_didact_pre_scan()
	sound\environments\solo\m010\fx\events\m10_fx_didact_scan_in;
end

script static sound sfx_didact_scan()
	sound\environments\solo\m010\fx\events\m10_fx_didact_scan;
end

script static sound sfx_hall_shake()
	// XXX temp
	sound\environments\solo\m010\ambience\explosions\amb_m10_explosions_medium_01;
end

script static sound sfx_breaking_hallway()
	audio_print("[sfx] breaking hallway");
	//sound_impulse_start('sound\environments\solo\m010\music\events\m_m10_music_escape_destruction_event_1', NONE, 1);
	music_state = 19;
	
	// XXX tag needs to return time
	sound\environments\solo\m010\placeholder\destruction\m_m10_placeholder_breaking_hallway;
end

script static sound sfx_broken_path_blocker()
	audio_print("[sfx] broken path blocker");
	sound\environments\solo\m010\placeholder\destruction\m_m10_placeholder_broken_path_blocker;
end

script static sound sfx_broken_room_destruction()
	audio_print("[sfx] broken room destruction");
	// XXX tag needs to return time
	sound\environments\solo\m010\placeholder\destruction\m_m10_placeholder_broken_room_destruction;
end

script static sound sfx_fud_explosion()
	audio_print("[sfx] fud explosion");
	sound\environments\solo\m010\placeholder\destruction\m_m10_placeholder_fud_explosion;
end

script static sound sfx_podchase_ship_explosion()
	audio_print("[sfx] podchase ship explosion");
	sound\environments\solo\m010\placeholder\destruction\m_m10_placeholder_ship_explosion;
end

script static sound sfx_maintenance_ramp_near_destruction()
	audio_print("[sfx] sfx_maintenance_ramp_near_destruction");
	// XXX tag needs to return time
	sound\environments\solo\m010\placeholder\destruction\m_m10_placeholder_maintenance_destruction;
end

script static sound sfx_maintenance_ramp_far_destruction()
	audio_print("[sfx] sfx_maintenance_ramp_far_destruction");
	// XXX tag needs to return time
	sound\environments\solo\m010\placeholder\destruction\m_m10_placeholder_maintenance_destruction;
end

script static sound sfx_vehicle_bay_destruction()
	audio_print("[sfx] vehicle bay destruction");
	// XXX tag needs to return time
	sound\environments\solo\m010\placeholder\destruction\m_m10_placeholder_vehicle_bay_destruction;
end

script static sound sfx_accelerator_in_position()
	audio_print("[sfx] accelerator in position");
	sound\environments\solo\m010\placeholder\beacon_deck\m_m10_placeholder_accelerator_in_position;
end

script static sound sfx_beacon_doors_opening()
	audio_print("[sfx] beacon doors opening");
	sound\environments\solo\m010\placeholder\beacon_deck\m_m10_placeholder_beacon_doors_opening;
end

script static sound sfx_beacon_destroyed()
	audio_print("[sfx] beacon destroyed");
	sound\environments\solo\m010\placeholder\beacon_deck\m_m10_placeholder_beacon_destroyed;
end

script static sound sfx_beacon_launching()
	audio_print("[sfx] beacon launching");
	sound\environments\solo\m010\placeholder\beacon_deck\m_m10_placeholder_beacon_launching;
end

script static void sfx_subcryo_alarm_start()
	audio_print("[sfx] subcryo alarm start");
	// object_create( m_m10_alarm_sub_cryo_hall_01 );
	// object_create( m_m10_alarm_sub_cryo_hall_02 );
end

script static void sfx_subcryo_alarm_stop()
	audio_print("[sfx] subcryo alarm stop");
	// object_destroy( m_m10_alarm_sub_cryo_hall_01 );
	// object_destroy( m_m10_alarm_sub_cryo_hall_02 );
end

script static void sfx_brokenroom_alarm_start()
	audio_print("[sfx] brokenroom alarm start");
	// object_create( m_m10_alarm_broken_room_01 );
	// object_create( m_m10_alarm_broken_room_02 );
end

script static void sfx_brokenroom_alarm_stop()
	audio_print("[sfx] brokenroom alarm stop");
	// object_destroy( m_m10_alarm_broken_room_01 );
	// object_destroy( m_m10_alarm_broken_room_02 );
end

script static void sfx_maintenance_alarm_start()
	audio_print("[sfx] maintenance alarm start");
	// object_create( m_m10_alarm_maintenance_01 );
	// object_create( m_m10_alarm_maintenance_02 );
	// object_create( m_m10_alarm_maintenance_03 );
end

script static void sfx_maintenance_alarm_stop()
	audio_print("[sfx] maintenance alarm stop");
	// object_destroy( m_m10_alarm_maintenance_01 );
	// object_destroy( m_m10_alarm_maintenance_02 );
	// object_destroy( m_m10_alarm_maintenance_03 );
end

script static void sfx_maintenance_hall_alarm_start()
	audio_print("[sfx] maintenance hall alarm start");
	// object_create( m_m10_alarm_maint_hall_01 );
	// object_create( m_m10_alarm_maint_hall_02 );
end

script static void sfx_maintenance_hall_alarm_stop()
	audio_print("[sfx] maintenance hall alarm stop");
	// object_destroy( m_m10_alarm_maint_hall_01 );
	// object_destroy( m_m10_alarm_maint_hall_02 );
end

script static void sfx_vehiclebay_alarm_start()
	audio_print("[sfx] vehiclebay alarm start");
	// object_create( m_m10_alarm_vehiclebay_01 );
	// object_create( m_m10_alarm_vehiclebay_02 );
end

script static void sfx_vehiclebay_alarm_stop()
	audio_print("[sfx] vehiclebay alarm stop");
	// object_destroy( m_m10_alarm_vehiclebay_01 );
	// object_destroy( m_m10_alarm_vehiclebay_02 );
end

// new alarms
global short S_end_alarm_state											= 0;
global short DEF_S_END_ALARM_STATE_AIRLOCK 					= 1;
global short DEF_S_END_ALARM_STATE_BROKEN_ROOM			= 2;
global short DEF_S_END_ALARM_STATE_MAINTENANCE 			= 3;
global short DEF_S_END_ALARM_STATE_EXPLOSION_ALLEY 	= 4;
global short DEF_S_END_ALARM_STATE_BLACKOUT					= 5;

script static void sfx_end_alarm_set( short s_state )
static looping_sound snd_alarm = NONE;

	if ( s_state > S_end_alarm_state ) then

		if ( snd_alarm != NONE ) then
			sound_looping_stop( snd_alarm );
			snd_alarm = NONE;
		end
	
		if ( s_state == DEF_S_END_ALARM_STATE_AIRLOCK ) then
			dprint( "sfx_end_alarm_set: DEF_S_END_ALARM_STATE_AIRLOCK" );
			snd_alarm = sound\storm\states\siren_intensity\set_state_airlock;
		end
		if ( s_state == DEF_S_END_ALARM_STATE_BROKEN_ROOM ) then
			dprint( "sfx_end_alarm_set: DEF_S_END_ALARM_STATE_BROKEN" );
			snd_alarm = sound\storm\states\siren_intensity\set_state_broken_destruction;
		end
		if ( s_state == DEF_S_END_ALARM_STATE_MAINTENANCE ) then
			dprint( "sfx_end_alarm_set: DEF_S_END_ALARM_STATE_MAINTENANCE" );
			snd_alarm = sound\storm\states\siren_intensity\set_state_maintenance_destruction;
		end
		if ( s_state == DEF_S_END_ALARM_STATE_EXPLOSION_ALLEY ) then
			dprint( "sfx_end_alarm_set: DEF_S_END_ALARM_STATE_EXPLOSION_ALLEY" );
			snd_alarm = sound\storm\states\siren_intensity\set_state_explosion_alley;
		end
		if ( s_state == DEF_S_END_ALARM_STATE_BLACKOUT ) then
			dprint( "sfx_end_alarm_set: DEF_S_END_ALARM_STATE_BLACKOUT" );
			snd_alarm = sound\storm\states\siren_intensity\set_state_black_out;
		end
		
		if ( snd_alarm != NONE ) then
			sound_looping_start( snd_alarm, NONE, 1.0 );
		end

	end

end

; =================================================================================================
; *** MUSIC ***
; =================================================================================================
script static void f_music_observatory_doors_opening()
	// sleep_until (LevelEventStatus("music observatory doors opening"), 1);
	
	// sound_impulse_start ('sound\environments\solo\m010\music\events\m10_music_stinger01_start', NONE, 1);
	
	// NEW for OYO
	audio_print("f_music_observatory_doors_opening");
	music_set_state('play_mus_m10_v06_observation_deck');
end

script static void f_music_observatory_first_pod_landed()
	// sleep_until (LevelEventStatus("music first pod landed"), 1);
	
	// audio_print("[music] stop stinger01");
	// sound_impulse_stop ('sound\environments\solo\m010\music\events\m10_music_stinger01_stop');
	
	// audio_print("[music] start action01");
	// sound_looping_start ('sound\environments\solo\m010\music\m10_music_action01', NONE, 1.0);
	
	// f_music_set_state_combat();
	
	// NEW for OYO
	//sound_impulse_start('sound\environments\solo\m010\music\events\m_m10_music_observatory_covenant_fleet_attaches', NONE, 1.0);
	music_state = 20;
end

script static void f_music_observatory_combat_finished()
	// sleep_until (LevelEventStatus("activate power objective complete"), 1);
	f_music_set_state_idle();
end

script static void f_music_pre_flank()
	// sleep_until (volume_test_players(tv_pre_flank_spawn), 1);
	f_music_set_state_zoomed();
end

script static void f_music_main_flank()
	// sleep_until (volume_test_players(tv_main_flank_spawn), 1);
	f_music_set_state_combat();
end

script static void f_music_main_flank_killed_all_enemies()
	// go back to idle state after player kills this ai squad
	// sleep_until (
	// 	(ai_living_count(sq_prep_mid_boss) == 0) and
	// 	(ai_living_count(sq_prep_left) == 0) and
	// 	(ai_living_count(sq_prep_right) == 0), 
	// 1);
	f_music_set_state_idle();
end

script static void f_music_beacon_deck_reached_first_airlock()
	// sleep_until (volume_test_players(tv_music_beacon_deck_airlock), 1);
	audio_print("[music] stop action01");
	sound_looping_stop ('sound\environments\solo\m010\music\m10_music_action01');
end

// HACK - change this to a static function once we get a call from the mission scripts (patridu)
script dormant f_music_beacon_deck_exited_first_airlock()
	sleep_until(volume_test_players(tv_amb_exited_first_beacon_deck_airlock), 1);
	audio_print("[music] start action02");
	sound_looping_start ('sound\environments\solo\m010\music\m10_music_action02', NONE, 1.0);
end

script static void f_music_beacon_deck_launched_first_beacons()
	// sleep_until (LevelEventStatus("music beacons launching"), 1);
	audio_print("[music] launched first beacons - no op");
end

script static void f_music_beacon_deck_beacon_objective_complete()
	// sleep_until (LevelEventStatus("music launch beacon objective complete"), 1);
	audio_print("[music] stop action02");
	sound_looping_stop ('sound\environments\solo\m010\music\m10_music_action02');
end

script static void f_music_beacon_deck_cortana_vo_finished()
	// sleep_until (LevelEventStatus("music cortana done talking at beacon"), 1);
	audio_print("[music] start action03");
	sound_looping_start ('sound\environments\solo\m010\music\m10_music_action03', NONE, 1.0);
	
	// NEW
	//sound_impulse_start('sound\environments\solo\m010\music\events\m_m10_music_escape_leave_beacon_deck', NONE, 1.0);
	music_state = 111;
	music_track = DEF_MUSIC_TRACK_ESCAPE_LEAVE_BEACON_DECK;
end

script static void f_music_vehicle_bay_destruction_start()
	// sleep_until (LevelEventStatus("music vehicle bay destruction start"), 1);
	audio_print("[music] stop action03");
	sound_looping_stop ('sound\environments\solo\m010\music\m10_music_action03');
end

// --- NEW for OYO ---
script static void f_music_observatory_get_cortana_requests_pull()
	//sound_impulse_start ('sound\environments\solo\m010\music\events\m_m10_music_observatory_cortana_requests_pull', NONE, 1.0);
	music_state = 21;
	NotifyLevel("music_observatory_cortana_requested_pull");
end

script static void f_music_beacon_about_to_launch()
	//sound_impulse_start ('sound\environments\solo\m010\music\events\m_m10_music_beacon_about_to_launch', NONE, 1.0);
	music_state = 22;
end

script static void f_music_beacon_launch_failure()
	//sound_impulse_start ('sound\environments\solo\m010\music\events\m_m10_music_beacon_launch_fail', NONE, 1.0);
	music_state = 23;
end
// --- NEW for OYO ---

; =================================================================================================
; *** MUSIC INTERNAL ***
; =================================================================================================
script static void f_music_set_state_combat()
	audio_print("[music] Set State - Combat");
	sound_impulse_start('sound\environments\solo\set_state_combat', NONE, 1.0);
end

script static void f_music_set_state_idle()
	audio_print("[music] Set State - Idle");
	sound_impulse_start('sound\environments\solo\set_state_idle', NONE, 1.0);
end

script static void f_music_set_state_zoomed()
	audio_print("[music] Set State - Zoomed");
	sound_impulse_start('sound\environments\solo\set_state_zoomed', NONE, 1.0);
end

script static void f_music_action01()
	sound_looping_start ('sound\environments\solo\m010\music\m10_music_action01', NONE, 1.0);
end

; =================================================================================================
; *** AMBIENCES ***
; =================================================================================================
script dormant f_amb_m10_a01_pod_exit()
	sleep_until(LevelEventStatus("cryo objective complete"), 1);
	sound_impulse_start('sound\environments\solo\m010\ambience\events\amb_m10_a01_script_01_start', NONE, 1.0);
	audio_print("[amb] amb_m10_a01_script_01_start");
	// music_set_state('Play_mus_m10_r01_cryo_room');
end

script dormant f_amb_m10_a01_exit()
	sleep_until(volume_test_players(tv_amb_m10_a01_exit), 1);
	sound_impulse_start('sound\environments\solo\m010\ambience\events\amb_m10_a01_exit_stinger', NONE, 1.0);
	audio_print("[amb] amb_m10_a01_exit_stinger");
end

script dormant f_amb_m10_a02_exit()
	sleep_until(volume_test_players(tv_amb_m10_a02_exit), 1);
	sound_impulse_start('sound\environments\solo\m010\ambience\events\amb_m10_a03_script_start', NONE, 1.0);
	audio_print("[amb] amb_m10_a03_script_start");
end

script dormant f_amb_m10_a04_exit()
	sleep_until(volume_test_players(tv_amb_m10_a04_exit), 1);
	sound_impulse_start('sound\environments\solo\m010\ambience\events\amb_m10_a05_explosion_start', NONE, 1.0);
	audio_print("[amb] amb_m10_a05_explosion_start");
end

script dormant f_amb_m10_a05_exit()
	sleep_until(volume_test_players(tv_amb_m10_a05_exit), 1);
	sound_impulse_start('sound\environments\solo\m010\ambience\events\amb_m10_a06_explosion_start', NONE, 1.0);
	audio_print("[amb] amb_m10_a06_explosion_start");
end

script dormant f_amb_m10_a06_halfway()
	sleep_until(volume_test_players(tv_amb_m10_a06_halfway), 1);
	sound_impulse_start('sound\environments\solo\m010\ambience\events\amb_m10_a06_script_01_start', NONE, 1.0);
	audio_print("[amb] amb_m10_a06_script_01_start");
end

script static void f_trigger_ambience(trigger_volume tv, looping_sound amb_tag, string debug_text)
	repeat
	  // If a zoneset change left a loop running,
	  // and we're the thread owning that loop
	  // don't retrigger
	  if amb_current != amb_tag then
		   sleep_until(volume_test_players(tv), 1);
		   amb_current = amb_tag;
		   sound_looping_start(amb_tag, NONE, 1.0);
		   audio_print("[ set to current ]");
		   audio_print(debug_text);
		// else
		   // audio_print("[ ignoring (already current) ]");
		   // audio_print(debug_text);
		end
		sleep_until(volume_test_players(tv) == false, 1);
		sound_looping_stop(amb_tag);
		// audio_print(debug_text);
		sleep(30 * 1);
	until (false);
end

script static sound sfx_rumble_cryo()
	//sleep_until(b_fud_rumble_small == TRUE, 1);
	//sleep_s(1.470);
	//f_screenshake_event_low( -0.25, -1, -1, sound\environments\solo\m010\placeholder\rumble\events\m_m10_rumble_cryo );
	//sound\environments\solo\m010\scripted\events\m10_cryo_screenshake;
	sound\environments\solo\m010\scripted\events\m10_lab_exp_call_ahead;
end

script static sound sfx_rumble_lab()
	sound\environments\solo\m010\placeholder\rumble\events\m_m10_rumble_lab;
end

script static sound sfx_rumble_hall()
	//sleep_until(volume_test_players(tv_fud_rumble), 1);
	//sleep_s(2.2);
	//f_screenshake_event_med( -0.25, -1, -2.5, sound\environments\solo\m010\placeholder\rumble\events\m_m10_rumble_hall );
	sound\environments\solo\m010\placeholder\rumble\events\m_m10_rumble_hall;
end

script dormant f_amb_m10_enter_rooms_cryo()
	dprint("f_amb_m10_enter_rooms_cryo woke up");
	sleep_until (current_zone_set() == S_zoneset_00_cryo_02_hallway_04_armory);
	
	sleep_until (volume_test_players(tv_amb_m10_a01), 1);
	sound_impulse_start ('sound\environments\solo\m010\ambience\events\amb_m10_enter_room_01', NONE, 1.0);
	// music_set_state('Play_mus_m10_r02_hallways_cryo');
	
	sleep_until (volume_test_players(tv_amb_m10_a02), 1);
	sound_impulse_start ('sound\environments\solo\m010\ambience\events\amb_m10_enter_room_02', NONE, 1.0);
	
	sleep_until (volume_test_players(tv_amb_m10_a03), 1);
	sound_impulse_start ('sound\environments\solo\m010\ambience\events\amb_m10_enter_room_03', NONE, 1.0);
	
	sleep_until (volume_test_players(tv_amb_m10_a03_stairs), 1);
	sound_impulse_start ('sound\environments\solo\m010\ambience\events\amb_m10_enter_room_03_stairs', NONE, 1.0);
	
	sleep_until (volume_test_players(tv_amb_m10_a04), 1);
	sound_impulse_start ('sound\environments\solo\m010\ambience\events\amb_m10_enter_room_04', NONE, 1.0);
	
	sleep_until (volume_test_players(tv_amb_m10_a05), 1);
	sound_impulse_start ('sound\environments\solo\m010\ambience\events\amb_m10_enter_room_05', NONE, 1.0);
	
	sleep_until (volume_test_players(tv_amb_m10_a10), 1);
	sound_impulse_start ('sound\environments\solo\m010\ambience\events\amb_m10_enter_room_09', NONE, 1.0);
end

script dormant f_amb_m10_enter_rooms_armory()
	dprint("f_amb_m10_enter_rooms_armory woke up");
	// sleep_until (current_zone_set() == S_zoneset_04_armory_06_hallway);
	
	sleep_until (volume_test_players(tv_amb_m10_a06), 1);
	sound_impulse_start ('sound\environments\solo\m010\ambience\events\amb_m10_enter_room_06', NONE, 1.0);
	
	sleep_until (volume_test_players(tv_amb_m10_a07_outer), 1);
	sound_impulse_start ('sound\environments\solo\m010\ambience\events\amb_m10_enter_room_07_outer', NONE, 1.0);
	
	sleep_until (volume_test_players(tv_amb_m10_a07), 1);
	sound_impulse_start ('sound\environments\solo\m010\ambience\events\amb_m10_enter_room_07', NONE, 1.0);
	
	sleep_until (volume_test_players(tv_amb_m10_a08), 1);
	sound_impulse_start ('sound\environments\solo\m010\ambience\events\amb_m10_enter_room_08', NONE, 1.0);
	
	sleep_until (volume_test_players(tv_amb_m10_a09), 1);
	sound_impulse_start ('sound\environments\solo\m010\ambience\events\amb_m10_enter_room_09', NONE, 1.0);
end

script dormant f_amb_m10_enter_rooms_hallways()
  dprint("f_amb_m10_enter_rooms_hallways woke up");
	
  sleep_until (volume_test_players(tv_amb_m10_a10), 1);
  sound_impulse_start ('sound\environments\solo\m010\ambience\events\amb_m10_enter_room_10', NONE, 1.0);
end

// defines
global short DEF_MUSIC_TRACK_OBSERVATORY_AFTER_ELEVATOR_ICS = 1;
global short DEF_MUSIC_TRACK_OBSERVATORY_AIRLOCK 						= 2;
global short DEF_MUSIC_TRACK_BEACON_BEGINNING 							= 3;
global short DEF_MUSIC_TRACK_ESCAPE_LEAVE_BEACON_DECK 			= 4;


global short music_track = 0;
global short music_state = 0;

script static void f_music_state_controller()
	dprint ("starting music state_controller");
	repeat
		sleep_until(music_state != sound_music_current_state);

		if (music_track != sound_music_current_track) then

			if (music_track == DEF_MUSIC_TRACK_OBSERVATORY_AFTER_ELEVATOR_ICS) then
				dprint("music track: DEF_MUSIC_TRACK_OBSERVATORY_AFTER_ELEVATOR_ICS");
				sound_impulse_start ('sound\environments\solo\m010\music\events\m_m10_music_observatory_after_elevator_ics', NONE, 1.0);
			end
			if (music_track == DEF_MUSIC_TRACK_OBSERVATORY_AIRLOCK) then
				dprint("music track: DEF_MUSIC_TRACK_OBSERVATORY_AIRLOCK");
				sound_impulse_start ('sound\environments\solo\m010\music\events\m_m10_music_observatory_airlock', NONE, 1.0);
			end
			if (music_track == DEF_MUSIC_TRACK_BEACON_BEGINNING) then
				dprint("music track: DEF_MUSIC_TRACK_BEACON_BEGINNING");
				sound_impulse_start ('sound\environments\solo\m010\music\events\m_m10_music_beacon_beginning', NONE, 1.0);
			end
			if (music_track == DEF_MUSIC_TRACK_ESCAPE_LEAVE_BEACON_DECK) then
				dprint("music track: DEF_MUSIC_TRACK_ESCAPE_LEAVE_BEACON_DECK");
				sound_impulse_start('sound\environments\solo\m010\music\events\m_m10_music_escape_leave_beacon_deck', NONE, 1.0);
			end

			sound_music_current_track = music_track;
		end

		if (music_state == 1) then
			dprint("state 1");
			//sound_impulse_start ('sound\environments\solo\m010\music\events\m_m10_music_observatory_after_elevator_ics', NONE, 1.0);
		end
		if (music_state == 2) then
			dprint("music 2");
			sound_impulse_start ('sound\environments\solo\m010\music\events\m_m10_music_observatory_activate_switch', NONE, 1.0);
		end
		if (music_state == 3) then
			dprint("music 3");
			sound_impulse_start ('sound\environments\solo\m010\music\events\m_m10_music_observatory_elevator_switch', NONE, 1.0);
		end
		if (music_state == 4) then
			sound_impulse_start ('sound\environments\solo\m010\music\events\m_m10_music_observatory_pull_cortana', NONE, 1.0);
			dprint("music 4");
		end
		if (music_state == 5) then
			sound_impulse_start ('sound\environments\solo\m010\music\events\m_m10_music_observatory_hallway_1', NONE, 1.0);
			dprint("music 5");
		end
		if (music_state == 6) then
			sound_impulse_start ('sound\environments\solo\m010\music\events\m_m10_music_observatory_hallway_2', NONE, 1.0);
			dprint("music 6");
		end
		if (music_state == 7) then
			sound_impulse_start ('sound\environments\solo\m010\music\events\m_m10_music_beacon_activate', NONE, 1.0);
			dprint("music 7");
		end
		if (music_state == 8) then
			sound_impulse_start('sound\environments\solo\m010\music\events\m_m10_music_beacon_activate_magnetic_accelerator', NONE, 1.0);
			dprint("music 8");
		end
		if (music_state == 9) then
			sound_impulse_start('sound\environments\solo\m010\music\events\m_m10_music_beacon_launch_success', NONE, 1.0);
			dprint("music 9");
		end
		if (music_state == 10) then
			sound_impulse_start ('sound\environments\solo\m010\music\events\m_m10_music_escape_after_air_lock', NONE, 1.0);
			dprint("music 10");
		end
		if (music_state == 11) then
			sound_impulse_start ('sound\environments\solo\m010\music\events\m_m10_music_escape_intense_interior_battle', NONE, 1.0);
			dprint("music 11");
		end
		if (music_state == 12) then
			sound_impulse_start ('sound\environments\solo\m010\music\events\m_m10_music_escape_broken_floor', NONE, 1.0);
			dprint("music 12");
		end
		if (music_state == 13) then
			sound_impulse_start ('sound\environments\solo\m010\music\events\m_m10_music_escape_explosion_vignette', NONE, 1.0);
			dprint("music 13");
		end
		if (music_state == 14) then
			sound_impulse_start ('sound\environments\solo\m010\music\events\m_m10_music_escape_hallway_2', NONE, 1.0);
			dprint("music 14");
		end
		if (music_state == 15) then
			sound_impulse_start ('sound\environments\solo\m010\music\events\m_m10_music_escape_hallway_3', NONE, 1.0);
			dprint("music 15");
		end
		if (music_state == 16) then
			sound_impulse_start ('sound\environments\solo\m010\music\events\m_m10_music_escape_hallway_4', NONE, 1.0);
			dprint("music 16");
		end
		if (music_state == 17) then
			// this is probably the only old event still being used
			music_set_state('Play_m_m10_music_escape_door_opening');
			// sound_impulse_start ('sound\environments\solo\m010\music\events\m_m10_music_escape_door_opening', NONE, 1.0);
			dprint("music 17");
		end
		if (music_state == 18) then
			sound_impulse_start ('sound\environments\solo\m010\music\events\m_m10_music_escape_into_space', NONE, 1.0);
			dprint("music 18");
		end
		if (music_state == 19) then
			sound_impulse_start('sound\environments\solo\m010\music\events\m_m10_music_escape_destruction_event_1', NONE, 1);
			dprint("music 19");
		end
		if (music_state == 20) then
			sound_impulse_start('sound\environments\solo\m010\music\events\m_m10_music_observatory_covenant_fleet_attaches', NONE, 1.0);
			dprint("music 20");
		end
		if (music_state == 21) then
			sound_impulse_start ('sound\environments\solo\m010\music\events\m_m10_music_observatory_cortana_requests_pull', NONE, 1.0);
			dprint("music 21");
		end
		if (music_state == 22) then
			sound_impulse_start ('sound\environments\solo\m010\music\events\m_m10_music_beacon_about_to_launch', NONE, 1.0);
			dprint("music 22");
		end
		if (music_state == 23) then
			sound_impulse_start ('sound\environments\solo\m010\music\events\m_m10_music_beacon_launch_fail', NONE, 1.0);
			dprint("music 23");
		end
		if (music_state == 24) then
			sound_impulse_start ('sound\environments\solo\m010\music\events\m_m10_music_observatory_assassination', NONE, 1.0);
			dprint("music 24");
		end
		/*
		if (music_state == 24) then
			sound_impulse_start ('sound\environments\solo\m010\music\events\m_m10_music_escape_pre_blackout', NONE, 1.0);
			dprint("music 17");
		end
		*/

		sound_music_current_state = music_state;

	until (FALSE);
end

script static void f_music_m10_tweak01()
	dprint("f_music_m10_tweak01");
	music_set_state('Play_mus_m10_t01_tweak');
end

script static void f_music_m10_tweak02()
	dprint("f_music_m10_tweak02");
	music_set_state('Play_mus_m10_t02_tweak');
end

script static void f_music_m10_tweak03()
	dprint("f_music_m10_tweak03");
	music_set_state('Play_mus_m10_t03_tweak');
end

script static void f_music_m10_tweak04()
	dprint("f_music_m10_tweak04");
	music_set_state('Play_mus_m10_t04_tweak');
end

script static void f_music_m10_tweak05()
	dprint("f_music_m10_tweak05");
	music_set_state('Play_mus_m10_t05_tweak');
end

script static void f_music_m10_tweak06()
	dprint("f_music_m10_tweak06");
	music_set_state('Play_mus_m10_t06_tweak');
end

script static void f_music_m10_tweak07()
	dprint("f_music_m10_tweak07");
	music_set_state('Play_mus_m10_t07_tweak');
end

script static void f_music_m10_tweak08()
	dprint("f_music_m10_tweak08");
	music_set_state('Play_mus_m10_t08_tweak');
end

script static void f_music_m10_tweak09()
	dprint("f_music_m10_tweak09");
	music_set_state('Play_mus_m10_t09_tweak');
end

script static void f_music_m10_tweak10()
	dprint("f_music_m10_tweak10");
	music_set_state('Play_mus_m10_t10_tweak');
end

script dormant f_amb_m10_enter_rooms_observatory()
	dprint("f_amb_m10_enter_rooms_observatory woke up");
	
	sleep_until (volume_test_players(tv_amb_m10_b01), 1);
	//sound_impulse_start ('sound\environments\solo\m010\music\events\m_m10_music_observatory_after_elevator_ics', NONE, 1.0);
	music_track = DEF_MUSIC_TRACK_OBSERVATORY_AFTER_ELEVATOR_ICS;
	music_state = 1;
	dprint("m_m10_music_observatory_after_elevator_ics");
	
	sleep_until_observatory_assassination_started();
	music_state = 24;
	dprint("m_m10_music_observatory_assassination");
	
	sleep_until (device_get_position(obs_plinth_control) != 0, 1);
	//sound_impulse_start ('sound\environments\solo\m010\music\events\m_m10_music_observatory_activate_switch', NONE, 1.0);
	music_state = 2;
	dprint("m_m10_music_observatory_activate_switch");
	
	// open observatory doors now controlled by m10_observatory_windows.frame_event_list
	// sound_impulse_start('sound\environments\solo\m010\music\events\m_m10_music_observatory_opening_blast_shield', NONE, 1.0);
	
	// see f_dialog_observatory_get_cortana for 
		// m_m10_music_observatory_cortana_requests_pull
	
	//sleep_until (device_get_position(elevator_button_close) != 0, 1);
	sleep_until(device_get_position(door_elevator_1_top) == 1, 1);
	//sound_impulse_start ('sound\environments\solo\m010\music\events\m_m10_music_observatory_elevator_switch', NONE, 1.0);
	music_state = 3;
	//sound_impulse_start ('sound\environments\solo\m010\device_machine\m_m10_sfx_observatory_elevator_switch', elevator_button_close, 1.0);
	dprint("m_m10_music_observatory_elevator_switch");
end

script static void f_music_observatory_pull_cortana()
	//sound_impulse_start ('sound\environments\solo\m010\music\events\m_m10_music_observatory_pull_cortana', NONE, 1.0);
	music_state = 4;
	dprint("m_m10_music_observatory_pull_cortana");
end

script dormant f_amb_m10_enter_rooms_lookout()
	sleep_until (current_zone_set() == S_zoneset_08_elevator_14_elevator_16_lookout);
	dprint("f_amb_m10_enter_rooms_lookout woke up");
	
	
	sleep_until (volume_test_players(tv_music_m10_lookout_staircase), 1);
	sound_impulse_start ('sound\environments\solo\m010\music\events\m_m10_music_observatory_hallway_1', NONE, 1.0);
	music_state = 5;
	dprint("m_m10_music_observatory_elevator_switch");
	
	sleep_until (current_zone_set() == S_zoneset_16_lookout_18_elevator_20_cafe);
	sleep_until (volume_test_players(tv_music_r11_cafe), 1);
	//sound_impulse_start ('sound\environments\solo\m010\music\events\m_m10_music_observatory_hallway_2', NONE, 1.0);
	music_state = 6;
	dprint("m_m10_music_observatory_hallway_2");
end

script dormant f_amb_m10_enter_rooms_airlock()
	sleep_until (current_zone_set() == S_zoneset_24_corner_26_box_28_airlock);
	dprint("f_amb_m10_enter_rooms_airlock woke up");
	
	sleep_until (volume_test_players_all (tv_airlock_inside), 1);
	// this is the stop call
	//sound_impulse_start ('sound\environments\solo\m010\music\events\m_m10_music_observatory_airlock', NONE, 1.0);
	music_track = DEF_MUSIC_TRACK_OBSERVATORY_AIRLOCK;
	music_state = 99;
	dprint("m_m10_music_observatory_airlock");
	
	sleep_until( dialog_id_valid_check(L_dialog_beacon_enter) );
	// starts beacon music
	music_track = DEF_MUSIC_TRACK_BEACON_BEGINNING;
	music_state = 100;
	//sound_impulse_start ('sound\environments\solo\m010\music\events\m_m10_music_beacon_beginning', NONE, 1.0);
	dprint("m_m10_music_beacon_beginning");
	
	sleep_until (device_get_position(missile_control_switch) != 0, 1);
	//sound_impulse_start ('sound\environments\solo\m010\music\events\m_m10_music_beacon_activate', NONE, 1.0);
	music_state = 7;
	dprint("m_m10_music_beacon_activate");
	
	// see f_dialog_beacon_launch_beacon_01 for 
		// m_m10_music_beacon_about_to_launch
		// m_m10_music_beacon_launch_fail

	// see f_beacon_main for
		// m_m10_music_beacon_activate_magnetic_accelerator
		
	// see f_music_beacon_deck_cortana_vo_finished for
		// m_m10_music_escape_leave_beacon_deck
end

script static void f_music_m10_music_beacon_activate_magnetic_accelerator()
	//sound_impulse_start('sound\environments\solo\m010\music\events\m_m10_music_beacon_activate_magnetic_accelerator', NONE, 1.0);
	music_state = 8;
end

script static void f_music_m10_beacon_launch_success()
	//sound_impulse_start('sound\environments\solo\m010\music\events\m_m10_music_beacon_launch_success', NONE, 1.0);
	music_state = 9;
end

script dormant f_amb_m10_enter_rooms_maintenance()

	// [brendanw 06/28/2012] 28_airlock_32_broken has been eliminated
	//sleep_until (current_zone_set() == S_zoneset_28_airlock_32_broken, 1);
	sleep_until (current_zone_set() == S_zoneset_32_broken_34_maintenance, 1);
	dprint("f_amb_m10_enter_rooms_maintenance woke up");
	
	sleep_until (volume_test_players (tv_amb_m10_e03_a), 1);
	//sound_impulse_start ('sound\environments\solo\m010\music\events\m_m10_music_escape_after_air_lock', NONE, 1.0);
	music_state = 10;
	dprint("m_m10_music_escape_after_air_lock");
	
	// see sfx_breaking_hallway for
		// sound\environments\solo\m010\music\events\m_m10_music_escape_destruction_event_1
		
	sleep_until (volume_test_players (tv_amb_m10_e05_upper) or volume_test_players_all (tv_amb_m10_e05_lower), 1);
	//sound_impulse_start ('sound\environments\solo\m010\music\events\m_m10_music_escape_intense_interior_battle', NONE, 1.0);
	music_state = 11;
	dprint("m_m10_music_escape_intense_interior_battle");
	
	sleep_until (volume_test_players (tv_amb_m10_e05_broken_floor), 1);
	//sound_impulse_start ('sound\environments\solo\m010\music\events\m_m10_music_escape_broken_floor', NONE, 1.0);
	music_state = 12;
	dprint("m_m10_music_escape_broken_floor");
	
	sleep_until (volume_test_players (tv_explosionalley_area), 1);
	//sound_impulse_start ('sound\environments\solo\m010\music\events\m_m10_music_escape_explosion_vignette', NONE, 1.0);
	music_state = 13;
	dprint("m_m10_music_escape_explosion_vignette");
	
	sleep_until (volume_test_players (tv_music_m10_explosionalley_hall1), 1);
	//sound_impulse_start ('sound\environments\solo\m010\music\events\m_m10_music_escape_hallway_2', NONE, 1.0);
	music_state = 14;
	dprint("m_m10_music_escape_hallway_2");
	
	sleep_until (volume_test_players (tv_music_m10_explosionalley_hall2), 1);
	//sound_impulse_start ('sound\environments\solo\m010\music\events\m_m10_music_escape_hallway_3', NONE, 1.0);
	music_state = 15;
	dprint("m_m10_music_escape_hallway_3");
	
	sleep_until (volume_test_players (tv_amb_m10_e07), 1);
	//sound_impulse_start ('sound\environments\solo\m010\music\events\m_m10_music_escape_hallway_4', NONE, 1.0);
	music_state = 16;
	dprint("m_m10_music_escape_hallway_4");
	
	sleep_until( volume_test_players(tv_vehiclebay_airlock_area), 1 );
	//music_state == 24;
	music_state = 17;
	sound_impulse_start ('sound\environments\solo\m010\scripted\events\m10_exp_alley_transition', NONE, 1.0);
	dprint("m_m10_music_escape_exit --------------------------------------------------------");
	
	//sleep_until (object_valid(dm_maintenance_hall_door01), 1);
	//sleep_until (not dm_maintenance_hall_door01->check_close(), 1);
	//sound_impulse_start ('sound\environments\solo\m010\music\events\m_m10_music_escape_door_opening', NONE, 1.0);
	//dprint("m_m10_music_escape_door_opening");
end

script dormant f_amb_m10_enter_rooms_pod_chase()
	sleep_until (current_zone_set() == S_zoneset_40_debris_42_skybox);
	//sound_impulse_start ('sound\environments\solo\m010\music\events\m_m10_music_escape_into_space', NONE, 1.0);
	music_state = 18;
	dprint("f_amb_m10_enter_rooms_pod_chase woke up");
end

; =================================================================================================
; *** SFX MISSION HOOKS ***
; =================================================================================================
// === sfx_brokenfloor_destruction_pre::: Plays all sfx leading up to destruction
//		min pre time = 4.0 to 5.0 seconds
//		look at time = 3.0
//		total max time = 6.5 to 7.5
script static void sfx_brokenfloor_destruction_pre( real r_time )

	if ( not f_brokenfloor_destruction_started() ) then
		sound_impulse_start('sound\environments\solo\m010\placeholder\destruction\m_m10_placeholder_brokenfloor_destruction_pre_a', NONE, 1);
		sleep_s( r_time / 4 );
		if ( not f_brokenfloor_destruction_started() ) then
			sound_impulse_start('sound\environments\solo\m010\placeholder\destruction\m_m10_placeholder_brokenfloor_destruction_pre_b', NONE, 1);
			sleep_s( r_time / 4 );
			if ( not f_brokenfloor_destruction_started() ) then
				sound_impulse_start('sound\environments\solo\m010\placeholder\destruction\m_m10_placeholder_brokenfloor_destruction_pre_c', NONE, 1);
				sleep_s( r_time / 4 );
			end
		end
	end

end

// === sfx_maintenance_destruction_pre::: Plays all sfx leading up to destruction
//		min pre time = 3.5 to 5.25 seconds
//		look at time = 5.5
//		total max time = 9.0 to 10.75
script static void sfx_maintenance_destruction_pre( real r_time )

	if ( not f_B_maintenance_destruction_started() ) then
		sound_impulse_start('sound\environments\solo\m010\placeholder\destruction\m_m10_placeholder_maintenance_destruction_pre_a', NONE, 1);
		sleep_s( r_time / 4 );
		if ( not f_B_maintenance_destruction_started() ) then
			sound_impulse_start('sound\environments\solo\m010\placeholder\destruction\m_m10_placeholder_maintenance_destruction_pre_b', NONE, 1);
			sleep_s( r_time / 4 );
			if ( not f_B_maintenance_destruction_started() ) then
				sound_impulse_start('sound\environments\solo\m010\placeholder\destruction\m_m10_placeholder_maintenance_destruction_pre_c', NONE, 1);
				sleep_s( r_time / 4 );
			end
		end
	end

end

// === sfx_vehiclebay_destruction_pre::: Plays all sfx leading up to destruction
//		min pre time = 2.5 to 3.5 seconds
//		look at time = 4.0
//		total max time = 6.5 to 7.5
script static void sfx_vehiclebay_destruction_pre( real r_time )
/*
	if ( not f_vehiclebay_destruction_started() ) then
		sound_impulse_start('sound\environments\solo\m010\placeholder\destruction\m_m10_placeholder_vehiclebay_destruction_pre_a', NONE, 1);
		sleep_s( r_time / 4 );
		if ( not f_vehiclebay_destruction_started() ) then
			sound_impulse_start('sound\environments\solo\m010\placeholder\destruction\m_m10_placeholder_vehiclebay_destruction_pre_b', NONE, 1);
			sleep_s( r_time / 4 );
			if ( not f_vehiclebay_destruction_started() ) then
				sound_impulse_start('sound\environments\solo\m010\placeholder\destruction\m_m10_placeholder_vehiclebay_destruction_pre_c', NONE, 1);
				sleep_s( r_time / 4 );
			end
		end
	end
*/
	print("nop");
end

script static void sfx_explosion_alley_destruction( short s_sfx_state )
static short s_state_current = 0;

	if ( s_sfx_state > s_state_current ) then
		s_state_current = s_sfx_state;
		if ( s_sfx_state == 1 ) then
			f_screenshake_event_med(-0.5, -1, -0.25, 'sound\environments\solo\m010\scripted\events\m10_exp_alley_a.sound' );
		end
		if ( s_sfx_state == 2 ) then
			f_screenshake_event_med(-0.0, -1, -0.25, 'sound\environments\solo\m010\scripted\events\m10_exp_alley_b.sound' );
		end
		if ( s_sfx_state == 3 ) then
			f_screenshake_event_med(-0.0, -1, -0.25, 'sound\environments\solo\m010\scripted\events\m10_exp_alley_c.sound' );
		end
		if ( s_sfx_state == 4 ) then
			f_screenshake_event_med(-0.0, -1, -0.25, 'sound\environments\solo\m010\scripted\events\m10_exp_alley_d.sound' );
		end
		if ( s_sfx_state == 5 ) then
			f_screenshake_event_high(-0.0, -1, -0.25, 'sound\environments\solo\m010\scripted\events\m10_exp_alley_e.sound' );
		end
		if ( s_sfx_state == 6 ) then
			f_screenshake_event_high(-0.0, -1, -0.25, 'sound\environments\solo\m010\scripted\events\m10_exp_alley_f.sound' );
		end
	end

end

global boolean B_sfx_blackout_complete = FALSE;

script static void sfx_vehiclebay_blackout()
	dprint( "sfx_vehiclebay_blackout UPDATED" );

	f_screenshake_event_very_high( -0.925, 7, -3.0, sound\environments\solo\m010\scripted\events\m10_exp_alley_blackout );
	print("UPDATED RUMBLE HERE");
	B_sfx_blackout_complete = TRUE;
	
end

// -------------------------------------------------------------------------------------------------
// SFX: ZONE SET: SETUP
// -------------------------------------------------------------------------------------------------



; =================================================================================================
; *** TEMP for OYO ***
; =================================================================================================
script static void f_flank_play_demon_vo(ai kamikazeeGrunt)
	sound_impulse_start('sound\storm\characters\grunt\vo\npc_grunt_vo_demon', ai_get_object(kamikazeeGrunt), 1);
end

// --- End m10_crash_audio.hsc ---

// --- Begin m10_crash_dialog.hsc ---
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343
//
// Mission: 					m10_crash_dialog
//										
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343

// -------------------------------------------------------------------------------------------------
// DIALOG
// -------------------------------------------------------------------------------------------------
// DEFINES
//global short LINE_RANDOM =  0;
//global short DEF_CORTANA_PICK_UP = 7;
//global short DEF_ACTIVATE_CRYO = 10;

// VARIABLES
//global boolean b_dialog_obs_player_see_covenant = FALSE;
//global boolean b_dialog_obs_cheif_says_covenant = FALSE;

// dialog ID variables
global long 	L_dlg_lab_pre_elevator_ics 				= DEF_DIALOG_ID_NONE();

global long 	L_dialog_beacon_enter 						= DEF_DIALOG_ID_NONE();

// --- END
global long 	L_dialog_End_Start 								= DEF_DIALOG_ID_NONE();

global long 	L_dialog_ShipVO_NoPods 						= DEF_DIALOG_ID_NONE();

global long 	L_dialog_PodChase_Start 					= DEF_DIALOG_ID_NONE();

global long 	L_dialog_Breakhall01_Action				= DEF_DIALOG_ID_NONE();
global string STR_dialog_Breakhall01_Action			= "BROKEN_HALL_ACTION";

global long 	L_dialog_BrokenAction_ShipVo 			= DEF_DIALOG_ID_NONE();

global long 	L_dialog_ShipVO_Maintenance 			= DEF_DIALOG_ID_NONE();

global long 	L_dialog_ShipVO_Blackout 					= DEF_DIALOG_ID_NONE();

global long 	L_dialog_ShipVO_VehicleBay 				= DEF_DIALOG_ID_NONE();
global string STR_dialog_ShipVO_VehicleBay			= "SHIPVO_VEHICLEBAY";

global long 	L_dialog_PodChase_End 						= DEF_DIALOG_ID_NONE();
global boolean b_osb_line_fired = FALSE;
global boolean b_elevator_banks_blip = FALSE;
global long l_dlg_m80_intrusion_alert = DEF_DIALOG_ID_NONE();
global long pa_vo_counter = 1;
global long pa_vo_ticket_master = 0;

/*
script dormant f_dialog_check_obs_player_see_covenant()
	volume_test_players_lookat(tv_obs_skybox_event, 50, 50);
	b_dialog_obs_player_see_covenant = TRUE;
end
script dormant f_prep_rumble()
	sleep_s(5.5);
	b_fud_rumble_small = TRUE;
end
*/
script static void f_dialog_m80_intrusion_alert()
dprint("f_dialog_m80_intrusion_alert");

					
            l_dlg_m80_intrusion_alert = dialog_start_background( "INTRUSION_ALERT", l_dlg_m80_intrusion_alert, TRUE, DEF_DIALOG_STYLE_QUEUE(), TRUE, "", 0.25 );                       
							dialog_line_npc( l_dlg_m80_intrusion_alert, 0, TRUE, 'sound\dialog\mission\m10\m10_fud_hologram_00105', FALSE, fud_switch, 0.0, "", "System Voice : Intrusion alert.", TRUE);
							dialog_line_npc( l_dlg_m80_intrusion_alert, 1, TRUE, 'sound\dialog\mission\m10\m10_fud_hologram_00105', FALSE, fud_switch, 0.0, "", "System Voice : Intrusion alert.", TRUE);
            l_dlg_m80_intrusion_alert = dialog_end( l_dlg_m80_intrusion_alert, TRUE, TRUE, "" );
           

            if b_fud_active == FALSE then
							thread(fud_intrustion_loop());
						end
end
script static void play_PA_sounds(sound snd, sound snd2D, object obj1, long volume)
	pa_vo_ticket_master = pa_vo_ticket_master + 1;
	local long pa_vo_ticket = pa_vo_ticket_master;
	sleep_until(pa_vo_counter == pa_vo_ticket, 1);
	
	sound_impulse_start(snd, obj1, volume);
	local long timer_f_to_s = frames_to_seconds_authored(sound_impulse_time( snd ));
	local long timer = timer_stamp(timer_f_to_s);
	sleep_until(timer_expired(timer));
	pa_vo_counter = pa_vo_counter + 1;
end
script static void f_sound_from_PA(sound snd, sound snd2D, object obj1, string name)
	thread(play_PA_sounds(snd, snd2D, obj1, 1));
end

// === out of the tube
script dormant f_dialogue_player_has_control()
	local long l_dialog_id = DEF_DIALOG_ID_NONE();
	
	hud_play_pip_from_tag( bink\campaign\M10_A_60 );
	thread(f_dialog_play_pip_m10_a_subtitles());
	
	sleep_s(9);
	thread(f_screenshake_event_med(-3, -1, -0.1, sfx_rumble_cryo()));
end

script static void f_dialog_play_pip_m10_a_subtitles()
	sleep(30);
	dialog_play_subtitle('sound\dialog\mission\m10\m10_cryo_out_of_tube_00100');
	sleep(30);
	dialog_play_subtitle('sound\dialog\mission\m10\m10_cryo_out_of_tube_00101');
	sleep(30);
	dialog_play_subtitle('sound\dialog\mission\m10\m10_cryo_out_of_tube_00102');
	sleep(30);
	dialog_play_subtitle('sound\dialog\mission\m10\m10_cryo_out_of_tube_00104');
end

// === f_dialog_lab_didact_event
script dormant f_dialog_lab_didact_event()
local long l_dialog_id = DEF_DIALOG_ID_NONE();
//dprint( "f_dialog_lab_didact_event" );
	l_dialog_id = dialog_start_foreground( "DIDACT_EVENT", l_dialog_id, TRUE, DEF_DIALOG_STYLE_INTERRUPT(), FALSE, "", 0.0 );
		dialog_line_chief  ( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m10\m10_lab_didact_event_00100', FALSE, NONE, 0.0, "", "Master Chief : How long was I out?" );
		dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m10\m10_lab_didact_event_00101', FALSE, NONE, 0.0, "", "Cortana : 4 years, 7 months, 10 days." );
		//dialog_line_chief( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m10\m10_lab_didact_event_00107', FALSE, NONE, 0.0, "", "Master Chief : If the UNSC hasn't responded to our rescue beacon by now, they're not going to." );
		dialog_line_chief( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m10\m10_lab_didact_event_00106', FALSE, NONE, 0.0, "", "Master Chief : They should have found us by now." );
		//dialog_line_cortana( l_dialog_id, 3, TRUE, 'sound\dialog\mission\m10\m10_lab_didact_event_00102', FALSE, NONE, 0.0, "", "Cortana : Rescue beacons are still transmitting but" );

		
	l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
		wake(f_dialog_lab_didact_scan);
end


// === f_dialog_lab_didact_scan
script dormant f_dialog_lab_didact_scan()
local long l_dialog_id = DEF_DIALOG_ID_NONE();
//dprint( "f_dialog_lab_didact_scan" );
		sleep_until( volume_test_players(vo_didact_scan), 1);
	l_dialog_id = dialog_start_foreground( "DIDACT_SCAN", l_dialog_id, TRUE, DEF_DIALOG_STYLE_INTERRUPT(), FALSE, "", 0.0 );
		// beging the scan here
		if ( dialog_foreground_id_active_check(l_dialog_id) ) then
			wake (f_scan_event_real);
		end

		// delay for chief to react
		sleep_s(1);
		
dialog_line_chief( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m10\m10_lab_didact_event_00103', FALSE, NONE, 0.0, "", "Master Chief : What's that?" );
dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m10\m10_lab_didact_event_00104', FALSE, NONE, 0.0, "", "Cortana : Sensor scan, high intensity! Doesn't match any known patterns." );
dialog_line_chief( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m10\m10_lab_didact_event_00104a', FALSE, NONE, 0.0, "", "Master Chief : How close are we to the Observation Deck?" );
dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m10\m10_lab_didact_event_00105', FALSE, NONE, 0.0, "", "Cortana : It's directly above us." );
	thread(m10_objective_1_nudge());
		
	l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
		
end

script dormant f_dialog_m10_elevator_in_sight()
local long l_dialog_id = DEF_DIALOG_ID_NONE();
dprint( "f_dialog_elevator_in_sight" );
	kill_script(m10_objective_2_nudge);
	sleep_forever(m10_objective_1_nudge);
	   kill_script(m10_objective_2_nudge);
   sleep_forever(m10_objective_1_nudge);
		b_objective_2_complete = TRUE;
	l_dialog_id = dialog_start_foreground( "ELEVATOR_IN_SIGHT", l_dialog_id, TRUE, DEF_DIALOG_STYLE_SKIP(), FALSE, "", 0.0 );
		dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m10\m10_pre_elevator_ics_00102a', FALSE, NONE, 0.0, "", "Cortana : The elevator doors look sealed tight." );
	//	dialog_line_chief( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m10\m10_pre_elevator_ics_00103', FALSE, NONE, 0.0, "", "Master Chief: Not a problem." );

		//if ( dialog_foreground_id_active_check(l_dialog_id) ) then
			NotifyLevel("obs waypoint set");
		//end

	l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
		
end


/*// === f_dialog_lab_pre_elevator_ics
script dormant f_dialog_lab_pre_elevator_ics()
//dprint( "f_dialog_lab_pre_elevator_ics" );

	L_dlg_lab_pre_elevator_ics = dialog_start_foreground( "ELEVATOR_PRE_ICS", L_dlg_lab_pre_elevator_ics, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 );		
		if ( dialog_foreground_id_active_check(L_dlg_lab_pre_elevator_ics) ) then
			sleep_until (volume_test_players(tv_elevator_lobby) or volume_test_players_lookat(tv_elevator_ICS_door_lookat, 15.0, 5.0) or (not dialog_foreground_id_active_check(L_dlg_lab_pre_elevator_ics)), 1);
		end
		
		dialog_line_cortana( L_dlg_lab_pre_elevator_ics, 0, not f_B_elevator_ICS_started(), 'sound\dialog\mission\m10\m10_pre_elevator_ics_00102', FALSE, NONE, 0.0, "", "Cortana : Those doors look sealed tight." );
		dialog_line_chief  ( L_dlg_lab_pre_elevator_ics, 1, not f_B_elevator_ICS_started(), 'sound\dialog\mission\m10\m10_pre_elevator_ics_00103', FALSE, NONE, 0.0, "", "Master Chief : Not a problem." );
	L_dlg_lab_pre_elevator_ics = dialog_end( L_dlg_lab_pre_elevator_ics, TRUE, TRUE, "" );

end*/

// === f_dialog_elevator_ics_pry
script dormant f_dialog_elevator_ics_pry()
local long l_dialog_id = DEF_DIALOG_ID_NONE();
//dprint( "f_dialog_elevator_ics_pry" );

	l_dialog_id = dialog_start_foreground( "ELEVATOR_PRY", l_dialog_id, not dialog_foreground_id_active_check(L_dlg_lab_pre_elevator_ics), DEF_DIALOG_STYLE_SKIP(), FALSE, "", 0.0 );
		dialog_line_chief( l_dialog_id, 0, TRUE, 'sound\dialog\Mission\M10\m_m10_mc_0015', FALSE, NONE, 0.0, "", "MASTER CHIEF: 7 : <sound of prying the door open>" );
	l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );

end

// === f_dialog_observatory_start
script dormant f_dialog_observatory_start()
local long l_dialog_id = DEF_DIALOG_ID_NONE();
//dprint( "f_dialog_observatory_start" );
		
		kill_script(m10_objective_3_nudge);
		kill_script(m10_objective_1_nudge);
		sleep_forever(m10_objective_1_nudge);
		sleep_forever(m10_objective_3_nudge);
	l_dialog_id = dialog_start_foreground( "OBSERVATORY_START", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 );
		dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m10\m10_observatory_00100', FALSE, NONE, 0.0, "", "Cortana : That's the last of them." );
		dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m10\m10_observatory_00101', FALSE, NONE, 0.0, "", "Cortana : Find the override for the blast shields so we can see what we're up against." );

		//if ( dialog_foreground_id_active_check(l_dialog_id) ) then
			NotifyLevel("obs waypoint set");
		//end

	l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
		
end

/*// === f_dialog_observatory_start
script dormant f_dialog_observatory_start_optional()
local long l_dialog_id = DEF_DIALOG_ID_NONE();
//dprint( "f_dialog_observatory_start_optional" );

	sleep_s (5);
	sleep_until (volume_test_players (tv_obs_optional_start_dia));
	
	l_dialog_id = dialog_start_foreground( "OBSERVATORY_START_OPT", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 );
		dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m10\m10_observatory_00102', FALSE, NONE, 0.0, "", "Cortana : The good news is these Covenant aren't outfitted like standard military." );
		dialog_line_cortana( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m10\m10_observatory_00103', FALSE, NONE, 0.0, "", "Cortana : It's possible we just came across a rogue salvage ship." );
	l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );

end*/


//// === f_dialog_observatory_start
//script dormant f_dialog_observatory_cleared_pre_open()
//local long l_dialog_id = DEF_DIALOG_ID_NONE();
//
//	l_dialog_id = dialog_start_foreground( "OBSERVATORY_START", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 );
//		dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\Mission\M10\m_m10_cortana_0005b', FALSE, NONE, 0.0, "", "CORTANA: 108 : I�ve got to restart the power grid if we�re going to bring the Dawn�s sensor array back online." );
//		dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\Mission\M10\m_m10_cortana_0005c', FALSE, NONE, 0.0, "", "CORTANA: 109 : Jack me into that console!" );
//
//		if ( dialog_foreground_id_active_check(l_dialog_id) ) then
//			sleep(5);
//		end
//
//	l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
//
//end

// === f_dialog_observatory_get_objective_beacon_start
script dormant f_dialog_observatory_try_to_leave_optional()
local long l_dialog_id = DEF_DIALOG_ID_NONE();
//dprint( "f_dialog_observatory_get_objective_beacon" );
	sleep_until (volume_test_players (tv_enter_obs));
	
	kill_script(m10_objective_1_nudge);
	l_dialog_id = dialog_start_foreground( "OBS_TRY_TO_LEAVE", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );
		dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m10\m10_observatory_pods_00102', FALSE, NONE, 0.0, "", "Cortana : The decompression put the room into lockdown." );
		dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m10\m10_observatory_pods_00103', FALSE, NONE, 0.0, "", "Cortana : It�ll take a few minutes to repressurize." );
	l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );

end

// === f_dialog_observatory_get_objective_beacon
global boolean GI_DEMO_END_VO_COMPLETE = false;
script dormant f_dialog_observatory_get_objective_beacon_main()
local long l_dialog_id = DEF_DIALOG_ID_NONE();
//dprint( "f_dialog_observatory_get_objective_beacon" );
		kill_script(m10_objective_5_nudge);
		sleep_forever(m10_objective_5_nudge);
	l_dialog_id = dialog_start_foreground( "OBS_ELEVATOR02", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );
		dialog_line_chief( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m10\m10_observatory_get_objective_beacon_00100', FALSE, NONE, 0.0, "", "Master Chief : We need to get off this ship." );
			dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m10\m10_observatory_get_objective_beacon_00101', FALSE, NONE, 0.0, "", "Cortana : We've got bigger problems." );
			dialog_line_cortana( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m10\m10_elevator_00106', FALSE, NONE, 0.0, "", "Cortana : We�ve got a Cruiser on an intercept course." );
			//dialog_line_cortana( l_dialog_id, 3, TRUE, 'sound\dialog\mission\m10\m10_observatory_get_objective_beacon_00103', FALSE, NONE, 0.0, "", "Cortana : If we don't do something about that, we're not going anywhere." );
			dialog_line_cortana( l_dialog_id, 3, TRUE, 'sound\dialog\mission\m10\m10_observatory_get_objective_beacon_00101_5', FALSE, NONE, 0.0, "", "Cortana : Head for the elevator banks." );
			b_elevator_banks_blip = TRUE;
				if b_used_fud_holgoram == FALSE then
			dialog_line_chief( l_dialog_id, 4, TRUE, 'sound\dialog\mission\m10\m10_observatory_get_objective_beacon_00104', FALSE, NONE, 0.0, "", "Master Chief : Are any of the ship-to-ship defenses online?" );
			dialog_line_cortana( l_dialog_id, 5, TRUE, 'sound\dialog\mission\m10\m10_observatory_get_objective_beacon_00105', FALSE, NONE, 0.0, "", "Cortana : Only the Hyperion missiles, but we'll have to fire them manually from the outer hull." );
			else
			dialog_line_chief( l_dialog_id, 4, TRUE, 'sound\dialog\mission\m10\m10_elevator_00113', FALSE, NONE, 0.0, "", "Master Chief : Didn�t the ship�s sensors say there were still weapons systems online?" );
			dialog_line_cortana( l_dialog_id, 5, TRUE, 'sound\dialog\mission\m10\m10_elevator_00114', FALSE, NONE, 0.0, "", "Cortana : Yes, but since the ship was torn in half, we can�t access the weapons stations. We�ll have to fire them manually from the outer hull." );
			end
			b_get_objective_beacon = TRUE;
		//	dialog_line_chief( l_dialog_id, 6, TRUE, 'sound\dialog\mission\m10\m10_elevator_00108', FALSE, NONE, 0.0, "", "Master Chief : Can they take down the cruiser?" );
		//	dialog_line_cortana( l_dialog_id, 7, TRUE, 'sound\dialog\mission\m10\m10_elevator_00107', FALSE, NONE, 0.0, "", "Cortana : Normally, they wouldn�t do much but luckily for us, their shields are down." );
			//dialog_line_cortana( l_dialog_id, 8, TRUE, 'sound\dialog\mission\m10\m10_elevator_00103', FALSE, NONE, 0.0, "", "Cortana : Assuming they don't raise them, that missile is going to come as one heck of a surprise." );
			
	l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
	
	GI_DEMO_END_VO_COMPLETE = true;

end


script dormant f_dialog_observatory_get_objective_beacon_alt()
local long l_dialog_id = DEF_DIALOG_ID_NONE();
//dprint( "f_dialog_observatory_get_objective_beacon_alt" );
	l_dialog_id = dialog_start_foreground( "OBS_ELEVATOR02_ALT", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );
		dialog_line_chief( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m10\m10_elevator_00109', FALSE, NONE, 0.0, "", "Master Chief : Those ships could get us back to UNSC space." );
			dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m10\m10_elevator_00110', FALSE, NONE, 0.0, "", "Cortana : �Could� is a generous word... especially since that large Cruiser heading our way will almost certainly blow us out of the sky long before that." );
			if b_used_fud_holgoram == FALSE then
			dialog_line_chief( l_dialog_id, 3, TRUE, 'sound\dialog\mission\m10\m10_observatory_get_objective_beacon_00104', FALSE, NONE, 0.0, "", "Master Chief : Are any of the ship-to-ship defenses online?" );
			dialog_line_cortana( l_dialog_id, 4, TRUE, 'sound\dialog\mission\m10\m10_elevator_00111', FALSE, NONE, 0.0, "", "Cortana : No, but why should that stop us? Head for the elevators." );
			dialog_line_cortana( l_dialog_id, 5, TRUE, 'sound\dialog\mission\m10\m10_elevator_00112', FALSE, NONE, 0.0, "", "Cortana : The Hyperion missiles technically still have power, but we�ll have to fire them manually from the outer deck." );
			else
			dialog_line_chief( l_dialog_id, 3, TRUE, 'sound\dialog\mission\m10\m10_elevator_00113', FALSE, NONE, 0.0, "", "Master Chief : Didn�t the ship�s sensors say there were still weapons systems online?" );
			dialog_line_cortana( l_dialog_id, 4, TRUE, 'sound\dialog\mission\m10\m10_elevator_00114', FALSE, NONE, 0.0, "", "Cortana : Yes, but since the ship was torn in half, we can�t access the weapons stations. We�ll have to fire them manually from the outer hull." );
			end
			l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
			
		
end

script dormant f_dialog_m10_post_second_elevator()
local long l_dialog_id = DEF_DIALOG_ID_NONE();
		kill_script(m10_objective_6_nudge);
		sleep_forever(m10_objective_6_nudge);
		kill_script(m10_objective_7_nudge);
		sleep_forever(m10_objective_7_nudge);
dprint( "f_dialog_m10_post_second_elevator" );

	l_dialog_id = dialog_start_foreground( "POST_SECOND_ELEVATOR", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );
				sleep_s(1);
					dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m10\m10_elevator_00104', FALSE, NONE, 0.0, "", "Cortana : More of them!" );
			l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
			
end

script static void f_dialog_m10_observ_atmosphere_breach()
dprint("f_dialog_m10_observ_atmosphere_breach");
static long l_dialog_id = DEF_DIALOG_ID_NONE();
						
            if ( not dialog_background_id_active_check(l_dialog_id) ) then
            
                        l_dialog_id = dialog_start_background( "ATMOSPHERE_BREACH", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE_ALL(), TRUE, "", 0.0 );
													dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m10\m10_observatory_pods_00105', FALSE, NONE, 0.0, "", "System Voice : Warning. Atmosphere breach.", TRUE);
													dialog_line_npc( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m10\m10_observatory_pods_00106', FALSE, NONE, 0.0, "", "System Voice : Activating emergency barricades.", TRUE);
                        l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
                        
            end
          
end

script dormant f_dialog_m10_observ_stragglers()
local long l_dialog_id = DEF_DIALOG_ID_NONE();
dprint( "f_dialog_m10_observ_stragglers" );

	l_dialog_id = dialog_start_foreground( "OBSERV_STRAGGLERS", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );
					dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m10\m10_blastshield_moreenemies_00100', FALSE, NONE, 0.0, "", "Cortana : I'm still reading some stragglers. Clear them out." );
			l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
			
end


// === f_dialog_m10_lookout_combat
script dormant f_dialog_m10_lookout_combat()

	// wait until a bunch of people are dead and the player is in a certain spot
	sleep_until(volume_test_players(f_dialog_lookout), 1);

	
	local long l_dialog_id = DEF_DIALOG_ID_NONE();
dprint( "f_dialog_m10_lookout_combat" );
	l_dialog_id = dialog_start_foreground( "LOOKOUT_COMBAT", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );
			dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m10\m10_lookout_shields_00101', FALSE, NONE, 0.0, "", "Cortana : That cruiser's shields are down" );
			dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m10\m10_lookout_shields_00102', FALSE, NONE, 0.0, "", "Cortana : Assuming they don't raise them, that missile's going to be one heck of a surprise." );

			NotifyLevel("obs waypoint set");

	l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
//	sleep_s(15);
	//wake(f_dialog_lookout_linger);
end


/*script dormant f_dialog_lookout_linger()
		sleep_until(volume_test_players(f_dialog_lookout), 1);
	local long l_dialog_id = DEF_DIALOG_ID_NONE();
  dprint( "f_dialog_lookout_linger" );
	l_dialog_id = dialog_start_foreground( "LOOKOUT_LINGER", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );
		dialog_line_chief( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m10\m10_lookout_00104', FALSE, NONE, 0.0, "", "Master Chief : There's something out there." );
		dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m10\m10_lookout_00105', FALSE, NONE, 0.0, "", "Cortana : A large celestial body." );
		dialog_line_cortana( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m10\m10_lookout_00106', FALSE, NONE, 0.0, "", "Cortana : Maybe the Covenant's base of operations?" );
		
	l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end*/

script dormant f_dialog_lookout_post()
	sleep_until(volume_test_players(lookout_post), 1);
	local long l_dialog_id = DEF_DIALOG_ID_NONE();
  dprint( "f_dialog_lookout_post" );
	l_dialog_id = dialog_start_foreground( "LOOKOUT_POST", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );
		dialog_line_chief( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m10\m10_lookout_00102', FALSE, NONE, 0.0, "", "Master Chief : These Covenant seem more fanatical than the ones we've fought before." );
		//dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m10\m10_lookout_00103', FALSE, NONE, 0.0, "", "Cortana : It HAS been four years. Who knows what they've gotten up to?" );
		
	l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end


script dormant f_dialog_m10_cafe()
	local long l_dialog_id = DEF_DIALOG_ID_NONE();
  dprint( "f_dialog_m10_cafe" );
	l_dialog_id = dialog_start_foreground( "M10_CAFE", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );
		dialog_line_chief( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m10\m10_cafe_00100', FALSE, NONE, 0.0, "", "Master Chief : How far to the missile?" );
		dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m10\m10_cafe_00101', FALSE, NONE, 0.0, "", "Cortana : We're just about there." );
	l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end


script dormant f_dialog_m10_cafe_lookout()
	local long l_dialog_id = DEF_DIALOG_ID_NONE();
  dprint( "f_dialog_m10_cafe_lookout" );
	l_dialog_id = dialog_start_foreground( "M10_CAFE_LOOKOUT", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );
		dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\global\global_chatter_00137', FALSE, NONE, 0.0, "", "Cortana : Look out!" );
	l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end



// === f_dialog_observatory_get_objective_beacon
script dormant f_dialog_observatory_pre_airlock()
local long l_dialog_id = DEF_DIALOG_ID_NONE();
//dprint( "f_dialog_observatory_get_objective_beacon" );

	l_dialog_id = dialog_start_foreground( "OBS_PRE_AIRLOCK", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );
		dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m10\m10_elevator_00100', FALSE, NONE, 0.0, "", "Cortana : Luckily, their shields are down." );
		dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m10\m10_elevator_00103', FALSE, NONE, 0.0, "", "Cortana : Assuming they don't raise them, that Archer missile is going to come as one heck of a surprise." );
	l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );

end

// === f_dialog_beacon_prep
/*script dormant f_dialog_beacon_prep()
local long l_dialog_id = DEF_DIALOG_ID_NONE();
//dprint( "f_dialog_beacon_prep" );

	l_dialog_id = dialog_start_foreground( "BEACON_PREP", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );
		dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m10\m10_beacon_prep_00100', FALSE, NONE, 0.0, "", "Cortana : The auxiliary launch station should be to your left out of the airlocks." );
		dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m10\m10_beacon_prep_00101', FALSE, NONE, 0.0, "", "Cortana : You'll have to prime the launch for--" );
		dialog_line_chief( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m10\m10_beacon_prep_00102', FALSE, NONE, 0.0, "", "Master Chief : Cortana?" );
		dialog_line_cortana( l_dialog_id, 3, TRUE, 'sound\dialog\mission\m10\m10_beacon_prep_00103', FALSE, NONE, 0.0, "", "Cortana : It's nothing. Just get to the launch station." );
	l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );

end*/


//=== f_dialog_beacon_controls
script dormant f_dialog_beacon_launch_beacon()
local long l_dialog_id = DEF_DIALOG_ID_NONE();

	
	l_dialog_id = dialog_start_foreground( "BEACON_LAUNCH_BEACON", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 );
			dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m10\m10_crash_objective_00107', FALSE, NONE, 0.0, "", "Cortana : Chief, you need to find the missile controls." );
			//dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m10\m10_beacon_launch_beacon_01_00101', FALSE, NONE, 0.0, "", "Cortana : We've got to fire that missile NOW!" );
	l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );

end
		

//=== f_dialog_beacon_controls
script dormant f_dialog_beacon_controls()
local long l_dialog_id = DEF_DIALOG_ID_NONE();

	
	l_dialog_id = dialog_start_foreground( "BEACON_BEACON01", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 );
			dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m10\m10_beacon_controls_00102', FALSE, NONE, 0.0, "", "Cortana : Launch the missile!" );
			
	l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );

end

// === f_dialog_beacon_get_objective_magac
script dormant f_dialog_beacon_get_objective_magac()
local long l_dialog_id = DEF_DIALOG_ID_NONE();
//dprint( "f_dialog_beacon_get_objective_magac" );

	l_dialog_id = dialog_start_foreground( "BEACON_MAGAC", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 );
		dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m10\m10_beacon_get_objective_magac_00100', FALSE, NONE, 0.0, "", "Cortana : Chief, on the deck!" );
		dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m10\m10_beacon_get_objective_magac_00101', FALSE, NONE, 0.0, "", "Cortana : Phantoms!" );
		dialog_line_cortana( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m10\m10_beacon_get_objective_magac_00101_2', FALSE, NONE, 0.0, "", "Cortana : You'll have to hold them off long enough to fire the missile!" );
	l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );

end
/*
// === f_dialog_fix_blast_door
script dormant f_dialog_fix_blast_door()
local long l_dialog_id = DEF_DIALOG_ID_NONE();
	kill_script(m10_objective_8_nudge);
	sleep_forever(m10_objective_8_nudge);
//dprint( "f_dialog_fix_blast_door" );

	l_dialog_id = dialog_start_foreground( "FIX_BLAST_DOOR", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 );
		dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m10\m10_beacon_get_objective_magac_00103', FALSE, NONE, 0.0, "", "Cortana : Great. The blast door's jammed. The missile won't fire until it's cleared." );
		dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m10\m10_beacon_get_objective_magac_00102', FALSE, NONE, 0.0, "", "Cortana : Get down there! " );
		
	l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );

end	*/
		
 //=== f_dialog_beacon_launch_beacon_02
/*script dormant f_dialog_beacon_launch_beacon_02()
local long l_dialog_id = DEF_DIALOG_ID_NONE();
dprint( "f_dialog_beacon_launch_beacon_02" );

	l_dialog_id = dialog_start_foreground( "BEACON_BEACON02", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.5 );
	//	dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\Mission\M10\m_m10_cortana_0022', beac_control_plinth, 0.0, "", "CORTANA: 32 : Yes!" );
		dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\Mission\M10\m_m10_cortana_0023', beac_control_plinth, 0.0, "", "CORTANA: 33 : Beacon away!" );
		
	l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );

end*/


// === f_dialog_beacon_get_objective_leave_beacon
script dormant f_dialog_beacon_get_objective_leave_beacon()
local long l_dialog_id = DEF_DIALOG_ID_NONE();
//dprint( "f_dialog_beacon_get_objective_leave_beacon" );
	kill_script(m10_objective_9_nudge);
	sleep_forever(m10_objective_9_nudge);
	
	l_dialog_id = dialog_start_foreground( "BEACON_COMPLETE", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.5 );
		//dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m10\m10_beacon_get_objective_leave_beacon_00100', FALSE, NONE, 0.0, "", "Cortana : GO GO GO!" );
		dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m10\m10_beacon_get_objective_leave_beacon_00101', FALSE, NONE, 0.0, "", "Cortana : It's using a gravity well to pull us inside the surface! " );
		dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m10\m10_beacon_get_objective_leave_beacon_00106', FALSE, NONE, 0.0, "", "Cortana : We've got to hurry; the second we cross the dome's event horizon, its atmosphere is going to tear us apart." );
		//dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m10\m10_beacon_get_objective_leave_beacon_00102', FALSE, NONE, 0.0, "", "Cortana : We've got to get off the Dawn!" );
		dialog_line_chief	 ( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m10\m10_beacon_get_objective_leave_beacon_00103', FALSE, NONE, 0.0, "", "Master Chief : Where are the closest escape pods?" );
		dialog_line_cortana( l_dialog_id, 3, TRUE, 'sound\dialog\mission\m10\m10_beacon_get_objective_leave_beacon_00104', FALSE, NONE, 0.0, "", "Cortana : Aft vehicle bay!" );
		dialog_line_cortana( l_dialog_id, 4, TRUE, 'sound\dialog\mission\m10\m10_beacon_get_objective_leave_beacon_00107', FALSE, NONE, 0.0, "", "Cortana : I�m tagging the closest airlock-go!" );
		
	l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
	
end
/*
script dormant f_dialog_vo_airlock_return()
local long l_dialog_id = DEF_DIALOG_ID_NONE();
 dprint( "f_dialog_vo_airlock_return" );

	l_dialog_id = dialog_start_foreground( "AIRLOCK_RETURN", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.5 );
		dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m10\m10_beacon_get_objective_leave_beacon_00106', FALSE, NONE, 0.0, "", "Cortana : We've got to hurry; the second we cross the dome's event horizon, its atmosphere is going to tear us apart." );
		
	l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end*/




//// === f_dialog_End_Start: Dialog
//script dormant f_dialog_End_Start()
////dprint( "::: f_dialog_End_Start :::" );
//local long l_dialog_id = DEF_DIALOG_ID_NONE();
//	sleep_until( dialog_id_played_check(L_dialog_ShipVO_NoPods), 1 );
//
//	l_dialog_id = dialog_start_foreground( "END_START", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.5 );
//		dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m10\m10_beacon_get_objective_leave_beacon_00106', FALSE, NONE, 0.0, "", "Cortana : We've got to hurry; the second we cross the dome's event horizon, its atmosphere is going to tear us apart." );
//		dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m10\m10_beacon_get_objective_leave_beacon_00107', FALSE, NONE, 0.0, "", "Cortana : I�m tagging the closest airlock - Go!" );
//
//		if ( dialog_foreground_id_active_check(L_dialog_End_Start) ) then
//			sleep_until( ((current_zone_set_fully_active() == S_zoneset_28_airlock_32_broken) and (not(door_airlock_2_interior->check_close()))) or (not dialog_foreground_id_active_check(L_dialog_End_Start)), 1 );
//		end
//
//			dialog_line_chief( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m10\m10_beacon_get_objective_leave_beacon_00103', FALSE, NONE, 0.0, "", "Master Chief : Where are the closest escape pods?" );
//		dialog_line_cortana( l_dialog_id, 3, TRUE, 'sound\dialog\mission\m10\m10_beacon_get_objective_leave_beacon_00104', FALSE, NONE, 0.0, "", "Cortana : Aft vehicle bay!" );
//		l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
//
//end

// === f_dialog_Breakhall01_Action: Dialog
script dormant f_dialog_Breakhall01_Action()
//dprint( "::: f_dialog_Breakhall01_Action :::" );
local long l_dialog_id = DEF_DIALOG_ID_NONE();

	l_dialog_id = dialog_start_foreground( "BREAKHALL_ACTION", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.5 );
				dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m10\m10_vehicle_bay_airlock_00100', FALSE, NONE, 0.0, "", "Cortana : We�re almost there!" );
	l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );

end


// === f_dialog_BrokenAction_Post: Dialog
script dormant f_dialog_BrokenAction_Post()
local long l_dialog_id = DEF_DIALOG_ID_NONE();
//dprint( "::: f_dialog_BrokenAction_Post :::" );

	// fire up the ship vo
	//wake( f_dialog_BrokenAction_ShipVo );

	// Make sure the Breakhall01 Action vo is disabled
	L_dialog_Breakhall01_Action = dialog_disable( STR_dialog_Breakhall01_Action, L_dialog_Breakhall01_Action, 1.0, TRUE );
	sleep_forever( f_dialog_Breakhall01_Action );

	f_sound_from_PA('sound\dialog\mission\m10\m10_escape_00100', 'sound\dialog\mission\m10\m10_escape_00100_2D', audio_pa4, "System Voice: Danger, gravity system failure imminent.");
	
	f_sound_from_PA('sound\dialog\mission\m10\m10_escape_00101', 'sound\dialog\mission\m10\m10_escape_00101_2D', audio_pa4, "System Voice: Proceed to nearest emergency life station.");
	
	l_dialog_id = dialog_start_foreground( "BROKENACTION_POST", l_dialog_id, TRUE, DEF_DIALOG_STYLE_INTERRUPT(), FALSE, "", 0.25 );
	
		// wait for the ship VO to have finished
		//sleep_until( dialog_id_played_check(L_dialog_BrokenAction_ShipVo), 1 );

		
		dialog_line_cortana( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m10\m10_broken_hall_00102', FALSE, NONE, 0.0, "", "Cortana : All but one of the grav generators just went dark!" );
		dialog_line_chief( l_dialog_id, 3, TRUE, 'sound\dialog\mission\m10\m10_broken_hall_00103', FALSE, NONE, 0.0, "", "Master Chief : Just keep me pointed at that vehicle bay." );
		b_blip_maintenance = TRUE;
	l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );

end
// === f_dialog_BrokenAction_ship_vo: Dialog
script dormant f_dialog_BrokenAction_ShipVo()
//dprint( "::: f_dialog_BrokenAction_ship_vo :::" );
local long l_dialog_id = DEF_DIALOG_ID_NONE();
//dprint( "::: f_dialog_Maintenance_End :::" );
	l_dialog_id = dialog_start_foreground( "BROKENACTION_SHIPVO", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), TRUE, "", 0.25 );
			dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m10\m10_escape_00105', FALSE, NONE, 0.0, "", "System Voice : Please immediately proceed to the nearest lifestation.", TRUE);
			dialog_line_npc( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m10\m10_escape_00114', FALSE, NONE, 0.0, "", "System Voice : Hull integrity at 25%.", TRUE);
	l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end

// === f_dialog_Maintenance_End: Dialog
script dormant f_dialog_Maintenance_End()
	local long l_dialog_id = DEF_DIALOG_ID_NONE();
//dprint( "::: f_dialog_Maintenance_End :::" );

	l_dialog_id = dialog_start_foreground( "MAINTENANCE_END", l_dialog_id, TRUE, DEF_DIALOG_STYLE_SKIP(), TRUE, "", 0.25 );
		dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m10\m10_maintenance_end_00100', FALSE, NONE, 0.0, "", "Cortana : The starboard bulkhead�s collapsing!" );
		dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m10\m10_maintenance_end_00101', FALSE, NONE, 0.0, "", "Cortana : If that goes, the hull won�t be enough to hold us together!" );
	l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
	
end

// === f_dialog_Run_Start: Dialog
script dormant f_dialog_Run_Start()
	local long l_dialog_id = DEF_DIALOG_ID_NONE();
dprint( "::: f_dialog_Run_Start :::" );
	kill_script(m10_objective_10_nudge);
	sleep_forever(m10_objective_10_nudge);
	b_objective_10_complete = TRUE;
	l_dialog_id = dialog_start_foreground( "RUN_START", l_dialog_id, TRUE, DEF_DIALOG_STYLE_SKIP(), FALSE, "", 0.0 );
		
		dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m10\m10_vehicle_bay_airlock_00100', FALSE, NONE, 0.0, "", "Cortana : We�re almost there!" );
		
	l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );

end


script static void f_dialog_emergency_weapon_cache()
dprint("f_dialog_emergency_weapon_cache");
static long l_dialog_id = DEF_DIALOG_ID_NONE();

            if ( not dialog_background_id_active_check(l_dialog_id) ) then
            
                        l_dialog_id = dialog_start_background( "EMERGENCY_WEAPON_CACHE", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE_ALL(), TRUE, "", 0.0 );
														dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m10\m10_weaponscrate_00100', FALSE, NONE, 0.0, "", "System Voice: Emergency weapon cache deployed.", TRUE);
                        l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
                        
            end
end

// === f_dialog_VehicleBay_Airlock: Dialog
script dormant f_dialog_VehicleBay_Airlock()
	local long l_dialog_id = DEF_DIALOG_ID_NONE();
//dprint( "::: f_dialog_VehicleBay_Airlock :::" );
	kill_script(m10_objective_10_nudge);
	sleep_forever(m10_objective_10_nudge);
	b_objective_10_complete = TRUE;
	l_dialog_id = dialog_start_foreground( "VEHICLEBAY_AIRLOCK", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );
	//	dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m10\m10_vehicle_bay_airlock_00102', FALSE, NONE, 0.0, "", "Cortana : There! The escape pods are on the far side of that vehicle bay!" );
	l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );

end


// === f_dialog_PodChase_Start: Dialog
script dormant f_dialog_rail_sequence()
	local long l_dialog_id = DEF_DIALOG_ID_NONE();
//dprint( "::: f_dialog_rail_sequence :::" );
	l_dialog_id = dialog_start_foreground( "RAIL_BEGIN", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.5 );
			//	dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m10\m10_vehicle_bay_airlock_00101', FALSE, NONE, 0.0, "", "Cortana : Just once I wish you'd to take me somewhere NICE." );
	l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );


end
/*
// === f_dialog_PodChase_End: Dialog
script dormant f_dialog_PodChase_End()
//dprint( "::: f_dialog_PodChase_End :::" );

	L_dialog_PodChase_End = dialog_start_foreground( "PODCHASE_END", L_dialog_PodChase_End, TRUE, DEF_DIALOG_STYLE_INTERRUPT(), FALSE, "", 0.0 );
		//dialog_line_cortana( L_dialog_PodChase_End, 0, TRUE, 'sound\dialog\Mission\M10\m_m10_cortana_0043a', FALSE, NONE, 0.0, "", "CORTANA: 58a : We're too late to escape the planet's gravity well." );
		dialog_line_cortana( L_dialog_PodChase_End, 1, TRUE, 'sound\dialog\Mission\M10\m_m10_cortana_0043b', FALSE, NONE, 0.0, "", "CORTANA: 58b : We'll have to aim for a planetary insertion and hope for the best!" );
	L_dialog_PodChase_End = dialog_end( L_dialog_PodChase_End, TRUE, TRUE, "" );
	
end*/

// === f_dialog_ShipVO_NoPods: Dialog
script dormant f_dialog_ShipVO_NoPods()		// INTEGRATED
//dprint( "::: f_dialog_ShipVO_NoPods :::" );
	local long l_dialog_id = DEF_DIALOG_ID_NONE();
	if ( not dialog_background_id_active_check(L_dialog_ShipVO_NoPods) ) then

//dprint( "::: f_dialog_VehicleBay_Airlock :::" );

	l_dialog_id = dialog_start_foreground( "SHIPVO_NOPODS", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );
		dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m10\m10_escape_00100', FALSE, NONE, 0.0, "", "System Voice: Emergency escape pods have been depleted in this area.", TRUE);
			dialog_line_npc( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m10\m10_escape_00111', FALSE, NONE, 0.0, "", "System Voice: Please board one of the remaining emergency escape vehicles in an orderly fashion.", TRUE);
	l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
	end
end




// === f_dialog_ShipVO_Blackout: Dialog
script dormant f_dialog_ShipVO_Blackout()	// INTEGRATED
local long l_dialog_id = DEF_DIALOG_ID_NONE();
	if ( not dialog_background_id_active_check(L_dialog_ShipVO_Blackout) ) then
	
		L_dialog_ShipVO_Blackout = dialog_start_background( "SHIPVO_BLACKOUT", L_dialog_ShipVO_Blackout, TRUE, DEF_DIALOG_STYLE_QUEUE(), TRUE, "", 0.125 );
			dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m10\m10_escape_00102', FALSE, NONE, 0.0, "", "System Voice: Warning.", TRUE);
			dialog_line_npc( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m10\m10_escape_00108', FALSE, NONE, 0.0, "", "System Voice: Hull collapse is imminent.", TRUE);
		L_dialog_ShipVO_Blackout = dialog_end( L_dialog_ShipVO_Blackout, TRUE, TRUE, "" );
		
	end

end

// === xxx: Dialog
script dormant f_dialog_ShipVO_VehicleBay()	// INTEGRATED
//dprint( "::: f_dialog_ShipVO_VehicleBay :::" );
local long l_dialog_id = DEF_DIALOG_ID_NONE();
	if ( not dialog_background_id_active_check(L_dialog_ShipVO_VehicleBay) ) then
	
		L_dialog_ShipVO_VehicleBay = dialog_start_background( STR_dialog_ShipVO_VehicleBay, L_dialog_ShipVO_VehicleBay, TRUE, DEF_DIALOG_STYLE_QUEUE(), TRUE, "", 0.125 );
			dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m10\m10_escape_00110', FALSE, NONE, 0.0, "", "System Voice: Lifestation C-17.", TRUE);
			dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m10\m10_escape_00111', FALSE, NONE, 0.0, "", "System Voice: Please board one of the remaining emergency escape vehicles in an orderly fashion.", TRUE);
		L_dialog_ShipVO_VehicleBay = dialog_end( L_dialog_ShipVO_VehicleBay, TRUE, TRUE, "" );
		
	end

end


//----------------------------- BEACON -------------------------------------------------------------------------

script dormant f_dialog_airlock_beacon()
local long l_dialog_id = DEF_DIALOG_ID_NONE();
//dprint( "f_dialog_elevator_ics_pry" );

	l_dialog_id = dialog_start_foreground( "AIRLOCK", l_dialog_id, TRUE, DEF_DIALOG_STYLE_SKIP(), FALSE, "", 0.0 );
		dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m10\m10_beacon_prep_00100', FALSE, NONE, 0.0, "", "Cortana : The auxiliary launch station should be to your left out of the airlocks." );
		hud_rampancy_players_set( 0.05 );
		dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m10\m10_beacon_prep_00101', FALSE, NONE, 0.0, "", "Cortana : You'll have to prime the launch for" );
		hud_rampancy_players_set( 0.0 );
		dialog_line_chief ( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m10\m10_beacon_prep_00102', FALSE, NONE, 0.0, "", "Master Chief : Cortana?" );
		dialog_line_cortana( l_dialog_id, 3, TRUE, 'sound\dialog\mission\m10\m10_beacon_prep_00103', FALSE, NONE, 0.0, "", "Cortana : It's nothing. Just get to the launch station." );
	l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );

end

script dormant f_dialog_beacon_enter()

		print ("blip missile control");
		NotifyLevel("blip missile control");
end

script dormant f_dialog_vo_planet_reveal()

local long l_dialog_id = DEF_DIALOG_ID_NONE();
//dprint( "f_dialog_elevator_ics_pry" );

	l_dialog_id = dialog_start_foreground( "BEACON ENTER", l_dialog_id, TRUE, DEF_DIALOG_STYLE_SKIP(), FALSE, "", 0.0 );
			//dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m10\m10_outer_deck_covenant_00100', FALSE, NONE, 0.0, "", "Cortana : Covenant boarding parties!" );
		//dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m10\m10_outer_deck_covenant_00101a', FALSE, NONE, 0.0, "", "Cortana : They're looking for a way inside!" );
		dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m10\m10_beacon_enter_00100', FALSE, NONE, 0.0, "", "Cortana : Uh - I'm sorry. Did I miss a Forerunner planet at some point?" );
		dialog_line_chief( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m10\m10_beacon_enter_00101', FALSE, NONE, 0.0, "", "Master Chief : One thing at a time." );
		//dialog_line_chief( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m10\m10_beacon_enter_02101', FALSE, NONE, 0.0, "", "Master Chief : The missile controls." );
		//dialog_line_cortana( l_dialog_id, 5, TRUE, 'sound\dialog\mission\m10\m10_beacon_enter_00102', FALSE, NONE, 0.0, "", "Cortana : Right. First things first." );
	l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );

end

script dormant f_dialog_near_missile_room()
local long l_dialog_id = DEF_DIALOG_ID_NONE();
//dprint( "f_dialog_elevator_ics_pry" );

	l_dialog_id = dialog_start_foreground( "NEAR MISSiLE ROOM", l_dialog_id, TRUE, DEF_DIALOG_STYLE_SKIP(), FALSE, "", 0.0 );
		dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m10\m10_beacon_controls_00100', FALSE, NONE, 0.0, "", "Cortana : The launch station's there!" );
	l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
	

end
script dormant f_dialog_kill_zone()
local long l_dialog_id = DEF_DIALOG_ID_NONE();
//dprint( "f_dialog_kill_zone" );

	l_dialog_id = dialog_start_foreground( "KILL_ZONE", l_dialog_id, TRUE, DEF_DIALOG_STYLE_SKIP(), FALSE, "", 0.0 );
				//dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m10\m10_beacon_controls_00101', FALSE, NONE, 0.0, "", "Cortana : They're in the kill zone!" );
	l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );

end



script dormant f_dialog_missile_launched()
local long l_dialog_id = DEF_DIALOG_ID_NONE();
//dprint( "f_dialog_missile_launched" );
			sleep_s(2);
			dprint ("Cortana: Launch initiated!");
			sound_impulse_start ('sound\dialog\mission\m10\m10_beacon_controls_00103', NONE, 1);
			sleep (sound_impulse_time('sound\dialog\mission\m10\m10_beacon_controls_00103'));
	//l_dialog_id = dialog_start_foreground( "NEAR MISSiLE ROOM", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 );
			//	dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m10\m10_beacon_controls_00103', FALSE, NONE, 0.0, "", "Cortana : Launch initiated!" );
	//l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );

end


script dormant f_dialog_magec_jam()
local long l_dialog_id = DEF_DIALOG_ID_NONE();
//dprint( "f_dialog_elevator_ics_pry" );

	l_dialog_id = dialog_start_foreground( "PHANTOM BARK", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 );
		dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m10\m10_beacon_get_objective_magac_00103', FALSE, NONE, 0.0, "", "Cortana : Great. The blast door's jammed. The missile won't fire until it's cleared." );
		dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m10\m10_beacon_get_objective_magac_00102', FALSE, NONE, 0.0, "", "Cortana : Get down there!" );
	l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );

end



// =================================================================================================
// =================================================================================================
// NUDGES
// =================================================================================================
// =================================================================================================

script static void f_dialog_m10_objective_1()
dprint("f_dialog_m10_objective_1");
static long l_dialog_id = DEF_DIALOG_ID_NONE();
		if ( (not dialog_foreground_id_active_check(l_dialog_id)) and  (not b_objective_1_complete)) then
					l_dialog_id = dialog_start_foreground( "OBJECTIVE_1", l_dialog_id,  (not b_objective_1_complete), DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 ); 
								dialog_line_cortana( l_dialog_id, 0, (not b_objective_1_complete), 'sound\dialog\mission\m10\m10_crash_objective_00100', FALSE, NONE, 0.0, "", "Cortana : Chief, you need to get us up to the Observation Deck." );
				 l_dialog_id = dialog_end( l_dialog_id, b_objective_1_complete, b_objective_1_complete, "" );
		end
end

script static void f_dialog_m10_objective_2()
dprint("f_dialog_m10_objective_2");
static long l_dialog_id = DEF_DIALOG_ID_NONE();
		if ( (not dialog_foreground_id_active_check(l_dialog_id)) and  (not b_objective_2_complete)) then
					l_dialog_id = dialog_start_foreground( "OBJECTIVE_2", l_dialog_id,  (not b_objective_2_complete), DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 ); 
								dialog_line_cortana( l_dialog_id, 0, (not b_objective_2_complete), 'sound\dialog\mission\m10\m10_crash_objective_00101', FALSE, NONE, 0.0, "", "Cortana : Chief, you need to activate the elevator so we can get moving." );
				 l_dialog_id = dialog_end( l_dialog_id, b_objective_2_complete, b_objective_2_complete, "" );
		end
end

script static void f_dialog_m10_objective_3()
dprint("f_dialog_m10_objective_3");
static long l_dialog_id = DEF_DIALOG_ID_NONE();
		if ( (not dialog_foreground_id_active_check(l_dialog_id)) and  (not b_objective_3_complete)) then
					l_dialog_id = dialog_start_foreground( "OBJECTIVE_3", l_dialog_id,  (not b_objective_3_complete), DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 ); 
								dialog_line_cortana( l_dialog_id, 0, (not b_objective_3_complete), 'sound\dialog\mission\m10\m10_crash_objective_00102', FALSE, NONE, 0.0, "", "Cortana : Chief, you need to clear out all these Covenant." );
				 l_dialog_id = dialog_end( l_dialog_id, b_objective_3_complete, b_objective_3_complete, "" );
		end
end


script static void f_dialog_m10_objective_4()
dprint("f_dialog_m10_objective_4");
static long l_dialog_id = DEF_DIALOG_ID_NONE();
		if ( (not dialog_foreground_id_active_check(l_dialog_id)) and  (not b_objective_4_complete)) then
					l_dialog_id = dialog_start_foreground( "OBJECTIVE_4", l_dialog_id,  (not b_objective_4_complete), DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 ); 
								dialog_line_cortana( l_dialog_id, 0, (not b_objective_4_complete), 'sound\dialog\mission\m10\m10_crash_objective_00103', FALSE, NONE, 0.0, "", "Cortana : Chief, you need to activate the blast door." );
				 l_dialog_id = dialog_end( l_dialog_id, b_objective_4_complete, b_objective_4_complete, "" );
		end
end

script static void f_dialog_m10_objective_5()
dprint("f_dialog_m10_objective_5");
static long l_dialog_id = DEF_DIALOG_ID_NONE();
		if ( (not dialog_foreground_id_active_check(l_dialog_id)) and  (not b_objective_5_complete)) then
					l_dialog_id = dialog_start_foreground( "OBJECTIVE_5", l_dialog_id,  (not b_objective_5_complete), DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 ); 
								dialog_line_cortana( l_dialog_id, 1, (not b_objective_5_complete), NONE, FALSE, NONE, 0.0, "", "Cortana: Chief, you need to take out these Covenant before we can move on." );
				 l_dialog_id = dialog_end( l_dialog_id, b_objective_5_complete, b_objective_5_complete, "" );
		end
end

script static void f_dialog_m10_objective_6()
dprint("f_dialog_m10_objective_6");
static long l_dialog_id = DEF_DIALOG_ID_NONE();
		if ( (not dialog_foreground_id_active_check(l_dialog_id)) and  (not b_objective_6_complete)) then
					l_dialog_id = dialog_start_foreground( "OBJECTIVE_6", l_dialog_id,  (not b_objective_6_complete), DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 ); 
								dialog_line_cortana( l_dialog_id, 0, (not b_objective_6_complete), 'sound\dialog\mission\m10\m10_crash_objective_00105', FALSE, NONE, 0.0, "", "Cortana : Chief, you need to get to the elevator." );
				 l_dialog_id = dialog_end( l_dialog_id, b_objective_6_complete, b_objective_6_complete, "" );
		end
end

script static void f_dialog_m10_objective_7()
dprint("f_dialog_m10_objective_7");
static long l_dialog_id = DEF_DIALOG_ID_NONE();
		if ( (not dialog_foreground_id_active_check(l_dialog_id)) and  (not b_objective_7_complete)) then
					l_dialog_id = dialog_start_foreground( "OBJECTIVE_7", l_dialog_id,  (not b_objective_7_complete), DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 ); 
								dialog_line_cortana( l_dialog_id, 0, (not b_objective_7_complete), 'sound\dialog\mission\m10\m10_crash_objective_00106', FALSE, NONE, 0.0, "", "Cortana : Chief, get in the elevator." );
				 l_dialog_id = dialog_end( l_dialog_id, b_objective_7_complete, b_objective_7_complete, "" );
		end
end

script static void f_dialog_m10_objective_8()
dprint("f_dialog_m10_objective_8");
static long l_dialog_id = DEF_DIALOG_ID_NONE();
		if ( (not dialog_foreground_id_active_check(l_dialog_id)) and  (not b_objective_8_complete)) then
					l_dialog_id = dialog_start_foreground( "OBJECTIVE_8", l_dialog_id,  (not b_objective_8_complete), DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 ); 
								dialog_line_cortana( l_dialog_id, 0, (not b_objective_8_complete), 'sound\dialog\mission\m10\m10_crash_objective_00107', FALSE, NONE, 0.0, "", "Cortana: Chief, you need to find the missile controls." );
				 l_dialog_id = dialog_end( l_dialog_id, b_objective_8_complete, b_objective_8_complete, "" );
		end
end



script static void f_dialog_m10_objective_9()
dprint("f_dialog_m10_objective_9");
static long l_dialog_id = DEF_DIALOG_ID_NONE();
		if ( (not dialog_foreground_id_active_check(l_dialog_id)) and  (not b_objective_9_complete)) then
					l_dialog_id = dialog_start_foreground( "OBJECTIVE_7", l_dialog_id,  (not b_objective_9_complete), DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 ); 
								dialog_line_cortana( l_dialog_id, 0, (not b_objective_9_complete), 'sound\dialog\mission\m10\m10_crash_objective_00108', FALSE, NONE, 0.0, "", "Cortana : Chief, you need to initiate the manual launch." );
				 l_dialog_id = dialog_end( l_dialog_id, b_objective_9_complete, b_objective_9_complete, "" );
		end
end

script static void f_dialog_m10_objective_10()
dprint("f_dialog_m10_objective_10");
static long l_dialog_id = DEF_DIALOG_ID_NONE();
		if ( (not dialog_foreground_id_active_check(l_dialog_id)) and  (not b_objective_10_complete)) then
					l_dialog_id = dialog_start_foreground( "OBJECTIVE_10", l_dialog_id,  (not b_objective_10_complete), DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 ); 
								dialog_line_cortana( l_dialog_id, 0, (not b_objective_10_complete), 'sound\dialog\mission\m10\m10_crash_objective_00109', FALSE, NONE, 0.0, "", "Cortana : Chief, you need to get us to the escape pods." );
				 l_dialog_id = dialog_end( l_dialog_id, b_objective_10_complete, b_objective_10_complete, "" );
		end
end



// =================================================================================================
// =================================================================================================
// SHIP STATUS
// =================================================================================================
// =================================================================================================




script static void f_dialog_m10_hull_integrity_30()
	dprint("f_dialog_m10_hull_integrity_30");
	f_sound_from_PA('sound\dialog\mission\m10\m10_escape_00115', 'sound\dialog\mission\m10\m10_escape_00115_2d', audio_pa1, "System Voice : Hull integrity at 30%.");
end

script static void f_dialog_system_depressurization()
	dprint("f_dialog_system_depressurization");
	f_sound_from_PA('sound\dialog\mission\m10\m10_escape_00212', 'sound\dialog\mission\m10\m10_escape_00212_2d', audio_pa2, "System Voice: Warning. System depressurization.");
end

script static void f_dialog_m10_hull_integrity_25()
	dprint("f_dialog_m10_hull_integrity_25");
	f_sound_from_PA('sound\dialog\mission\m10\m10_escape_00105', 'sound\dialog\mission\m10\m10_escape_00105_2d', audio_pa3, "System Voice : Please immediately proceed to the nearest lifestation.");
	f_sound_from_PA('sound\dialog\mission\m10\m10_escape_00114', 'sound\dialog\mission\m10\m10_escape_00114_2d', audio_pa3, "System Voice : Hull integrity at 25%.");
end

script dormant f_dialog_ShipVO_Maintenance()
	dprint( "::: f_dialog_ShipVO_Maintenance :::" );
	//f_sound_from_PA( 'sound\dialog\mission\m10\m10_escape_00102', "System Voice: Warning.");
	//f_sound_from_PA( 'sound\dialog\mission\m10\m10_escape_00103', "System Voice: Hull integrity at 20%.");
	//f_sound_from_PA( 'sound\dialog\mission\m10\m10_escape_00104', "System Voice: Initiating emergency shutdown of all Class 5 subsystems.");
	//f_sound_from_PA( 'sound\dialog\mission\m10\m10_escape_00101', "System Voice: Nearest lifestation is available on Deck 107-C-17.");
end

script static void f_dialog_m10_hull_integrity_15()
	dprint("f_dialog_m10_hull_integrity_15");
	f_sound_from_PA('sound\dialog\mission\m10\m10_escape_00113', 'sound\dialog\mission\m10\m10_escape_00113_2d', audio_pa5, "System Voice : Hull integrity at 15%");
end

script static void f_dialog_m10_hull_integrity_10()
	dprint("f_dialog_m10_hull_integrity_10");						
	f_sound_from_PA('sound\dialog\mission\m10\m10_escape_00112', 'sound\dialog\mission\m10\m10_escape_00112_2d', audio_pa10, "System Voice : Hull integrity at 10%.");
end

script dormant f_dialog_ShipVO_ExplosionAlley()
	dprint( "::: f_dialog_ShipVO_ExplosionAlley :::" );
	f_sound_from_PA('sound\dialog\mission\m10\m10_escape_00102', 'sound\dialog\mission\m10\m10_escape_00102_2d', audio_pa6, "System Voice: Warning.");
	f_sound_from_PA('sound\dialog\mission\m10\m10_escape_00106', 'sound\dialog\mission\m10\m10_escape_00106_2d', audio_pa6, "System Voice: Critical ship damage.");
	f_sound_from_PA('sound\dialog\mission\m10\m10_escape_00107', 'sound\dialog\mission\m10\m10_escape_00107_2d', audio_pa6, "System Voice: Hull integrity at 5%.");
	f_sound_from_PA('sound\dialog\mission\m10\m10_escape_00109', 'sound\dialog\mission\m10\m10_escape_00109_2d', audio_pa6, "System Voice: Personnel are advised to evacuate immediately.");
end

script static void f_dialog_catastrophic_depressurization()
	dprint("f_dialog_catastrophic_depressurization");
	kill_script(m10_objective_10_nudge);
	sleep_forever(m10_objective_10_nudge);
	b_objective_10_complete = TRUE;
	f_sound_from_PA('sound\dialog\mission\m10\m10_escape_00213', 'sound\dialog\mission\m10\m10_escape_00213_2d', audio_pa7, "System Voice: Warning. Catastrophic depressurization.");
end

// --- End m10_crash_dialog.hsc ---

// --- Begin m10_crash_droppod_ics.hsc ---
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343
//
// Mission: 							m10_crash_droppod_ICS
//	Insertion Points:			XXX							- Drop pod
//										
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343

// =================================================================================================
// =================================================================================================
// Drop Pod ICS
// =================================================================================================
// =================================================================================================
// variables

// functions
// === f_droppod_ICS_startup::: Area main initialization
script startup f_droppod_ICS_startup()
	sleep_until( b_mission_started == TRUE );
	//dprint( "::: f_droppod_ICS_startup :::" );

end

// === f_droppod_ICS_start::: Start drop pod ICS
script dormant f_droppod_ICS_start()
	//dprint( "::: f_droppod_ICS_start :::" );
	
	//datamine
	data_mine_set_mission_segment( "m10_ICS_droppod" );

	// display story blurb
	//storyblurb_display( m10_ics_drop_pod, 7, FALSE, FALSE );
	
end

// === f_droppod_ICS_deinit::: Cleanup
script dormant f_droppod_ICS_deinit()
	//dprint( "::: f_droppod_ICS_deinit :::" );

	sleep_forever( f_droppod_ICS_start );

end
// --- End m10_crash_droppod_ics.hsc ---

// --- Begin m10_crash_elevator_ics.hsc ---
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343
//
// Mission: 							m10_crash_elevator_ICS
//	Insertion Points:			XXX							- Drop pod
//										
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343

// =================================================================================================
// =================================================================================================
// Elevator ICS
// =================================================================================================
// =================================================================================================
// variables
global boolean b_elevator_ICS_started							= FALSE;
global unit g_ics_player													= NONE;
global boolean b_elevator_ICS_player						  = FALSE;
global boolean b_elevator_ICS_player_moved        = FALSE;
global boolean b_elevator_ICS_done                = FALSE;


// functions
// === f_elevator_ICS_startup::: Area main initialization
script startup f_elevator_ICS_startup()
	sleep_until( b_mission_started == TRUE );
	//dprint( "::: f_elevator_ICS_startup :::" );

	// setup ICS trigger
	wake( f_elevator_ICS_trigger );

end

script static boolean f_B_elevator_ICS_started()
	b_elevator_ICS_started;
end
	
script static void f_m10_elevator_trigger( object trigger, unit activator )
	g_ics_player = activator;
	b_elevator_ICS_player = TRUE;
end

// === f_elevator_ICS_trigger::: Trigger drop pod ICS setup
script dormant f_elevator_ICS_trigger()
	sleep_until (volume_test_players(tv_elevator_room), 1);
	dprint( "::: f_elevator_ICS_trigger :::" );
	
	//datamine
	data_mine_set_mission_segment( "m10_ICS_elevator" );

	//object_create(sn_elevator_ics_crate);
	
	// set the door objective
	thread (f_objective_blip( DEF_R_OBJECTIVE_ACTIVATE_ELEVATOR, TRUE, TRUE ));

	local long show=0;
repeat
	g_ics_player = NONE;
	b_elevator_ICS_player = FALSE;
	
	// wait for a player to trigger the control
	sleep_until( g_ics_player != NONE, 1 );
		sleep_until( b_elevator_ICS_player != FALSE, 1 );
	print( "::: f_elevator_ICS_activated :::" );
	
	volume_teleport_players_not_inside(tv_elevator_lobby, tp_to_lobby_flag);
	sleep(1);


	// open the elevator door
	show=pup_play_show(elevator);
	sleep(5);
until(pup_is_playing(show),1);
	b_elevator_ICS_started = TRUE;
	// destroy the handle
	object_destroy( dc_elevator_ics_button );
	// unblip the handle
	thread (f_objective_blip( DEF_R_OBJECTIVE_ACTIVATE_ELEVATOR, FALSE, TRUE ));
	sleep_until(not pup_is_playing(show),1);
	game_save();
end




//////////////////////////////////////
//		ELEVATOR ICS
/////////////////////////////////////

script dormant f_start_elevator_fx()
	sleep(50);
	//Pause space dust effect
	fx_camera_pause( TRUE );
	fx_08_elevator();
	fx_08_elevator_door();

end

script dormant f_end_elevator_fx()
	sleep(10);
	//Pause space dust effect
	fx_camera_pause( FALSE );
	fx_08_elev_exit();


end

script static void f_debris_hit()
	damage_players(objects\characters\monitor\damage_effects\first_hit.damage_effect);
	camera_shake_all_coop_players( 0.1, 0.2, 1, 0.1);
end

script static void f_debris_release_shake()
	camera_shake_all_coop_players( 0.4, 0.3, 1, 0.2);
end

global short g_elevator_be_careful=0;
global boolean g_elevator_slam=false;

script static void f_elevator_be_careful()
	if g_elevator_be_careful==0 then
		g_elevator_be_careful=1;
		dprint("Cortana : Chief, be careful");
		sound_impulse_start ('sound\dialog\mission\m10\m10_elevator_ics_pry_00100', NONE, 1);
		sleep(sound_impulse_time('sound\dialog\mission\m10\m10_elevator_ics_pry_00100')+90);
		g_elevator_be_careful=2;
	end
end

script static void f_elevator_because()
	if g_elevator_be_careful==1 then
		dprint("Cortana : because some areas might have lost pressure");
		sound_impulse_start('sound\dialog\mission\m10\m10_elevator_ics_00100', NONE, 1);
		sleep(sound_impulse_time('sound\dialog\mission\m10\m10_elevator_ics_00100'));

		dprint("Master Chief : Right.");
		sound_impulse_start('sound\dialog\mission\m10\m10_elevator_ics_00101', NONE, 1);
	end
end

script static void f_elevator_slam()
	if g_elevator_slam then
		sound_impulse_start('sound\environments\solo\m010\ics\ics_m10_door_pry_close', NONE, 1.0);
	end
	g_elevator_slam=true;
end
script static void f_move_check_setup()
	if
		(game_is_cooperative() == TRUE) AND (b_elevator_ICS_done == FALSE)
	then
		thread(f_elevator_ics_move_check());
		thread(f_elevator_ics_b_set());
	end
	
end

script static void f_elevator_ics_move_check()
	sleep_s(120);

	if
		(b_elevator_ICS_player_moved == FALSE) AND (b_elevator_ICS_done == FALSE)
	then
	unit_kill(g_ics_player);
	sleep_s(1);
	fade_out(0,0,0,20);
	sleep(15);
	game_revert();
	else
		thread(f_move_check_setup());
	end

end

script static void f_elevator_ics_b_set()

	b_elevator_ICS_player_moved = FALSE;
	unit_action_test_reset(g_ics_player);
	sleep_until(unit_action_test_look_relative_all_directions (g_ics_player));
	b_elevator_ICS_player_moved = TRUE;
	
end
// --- End m10_crash_elevator_ics.hsc ---

// --- Begin m10_crash_end.hsc ---
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343
//
// Mission: 					m10_crash_end
//	Insertion Points:	start (or icr)	- Beginning
//										ibr							- Broken Floor
//										iea							- explosion alley
//										ivb							- Vehicle Bay
//										iju							- Jump Debris
//										
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343

// =================================================================================================
// TODO ============================================================================================
// GENERAL -----------------------------------------------------------------------------------------
//	-	rename script to areas/insertions
//	- Screenshake
//		- Hook into Jesse's system
//		- Variety
//		- Discuss with Audio
//		- Implement new system stuff
//			- Direction
//			- Falloff
//		- Escelate shakes as the mission goes on
//		- Share integration [libraries]
//		- Drop
//			- Get validitation of design
//			- Spec
//			- Implement
//	- Weapons & ammo
//	- No vibration in zero g from screenshakes
// START -------------------------------------------------------------------------------------------
//	- Setup start room
// SPLIT -------------------------------------------------------------------------------------------
//	- Test pathing
//	- Elarge area?
//	- Platform 01 ramp cause slide
// EXPLOSION ALLEY ---------------------------------------------------------------------------------
//	- Add Covenant that gets killed
//	- Explosion force
// VEHICLE -----------------------------------------------------------------------------------------
//	- Get new area hooked up
//	- Update encounter for area changes
// JUMP DEBRIS -------------------------------------------------------------------------------------
//	- Mission Complete
//		- Integrate real mission complete
// =================================================================================================

// =================================================================================================
// =================================================================================================
// END
// =================================================================================================
// =================================================================================================
// variables

// functions
// === f_END_startup: Initialize all the end sequence pieces
script startup f_END_startup()
	sleep_until( b_mission_started == TRUE, 1 );
	//dprint( "::: f_END_startup :::" );
	
	// initialize sub areas
	//wake( f_END_airlock_init );
	wake( f_brokenfloor_init );
	wake( f_maintenance_init );
//	wake( f_vehiclebay_init );
//	wake( f_debris_init );
	
end

// === f_END_deinit::: Deinitialize
script dormant f_END_deinit()
	//dprint( "::: f_END_deinit :::" );

	// kill any functions
	//sleep_forever( f_END_init );

	// deinitialize sub areas
	//wake( f_END_airlock_deinit );
	wake( f_brokenfloor_deinit );
	wake( f_maintenance_deinit );
//	wake( f_vehiclebay_deinit );
//	wake( f_debris_deinit );

end

// --- End m10_crash_end.hsc ---

// --- Begin m10_crash_fx.hsc ---

script startup m10_crash_fx()
	
	sleep ( 150 );
	print ("::: M10 - FX :::");
	//effect_attached_to_camera_new( environments\solo\m10_crash\fx\particulates\particulates_moving.effect );
	//attach_fx_to_cam();
	//test_fx();
	//fx_arm_didact_screen_test();
	//fx_arm_didact_scan();
end

// -------------------------------------------------------------------------------------------------
// FX: explosion Alley Test - FXVille v-jepalm
// -------------------------------------------------------------------------------------------------
// Explosion Kills Elite and makes corner look impassible

script static void fx_explosion_alley_test()
	print ("::: M10 VFX - Explosion Alley :::");
	effect_new( "environments\solo\m10_crash\fx\explosions\explosion_brk_eal_large.effect", "fx_panel_3");	
	effect_new( "environments\solo\m10_crash\fx\explosions\explosion_brk_eal_large.effect", "fx_panel_10");
	effect_new( "environments\solo\m10_crash\fx\explosions\explosion_brk_eal_large.effect", "fx_panel_6");
	//effect_new( "environments\solo\m10_crash\fx\gas\gas_pipe_lrg.effect", "fx_panel_5");
	
end

// -------------------------------------------------------------------------------------------------
// FX: decompression and recompression in the airlocks
// -------------------------------------------------------------------------------------------------
//



script static void fx_airlock_compression()
	print ("--- airlock compression ---");
	effect_new( "environments\solo\m10_crash\fx\alk_compression_slow.effect", "fx_arl_gas_17");
	sleep(10);
	effect_new( "environments\solo\m10_crash\fx\alk_compression_slow.effect", "fx_arl_gas_16");
	sleep(10);
	effect_new( "environments\solo\m10_crash\fx\alk_compression_slow.effect", "fx_arl_gas_15");
	sleep(10);
	effect_new( "environments\solo\m10_crash\fx\alk_compression.effect", "fx_arl_gas_14");
	sleep(10);
	effect_new( "environments\solo\m10_crash\fx\alk_compression.effect", "fx_arl_gas_13");
	sleep(10);
	effect_new( "environments\solo\m10_crash\fx\alk_compression.effect", "fx_arl_gas_12");
	sleep(10);
	effect_new( "environments\solo\m10_crash\fx\alk_compression.effect", "fx_arl_gas_11");
	sleep(10);
	effect_new( "environments\solo\m10_crash\fx\alk_compression.effect", "fx_arl_gas_10");
	sleep(10);
	effect_new( "environments\solo\m10_crash\fx\alk_compression.effect", "fx_arl_gas_09");
	sleep(10);
	effect_new( "environments\solo\m10_crash\fx\alk_compression.effect", "fx_arl_gas_08");
	sleep(10);
	effect_new( "environments\solo\m10_crash\fx\alk_compression.effect", "fx_arl_gas_07");
	sleep(10);
	effect_new( "environments\solo\m10_crash\fx\alk_compression.effect", "fx_arl_gas_06");
	sleep(10);
	effect_new( "environments\solo\m10_crash\fx\alk_compression.effect", "fx_arl_gas_05");
	sleep(10);
	effect_new( "environments\solo\m10_crash\fx\alk_compression.effect", "fx_arl_gas_04");
	sleep(10);
	effect_new( "environments\solo\m10_crash\fx\alk_compression.effect", "fx_arl_gas_03");
	sleep(10);
	effect_new( "environments\solo\m10_crash\fx\alk_compression.effect", "fx_arl_gas_02");
	sleep(10);
	effect_new( "environments\solo\m10_crash\fx\alk_compression.effect", "fx_arl_gas_01");
end

script static void fx_airlock_decompression()
	print ("--- airlock decompression ---");
	effect_new( "environments\solo\m10_crash\fx\alk_decompression.effect", "fx_arl_dc_01");
	sleep(5);
	effect_new( "environments\solo\m10_crash\fx\alk_decompression.effect", "fx_arl_dc_02");
	sleep(5);
	effect_new( "environments\solo\m10_crash\fx\alk_decompression.effect", "fx_arl_dc_03");
	sleep(5);
	effect_new( "environments\solo\m10_crash\fx\alk_decompression.effect", "fx_arl_dc_04");
end


script static void fx_airlock_compression2()
	print ("--- airlock 2 compression ---");
	effect_new( "environments\solo\m10_crash\fx\alk_compression.effect", "fx_arl2_gas_01");
	sleep(10);
	effect_new( "environments\solo\m10_crash\fx\alk_compression.effect", "fx_arl2_gas_02");
	sleep(10);
	effect_new( "environments\solo\m10_crash\fx\alk_compression.effect", "fx_arl2_gas_03");
	sleep(10);
	effect_new( "environments\solo\m10_crash\fx\alk_compression.effect", "fx_arl2_gas_04");
	sleep(10);
	effect_new( "environments\solo\m10_crash\fx\alk_compression.effect", "fx_arl2_gas_05");
	sleep(10);
	effect_new( "environments\solo\m10_crash\fx\alk_compression.effect", "fx_arl2_gas_06");
	sleep(10);
	effect_new( "environments\solo\m10_crash\fx\alk_compression.effect", "fx_arl2_gas_07");
	sleep(10);
	effect_new( "environments\solo\m10_crash\fx\alk_compression.effect", "fx_arl2_gas_08");
	sleep(10);
	effect_new( "environments\solo\m10_crash\fx\alk_compression.effect", "fx_arl2_gas_09");
	sleep(10);
	effect_new( "environments\solo\m10_crash\fx\alk_compression.effect", "fx_arl2_gas_10");
	sleep(10);
	effect_new( "environments\solo\m10_crash\fx\alk_compression.effect", "fx_arl2_gas_11");
	sleep(10);
	effect_new( "environments\solo\m10_crash\fx\alk_compression.effect", "fx_arl2_gas_12");
	sleep(10);
	effect_new( "environments\solo\m10_crash\fx\alk_compression.effect", "fx_arl2_gas_13");
	sleep(10);
	effect_new( "environments\solo\m10_crash\fx\alk_compression.effect", "fx_arl2_gas_14");
end

script static void fx_airlock_decompression2()
	print ("--- airlock 2 decompression ---");
	effect_new( "environments\solo\m10_crash\fx\alk_decompression.effect", "fx_arl2_dc_01");
	sleep(5);
	effect_new( "environments\solo\m10_crash\fx\alk_decompression.effect", "fx_arl2_dc_02");
	sleep(5);
	effect_new( "environments\solo\m10_crash\fx\alk_decompression.effect", "fx_arl2_dc_03");
	sleep(5);
	effect_new( "environments\solo\m10_crash\fx\alk_decompression.effect", "fx_arl2_dc_04");
end

// -------------------------------------------------------------------------------------------------
// FX: explosion Alley Test Off
// -------------------------------------------------------------------------------------------------
// Explosion Kills Elite and makes corner look impassible

script static void fx_explosion_alley_test_off()
	print ("::: M10 VFX - Explosion Alley Test :::");
	effect_delete_from_flag( "environments\solo\m10_crash\fx\explosions\explosion_brk_eal_large.effect", "fx_panel_3");	
	effect_delete_from_flag( "environments\solo\m10_crash\fx\explosions\explosion_brk_eal_large.effect", "fx_panel_10");
	effect_delete_from_flag( "environments\solo\m10_crash\fx\explosions\explosion_brk_eal_large.effect", "fx_panel_6");
	//effect_delete_from_flag( "environments\solo\m10_crash\fx\gas\gas_pipe_lrg.effect", "fx_panel_5");
	
end

// -------------------------------------------------------------------------------------------------
// FX: Elite Death
// -------------------------------------------------------------------------------------------------
// Explosion Kills Elite and makes corner look impassible

script static void fx_hall_explosion()
	print ("::: M10 VFX - Elite Death :::");
	effect_new( "environments\solo\m10_crash\fx\fire\fire_corner_burning.effect", "fx_36_fire_hallway_corner");	
	effect_new( "environments\solo\m10_crash\fx\explosions\explosion_36_elite_death.effect", "fx_36_exp_elite_death");
	// Gas
	effect_new( "environments\solo\m10_crash\fx\gas\gas_pipe_lrg.effect", "fx_36_steam_large_01");
	effect_new( "environments\solo\m10_crash\fx\gas\gas_pipe_lrg.effect", "fx_36_steam_large_04");
	effect_new( "environments\solo\m10_crash\fx\gas\gas_pipe.effect", "fx_36_steam_large_02");
	effect_new( "environments\solo\m10_crash\fx\gas\gas_pipe.effect", "fx_36_steam_large_03");
	effect_new( "environments\solo\m10_crash\fx\smoke\smoke_hall_end_thick.effect", "fx_36_smoke_hall_01");
	effect_new( "environments\solo\m10_crash\fx\gas\gas_slow.effect", "fx_panel_1");
	effect_new( "environments\solo\m10_crash\fx\gas\gas_slow.effect", "fx_panel_2");
	effect_new( "environments\solo\m10_crash\fx\gas\gas_slow.effect", "fx_panel_3");
	// Sparks
	effect_new( "environments\solo\m10_crash\fx\sparks\spark_burst_falling_medium.effect", "fx_36_spark_bursting_01");
	effect_new( "environments\solo\m10_crash\fx\sparks\spark_burst_falling_medium.effect", "fx_36_spark_bursting_02");
	effect_new( "environments\solo\m10_crash\fx\sparks\spark_burst_falling_medium.effect", "fx_36_spark_bursting_03");
end

// -------------------------------------------------------------------------------------------------
// FX: Elite Death Off
// -------------------------------------------------------------------------------------------------
// Explosion Kills Elite and makes corner look impassible

script static void fx_hall_explosion_off()
	print ("::: M10 VFX - Elite Death Off :::");
	effect_delete_from_flag( "environments\solo\m10_crash\fx\fire\fire_corner_burning.effect", "fx_36_fire_hallway_corner");	
	effect_delete_from_flag( "environments\solo\m10_crash\fx\explosions\explosion_36_elite_death.effect", "fx_36_exp_elite_death");
	effect_delete_from_flag( "environments\solo\m10_crash\fx\gas\gas_pipe_lrg.effect", "fx_36_steam_large_01");
	effect_delete_from_flag( "environments\solo\m10_crash\fx\gas\gas_pipe.effect", "fx_36_steam_large_02");
	effect_delete_from_flag( "environments\solo\m10_crash\fx\smoke\smoke_hall_end_thick.effect", "fx_36_smoke_hall_01");
	effect_delete_from_flag( "environments\solo\m10_crash\fx\sparks\spark_burst_falling_medium.effect", "fx_36_spark_bursting_01");
	effect_delete_from_flag( "environments\solo\m10_crash\fx\sparks\spark_burst_falling_medium.effect", "fx_36_spark_bursting_02");
end

// -------------------------------------------------------------------------------------------------
// FX: ENGULF
// -------------------------------------------------------------------------------------------------
// Explosion Engulfs Player - Attach to Camera
/*
script static void f_debris_engulf_cam()
	print ("::: M10 - Attach Explosion Engulf FX to the Camera :::");
	effect_attached_to_camera_new( fx\test\jedwards\fud_engulf.effect );
end
*/

// fx_engulf_player - Opening fx_engulf_player - Engulfs player in flames
script static void fx_engulf_player( player p_player, boolean b_active )
	if ( b_active ) then
		dprint( "ENGULF WAS ON HERE!!!" );
		//effect_new_on_object_marker( environments\solo\m10_crash\fx\explosions\vby_explo_player_engulf.effect, p_player, "pedestal" );
	else
		dprint( "ENGULF WAS OFF HERE!!!" );
		//effect_stop_object_marker( environments\solo\m10_crash\fx\explosions\vby_explo_player_engulf.effect, p_player, "pedestal" );
	end
end

// -------------------------------------------------------------------------------------------------
// FX: DROP PODS
// -------------------------------------------------------------------------------------------------
// fx_droppod_cov_squad_<event> - Attaches effect to squad drop pod
script static void fx_droppod_cov_squad_launch( object obj_pod, boolean b_active )
	//dprint( "fx_droppod_cov_squad_launch" );
	
	if ( b_active ) then
		effect_new_on_object_marker( environments\solo\m10_crash\fx\pod\pod_launch.effect, obj_pod, "fx_drop_trail" );
	else
		effect_stop_object_marker( environments\solo\m10_crash\fx\pod\pod_launch.effect, obj_pod, "fx_drop_trail" );
	end
	
end
script static void fx_droppod_cov_squad_trail( object obj_pod, boolean b_active )
	//dprint( "fx_droppod_cov_squad_trail" );
	
	if ( b_active ) then
		effect_new_on_object_marker( environments\solo\m10_crash\fx\pod\pod_trail.effect, obj_pod, "fx_drop_trail" );
	else
		effect_stop_object_marker( environments\solo\m10_crash\fx\pod\pod_trail.effect, obj_pod, "fx_drop_trail" );
	end
	
end
script static void fx_droppod_cov_squad_impact( object obj_pod, boolean b_active )
	//dprint( "fx_droppod_cov_squad_impact" );
	
	if ( b_active ) then
		effect_new_on_object_marker( environments\solo\m10_crash\fx\podbreak\pod_crash01.effect, obj_pod, "fx_impact" );
	else
		effect_stop_object_marker( environments\solo\m10_crash\fx\podbreak\pod_crash01.effect, obj_pod, "fx_impact" );
	end
	
end

// fx_droppod_cov_elite_<event> - Attaches effect to elite drop pod
script static void fx_droppod_cov_elite_launch( object obj_pod, boolean b_active )
	//dprint( "fx_droppod_cov_elite_launch" );
	
	if ( b_active ) then
		effect_new_on_object_marker( environments\solo\m10_crash\fx\pod\pod_launch.effect, obj_pod, "fx_contrail" );
	else
		effect_stop_object_marker( environments\solo\m10_crash\fx\pod\pod_launch.effect, obj_pod, "fx_contrail" );
	end
	
end
script static void fx_droppod_cov_elite_trail( object obj_pod, boolean b_active )
	//dprint( "fx_droppod_cov_elite_trail" );
	
	if ( b_active ) then
		effect_new_on_object_marker( environments\solo\m10_crash\fx\pod\pod_trail_elite.effect, obj_pod, "fx_contrail" );
	else
		effect_stop_object_marker( environments\solo\m10_crash\fx\pod\pod_trail_elite.effect, obj_pod, "fx_contrail" );
	end
	
end
script static void fx_droppod_cov_elite_impact( object obj_pod, boolean b_active )
	//dprint( "fx_droppod_cov_elite_impact" );
	
	if ( b_active ) then
		effect_new_on_object_marker( environments\solo\m10_crash\fx\podbreak\pod_crash01.effect, obj_pod, "fx_impact" );
	else
		effect_stop_object_marker( environments\solo\m10_crash\fx\podbreak\pod_crash01.effect, obj_pod, "fx_impact" );
	end
	
end

// -------------------------------------------------------------------------------------------------
// FX: EXPLOSION ALLEY
// -------------------------------------------------------------------------------------------------
script static void fx_explosionalley_destruction( boolean b_active )
static long l_thread_01 = 0;
static long l_thread_02 = 0;
static long l_thread_03 = 0;
static long l_thread_04 = 0;
static long l_thread_05 = 0;
static long l_thread_06 = 0;
static long l_thread_07 = 0;
static long l_thread_08 = 0;
static long l_thread_09 = 0;
static long l_thread_10 = 0;
static long l_thread_11 = 0;
static long l_thread_12 = 0;
static long l_thread_13 = 0;
static long l_thread_14 = 0;
static long l_thread_15 = 0;
static long l_thread_16 = 0;
static long l_thread_17 = 0;
static long l_thread_18 = 0;
static long l_thread_19 = 0;
static long l_thread_20 = 0;
static long l_thread_21 = 0;
static long l_thread_22 = 0;
static long l_thread_23 = 0;

	if ( b_active ) then
		dprint( "don't run fx_explosionalley_destruction: ACTIVE" );
//		l_thread_01 = thread( fx_explosionalley_attach("maintenance_hall_explosion_01", fx_panel_1) );
//		l_thread_02 = thread( fx_explosionalley_attach("maintenance_hall_explosion_02", fx_panel_2) );
//		l_thread_03 = thread( fx_explosionalley_attach("maintenance_hall_explosion_03", fx_panel_3) );
//		l_thread_04 = thread( fx_explosionalley_attach("maintenance_hall_explosion_04", fx_panel_4) );
//		l_thread_05 = thread( fx_explosionalley_attach("maintenance_hall_explosion_05", fx_panel_5) );
//		l_thread_06 = thread( fx_explosionalley_attach("maintenance_hall_explosion_06", fx_panel_6) );
//		l_thread_07 = thread( fx_explosionalley_attach("maintenance_hall_explosion_07", fx_panel_7) );
//		l_thread_08 = thread( fx_leveleventstatus_effect_new("maintenance_hall_explosion_08", environments\solo\m10_crash\fx\gas\gas_pipe.effect, fx_panel_8) );
//		l_thread_09 = thread( fx_leveleventstatus_effect_new("maintenance_hall_explosion_09", environments\solo\m10_crash\fx\gas\gas_pipe.effect, fx_panel_9) );
//		l_thread_10 = thread( fx_leveleventstatus_effect_new("maintenance_hall_explosion_10", environments\solo\m10_crash\fx\gas\gas_pipe.effect, fx_panel_10) );
//		l_thread_11 = thread( fx_leveleventstatus_effect_new("maintenance_hall_explosion_11", environments\solo\m10_crash\fx\gas\gas_pipe.effect, fx_panel_11) );
//		l_thread_12 = thread( fx_explosionalley_attach("maintenance_hall_explosion_12", fx_panel_12) );
//		l_thread_13 = thread( fx_explosionalley_attach("maintenance_hall_explosion_13", fx_panel_13) );
//		l_thread_14 = thread( fx_explosionalley_attach("maintenance_hall_explosion_14", fx_panel_14) );
//		l_thread_15 = thread( fx_explosionalley_attach("maintenance_hall_explosion_15", fx_panel_15) );
//		l_thread_16 = thread( fx_explosionalley_attach("maintenance_hall_explosion_16", fx_panel_16) );
//		l_thread_17 = thread( fx_explosionalley_attach("maintenance_hall_explosion_17", fx_panel_17) );
//		l_thread_18 = thread( fx_explosionalley_attach("maintenance_hall_explosion_18", fx_panel_18) );
//		l_thread_19 = thread( fx_explosionalley_attach("maintenance_hall_explosion_19", fx_panel_19) );
//		l_thread_20 = thread( fx_explosionalley_attach("maintenance_hall_explosion_20", fx_panel_20) );
//		l_thread_21 = thread( fx_explosionalley_attach("maintenance_hall_explosion_21", fx_panel_21) );
//		l_thread_22 = thread( fx_explosionalley_attach("maintenance_hall_explosion_22", fx_panel_22) );
//		l_thread_23 = thread( fx_explosionalley_attach("maintenance_hall_explosion_23", fx_panel_23) );
	else
		//dprint( "fx_explosionalley_destruction: CLEANUP" );
		kill_thread( l_thread_01 );
		kill_thread( l_thread_02 );
		kill_thread( l_thread_03 );
		kill_thread( l_thread_04 );
		kill_thread( l_thread_05 );
		kill_thread( l_thread_06 );
		kill_thread( l_thread_07 );
		kill_thread( l_thread_08 );
		kill_thread( l_thread_09 );
		kill_thread( l_thread_10 );
		kill_thread( l_thread_11 );
		kill_thread( l_thread_12 );
		kill_thread( l_thread_13 );
		kill_thread( l_thread_14 );
		kill_thread( l_thread_15 );
		kill_thread( l_thread_16 );
		kill_thread( l_thread_17 );
		kill_thread( l_thread_18 );
		kill_thread( l_thread_19 );
		kill_thread( l_thread_20 );
		kill_thread( l_thread_21 );
		kill_thread( l_thread_22 );
		kill_thread( l_thread_23 );
	end

end

script static void fx_explosionalley_attach( string str_event, cutscene_flag flg_loc )

	sleep_until( LevelEventStatus(str_event), 1 );
	begin_random_count(1)
		effect_new( 'environments\solo\m10_crash\fx\gas\gas_pipe.effect', flg_loc );
		effect_new( 'environments\solo\m10_crash\fx\smoke\smoke_smouldering_sparks.effect', flg_loc );
		effect_new( 'environments\solo\m10_crash\fx\sparks\sparks_burst_broken_pipe.effect', flg_loc );
	end
	
end



// -------------------------------------------------------------------------------------------------
// FX: GENERIC TRIGGERS
// -------------------------------------------------------------------------------------------------
script static void fx_leveleventstatus_effect_new( string str_event, effect fx_new, cutscene_flag flg_loc )
	sleep_until( LevelEventStatus(str_event), 1 );
	effect_new( fx_new, flg_loc );
end



script static void test_fx()
	print ("::: test FX :::");
//	effect_new( environments\solo\m10_crash\fx\steam_pipe.effect, fx_pipe01 );
//	effect_new( environments\solo\m10_crash\fx\steam_pipe.effect, fx_pipe02 );
//	effect_new( environments\solo\m10_crash\fx\particulates\particulates_moving.effect, fx_pipe02 );
//	effect_new( environments\solo\m10_crash\fx\steam_pipe.effect, fx_pipe03 );
//	effect_new( environments\solo\m10_crash\fx\spark_sm.effect, fx_damage_point );
//	effect_new( environments\solo\m10_crash\fx\atmosphere_ground.effect, fx_ground01 );
//	effect_new( environments\solo\m10_crash\fx\atmosphere_ground.effect, fx_ground02 );
//	effect_new( environments\solo\m10_crash\fx\cold_breath.effect, fx_cryoglass );
//	effect_new( environments\solo\m10_crash\fx\spark_sm.effect, fx_cryo01_broken01 );
//	effect_new( environments\solo\m10_crash\fx\steam_pipe.effect, fx_cryo01_broken02 );
//	effect_new( environments\solo\m10_crash\fx\steam_pipe.effect, fx_cryo02_broken01 );
//	effect_new( environments\solo\m10_crash\fx\spark_sm.effect, fx_cryo02_broken02 );
//	effect_new( environments\solo\m10_crash\fx\dust_door_open.effect, fx_door );
//	effect_new( environments\solo\m10_crash\fx\bpass_hall_lgt.effect, fx_lensflare_hallway_cryo01 );
//	effect_new( environments\solo\m10_crash\fx\bpass_hall_lgt.effect, fx_lensflare_hallway_cryo02 );
//	effect_new( environments\solo\m10_crash\fx\bpass_hall_lensflare.effect, fx_lensflare_hallway_cryo03 );

//effect_new( environments\solo\m10_crash\fx\fire\fire_interior_wall.effect, fx_maintenance_fire01);
//effect_new( environments\solo\m10_crash\fx\fire\fire_interior_wall.effect, fx_maintenance_fire02);
//effect_new( environments\solo\m10_crash\fx\fire\fire_interior_wall.effect, fx_maintenance_fire03);
//effect_new( environments\solo\m10_crash\fx\fire\fire_interior_wall.effect, fx_maintenance_fire04);
//effect_new( environments\solo\m10_crash\fx\fire\fire_interior_wall.effect, fx_maintenance_fire05);
//effect_new( environments\solo\m10_crash\fx\fire\fire_interior_wall.effect, fx_maintenance_fire06);
//effect_new( environments\solo\m10_crash\fx\fire\fire_interior.effect, fx_maintenance_fire_base_01);
//effect_new( environments\solo\m10_crash\fx\fire\fire_interior.effect, fx_maintenance_fire_base_02);
//effect_new( environments\solo\m10_crash\fx\fire\fire_interior.effect, fx_maintenance_fire_base_03);


	
//	Cryo Chamber Area
	
//	effect_new( environments\solo\m10_crash\fx\steam_down_med_01.effect, fx_steam_ceiling_lg_01 );
//	effect_new( environments\solo\m10_crash\fx\steam_down_med_02.effect, fx_steam_ceiling_lg_02 );
//	effect_new( environments\solo\m10_crash\fx\steam_down_med_02.effect, fx_steam_ceiling_lg_03 );
//	effect_new( environments\solo\m10_crash\fx\steam_down_med_03.effect, fx_steam_ceiling_lg_04 );
//	effect_new( environments\solo\m10_crash\fx\steam_down_med_02.effect, fx_steam_ceiling_lg_05 );
//	effect_new( environments\solo\m10_crash\fx\steam_down_med_03.effect, fx_steam_ceiling_lg_06 );

//	effect_new( environments\solo\m10_crash\fx\steam_side_med_01.effect, fx_steam_ground_side_01 );
//	effect_new( environments\solo\m10_crash\fx\steam_side_med_02.effect, fx_steam_ground_side_02 );

//	effect_new( environments\solo\m10_crash\fx\cold_sparkle_bits_01.effect, fx_cold_icey_bits_01 );
//	effect_new( environments\solo\m10_crash\fx\cold_sparkle_bits_01.effect, fx_cold_icey_bits_02 );

//	effect_new( environments\solo\m10_crash\fx\steam_up_sm_01.effect, fx_steam_up_sm_01 );
//	effect_new( environments\solo\m10_crash\fx\steam_up_sm_02.effect, fx_steam_up_sm_02 );
//	effect_new( environments\solo\m10_crash\fx\steam_up_sm_02.effect, fx_steam_up_sm_03 );
//	effect_new( environments\solo\m10_crash\fx\steam_up_sm_02.effect, fx_steam_up_sm_04 );

//	effect_new( environments\solo\m10_crash\fx\steam_side_med_01.effect, fx_steam_side_med_01 );
//	effect_new( environments\solo\m10_crash\fx\steam_side_med_02.effect, fx_steam_side_med_02 );
//	effect_new( environments\solo\m10_crash\fx\steam_side_med_02.effect, fx_steam_side_med_03 );
//	effect_new( environments\solo\m10_crash\fx\steam_side_med_01.effect, fx_steam_side_med_04 );
//	effect_new( environments\solo\m10_crash\fx\steam_side_sm_01.effect, fx_steam_side_sm_01 );
//	effect_new( environments\solo\m10_crash\fx\steam_side_sm_01.effect, fx_steam_side_sm_02 );

//	effect_new( environments\solo\m10_crash\fx\steam_fill_med_01.effect, fx_steam_fill_card_01 );
//	effect_new( environments\solo\m10_crash\fx\steam_fill_med_01.effect, fx_steam_fill_card_02 );

//	effect_new( environments\solo\m10_crash\fx\steam_down_med_04.effect, fx_steam_down_fall_01 );
//	effect_new( environments\solo\m10_crash\fx\steam_down_med_04.effect, fx_steam_down_fall_02 );
	
//	effect_new( environments\solo\m10_crash\fx\podbreak\pod_glass_break_0g.effect, fx_pod_debris01 );
//	effect_new( environments\solo\m10_crash\fx\podbreak\pod_glass_break_0g_02.effect, fx_pod_debris02 );
//	effect_new( environments\solo\m10_crash\fx\podbreak\pod_glass_break_0g_02.effect, fx_pod_debris03 );
//	effect_new( environments\solo\m10_crash\fx\podbreak\pod_glass_escape_0g.effect, fx_air_escape01 );
//	effect_new( environments\solo\m10_crash\fx\podbreak\pod_glass_escape_0g_02.effect, fx_air_escape02 );
//	effect_new( environments\solo\m10_crash\fx\podbreak\pod_glass_escape_0g_02.effect, fx_air_escape03 );


// 04_ARMORY
end
script static void fx_maint_fire_spawn()
	print ("<--   Spawn Fire in Maintenance   -->");
	// ground fire
/*	effect_new( environments\solo\m10_crash\fx\fire\fire_interior.effect, fx_maint_fire01 );
	effect_new( environments\solo\m10_crash\fx\fire\fire_interior.effect, fx_maint_fire02 );
	effect_new( environments\solo\m10_crash\fx\fire\fire_interior.effect, fx_maint_fire03 );
	effect_new( environments\solo\m10_crash\fx\fire\fire_interior.effect, fx_maint_fire04 );
	effect_new( environments\solo\m10_crash\fx\fire\fire_interior.effect, fx_maint_fire05 );
	effect_new( environments\solo\m10_crash\fx\fire\fire_interior.effect, fx_maint_fire06 );
	// wall fire
	effect_new( environments\solo\m10_crash\fx\fire\fire_interior_wall.effect, fx_maint_fire_wall01 );
	effect_new( environments\solo\m10_crash\fx\fire\fire_interior_wall.effect, fx_maint_fire_wall02 );
	effect_new( environments\solo\m10_crash\fx\fire\fire_interior_wall.effect, fx_maint_fire_wall03 );
	//effect_new( environments\solo\m10_crash\fx\fire\fire_interior_wall.effect, fx_maint_fire_wall04 );
	effect_new( environments\solo\m10_crash\fx\fire\fire_interior_wall.effect, fx_maint_fire_wall05 );
	effect_new( environments\solo\m10_crash\fx\fire\fire_interior_wall.effect, fx_maint_fire_wall06 );
	effect_new( environments\solo\m10_crash\fx\fire\fire_interior_wall.effect, fx_maint_fire_wall07 );
	effect_new( environments\solo\m10_crash\fx\fire\fire_interior_wall.effect, fx_maint_fire_wall08 );
	effect_new( environments\solo\m10_crash\fx\fire\fire_interior_wall.effect, fx_maint_fire_wall09 );
	effect_new( environments\solo\m10_crash\fx\fire\fire_interior_wall.effect, fx_maint_fire_wall10 );
	effect_new( environments\solo\m10_crash\fx\fire\fire_interior_wall.effect, fx_maint_fire_wall11 );*/
end

script static void fx_maint_fire_delete()
	print ("<--   Terminate Fire in Maintenance   -->");
	// ground fire
/*	effect_delete_from_flag( environments\solo\m10_crash\fx\fire\fire_interior.effect, fx_maint_fire01 );
	effect_delete_from_flag( environments\solo\m10_crash\fx\fire\fire_interior.effect, fx_maint_fire02 );
	effect_delete_from_flag( environments\solo\m10_crash\fx\fire\fire_interior.effect, fx_maint_fire03 );
	effect_delete_from_flag( environments\solo\m10_crash\fx\fire\fire_interior.effect, fx_maint_fire04 );
	effect_delete_from_flag( environments\solo\m10_crash\fx\fire\fire_interior.effect, fx_maint_fire05 );
	effect_delete_from_flag( environments\solo\m10_crash\fx\fire\fire_interior.effect, fx_maint_fire06 );
	// wall fire
	effect_delete_from_flag( environments\solo\m10_crash\fx\fire\fire_interior_wall.effect, fx_maint_fire_wall01 );
	effect_delete_from_flag( environments\solo\m10_crash\fx\fire\fire_interior_wall.effect, fx_maint_fire_wall02 );
	effect_delete_from_flag( environments\solo\m10_crash\fx\fire\fire_interior_wall.effect, fx_maint_fire_wall03 );
	effect_delete_from_flag( environments\solo\m10_crash\fx\fire\fire_interior_wall.effect, fx_maint_fire_wall04 );
	effect_delete_from_flag( environments\solo\m10_crash\fx\fire\fire_interior_wall.effect, fx_maint_fire_wall05 );
	effect_delete_from_flag( environments\solo\m10_crash\fx\fire\fire_interior_wall.effect, fx_maint_fire_wall06 );
	effect_delete_from_flag( environments\solo\m10_crash\fx\fire\fire_interior_wall.effect, fx_maint_fire_wall07 );
	effect_delete_from_flag( environments\solo\m10_crash\fx\fire\fire_interior_wall.effect, fx_maint_fire_wall08 );
	effect_delete_from_flag( environments\solo\m10_crash\fx\fire\fire_interior_wall.effect, fx_maint_fire_wall09 );
	effect_delete_from_flag( environments\solo\m10_crash\fx\fire\fire_interior_wall.effect, fx_maint_fire_wall10 );
	effect_delete_from_flag( environments\solo\m10_crash\fx\fire\fire_interior_wall.effect, fx_maint_fire_wall11 );*/
end

script static void attach_fx_to_cam()
	print ("::: attaching FX to the Camera :::");
	effect_attached_to_camera_new( environments\solo\m10_crash\fx\particulates\particulates_moving.effect );
end


script static void fx_arm_didact_scan()
	print ("::: M10 - Didact Scan in the Armory - FX :::");
		//sleep(30 * 3);
		//enable_first_person_squish = false;
		effect_new( environments\solo\m10_crash\fx\scan\didact_scan.effect, fx_arm_didact_scan );
		//fx_arm_didat_monitors();
		sleep(30 * 1.2);
		fx_arm_didact_monitors_set01();
		sleep(30 * 1.18);
		fx_arm_didact_monitors_set02();
		//sleep(30 * .005);
		fx_arm_didact_monitors_set03();
		sleep(30 * .1);
		fx_arm_didact_monitors_set04();
		sleep(30 * .15);		//space between monitor geo
		fx_arm_didact_monitors_set05();
		//fx_arm_didact_sparks_set05();
		// 6) side walls C
		sleep(30 * .15);
		fx_arm_didact_monitors_set06();
		// 7) side walls D
		sleep(30 * .15);
		fx_arm_didact_monitors_set07();
		// 8) side walls E
		sleep(30 * .35);		//space between monitor geo
		fx_arm_didact_monitors_set08();
		// 9) side walls F
		sleep(30 * .15);
		fx_arm_didact_monitors_set09();
		// 10) side walls G
		sleep(30 * .2);
		fx_arm_didact_monitors_set10();
		// 11) Back monitor
		sleep(30 * .2);
		fx_arm_didact_monitors_set11();
		//enable_first_person_squish = true;
end


script static void fx_arm_didact_monitors_set01()
	print ("--> didact monitors set 1 <--");
	effect_new( environments\solo\m10_crash\fx\scan\didact_screen_above_door.effect, fx_arm_grp1_mon041_md_wide );
	//monitors sparks
	effect_new( environments\solo\m10_crash\fx\scan\didact_spark_lg.effect, fx_arm_spark06 );
	effect_new( environments\solo\m10_crash\fx\scan\didact_spark_lg.effect, fx_arm_spark026 );
	
	
end 

 script static void fx_arm_didact_monitors_set02()
	print ("--> didact monitors set 2 <--");
	effect_new( environments\solo\m10_crash\fx\scan\didact_screen_md_high.effect, fx_arm_grp2_mon07 );
	effect_new( environments\solo\m10_crash\fx\scan\didact_screen_md_tall_rt.effect, fx_arm_grp2_mon010_md_tall );
	effect_new( environments\solo\m10_crash\fx\scan\didact_screen_sm_square_rt.effect, fx_arm_grp2_mon09_sm_square );
	effect_new( environments\solo\m10_crash\fx\scan\didact_screen_md_tall_lf.effect, fx_arm_grp2_mon036_md_tall );
	effect_new( environments\solo\m10_crash\fx\scan\didact_screen_sm_square_lf.effect, fx_arm_grp2_mon037_sm_square );
	effect_new( environments\solo\m10_crash\fx\scan\didact_screen_tiny.effect, fx_arm_grp2_mon016_sm_square );
	//monitors sparks
	effect_new( environments\solo\m10_crash\fx\scan\didact_spark_lg.effect, fx_arm_spark07 );
	effect_new( environments\solo\m10_crash\fx\scan\didact_spark_lg.effect, fx_arm_spark08 );
end 

script static void fx_arm_didact_monitors_set03()
	print ("--> didact monitors set 3 <--");
	//monitors sparks
	effect_new( environments\solo\m10_crash\fx\scan\didact_screen_centre_scrns.effect, fx_arm_grp3_mon06 );
	effect_new( environments\solo\m10_crash\fx\scan\didact_screen_centre_scrns.effect, fx_arm_grp3_mon03 );
	effect_new( environments\solo\m10_crash\fx\scan\didact_spark_lg.effect, fx_arm_grp3_electric_arc04 );
	effect_new( environments\solo\m10_crash\fx\scan\didact_screen_lg_wide.effect, fx_arm_grp3_mon033_lg_wide );
	effect_new( environments\solo\m10_crash\fx\scan\didact_screen_sm_wide.effect, fx_arm_grp3_mon038_sm_wide );
	effect_new( environments\solo\m10_crash\fx\scan\didact_screen_sm_wide.effect, fx_arm_grp3_mon042_sm_wide );
	effect_new( environments\solo\m10_crash\fx\scan\didact_screen_lg_wide.effect, fx_arm_grp3_mon08_lg_wide );
	effect_new( environments\solo\m10_crash\fx\scan\didact_spark_lg.effect, fx_arm_spark033 );

end 

script static void fx_arm_didact_monitors_set04()
	print ("--> didact monitors set 4 <--");
	effect_new( environments\solo\m10_crash\fx\scan\didact_screen_sm_square_lf.effect, fx_arm_grp4_mon011_sm_square );
	effect_new( environments\solo\m10_crash\fx\scan\didact_screen_md_tall_lf.effect, fx_arm_grp4_mon012_md_tall );
	effect_new( environments\solo\m10_crash\fx\scan\didact_spark_lg.effect, fx_arm_grp4_spark06 );
	effect_new( environments\solo\m10_crash\fx\scan\didact_spark_lg.effect, fx_arm_grp4_spark07 );
	effect_new( environments\solo\m10_crash\fx\scan\didact_screen_md_tall_rt.effect, fx_arm_grp4_mon035_md_tall );
	effect_new( environments\solo\m10_crash\fx\scan\didact_screen_sm_square_rt.effect, fx_arm_grp4_mon034_sm_square );
	//monitors sparks
	effect_new( environments\solo\m10_crash\fx\scan\didact_spark_lg.effect, fx_arm_spark017 );
	effect_new( environments\solo\m10_crash\fx\scan\didact_spark_lg.effect, fx_arm_spark018 );
	effect_new( environments\solo\m10_crash\fx\scan\didact_spark_lg.effect, fx_arm_spark019 );
	
end 


script static void fx_arm_didact_monitors_set05()
	print ("--> didact monitors set 5 <--");
	effect_new( environments\solo\m10_crash\fx\scan\didact_screen_md_tall_rt.effect, fx_arm_grp5_mon014_md_tall );
	effect_new( environments\solo\m10_crash\fx\scan\didact_screen_sm_square_rt.effect, fx_arm_grp5_mon013_sm_square );
	effect_new( environments\solo\m10_crash\fx\scan\didact_screen_centre_scrns.effect, fx_arm_grp5_mon05 );
	effect_new( environments\solo\m10_crash\fx\scan\didact_screen_centre_scrns.effect, fx_arm_grp5_mon04 );
	effect_new( environments\solo\m10_crash\fx\scan\didact_screen_md_tall_lf.effect, fx_arm_grp5_mon036_md_tall );
	effect_new( environments\solo\m10_crash\fx\scan\didact_screen_sm_square_lf.effect, fx_arm_grp5_mon037_sm_square );
	//monitors sparks
	effect_new( environments\solo\m10_crash\fx\scan\didact_spark_lg.effect, fx_arm_spark09 );
	effect_new( environments\solo\m10_crash\fx\scan\didact_spark_lg.effect, fx_arm_spark010 );
	effect_new( environments\solo\m10_crash\fx\scan\didact_spark_lg.effect, fx_arm_spark011 );
	effect_new( environments\solo\m10_crash\fx\scan\didact_spark_lg.effect, fx_arm_spark027 );
	effect_new( environments\solo\m10_crash\fx\scan\didact_spark_lg.effect, fx_arm_spark028 );
	effect_new( environments\solo\m10_crash\fx\scan\didact_spark_lg.effect, fx_arm_spark029 );
	
end 

script static void fx_arm_didact_monitors_set06()
	print ("--> didact monitors set 6 <--");
	effect_new( environments\solo\m10_crash\fx\scan\didact_screen_sm_wide.effect, fx_arm_grp6_mon043_sm_wide );
	effect_new( environments\solo\m10_crash\fx\scan\didact_screen_lg_wide.effect, fx_arm_grp6_mon015_lg_wide );
	effect_new( environments\solo\m10_crash\fx\scan\didact_screen_lg_wide.effect, fx_arm_grp6_mon033_lg_wide );
	effect_new( environments\solo\m10_crash\fx\scan\didact_screen_sm_wide.effect, fx_arm_grp6_mon038_sm_wide );
	
end 

script static void fx_arm_didact_monitors_set07()
	print ("--> didact monitors set 7 <--");
	effect_new( environments\solo\m10_crash\fx\scan\didact_screen_sm_square_lf.effect, fx_arm_grp7_mon016_sm_square );
	effect_new( environments\solo\m10_crash\fx\scan\didact_screen_md_tall_lf.effect, fx_arm_grp7_mon017_md_tall );
	effect_new( environments\solo\m10_crash\fx\scan\didact_screen_sm_square_rt.effect, fx_arm_grp7_mon034_sm_square );
	effect_new( environments\solo\m10_crash\fx\scan\didact_screen_md_tall_rt.effect, fx_arm_grp7_mon035_md_tall );
	//monitors sparks
	effect_new( environments\solo\m10_crash\fx\scan\didact_spark_lg.effect, fx_arm_spark012 );
	effect_new( environments\solo\m10_crash\fx\scan\didact_spark_lg.effect, fx_arm_spark013 );
	effect_new( environments\solo\m10_crash\fx\scan\didact_spark_lg.effect, fx_arm_spark030 );
	effect_new( environments\solo\m10_crash\fx\scan\didact_spark_lg.effect, fx_arm_spark031 );
	effect_new( environments\solo\m10_crash\fx\scan\didact_spark_lg.effect, fx_arm_spark032 );
	
end 

script static void fx_arm_didact_monitors_set08()
	print ("--> didact monitors set 8 <--");
	effect_new( environments\solo\m10_crash\fx\scan\didact_screen_md_tall_rt.effect, fx_arm_grp8_mon021_md_tall );
	effect_new( environments\solo\m10_crash\fx\scan\didact_screen_sm_square_rt.effect, fx_arm_grp8_mon022_sm_square );
	effect_new( environments\solo\m10_crash\fx\scan\didact_screen_md_tall_lf.effect, fx_arm_grp8_mon036_md_tall );
	effect_new( environments\solo\m10_crash\fx\scan\didact_screen_sm_square_lf.effect, fx_arm_grp8_mon037_sm_square );
	
end 

script static void fx_arm_didact_monitors_set09()
	print ("--> didact monitors set 9 <--");
	effect_new( environments\solo\m10_crash\fx\scan\didact_screen_lg_wide.effect, fx_arm_grp9_mon020_lg_wide );
	effect_new( environments\solo\m10_crash\fx\scan\didact_screen_sm_wide.effect, fx_arm_grp9_mon044_sm_wide );
	effect_new( environments\solo\m10_crash\fx\scan\didact_screen_lg_wide.effect, fx_arm_grp9_mon033_lg_wide );
	effect_new( environments\solo\m10_crash\fx\scan\didact_screen_sm_wide.effect, fx_arm_grp9_mon038_sm_wide );
	//monitors sparks
	effect_new( environments\solo\m10_crash\fx\scan\didact_spark_lg.effect, fx_arm_spark014 );
	effect_new( environments\solo\m10_crash\fx\scan\didact_spark_lg.effect, fx_arm_spark015 );
	effect_new( environments\solo\m10_crash\fx\scan\didact_spark_lg.effect, fx_arm_spark016 );
	
end 

script static void fx_arm_didact_monitors_set10()
	print ("--> didact monitors set 10 <--");
	
	effect_new( environments\solo\m10_crash\fx\scan\didact_screen_sm_square_lf.effect, fx_arm_grp10_mon019_sm_square );
	effect_new( environments\solo\m10_crash\fx\scan\didact_screen_md_tall_lf.effect, fx_arm_grp10_mon018_md_tall );
	effect_new( environments\solo\m10_crash\fx\scan\didact_screen_lg_wide.effect, fx_arm_grp10_mon025_lg_wide );
	effect_new( environments\solo\m10_crash\fx\scan\didact_screen_sm_square.effect, fx_arm_grp10_mon027_sm_square );
	effect_new( environments\solo\m10_crash\fx\scan\didact_screen_md_tall_rt.effect, fx_arm_grp10_mon035_md_tall );
	effect_new( environments\solo\m10_crash\fx\scan\didact_screen_sm_square_rt.effect, fx_arm_grp10_mon034_sm_square );
	//monitors sparks
	effect_new( environments\solo\m10_crash\fx\scan\didact_spark_lg.effect, fx_arm_spark020 );
	effect_new( environments\solo\m10_crash\fx\scan\didact_spark_lg.effect, fx_arm_spark021 );
	
	sleep(30 * .1);
	effect_new( environments\solo\m10_crash\fx\scan\didact_screen_md_tall_lf.effect, fx_arm_grp10_mon031_md_tall);
	effect_new( environments\solo\m10_crash\fx\scan\didact_spark_lg.effect, fx_arm_spark024 );
	sleep(30 * .1);
	effect_new( environments\solo\m10_crash\fx\scan\didact_screen_sm_square_lf.effect, fx_arm_grp10_mon032_sm_square );
	sleep(30 * .1);
	effect_new( environments\solo\m10_crash\fx\scan\didact_screen_sm_square_rt.effect, fx_arm_grp10_mon028_sm_square );
	effect_new( environments\solo\m10_crash\fx\scan\didact_spark_lg.effect, fx_arm_spark025 );
	sleep(30 * .1);
	effect_new( environments\solo\m10_crash\fx\scan\didact_screen_md_tall_rt.effect, fx_arm_grp10_mon029_md_tall );
	effect_new( environments\solo\m10_crash\fx\scan\didact_screen_md_tall_rt.effect, fx_arm_grp10_mon023_md_tall );
	effect_new( environments\solo\m10_crash\fx\scan\didact_spark_lg.effect, fx_arm_spark022 );
	sleep(30 * .1);
	effect_new( environments\solo\m10_crash\fx\scan\didact_screen_lg_wide.effect, fx_arm_grp10_mon030_lg_wide );
	effect_new( environments\solo\m10_crash\fx\scan\didact_screen_md_tall_lf.effect, fx_arm_grp10_mon026_md_tall );
	effect_new( environments\solo\m10_crash\fx\scan\didact_spark_lg.effect, fx_arm_spark023 );
	sleep(30 * .1);
	effect_new( environments\solo\m10_crash\fx\scan\didact_screen_sm_wide.effect, fx_arm_grp10_mon040_sm_wide );
	effect_new( environments\solo\m10_crash\fx\scan\didact_screen_sm_square_rt.effect, fx_arm_grp10_mon024_sm_square );
	sleep(30 * .1);
	effect_new( environments\solo\m10_crash\fx\scan\didact_screen_lg_wide.effect, fx_arm_grp10_mon025_lg_wide );
	sleep(30 * .1);
	effect_new( environments\solo\m10_crash\fx\scan\didact_screen_sm_square_lf.effect, fx_arm_grp10_mon027_sm_square );
	sleep(30 * .1);
	effect_new( environments\solo\m10_crash\fx\scan\didact_screen_sm_wide.effect, fx_arm_grp10_mon045_sm_wide );
		

end 

script static void fx_arm_didact_monitors_set11()
	print ("--> didact monitors set 11 <--");
	effect_new( environments\solo\m10_crash\fx\scan\didact_screen_above_door.effect, fx_arm_grp11_mon046_md_wide );

	//monitors sparks
	effect_new( environments\solo\m10_crash\fx\scan\didact_spark_lg.effect, fx_arm_spark01 );
	effect_new( environments\solo\m10_crash\fx\scan\didact_spark_lg.effect, fx_arm_spark038 );
end 

// 04_Armory - Ghost in the Machine

script static void fx_ghost_mon()
	print ("::: M10 - Ghost in the Machine - FX :::");

	sleep(1);
	effect_new (environments\solo\m10_crash\fx\misc\arm_ghost_monitor_01.effect, fx_ghost_mon_01 );
	effect_new (environments\solo\m10_crash\fx\misc\arm_ghost_monitor_02.effect, fx_ghost_mon_02 );
	effect_new (environments\solo\m10_crash\fx\misc\arm_ghost_monitor_03.effect, fx_ghost_mon_03 );

	sleep(33);
	effect_new (environments\solo\m10_crash\fx\sparks\arm_ghost_sparks_04.effect, fx_ghost_mon_01_sparks_01 );
	effect_new (environments\solo\m10_crash\fx\sparks\arm_ghost_sparks_02.effect, fx_ghost_mon_01_sparks_02 );
	effect_new (environments\solo\m10_crash\fx\sparks\arm_ghost_sparks_01.effect, fx_ghost_mon_01_sparks_03 );
	effect_new (environments\solo\m10_crash\fx\sparks\arm_ghost_sparks_04.effect, fx_ghost_mon_01_sparks_04 );

	sleep(34);
	effect_new (environments\solo\m10_crash\fx\sparks\arm_ghost_sparks_01.effect, fx_ghost_mon_02_sparks_01 );
	effect_new (environments\solo\m10_crash\fx\sparks\arm_ghost_sparks_02.effect, fx_ghost_mon_02_sparks_02 );
	effect_new (environments\solo\m10_crash\fx\sparks\arm_ghost_sparks_03.effect, fx_ghost_mon_02_sparks_03 );
	effect_new (environments\solo\m10_crash\fx\sparks\arm_ghost_sparks_04.effect, fx_ghost_mon_02_sparks_04 );

	sleep(35);
	effect_new (environments\solo\m10_crash\fx\sparks\arm_ghost_sparks_01.effect, fx_ghost_mon_03_sparks_01 );
	effect_new (environments\solo\m10_crash\fx\sparks\arm_ghost_sparks_02.effect, fx_ghost_mon_03_sparks_02 );
	effect_new (environments\solo\m10_crash\fx\sparks\arm_ghost_sparks_03.effect, fx_ghost_mon_03_sparks_03 );
	effect_new (environments\solo\m10_crash\fx\sparks\arm_ghost_sparks_04.effect, fx_ghost_mon_03_sparks_04 );

	sleep(8);
	effect_new (environments\solo\m10_crash\fx\sparks\arm_ghost_sparks_02.effect, fx_ghost_mon_03_sparks_04 );

end


/*
script static void fx_test_vehiclebay_destruction_loop()
	//dprint( "::: f_test_vehiclebay_destruction_loop :::" );
	B_vehiclebay_destruction_loop = TRUE;
	B_vehiclebay_destruction_vacuum = FALSE;
	B_vehiclebay_destruction_destroy = FALSE;
	B_debris_FUD_destruction_action = FALSE;
	B_debris_podchase_tube = FALSE;
	R_rumble_intensity_mod = 0.0;
	R_shake_intensity_mod = 0.0;
end
*/




// -------------------------------------------------------------------------------------------------
// FX: ZONE SET: SETUP
// -------------------------------------------------------------------------------------------------
// === fx_zoneset_cin_opening::: Startup and cleanup area FX
script static void fx_zoneset_cin_opening( short s_zoneset_loading_index, short s_zoneset_unloading_index )
	if ( s_zoneset_loading_index ==  S_zoneset_cin_opening ) then
		dprint( "fx_zoneset_cin_opening: STARTUP" );
  // XXX
		fx_camera_set( environments\solo\m10_crash\fx\particulates\particulates_waitless.effect );
	elseif ( s_zoneset_unloading_index == S_zoneset_cin_opening ) then
		dprint( "fx_zoneset_cin_opening: CLEANUP" );
  // XXX
	end
end


// === fx_zoneset_00_cryo_02_hallway_04_armory::: Startup and cleanup area FX
script static void fx_zoneset_00_cryo_02_hallway_04_armory( short s_zoneset_loading_index, short s_zoneset_unloading_index )
	if ( s_zoneset_loading_index ==  S_zoneset_00_cryo_02_hallway_04_armory ) then
		//dprint( "fx_zoneset_00_cryo_02_hallway_04_armory: STARTUP" );
		// XXX
		fx_camera_set( environments\solo\m10_crash\fx\particulates\particulates_moving.effect );
	elseif ( s_zoneset_unloading_index == S_zoneset_00_cryo_02_hallway_04_armory ) then
		dprint( "fx_zoneset_00_cryo_02_hallway_04_armory: CLEANUP" );
		// XXX
	end
end

// === fx_zoneset_06_hallway_08_elevator_10_elevator_12_observatory::: Startup and cleanup area FX
script static void fx_zoneset_06_hallway_08_elevator_10_elevator_12_observatory( short s_zoneset_loading_index, short s_zoneset_unloading_index )
	if ( s_zoneset_loading_index ==  S_zoneset_06_hallway_08_elevator_10_elevator_12_observatory ) then
		//dprint( "fx_zoneset_06_hallway_08_elevator_10_elevator_12_observatory: STARTUP" );
		// XXX
		//fx_camera_set( environments\solo\m10_crash\fx\particulates\particulates_moving.effect );
		fx_camera_set( NONE );
	elseif ( s_zoneset_unloading_index == S_zoneset_06_hallway_08_elevator_10_elevator_12_observatory ) then
		dprint( "fx_zoneset_06_hallway_08_elevator_10_elevator_12_observatory: CLEANUP" );
		// XXX
	end
end

// === fx_zoneset_08_elevator_14_elevator_16_lookout::: Startup and cleanup area FX
script static void fx_zoneset_08_elevator_14_elevator_16_lookout( short s_zoneset_loading_index, short s_zoneset_unloading_index )
	if ( s_zoneset_loading_index ==  S_zoneset_08_elevator_14_elevator_16_lookout ) then
		//dprint( "fx_zoneset_08_elevator_14_elevator_16_lookout: STARTUP" );
		// XXX
		//fx_camera_set( environments\solo\m10_crash\fx\particulates\particulates_moving.effect );
		fx_camera_set( NONE );
	elseif ( s_zoneset_unloading_index == S_zoneset_08_elevator_14_elevator_16_lookout ) then
		dprint( "fx_zoneset_08_elevator_14_elevator_16_lookout: CLEANUP" );
		// XXX
	end
end

// === fx_zoneset_16_lookout_18_elevator_30_beacons::: Startup and cleanup area FX
//script static void fx_zoneset_16_lookout_18_elevator_30_beacons( short s_zoneset_loading_index, short s_zoneset_unloading_index )
//	if ( s_zoneset_loading_index ==  S_zoneset_16_lookout_18_elevator_30_beacons ) then
//		//dprint( "fx_zoneset_16_lookout_18_elevator_30_beacons: STARTUP" );
//		// XXX
//		//fx_camera_set( environments\solo\m10_crash\fx\particulates\particulates_moving.effect );
//		fx_camera_set( NONE );
//	elseif ( s_zoneset_unloading_index == S_zoneset_16_lookout_18_elevator_30_beacons ) then
//		dprint( "fx_zoneset_16_lookout_18_elevator_30_beacons: CLEANUP" );
//		// XXX
//	end
//end

// === fx_zoneset_16_lookout_18_elevator_20_cafe::: Startup and cleanup area FX
script static void fx_zoneset_16_lookout_18_elevator_20_cafe( short s_zoneset_loading_index, short s_zoneset_unloading_index )
	if ( s_zoneset_loading_index ==  S_zoneset_16_lookout_18_elevator_20_cafe ) then
		//dprint( "fx_zoneset_16_lookout_18_elevator_20_cafe: STARTUP" );
		// XXX
		//fx_camera_set( environments\solo\m10_crash\fx\particulates\particulates_moving.effect );
		fx_camera_set( NONE );
	elseif ( s_zoneset_unloading_index == S_zoneset_16_lookout_18_elevator_20_cafe ) then
		dprint( "fx_zoneset_16_lookout_18_elevator_20_cafe: CLEANUP" );
		// XXX
	end
end

// === fx_zoneset_24_corner_26_box_28_airlock::: Startup and cleanup area FX
script static void fx_zoneset_24_corner_26_box_28_airlock( short s_zoneset_loading_index, short s_zoneset_unloading_index )
	if ( s_zoneset_loading_index ==  S_zoneset_24_corner_26_box_28_airlock ) then
		//dprint( "fx_zoneset_24_corner_26_box_28_airlock: STARTUP" );
		// XXX
		//fx_camera_set( environments\solo\m10_crash\fx\particulates\particulates_moving.effect );
		fx_camera_set( NONE );
	elseif ( s_zoneset_unloading_index == S_zoneset_24_corner_26_box_28_airlock ) then
		dprint( "fx_zoneset_24_corner_26_box_28_airlock: CLEANUP" );
		// XXX
	end
end

// === fx_zoneset_28_airlock_30_beacons::: Startup and cleanup area FX
script static void fx_zoneset_28_airlock_30_beacons( short s_zoneset_loading_index, short s_zoneset_unloading_index )
	if ( s_zoneset_loading_index ==  S_zoneset_28_airlock_30_beacons ) then
		//dprint( "fx_zoneset_28_airlock_30_beacons: STARTUP" );
		// XXX
		fx_camera_set( NONE );
	elseif ( s_zoneset_unloading_index == S_zoneset_28_airlock_30_beacons ) then
		dprint( "fx_zoneset_28_airlock_30_beacons: CLEANUP" );
		// XXX
	end
end

// === fx_zoneset_28_airlock_32_broken::: Startup and cleanup area FX
//script static void fx_zoneset_28_airlock_32_broken( short s_zoneset_loading_index, short s_zoneset_unloading_index )
//	if ( s_zoneset_loading_index ==  S_zoneset_28_airlock_32_broken ) then
//		//dprint( "fx_zoneset_28_airlock_32_broken: STARTUP" );
//		// XXX
//		fx_camera_set( NONE );
//	elseif ( s_zoneset_unloading_index == S_zoneset_28_airlock_32_broken ) then
//		dprint( "fx_zoneset_28_airlock_32_broken: CLEANUP" );
//		// XXX
//	end
//end

// === fx_zoneset_32_broken_34_maintenance::: Startup and cleanup area FX
script static void fx_zoneset_32_broken_34_maintenance( short s_zoneset_loading_index, short s_zoneset_unloading_index )
	if ( s_zoneset_loading_index ==  S_zoneset_32_broken_34_maintenance ) then
		//dprint( "fx_zoneset_32_broken_34_maintenance: STARTUP" );
		fx_maint_fire_spawn();
	  // XXX
  	// XXX
		//fx_camera_set( environments\solo\m10_crash\fx\particulates\particulates_moving.effect );
		fx_camera_set( NONE );
	elseif ( s_zoneset_unloading_index == S_zoneset_32_broken_34_maintenance ) then
		//dprint( "fx_zoneset_32_broken_34_maintenance: CLEANUP" );
		fx_maint_fire_delete();
  	// XXX
	end
end

// === fx_zoneset_36_hallway_38_vehicle_40_debris::: Startup and cleanup area FX
script static void fx_zoneset_36_hallway_38_vehicle_40_debris( short s_zoneset_loading_index, short s_zoneset_unloading_index )
	if ( s_zoneset_loading_index ==  S_zoneset_36_hallway_38_vehicle_40_debris ) then
		//dprint( "fx_zoneset_36_hallway_38_vehicle_40_debris: STARTUP" );
  // XXX
		//fx_camera_set( environments\solo\m10_crash\fx\particulates\particulates_moving.effect );
		fx_camera_set( NONE );
	elseif ( s_zoneset_unloading_index == S_zoneset_36_hallway_38_vehicle_40_debris ) then
		dprint( "fx_zoneset_36_hallway_38_vehicle_40_debris: CLEANUP" );
  // XXX
	end
end

// === fx_zoneset_40_debris_42_skybox::: Startup and cleanup area FX
script static void fx_zoneset_40_debris_42_skybox( short s_zoneset_loading_index, short s_zoneset_unloading_index )
	if ( s_zoneset_loading_index ==  S_zoneset_40_debris_42_skybox ) then
		//dprint( "fx_zoneset_40_debris_42_skybox: STARTUP" );
  // XXX
		// XXX USING M90 EFFECT
		fx_camera_set( environments\solo\m90_sacrifice\fx\particulates\particulate_space.effect );
	elseif ( s_zoneset_unloading_index == S_zoneset_40_debris_42_skybox ) then
		dprint( "fx_zoneset_40_debris_42_skybox: CLEANUP" );
  // XXX
	end
end


script static void f_debris_whiteout_player( player p_player, boolean b_active )

	if ( b_active ) then
		effect_attached_to_camera_new( environments\solo\m10_crash\fx\explosions\vby_explo_player_overexpose.effect );
		//effect_new_on_object_marker( 'environments\solo\m10_crash\fx\explosions\vby_explo_player_overexpose.effect', p_player, "pedestal" );
	else
		effect_attached_to_camera_new( environments\solo\m10_crash\fx\explosions\vby_explo_player_overexpose_reverse.effect );
		effect_attached_to_camera_stop( environments\solo\m10_crash\fx\explosions\vby_explo_player_overexpose.effect );
		//effect_new_on_object_marker( 'environments\solo\m10_crash\fx\explosions\vby_explo_player_overexpose_reverse.effect', p_player, "pedestal" );
		//effect_stop_object_marker( 'environments\solo\m10_crash\fx\explosions\vby_explo_player_overexpose.effect', p_player, "pedestal" );
	end
	
end



// -------------------------------------------------------------------------------------------------
// FX: CAMERA
// -------------------------------------------------------------------------------------------------
// VARIABLES
global boolean B_fx_camera_paused = FALSE;
global effect FX_camera_last = NONE;
global effect FX_camera_paused = NONE;

// FUNCTIONS
// === fx_camera_set::: Sets the camera FX and cleans up any fx that may be running; while paused will only store new camera FX requests and then re-add them when unpaused
script static void fx_camera_set( effect fx_camera_new )

	if ( not B_fx_camera_paused ) then
		// make sure this is a new FX
		if ( fx_camera_new != fx_camera_last ) then
		
			// start the new effect
			if ( fx_camera_new != NONE ) then
				effect_attached_to_camera_new( fx_camera_new );
			end
		
			// remove the old effect
			if ( fx_camera_last != NONE ) then
				effect_attached_to_camera_stop( fx_camera_last );
			end
			
			// store the camera FX for the next time it changes
			fx_camera_last = fx_camera_new;
		end
	else
		// store the fx for later
		FX_camera_paused = fx_camera_new;
	end

end

// === fx_camera_pause::: Pauses or unpauses camera FX; if TRUE will stores and clear current FX from the camera, FALSE will restore FX
script static void fx_camera_pause( boolean b_pause )

	if ( B_fx_camera_paused != b_pause ) then
	
		if ( b_pause ) then
		
			// store the last fx in the paused
			FX_camera_paused = FX_camera_last;
			// set fx to none
			fx_camera_set( NONE );
			
		else
		
			// restore the paused camera FX
			fx_camera_set( FX_camera_paused );
			// clear the paused fx stored
			FX_camera_paused = NONE;
			
		end
	
		B_fx_camera_paused = b_pause;
	end

end

// =======================================
// Elevator Attached Lens Flares
// =======================================

script static void fx_elevator_flares()
                dprint("play_fx_elevator_attached_flares()");

                effect_new_on_object_marker( environments\solo\m10_crash\fx\lens_flare\elevator_light_cone_01.effect, elevator_1_platform, 

lightcone01);
                effect_new_on_object_marker( environments\solo\m10_crash\fx\lens_flare\elevator_light_cone_01.effect, elevator_1_platform, 

lightcone02);
                effect_new_on_object_marker( environments\solo\m10_crash\fx\lens_flare\elevator_light_cone_01.effect, elevator_1_platform, 

lightcone03);
                effect_new_on_object_marker( environments\solo\m10_crash\fx\lens_flare\elevator_light_cone_01.effect, elevator_1_platform, 

lightcone04);
                effect_new_on_object_marker( environments\solo\m10_crash\fx\lens_flare\elevator_light_cone_01.effect, elevator_1_platform, 

lightcone05);
                effect_new_on_object_marker( environments\solo\m10_crash\fx\lens_flare\elevator_light_cone_01.effect, elevator_1_platform, 

lightcone06);
end


// --- End m10_crash_fx.hsc ---

// --- Begin m10_crash_fx_je.hsc ---
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343
//
// Mission: 					m10_crash_fx_je
//	Insertion Points:	start (or icr)	- Beginning
//										ila							- Lab / Armory
//										iob							- Observation Deck
//										ifl							- Flank / Prep Room
//										ibe							- Beacon
//										ibr							- Broken Floor
//										ivb							- Vehicle Bay
//										iju							- Jump Debris
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

script startup m10_crash_fx_je()

	if b_debug then 
		print ("::: M10 - FX - JE :::");
	end
	
	thread(test_fx_je());
end

script static void test_fx_je()
	print ("::: test FX je:::");

//	effect_new( environments\solo\m10_crash\fx\beac_exit.effect, fx_beacon_door_01 );
//	effect_new( environments\solo\m10_crash\fx\beac_exit.effect, fx_beacon_door_02 );

end

// --- End m10_crash_fx_je.hsc ---

// --- Begin m10_crash_fx_jvz.hsc ---
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343
//
// Mission: 					m10_crash_fx_jvz
//	Insertion Points:	start (or icr)	- Beginning
//										ila							- Lab / Armory
//										iob							- Observation Deck
//										ifl							- Flank / Prep Room
//										ibe							- Beacon
//										ibr							- Broken Floor
//										ivb							- Vehicle Bay
//										iju							- Jump Debris
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


//__________________________________________________________________________________
//
//  Script Notes
//__________________________________________________________________________________
//
///////  variables: /////////////////
//  static real x = 1.0;         .......static = local  &  real = float
//
///////  looping: //////////////////
//  repeat
//  .....stuff_to_repeat_here......
//  until(0 == 1);
//
///////  Pausing ///////////////////
//  sleep (....time_in_frames...);
//___________________________________________________________________________________

script startup m10_crash_fx_jvz()

	if b_debug then 
		print ("::: M10 - FX - JVZZ :::");
	end
	sleep (150);
	thread(test_fx_jvzz());
end


script static void test_fx_jvzz()
	print ("::: test FX jvzz:::");

	

	//effect_new( environments\solo\m10_crash\fx\beacon_stuck\bea_l_stuck.effect, fx_sparks_lockup_2 );
	//effect_new( environments\solo\m10_crash\fx\beacon_stuck\bea_l_stuck.effect, fx_sparks_lockup_1 );

	//effect_new( environments\solo\m10_crash\fx\dust_settle\grav_dust_02.effect, fx_ell_dustup_1 );
	
	//effect_new( environments\solo\m10_crash\fx\dust_settle\grav_dust.effect, fx_ell_dustup_2 );
	//effect_new( environments\solo\m10_crash\fx\dust_settle\grav_dust.effect, fx_ell_dustup_3 );
	//effect_new( environments\solo\m10_crash\fx\dust_settle\grav_dust.effect, fx_ell_dustup_4 );
	//effect_new( environments\solo\m10_crash\fx\dust_settle\grav_dust.effect, fx_ell_dustup_5 );
	//effect_new( environments\solo\m10_crash\fx\dust_settle\grav_dust.effect, fx_ell_dustup_6 );
	//effect_new( environments\solo\m10_crash\fx\dust_settle\grav_dust.effect, fx_ell_dustup_7 );
	//effect_new( environments\solo\m10_crash\fx\dust_settle\grav_dust.effect, fx_ell_dustup_8 );
	//effect_new( environments\solo\m10_crash\fx\dust_settle\grav_dust.effect, fx_ell_dustup_9 );
	
	//effect_new( environments\solo\m10_crash\fx\podbreak\pod_glass_break_0g.effect, fx_pod_debris01 );
	//effect_new( environments\solo\m10_crash\fx\podbreak\pod_glass_escape_0g.effect, fx_air_escape01 );

	//effect_new( environments\solo\m10_crash\fx\podbreak\pod_glass_break_0g_02.effect, fx_pod_debris02 );
    //effect_new( environments\solo\m10_crash\fx\podbreak\pod_glass_escape_0g_02.effect, fx_air_escape02 );
	
	//effect_new( environments\solo\m10_crash\fx\dust_door_open.effect, fx_pb_airlock );
end

// --- End m10_crash_fx_jvz.hsc ---

// --- Begin m10_crash_gameplay.hsc ---
global short s_current_objective_display = 0;

global short s_obj_con = 0;



// =================================================================================================
// =================================================================================================
// OBJECTIVE TRACKING
// =================================================================================================
// =================================================================================================
//
//script static void f_objective_tracker()
//	sleep_until (b_mission_started == TRUE);
//	//dprint  ("><>< objectives start ><><");
//	
//	// start / cryo
//	if (s_current_objective_display == 0) then
//		objectives_show_up_to (0);
//		sleep_until(LevelEventStatus("cryo objective complete"), 1);
//		//dprint ("Objective 1 - Get Cortana ");
//		f_objective_display();
//		cinematic_set_title (obj_get_cortana);
//		s_current_objective_display = s_current_objective_display + 1;
//	end
//	
//	// lab insertion
//	if (s_current_objective_display == 1) then
//		objectives_finish_up_to (0);
//		objectives_show_up_to (1);	
//		sleep_until(LevelEventStatus("librarian moment"), 1);
//		//dprint ("Objective 2 - Turn On Power ");
//		f_objective_display();
//		cinematic_set_title (obj_activate_power);
//		s_current_objective_display = s_current_objective_display + 1;
//	end
//	
//	// observatory
//	if (s_current_objective_display == 2) then
//		objectives_finish_up_to (1);
//		objectives_show_up_to (2);
//		sleep_until(LevelEventStatus("activate power objective complete"), 1);
//		//dprint ("Objective 3 - Launch Beacon ");
//		f_objective_display();
//		cinematic_set_title (obj_launch_beacon);
//		s_current_objective_display = s_current_objective_display + 1;
//	end
//	
//	// flank and beacon
//	if (s_current_objective_display == 3) then
//		objectives_finish_up_to (2);
//		objectives_show_up_to (3);	
//		sleep_until(LevelEventStatus("launch beacon objective complete"), 1);
//		//dprint ("Objective 4 - Escape Ship ");
//		f_objective_display();
//		cinematic_set_title (obj_toescapepodbay);
//		s_current_objective_display = s_current_objective_display + 1;
//	end
//	
//	// escape
//	if (s_current_objective_display == 4) then
//		objectives_finish_up_to (3);
//		objectives_show_up_to (4);	
//		sleep_until(LevelEventStatus("escape ship objective complete"), 1);
//		objectives_finish_up_to (4);
//		s_current_objective_display = s_current_objective_display + 1;
//	end
//	
//end
//
//script static void f_objective_display()
//	sound_impulse_start ('sound\game_sfx\ui\transition_beeps', NONE, 1);
//	cinematic_set_title (obj_dashes);
//	sleep (30 * 1);
//	sound_impulse_start ('sound\game_sfx\ui\transition_beeps', NONE, 1);
//	cinematic_set_title (obj_dashes2);
//	sleep (30 * 1);
//	sound_impulse_start ('sound\game_sfx\ui\transition_beeps', NONE, 1);
//	cinematic_set_title (obj_new);
//	sleep (30 * 4);
//	sound_impulse_start ('sound\game_sfx\ui\transition_beeps', NONE, 1);
//end



/////////////////////
// ELITE SECTION
/////////////////////
/*
script static void f_elite_intro()	
	ai_place(sq_intro_elite);
	unit_doesnt_drop_items (ai_get_object (sq_intro_elite));
	ai_set_active_camo (sq_intro_elite, 1);
	sleep (30 * 1);
	ai_set_active_camo (sq_intro_elite, 0);
	
	// wait a bit for him to start uncloaking
	sleep (30 * 0.5);
		
	//Elite!
	sound_impulse_start ('sound\environments\solo\m010\vo\m_m10_cortana_01300', NONE, 1);
	sleep (30 * 0.5);
	//This- this cannot be!
	custom_animation_relative (sq_intro_elite, 'objects\characters\storm_elite_ai\storm_elite_ai.model_animation_graph', 'combat:rifle:shakefist', 1, temp_camera_hack2);
	sound_impulse_start ('sound\environments\solo\m010\vo\m_m10_angry_elite_01400', NONE, 1);
	sleep (30 * 3);
	//The cryotube�s still powering up!
	sound_impulse_start ('sound\environments\solo\m010\vo\m_m10_cortana_01500', NONE, 1);
	sleep (30 * 3);	
	
	// hit the tube elite
	cs_run_command_script (sq_intro_elite, cs_loop_elite_hit);	
	
	NotifyLevel("cryo elite spawned");	
end


script command_script cs_loop_elite_hit()
	//No Time.
	sound_impulse_start ('sound\environments\solo\m010\vo\m_m10_mc_01600', NONE, 1);
	
	sleep (30 * 2);
	custom_animation_relative (sq_intro_elite, 'objects\characters\storm_elite_ai\storm_elite_ai.model_animation_graph', 'combat:rifle:melee', 1, temp_camera_hack2);
	sleep (30 * 2);
	custom_animation_relative (sq_intro_elite, 'objects\characters\storm_elite_ai\storm_elite_ai.model_animation_graph', 'combat:rifle:melee', 1, temp_camera_hack2);
	sleep (30 * 2);
	custom_animation_relative (sq_intro_elite, 'objects\characters\storm_elite_ai\storm_elite_ai.model_animation_graph', 'combat:rifle:melee', 1, temp_camera_hack2);
	sleep (30 * 2);
	custom_animation_relative (sq_intro_elite, 'objects\characters\storm_elite_ai\storm_elite_ai.model_animation_graph', 'combat:rifle:melee', 1, temp_camera_hack2);
	sleep (30 * 2);
	custom_animation_relative (sq_intro_elite, 'objects\characters\storm_elite_ai\storm_elite_ai.model_animation_graph', 'combat:rifle:melee', 1, temp_camera_hack2);
	sleep (30 * 2);
	custom_animation_relative (sq_intro_elite, 'objects\characters\storm_elite_ai\storm_elite_ai.model_animation_graph', 'combat:rifle:melee', 1, temp_camera_hack2);
	unit_kill (player0);	
end

*/

	// launch the second beacon
	// device_group_set_immediate (beacon_power, 1);
	// f_blip_object (beacon_cortana_button, "activate");
	// sleep_until (device_get_position(beacon_cortana_button) != 0);
	// thread (f_beacon2_beacon_launch());
	// device_group_set_immediate (beacon_power, 0);
	// f_unblip_object (beacon_cortana_button);
	// sound_impulse_start ('sound\environments\solo\m020\machines_devices\s_dm_flush_core', NONE, 1);
	
	// device_set_position_immediate (beacon_cortana_button, 0);
	
	// sleep_until (LevelEventStatus("beacon2 away"), 1);
	// NotifyLevel("launch beacon objective complete");
		
	// get cortana
	// sleep_until (s_beacon_doors_removed > 1, 1);
	//sleep_until (LevelEventStatus("launch beacon objective complete"), 1);
//	device_group_set_immediate (beacon_power, 1);
	//f_blip_object (beacon_cortana_button, "activate");
	//sleep_until (device_get_position(beacon_cortana_button) != 0);
	//device_group_set_immediate (beacon_power, 0);
	//f_unblip_object (beacon_cortana_button);
	//sound_impulse_start ('sound\environments\solo\m020\machines_devices\s_dm_flush_core', NONE, 1);
	
	//device_set_position_immediate (beacon_cortana_button, 0);
	
// Beacon 2 Doors

//script static void f_beacon2_door1_open()
	//object_rotate_by_offset (bay2_door_1, 0, 20, 0, 0, -100, 0);
//	object_move_by_offset (bay2_door_1, 25, 6, 0, 0, 0);
//	object_destroy (bay2_door_1);
//end

//script static void f_beacon2_door2_open()
	//object_rotate_by_offset (bay2_door_2, 0, 0, 5, 0, 0, 10);
//	object_move_by_offset (bay2_door_2, 5, 0, -0.5, 0, 0);
//end

//script static void f_beacon2_door3_open()
	//object_rotate_by_offset (bay2_door_3, 0, 10, 0, 0, 15, 0);
//	object_move_by_offset (bay2_door_3, 5, 0, 0, 0, 0);
//end

//script static void f_beacon2_door4_open()
	//object_rotate_by_offset (bay2_door_4, 0, 0, 20, 0, 0, -104);
//	object_move_by_offset (bay2_door_4, 25, 0, 6, 0, 0);
//	object_destroy (bay2_door_4);
//end

// Cruiser and Droppods

//script static void f_wave_2_cruiser()

//object_create (beac_cruiser);
//object_set_scale (beac_cruiser, 0.01, 0);
//object_set_scale (beac_cruiser, 1.0, 120);
//sleep (30 * 2);
//thread(f_w2_launch_pods());
//thread(f_w2_cruiser_move());
//thread (cam_shake_players( 0.35, 0.15, 1, 1.5, FALSE ));
//sleep (30*5);
//object_set_scale (beac_cruiser, 0.05, 120);
//effect_new( fx\reach\test\chad\explosions\gritty_explosion_large.effect, beac_cruiser_boom );
//sleep (30 * 8);
//object_destroy (beac_cruiser);
//end

//script static void f_w2_launch_pods()
//sleep (30 * 3);
//thread(f_w2_beac_pod_1());
//sleep(30 * 0.5);
//thread(f_w2_beac_pod_2());
//sleep(30 * 0.5);
//thread(f_w2_beac_pod_3());
//sleep(30 * 2);
//ai_place(sq_w2_elite_1);
//ai_place(sq_w2_grunt_1);
//ai_place(sq_w2_jackal_1);
//ai_place(sq_w2_grunt_2);
//end

// script static void f_w2_beac_pod_1()
 //object_create(beac_pod_1);
 //effect_new( fx\reach\test\chad\explosions\gritty_explosion_large.effect, beac_pod_1_spawn );
 //thread(f_w2_beac_pod_1_move());
 //thread(f_w2_beac_pod_1_land_fx());
 //object_set_scale (beac_pod_1, 0.01, 0);
 //object_set_scale (beac_pod_1, 1.0, 30);
 //end

 //script static void f_w2_beac_pod_2()
 //object_create(beac_pod_2);
 //effect_new( fx\reach\test\chad\explosions\gritty_explosion_large.effect, beac_pod_2_spawn );
 //thread(f_w2_beac_pod_2_move());
 //thread(f_w2_beac_pod_2_land_fx());
 //object_set_scale (beac_pod_2, 0.01, 0);
 //object_set_scale (beac_pod_2, 1.0, 30);
 //end
 
  //script static void f_w2_beac_pod_3()
 //object_create(beac_pod_3);
 //effect_new( fx\reach\test\chad\explosions\gritty_explosion_large.effect, beac_pod_3_spawn );
 //thread(f_w2_beac_pod_3_move());
 //thread(f_w2_beac_pod_3_land_fx());
 //object_set_scale (beac_pod_3, 0.01, 0);
 //object_set_scale (beac_pod_3, 1.0, 30);
 //end

// Cruiser Move 
//script static void f_w2_cruiser_move()
//object_move_to_point (beac_cruiser, 8, ps_beac_cruiser.p0);
//end
//script static void f_w2_beac_pod_1_move()
//object_move_to_point (beac_pod_1, 2, ps_beac_pod_1.p0);
//end
//script static void f_w2_beac_pod_2_move()
//object_move_to_point (beac_pod_2, 2, ps_beac_pod_2.p0);
//end
//script static void f_w2_beac_pod_3_move()
//object_move_to_point (beac_pod_3, 2, ps_beac_pod_3.p0);
//end
// Cruiser Pod FX
//script static void f_w2_beac_pod_1_land_fx()
//sleep_until(objects_distance_to_flag (beac_pod_1, flag_pod1_end) < 2, 1);
//effect_new( fx\reach\test\chad\explosions\gritty_explosion_large.effect, flag_pod1_end );
//camera_shake_all_coop_players (0.65, 0.45, 1, 0.75);
//end
//script static void f_w2_beac_pod_2_land_fx()
//sleep_until(objects_distance_to_flag (beac_pod_2, flag_pod2_end) < 2, 1);
//effect_new( fx\reach\test\chad\explosions\gritty_explosion_large.effect, flag_pod2_end );
//camera_shake_all_coop_players (0.65, 0.45, 1, 0.75);
//end
//script static void f_w2_beac_pod_3_land_fx()
//sleep_until(objects_distance_to_flag (beac_pod_3, flag_pod3_end) < 2, 1);
//effect_new( fx\reach\test\chad\explosions\gritty_explosion_large.effect, flag_pod3_end );
//camera_shake_all_coop_players (0.65, 0.45, 1, 0.75);
//end

//script static void f_magic_sniper_sight()
//	sleep_until (ai_living_count (sq_w1_back_jackals_1) > 0);
//	ai_magically_see_object (sq_w1_back_jackals_1, player0);
//	sleep_until (ai_living_count (sq_w1_back_jackals_2) > 0);
//  ai_magically_see_object (sq_w1_back_jackals_2, player0);
//end

//script command_script cs_phantom_drop4()
	//(f_load_phantom ai_current_squad "double" sq_phantom1_attackers1);
//	//dprint ("stuff");
//end

//script static void f_beacon_reset()
//Destroy Beac 1 Doors
//object_destroy (bay1_door_1);
//object_destroy (bay1_door_2);
//object_destroy (bay1_door_3);
//object_destroy (bay1_door_4);
//sleep (30*1);
//Destroy Beac 2 Doors
//object_destroy (bay2_door_1);
//object_destroy (bay2_door_2);
//object_destroy (bay2_door_3);
//object_destroy (bay2_door_4);
//sleep (30*1);
//Destroy Beacons
//object_destroy (beacon1);
//object_destroy (beacon2);
//sleep (30*1);
//Create Beac 1 Doors
//object_create (bay1_door_1);
//object_create (bay1_door_2);
//object_create (bay1_door_3);
//object_create (bay1_door_4);
//sleep (30*1);
//Create Beac 2 Doors
//object_create (bay2_door_1);
//object_create (bay2_door_2);
//object_create (bay2_door_3);
//object_create (bay2_door_4);
//sleep (30*1);
//Create Beacons
//object_create (beacon1);
//object_create (beacon2);
//end

/*
script static void f_observatory_front_window_open()
	//object_move_to_point (cr_obs_front_windows, 10, ps_front_window_end.p0);
	object_move_by_offset (cr_obs_front_windows, 7, 0, 0, 7);
	object_destroy (cr_obs_front_windows);
end

script static void f_observatory_bottom_window_open()
	object_move_to_point (cr_obs_bottom_windows, 7, ps_bottom_window_end.p0);
end

script static void f_observatory_side_window_open()
	//object_move_to_point (cr_obs_side_windows, 12, ps_side_window_end.p0);
	object_move_by_offset (cr_obs_side_windows, 12, 0, 0, -7);
	object_destroy (cr_obs_side_windows);
end



script static void f_window_1_close()
	object_create (cr_obs_side_windows);
	object_move_to_flag (cr_obs_front_windows, 1.00, obs_window_close_test_1);
end

script static void f_window_2_close()
object_create (cr_obs_front_windows);
object_move_to_flag (cr_obs_bottom_windows, 1.00, obs_window_close_test_2);
end

script static void f_window_3_close()
object_move_to_flag (cr_obs_side_windows, 1.00, obs_window_close_test_3);
end

//windows open

script static void f_windows_open()
	thread (f_observatory_front_window_open());
	thread (f_observatory_bottom_window_open());
	thread (f_observatory_side_window_open());
end
*/


// Accept Button 
//script static void f_display_message_accept (player player_num, string_id	display_title)
//	chud_show_screen_training (player_num, display_title);
//	unit_action_test_reset (player_num);
//	sleep_until (unit_action_test_accept (player_num), 1);
//	chud_show_screen_training (player_num, "");
//end

//Ask for Input
//	f_display_invert_test (player_num, tr_look);

//Check Input
//	if player_action_test_lookstick_forward(player0) then
	//	//dprint ("Non-Invert");
	//	f_ask_to_confirm (player0);
		
//	elseif player_action_test_lookstick_backward(player0)	then
//		//dprint ("Invert");
//		f_training_look_rejected (player0);			
//	else
//		f_display_message_time (player_num, tr_start_menu_short, 100);
//	end
		
//	//dprint ("training look done");
//	NotifyLevel ("look training done");

// Test Initial Input
//script static void f_display_invert_test (player player_num, string_id display_title)
//	chud_show_screen_training (player_num, display_title);
	
//	unit_action_test_reset (player_num);
	
//	sleep_until (player_action_test_lookstick_backward(player0) or  player_action_test_lookstick_forward(player0), 1);
//	//dprint ("player has given input");
	
//	chud_show_screen_training (player_num, "");

//end
// --- End m10_crash_gameplay.hsc ---

// --- Begin m10_crash_insertion.hsc ---
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343
//
// Mission: 					m10_crash_insertion
//	Insertion Points:	start (or icr)	- Beginning
//										ila							- Lab / Armory
//										iob							- Observation Deck
//										ifl							- Flank / Prep Room
//										ibe							- Beacon
//										ibr							- Broken Floor
//										iea							- Explosion Alley
//										ivb							- Vehicle Bay
//										iju							- Jump Debris
//										
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343

// NOTE: 	Several of the functions used in m10_crash_insertion use global_insertion.hsc.
//				You can find documentation in that file on how to setup your insertion script
//				so you can use the library of script functions to streamline your insertion script.

// =================================================================================================
// =================================================================================================
// *** GLOBALS ***
// =================================================================================================
// =================================================================================================

// Debug Options
global boolean b_debug 							= FALSE;
global boolean b_game_emulate				= FALSE;
global boolean b_insertion_reset		= TRUE;

//global boolean b_breakpoints				= FALSE;
//global boolean b_md_print						= TRUE;
//global boolean b_debug_objectives		= FALSE;
//global boolean b_cinematics 				= TRUE;
//global boolean b_editor_cinematics 	= FALSE;
//global boolean b_encounters					= TRUE;
//global boolean b_dialogue 					= TRUE;
//global boolean b_skip_intro					= FALSE;

//global boolean b_speedrun 					= FALSE;

global short DEF_INSERTION_INDEX_CINEMATIC																		= 0;
global short DEF_INSERTION_INDEX_CRYO 																				= 2;
global short DEF_INSERTION_INDEX_LAB 																					= 3;
global short DEF_INSERTION_INDEX_ELEVATOR_ICS 																= 4;
global short DEF_INSERTION_INDEX_OBSERVATORY 																	= 5;
global short DEF_INSERTION_INDEX_FLANK 																				= 1;
global short DEF_INSERTION_INDEX_FLANK2 																			= 6;
global short DEF_INSERTION_INDEX_BEACONS 																			= 7;
global short DEF_INSERTION_INDEX_BEACONS2 																		= 20;
global short DEF_INSERTION_INDEX_END		 																			= 8;
global short DEF_INSERTION_INDEX_BROKEN 																			= 9;
global short DEF_INSERTION_INDEX_MAINTENANCE_UPPER														= 10;
global short DEF_INSERTION_INDEX_MAINTENANCE_LOWER														= 11;
global short DEF_INSERTION_INDEX_EXPLOSIONALLEY 															= 12;
global short DEF_INSERTION_INDEX_VEHICLEBAY 																	= 13;
global short DEF_INSERTION_INDEX_SPACE		 																		= 14;
global short DEF_INSERTION_INDEX_TEST_PODCHASE																= 99;

// zone indexes
global short S_zoneset_00_cryo_02_hallway_04_armory 												= 0;
global short S_zoneset_06_hallway_08_elevator_10_elevator_12_observatory 							= 2;
global short S_zoneset_08_elevator_14_elevator_16_lookout											= 3;
global short S_zoneset_16_lookout_18_elevator_20_cafe												= 4;
global short S_zoneset_24_corner_26_box_28_airlock													= 5;
global short S_zoneset_28_airlock_30_beacons														= 6;
global short S_zoneset_32_broken_34_maintenance														= 7;
global short S_zoneset_36_hallway_38_vehicle_40_debris												= 8;
global short S_zoneset_40_debris_42_skybox															= 9;
global short S_zoneset_cin_opening																	= 10;

// =================================================================================================
// =================================================================================================
// *** INSERTIONS ***
// =================================================================================================
// =================================================================================================

// -------------------------------------------------------------------------------------------------
// START
// -------------------------------------------------------------------------------------------------
script static void start()
	//dprint( "::: start :::");

	b_insertion_reset = FALSE;
	f_insertion_index_load( game_insertion_point_get() );

end

// -------------------------------------------------------------------------------------------------
// CINEMATIC
// -------------------------------------------------------------------------------------------------
script static void icn()
	f_insertion_reset( DEF_INSERTION_INDEX_CINEMATIC );
end

script static void ins_cine()

	f_insertion_begin( "CINEMATIC" );
	
	cinematic_enter( cin_m010_opening, TRUE );
	cinematic_suppress_bsp_object_creation( TRUE );
	f_insertion_zoneload( S_zoneset_cin_opening, FALSE );
	cinematic_suppress_bsp_object_creation( FALSE );
	
	hud_play_global_animtion (screen_fade_out);
	hud_stop_global_animtion (screen_fade_out);
		
	f_start_mission( cin_m010_opening );
	cinematic_exit_no_fade( cin_m010_opening, TRUE ); 
	dprint( "Cinematic exited!" );

	// start the cryo insertion point
	ins_cryo();

end


// -------------------------------------------------------------------------------------------------
// CRYO
// -------------------------------------------------------------------------------------------------
script static void icr()
	f_insertion_reset( DEF_INSERTION_INDEX_CRYO );
end

script static void ins_cryo()
	f_insertion_begin( "CRYO" );
	f_insertion_zoneload( S_zoneset_00_cryo_02_hallway_04_armory, FALSE );

	// setup the cry area
	wake( f_cryo_init );
	f_insertion_playerwait();
	f_insertion_teleport( ps_cryo_insertion.p0, ps_cryo_insertion.p1, ps_cryo_insertion.p2, ps_cryo_insertion.p3 );
	f_insertion_end();

	//hud_play_global_animtion (m10_hud_off);
	//hud_stop_global_animtion (m10_hud_off);
	
	// force objective index
	b_m10_music_progression = 0;
	wake( f_cryo_main );
	
	// forces setup of mission functions to put game into proper state
	B_player_has_cortana = FALSE;
	f_mission_screenshakes_ambient_layer_set_inc( DEF_S_AMBIENTSHAKE_STATE_NONE );
	dprint("::: INSERTION: COMPLETE" );
end

// -------------------------------------------------------------------------------------------------
// LAB
// -------------------------------------------------------------------------------------------------
script static void ila()
	f_insertion_reset( DEF_INSERTION_INDEX_LAB );
end

script static void ins_lab()

	f_insertion_begin( "LAB" );
	f_insertion_zoneload( S_zoneset_00_cryo_02_hallway_04_armory, FALSE );
	f_insertion_playerwait();
	f_insertion_teleport( ps_lab_insertion.p0, ps_lab_insertion.p1, ps_lab_insertion.p2, ps_lab_insertion.p3 );
	f_insertion_playerprofile( default_respawn, FALSE );
	f_insertion_end();
	
	// force objective index
	b_m10_music_progression = 10;
	wake(f_lab_init );
	
	// forces setup of mission functions to put game into proper state
	B_player_has_cortana = TRUE;
	
	f_mission_screenshakes_ambient_layer_set_inc( DEF_S_AMBIENTSHAKE_STATE_LAB );
	//dprint("::: INSERTION: COMPLETE" );
	
end

// -------------------------------------------------------------------------------------------------
// ELEVATOR ICS
// -------------------------------------------------------------------------------------------------
script static void iel()
	f_insertion_reset( DEF_INSERTION_INDEX_ELEVATOR_ICS );
end

script static void ins_ICS_elevator()

	f_insertion_begin( "ELEVATOR ICS" );
	f_insertion_zoneload( S_zoneset_00_cryo_02_hallway_04_armory, FALSE );
	f_insertion_playerwait();
	f_insertion_teleport( ps_elevator_ICS_insertion.p0, ps_elevator_ICS_insertion.p1, ps_elevator_ICS_insertion.p2, ps_elevator_ICS_insertion.p3 );
	f_insertion_playerprofile( default_respawn, FALSE );
	f_insertion_end();
	
	// force objective index
	
	// forces setup of mission functions to put game into proper state
	b_m10_music_progression = 10;
	B_player_has_cortana = TRUE;
	
	f_mission_screenshakes_ambient_layer_set_inc( DEF_S_AMBIENTSHAKE_STATE_LAB );
	//dprint("::: INSERTION: COMPLETE" );
	
end

// -------------------------------------------------------------------------------------------------
// OBSERVATORY
// -------------------------------------------------------------------------------------------------
script static void iob()
	f_insertion_reset( DEF_INSERTION_INDEX_OBSERVATORY );
end

script static void ins_observatory()

	f_insertion_begin( "OBSERVATORY" );
	f_insertion_zoneload( S_zoneset_06_hallway_08_elevator_10_elevator_12_observatory, FALSE );
	f_insertion_playerwait();
	f_insertion_teleport( ps_observatory_insertion.p0, ps_observatory_insertion.p1, ps_observatory_insertion.p2, ps_observatory_insertion.p3 );
	f_insertion_playerprofile( default_respawn, FALSE );
	f_insertion_end();
	
	// forces setup of mission functions to put game into proper state
	b_m10_music_progression = 20;
	
	//wake( f_observatory_main );
	wake(f_observatory_main_02);
	B_player_has_cortana = TRUE;
	
	f_mission_screenshakes_ambient_layer_set_inc( DEF_S_AMBIENTSHAKE_STATE_LAB );
	//dprint(":::PLAYER HAS CORTANA:::");
	//dprint("::: INSERTION: COMPLETE" );
	
		R_objective_current_index = DEF_R_OBJECTIVE_GOTO_OBSERVATION;
end

// -------------------------------------------------------------------------------------------------
// FLANK 1
// -------------------------------------------------------------------------------------------------
// RALLY POINT BRAVO
script static void ifl()
	f_insertion_reset( DEF_INSERTION_INDEX_FLANK );
end

script static void ins_flank()

	f_insertion_begin( "FLANK" );
	f_insertion_zoneload( S_zoneset_08_elevator_14_elevator_16_lookout, FALSE );
	f_insertion_playerwait();
	f_insertion_teleport( ps_flank_insertion.p0, ps_flank_insertion.p1, ps_flank_insertion.p2, ps_flank_insertion.p3 );
	f_insertion_playerprofile( default_respawn, FALSE );
	f_insertion_end();
	
	// forces setup of mission functions to put game into proper state
	fade_in(0,0,0,0);
	b_m10_music_progression = 40;
	
	thread (f_objective_set( DEF_R_OBJECTIVE_FIND_MISSILE_CONTROLS, TRUE, FALSE, TRUE, FALSE ));
	wake( f_flank_main );
	B_player_has_cortana = TRUE;
	
	f_mission_screenshakes_ambient_layer_set_inc( DEF_S_AMBIENTSHAKE_STATE_LAB );
	//dprint("::: INSERTION: COMPLETE" );
	
	R_objective_current_index = DEF_R_OBJECTIVE_FIND_MISSILE_CONTROLS;
end

// -------------------------------------------------------------------------------------------------
// FLANK 2
// -------------------------------------------------------------------------------------------------

script static void ifl2()
	f_insertion_reset( DEF_INSERTION_INDEX_FLANK2 );
end

script static void ins_flank2()

	f_insertion_begin( "FLANK2" );
	f_insertion_zoneload( S_zoneset_24_corner_26_box_28_airlock, FALSE );
	f_insertion_playerwait();
	f_insertion_teleport( ps_flank2_insertion.p0, ps_flank2_insertion.p1, ps_flank2_insertion.p2, ps_flank2_insertion.p3 );
	f_insertion_playerprofile( default_respawn, FALSE );
	f_insertion_end();
	
	// forces setup of mission functions to put game into proper state
	b_m10_music_progression = 60;
	
	wake( f_flank_encounter_start );
	thread(f_flank_door_block());
	B_player_has_cortana = TRUE;
	f_mission_screenshakes_ambient_layer_set_inc( DEF_S_AMBIENTSHAKE_STATE_LAB );
	//dprint("::: INSERTION: COMPLETE" );
	
	R_objective_current_index = DEF_R_OBJECTIVE_FIND_MISSILE_CONTROLS;
		
end

// -------------------------------------------------------------------------------------------------
// BEACONS
// -------------------------------------------------------------------------------------------------
script static void ibe()
	f_insertion_reset( DEF_INSERTION_INDEX_BEACONS );
end

script static void ins_beacons()

	f_insertion_begin( "BEACONS" );
	f_insertion_zoneload( S_zoneset_28_airlock_30_beacons, FALSE );
	f_insertion_playerwait();
	f_insertion_teleport( ps_beacons_insertion.p0, ps_beacons_insertion.p1, ps_beacons_insertion.p2, ps_beacons_insertion.p3 );
	f_insertion_playerprofile( default_single_sniper, FALSE );
	f_insertion_end();
	
	// forces setup of mission functions to put game into proper state
	b_m10_music_progression = 70;
	B_airlock_1_complete = TRUE;
	wake( f_beacon_main );
	B_player_has_cortana = TRUE;
	f_mission_screenshakes_ambient_layer_set_inc( DEF_S_AMBIENTSHAKE_STATE_BEACON_START );
	//dprint("::: INSERTION: COMPLETE" );
	
	R_objective_current_index = DEF_R_OBJECTIVE_FIND_MISSILE_CONTROLS;
end


// -------------------------------------------------------------------------------------------------
// END
// -------------------------------------------------------------------------------------------------
script static void ind()
	f_insertion_reset( DEF_INSERTION_INDEX_END );
end

script static void ins_end()

	f_insertion_begin( "END" );
	f_insertion_zoneload( S_zoneset_32_broken_34_maintenance, FALSE );
	f_insertion_playerwait();
	f_insertion_teleport( ps_ins_ind.p0, ps_ins_ind.p1, ps_ins_ind.p2, ps_ins_ind.p3 );
	f_insertion_playerprofile( default_single_sniper, FALSE );
	f_insertion_end();
	
	// force objective index
	f_objective_set( DEF_R_OBJECTIVE_NONE, FALSE, FALSE, FALSE, FALSE );
	
	// forces setup of mission functions to put game into proper state
	b_m10_music_progression = 90;
	f_mission_screenshakes_ambient_layer_set_inc( DEF_S_AMBIENTSHAKE_STATE_BEACON_END );
	//dprint("::: INSERTION: COMPLETE" );
	door_airlock_2_interior->open();
	
end

// -------------------------------------------------------------------------------------------------
// BROKEN FLOOR
// -------------------------------------------------------------------------------------------------
script static void ibr()
	f_insertion_reset( DEF_INSERTION_INDEX_BROKEN );
end

script static void ins_broken_floor()

	f_insertion_begin( "BROKEN FLOOR" );
	f_insertion_zoneload( S_zoneset_32_broken_34_maintenance, FALSE );
	f_insertion_playerwait();
	f_insertion_teleport( ps_ins_ibr.p0, ps_ins_ibr.p1, ps_ins_ibr.p2, ps_ins_ibr.p3 );
	f_insertion_playerprofile( default_single_sniper, FALSE );
	f_insertion_end();
	
	// force objective index
	//f_objective_set( DEF_R_OBJECTIVE_REACH_ESCAPE_PODS, FALSE, TRUE, FALSE, FALSE );
	
	// forces setup of mission functions to put game into proper state
	b_m10_music_progression = 90;
	sfx_end_alarm_set( DEF_S_END_ALARM_STATE_AIRLOCK );
	f_mission_screenshakes_ambient_layer_set_inc( DEF_S_AMBIENTSHAKE_STATE_END );
	//dprint("::: INSERTION: COMPLETE" );
	
end

// -------------------------------------------------------------------------------------------------
// MAINTENANCE: UPPER
// -------------------------------------------------------------------------------------------------
script static void imu()
	f_insertion_reset( DEF_INSERTION_INDEX_MAINTENANCE_UPPER );
end

script static void ins_maintenance_upper()

	f_insertion_begin( "MAINTENANCE: UPPER" );
	f_insertion_zoneload( S_zoneset_32_broken_34_maintenance, FALSE );
	f_insertion_playerwait();
	f_insertion_teleport( ps_maintenance_upper_insertion.p0, ps_maintenance_upper_insertion.p1, ps_maintenance_upper_insertion.p2, ps_maintenance_upper_insertion.p3 );
	f_insertion_playerprofile( default_single_sniper, FALSE );
	f_insertion_end();
	
	// force objective index
	//f_objective_set( DEF_R_OBJECTIVE_REACH_ESCAPE_PODS, FALSE, TRUE, FALSE, FALSE );
	
	// forces setup of mission functions to put game into proper state
	b_m10_music_progression = 90;
	f_brokenfloor_destruction_animate( 1.0, 0.1, 0.1 );
	//f_gravity_set( R_gravity_end );
	sfx_end_alarm_set( DEF_S_END_ALARM_STATE_BROKEN_ROOM );
	f_mission_screenshakes_ambient_layer_set_inc( DEF_S_AMBIENTSHAKE_STATE_MAINTENANCE );
	//dprint("::: INSERTION: COMPLETE" );
	
end

// -------------------------------------------------------------------------------------------------
// MAINTENANCE: LOWER
// -------------------------------------------------------------------------------------------------
script static void iml()
	f_insertion_reset( DEF_INSERTION_INDEX_MAINTENANCE_LOWER );
end

script static void ins_maintenance_lower()

	f_insertion_begin( "MAINTENANCE: LOWER" );
	f_insertion_zoneload( S_zoneset_32_broken_34_maintenance, FALSE );
	f_insertion_playerwait();
	f_insertion_teleport( ps_maintenance_lower_insertion.p0, ps_maintenance_lower_insertion.p1, ps_maintenance_lower_insertion.p2, ps_maintenance_lower_insertion.p3 );
	f_insertion_playerprofile( default_single_sniper, FALSE );
	f_insertion_end();
	
	// force objective index
	//f_objective_set( DEF_R_OBJECTIVE_REACH_ESCAPE_PODS, FALSE, TRUE, FALSE, FALSE );
	
	// forces setup of mission functions to put game into proper state
	b_m10_music_progression = 90;
	f_brokenfloor_destruction_animate( 1.0, 0.1, 0.1 );
	//f_gravity_set( R_gravity_end );
	sfx_end_alarm_set( DEF_S_END_ALARM_STATE_BROKEN_ROOM );
	f_mission_screenshakes_ambient_layer_set_inc( DEF_S_AMBIENTSHAKE_STATE_MAINTENANCE );
	//dprint("::: INSERTION: COMPLETE" );
	
end
// -------------------------------------------------------------------------------------------------
// EXPLOSION ALLEY
// -------------------------------------------------------------------------------------------------
script static void iea()
	f_insertion_reset( DEF_INSERTION_INDEX_EXPLOSIONALLEY );
end

script static void ins_explosion_alley()

	f_insertion_begin( "EXPLOSION ALLEY" );
	f_insertion_zoneload( S_zoneset_32_broken_34_maintenance, FALSE );
	f_insertion_playerwait();
	f_insertion_teleport( ps_explosion_alley_insertion.p0, ps_explosion_alley_insertion.p1, ps_explosion_alley_insertion.p2, ps_explosion_alley_insertion.p3 );
	f_insertion_playerprofile( default_single_sniper, FALSE );
	f_insertion_end();
	
	// force objective index
	//f_objective_set( DEF_R_OBJECTIVE_REACH_ESCAPE_PODS, FALSE, TRUE, FALSE, FALSE );
	
	// forces setup of mission functions to put game into proper state
	b_m10_music_progression = 90;
	//f_gravity_set( R_gravity_end );
	sfx_end_alarm_set( DEF_S_END_ALARM_STATE_MAINTENANCE );
	f_mission_screenshakes_ambient_layer_set_inc( DEF_S_AMBIENTSHAKE_STATE_EXPLOSIONALLEY );
	//dprint("::: INSERTION: COMPLETE" );
	
end

// -------------------------------------------------------------------------------------------------
// VEHICLE BAY
// -------------------------------------------------------------------------------------------------
script static void ivb()
	f_insertion_reset( DEF_INSERTION_INDEX_VEHICLEBAY );
end

script static void ins_vehicle_bay()

	f_insertion_begin( "VEHICLE BAY" );
	f_insertion_zoneload( S_zoneset_36_hallway_38_vehicle_40_debris, FALSE );
	f_insertion_playerwait();
	f_insertion_teleport( ps_vehicle_bay_insertion.p0, ps_vehicle_bay_insertion.p1, ps_vehicle_bay_insertion.p2, ps_vehicle_bay_insertion.p3 );
//	f_insertion_playerprofile( default_single_sniper, FALSE );
	f_insertion_end();
	
	// force objective index
	//f_objective_set( DEF_R_OBJECTIVE_REACH_ESCAPE_PODS, FALSE, TRUE, FALSE, FALSE );
	
	// forces setup of mission functions to put game into proper state
	b_m10_music_progression = 100;
	//f_gravity_set( R_gravity_end );
	wake( f_maintenance_airlock_init );
	f_mission_screenshakes_ambient_layer_set_inc( DEF_S_AMBIENTSHAKE_STATE_VEHICLEBAY );
	//dprint("::: INSERTION: COMPLETE" );
	
end

//// -------------------------------------------------------------------------------------------------
//// SPACE
//// -------------------------------------------------------------------------------------------------
//script static void isp()
//	f_insertion_reset( DEF_INSERTION_INDEX_SPACE );
//end
//
//script static void ins_space()
//
//	f_insertion_begin( "POD CHASE" );
//	f_insertion_zoneload( S_zoneset_40_debris_42_skybox, FALSE );
//	f_insertion_playerwait();
//	//f_gravity_set( R_gravity_space );
//	f_insertion_teleport( ps_ins_iju.p0, ps_ins_iju.p1, ps_ins_iju.p2, ps_ins_iju.p3 );
//	f_insertion_playerprofile( default_single_sniper, FALSE );
//	f_insertion_end();
//	
//	// force objective index
//	//f_objective_set( DEF_R_OBJECTIVE_NONE, FALSE, FALSE, FALSE, FALSE );
//
//	// forces setup of mission functions to put game into proper state
//	wake( f_debris_FUD_destruction_action );
//	f_mission_screenshakes_ambient_layer_set_inc( DEF_S_AMBIENTSHAKE_STATE_SPACE );
//	//dprint("::: INSERTION: COMPLETE" );
//	
//end
//
//// -------------------------------------------------------------------------------------------------
//// TEST PODCHASE
//// -------------------------------------------------------------------------------------------------
//script static void itpc()
//	f_insertion_reset( DEF_INSERTION_INDEX_TEST_PODCHASE );
//end
//
//script static void ins_test_podchase()
//
//	f_insertion_begin( "TEST POD CHASE" );
//	f_insertion_zoneload( S_zoneset_40_debris_42_skybox, FALSE );
//	f_insertion_playerwait();
//	f_insertion_teleport( ps_ins_tpc.p0, ps_ins_tpc.p1, ps_ins_tpc.p2, ps_ins_tpc.p3 );
//	f_insertion_playerprofile( default_single_sniper, FALSE );
//	f_insertion_end();
//	
//	/*
//	// force objective index
//	f_objective_set( DEF_R_OBJECTIVE_NONE, FALSE, FALSE, FALSE, FALSE );
//
//	// forces setup of mission functions to put game into proper state
//	f_gravity_set( R_gravity_podchase );
//	wake( f_vehiclebay_destruction_skip );
//	f_mission_screenshakes_ambient_layer_set_inc( DEF_S_AMBIENTSHAKE_STATE_VEHICLEBAY );
//	//dprint("::: INSERTION: COMPLETE" );
//	*/
//
//	f_gravity_set( 0.0 );
//
//	dprint( ">>>>> CREATE TEST BOX" );
//	f_object_create( dm_podchase_test_box, TRUE );
//	object_cinematic_visibility(dm_podchase_test_box, true);
//	object_set_always_active( dm_podchase_test_box, TRUE );
//
//	dprint( ">>>>> ATTACH TEST BOX" );
//	object_set_physics( player_get(0), FALSE ); 
//	objects_attach( dm_podchase_test_box, "m_player0", player_get(0), "" );
//	
//	device_set_position_track( dm_podchase_test_box, 'any:idle', 0 );
//	
//	test_podchase_box();
//	
//end
//
//script static void test_podchase_box()
//
//	dprint( ">>>>> MOVE TEST BOX" );
//	repeat
//
//		sleep_s( 0.5 );
//		//objects_detach( dm_podchase_test_box, player_get(0) );
//		//object_set_physics( player_get(0), TRUE ); 
//		device_animate_position( dm_podchase_test_box, 1.0, 30.0, 0.1, 0, TRUE );
//		sleep_until( device_get_position(dm_podchase_test_box) == 1.0 );
//
//		//object_set_physics( player_get(0), FALSE ); 
//		//objects_attach( dm_podchase_test_box, "m_player0", player_get(0), "" );
//		device_animate_position( dm_podchase_test_box, 0.0, 2.5, 0.1, 0, TRUE );
//		sleep_until( device_get_position(dm_podchase_test_box) == 0.0 );
//
//	until( FALSE, 1 );
//
//end



// =================================================================================================
// =================================================================================================
// UTILITY
// =================================================================================================
// =================================================================================================
// -------------------------------------------------------------------------------------------------
// XXX
// -------------------------------------------------------------------------------------------------
// -------------------------------------------------------------------------------------------------
// XXX
// -------------------------------------------------------------------------------------------------
// -------------------------------------------------------------------------------------------------
// INSERTION LOAD INDEX
// -------------------------------------------------------------------------------------------------
script static void f_insertion_index_load( short s_insertion )
local boolean b_started = FALSE;
	//dprint( "::: f_insertion_index_load :::" );
	inspect( game_insertion_point_get() );
	
	if (s_insertion == DEF_INSERTION_INDEX_CINEMATIC) then
		b_started = TRUE;
		ins_cine();
	end
	if (s_insertion == DEF_INSERTION_INDEX_CRYO) then
		b_started = TRUE;
		ins_cryo();
	end
	if (s_insertion == DEF_INSERTION_INDEX_LAB) then
		b_started = TRUE;
		ins_lab();
	end
	if (s_insertion == DEF_INSERTION_INDEX_ELEVATOR_ICS) then
		b_started = TRUE;
		ins_ICS_elevator();
	end
	if (s_insertion == DEF_INSERTION_INDEX_OBSERVATORY) then
		b_started = TRUE;
		ins_observatory();
	end
	if (s_insertion == DEF_INSERTION_INDEX_FLANK) then
		b_started = TRUE;
		ins_flank();
	end
	if (s_insertion == DEF_INSERTION_INDEX_FLANK2) then
		b_started = TRUE;
		ins_flank2();
	end
	if (s_insertion == DEF_INSERTION_INDEX_BEACONS) then
		b_started = TRUE;
		ins_beacons();
	end
	if (s_insertion == DEF_INSERTION_INDEX_END) then
		b_started = TRUE;
		ins_end();
	end
	if (s_insertion == DEF_INSERTION_INDEX_BROKEN) then
		b_started = TRUE;
		ins_broken_floor();
	end
	if (s_insertion == DEF_INSERTION_INDEX_MAINTENANCE_UPPER) then
		b_started = TRUE;
		ins_maintenance_upper();
	end
	if (s_insertion == DEF_INSERTION_INDEX_MAINTENANCE_LOWER) then
		b_started = TRUE;
		ins_maintenance_lower();
	end
	if (s_insertion == DEF_INSERTION_INDEX_EXPLOSIONALLEY) then
		b_started = TRUE;
		ins_explosion_alley();
	end
	if (s_insertion == DEF_INSERTION_INDEX_VEHICLEBAY) then
		b_started = TRUE;
		ins_vehicle_bay();
	end
//	if (s_insertion == DEF_INSERTION_INDEX_SPACE) then
//		b_started = TRUE;
//		ins_space();
//	end
//	if (s_insertion == DEF_INSERTION_INDEX_TEST_PODCHASE) then
//		b_started = TRUE;
//		ins_test_podchase();
//	end
	
	if ( not b_started ) then
		dprint( "f_insertion_index_load: ERROR: Failed to find insertion point index to load" );
		inspect( s_insertion );
	end

end

script static zone_set f_zoneset_get( short s_index )
	local zone_set zs_return = "00_cryo_02_hallway_04_armory";

	if ( s_index == S_zoneset_00_cryo_02_hallway_04_armory ) then
	 zs_return = "00_cryo_02_hallway_04_armory";
	end
	if ( s_index == S_zoneset_06_hallway_08_elevator_10_elevator_12_observatory ) then
	 zs_return = "06_hallway_08_elevator_10_elevator_12_observatory";
	end
	if ( s_index == S_zoneset_08_elevator_14_elevator_16_lookout ) then
	 zs_return = "08_elevator_14_elevator_16_lookout";
	end
	if ( s_index == S_zoneset_16_lookout_18_elevator_20_cafe ) then
	 zs_return = "16_lookout_18_elevator_20_cafe";
	end
	if ( s_index == S_zoneset_24_corner_26_box_28_airlock ) then
	 zs_return = "24_corner_26_box_28_airlock";
	end
	if ( s_index == S_zoneset_28_airlock_30_beacons ) then
	 zs_return = "28_airlock_30_beacons";
	end
	if ( s_index == S_zoneset_32_broken_34_maintenance ) then
	 zs_return = "32_broken_34_maintenance";
	end
	if ( s_index == S_zoneset_36_hallway_38_vehicle_40_debris ) then
	 zs_return = "36_hallway_38_vehicle_40_debris";
	end
	if ( s_index == S_zoneset_40_debris_42_skybox ) then
	 zs_return = "40_debris_42_skybox";
	end
	if ( s_index == S_zoneset_cin_opening ) then
	 zs_return = "cin_opening";
	end
	
	// return
	zs_return;
end
// --- End m10_crash_insertion.hsc ---

// --- Begin m10_crash_mission.hsc ---
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343
//
// Mission: 					m10_crash
//	Insertion Points:	start (or icr)	- Beginning
//										ila							- Lab / Armory
//										iob							- Observation Deck
//										ifl							- Flank / Prep Room
//										ibe							- Beacon
//										ibr							- Broken Floor
//										ivb							- Vehicle Bay
//										iju							- Jump Debris
//										
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343

// =================================================================================================
// =================================================================================================
// M10 MISSION
// =================================================================================================
// =================================================================================================
// variables
global boolean b_mission_started 					= FALSE;

global boolean B_OYO 											= TRUE; 

// -------------------------------------------------------------------------------------------------
// INIT
// -------------------------------------------------------------------------------------------------
// variables

// functions
script startup m10_crash_startup()

	if ( b_game_emulate or (not editor_mode()) ) then
		fade_out( 0, 0, 0, 0 );
	
		// in editor mode make sure the players are there to start
		if ( editor_mode() ) then
			f_insertion_playerwait();
		end

		// run start function
		start();

		sleep_until( b_mission_started, 1);
		if ( game_insertion_point_get() > DEF_INSERTION_INDEX_CRYO ) then
			fade_in( 0, 0, 0, (0.50 * 30) );
		end

	end

	// wait for the game to start
	sleep_until( b_mission_started, 1);

	// display difficulty
	print_difficulty(); 

	// STARTING THE GAME
	//dprint_if( b_game_emulate, "_game_emulate" );
	//dprint_if( b_debug, "_debug" );
	//dprint_if( editor_mode(), "_editor_mode()" );
	//dprint_if( player_count() > 0, "_player_count > 0" );
	
	// hax!
	ai_lod_full_detail_actors(30);
	
	// set co-op profiles
	thread(f_loadout_set ("start"));
	
end

// -------------------------------------------------------------------------------------------------
// LIGHTING
// -------------------------------------------------------------------------------------------------
// variables

// functions
script startup m10_crash_lighting()

	// [mboulton 10/25/2011] Make sure that the observatory is set to "dark" initially
	set_lightmap_direct_scalar_bsp(6, 1.0);
	set_lightmap_indirect_scalar_bsp(6, 1.0);

end

// -------------------------------------------------------------------------------------------------
// GRAVITY
// -------------------------------------------------------------------------------------------------
// variables
global real R_gravity_default 										= 1.0;
global real R_gravity_cryo 												= 0.0;
global real R_gravity_obs 												= 0.0;
global real R_gravity_low 												= 0.4;
global real R_gravity_lower 											= 0.05;
global real R_gravity_end 												= 0.5;
global real R_gravity_vehiclebay_trans 						= 0.99;
global real R_gravity_space												= 0.0;

global long L_gravity_set_thread = 0;
global long L_gravity_jetpack_thread = 0;
global long L_gravity_audio_thread = 0;

// =================================================================================================
// Loadouts
// =================================================================================================
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


// functions
// === f_gravity_set_time_thread::: Sets the mission gravity over time and waits for the transition to finish before returning
//	WARNING: THIS FUNCTION SHOULD NOT BE CALLED DIRECTLY
script static void f_gravity_set_time_thread( real r_gravity, real r_time )

	if ( r_gravity != physics_get_gravity() ) then
		//dprint( "::: f_gravity_set_time_thread :::" );
		inspect( r_gravity );

		// setup the watch threads
		//	jetpack watch
		if ( L_gravity_jetpack_thread != 0 ) then
			kill_thread( L_gravity_jetpack_thread );
			L_gravity_jetpack_thread = 0;
		end
		//	audio watch
		L_gravity_jetpack_thread = thread( f_gravity_jetpack_thread(r_gravity) );
		if ( L_gravity_audio_thread != 0 ) then
			kill_thread( L_gravity_audio_thread );
			L_gravity_audio_thread = 0;
		end
		L_gravity_audio_thread = thread( f_gravity_audio_thread(r_gravity) );

		if ( r_time != 0.0 ) then
			transition_gravity( DEF_GRAVITY_CURRENT, r_gravity, r_time, 10 );
		else
			physics_set_gravity( r_gravity );
		end

		// wait for gravity switch to finish
		sleep_until( physics_get_gravity() == r_gravity, 1 );
	end
	L_gravity_set_thread = 0;

end

// === f_gravity_set_time::: Sets the mission gravity over time
script static void f_gravity_set_time( real r_gravity, real r_time, boolean b_wait )

	if ( L_gravity_set_thread != 0 ) then
		kill_thread( L_gravity_set_thread );
		L_gravity_set_thread = 0;
	end
	L_gravity_set_thread = thread( f_gravity_set_time_thread(r_gravity, r_time) );
	if ( b_wait ) then
		sleep_until( L_gravity_set_thread == 0, 1 );
	end

end

// === f_gravity_set::: Sets the mission gravity; mainly for debugging purposes
script static void f_gravity_set( real r_gravity )
	f_gravity_set_time( r_gravity, 0.0, FALSE );
end

// === f_gravity_jetpack_thread::: Switches to the correct jetpack for all players
//	WARNING: THIS FUNCTION SHOULD NOT BE CALLED DIRECTLY
script static void f_gravity_jetpack_thread( real r_gravity )
static real r_last_gravity = 0;

	r_last_gravity = -666;

	repeat
	
		if ( r_last_gravity != -666 ) then
			//dprint( "::: f_gravity_jetpack_switch: WAIT :::" );
			if (r_last_gravity >= 1.0) then
				sleep_until( (physics_get_gravity() == r_gravity) or (physics_get_gravity() < 1.0), 1 );
			end
			if (r_last_gravity <= 0.0) then
				sleep_until( (physics_get_gravity() == r_gravity) or (physics_get_gravity() > 0.0), 1 );
			end
			if ((0.0 < r_last_gravity) and (r_last_gravity < 1.0)) then
				sleep_until( (physics_get_gravity() == r_gravity) or (physics_get_gravity() <= 0.0) or (physics_get_gravity() >= 1.0), 1 );
			end
		end

		//dprint( "::: f_gravity_jetpack_switch: SWITCH :::" );
		r_last_gravity = physics_get_gravity();
		f_gravity_jetpack_switch_player( 0 );
		f_gravity_jetpack_switch_player( 1 );
		f_gravity_jetpack_switch_player( 2 );
		f_gravity_jetpack_switch_player( 3 );
		
	until ( (physics_get_gravity() == r_gravity) or (L_gravity_jetpack_thread == 0), 1 );
	L_gravity_jetpack_thread = 0;
	
end

// === f_gravity_jetpack_switch::: Switches to the correct jetpack
script static void f_gravity_jetpack_switch_player( short s_index )
	//dprint( "::: f_gravity_jetpack_switch_player :::" );

	if ( s_index < player_count() ) then
		if ( unit_has_any_equipment(player_get(s_index)) ) then
			if ( physics_get_gravity() >= 1.0 ) then
				//dprint( "::: f_gravity_jetpack_switch_player-jet_pack.equipment :::" );
				player_set_equipment( player_get(s_index), 'objects\equipment\jet_pack\jet_pack.equipment', FALSE, TRUE, TRUE );
			end
			if ( physics_get_gravity() <= 0.0 ) then
				//dprint( "::: f_gravity_jetpack_switch_player-jet_pack_zero_grav.equipment :::" );
				player_set_equipment( player_get(s_index), 'objects\equipment\jet_pack\jet_pack_zero_grav.equipment', FALSE, TRUE, TRUE );
			end
			if ( (0.0 < physics_get_gravity()) and (physics_get_gravity() < 1.0) ) then
				//dprint( "::: f_gravity_jetpack_switch_player-jet_pack_low_grav.equipment :::" );
				player_set_equipment( player_get(s_index), 'objects\equipment\jet_pack\jet_pack_low_grav.equipment', FALSE, TRUE, TRUE );
			end
		end
	end

end

// === f_gravity_audio_thread::: Switches to the correct audio filter
//	WARNING: THIS FUNCTION SHOULD NOT BE CALLED DIRECTLY
script static void f_gravity_audio_thread( real r_gravity )
static real r_last_gravity = 0;

	r_last_gravity = -666;

	repeat
		//dprint( "::: f_gravity_audio_thread: WAIT :::" );

		if ( r_last_gravity != -666 ) then
			//dprint( "::: f_gravity_jetpack_switch: WAIT :::" );
			if (r_last_gravity >= 1.0) then
				sleep_until( (physics_get_gravity() == r_gravity) or (physics_get_gravity() < 1.0), 1 );
			end
			if (r_last_gravity <= 0.0) then
				sleep_until( (physics_get_gravity() == r_gravity) or (physics_get_gravity() > 0.0), 1 );
			end
			if ((0.0 < r_last_gravity) and (r_last_gravity < 1.0)) then
				sleep_until( (physics_get_gravity() == r_gravity) or (physics_get_gravity() <= 0.0) or (physics_get_gravity() >= 1.0), 1 );
			end
			inspect( physics_get_gravity() );
		end

		//dprint( "::: f_gravity_audio_thread: SWITCH :::" );
		r_last_gravity = physics_get_gravity();
		if ( physics_get_gravity() == 1.0 ) then
			sound_impulse_start( 'sound\storm\states\zero_g\set_state_high_gravity', NONE, 1 );
		elseif ( physics_get_gravity() == 0.0 ) then
			sound_impulse_start( 'sound\storm\states\zero_g\set_state_no_gravity', NONE, 1 );
		else
			sound_impulse_start( 'sound\storm\states\zero_g\set_state_low_gravity', NONE, 1 );
		end
		
	until ( (physics_get_gravity() == r_gravity) or (L_gravity_audio_thread == 0), 1 );
	L_gravity_audio_thread = 0;

end



// -------------------------------------------------------------------------------------------------
// Explosions
// -------------------------------------------------------------------------------------------------
// XXX Change FX and dmg
global effect FX_explosion_small = 		environments\solo\m10_crash\fx\explosions\explosion_brk_eal_med.effect; // XXX needed
global effect FX_explosion_medium = 	environments\solo\m10_crash\fx\explosions\explosion_brk_eal_med.effect;
global effect FX_explosion_large =  	environments\solo\m10_crash\fx\explosions\explosion_brk_eal_large.effect;
global effect FX_explosion_sparks =  	environments\solo\m10_crash\fx\explosions\explosion_36_hall.effect;

global damage DMG_explosion_small = 	objects\weapons\grenade\storm_frag_grenade\damage_effects\storm_frag_grenade_explosion.damage_effect; // XXX needed
global damage DMG_explosion_medium = 	objects\weapons\support_high\storm_rocket_launcher\projectiles\damage_effects\storm_rocket_launcher_rocket_explosion.damage_effect;
global damage DMG_explosion_large = 	objects\weapons\support_high\storm_rocket_launcher\projectiles\damage_effects\storm_rocket_launcher_rocket_explosion.damage_effect;

// === f_explosion_at::: Creates an explosiont at a location
script static void f_explosion_flag( cutscene_flag flg_loc, effect fx_tag, boolean b_fx, damage dmg_tag, boolean b_damage )

	if ( (b_damage) and (dmg_tag != NONE) ) then
		damage_new( dmg_tag, flg_loc );
	end
	if ( (b_fx) and (fx_tag != NONE) ) then
		effect_new( fx_tag, flg_loc );
	end

end

// === f_explosion_flag_large::: Creates an explosiont at a location for this size
script static void f_explosion_flag_large( cutscene_flag flg_loc, boolean b_fx, boolean b_damage )
	f_explosion_flag( flg_loc, FX_explosion_large, b_fx, DMG_explosion_large, b_damage );
end

// === f_explosion_flag_medium::: Creates an explosiont at a location for this size
script static void f_explosion_flag_medium( cutscene_flag flg_loc, boolean b_fx, boolean b_damage )
	f_explosion_flag( flg_loc, FX_explosion_medium, b_fx, DMG_explosion_medium, b_damage );
end

// === f_explosion_flag_small::: Creates an explosiont at a location for this size
script static void f_explosion_flag_small( cutscene_flag flg_loc, boolean b_fx, boolean b_damage )
	f_explosion_flag( flg_loc, FX_explosion_small, b_fx, DMG_explosion_small, b_damage );
end






// -------------------------------------------------------------------------------------------------
// FX: AIRLOCKS
// -------------------------------------------------------------------------------------------------
// variables
global real  R_airlock_fx_pos						= 0.0;

// functions
// === fx_airlock_play_loc: plays fx for an airlock location
script static void fx_airlock_play_loc( effect fx_tag, real r_delay, cutscene_flag CF_flag, real i_index, real i_max )
	//dprint( "::: fx_airlock_play_loc :::" );

	effect_new( fx_tag, CF_flag );
	sleep_s( r_delay );
	R_airlock_FX_pos = i_index/i_max;

end

// === fx_airlock_pos_reset: resets the position counter
script static void fx_airlock_pos_reset()
	R_airlock_FX_pos = 0.0;
end



// -------------------------------------------------------------------------------------------------
// SCREENSHAKES
// -------------------------------------------------------------------------------------------------
// -------------------------------------------------------------------------------------------------
// SCREENSHAKES: RUMBLE
// -------------------------------------------------------------------------------------------------
script static long f_mission_screenshakes_rumble_low( real r_attack )
	if ( r_attack < 0.0 ) then
		 r_attack = 0.5;
	end
	f_screenshake_rumble_global_add( DEF_R_SCREENSHAKE_RUMBLE_INTENSITY_LOW(), r_attack, sfx_rumble_low() );
end

script static long f_mission_screenshakes_rumble_med( real r_attack )
	if ( r_attack < 0.0 ) then
		 r_attack = 0.5;
	end
	f_screenshake_rumble_global_add( DEF_R_SCREENSHAKE_RUMBLE_INTENSITY_MED(), r_attack, sfx_rumble_med() );
end

script static long f_mission_screenshakes_rumble_high( real r_attack )
	if ( r_attack < 0.0 ) then
		 r_attack = 0.5;
	end
	f_screenshake_rumble_global_add( DEF_R_SCREENSHAKE_RUMBLE_INTENSITY_HIGH(), r_attack, sfx_rumble_high() );
end

// -------------------------------------------------------------------------------------------------
// SCREENSHAKES: AMBIENT
// -------------------------------------------------------------------------------------------------
global short DEF_S_AMBIENTSHAKE_STATE_NONE 						= 0;
global short DEF_S_AMBIENTSHAKE_STATE_LAB 						= 1;	// !!!
global short DEF_S_AMBIENTSHAKE_STATE_OBSERVATORY			= 2;	// !!!
global short DEF_S_AMBIENTSHAKE_STATE_BEACON_START		= 3;	// !!!
global short DEF_S_AMBIENTSHAKE_STATE_BEACON_END			= 4;	// !!!
global short DEF_S_AMBIENTSHAKE_STATE_END_AIRLOCK 		= 5;	// !!!
global short DEF_S_AMBIENTSHAKE_STATE_END 						= 6;	// !!!
global short DEF_S_AMBIENTSHAKE_STATE_BROKEN 					= 7;	// !!!
global short DEF_S_AMBIENTSHAKE_STATE_MAINTENANCE 		= 8;	// !!!
global short DEF_S_AMBIENTSHAKE_STATE_EXPLOSIONALLEY 	= 9;	// !!!
global short DEF_S_AMBIENTSHAKE_STATE_BLACKOUT 				= 10;	// !!!
global short DEF_S_AMBIENTSHAKE_STATE_VEHICLEBAY 			= 11;	// !!!
global short DEF_S_AMBIENTSHAKE_STATE_SPACE			 			= 12;	// !!!

script static void f_mission_screenshakes_ambient_layer_set_inc( short s_layer )
static short s_layer_saved = DEF_S_AMBIENTSHAKE_STATE_NONE;
static long l_thread = 0;

	if ( s_layer > s_layer_saved) then
		s_layer_saved = s_layer;
		
		if ( l_thread != 0 ) then
			kill_thread( l_thread );
		end
		
		l_thread = thread( f_mission_screenshakes_ambient_layer_set(s_layer) );
	end
	
end

script static void f_mission_screenshakes_ambient_layer_set( short s_layer )
static long l_distant_01 = 0;
static long l_distant_02 = 0;
static long l_distant_03 = 0;
static long l_distant_04 = 0;
static long l_large_01 = 0;
static long l_large_02 = 0;
static long l_large_03 = 0;
static long l_large_04 = 0;
static long l_large_05 = 0;
static long l_medium_01 = 0;
static long l_medium_02 = 0;
static long l_medium_03 = 0;

	// pause while shifting sets

	if ( s_layer == DEF_S_AMBIENTSHAKE_STATE_NONE ) then
		f_screenshake_ambient_pause( TRUE, FALSE, 0.0 );
	end
	if ( s_layer == DEF_S_AMBIENTSHAKE_STATE_LAB ) then
		f_screenshake_ambient_delay_set( 10.0, 15.0 );
		f_screenshake_ambient_pause( FALSE, FALSE, 0.0 );
	end
	if ( s_layer == DEF_S_AMBIENTSHAKE_STATE_OBSERVATORY ) then
		f_screenshake_ambient_delay_set( 10.0, 12.5 );
		f_screenshake_ambient_pause( FALSE, FALSE, -1 );
	end
	if ( s_layer == DEF_S_AMBIENTSHAKE_STATE_BEACON_START ) then
		f_screenshake_ambient_pause( TRUE, FALSE, 0.0 );
	end
	if ( s_layer == DEF_S_AMBIENTSHAKE_STATE_BEACON_END ) then
		f_screenshake_ambient_delay_set( 0.25, 0.5 );
		f_screenshake_ambient_pause( FALSE, FALSE, -1 );
	end
	if ( s_layer == DEF_S_AMBIENTSHAKE_STATE_END_AIRLOCK ) then
		f_screenshake_ambient_delay_set( 3.0, 7.0 );
		f_screenshake_ambient_pause( FALSE, FALSE, -1 );
	end
	if ( s_layer == DEF_S_AMBIENTSHAKE_STATE_BROKEN ) then
		f_screenshake_ambient_delay_set( 3.0, 6.0 );
		f_screenshake_ambient_pause( FALSE, FALSE, -1 );
	end
	if ( s_layer == DEF_S_AMBIENTSHAKE_STATE_MAINTENANCE ) then
		f_screenshake_ambient_delay_set( 3.0, 5.0 );
		f_screenshake_ambient_pause( FALSE, FALSE, -1 );
	end
	if ( s_layer == DEF_S_AMBIENTSHAKE_STATE_EXPLOSIONALLEY ) then
		f_screenshake_ambient_delay_set( 1.5, 2.5 );
		f_screenshake_ambient_pause( FALSE, FALSE, -1 );
	end
	if ( s_layer == DEF_S_AMBIENTSHAKE_STATE_BLACKOUT ) then
		f_screenshake_ambient_delay_set( 0.5, 1.25 );
		f_screenshake_ambient_pause( FALSE, FALSE, 0.0 );
	end
	if ( s_layer == DEF_S_AMBIENTSHAKE_STATE_VEHICLEBAY ) then
		f_screenshake_ambient_delay_set( 2.0, 3.0 );
		f_screenshake_ambient_pause( TRUE, FALSE, 0.0 );
	end
	if ( s_layer == DEF_S_AMBIENTSHAKE_STATE_SPACE ) then
		f_screenshake_ambient_pause( TRUE, FALSE, 0.0 );
	end
	
	// large
	if ( (s_layer >= DEF_S_AMBIENTSHAKE_STATE_BROKEN) and (s_layer <= DEF_S_AMBIENTSHAKE_STATE_VEHICLEBAY) ) then
		if ( l_large_01 == 0 ) then
			l_large_01 = f_screenshake_ambient_add( 0.25, DEF_R_SCREENSHAKE_AMBIENT_INTENSITY_HIGH(), -0.5, -1, -3.0, 'sound\environments\solo\m010\ambience\explosions\amb_m10_explosions_large_01', 0.0, 3, "amb_m10_explosions_large_01" );
		end
		if ( l_large_02 == 0 ) then
			l_large_02 = f_screenshake_ambient_add( 0.25, DEF_R_SCREENSHAKE_AMBIENT_INTENSITY_HIGH(), -0.5, -1, -3.5, 'sound\environments\solo\m010\ambience\explosions\amb_m10_explosions_large_02', 0.0, 3, "amb_m10_explosions_large_02" );
		end
		if ( l_large_03 == 0 ) then
			l_large_03 = f_screenshake_ambient_add( 0.25, DEF_R_SCREENSHAKE_AMBIENT_INTENSITY_HIGH(), -0.75, -1, -4.0, 'sound\environments\solo\m010\ambience\explosions\amb_m10_explosions_large_03', 0.0, 3, "amb_m10_explosions_large_03" );
		end
		if ( l_large_04 == 0 ) then
			l_large_04 = f_screenshake_ambient_add( 0.25, DEF_R_SCREENSHAKE_AMBIENT_INTENSITY_HIGH(), -0675, -1, -4.0, 'sound\environments\solo\m010\ambience\explosions\amb_m10_explosions_large_04', 0.0, 3, "amb_m10_explosions_large_04" );
		end
		if ( l_large_05 == 0 ) then
			l_large_05 = f_screenshake_ambient_add( 0.25, DEF_R_SCREENSHAKE_AMBIENT_INTENSITY_HIGH(), -1.0, -1, -2.75, 'sound\environments\solo\m010\ambience\explosions\amb_m10_explosions_large_05', 0.0, 3, "amb_m10_explosions_large_05" );
		end
	else
		l_large_01 = f_screenshake_ambient_remove( l_large_01 );
		l_large_02 = f_screenshake_ambient_remove( l_large_02 );
		l_large_03 = f_screenshake_ambient_remove( l_large_03 );
		l_large_04 = f_screenshake_ambient_remove( l_large_04 );
		l_large_05 = f_screenshake_ambient_remove( l_large_05 );
	end

	// medium
	if ( (s_layer >= DEF_S_AMBIENTSHAKE_STATE_BEACON_END) and (s_layer <= DEF_S_AMBIENTSHAKE_STATE_MAINTENANCE) ) then
		if ( l_medium_01 == 0 ) then
			l_medium_01 = f_screenshake_ambient_add( 0.20, DEF_R_SCREENSHAKE_AMBIENT_INTENSITY_MED(), -0.475, -1, -4.0, 'sound\environments\solo\m010\ambience\explosions\amb_m10_explosions_medium_01', 0.0, 1, "amb_m10_explosions_medium_01" );
		end
		if ( l_medium_02 == 0 ) then
			l_medium_02 = f_screenshake_ambient_add( 0.20, DEF_R_SCREENSHAKE_AMBIENT_INTENSITY_MED(), 0.0, -1, -3.5, 'sound\environments\solo\m010\ambience\explosions\amb_m10_explosions_medium_02', 0.0, 1, "amb_m10_explosions_medium_02" );
		end
		if ( l_medium_03 == 0 ) then
			l_medium_03 = f_screenshake_ambient_add( 0.20, DEF_R_SCREENSHAKE_AMBIENT_INTENSITY_MED(), 0.0, -1, -2.25, 'sound\environments\solo\m010\ambience\explosions\amb_m10_explosions_medium_03', 0.0, 1, "amb_m10_explosions_medium_03" );
		end
	else
		l_medium_01 = f_screenshake_ambient_remove( l_medium_01 );
		l_medium_02 = f_screenshake_ambient_remove( l_medium_02 );
		l_medium_03 = f_screenshake_ambient_remove( l_medium_03 );
	end
		
	// distant
	if ( (s_layer >= DEF_S_AMBIENTSHAKE_STATE_LAB) and (s_layer <= DEF_S_AMBIENTSHAKE_STATE_BEACON_END) ) then
		if ( l_distant_01 == 0 ) then
			l_distant_01 = f_screenshake_ambient_add( 0.15, DEF_R_SCREENSHAKE_AMBIENT_INTENSITY_LOW(), -0.25, -1, -3.0, 'sound\environments\solo\m010\ambience\explosions\amb_m10_explosions_distant_01', 0.0, 2, "amb_m10_explosions_distant_01" );
		end
		if ( l_distant_02 == 0 ) then
			l_distant_02 = f_screenshake_ambient_add( 0.15, DEF_R_SCREENSHAKE_AMBIENT_INTENSITY_LOW(), -0.25, -1, -4.0, 'sound\environments\solo\m010\ambience\explosions\amb_m10_explosions_distant_02', 0.0, 2, "amb_m10_explosions_distant_02" );
		end
		if ( l_distant_03 == 0 ) then
			l_distant_03 = f_screenshake_ambient_add( 0.15, DEF_R_SCREENSHAKE_AMBIENT_INTENSITY_LOW(), -0.0, -1, -0.0, 'sound\environments\solo\m010\ambience\explosions\amb_m10_explosions_distant_03', 0.0, 2, "amb_m10_explosions_distant_03" );
		end
		if ( l_distant_04 == 0 ) then
			l_distant_04 = f_screenshake_ambient_add( 0.15, DEF_R_SCREENSHAKE_AMBIENT_INTENSITY_LOW(), -1.5, -1, -4.0, 'sound\environments\solo\m010\ambience\explosions\amb_m10_explosions_distant_04', 0.0, 2, "amb_m10_explosions_distant_04" );
		end
	else
		l_distant_01 = f_screenshake_ambient_remove( l_distant_01 );
		l_distant_02 = f_screenshake_ambient_remove( l_distant_02 );
		l_distant_03 = f_screenshake_ambient_remove( l_distant_03 );
		l_distant_04 = f_screenshake_ambient_remove( l_distant_04 );
	end
	
end

// XXX keep these until supported
// === cam_shake_player: plays a screenshake
script static void cam_shake_player( player actor, real intensity, real attack, real duration, real decay )
static boolean b_vibrate_controller = TRUE;

	// make sure the player is valid
	if ( object_get_health(actor) > 0 ) then
		//dprint(  "::: cam_shake_player :::" );
	
		// sets the maximum rotations in each direction the shake can impact
		player_effect_set_max_rotation_for_player( actor, (intensity*3), (intensity*3), (intensity*2) );	//XXX tune ranges

		// trigger the effect to start
		player_effect_start_for_player( actor, intensity, attack );

		// start controller rumble
		if ( b_vibrate_controller ) then
			player_effect_set_max_rumble_for_player( actor, intensity, intensity );
		end
		
		if ( duration >= 0 ) then
	
			sleep_s( duration );
	
		end
	
		// stop screenshake if decay is set to 0 or greater.  this allows users to set it to -1 to keep the shake going until they decide to stop it
		if ( decay >= 0 ) then
	
			// stop screen shake
			player_effect_stop_for_player( actor, decay );
			
			// end controller rumble
			if ( b_vibrate_controller ) then
				player_effect_set_max_rumble_for_player( actor, 0, 0 );
			end
			
		end
	
	end
	
end

// === cam_shake_players: plays a screenshake for all the players
script static void cam_shake_players( real intensity, real attack, real duration, real decay )
	//dprint(  "::: cam_shake_players :::" );

	thread( cam_shake_player(player_get(0), intensity, attack, duration, decay) );
	thread( cam_shake_player(player_get(1), intensity, attack, duration, decay) );
	thread( cam_shake_player(player_get(2), intensity, attack, duration, decay) );
	thread( cam_shake_player(player_get(3), intensity, attack, duration, decay) );

end

// === cam_shake_player_volume: plays different intensity camera shakes if the player is or isn't in the volume
script static void cam_shake_player_volume( player actor, trigger_volume tv_shake, real intensity_on, real intensity_off, real attack, real duration, real decay )

	// make sure the player is valid
	if ( object_get_health(actor) > 0 ) then
		//dprint(  "::: cam_shake_player_volume :::" );

		// XXX Add fall off based on distance
		if ( volume_test_object(tv_shake, actor) ) then
	
			cam_shake_player( actor, intensity_on, attack, duration, decay );
	
		else
	
			cam_shake_player( actor, intensity_off, attack, duration, decay );
	
		end

	end

end

// === cam_shake_players_volume: for all players, plays different intensity camera shakes if the player is or isn't in the volume
script static void cam_shake_players_volume( trigger_volume tv_shake, real intensity_on, real intensity_off, real attack, real duration, real decay )
	//dprint(  "::: cam_shake_players_volume :::" );

	thread( cam_shake_player_volume(player_get(0), tv_shake, intensity_on, intensity_off, attack, duration, decay) );
	thread( cam_shake_player_volume(player_get(1), tv_shake, intensity_on, intensity_off, attack, duration, decay) );
	thread( cam_shake_player_volume(player_get(2), tv_shake, intensity_on, intensity_off, attack, duration, decay) );
	thread( cam_shake_player_volume(player_get(3), tv_shake, intensity_on, intensity_off, attack, duration, decay) );

end

// === cam_shake_player_in_volume: When the player enters the volume it will shake while the player remains in it or they die
script static void cam_shake_player_in_volume( player actor, trigger_volume tv_shake, real intensity, real attack, real decay, short s_use_cnt )

	if ( object_get_health(actor) > 0 ) then

		repeat
			sleep_until( volume_test_object(tv_shake, actor), 1 );
			cam_shake_player( actor, intensity, attack, -1, -1 );
			
			sleep_until( (not volume_test_object(tv_shake, actor)) or (object_get_health(actor) <= 0), 1 );
			cam_shake_player( actor, intensity, 0.0, 0.0, decay );
			
			s_use_cnt = s_use_cnt - 1;
		until( s_use_cnt == 0, 1 );

	end

end



// -------------------------------------------------------------------------------------------------
// ZONE SET: SETUP
// -------------------------------------------------------------------------------------------------
// VARIABLES

// FUNCTIONS
script startup f_zoneset_init()
	thread( f_zoneset_setup() );
end

// === fx_zoneset_setup::: Switches areas fx
script static void f_zoneset_setup()
static short s_zoneset_setup_index = -1;
	
	// call pre-mission started zoneset_setup functions
	f_zoneset_cin_opening( S_zoneset_cin_opening, current_zone_set_fully_active(), s_zoneset_setup_index );

	// wait for the game to start
	sleep_until( b_mission_started, 1);
	
	// call general zoneset_setup functions
	f_zoneset_00_cryo_02_hallway_04_armory( S_zoneset_00_cryo_02_hallway_04_armory, current_zone_set_fully_active(), s_zoneset_setup_index );
	f_zoneset_06_hallway_08_elevator_10_elevator_12_observatory( S_zoneset_06_hallway_08_elevator_10_elevator_12_observatory, current_zone_set_fully_active(), s_zoneset_setup_index );
	f_zoneset_08_elevator_14_elevator_16_lookout( S_zoneset_08_elevator_14_elevator_16_lookout, current_zone_set_fully_active(), s_zoneset_setup_index );
	f_zoneset_16_lookout_18_elevator_20_cafe( S_zoneset_16_lookout_18_elevator_20_cafe, current_zone_set_fully_active(), s_zoneset_setup_index );
	f_zoneset_24_corner_26_box_28_airlock( S_zoneset_24_corner_26_box_28_airlock, current_zone_set_fully_active(), s_zoneset_setup_index );
	f_zoneset_28_airlock_30_beacons( S_zoneset_28_airlock_30_beacons, current_zone_set_fully_active(), s_zoneset_setup_index );
	f_zoneset_32_broken_34_maintenance( S_zoneset_32_broken_34_maintenance, current_zone_set_fully_active(), s_zoneset_setup_index );
	f_zoneset_36_hallway_38_vehicle_40_debris( S_zoneset_36_hallway_38_vehicle_40_debris, current_zone_set_fully_active(), s_zoneset_setup_index );
	f_zoneset_40_debris_42_skybox( S_zoneset_40_debris_42_skybox, current_zone_set_fully_active(), s_zoneset_setup_index );
	
	// get the current zone set
	s_zoneset_setup_index = current_zone_set_fully_active();

	// wait for the zone set to switch	
	sleep_until( current_zone_set_fully_active() != s_zoneset_setup_index, 1 );
	
	// resetup the function again for the new area
	thread( f_zoneset_setup() );

end


// === fx_zoneset_00_cryo_02_hallway_04_armory::: Startup general zone set setup functions
script static void f_zoneset_00_cryo_02_hallway_04_armory( short s_zoneset_check, short s_zoneset_loading_index, short s_zoneset_unloading_index )
	if ( (s_zoneset_check == s_zoneset_loading_index) or (s_zoneset_check == s_zoneset_unloading_index) ) then
		thread( fx_zoneset_00_cryo_02_hallway_04_armory(s_zoneset_loading_index, s_zoneset_unloading_index) );
	end
end
// === fx_zoneset_06_hallway_08_elevator_10_elevator_12_observatory::: Startup general zone set setup functions
script static void f_zoneset_06_hallway_08_elevator_10_elevator_12_observatory( short s_zoneset_check, short s_zoneset_loading_index, short s_zoneset_unloading_index )
	if ( (s_zoneset_check == s_zoneset_loading_index) or (s_zoneset_check == s_zoneset_unloading_index) ) then
		thread( fx_zoneset_06_hallway_08_elevator_10_elevator_12_observatory(s_zoneset_loading_index, s_zoneset_unloading_index) );
	end
end

// === fx_zoneset_08_elevator_14_elevator_16_lookout::: Startup general zone set setup functions
script static void f_zoneset_08_elevator_14_elevator_16_lookout( short s_zoneset_check, short s_zoneset_loading_index, short s_zoneset_unloading_index )
	if ( (s_zoneset_check == s_zoneset_loading_index) or (s_zoneset_check == s_zoneset_unloading_index) ) then
		thread( fx_zoneset_08_elevator_14_elevator_16_lookout(s_zoneset_loading_index, s_zoneset_unloading_index) );
	end
end

// === fx_zoneset_16_lookout_18_elevator_20_cafe::: Startup general zone set setup functions
script static void f_zoneset_16_lookout_18_elevator_20_cafe( short s_zoneset_check, short s_zoneset_loading_index, short s_zoneset_unloading_index )
	if ( (s_zoneset_check == s_zoneset_loading_index) or (s_zoneset_check == s_zoneset_unloading_index) ) then
		thread( fx_zoneset_16_lookout_18_elevator_20_cafe(s_zoneset_loading_index, s_zoneset_unloading_index) );
	end
end
// === fx_zoneset_24_corner_26_box_28_airlock::: Startup general zone set setup functions
script static void f_zoneset_24_corner_26_box_28_airlock( short s_zoneset_check, short s_zoneset_loading_index, short s_zoneset_unloading_index )
	if ( (s_zoneset_check == s_zoneset_loading_index) or (s_zoneset_check == s_zoneset_unloading_index) ) then
		thread( fx_zoneset_24_corner_26_box_28_airlock(s_zoneset_loading_index, s_zoneset_unloading_index) );
	end
end
// === fx_zoneset_28_airlock_30_beacons::: Startup general zone set setup functions
script static void f_zoneset_28_airlock_30_beacons( short s_zoneset_check, short s_zoneset_loading_index, short s_zoneset_unloading_index )
	if ( (s_zoneset_check == s_zoneset_loading_index) or (s_zoneset_check == s_zoneset_unloading_index) ) then
		thread( fx_zoneset_28_airlock_30_beacons(s_zoneset_loading_index, s_zoneset_unloading_index) );
	end
end

// === fx_zoneset_32_broken_34_maintenance::: Startup general zone set setup functions
script static void f_zoneset_32_broken_34_maintenance( short s_zoneset_check, short s_zoneset_loading_index, short s_zoneset_unloading_index )
	if ( (s_zoneset_check == s_zoneset_loading_index) or (s_zoneset_check == s_zoneset_unloading_index) ) then
		thread( fx_zoneset_32_broken_34_maintenance(s_zoneset_loading_index, s_zoneset_unloading_index) );
	end
end
// === fx_zoneset_36_hallway_38_vehicle_40_debris::: Startup general zone set setup functions
script static void f_zoneset_36_hallway_38_vehicle_40_debris( short s_zoneset_check, short s_zoneset_loading_index, short s_zoneset_unloading_index )
	if ( (s_zoneset_check == s_zoneset_loading_index) or (s_zoneset_check == s_zoneset_unloading_index) ) then
		thread( fx_zoneset_36_hallway_38_vehicle_40_debris(s_zoneset_loading_index, s_zoneset_unloading_index) );
	end
end
// === fx_zoneset_40_debris_42_skybox::: Startup general zone set setup functions
script static void f_zoneset_40_debris_42_skybox( short s_zoneset_check, short s_zoneset_loading_index, short s_zoneset_unloading_index )
	if ( (s_zoneset_check == s_zoneset_loading_index) or (s_zoneset_check == s_zoneset_unloading_index) ) then
		thread( fx_zoneset_40_debris_42_skybox(s_zoneset_loading_index, s_zoneset_unloading_index) );
	end
end
// === fx_zoneset_cin_opening::: Startup general zone set setup functions
script static void f_zoneset_cin_opening( short s_zoneset_check, short s_zoneset_loading_index, short s_zoneset_unloading_index )
	if ( (s_zoneset_check == s_zoneset_loading_index) or (s_zoneset_check == s_zoneset_unloading_index) ) then
		thread( fx_zoneset_cin_opening(s_zoneset_loading_index, s_zoneset_unloading_index) );
	end
end

// --- End m10_crash_mission.hsc ---

// --- Begin m10_cryo.hsc ---

// =================================================================================================
// CRYO
// =================================================================================================

// =================================================================================================
// *** GLOBALS ***
// =================================================================================================
//FIX  57 AND 375
//FIX BEACON 141 AND 442 and 444 and 449
//FIX OBSERVATORY 117 AND 313
global short s_cryo_switch_power = 0;
global short s_obj_cryo = 0;
global object g_ics_player_2 = NONE;
global object g_ics_player_3 = NONE;
global object g_ics_player_4 = NONE;
global object g_sc_cryo_tube_2 = NONE;
global object g_sc_cryo_tube_3 = NONE;
global object g_sc_cryo_tube_4 = NONE;
//DEFINE CRYO OBJECTIVES
global short DEF_CORTANA_CONVO = 8;
global short DEF_CORTANA_TAKEN = 9;

global boolean b_training_look_done = FALSE;
global boolean b_cryo_released = FALSE;
global boolean b_look_up = FALSE;
global boolean b_player_exit_cryo = FALSE;

global boolean invert_bool = false;
global boolean b_fud_rumble_small = FALSE;
global boolean b_fud_rumble_big = FALSE;

// =================================================================================================
// =================================================================================================

script dormant f_cryo_init()
	sleep_until (current_zone_set_fully_active() == S_zoneset_00_cryo_02_hallway_04_armory, 1);
	//dprint  ("::: f_cryo_init :::");
//DATA MINE
	data_mine_set_mission_segment ("m10_cryo");
// Staging
	hud_play_global_animtion (screen_fade_in);
	hud_stop_global_animtion (screen_fade_in);
	f_gravity_set( R_gravity_cryo );
	f_zero_g_crate();
//	thread(fx_cryotube_light_hold());
	thread(fx_cryo_room_fog());

end

script dormant f_cryo_main()
	sleep_until (current_zone_set_fully_active() == S_zoneset_00_cryo_02_hallway_04_armory, 1);
	sleep_until(b_mission_started == TRUE, 1);
	hud_play_global_animtion (m10_hud_off);
	hud_stop_global_animtion (m10_hud_off);
	g_ics_player = player_get_first_valid();
	g_ics_player_2 = none;
	g_sc_cryo_tube_2 = none;
	if g_ics_player!=player1 then
		g_ics_player_2 = player1;
		g_sc_cryo_tube_2 = sc_cryo_tube_2;
	end
	g_ics_player_3 = none;
	g_sc_cryo_tube_3 = none;
	if g_ics_player!=player2 then
		g_ics_player_3 = player2;
		g_sc_cryo_tube_3 = sc_cryo_tube_3;
	end
	g_ics_player_4 = none;
	g_sc_cryo_tube_4 = none;
	if g_ics_player!=player3 then
		g_ics_player_4 = player3;
		g_sc_cryo_tube_4 = sc_cryo_tube_4;
	end
	
	object_create(fake_holo);
		
	fade_out( 0, 0, 0, 0 );
	//hud_show_radar (FALSE);
	//hud_show_shield (FALSE);
	//hud_show_weapon (FALSE);
	//hud_show_crosshair (FALSE);
	dprint("GIVE STARTING PROFILE");
	f_give_starting_profile();
	effect_new_on_object_marker(environments\solo\m10_crash\fx\screen\fx_cryo_wake_screen.effect, g_ics_player, "" );
	local long show = pup_play_show(cryotube);

		
end

script static void f_make_vulnerable( object player )
	sleep(30);
	object_can_take_damage(player);
end

script static void f_destroy_fake_holo()
	object_destroy(fake_holo);
end

script static void f_give_starting_profile()
	unit_add_equipment (player0, sp_start_mission, TRUE, TRUE);
	unit_add_equipment (player1, sp_start_mission, TRUE, TRUE);
	unit_add_equipment (player2, sp_start_mission, TRUE, TRUE);
	unit_add_equipment (player3, sp_start_mission, TRUE, TRUE);
end

// Accept / Cancel Button 
script static void f_check_choice (player player_num, string_id display_title)
	chud_show_screen_training (player_num, display_title);
	sleep(5);
	unit_action_test_reset (player_num);
	sleep_until	(unit_action_test_context_primary (player_num) or unit_action_test_rotate_weapons (player_num), 1);
	sleep(5);
	//dprint ("player has given input");
	chud_show_screen_training (player_num, "");
	sleep(5);

end

script dormant f_invert_choice() // doesn't invert anything, just unlocks the device
	f_blip_object_for_player (g_ics_player, cryo_switch, "Engage Manual Release");
	device_group_set_immediate(cryo_lock, 1);
end

script dormant f_blip_multi()
	wake (f_blip_p2);
	wake (f_blip_p3);
	wake (f_blip_p4);
end

script dormant f_blip_p2()
	if player_valid(unit(g_ics_player_2)) then
		f_blip_object_for_player (g_ics_player_2, cryo_switch_2, "Engage Manual Release");
		device_group_set_immediate(cryo_lock_2, 1);
	end
end

script dormant f_blip_p3()
	if player_valid(unit(g_ics_player_3)) then
		f_blip_object_for_player (g_ics_player_3, cryo_switch_3, "Engage Manual Release");
		device_group_set_immediate(cryo_lock_3, 1);
	end
end

script dormant f_blip_p4()
	if player_valid(unit(g_ics_player_4)) then
		f_blip_object_for_player (g_ics_player_4, cryo_switch_4, "Engage Manual Release");
		device_group_set_immediate(cryo_lock_4, 1);
	end
end

script static void f_ask_to_confirm (player player_num)                
                
                f_check_choice (player_num, m10_tutorial_choose_setting);
                
                if player_action_test_context_primary() then
                                //dprint ("camera settings accepted");
                                sleep(30*1);       
                                f_set_look_pref (player_num);
                                
                elseif player_action_test_rotate_weapons() then
                                //dprint ("camera settings rejected");
                                sleep(30*1);
                                f_look_rejected (player_num);
                                //chud_show_screen_training (player_num, "");
                end

end

//Look Prefrence Accepted
script static void f_set_look_pref (player player_num)
                chud_show_screen_training (player_num, "");
                sleep (5);
                f_hud_training_timed (player_num, m10_tutorial_set_look, 3);
                sleep (5);
                //NotifyLevel ("look training done");
                b_training_look_done = TRUE;
end

//Look Prefrence Rejected
script static void f_look_rejected (player player_num)
                //dprint ("No I dont like it like that");
                chud_show_screen_training (player_num, "m10_tutorial_set_inverted");
                player_invert_look (player_num);
                sleep (5);
                chud_show_screen_training (player_num, "m10_tutorial_look_around");
                sleep (5);
                
                f_check_choice (player_num, m10_tutorial_choose_setting);
                
                if player_action_test_context_primary() then
                                //dprint ("camera settings accepted");
                                sleep(30*1);       
                                f_set_look_pref (player_num);
                                
                elseif player_action_test_rotate_weapons() then
                                //dprint ("camera settings rejected 2");
                                sleep(30*1);
                                f_look_rejected_2 (player_num);
                end
                
                f_hud_training_timed (player_num, m10_tutorial_set_look, 3);
                
end

script static void f_look_rejected_2 (player player_num)
                //dprint ("No I dont like it like that");
                chud_show_screen_training (player_num, "m10_tutorial_set_inverted");
                player_invert_look (player_num);
                sleep (5);
                chud_show_screen_training (player_num, m10_tutorial_look_around);
                sleep (5);
                f_hud_training_timed (player_num, m10_tutorial_set_look, 3);
                NotifyLevel ("look training done");
                b_training_look_done = TRUE;
//            f_ask_to_confirm (player_num);
                
end




script static void f_wake_cryo_objects()

	object_wake_physics(cr_cryo_01);
	object_wake_physics(cr_cryo_02);
	object_wake_physics(cr_cryo_03);
	object_wake_physics(cr_cryo_04);
	object_wake_physics(cr_cryo_05);
	object_wake_physics(cr_cryo_06);
	object_wake_physics(cr_cryo_07);
	object_wake_physics(cr_cryo_08);
	object_wake_physics(cr_cryo_09);
	object_wake_physics(cr_cryo_10);
	object_wake_physics(cr_cryo_14);
	object_wake_physics(cr_cryo_15);
	object_wake_physics(cr_cryo_16);
	object_wake_physics(cryo_mag);
	sleep (1);

	f_cryo_crate_drop();
end

script static void 	f_wake_cryo_objects_2()
	
repeat
	object_wake_physics(cr_cryo_01);
	object_wake_physics(cr_cryo_02);
	//object_wake_physics(cr_cryo_03);
	object_wake_physics(cr_cryo_04);
	object_wake_physics(cr_cryo_05);
	object_wake_physics(cr_cryo_06);
	object_wake_physics(cr_cryo_07);
	object_wake_physics(cr_cryo_08);
	object_wake_physics(cr_cryo_09);
	object_wake_physics(cr_cryo_10);
	object_wake_physics(cr_cryo_14);
	object_wake_physics(cr_cryo_15);
	object_wake_physics(cr_cryo_16);
	object_wake_physics(cryo_mag);
until (g_cortana_pull_handle == true, 1);

end

script static void f_cryo_crate_drop()
	object_set_velocity(cr_cryo_01, 0, 0.1, 0.1);
	object_set_velocity(cr_cryo_02, 0, 0.1, 0.1);
	object_set_velocity(cr_cryo_03, 0, 0.1, 0.1);
	object_set_velocity(cr_cryo_04, 0, 0.1, 0.1);
	object_set_velocity(cr_cryo_05, 0, 0.1, 0.1);
	object_set_velocity(cr_cryo_06, 0, 0.1, 0.1);
	object_set_velocity(cr_cryo_07, 0, 0.1, 0.1);
	object_set_velocity(cr_cryo_08, 0, 0.1, 0.1);
	object_set_velocity(cr_cryo_09, 0, 0.1, .1);
	object_set_velocity(cr_cryo_10, 0, 0.1, .1);
	object_set_velocity(cr_cryo_14, 0, 0.1, .1);
	object_set_velocity(cr_cryo_15, 0, 0.1, 0.1);
	object_set_velocity(cr_cryo_16, 0, 0.1, 0.1);
	object_set_velocity(cryo_mag, 0, 0.1, 0.1);

end

script static void f_gravity()
	f_wake_cryo_objects();
	f_gravity_set_time( R_gravity_default, 2, FALSE );
	fx_camera_set( NONE );
	sleep (1);
	fx_camera_set( environments\solo\m10_crash\fx\particulates\particulates_moving.effect );
	sleep(2);
	thread(f_wake_cryo_objects_2());
end 

script static void f_zero_g_crate()
	triggerobjs_setvelocity_rand( tv_amb_m10_a01, s_objtype_weapon + s_objtype_crate, 0.25, 0.5, 0.15, 0.25, 0.05, 0.1);
end

// BOOT HUD
script dormant f_hud_boot_up()
	hud_play_global_animtion (m10_hud_on);
	hud_stop_global_animtion (m10_hud_on);
end

script static void f_cryo_ruble_cortana_react()
	thread(sys_screenshake_global_add( 0.3, -0.001, 1.5, -1.5, sfx_cryo_ruble_cortana_react()));
end

script static sound sfx_cryo_ruble_cortana_react()
	sound\environments\solo\m010\scripted\events\m10_cryo_rumble;
end

script static void f_blip_object_for_player (player player_num, object obj, string type)
	chud_track_object_with_priority( obj, f_return_blip_type(type) );
	
	navpoint_track_object_for_player_named (player_num, obj, f_return_blip_type_cui (type));
end

script static void f_hide_cortana( object cor )
	// scale down and fade out cortana over 6 frames
	local real scale=render_hologram_screen_bound_scale;
	render_hologram_screen_bound_scale=scale*1.5; // scale up the bounding box by 50%. otherwise the mini-cortana sticks out of the box a bit
	object_set_scale(cor,0.0001,6);
	sleep(1);
	SetObjectRealVariable(cor,VAR_OBJ_LOCAL_A,0.2);
	sleep(1);
	SetObjectRealVariable(cor,VAR_OBJ_LOCAL_A,0.4);
	sleep(1);
	SetObjectRealVariable(cor,VAR_OBJ_LOCAL_A,0.6);
	sleep(1);
	SetObjectRealVariable(cor,VAR_OBJ_LOCAL_A,0.8);
	sleep(1);
	SetObjectRealVariable(cor,VAR_OBJ_LOCAL_A,1);
	render_hologram_screen_bound_scale=scale;
end

// --- End m10_cryo.hsc ---

// --- Begin m10_end_airlock.hsc ---
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343
//
// Mission: 					m10_crash_end
//	Insertion Points:	start (or icr)	- Beginning
//										ibr							- Broken Floor
//										iea							- explosion alley
//										ivb							- Vehicle Bay
//										iju							- Jump Debris
//										
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343
// variables

// deleted.

// --- End m10_end_airlock.hsc ---

// --- Begin m10_end_brokenfloor.hsc ---
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343
//
// Mission: 					m10_crash_end
//	Insertion Points:	start (or icr)	- Beginning
//										ibr							- Broken Floor
//										iea							- explosion alley
//										ivb							- Vehicle Bay
//										iju							- Jump Debris
//										
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343

// =================================================================================================
// =================================================================================================
// BROKENFLOOR
// =================================================================================================
// =================================================================================================
// variables

// functions
// === f_brokenfloor_init::: Initialize
script dormant f_brokenfloor_init()
	
	// setup cleanup watch
	wake( f_brokenfloor_cleanup );

	sleep_until(current_zone_set_fully_active()==S_zoneset_32_broken_34_maintenance, 1 );
	//dprint( "::: f_brokenfloor_init :::" );

	// initialize sub areas
	wake( f_block_off_airlock );
	wake( f_brokenfloor_entry_init );
	wake( f_brokenfloor_hall_init );
	
	// initialize modules
	wake( f_brokenfloor_AI_init );
	wake( f_brokenfloor_destruction_init );

	// setup checkpoint
	//wake( f_brokenfloor_checkpoint );
	wake( f_brokenfloor_wepracks );

end

script dormant f_block_off_airlock()
	sleep_until(volume_test_players(tv_broken_exit), 1);
	volume_teleport_players_not_inside(tv_broken_teleport_region, flg_broken_teleport);
	object_create(door_block_airlock);
end

// === f_brokenfloor_deinit::: Deinitialize
script dormant f_brokenfloor_deinit()

	// kill functions
	sleep_forever( f_brokenfloor_init );
	sleep_forever( f_brokenfloor_checkpoint );

	// deinitialize sub areas
	wake( f_brokenfloor_entry_deinit );
	wake( f_brokenfloor_hall_deinit );

	// deinitialize modules
	wake( f_brokenfloor_AI_deinit );
	wake( f_brokenfloor_destruction_deinit );

end

// === f_brokenfloor_checkpoint::: Checkpoint
script dormant f_brokenfloor_checkpoint()
	sleep_until( volume_test_players(tv_broken_checkpoint_enter), 1 );
	//dprint( "::: f_brokenfloor_checkpoint-enter :::" );
	
	//datamine
	data_mine_set_mission_segment( "m10_END_brokenfloor_main" );
	
	// checkpoint
	game_save();
	sleep( 1 );

	sleep_until( volume_test_players(tv_broken_checkpoint_exit), 1 );
	//dprint( "::: f_brokenfloor_checkpoint-exit :::" );
	
	// checkpoint
	game_save();
	sleep( 1 );

end

// === f_brokenfloor_wepracks::: Weaponracks
script dormant f_brokenfloor_wepracks()
	sleep_until( object_valid(dm_broken_weprack_open00), 1 );
	//dprint( "::: f_brokenfloor_wepracks-dm_broken_weprack_open00 :::" );
	thread( dm_broken_weprack_open00->open_instant() );
	sleep_until( object_valid(dm_broken_weprack_open01), 1 );
	//dprint( "::: f_brokenfloor_wepracks-dm_broken_weprack_open01 :::" );
	thread( dm_broken_weprack_open01->open_instant() );
	sleep_until( object_valid(dm_broken_weprack_open02), 1 );
	//dprint( "::: f_brokenfloor_wepracks-dm_broken_weprack_open02 :::" );
	thread( dm_broken_weprack_open02->open_instant() );
	sleep_until( object_valid(dm_broken_weprack_open03), 1 );
	//dprint( "::: f_brokenfloor_wepracks-dm_broken_weprack_open03 :::" );
	thread( dm_broken_weprack_open03->open_instant() );
end

// === f_brokenfloor_cleanup::: Cleanup area
script dormant f_brokenfloor_cleanup()
	// XXX
	sleep_until( current_zone_set_fully_active() > S_zoneset_32_broken_34_maintenance, 1 );
	//dprint( "::: f_brokenfloor_cleanup :::" );
	
	// cleanup sub areas
	wake( f_brokenfloor_entry_cleanup );
	wake( f_brokenfloor_hall_cleanup );

	// deinit the area
	wake ( f_brokenfloor_deinit );
	
end

// --- End m10_end_brokenfloor.hsc ---

// --- Begin m10_end_brokenfloor_ai.hsc ---
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343
//
// Mission: 					m10_crash_end
//	Insertion Points:	start (or icr)	- Beginning
//										ibr							- Broken Floor
//										iea							- explosion alley
//										ivb							- Vehicle Bay
//										iju							- Jump Debris
//										
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343

// -------------------------------------------------------------------------------------------------
// BROKENFLOOR: AI: TEST
// -------------------------------------------------------------------------------------------------
/*
script static void test_brokenfloor_ai()
	static short s_state = 0;
	
	if ( s_state == 0 ) then
		ai_place( gr_broken_start );
		wake( f_brokenfloor_destruction_init );
	elseif ( s_state == 2 ) then
		wake( f_brokenfloor_destruction_trigger );
	else
		ai_set_task_condition( ai_broken_start.bsg_home, FALSE );
		cs_run_command_script( sq_broken_start_grunt01, cs_brokenfloor_AI_flee );
		cs_run_command_script( sq_broken_start_grunt02, cs_brokenfloor_AI_flee );
		cs_run_command_script( sq_broken_start_grunt03, cs_brokenfloor_AI_flee );
		cs_run_command_script( sq_broken_start_grunt04, cs_brokenfloor_AI_flee );
		B_brokenfloor_ai_start_active = TRUE;
	end
	s_state = s_state + 1;

end
*/



// -------------------------------------------------------------------------------------------------
// BROKENFLOOR: AI
// -------------------------------------------------------------------------------------------------
// variables

// functions
// === f_brokenfloor_AI_init::: Initialize
script dormant f_brokenfloor_AI_init()
	//dprint( "::: f_brokenfloor_AI_init :::" );

	// initialize modules
	wake( f_brokenfloor_AI_start_init );
	wake( f_maintenance_AI_start_init );

end

// === f_brokenfloor_AI_deinit::: Deinitialize
script dormant f_brokenfloor_AI_deinit()
	//dprint( "::: f_brokenfloor_AI_deinit :::" );

	// kill functions
	sleep_forever( f_brokenfloor_AI_init );
	sleep_forever( f_brokenfloor_AI_cleanup );

	// deinitialize modules
	wake( f_brokenfloor_AI_start_deinit );

end

// === f_brokenfloor_AI_cleanup::: Cleanup
script dormant f_brokenfloor_AI_cleanup()
	dprint( "::: f_brokenfloor_AI_cleanup :::" );
	sleep_until(volume_test_players(tv_broken_ai_deinit), 1);
	ai_kill_silent(gr_broken_start);
	// XXX

end



// -------------------------------------------------------------------------------------------------
// BROKENFLOOR: AI: START
// -------------------------------------------------------------------------------------------------
// variables
global boolean B_brokenfloor_ai_start_active	= FALSE;

// functions
// === f_brokenfloor_AI_start_init::: Initialize
script dormant f_brokenfloor_AI_start_init()
	//dprint( "::: f_brokenfloor_AI_start_init :::" );

	// spawn
	ai_place( gr_broken_start );
	cs_run_command_script( sq_broken_start_grunt01, cs_brokenfloor_AI_flee );
	cs_run_command_script( sq_broken_start_grunt02, cs_brokenfloor_AI_flee );
	cs_run_command_script( sq_broken_start_grunt03, cs_brokenfloor_AI_flee );
	cs_run_command_script( sq_broken_start_grunt04, cs_brokenfloor_AI_flee );

	// setup trigger
	 wake( f_brokenfloor_AI_start_trigger );

end

// === f_brokenfloor_AI_start_trigger::: Trigger the AI to start moving
script dormant f_brokenfloor_AI_start_trigger()
	sleep_until( volume_test_players(tv_broken_checkpoint_enter) or volume_test_players(tv_broken_room_force01) or f_ai_sees_enemy(gr_broken_start) or (volume_test_players(tv_broken_lookat_area) and volume_test_players_lookat(tv_broken_lookat_target, 25.0, 2.5)), 1 );
	//dprint( "::: f_brokenfloor_AI_start_trigger :::" );

	B_brokenfloor_ai_start_active = TRUE;
//	ai_set_task_condition( ai_broken_start.bsg_home, FALSE );

	// xxx store combat checkpoint to kill it
	//f_combat_checkpoint_add( gr_broken_start, 0, TRUE, 1, 15.0, -1.0 );
	game_save();

end

// === f_brokenfloor_AI_start_destruction::: Makes the AI switch to pay attention to the destruction
script dormant f_brokenfloor_AI_start_destruction()
	//dprint( "::: f_brokenfloor_AI_start_destruction :::" );

	cs_run_command_script( gr_broken_start, cs_brokenfloor_AI_destruction );

end

// === f_brokenfloor_AI_start_deinit::: Deinitialize
script dormant f_brokenfloor_AI_start_deinit()
	//dprint( "::: f_brokenfloor_AI_start_deinit :::" );

	// kill functions
	sleep_forever( f_brokenfloor_AI_start_init );

end

// === f_brokenfloor_AI_start_kill::: Kills AI if they fall in this trigger
script dormant f_brokenfloor_AI_start_kill()
	//dprint( "::: f_brokenfloor_AI_start_kill :::" );

	ai_kill( gr_broken_start );
	
end

// === cs_brokenfloor_AI_flee::: Flee towards exit
script command_script cs_brokenfloor_AI_flee()
	//dprint( "cs_brokenfloor_AI_flee" );
	
	sleep_until( B_brokenfloor_ai_start_active, 1 );
	
	cs_abort_on_alert( FALSE );
	cs_abort_on_damage( FALSE );
	cs_push_stance( "FLEE" );
	cs_go_to( ps_broken_start_exit );
	
end

// === cs_brokenfloor_AI_destruction::: Respond to destruction
script command_script cs_brokenfloor_AI_destruction()
	//dprint( "cs_brokenfloor_AI_destruction" );
	
	cs_abort_on_alert( FALSE );
	cs_abort_on_damage( FALSE );
	cs_look( TRUE, ps_broken_start_destruction.main );
	
	if ( volume_test_object(tv_broken_destruction_impact, ai_current_actor) ) then
		//sleep_rand_s( 0.0, 0.25 );
		cs_face( TRUE, ps_broken_start_dive );
		cs_custom_animation( 'objects\characters\storm_grunt\storm_grunt.model_animation_graph', "combat:missile:dive_front", TRUE );
	else
		cs_custom_animation( 'objects\characters\storm_grunt\storm_grunt.model_animation_graph', "combat:unarmed:brace", TRUE );
		if ( f_B_brokenfloor_destruction_active() ) then
			cs_custom_animation( 'objects\characters\storm_grunt\storm_grunt.model_animation_graph', "combat:unarmed:brace", TRUE );
		end
	end
	cs_stop_custom_animation();
	cs_run_command_script( ai_current_actor, cs_brokenfloor_AI_flee );
	
end




// --- End m10_end_brokenfloor_ai.hsc ---

// --- Begin m10_end_brokenfloor_destruction.hsc ---
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343
//
// Mission: 					m10_crash_end
//	Insertion Points:	start (or icr)	- Beginning
//										ibr							- Broken Floor
//										iea							- explosion alley
//										ivb							- Vehicle Bay
//										iju							- Jump Debris
//										
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343

// -------------------------------------------------------------------------------------------------
// BROKENFLOOR: DESTRUCTION: TEST
// -------------------------------------------------------------------------------------------------
/*
script static void test_broken_destruction( real r_pos_final, real r_play_time, real r_pos_step, real r_rewind_time, real r_between_time )
static real r_test_pos = 0.0;

	if ( r_play_time >= 0.0 ) then
		DEF_BROKEN_ROOM_ANIM_TIME = r_play_time;
	end

	wake( f_brokenfloor_destruction_action );

	repeat
		if ( r_pos_step >= 0.0 ) then
			repeat
					r_test_pos = f_brokenfloor_destruction_pos() + r_pos_step;
					sleep_until( f_brokenfloor_destruction_pos() >= r_test_pos, 1 );
					inspect( f_brokenfloor_destruction_pos() );
					set( game_speed, 0.0 );
			until( f_brokenfloor_destruction_pos() >= r_pos_final, 1 );
		end
		sleep_until( f_brokenfloor_destruction_pos() >= r_pos_final, 1 );
		if ( r_rewind_time >= 0.0 ) then
			sleep_s( r_between_time );
			f_brokenfloor_destruction_animate( 0.0, r_rewind_time, 0.1 );
			sleep_until( f_brokenfloor_destruction_pos() == 0.0, 1 );
			sleep_s( r_between_time );
			f_brokenfloor_destruction_animate_default();
		end
	until ( r_rewind_time < 0.0, 1 );

end
*/

//player_action_test_jump to step?
//player_action_test_melee
// reset?

// -------------------------------------------------------------------------------------------------
// BROKENFLOOR: DESTRUCTION
// -------------------------------------------------------------------------------------------------
// variables
global real DEF_BROKEN_ROOM_ANIM_TIME = 6.0; // 12.5
global boolean B_brokenfloor_destruction_active = FALSE;
global long L_brokenfloor_rumble_id = 0;
global boolean b_blip_maintenance = FALSE;
global boolean b_player_passed_exit = FALSE;

// functions
// === f_brokenfloor_destruction_init::: Initialize
script dormant f_brokenfloor_destruction_init()
	thread(f_blip_maintenance());
	thread(f_maintenance_blip_check());
	sleep_until( object_valid(dm_broken_room01) and object_valid(dm_broken_room02) and object_valid(dm_broken_room03), 1 );
	
	// initialize modules
	wake( f_brokenfloor_destruction_trigger );

end

// === f_brokenfloor_destruction_deinit::: Deinitialize
script dormant f_brokenfloor_destruction_deinit()
	//dprint( "::: f_brokenfloor_destruction_deinit :::" );

	// kill functions
	sleep_forever( f_brokenfloor_destruction_init );
	sleep_forever( f_brokenfloor_destruction_trigger );
	sleep_forever( f_brokenfloor_destruction_force );
	sleep_forever( f_brokenfloor_destruction_timer );
	sleep_forever( f_brokenfloor_destruction_action );

end

// === f_brokenfloor_destruction_trigger::: starts the events
script dormant f_brokenfloor_destruction_trigger()
	sleep_until( volume_test_players(tv_broken_enter) or (volume_test_players(tv_broken_lookat_area) and volume_test_players_lookat(tv_broken_lookat_target, 25.0, 2.5)), 1 );
	//dprint( "::: f_brokenfloor_destruction_trigger :::" );

	// soften the trigger
	sleep_rand_s( 0.0, 0.125 );

	B_brokenfloor_destruction_active = TRUE;

	// screenshake
	f_screenshake_ambient_pause( TRUE, FALSE, 0.0 );
	f_mission_screenshakes_ambient_layer_set_inc( DEF_S_AMBIENTSHAKE_STATE_BROKEN );
	L_brokenfloor_rumble_id = f_mission_screenshakes_rumble_med( -0.25 );

	// wake the force trigger
	wake( f_brokenfloor_destruction_force );
	
	// start the timer
	wake( f_brokenfloor_destruction_timer );

end	

// === f_brokenfloor_destruction_force::: force the action to trigger
script dormant f_brokenfloor_destruction_force()

	sleep_until( volume_test_players(tv_broken_room_force01) or (ai_strength(gr_broken_start) <= 0.75) or (volume_test_objects(tv_broken_exit,ai_actors(gr_broken_start))), 1 );
	//dprint( "::: f_brokenfloor_destruction_force :::" );
	sleep_forever( f_brokenfloor_destruction_timer );
	wake( f_brokenfloor_destruction_action );

end	

// === f_brokenfloor_destruction_timer::: waits for timer to trigger
script dormant f_brokenfloor_destruction_timer()
static long l_lookat_timer = 0;
static real r_destruction_delay = real_random_range(4.0, 5.0);
static real r_look_time = 3.0;

	// setup pre-destruction sfx
	thread( sfx_brokenfloor_destruction_pre(r_destruction_delay + r_look_time) );

	// min timer
	sleep_s( r_destruction_delay );
	
	// make max timer for look at trigger
	l_lookat_timer = game_tick_get() + seconds_to_frames( r_look_time );
	sleep_until( (l_lookat_timer <= game_tick_get()) or (volume_test_players(tv_broken_lookat_area) and volume_test_players_lookat(tv_broken_lookat_target, 25.0, 2.5)), 1 );
	
	//dprint( "::: f_brokenfloor_destruction_timer :::" );
	sleep_forever( f_brokenfloor_destruction_force );
	wake( f_brokenfloor_destruction_action );

end	

// === f_brokenfloor_destruction_explosions_secondary::: First set of explosions
script static void f_brokenfloor_destruction_explosions_secondary()
	// XXX trigger from animation

	//dprint( "::: f_brokenfloor_destruction_explosions_secondary :::" );
	sleep_rand_s( 0.1, 0.25 );
	f_explosion_flag_large( flg_broken_destruction_explosion_01a, TRUE, TRUE );
	sleep_rand_s( 0.1, 0.125 );
	f_explosion_flag_large( flg_broken_destruction_explosion_01b, TRUE, TRUE );
	sleep_rand_s( 0.1, 0.25 );
	f_explosion_flag_large( flg_broken_destruction_explosion_02a, TRUE, TRUE );

end

// === f_brokenfloor_destruction_animate::: Plays the destruction
script static void f_brokenfloor_destruction_animate( real r_position, real r_time, real r_blend )
	device_animate_position( dm_broken_room01, r_position, r_time, r_blend, 0, TRUE );
	device_animate_position( dm_broken_room02, r_position, r_time, r_blend, 0, TRUE );
	device_animate_position( dm_broken_room03, r_position, r_time, r_blend, 0, TRUE );
end
script static void f_brokenfloor_destruction_animate_default()
	f_brokenfloor_destruction_animate( 1.0, DEF_BROKEN_ROOM_ANIM_TIME, 0.1 );
end

// === f_brokenfloor_destruction_pos::: Returns the position of the broken floor destruction
script static real f_brokenfloor_destruction_pos()
static real r_pos = 0.0;

	if ( r_pos < 1.0 ) then
		if ( object_valid(dm_broken_room01) ) then
			r_pos = (device_get_position(dm_broken_room01) + device_get_position(dm_broken_room02) + device_get_position(dm_broken_room03))/3;
		elseif ( current_zone_set_fully_active() > S_zoneset_32_broken_34_maintenance ) then
			r_pos = 1.0;
		end
	end
	
	// Returns
	r_pos;
end

// === f_brokenfloor_destruction_started::: Returns if the broken floor destruction has started
script static boolean f_brokenfloor_destruction_started()
	f_brokenfloor_destruction_pos() > 0;
end

// === f_brokenfloor_destruction_action::: Plays the destruction
script dormant f_brokenfloor_destruction_action()
	dprint( "::: f_brokenfloor_destruction_action :::" );

	f_combat_checkpoint_pause( "", TRUE );

	// shake and sfx
	thread( f_screenshake_event_high(-0.75, -1, -2.0, sfx_broken_room_destruction()) );		// XXX make stronger if you're in the room or 3d

	// make AI respond to destruction
	wake( f_brokenfloor_AI_start_destruction );

	// starting explosion
	//dprint( "::: f_brokenfloor_destruction_action-a :::" );
	f_explosion_flag_large( flg_broken_destruction_explosion_00a, TRUE, TRUE );
	sleep_s( 0.25 );

	// destroy the pathing mesh

	// break the floor
	thread( f_brokenfloor_destruction_animate_default() );

	// temporarily do zero gravity
	sleep_until( f_brokenfloor_destruction_pos() >= 0.07125, 1);
	//f_gravity_set( 0.0 );
	// kill the AI
	wake( f_brokenfloor_AI_start_kill );
	thread( triggerobjs_setvelocity_rand(tv_broken_physics, s_objtype_biped + s_objtype_weapon + s_objtype_equipment + s_objtype_crate, 0.75, 2.25, 0.75, 2.25, 0.75, 2.25) );	

	// secondary explosion & kick physics
	sleep_until( f_brokenfloor_destruction_pos() >= 0.175, 1);
	thread( f_brokenfloor_destruction_explosions_secondary() );

	// set real gravity
	//dprint( "::: f_brokenfloor_destruction_action-i:::" );
	sleep_until( f_brokenfloor_destruction_pos() >= 0.375, 1);
	//f_gravity_set_time( R_gravity_end, 1.0, FALSE );
	
	// response VO
	sleep_until( f_brokenfloor_destruction_pos() >= 0.45, 1);
	thread( triggerobjs_wakephysics(tv_broken_physics, 0) );
	wake( f_dialog_BrokenAction_Post );

	dprint( "::: f_brokenfloor_destruction_action-j:::" );
	sleep_until( f_B_brokenfloor_destruction_destroyed(), 1 );
	//dprint( "::: f_brokenfloor_destruction_action-k:::" );
	sfx_end_alarm_set( DEF_S_END_ALARM_STATE_BROKEN_ROOM );
	sleep_rand_s( 0.75, 1.25 );

	// kill the rumble	
	f_screenshake_ambient_pause( FALSE, TRUE, 0.0 );
	L_brokenfloor_rumble_id = f_screenshake_rumble_global_remove( L_brokenfloor_rumble_id, -1, 1.5 );
	
	B_brokenfloor_destruction_active = FALSE;

	f_combat_checkpoint_pause( "", FALSE );

end

script static boolean f_B_brokenfloor_destruction_moving()
	(f_brokenfloor_destruction_pos() > 0.0) and (f_brokenfloor_destruction_pos() < 1.0);
end

script static boolean f_B_brokenfloor_destruction_destroyed()
	(f_brokenfloor_destruction_pos() == 1.0);
end

script static boolean f_B_brokenfloor_destruction_active()
	B_brokenfloor_destruction_active;
end

script static void f_blip_maintenance()
	sleep_until(b_blip_maintenance == TRUE);
	if b_player_passed_exit == FALSE then
		f_blip_flag(flg_maint_blip_door, "default");
		sleep_until(volume_test_players(tv_unblip_maintenance));
		f_unblip_flag(flg_maint_blip_door);
	end
end

script static void f_maintenance_blip_check()
	sleep_until(volume_test_players(tv_maintenance_exit));
	b_player_passed_exit = TRUE;
end



// --- End m10_end_brokenfloor_destruction.hsc ---

// --- Begin m10_end_brokenfloor_entry.hsc ---
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343
//
// Mission: 					m10_crash_end
//	Insertion Points:	start (or icr)	- Beginning
//										ibr							- Broken Floor
//										iea							- explosion alley
//										ivb							- Vehicle Bay
//										iju							- Jump Debris
//										
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343

// -------------------------------------------------------------------------------------------------
// BROKENFLOOR: DESTRUCTION: TEST
// -------------------------------------------------------------------------------------------------
/*
script static void test_broken_blocker_destruction( real r_pos_final, real r_start_time, real r_full_time, real r_pos_step, real r_rewind_time, real r_between_time )
static real r_test_pos = 0.0;
	//dprint( "::: test_broken_blocker_destruction :::" );

	wake( f_brokenfloor_blocker_start );

	repeat
		if ( r_pos_step >= 0.0 ) then
			repeat
					r_test_pos = device_get_position(dm_broken_brokendoor) + r_pos_step;
					sleep_until( device_get_position(dm_broken_brokendoor) >= r_test_pos, 1 );
					inspect( device_get_position(dm_broken_brokendoor) );
					set( game_speed, 0.0 );
			until( device_get_position(dm_broken_brokendoor) >= r_pos_final, 1 );
		end
		sleep_until( device_get_position(dm_broken_brokendoor) >= r_pos_final, 1 );
		
		if ( r_rewind_time >= 0.0 ) then
			sleep_s( r_between_time );
			device_animate_position( dm_broken_brokendoor, 0.0, r_rewind_time, 1.0, 0, TRUE );
			sleep_until( device_get_position(dm_broken_brokendoor) == 0.0, 1 );
			sleep_s( r_between_time );
			dm_broken_blocker01->animate_start( r_start_time );
			sleep_s( r_between_time );
			dm_broken_blocker01->animate_full( r_start_time );
			sleep_s( r_between_time );
		end
	until ( r_rewind_time < 0.0, 1 );

end
*/

// -------------------------------------------------------------------------------------------------
// BROKENFLOOR: ENTRY
// -------------------------------------------------------------------------------------------------
// variables

// functions
// === f_brokenfloor_entry_init::: Initialize
script dormant f_brokenfloor_entry_init()
	//dprint( "::: f_brokenfloor_entry_init :::" );

	// initialize modules
	wake( f_brokenfloor_entry_door_init );
	wake( f_brokenfloor_blocker_init );

end

// === f_brokenfloor_entry_deinit::: Deinitialize
script dormant f_brokenfloor_entry_deinit()
	//dprint( "::: f_brokenfloor_entry_deinit :::" );


	// deinitialize modules
	wake( f_brokenfloor_entry_door_deinit );
	wake( f_brokenfloor_blocker_deinit );

end

// === f_brokenfloor_entry_cleanup::: Cleanup
script dormant f_brokenfloor_entry_cleanup()
	dprint( "::: f_brokenfloor_entry_cleanup :::" );

	// XXX

end



// -------------------------------------------------------------------------------------------------
// BROKENFLOOR: ENTRY: JITTER DOOR
// -------------------------------------------------------------------------------------------------
// variables

// functions
// === f_brokenfloor_entry_door_init::: Initialize
script dormant f_brokenfloor_entry_door_init()
	sleep_until( object_valid(dm_broken_brokendoor), 1 );
	//dprint( "::: f_brokenfloor_entry_door_init :::" );

	// start animating	
	dm_broken_brokendoor->set_jittering( TRUE );
	
end

// === f_end_pathblocker01_deinit::: Deinitialize
script dormant f_brokenfloor_entry_door_deinit()
	//dprint( "::: f_end_pathblocker01_deinit :::" );

	// kill any functions
	sleep_forever( f_brokenfloor_entry_door_init );
	sleep_forever( f_brokenfloor_entry_door_stop );

end

// === f_brokenfloor_entry_door_stop::: start the jitter door
script dormant f_brokenfloor_entry_door_stop()
	//dprint( "::: f_brokenfloor_entry_door_stop :::" );

	if ( object_valid(dm_broken_brokendoor) ) then
		dm_broken_brokendoor->set_jittering( FALSE );
	end
	
	// deinitialize
	wake( f_brokenfloor_entry_door_deinit );

end



// -------------------------------------------------------------------------------------------------
// BROKENFLOOR: ENTRY: BLOCKER
// -------------------------------------------------------------------------------------------------
// variables
global long L_brokenfloor_blocker_rumble_ID = 0;

// functions
// === f_brokenfloor_blocker_init::: Initialize
script dormant f_brokenfloor_blocker_init()
	sleep_until( object_valid(dm_broken_blocker01), 1 );
	//dprint( "::: f_brokenfloor_blocker_init :::" );
	
	wake( f_brokenfloor_blocker_trigger );

end

// === f_brokenfloor_blocker_deinit::: Deinitialize
script dormant f_brokenfloor_blocker_deinit()
	//dprint( "::: f_brokenfloor_blocker_deinit :::" );

	// kill any functions
	sleep_forever( f_brokenfloor_blocker_init );
	sleep_forever( f_brokenfloor_blocker_trigger );
	sleep_forever( f_brokenfloor_blocker_force );
	sleep_forever( f_brokenfloor_blocker_timer );
	sleep_forever( f_brokenfloor_blocker_action );

end

// === f_brokenfloor_blocker_trigger::: Trigger the event
script dormant f_brokenfloor_blocker_trigger()
	sleep_until(  volume_test_players(tv_end_pathblocker01_start), 1 );
	//dprint( "::: f_brokenfloor_blocker_trigger :::" );

	wake( f_brokenfloor_blocker_start );

end

// === f_brokenfloor_blocker_trigger::: Trigger the event
script dormant f_brokenfloor_blocker_start()
	//dprint( "::: f_brokenfloor_blocker_trigger :::" );

	//datamine
	data_mine_set_mission_segment( "m10_END_BrokenFloor_Entry" );

	L_brokenfloor_blocker_rumble_ID = f_mission_screenshakes_rumble_low( -0.125 );

	// setup functions to trigger the action
	wake( f_brokenfloor_blocker_force );
	wake( f_brokenfloor_blocker_timer );

	static long l_timer = game_tick_get() + seconds_to_frames( 2.5 );
	sleep_until( (l_timer < game_tick_get()) or volume_test_players(tv_end_pathblocker01_force) or volume_test_players_lookat(tv_end_pathblocker01_force, 25.0, 5.0), 1 );
	
	// move it a little bit
	dm_broken_blocker01->animate_start( -1 );

end

// === f_brokenfloor_blocker_force::: force the action to trigger
script dormant f_brokenfloor_blocker_force()

	sleep_until( volume_test_players(tv_end_pathblocker01_force), 1 );
	//dprint( "::: f_brokenfloor_blocker_force :::" );
	sleep_forever( f_brokenfloor_blocker_timer );
	wake( f_brokenfloor_blocker_action );

end	

// === f_brokenfloor_blocker_timer::: waits for timer to trigger
script dormant f_brokenfloor_blocker_timer()

	sleep_rand_s( .5, .875 );
	//dprint( "::: f_brokenfloor_blocker_timer :::" );
	sleep_forever( f_brokenfloor_blocker_force );
	wake( f_brokenfloor_blocker_action );

end	

// === f_brokenfloor_blocker_action::: Makes the pathblocker animate
script dormant f_brokenfloor_blocker_action()
	//dprint( "::: f_brokenfloor_blocker_action :::" );

	// create an explosion
	f_explosion_flag_large( flg_end_start_pathblocker01, TRUE, TRUE );
	sleep_s( 0.25 );
		
	thread( f_screenshake_event_high(-0.75, -1, -1.25, sfx_broken_path_blocker()) );		// XXX make 3d
	//print(":shakeshakeshake:");
	//camera_shake_all_coop_players( 0.2, 0.2, 1, 0.1);
	
	// animate the device
	dm_broken_blocker01->animate_full( -1 );
	
	// stop the jitter door
	wake( f_brokenfloor_entry_door_stop );
	
	// star fire	
	effect_new( "environments\solo\m10_crash\fx\fire\fire_wall_burning_close.effect", "fx_32_fire_blocker");
	effect_new( "environments\solo\m10_crash\fx\fire\fire_interior.effect", "fx_32_fire_blocker1");
	thread (f_do_fire_damage_on_trigger( tv_fire_broken ));

	sleep_rand_s( 0.5, 1.25 );
	L_brokenfloor_blocker_rumble_ID = f_screenshake_rumble_global_remove( L_brokenfloor_blocker_rumble_ID, -1, 0.5 );
	
	// cleanup the sub area
	wake( f_brokenfloor_blocker_deinit );
	
end

// --- End m10_end_brokenfloor_entry.hsc ---

// --- Begin m10_end_brokenfloor_hall.hsc ---
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343
//
// Mission: 					m10_crash_end
//	Insertion Points:	start (or icr)	- Beginning
//										ibr							- Broken Floor
//										iea							- explosion alley
//										ivb							- Vehicle Bay
//										iju							- Jump Debris
//										
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343

// -------------------------------------------------------------------------------------------------
// BROKENFLOOR: DESTRUCTION: TEST
// -------------------------------------------------------------------------------------------------
/*
script static void test_broken_hall_destruction( real r_pos_final, real r_hall_time, real r_ceiling_time, real r_pos_step, real r_rewind_time, real r_between_time )
static real r_test_floor_pos = 0.0;
static real r_test_ceiling_pos = 0.0;
	//dprint( "::: test_broken_hall_destruction :::" );

	wake( f_brokenfloor_hall_init );
	wake( f_brokenfloor_hall_ceiling_action );
	wake( f_brokenfloor_hall_floor_action );

	repeat
		if ( r_pos_step >= 0.0 ) then
			repeat
					r_test_ceiling_pos = device_get_position(dm_broken_ceiling01) + r_pos_step;
					r_test_floor_pos = device_get_position(dm_broken_hall01) + r_pos_step;
					sleep_until( (device_get_position(dm_broken_ceiling01) >= r_test_ceiling_pos) and (device_get_position(dm_broken_hall01) >= r_test_floor_pos), 1 );
					inspect( device_get_position(dm_broken_hall01) );
					inspect( device_get_position(dm_broken_ceiling01) );
					set( game_speed, 0.0 );
			until( (device_get_position(dm_broken_hall01) >= r_pos_final) and (device_get_position(dm_broken_ceiling01) >= r_pos_final), 1 );
		end
		sleep_until( (device_get_position(dm_broken_hall01) >= r_pos_final) and (device_get_position(dm_broken_ceiling01) >= r_pos_final), 1 );
		if ( r_rewind_time >= 0.0 ) then
			sleep_s( r_between_time );
			device_animate_position( dm_broken_hall01, 0.0, r_rewind_time, 1.0, 0, TRUE );
			device_animate_position( dm_broken_ceiling01, 0.0, r_rewind_time, 1.0, 0, TRUE );
			f_brokenfloor_hall_ceiling_attach();
			sleep_s( r_between_time );
			dm_broken_hall01->animate_full( r_hall_time );
			dm_broken_ceiling01->animate_full( r_ceiling_time );
		end
	until ( r_rewind_time < 0.0, 1 );

end
*/
// -------------------------------------------------------------------------------------------------
// BROKENFLOOR: HALL
// -------------------------------------------------------------------------------------------------
// variables
global short S_brokenfloor_hall_actions = 0;
global long L_brokenfloor_hall_rumble_low_ID = 0;
global long L_brokenfloor_hall_rumble_med_ID = 0;
// XXX replace 2 with 1 rumble trigger

// functions
// === f_brokenfloor_hall_init::: Initialize
script dormant f_brokenfloor_hall_init()
	//dprint( "::: f_brokenfloor_hall_init :::" );

	// initialize modules
	wake( f_brokenfloor_hall_ceiling_init );
	wake( f_brokenfloor_hall_floor_init );
	wake( f_brokenfloor_hall_post_init );
	
	// setup trigger
	wake( f_brokenfloor_hall_cleanup );
	wake( f_brokenfloor_hall_trigger );
	
end

// === f_brokenfloor_hall_deinit::: Deinitialize
script dormant f_brokenfloor_hall_deinit()
	//dprint( "::: f_brokenfloor_hall_deinit :::" );

	// kill functions
	sleep_forever( f_brokenfloor_hall_init );
	sleep_forever( f_brokenfloor_hall_cleanup );
	sleep_forever( f_brokenfloor_hall_trigger );
	sleep_forever( f_brokenfloor_hall_action );
	
	// deinitialize modules
	wake( f_brokenfloor_hall_ceiling_deinit );
	wake( f_brokenfloor_hall_floor_deinit );
	wake( f_brokenfloor_hall_post_deinit );

end

// === f_brokenfloor_hall_cleanup::: Cleanup
script dormant f_brokenfloor_hall_cleanup()
	dprint( "::: f_brokenfloor_hall_cleanup :::" );

	// XXX

end

// === f_brokenfloor_hall_trigger::: Triggers the event
script dormant f_brokenfloor_hall_trigger()
	sleep_until( volume_test_players(tv_breakinghallway_start), 1 );
	//dprint( "::: f_brokenfloor_hall_trigger :::" );

	//datamine
	data_mine_set_mission_segment( "m10_END_BrokenFloor_Hall" );

	// soften the trigger
	sleep_rand_s( 0.1, 0.25 );										

	// start the action
	wake( f_brokenfloor_hall_action );
	
	sleep( 1 );
	sleep_until( volume_test_players(tv_breakinghallway_area), 1 );
	if ( L_brokenfloor_hall_rumble_low_ID != 0 ) then
		L_brokenfloor_hall_rumble_low_ID = f_mission_screenshakes_rumble_low( -0.25 );
	end

end

// === f_brokenfloor_hall_action::: plays the action
script dormant f_brokenfloor_hall_action()

	// rumble
	L_brokenfloor_hall_rumble_low_ID = f_mission_screenshakes_rumble_low( -0.25 );
	
	// start the ceiling timer
	wake( f_brokenfloor_hall_ceiling_timer );

	// wait for all the actions to have triggered
	sleep_until( S_brokenfloor_hall_actions == 0, 1);

	// play dialog
	
	

	// soften the shutdown
	sleep_rand_s( 0.125, 0.225 );

	L_brokenfloor_hall_rumble_med_ID = f_screenshake_rumble_global_remove( L_brokenfloor_hall_rumble_med_ID, -1, 0.0 );
	L_brokenfloor_hall_rumble_low_ID = f_screenshake_rumble_global_remove( L_brokenfloor_hall_rumble_low_ID, -1, 0.5 );

end



// -------------------------------------------------------------------------------------------------
// BROKENFLOOR: HALL: CEILING
// -------------------------------------------------------------------------------------------------
// === f_brokenfloor_hall_ceiling_init::: Initialize
script dormant f_brokenfloor_hall_ceiling_init()
	sleep_until( object_valid(dm_broken_ceiling01), 1 );
	//dprint( "::: f_brokenfloor_hall_ceiling_init :::" );

	// increment action count
	S_brokenfloor_hall_actions = S_brokenfloor_hall_actions + 1;
	
	// attach monitors
	f_brokenfloor_hall_ceiling_attach();

	// setup force trigger
	wake( f_brokenfloor_hall_ceiling_force );

end

// === f_brokenfloor_hall_ceiling_attach::: Attach monitors to the ceiling
script static void f_brokenfloor_hall_ceiling_attach()
static long l_ceiling_thread = 0;
static long l_hall_thread = 0;
	//dprint( "::: f_brokenfloor_hall_ceiling_attach :::" );

	// attach monitor 01
	sleep_until( object_valid(cr_broken_ceiling01_monitor01), 1 );
	objects_physically_attach(dm_broken_ceiling01, "front_monitor_marker", cr_broken_ceiling01_monitor01, "monitor_marker" );
	if ( l_ceiling_thread != 0 ) then
		kill_thread( l_ceiling_thread );
		l_ceiling_thread = 0;
	end
	l_ceiling_thread = thread(dm_broken_ceiling01->front_monitor_detach(cr_broken_ceiling01_monitor01) );

	// attach monitor 02
	sleep_until( object_valid(cr_broken_ceiling01_monitor02), 1 );
	objects_physically_attach(dm_broken_ceiling01, "rear_monitor_marker", cr_broken_ceiling01_monitor02, "monitor_marker" );
	if ( l_hall_thread != 0 ) then
		kill_thread( l_hall_thread );
		l_hall_thread = 0;
	end
	l_hall_thread = thread(dm_broken_ceiling01->rear_monitor_detach(cr_broken_ceiling01_monitor02) );

end

// === f_brokenfloor_hall_ceiling_deinit::: Deinitialize
script dormant f_brokenfloor_hall_ceiling_deinit()

	// cleaning up, decrement counter
	S_brokenfloor_hall_actions = S_brokenfloor_hall_actions - 1;

	// kill functions
	sleep_forever( f_brokenfloor_hall_ceiling_init );
	sleep_forever( f_brokenfloor_hall_ceiling_force );
	sleep_forever( f_brokenfloor_hall_ceiling_timer );
	sleep_forever( f_brokenfloor_hall_ceiling_action );

end

// === f_brokenfloor_hall_ceiling_force::: force the action to trigger
script dormant f_brokenfloor_hall_ceiling_force()
	sleep_until( volume_test_players(tv_breakinghall01_ceiling_force), 1 );
	//dprint( "::: f_brokenfloor_hall_ceiling_force :::" );
	
	sleep_forever( f_brokenfloor_hall_ceiling_timer );
	wake( f_brokenfloor_hall_ceiling_action );

end	

// === f_brokenfloor_hall_ceiling_timer::: waits for timer to trigger
script dormant f_brokenfloor_hall_ceiling_timer()

	sleep_rand_s( 0.0, 0.125 );
	sleep_forever( f_brokenfloor_hall_ceiling_force );
	wake( f_brokenfloor_hall_ceiling_action );

end	

// === f_brokenfloor_hall_ceiling_action::: Plays the ceiling action
script dormant f_brokenfloor_hall_ceiling_action()

	if ( object_valid(dm_broken_ceiling01) ) then
		// animate
		dm_broken_ceiling01->animate_full( -1 );
	end

	// start the floor timer
	wake( f_brokenfloor_hall_floor_timer );

	// cleanup
	wake( f_brokenfloor_hall_ceiling_deinit );

end



// -------------------------------------------------------------------------------------------------
// BROKENFLOOR: HALL: FLOOR
// -------------------------------------------------------------------------------------------------
// === f_brokenfloor_hall_floor_init::: Initialize
script dormant f_brokenfloor_hall_floor_init()
	sleep_until( object_valid(dm_broken_hall01), 1 );
	//dprint( "::: f_brokenfloor_hall_floor_init :::" );

	// increment action count
	S_brokenfloor_hall_actions = S_brokenfloor_hall_actions + 1;

	// setup force trigger
	wake( f_brokenfloor_hall_floor_force );

end

// === f_brokenfloor_hall_floor_deinit::: Deinitialize
script dormant f_brokenfloor_hall_floor_deinit()
	//dprint( "::: f_brokenfloor_hall_floor_deinit :::" );

	// action triggered, decrement action count
	S_brokenfloor_hall_actions = S_brokenfloor_hall_actions - 1;

	// kill functions
	sleep_forever( f_brokenfloor_hall_floor_init );
	sleep_forever( f_brokenfloor_hall_floor_force );
	sleep_forever( f_brokenfloor_hall_floor_timer );
	sleep_forever( f_brokenfloor_hall_floor_action );

end

// === f_brokenfloor_hall_floor_force::: If player is nearing the end, force the break to happen
script dormant f_brokenfloor_hall_floor_force()

	sleep_until( volume_test_players(tv_breakinghallway_force), 1 );
	//dprint( "::: f_brokenfloor_hall_floor_force :::" );
	sleep_forever( f_brokenfloor_hall_floor_timer );
	wake( f_brokenfloor_hall_floor_action );

end

// === f_brokenfloor_hall_floor_timer::: Timer that triggers the floor break
script dormant f_brokenfloor_hall_floor_timer()

	sleep_rand_s( 2.5, 3.5 );
	//dprint( "::: f_brokenfloor_hall_floor_timer :::" );
	sleep_forever( f_brokenfloor_hall_floor_force );
	wake( f_brokenfloor_hall_floor_action );

end

// === f_brokenfloor_hall_floor_action::: Handles the all the animations, etc. for when the floor breaks
script dormant f_brokenfloor_hall_floor_action()
	//dprint( "::: f_brokenfloor_hall_floor_action :::" );
	
	if ( object_valid(dm_broken_hall01) ) then
		// trigger the explosion at the end of the hallway
		thread( f_explosion_flag_small(flg_breakinghallway_explosion01a, TRUE, FALSE) );
		
		// shake the camera
		thread( f_screenshake_event_med(-0.75, -1, -0.125, sfx_breaking_hallway()) );	// XXX make stronger if you're in the area
		
		// animate the floor to move
		dm_broken_hall01->animate_full( -1 );
	end

	// post explosion
	wake( f_brokenfloor_hall_post_timer );

	// cleanup
	wake( f_brokenfloor_hall_floor_deinit );

end



// -------------------------------------------------------------------------------------------------
// HALLWAY: POST
// -------------------------------------------------------------------------------------------------
// === f_brokenfloor_hall_post_init::: Module initialization
script dormant f_brokenfloor_hall_post_init()
	//dprint( "::: f_brokenfloor_hall_post_init :::" );

	// increment action count
	S_brokenfloor_hall_actions = S_brokenfloor_hall_actions + 1;

	// setup force trigger
	wake( f_brokenfloor_hall_post_force );

end

// === f_brokenfloor_hall_post_deinit::: Deinitialize
script dormant f_brokenfloor_hall_post_deinit()
	//dprint( "::: f_brokenfloor_hall_post_deinit :::" );

	// cleaning up, decrement counter
	S_brokenfloor_hall_actions = S_brokenfloor_hall_actions - 1;

	// kill functions
	sleep_forever( f_brokenfloor_hall_post_init );
	sleep_forever( f_brokenfloor_hall_post_force );
	sleep_forever( f_brokenfloor_hall_post_timer );
	sleep_forever( f_brokenfloor_hall_post_action );

end

// === f_brokenfloor_hall_post_force::: If player is nearing the end, force the break to happen
script dormant f_brokenfloor_hall_post_force()

	sleep_until( volume_test_players(tv_breakinghallway_force), 1 );
	//dprint( "::: f_brokenfloor_hall_post_force :::" );
	sleep_forever( f_brokenfloor_hall_post_timer );
	wake( f_brokenfloor_hall_post_action );

end

// === f_breakinghall01_post_timer::: If player is nearing the end, force the break to happen
script dormant f_brokenfloor_hall_post_timer()

	sleep_rand_s( 0.1, 0.15 );
	//dprint( "::: f_breakinghall01_post_timer :::" );
	sleep_forever( f_brokenfloor_hall_post_force );
	wake( f_brokenfloor_hall_post_action );

end

// === f_brokenfloor_hall_post_action::: Handles the all the animations, etc. for when the floor breaks
script dormant f_brokenfloor_hall_post_action()
	//dprint( "::: f_brokenfloor_hall_post_action :::" );

	thread( f_explosion_flag_large(flg_breakinghallway_explosion01b, TRUE, TRUE) );

	// cleanup
	wake( f_brokenfloor_hall_post_deinit );

end

// --- End m10_end_brokenfloor_hall.hsc ---

// --- Begin m10_end_maintenance.hsc ---
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343
//
// Mission: 					m10_crash_end
//	Insertion Points:	start (or icr)	- Beginning
//										ibr							- Broken Floor
//										iea							- explosion alley
//										ivb							- Vehicle Bay
//										iju							- Jump Debris
//										
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343

// =================================================================================================
// =================================================================================================
// MAINTENANCE
// =================================================================================================
// =================================================================================================
// variables
global short S_maintenance_loc = -1;	// Don't use this for logic, just to track the status of the players
global long L_checkpoint_combat_ID_maintenance = 0;

// functions
// === f_maintenance_init::: Initialize
script dormant f_maintenance_init()
	
	// setup cleanup watch
	wake (f_brokenfloor_AI_cleanup);
	wake( f_maintenance_cleanup );

	sleep_until( current_zone_set_fully_active() == S_zoneset_32_broken_34_maintenance, 1 );
	//dprint( "::: f_maintenance_init :::" );
	
	// initialize maintenance loc variable
	S_maintenance_loc = 0;

	// initialize sub areas
	wake( f_maintenance_hall_init );
	
	// initialize modules
	wake( f_maintenance_AI_init );
	wake( f_maintenance_destruction_init );
	wake(f_explode_canister_sounds);

	// initialize sub modules
	wake( f_maintenance_lower_init );
	wake( f_maintenance_upper_init );
	
	// setup functions
	wake( f_maintenance_enter );
	wake( f_maintenance_exit );

end

// === f_maintenance_deinit::: Deinitialize
script dormant f_maintenance_deinit()
	//dprint( "::: f_maintenance_deinit :::" );

	// kill functions
	sleep_forever( f_maintenance_init );
	sleep_forever( f_maintenance_exit );

	// deinitialize sub areas
	wake( f_maintenance_hall_deinit );

	// deinitialize modules
	wake( f_maintenance_AI_deinit );
	wake( f_maintenance_destruction_deinit );

	// deinitialize sub modules
	wake( f_maintenance_lower_deinit );
	wake( f_maintenance_upper_deinit );

end

// === f_maintenance_cleanup::: Cleanup area
script dormant f_maintenance_cleanup()
	// XXX
	sleep_until( current_zone_set_fully_active() > S_zoneset_32_broken_34_maintenance, 1 );
	//dprint( "::: f_maintenance_cleanup :::" );
	
	wake ( f_maintenance_ai_cleanup );
	
end

// === f_maintenance_enter::: Entered the area
script dormant f_maintenance_enter()
	sleep_until( volume_test_players(tv_maintenance_lower_start) or volume_test_players(tv_maintenance_upper_start), 1 );
	//dprint( "::: f_maintenance_enter :::" );

	//datamine
	data_mine_set_mission_segment( "m10_END_maintenance_main" );
	
	// setup the combat checkpoint
	//L_checkpoint_combat_ID_maintenance = f_combat_checkpoint_add( gr_maintenance, -1, TRUE, -1, 15.0, -1.0 );
	//game_save();

end

// === f_maintenance_exit: Player is leaving the inittenance area
script dormant f_maintenance_exit()
	sleep_until( volume_test_players(tv_maintenance_exit), 1 );
	//dprint( "::: f_maintenance_exit :::" );
	//thread(f_sprint_tutorial());
	f_unblip_flag(flg_maint_blip_door);
	f_blip_flag(flg_objective_toescapepodbay, "default");
	b_player_passed_exit = TRUE;
	// set split loc progress
	if ( S_maintenance_loc < 3 ) then

		S_maintenance_loc = 3;

		// kill the maintenance combat checkpoint
		thread( f_combat_checkpoint_remove(L_checkpoint_combat_ID_maintenance) );

		// checkpoint
		//game_save();
		sleep( 1 );
		
		// screenshake
		f_mission_screenshakes_ambient_layer_set_inc( DEF_S_AMBIENTSHAKE_STATE_EXPLOSIONALLEY );
		
		if ( not f_B_screenshake_ambient_playing() ) then
			thread( f_screenshake_event_high(-0.5, -1, -3.0, 'sound\environments\solo\m010\ambience\explosions\amb_m10_explosions_large_01') );
			sleep_s( 1.0 );
		end
		
		// VO
	//	wake( f_dialog_Maintenance_End );

	end

end



// -------------------------------------------------------------------------------------------------
// BROKENFLOOR: GENERAL
// -------------------------------------------------------------------------------------------------
// variables

// functions

script static void f_sprint_tutorial()
	
	local real r_time = 0;
	//hud_enable_training(TRUE);
	//hud_set_training_text("m10_sprint_training");
	//hud_show_training_text(TRUE);
	
		r_time = (game_tick_get() + (5 * 30 * game_tick_rate_scalar_get()));
		unit_action_test_reset(player0);
		sleep_until ( r_time <= game_tick_get() or unit_action_test_hero_assist(player0));

	sleep_s(1);

	//hud_show_training_text(FALSE);
	//sound_impulse_start (sfx_tutorial_complete, player0, 1);
	
end


// -------------------------------------------------------------------------------------------------
// MAINTENANCE: LOWER
// -------------------------------------------------------------------------------------------------
// variables
global long l_maintenance_lower_weprack01 = 0;
global long l_maintenance_lower_weprack02 = 0;

// functions
// === f_maintenance_lower_init::: Area master initialization
script dormant f_maintenance_lower_init()
	//dprint( "::: f_maintenance_lower_init :::" );

	// prep the trigger
	wake( f_maintenance_lower_trigger );

	// setup triggers for racks
	/*sleep_until( object_valid(dm_maintenance_lower_wep01a), 1 );
	l_maintenance_lower_weprack01 = thread( dm_maintenance_lower_wep01a->auto_trigger_open(tv_maintenance_lower_wepracks, FALSE, TRUE, FALSE) );
	
	sleep_until( object_valid(dm_maintenance_lower_wep01b), 1 );
	l_maintenance_lower_weprack02 = thread( dm_maintenance_lower_wep01b->auto_trigger_open(tv_maintenance_lower_wepracks, FALSE, TRUE, FALSE) );*/

end

// === f_maintenance_lower_deinit::: Area master cleanup
script dormant f_maintenance_lower_deinit()
	//dprint( "::: f_maintenance_lower_deinit :::" );

	// kill functions
	sleep_forever( f_maintenance_lower_init );
	sleep_forever( f_maintenance_lower_trigger );

end

// === f_maintenance_lower_start::: trigger for lower
script dormant f_maintenance_lower_trigger()
	sleep_until( volume_test_players(tv_maintenance_lower_start), 1 );
	//dprint( "::: f_maintenance_lower_start :::" );

	// set which floor the player is "commited" to
	if ( S_maintenance_loc <= 0 ) then
		S_maintenance_loc = 1;
	end

end

// === f_maintenance_lower_hasplayers::: Returns if there are players in the lower area
script static boolean f_maintenance_lower_hasplayers()
	volume_test_players(tv_maintenance_lower_start) or volume_test_players(tv_maintenance_lower_area);
end



// -------------------------------------------------------------------------------------------------
// MAINTENANCE: UPPER
// -------------------------------------------------------------------------------------------------
// variables

// functions
// === f_maintenance_upper_init::: Split upper area initialization
script dormant f_maintenance_upper_init()
	//dprint( "::: f_maintenance_upper_init :::" );

	// setup any sub modules
	wake( f_maintenance_upper_trigger );

	// setup triggers for racks
	/*sleep_until( object_valid(dm_maintenance_upper_wep01a), 1 );
	thread( dm_maintenance_upper_wep01a->auto_distance_open(-12.5, FALSE) );
	sleep_until( object_valid(dm_maintenance_upper_wep01b), 1 );
	thread( dm_maintenance_upper_wep01b->chain_parent_open(dm_maintenance_upper_wep01a, dm_maintenance_upper_wep01a->close_position(), dm_maintenance_upper_wep01b->S_chain_state_greater()) );

	sleep_until( object_valid(dm_maintenance_upper_wep02a), 1 );
	thread( dm_maintenance_upper_wep02a->auto_distance_open( -12.5, FALSE) );
	sleep_until( object_valid(dm_maintenance_upper_wep02b), 1 );
	thread( dm_maintenance_upper_wep02b->chain_parent_open( dm_maintenance_upper_wep02a, dm_maintenance_upper_wep02a->close_position(), dm_maintenance_upper_wep02b->S_chain_state_greater()) );*/

end

// === f_maintenance_upper_deinit::: Area master cleanup
script dormant f_maintenance_upper_deinit()
	//dprint( "::: f_maintenance_upper_deinit :::" );

	// kill functions
	sleep_forever( f_maintenance_upper_init );
	sleep_forever( f_maintenance_upper_trigger );

end

// === f_maintenance_upper_trigger::: Handles anything for when the player enters the area
script dormant f_maintenance_upper_trigger()
	sleep_until( volume_test_players(tv_maintenance_upper_start), 1 );
	//dprint( "::: f_maintenance_upper_trigger :::" );

	// set which floor the player is "commited" to
	if ( S_maintenance_loc <= 0 ) then
		S_maintenance_loc = 2;
	end

end

// === f_maintenance_upper_hasplayers::: Returns if there are players in the upper area
script static boolean f_maintenance_upper_hasplayers()
	volume_test_players(tv_maintenance_upper_start) or volume_test_players(tv_maintenance_upper_area);
end


// --- End m10_end_maintenance.hsc ---

// --- Begin m10_end_maintenance_ai.hsc ---
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343
//
// Mission: 					m10_crash_end
//	Insertion Points:	start (or icr)	- Beginning
//										ibr							- Broken Floor
//										iea							- explosion alley
//										ivb							- Vehicle Bay
//										iju							- Jump maintenance_AI
//										
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343

// -------------------------------------------------------------------------------------------------
// MAINTENANCE: AI
// -------------------------------------------------------------------------------------------------
// variables
global boolean b_maintenance_AI_start_enabled 							= TRUE;
global boolean b_maintenance_AI_room_enabled 								= TRUE;
global boolean b_maintenance_AI_upper_enabled 							= TRUE;
global boolean b_maintenance_AI_lower_enabled 							= TRUE;


// functions
// === f_maintenance_AI_init::: Initialize
script dormant f_maintenance_AI_init()
	dprint( "::: f_maintenance_AI_init :::" );

	// initialize sub modules
	wake( f_maintenance_AI_start_init );
	wake( f_maintenance_AI_room_init );

end

// === f_maintenance_AI_deinit::: Deinitialize
script dormant f_maintenance_AI_deinit()
	//dprint( "::: f_maintenance_AI_deinit :::" );

	// deinitialize sub modules
	wake( f_maintenance_AI_start_deinit );
	wake( f_maintenance_AI_room_deinit );

end

// === f_maintenance_ai_cleanup::: Cleanup
script dormant f_maintenance_ai_cleanup()
	//dprint( "::: f_maintenance_ai_cleanup :::" );
	
	ai_kill( gr_maintenance );
	
end



// -------------------------------------------------------------------------------------------------
// MAINTENANCE: AI: START
// -------------------------------------------------------------------------------------------------
// variables

// functions
// === f_maintenance_AI_start_init::: Initialize
script dormant f_maintenance_AI_start_init()
	//dprint( "::: f_maintenance_AI_start_init :::" );

	// initialize sub modules
	if( b_maintenance_AI_start_enabled ) then
		//wake( f_maintenance_AI_start_upper_init );
		wake( f_maintenance_AI_start_lower_init );
	end

end

// === f_maintenance_AI_start_deinit::: Deinitialize
script dormant f_maintenance_AI_start_deinit()
	//dprint( "::: f_maintenance_AI_start_deinit :::" );

	// deinitialize sub modules
	sleep_forever( f_maintenance_AI_start_init );

end

// -------------------------------------------------------------------------------------------------
// MAINTENANCE: AI: START: UPPER
// -------------------------------------------------------------------------------------------------
// variables
global short S_maintenance_start_warnings = 0;

// functions
// === f_maintenance_AI_start_upper_init::: Initialize
//script dormant f_maintenance_AI_start_upper_init()
//	//dprint( "::: f_maintenance_AI_start_upper_init :::" );
//
////	// initialize sub modules
////	if ( b_maintenance_AI_upper_enabled ) then
////		ai_place( sq_maintenance_start_upper );
////	end
//
//end

//// === f_maintenance_AI_start_upper_deinit::: Deinitialize
//script dormant f_maintenance_AI_start_upper_deinit()
//	//dprint( "::: f_maintenance_AI_start_upper_deinit :::" );
//
//	// deinitialize sub modules
//	wake( f_maintenance_AI_start_upper_init );
//
//end

// === msug_start_gate =============================================================================
// === f_B_maintenance_AI_msug_start_CONDITION::: Conditions
script static boolean f_B_maintenance_AI_msug_start_CONDITION()
	( not f_B_brokenfloor_destruction_destroyed() ) and ( not volume_test_players(tv_maintenance_start_grunt_break) ) and ( current_zone_set_fully_active() < S_zoneset_32_broken_34_maintenance );
end

// --- msug_start -----------------------------------------------------------------------------
// === cs_maintenance_AI_start_msusg_wave::: ai
script command_script cs_maintenance_AI_start_msusg_wave()
	
	repeat
		cs_abort_on_alert( FALSE );
		cs_abort_on_damage( TRUE );
	
		if ( volume_test_objects(tv_maintenance_start_grunt_wave, ai_get_object(ai_current_actor)) ) then
			//dprint( "::: cs_maintenance_AI_start_msusg_wave: A :::" );
			cs_stationary_face( TRUE, ps_maintenance_start_upper.wave_face );
			cs_custom_animation( 'objects\characters\storm_grunt\storm_grunt.model_animation_graph', "combat:pistol:taunt:var4", TRUE );
		else
			//dprint( "::: cs_maintenance_AI_start_msusg_wave: B :::" );
			cs_stop_custom_animation();
			cs_go_to_and_face( ps_maintenance_start_upper.wave_loc, ps_maintenance_start_upper.wave_face );
		end
	
	until( FALSE, 1 );
		
end

// === cs_maintenance_AI_start_msusg_combat::: ai
script command_script cs_maintenance_AI_start_msusg_combat()
static boolean b_secondary = TRUE;
	//dprint( "::: cs_maintenance_AI_start_msusg_combat: !!!!!!!!!!!!!!!!!!! :::" );

	cs_stop_custom_animation();

	cs_abort_on_alert( FALSE );
	cs_abort_on_damage( FALSE );
	cs_shoot_secondary_trigger( TRUE );
	
end

// --- msug_transition -----------------------------------------------------------------------------
// === XXX::: XXX
script command_script cs_maintenance_AI_start_msug_transition()


//( not f_B_brokenfloor_destruction_destroyed() ) and ( not volume_test_players(tv_maintenance_start_grunt_break) ) and ( current_zone_set_fully_active() < S_zoneset_32_broken_34_maintenance );
	dprint( "------------------------------------------------------------" );
	dprint_if( f_B_brokenfloor_destruction_destroyed(), "f_B_brokenfloor_destruction_destroyed()" );
	dprint_if( volume_test_players(tv_maintenance_start_grunt_break), "volume_test_players(tv_maintenance_start_grunt_break)" );
	dprint_if( current_zone_set_fully_active() >= S_zoneset_32_broken_34_maintenance, "current_zone_set_fully_active() >= S_zoneset_32_broken_34_maintenance" );
	dprint( "------------------------------------------------------------" );

	cs_stop_custom_animation();

	cs_abort_on_alert( FALSE );
	cs_abort_on_damage( FALSE );
	cs_stationary_face( TRUE, ps_maintenance_start_upper.warn_face );
	cs_push_stance( "FLEE" );	
	
	repeat
		cs_go_to( ps_maintenance_start_upper.warn_transit, .125 );
	until ( objects_distance_to_point(ai_get_object(ai_current_actor), ps_maintenance_start_upper.warn_transit) < 0.25, 1 );
	cs_push_stance( "" );
	unit_set_current_vitality( ai_current_actor, 1.0, 0.0 );
	cs_go_to_and_face( ps_maintenance_start_upper.warn_transit, ps_maintenance_start_upper.warn_face );


end

// --- msug_warn -----------------------------------------------------------------------------------
// === XXX::: XXX
script static boolean f_B_maintenance_AI_start_msug_warn_CONDITION()
	( not f_B_maintenance_destruction_done() ) and 
	( not B_maintenance_upper_saw_player ) and 
	( not (f_maintenance_lower_hasplayers() and f_ai_is_aggressive(gr_maintenance_lower)) );
end
//// === XXX::: XXX
//script command_script cs_maintenance_AI_start_msug_warn()
//	dprint( "::: cs_maintenance_AI_start_msug_warn: !!!!!!!!!!!!!!!!!!! :::" );
//
//	// cancel the previous task group
//	ai_set_task_condition( ai_maintenance.msug_start_gate, FALSE );
//
//	repeat
//		cs_abort_on_alert( FALSE );
//		cs_abort_on_damage( FALSE );
//	
//		if ( volume_test_objects(tv_maintenance_start_grunt_warn, ai_get_object(ai_current_actor)) ) then
//		
//			dprint( "::: cs_maintenance_AI_start_msug_warn: A :::" );
//			begin_random_count(1)
//				cs_stationary_face_object( TRUE, ai_get_object(sq_maintenance_upper_grunt_01) );
//				cs_stationary_face_object( TRUE, ai_get_object(sq_maintenance_upper_grunt_02) );
//				cs_stationary_face_object( TRUE, ai_get_object(sq_maintenance_upper_grunt_03) );
//				cs_stationary_face_object( TRUE, ai_get_object(sq_maintenance_upper_grunt_04) );
//				//cs_stationary_face_object( TRUE, ai_get_object(sq_maintenance_upper_grunt_05) );
//				//cs_stationary_face_object( TRUE, ai_get_object(sq_maintenance_upper_grunt_06) );
//			end
//		
//			cs_custom_animation( 'objects\characters\storm_grunt\storm_grunt.model_animation_graph', "combat:pistol:warn", TRUE );
//			S_maintenance_start_warnings = S_maintenance_start_warnings + 1;
//		else
//			dprint( "::: cs_maintenance_AI_start_msug_warn: B :::" );
//			cs_stop_custom_animation();
//			cs_push_stance( "FLEE" );	
//			cs_go_to_and_face( ps_maintenance_start_upper.warn_loc, ps_maintenance_start_upper.warn_face );
//		end
//
//	until( FALSE, 1 );
//
//end

// === msueg_escape_gate ===========================================================================
// --- msueg_start ---------------------------------------------------------------------------------
// === XXX::: XXX
//script command_script cs_maintenance_AI_start_msueg_start()
//static real r_health = unit_get_health(ai_current_actor);
//
//	cs_abort_on_alert( FALSE );
//	cs_abort_on_damage( FALSE );
////	if ( B_maintenance_upper_saw_player ) then
////		ai_set_task_condition( ai_maintenance.mugg_listen_gate, FALSE );
////	end
//	if ( (unit_get_health(ai_current_actor) >= r_health) and (f_maintenance_upper_hasplayers()) ) then
//		if ( not f_ai_sees_enemy(ai_current_actor) ) then
//			cs_custom_animation( 'objects\characters\storm_grunt\storm_grunt.model_animation_graph', "combat:pistol:taunt:var2", TRUE );
//		end
//		if ( not f_ai_sees_enemy(ai_current_actor) ) then
//			cs_custom_animation( 'objects\characters\storm_grunt\storm_grunt.model_animation_graph', "combat:unarmed:surprise_back", TRUE );
//		end
//	end
//	ai_set_task_condition( ai_maintenance.msueg_start, FALSE );
//	
//end
//
//// === XXX::: XXX
//script command_script cs_maintenance_AI_start_msueg_flee()
//
//	//dprint( "cs_maintenance_AI_start_msug_escape: A" );
//	cs_stop_custom_animation();
//
//	cs_abort_on_alert( FALSE );
//	cs_abort_on_damage( FALSE );
//	
////	ai_set_task_condition( ai_maintenance.mugg_listen_gate, FALSE );
//	cs_push_stance( "FLEE" );	
//	
//	repeat
//		cs_go_to( ps_maintenance_start_upper.escape_wait );
//	until( volume_test_objects(tv_maintenance_start_grunt_escape_wait, ai_get_object(ai_current_actor)), 1 );
//	ai_set_task_condition( ai_maintenance.msueg_flee, FALSE );
//
//	// XXX
//	// play cower animation	
//	// keep out of way of elite
//	
//end
//
//// === XXX::: XXX
//script command_script cs_maintenance_AI_start_msueg_jump()
//static real r_health = unit_get_health( ai_current_actor );
//
//	sleep_until( f_ai_sees_enemy(ai_current_actor) or volume_test_players(tv_maintenance_start_grunt_escape_force) or (unit_get_health(ai_current_actor) < r_health), 1 );
//	dprint_if( f_ai_sees_enemy(ai_current_actor), "f_ai_sees_enemy(ai_current_actor)" );
//	dprint_if( volume_test_players(tv_maintenance_start_grunt_escape_force), "volume_test_players(tv_maintenance_start_grunt_escape_force)" );
//	cs_abort_on_alert( FALSE );
//	cs_abort_on_damage( FALSE );
//	cs_push_stance( "FLEE" );	
//	cs_go_to( ps_maintenance_start_upper.escape_jump );
//
//end













// -------------------------------------------------------------------------------------------------
// MAINTENANCE: AI: START: LOWER
// -------------------------------------------------------------------------------------------------
// variables

// functions
// === f_maintenance_AI_start_lower_init::: Initialize
script dormant f_maintenance_AI_start_lower_init()
	//dprint( "::: f_maintenance_AI_start_lower_init :::" );

	// initialize sub modules
	if ( b_maintenance_AI_lower_enabled ) then
		if ( ai_spawn_count(gr_maintenance_start_lower) == 0 ) then
			ai_place( gr_maintenance_start_lower );
		end
	end

end

// === f_maintenance_AI_start_lower_deinit::: Deinitialize
script dormant f_maintenance_AI_start_lower_deinit()
	//dprint( "::: f_maintenance_AI_start_lower_deinit :::" );

	// deinitialize sub modules
	wake( f_maintenance_AI_start_lower_init );

end

script static boolean f_B_maintenance_AI_mlg_respond_gate_CONDITION()
	(current_zone_set_fully_active() < S_zoneset_32_broken_34_maintenance) or ((not f_ai_is_aggressive(sq_maintenance_upper_elite)) and (not f_maintenance_upper_hasplayers()) and (not f_maintenance_lower_hasplayers()));
end

script command_script cs_maintenance_AI_mlrg_move()
static short s_loc = 0;

	//dprint( "cs_maintenance_AI_mlrg_move: A" );

	cs_abort_on_alert( FALSE );
	cs_abort_on_damage( FALSE );

	s_loc = s_loc + 1;
	if ( s_loc == 1 ) then
		cs_go_to_and_face( ps_maintenance_start_lower.respond_01, ps_maintenance_start_lower.respond_look );
	end
	if ( s_loc == 2 ) then
		cs_go_to_and_face( ps_maintenance_start_lower.respond_02, ps_maintenance_start_lower.respond_look );
	end
	if ( s_loc == 3 ) then
		cs_go_to_and_face( ps_maintenance_start_lower.respond_03, ps_maintenance_start_lower.respond_look );
	end
	
end



// -------------------------------------------------------------------------------------------------
// MAINTENANCE: AI: ROOM
// -------------------------------------------------------------------------------------------------
// variables

// functions
// === f_maintenance_AI_room_init::: Initialize
script dormant f_maintenance_AI_room_init()
	//dprint( "::: f_maintenance_AI_room_init :::" );

//	// initialize sub modules
	if ( b_maintenance_AI_room_enabled ) then
		wake( f_maintenance_AI_room_upper_init );
//		wake( f_maintenance_AI_room_lower_init );
	end

end

// === f_maintenance_AI_room_deinit::: Deinitialize
script dormant f_maintenance_AI_room_deinit()
	//dprint( "::: f_maintenance_AI_room_deinit :::" );

	wake( f_maintenance_AI_room_upper_deinit );
	//wake( f_maintenance_AI_room_lower_deinit );

	// deinitialize sub modules
	//wake( f_maintenance_AI_room_init );

end

// -------------------------------------------------------------------------------------------------
// MAINTENANCE: AI: ROOM: UPPER
// -------------------------------------------------------------------------------------------------
// variables

// functions
// === f_maintenance_AI_room_upper_init::: Initialize
script dormant f_maintenance_AI_room_upper_init()
	sleep_until( f_B_maintenance_destruction_loaded(), 1 );
	dprint( "::: f_maintenance_AI_room_upper_init :::" );

	sleep_until(volume_test_players(tv_enter_maintenence), 1);
	pup_play_show("grunt_maintenence");
	unit_set_maximum_vitality (sq_maintenance_upper_grunt_01.spawn_points_0, 1 ,1);
	unit_set_maximum_vitality (sq_maintenance_upper_grunt_02.spawn_points_0, 1 ,1);
	unit_set_maximum_vitality (sq_maintenance_upper_grunt_03.spawn_points_0, 1 ,1);
	unit_set_maximum_vitality (sq_maintenance_upper_grunt_04.spawn_points_0, 1 ,1);
	
	// HAX
	//objects_attach (sn_maintenence_elite_attach,"", sq_maintenance_upper_elite.boss ,"");

	sleep_until (objects_distance_to_object (m10_maintenance_dropcrate_f01, sq_maintenance_upper_elite.boss) < 2, 1);
	//objects_detach (sn_maintenence_elite_attach, sq_maintenance_upper_elite.boss);

	damage_object (sq_maintenance_upper_elite.boss, body, 10000);
	damage_object (sq_maintenance_upper_grunt_02, body, 10000);
	sleep(15);
	damage_object (fuel_can_u_3, default, 10000);
	sleep(15);
	damage_object (fuel_can_u_2, default, 10000);

	
end

// === f_maintenance_AI_room_upper_deinit::: Deinitialize
script dormant f_maintenance_AI_room_upper_deinit()
	//dprint( "::: f_maintenance_AI_room_upper_deinit :::" );

	// deinitialize sub modules
	wake( f_maintenance_AI_room_upper_init );

end

// -------------------------------------------------------------------------------------------------
// MAINTENANCE: AI: ROOM: UPPER: ELITE
// -------------------------------------------------------------------------------------------------
global boolean B_maintenance_AI_room_upper_elite_berzerk = FALSE;
global boolean B_maintenance_AI_room_upper_elite_hostile = FALSE;

script static boolean f_B_maintenance_AI_mueg_berzerk_CONDITION()
static boolean b_return = FALSE;
static object o_elite = ai_get_object( sq_maintenance_upper_elite );

	b_return = 
	(
		(
			f_maintenance_upper_hasplayers() 
			and
			(
				f_maintenance_destruction_ramp01_destroyed()
				or
				f_maintenance_destruction_ramp02_destroyed()
			)
		)
		or
		(
			f_ai_is_aggressive(sq_maintenance_upper_elite)
			and
			(unit_get_health(sq_maintenance_upper_elite) < 1.0)
		)
		or
		(
			volume_test_players( tv_maintenance_upper_elite_home_area )
			and
			volume_test_objects( tv_maintenance_upper_elite_home_area, o_elite )
		)
		or
		(
			volume_test_players( tv_maintenance_upper_elite_look_from )
			and
			volume_test_players_lookat( tv_maintenance_upper_elite_look_at, 7.5, 5.0 )
		)
		or
		(
			f_maintenance_hall_destruction_active()
		)
	);
	
	// return
	b_return;
end

script command_script cs_maintenance_ai_mueg_berzerk()


	sleep_until( f_ai_is_aggressive(ai_current_actor), 1 );
	dprint( "::: cs_maintenance_ai_mueg_berzerk!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! :::" );
	// make the boss go berzerk
	cs_stop_custom_animation();
	ai_berserk( ai_current_actor, TRUE );
	
end


script static void f_maintenance_ai_mueg_base_combat_ENTRY()
	//dprint( "::: f_maintenance_ai_mueg_base_combat_ENTRY !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! :::" );

	B_maintenance_AI_room_upper_elite_hostile = TRUE;
	
end

//// === cs_maintenance_ai_mueg_base_combat::: AI
//script command_script cs_maintenance_ai_mueg_base_combat()
//	//dprint( "::: cs_maintenance_ai_mueg_base_combat !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! :::" );
//
//	cs_stop_custom_animation();
//	ai_set_task_condition( ai_maintenance.mueg_home, FALSE );
//	
//end

//script static boolean f_B_maintenance_AI_mueg_watch_CONDITION()
//	( (not f_maintenance_upper_hasplayers()) and f_maintenance_lower_hasplayers() ) and ( f_ai_is_aggressive(gr_maintenance_lower) or S_maintenance_start_warnings );
//end
//
//script static void f_maintenance_AI_mueg_watch_ENTRY()
//	dprint( "f_maintenance_AI_mueg_watch_ENTRY" );
//end
//
//script command_script cs_maintenance_AI_mueg_watch()
//	//dprint( "cs_maintenance_AI_mueg_watch !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! " );
//
//	sleep_until( f_ai_is_aggressive(sq_maintenance_upper_elite) or volume_test_players(tv_maintenance_upper_elite_watch_force_exit) or (ai_living_count(sq_maintenance_lower_elite) < ai_spawn_count(sq_maintenance_lower_elite)), 1 );
//	
//	cs_custom_animation( 'objects\characters\storm_elite_ai\storm_elite_ai.model_animation_graph', "combat:rifle:shakefist", TRUE );
//	ai_set_task_condition( ai_maintenance.mueg_cutoff, TRUE );
//	ai_set_task_condition( ai_maintenance.mueg_watch, FALSE );
//	
//end
//
//script static boolean f_B_maintenance_AI_mueg_track_gate_CONDITION()
//
//	( not f_maintenance_upper_hasplayers() ) and f_maintenance_lower_hasplayers();
//end
//
//script command_script cs_maintenance_AI_mueg_cutoff()
//static real r_sheilds = 0.0;
//	
//	cs_stop_custom_animation();
//	repeat
//		cs_abort_on_alert( FALSE );
//		cs_abort_on_damage( FALSE );
//
//		if ( unit_get_shield(ai_current_actor) > r_sheilds ) then
//			r_sheilds = unit_get_shield( ai_current_actor );
//		end
//		
//		//dprint( "cs_maintenance_AI_mueg_cutoff !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! " );
//		if ( volume_test_objects(tv_maintenance_upper_elite_home_area, ai_get_object(ai_current_actor)) ) then
//			cs_go_to( ps_maintenance_upper_elite.wait_transition_01, 1.0 );
//		elseif ( not volume_test_objects(tv_maintenance_upper_elite_transition_02, ai_get_object(ai_current_actor)) ) then
//			cs_go_to( ps_maintenance_upper_elite.wait_transition_02, 1.0 );
//		else
//			cs_go_to( ps_maintenance_upper_elite.wait_loc_01, 1.0 );
//		end
//	until( unit_get_shield(ai_current_actor) < (r_sheilds * 0.25), 1 );
//	
//	//dprint( "cs_maintenance_AI_mueg_cutoff: EXIT!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! " );
//	ai_set_task_condition( ai_maintenance.mueg_berzerk, TRUE );
//	ai_set_task_condition( ai_maintenance.mueg_wait, FALSE );
//	ai_set_task_condition( ai_maintenance.mueg_cutoff, FALSE );
//	ai_set_task_condition( ai_maintenance.mueg_watch, FALSE );
//	ai_set_task_condition( ai_maintenance.mueg_base_combat, FALSE );
//	ai_set_task_condition( ai_maintenance.mueg_home, FALSE );
//end
//
//script command_script cs_maintenance_ai_mueg_wait()
//	//dprint( "cs_maintenance_ai_mueg_wait !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! " );
//
//	cs_abort_on_alert( FALSE );
//	cs_abort_on_damage( TRUE );
//
//	ai_set_task_condition( ai_maintenance.mueg_cutoff, FALSE );
//	ai_set_task_condition( ai_maintenance.mueg_watch, FALSE );
//	ai_set_task_condition( ai_maintenance.mueg_base_combat, FALSE );
//	ai_set_task_condition( ai_maintenance.mueg_home, FALSE );
//
//	cs_go_to( ps_maintenance_upper_elite.wait_look_01 );
//	cs_stationary_face( TRUE, ps_maintenance_upper_elite.wait_look_01 );
//
//	sleep_until( volume_test_players(tv_maintenance_upper_elite_wait_watch), 1 );
//	ai_set_task_condition( ai_maintenance.mueg_berzerk, TRUE );
//
//end
//
//script static boolean f_B_maintenance_AI_mueg_wait_CONDITION()
//	volume_test_objects( tv_maintenance_upper_elite_wait, ai_get_object(sq_maintenance_upper_elite) );
//end

// -------------------------------------------------------------------------------------------------
// MAINTENANCE: AI: ROOM: UPPER: GRUNTS
// -------------------------------------------------------------------------------------------------
global boolean B_maintenance_upper_saw_player = FALSE;

// === cs_maintenance_AI_room_upper_grunt::: AI
script command_script cs_maintenance_AI_room_upper_grunt()

	//dprint( "::: cs_maintenance_AI_room_upper_grunt :::" );

	cs_abort_on_alert( FALSE );
	cs_abort_on_damage( FALSE );
	cs_push_stance( "FLEE" );	
	repeat
		//cs_set_pathfinding_radius( real_random_range(2.0, 5.0) );
		begin_random_count(1)	
			cs_go_to( ps_maintenance_upper_grunts.p0, 0.75 );
			cs_go_to( ps_maintenance_upper_grunts.p1, 0.75 );
			cs_go_to( ps_maintenance_upper_grunts.p2, 0.75 );
			cs_go_to( ps_maintenance_upper_grunts.p3, 0.75 );
			cs_go_to( ps_maintenance_upper_grunts.p4, 0.75 );
			cs_go_to( ps_maintenance_upper_grunts.p5, 0.75 );
			cs_go_to( ps_maintenance_upper_grunts.p6, 0.75 );
			cs_go_to( ps_maintenance_upper_grunts.p7, 0.75 );
			cs_go_to( ps_maintenance_upper_grunts.p8, 0.75 );
			cs_go_to( ps_maintenance_upper_grunts.p9, 0.75 );
			cs_go_to( ps_maintenance_upper_grunts.p10, 0.75 );
			cs_go_to( ps_maintenance_upper_grunts.p11, 0.75 );
			cs_go_to( ps_maintenance_upper_grunts.p12, 0.75 );
			cs_go_to( ps_maintenance_upper_grunts.p13, 0.75 );
			cs_go_to( ps_maintenance_upper_grunts.p14, 0.75 );
			cs_go_to( ps_maintenance_upper_grunts.p15, 0.75 );
			cs_go_to( ps_maintenance_upper_grunts.p16, 0.75 );
			cs_go_to( ps_maintenance_upper_grunts.p17, 0.75 );
			cs_go_to( ps_maintenance_upper_grunts.p18, 0.75 );
			cs_go_to( ps_maintenance_upper_grunts.p19, 0.75 );
			cs_go_to( ps_maintenance_upper_grunts.p20, 0.75 );
			cs_go_to( ps_maintenance_upper_grunts.p21, 0.75 );
			cs_go_to( ps_maintenance_upper_grunts.p22, 0.75 );
			cs_go_to( ps_maintenance_upper_grunts.p23, 0.75 );
			cs_go_to( ps_maintenance_upper_grunts.p24, 0.75 );
			cs_go_to( ps_maintenance_upper_grunts.p25, 0.75 );
			cs_go_to( ps_maintenance_upper_grunts.p26, 0.75 );
		end
	until ( FALSE, 1 );
	
end
//script command_script cs_maintenance_AI_room_upper_listen()
//static short s_loc = 0;
//
//	//dprint( "::: cs_maintenance_AI_room_upper_listen :::" );
//	
//	cs_abort_on_alert( FALSE );
//	cs_abort_on_damage( FALSE );
//	
//	s_loc = s_loc + 1;
//	if ( s_loc == 1 ) then
//		cs_go_to_and_face( ps_maintenance_upper_grunts.listen_01, ps_maintenance_start_upper.warn_loc );
//	end
//	if ( s_loc == 2 ) then
//		cs_go_to_and_face( ps_maintenance_upper_grunts.listen_02, ps_maintenance_start_upper.warn_loc );
//	end
//	if ( s_loc == 3 ) then
//		cs_go_to_and_face( ps_maintenance_upper_grunts.listen_03, ps_maintenance_start_upper.warn_loc );
//	end
//	if ( s_loc == 4 ) then
//		cs_go_to_and_face( ps_maintenance_upper_grunts.listen_04, ps_maintenance_start_upper.warn_loc );
//	end
//	if ( s_loc == 5 ) then
//		cs_go_to_and_face( ps_maintenance_upper_grunts.listen_05, ps_maintenance_start_upper.warn_loc );
//	end
//	
//	if ( not f_ai_is_aggressive(ai_current_actor) ) then
//		repeat
//			cs_stop_custom_animation();
//			//cs_stationary_face_object( TRUE, ai_get_object(sq_maintenance_start_upper) );
//			//dprint( "::: cs_maintenance_AI_room_upper_listen: A :::" );
//			cs_custom_animation( 'objects\characters\storm_grunt\storm_grunt.model_animation_graph', "combat:pistol:brace", TRUE );
//		until( f_ai_is_aggressive(ai_current_actor), 1 );
//	end
//
//	//dprint( "::: cs_maintenance_AI_room_upper_listen: B :::" );
//
//	cs_stop_custom_animation();
//	begin_random_count(1)
//		cs_custom_animation( 'objects\characters\storm_grunt\storm_grunt.model_animation_graph', "combat:pistol:point", TRUE );
//		cs_custom_animation( 'objects\characters\storm_grunt\storm_grunt.model_animation_graph', "combat:pistol:surprise_front", TRUE );
//	end
//	B_maintenance_upper_saw_player = TRUE;
//
//	//dprint( "::: cs_maintenance_AI_room_upper_listen: C :::" );
//	ai_set_task_condition( ai_maintenance.mugg_upper, FALSE );
//
//end


// -------------------------------------------------------------------------------------------------
// MAINTENANCE: AI: ROOM: LOWER
// -------------------------------------------------------------------------------------------------
// variables
//global object O_maintenance_AI_room_elite = NONE;
//global boolean B_maintenace_AI_room_lower_chaos = FALSE;
//
//// functions
//// === f_maintenance_AI_room_lower_init::: Initialize
//script dormant f_maintenance_AI_room_lower_init()
//	//dprint( "::: f_maintenance_AI_room_lower_init :::" );
//
//	// initialize sub modules
//	if ( b_maintenance_AI_lower_enabled ) then
//		if ( ai_spawn_count(sq_maintenance_lower_elite) == 0 ) then
//			ai_place( sq_maintenance_lower_elite );
//		end
//		if ( ai_spawn_count(sq_maintenance_lower_grunts) == 0 ) then
//			ai_place( sq_maintenance_lower_grunts );
//		end
//	end
//	
//end

// === f_maintenance_AI_room_lower_deinit::: Deinitialize
//script dormant f_maintenance_AI_room_lower_deinit()
//	//dprint( "::: f_maintenance_AI_room_lower_deinit :::" );
//
//	// deinitialize sub modules
//	wake( f_maintenance_AI_room_lower_init );
//
//end

//// === cs_maintenance_AI_room_lower_elite_mleg_orders::: AI
//script command_script cs_maintenance_AI_room_lower_elite_mleg_orders()
//static object o_jackel = NONE;
//static real r_order_range = 2.0;
//	//dprint( "::: cs_maintenance_AI_room_lower_elite_mleg_orders :::" );
//
//	O_maintenance_AI_room_elite = ai_get_object( ai_current_actor );
//
//	cs_abort_on_alert( FALSE );
//	cs_abort_on_damage( FALSE );
////	repeat
////		cs_go_to( ps_maintenance_lower_orders.elite );
////		// face
////		begin_random_count(1)	
////			o_jackel = ai_get_object( sq_maintenance_lower_jackal );
////			o_jackel = ai_get_object( sq_maintenance_start_lower_01 );
////			o_jackel = ai_get_object( sq_maintenance_start_lower_02 );
////		end
////		
////		if ( object_get_health(o_jackel) > 0 ) then
////			cs_stop_custom_animation();
////			cs_stationary_face_object ( FALSE, o_jackel );
////
////			if ( objects_distance_to_object(o_jackel, O_maintenance_AI_room_elite) < r_order_range ) then
////				// give order
////				begin_random_count(1)	
////					cs_custom_animation( 'objects\characters\storm_elite_ai\storm_elite_ai.model_animation_graph', "combat:rifle:warn", TRUE );
////					cs_custom_animation( 'objects\characters\storm_elite_ai\storm_elite_ai.model_animation_graph', "combat:rifle:shakefist", TRUE );
////					cs_custom_animation( 'objects\characters\storm_elite_ai\storm_elite_ai.model_animation_graph', "combat:rifle:point", TRUE );
////				end
////			end
////
////		end
////		sleep_s( 0.25 );
////		
////	until ( (ai_living_count(sq_maintenance_lower_jackal) < 0) and (ai_living_count(sq_maintenance_start_lower_01) < 0) and (ai_living_count(sq_maintenance_start_lower_02) < 0), 1 );
//
//	// shut down this task
//	ai_set_task_condition( ai_maintenance.mleg_orders, FALSE );
//	ai_set_task_condition( ai_maintenance.mjg_orders, FALSE );
//	
//end
//script command_script cs_maintenance_AI_room_lower_elite_mleg_combat()
//	//dprint( "::: cs_maintenance_AI_room_lower_elite_mleg_combat :::" );
//
//	ai_set_task_condition( ai_maintenance.mleg_orders, FALSE );
//	ai_set_task_condition( ai_maintenance.mjg_orders, FALSE );
//
//end
//
//script static boolean f_B_maintenance_AI_lower_orders_CONDITION()
//	( not f_ai_is_aggressive(sq_maintenance_lower_elite) ) and ( ai_living_count(sq_maintenance_lower_elite) > 0 ) and ( not B_maintenace_AI_room_lower_chaos );
//end
//
//script command_script cs_maintenance_AI_mjg_orders()
//static short s_loc = 0;
//
//	//dprint( "::: cs_maintenance_AI_mjg_orders :::" );
//	repeat
//		cs_go_to( ps_maintenance_start_lower.orders_transition, 0.25 );
//	until( (current_zone_set_fully_active() == S_zoneset_32_broken_34_maintenance) or (objects_distance_to_point(ai_get_object(ai_current_actor), ps_maintenance_start_lower.orders_transition) >= 0.5), 1 );
//	
//	cs_abort_on_alert( FALSE );
//	cs_abort_on_damage( FALSE );
//	
//	s_loc = s_loc + 1;
//	if ( s_loc == 1 ) then
//		cs_run_command_script( ai_current_actor, cs_maintenance_AI_mjg_orders_01 );
//	end
//	if ( s_loc == 2 ) then
//		cs_run_command_script( ai_current_actor, cs_maintenance_AI_mjg_orders_02 );
//	end
//	if ( s_loc == 3 ) then
//		cs_run_command_script( ai_current_actor, cs_maintenance_AI_mjg_orders_03 );
//	end
//
//end

//script command_script cs_maintenance_AI_mjg_orders_01()
//
//	cs_abort_on_alert( FALSE );
//	cs_abort_on_damage( FALSE );
//	repeat
//		if ( objects_distance_to_point(ai_get_object(ai_current_actor),ps_maintenance_lower_orders.jackal_01) > 0.25 ) then
//			cs_go_to( ps_maintenance_lower_orders.jackal_01, 0.25 );
//		end
//		cs_stationary_face_object( FALSE, O_maintenance_AI_room_elite );
//		sleep_rand_s( 0.5, 1.75 );
//	until ( FALSE, 1 );
//
//end
//
//script command_script cs_maintenance_AI_mjg_orders_02()
//
//	cs_abort_on_alert( FALSE );
//	cs_abort_on_damage( FALSE );
//	repeat
//		if ( objects_distance_to_point(ai_get_object(ai_current_actor),ps_maintenance_lower_orders.jackal_02) > 0.25 ) then
//			cs_go_to( ps_maintenance_lower_orders.jackal_02, 0.25 );
//		end
//		cs_stationary_face_object( FALSE, O_maintenance_AI_room_elite );
//		sleep_rand_s( 0.5, 1.75 );
//	until ( FALSE, 1 );
//
//end
//
//script command_script cs_maintenance_AI_mjg_orders_03()
//
//	cs_abort_on_alert( FALSE );
//	cs_abort_on_damage( FALSE );
//	repeat
//		if ( objects_distance_to_point(ai_get_object(ai_current_actor),ps_maintenance_lower_orders.jackal_03) > 0.25 ) then
//			cs_go_to( ps_maintenance_lower_orders.jackal_03, 0.25 );
//		end
//		cs_stationary_face_object( FALSE, O_maintenance_AI_room_elite );
//		sleep_rand_s( 0.5, 1.75 );
//	until ( FALSE, 1 );
//
//end
//
//script command_script cs_maintenance_AI_mjg_combat()
//	//dprint( "::: cs_maintenance_AI_mjg_combat :::" );
//
//	ai_set_task_condition( ai_maintenance.mleg_orders, FALSE );
//	ai_set_task_condition( ai_maintenance.mjg_orders, FALSE );
//
//end
//
//// === cs_maintenance_AI_room_lower_grunt::: AI
//script command_script cs_maintenance_AI_room_lower_grunt_orders()
//
//	repeat
//		cs_stop_custom_animation();
//		cs_stationary_face_object( FALSE, O_maintenance_AI_room_elite );
//		sleep_rand_s( 0.5, 1.75 );
//		begin_random_count(1)	
//			cs_custom_animation( 'objects\characters\storm_grunt\storm_grunt.model_animation_graph', "combat:pistol:warn", TRUE );
//			cs_custom_animation( 'objects\characters\storm_grunt\storm_grunt.model_animation_graph', "combat:unarmed:brace", TRUE );
//		end
//
//	until ( FALSE, 1 );
//	
//end
//
//// === cs_maintenance_AI_room_lower_grunt::: AI
//script command_script cs_maintenance_AI_room_lower_grunt_panic()
//
//	//dprint( "::: cs_maintenance_AI_room_lower_grunt :::" );
//	cs_abort_on_alert( FALSE );
//	cs_abort_on_damage( FALSE );
//	cs_push_stance( "FLEE" );	
//	repeat
//		if ( (not B_maintenace_AI_room_lower_chaos) and (volume_test_objects(tv_maintenance_lower_area, ai_get_object(ai_current_actor))) ) then
//			B_maintenace_AI_room_lower_chaos = TRUE;
//		end
//	
//		begin_random_count(1)	
//			cs_go_to( ps_maintenance_lower_grunts.p0, 0.75 );
//			cs_go_to( ps_maintenance_lower_grunts.p1, 0.75 );
//			cs_go_to( ps_maintenance_lower_grunts.p2, 0.75 );
//			cs_go_to( ps_maintenance_lower_grunts.p3, 0.75 );
//			cs_go_to( ps_maintenance_lower_grunts.p4, 0.75 );
//			cs_go_to( ps_maintenance_lower_grunts.p5, 0.75 );
//			cs_go_to( ps_maintenance_lower_grunts.p6, 0.75 );
//			cs_go_to( ps_maintenance_lower_grunts.p7, 0.75 );
//			cs_go_to( ps_maintenance_lower_grunts.p8, 0.75 );
//			cs_go_to( ps_maintenance_lower_grunts.p9, 0.75 );
//			cs_go_to( ps_maintenance_lower_grunts.p10, 0.75 );
//			cs_go_to( ps_maintenance_lower_grunts.p11, 0.75 );
//			cs_go_to( ps_maintenance_lower_grunts.p12, 0.75 );
//			cs_go_to( ps_maintenance_lower_grunts.p13, 0.75 );
//			cs_go_to( ps_maintenance_lower_grunts.p14, 0.75 );
//			cs_go_to( ps_maintenance_lower_grunts.p15, 0.75 );
//			cs_go_to( ps_maintenance_lower_grunts.p16, 0.75 );
//			cs_go_to( ps_maintenance_lower_grunts.p17, 0.75 );
//			cs_go_to( ps_maintenance_lower_grunts.p18, 0.75 );
//			cs_go_to( ps_maintenance_lower_grunts.p19, 0.75 );
//			cs_go_to( ps_maintenance_lower_grunts.p20, 0.75 );
//			cs_go_to( ps_maintenance_lower_grunts.p21, 0.75 );
//			cs_go_to( ps_maintenance_lower_grunts.p22, 0.75 );
//			cs_go_to( ps_maintenance_lower_grunts.p23, 0.75 );
//			cs_go_to( ps_maintenance_lower_grunts.p24, 0.75 );
//			cs_go_to( ps_maintenance_lower_grunts.p25, 0.75 );
//			cs_go_to( ps_maintenance_lower_grunts.p26, 0.75 );
//			cs_go_to( ps_maintenance_lower_grunts.p27, 0.75 );
//			cs_go_to( ps_maintenance_lower_grunts.p28, 0.75 );
//			cs_go_to( ps_maintenance_lower_grunts.p29, 0.75 );
//		end
//	until ( FALSE, 1 );
//	
//end

// === cs_maintenance_AI_grunt1::: AI
script command_script cs_force_flee()
	//dprint( "::: cs_maintenance_AI_grunt1 :::" );
	cs_abort_on_alert( FALSE );
	cs_abort_on_damage( FALSE );
	cs_push_stance( "FLEE" );	
end

// --- End m10_end_maintenance_ai.hsc ---

// --- Begin m10_end_maintenance_destruction.hsc ---
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343
//
// Mission: 					m10_crash_end
//	Insertion Points:	start (or icr)	- Beginning
//										ibr							- Broken Floor
//										iea							- explosion alley
//										ivb							- Vehicle Bay
//										iju							- Jump Debris
//										
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343


// -------------------------------------------------------------------------------------------------
// MAINTENANCE: DESTRUCTION: TEST
// -------------------------------------------------------------------------------------------------
/*
script static void test_maintenance_destruction( real r_pos_final, real r_rewind_time, real r_between_time )
static real r_test_pos = 0.0;
static boolean b_test_order = FALSE;

	wake( f_maintenance_destruction_rack_init );
	wake( f_maintenance_destruction_crate_init );
	sleep( 1 );

	wake( f_maintenance_destruction_action );

	repeat
		if ( r_rewind_time >= 0.0 ) then

			sleep_s( r_between_time );
			device_animate_position( dm_maintenance_ramp_near, 0.0, r_rewind_time, 0.1, 0, TRUE );
			device_animate_position( dm_maintenance_ramp_far, 0.0, r_rewind_time, 0.1, 0, TRUE );
			sleep_until( f_maintenance_destruction_ramps_pos() == 0.0, 1 );

			sleep_s( r_between_time );

			if ( b_test_order ) then
				f_maintenance_destruction_ramp01_action();
			else
				f_maintenance_destruction_ramp02_action();
			end
			
			sleep_rand_s( 1, 1.5 );
			
			if ( b_test_order ) then
				f_maintenance_destruction_ramp02_action();
			else
				f_maintenance_destruction_ramp01_action();
			end

			// swap order
			b_test_order = not b_test_order;
		end
	until ( r_rewind_time < 0.0, 1 );

end
*/


// -------------------------------------------------------------------------------------------------
// MAINTENANCE: DESTRUCTION
// -------------------------------------------------------------------------------------------------
// variables
global long L_maintenance_rumble_ID = 0;
global real R_maintenance_ramp_time_near = 1.0;
global real R_maintenance_ramp_time_far = 0.75;
global boolean B_maintenance_destruction_started = FALSE;

// functions
script static boolean f_B_maintenance_destruction_loaded()
	object_valid(dm_maintenance_ramp_near) and object_valid(dm_maintenance_ramp_far);
end

// === f_maintenance_destruction_init::: initialize the upperramps setting
script dormant f_maintenance_destruction_init()
	sleep_until( object_valid(dm_maintenance_ramp_near) and object_valid(dm_maintenance_ramp_far), 1 );
	//dprint( "::: f_maintenance_destruction_init :::" );

	//wake( f_maintenance_destruction_rack_init );

	wake( f_maintenance_destruction_crate_init );

	wake( f_maintenance_destruction_trigger );
	
end

script dormant f_explode_canister_sounds()

	thread(f_canister_explode_snd_call(cr_maintenance_fuel_can_03));
	thread(f_canister_explode_snd_call(cr_maintenance_fuel_can_05));
	thread(f_canister_explode_snd_call(grunt_killer));
	thread(f_canister_explode_snd_call(grunt_killer2));
	thread(f_canister_explode_snd_call(fuel_can_u_1));
	thread(f_canister_explode_snd_call(fuel_can_u_2));
	thread(f_canister_explode_snd_call(fuel_can_u_3));

end

script static void f_canister_explode_snd_call(object canister)
	sleep_until(object_get_health(canister) <= 0);
	thread(sfx_unsc_canister_explode_maintenance_hall(canister));
end



// === f_maintenance_destruction_rack_init::: setup the racks
/*script dormant f_maintenance_destruction_rack_init()
	//dprint( "::: f_maintenance_destruction_rack_init :::" );
	// racks
	//thread( dm_maintenance_rack_near_01->open(0.0) );

	//thread( dm_maintenance_rack_near_02->chain_open_eject(dm_maintenance_ramp_near, 0.25, 0.0, -1, cr_maintenance_rack_near_02, tv_maintenance_warthog_destroy_near, 1.0) );
	//thread( dm_maintenance_rack_near_03->chain_open_eject(dm_maintenance_rack_near_02, -1, -1, -1, cr_maintenance_rack_near_03, tv_maintenance_warthog_destroy_near, 1.0) );
	//thread( dm_maintenance_rack_near_04->chain_open_eject(dm_maintenance_rack_near_03, -1, -1, -1, cr_maintenance_rack_near_04, tv_maintenance_warthog_destroy_near, 0.1) );

	//thread( dm_maintenance_rack_far_01->chain_open_eject(dm_maintenance_ramp_far, 0.125, 0.0, -1, cr_maintenance_rack_far_01, tv_maintenance_warthog_destroy_far, 1.0) );
//	thread( dm_maintenance_rack_far_02->chain_open_eject(dm_maintenance_rack_far_01, -1, -1, -1, cr_maintenance_rack_far_02, tv_maintenance_warthog_destroy_far, 1.0) );
//	thread( dm_maintenance_rack_far_03->chain_open_eject(dm_maintenance_rack_far_02, -1, -1, -1, cr_maintenance_rack_far_03, tv_maintenance_warthog_destroy_far, 0.1) );
//	thread( dm_maintenance_rack_far_04->chain_open_eject(dm_maintenance_rack_far_03, -1, -1, -1, cr_maintenance_rack_far_04, tv_maintenance_warthog_destroy_far, 1.0) );

end*/

script static boolean f_B_maintenance_destruction_near_racks_open()
	(current_zone_set_fully_active() == S_zoneset_32_broken_34_maintenance);
end

// === f_maintenance_destruction_rack_init::: setup the racks
script dormant f_maintenance_destruction_crate_init()
	//dprint( "::: f_maintenance_destruction_crate_init :::" );

	thread( m10_maintenance_dropcrate_n01->chain_release(dm_maintenance_ramp_near, 0.875, NONE, 0.5, 1.25) );
	thread( m10_maintenance_dropcrate_n02->chain_release(dm_maintenance_ramp_near, 0.875, NONE, 0.5, 1.25) );
	//thread( m10_maintenance_dropcrate_n03->chain_release(dm_maintenance_ramp_near, 0.875, NONE, 0.5, 1.25) );

	thread( m10_maintenance_dropcrate_f01->chain_release(dm_maintenance_ramp_far, 0.875, NONE, 0.5, 1.25) );
	thread( m10_maintenance_dropcrate_f02->chain_release(dm_maintenance_ramp_far, 0.875, NONE, 0.5, 1.25) );
	thread( m10_maintenance_dropcrate_f03->chain_release(dm_maintenance_ramp_far, 0.875, NONE, 0.5, 1.25) );

//	objects_physically_attach( dm_maintenance_ramp_near, "m_attach_crate_01", m10_maintenance_dropcrate_l01, "m_attach" );
//	objects_physically_attach( dm_maintenance_ramp_near, "m_attach_crate_02", m10_maintenance_dropcrate_l02, "m_attach" );
//	objects_physically_attach( dm_maintenance_ramp_near, "m_attach_crate_03", m10_maintenance_dropcrate_l03, "m_attach" );
	//objects_physically_attach( dm_maintenance_ramp_near, "m_attach_crate_04", m10_maintenance_dropcrate_l04, "m_attach" );
//	objects_physically_attach( dm_maintenance_ramp_near, "m_attach_crate_05", m10_maintenance_dropcrate_l05, "m_attach" );
	
//	objects_physically_attach( dm_maintenance_ramp_near, "m_terminal_attach", cr_maintenance_terminal_01, "m_attach" );

//	thread( m10_maintenance_dropcrate_l01->chain_release(dm_maintenance_ramp_near, dm_maintenance_ramp_near->drop_frame_random(), dm_maintenance_ramp_near, 0.0, 0.125) );
//	thread( m10_maintenance_dropcrate_l02->chain_release(dm_maintenance_ramp_near, 0.00, NONE, 0.5, 2.5) );
//	thread( m10_maintenance_dropcrate_l03->chain_release(dm_maintenance_ramp_near, dm_maintenance_ramp_near->drop_frame_random(), dm_maintenance_ramp_near, 0.0, 0.125) );
	//thread( m10_maintenance_dropcrate_l04->chain_release(dm_maintenance_ramp_near, dm_maintenance_ramp_near->drop_frame_random(), dm_maintenance_ramp_near, 0.0, 0.125) );
//	thread( m10_maintenance_dropcrate_l05->chain_release(dm_maintenance_ramp_near, dm_maintenance_ramp_near->drop_frame_random(), dm_maintenance_ramp_near, 0.0, 0.125) );
	
end

// === f_maintenance_destruction_deinit::: cleansup the break ramps
script dormant f_maintenance_destruction_deinit()
	//dprint( "::: f_maintenance_destruction_deinit :::" );

	sleep_forever( f_maintenance_destruction_init );
	sleep_forever( f_maintenance_destruction_trigger );
	sleep_forever( f_maintenance_destruction_start );
	sleep_forever( f_maintenance_destruction_force );
	sleep_forever( f_maintenance_destruction_action );
	sleep_forever( f_maintenance_destruction_ramp01_action );
	sleep_forever( f_maintenance_destruction_ramp02_action );

end

// === f_maintenance_destruction_trigger::: sets up the things that trigger the ramp to break
script dormant f_maintenance_destruction_trigger()
	sleep_until( volume_test_players(tv_maintenance_lower_start) or volume_test_players(tv_maintenance_upper_start), 1);
	//dprint( "::: f_maintenance_destruction_trigger :::" );
	
	sleep_rand_s( 0.5, 1.5 );										// wait a short random so the player doesn't feel the trigger
	wake( f_maintenance_destruction_start );
	
end

// === f_maintenance_destruction_start::: starts the destruction
script dormant f_maintenance_destruction_start()
	//dprint( "::: f_maintenance_destruction_start :::" );

	wake (f_garbage_collect_under_maintenence);
	
	// pause the combat checkpoint
	f_combat_checkpoint_pause( "", TRUE );

	// start rumbling to make things seem "spooky"
	f_screenshake_ambient_pause( TRUE, FALSE, 0.0 );
	f_mission_screenshakes_ambient_layer_set_inc( DEF_S_AMBIENTSHAKE_STATE_MAINTENANCE );
	L_maintenance_rumble_ID = f_mission_screenshakes_rumble_med( -1.0 ); // XXX setup so it's stronger on the platforms
	

	// setup triggers that force the destruction
	wake( f_maintenance_destruction_force );
	wake( f_maintenance_destruction_timer );

end

// === f_maintenance_destruction_force::: Triggers that force the destruction
script dormant f_maintenance_destruction_force()
	sleep_until( (ai_living_fraction(gr_maintenance) < 0.9) or volume_test_players(tv_maintenance_upper_force) or volume_test_players(tv_maintenance_lower_force), 1 );
	//dprint( "::: f_maintenance_destruction_force :::" );

	// setup and break
	sleep_rand_s( 0.1, 0.333 );										// wait a short random so the player doesn't feel the trigger
	sleep_forever( f_maintenance_destruction_timer );
	wake( f_maintenance_destruction_action );

end

// === f_maintenance_destruction_timer::: Triggers that force the destruction
script dormant f_maintenance_destruction_timer()
static long l_lookat_timer = 0;
static real r_destruction_delay = real_random_range(  3.5, 5.25 );
static real r_look_time = 5.5;

	// setup pre-destruction sfx
	thread( sfx_maintenance_destruction_pre(r_destruction_delay + r_look_time) );

	// min timer
	sleep_s( r_destruction_delay );
	// make max timer for look at trigger
	l_lookat_timer = game_tick_get() + seconds_to_frames(5.5);
	sleep_until( 
		(l_lookat_timer <= game_tick_get())
			or
		(volume_test_players(tv_maintenance_upper_start) and volume_test_players_lookat(tv_maintenance_upper_force, 25.0, 2.5))
			or
		((volume_test_players(tv_maintenance_lower_lookat_area01) or volume_test_players(tv_maintenance_lower_lookat_area02)) and volume_test_players_lookat(tv_maintenance_upper_force, 25.0, 2.5))
	, 1 );
	//dprint( "::: f_maintenance_destruction_timer :::" );

	sleep_forever( f_maintenance_destruction_force );
	wake( f_maintenance_destruction_action );

end

// === f_maintenance_destruction_action::: Breaks the split platforms
script dormant f_maintenance_destruction_action()
	//dprint( "::: f_maintenance_destruction_action :::" );

	//wake( f_fuel_can_trigger_setup );

	// check to see if there's a player in the upper area, if so play the upper sequence
	/*
	if ( f_maintenance_upper_hasplayers() ) then

		// break the upper floor 02 - this allows the plyaer to see it happen across from them before it happens to him
		thread( f_maintenance_destruction_ramp02_action() );
	
		// break the upper floor 01 which the player is likely standing on
		sleep_rand_s( 1, 1.5 );
		thread( f_maintenance_destruction_ramp01_action() );

	else
	*/
		// break the upper floor 01 which the player is likely standing on
		thread( f_maintenance_destruction_ramp01_action() );

		sleep_rand_s( 1, 1.5 );
		thread( f_maintenance_destruction_ramp02_action() );
	/*
	end
	*/
	
	// pause the combat checkpoint
	f_combat_checkpoint_pause( "", FALSE );

	sleep_until( f_maintenance_destruction_ramp01_destroyed() or f_maintenance_destruction_ramp02_destroyed(), 1 );
	sfx_end_alarm_set( DEF_S_END_ALARM_STATE_MAINTENANCE );

	wake( f_dialog_ShipVO_Maintenance );

	sleep_until( f_maintenance_destruction_ramp01_destroyed() and f_maintenance_destruction_ramp02_destroyed());
	f_screenshake_ambient_pause( FALSE, FALSE, 0.0 );

	
	// stop rumbling

	L_maintenance_rumble_ID = f_screenshake_rumble_global_remove( L_maintenance_rumble_ID, -1, 1.5 );
	print("Playing Matt's Screenshake");
	//L_maintenance_rumble_ID = f_screenshake_ambient_add( 0.1, DEF_R_SCREENSHAKE_AMBIENT_INTENSITY_MED(), -0.5, -1, -3.0, 'sound\environments\solo\m010\ambience\explosions\amb_m10_explosions_medium_01', 0.0, 1, "amb_m10_explosions_medium_01" );
	f_mission_screenshakes_ambient_layer_set_inc( DEF_S_AMBIENTSHAKE_STATE_END );
	L_maintenance_rumble_ID = f_screenshake_ambient_add( 0.1, DEF_R_SCREENSHAKE_AMBIENT_INTENSITY_MED(), -0.5, -1, -3.0, 'sound\environments\solo\m010\ambience\explosions\amb_m10_explosions_medium_01', 0.0, 1, "amb_m10_explosions_medium_01" );
	
	// cleanup all the breakramps since we're now done with the event
	wake( f_maintenance_destruction_deinit );

end

script static real f_maintenance_destruction_ramp01_pos()
static real r_pos = 0.0;

	if ( r_pos < 1.0 ) then
		if ( object_valid(dm_maintenance_ramp_near) ) then
			r_pos = device_get_position( dm_maintenance_ramp_near );
		elseif ( current_zone_set_fully_active() > S_zoneset_32_broken_34_maintenance ) then
			r_pos = 1.0;
		end
	end

	// return
	r_pos;
	
end

script static real f_maintenance_destruction_ramp02_pos()
static real r_pos = 0.0;

	if ( r_pos < 1.0 ) then
		if ( object_valid(dm_maintenance_ramp_far) ) then
			r_pos = device_get_position( dm_maintenance_ramp_far );
		elseif ( current_zone_set_fully_active() > S_zoneset_32_broken_34_maintenance ) then
			r_pos = 1.0;
		end
	end

	// return
	r_pos;

end

// === f_maintenance_destruction_ramp01_destroyed::: Returns if the ramp is broken
script static boolean f_maintenance_destruction_ramp01_destroyed()
	f_maintenance_destruction_ramp01_pos() > 0.0;
end

// === f_maintenance_destruction_ramp02_destroyed::: Returns if the ramp is broken
script static boolean f_maintenance_destruction_ramp02_destroyed()
	f_maintenance_destruction_ramp02_pos() > 0.0;
end

// === f_maintenance_destruction_ramps_pos::: Returns the average position of the ramps
script static real f_maintenance_destruction_ramps_pos()
	(f_maintenance_destruction_ramp01_pos() + f_maintenance_destruction_ramp02_pos())/2;
end

// === f_maintenance_destruction_ramp01_action::: Function to handle all the breaking of the upper floor piece 01
script static void f_maintenance_destruction_ramp01_action()
	sleep_until( object_valid(dm_maintenance_ramp_near), 1 );
	dprint( "::: f_maintenance_destruction_ramp01_action :::" );

	if ( not f_maintenance_destruction_ramp01_destroyed() ) then
		B_maintenance_destruction_started = TRUE;

		thread( f_screenshake_event_high(-0.125, -1, -1.0, sfx_maintenance_ramp_near_destruction()) );  // XXX make stronger if you're on the ramp
	
		// rotate the floor
		sleep_s( 0.125 );
		dm_maintenance_ramp_near->break( R_maintenance_ramp_time_near, tv_maintenance_ramp_near_top_physics, tv_maintenance_ramp_near_bottom_physics );

	end

end

// === a::: Function to handle all the breaking of the upper floor piece 02
script static void f_maintenance_destruction_ramp02_action()
	sleep_until( object_valid(dm_maintenance_ramp_far), 1 );
	dprint( "::: f_maintenance_destruction_ramp02_action :::" );

	if ( not f_maintenance_destruction_ramp02_destroyed() ) then
		B_maintenance_destruction_started = TRUE;

		thread( f_screenshake_event_high(-0.125, -1, -1.0, sfx_maintenance_ramp_far_destruction()) );  // XXX make stronger if you're on the ramp

		// rotate the floor
		sleep_s( 0.125 );
		dm_maintenance_ramp_far->break( R_maintenance_ramp_time_far, tv_maintenance_ramp_far_top_physics, tv_maintenance_ramp_far_bottom_physics );

	end

end

script static boolean f_B_maintenance_destruction_started()
	f_maintenance_destruction_ramp01_destroyed() or f_maintenance_destruction_ramp02_destroyed();
end

script static boolean f_B_maintenance_destruction_done()
	f_maintenance_destruction_ramps_pos() == 1.0;
end

script static void f_fuel_can_trigger( object o_fuelcan )

	sleep_until( (o_fuelcan == NONE) or (objects_distance_to_object(ai_get_object(gr_maintenance_lower_grunts),o_fuelcan) <= 2.0) or (objects_distance_to_object(ai_get_object(gr_maintenance_upper_grunts),o_fuelcan) <= 2.0), 1 );
	if ( o_fuelcan != NONE ) then
		damage_objects( o_fuelcan, "", 1000 );
	end
	
end

script dormant f_garbage_collect_under_maintenence()

	repeat
		add_recycling_volume (tv_garbage_maintenence_garbage, 0, 1);
	until (1 == 0, 10);

end

//script dormant f_fuel_can_trigger_setup()
//
//	sleep_rand_s( 0.5, 1.0 );
//	sleep_until( B_maintenace_AI_room_lower_chaos, 1 );
////	thread( f_fuel_can_trigger(cr_maintenance_fuel_can_01) );
////	thread( f_fuel_can_trigger(cr_maintenance_fuel_can_02) );
//	thread( f_fuel_can_trigger(cr_maintenance_fuel_can_03) );
////	thread( f_fuel_can_trigger(cr_maintenance_fuel_can_04) );
//	thread( f_fuel_can_trigger(cr_maintenance_fuel_can_05) );
//	
//end
// --- End m10_end_maintenance_destruction.hsc ---

// --- Begin m10_end_maintenance_hall.hsc ---
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343
//
// Mission: 					m10_crash_end
//	Insertion Points:	start (or icr)	- Beginning
//										ibr							- Broken Floor
//										iea							- explosion alley
//										ivb							- Vehicle Bay
//										iju							- Jump Debris
//										
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343

// -------------------------------------------------------------------------------------------------
// MAINTENANCE: HALL
// -------------------------------------------------------------------------------------------------
// variables

// functions
// === f_maintenance_hall_init::: Initialize
script dormant f_maintenance_hall_init()
	//dprint( "::: f_maintenance_hall_init :::" );
	
	// init modules
	wake( f_maintenance_hall_AI_init );

	// initialize sub modules
	wake( f_maintenance_hall_jump_init );
	wake( f_maintenance_airlock_init );
	wake( f_maintenance_hall_block01_init );
	wake( f_maintenance_hall_destruction_init );
	//wake( f_maintenance_hall_close_init );

	// setup triggers
	wake( f_maintenance_hall_trigger );
	wake(f_block_off_brokenfloor);
	
	wake (f_objectives_vehicle_bay);
end

// Teleport players forward and cut off the path back to brokenfloor
script dormant f_block_off_brokenfloor()
	sleep_until(volume_test_players(tv_maintenance_jump_area), 1);
	volume_teleport_players_not_inside(tv_maintenance_whole, flg_maintenance_hall_start);
	object_create(door_block_maintenance_upper);
	object_create(door_block_maintenance_lower);
end

script dormant f_objectives_vehicle_bay()
	sleep_until(volume_test_players(tv_near_pry_door), 1);
	thread (f_objective_blip( DEF_R_OBJECTIVE_PRY_POD_DOOR, TRUE, TRUE ));
	//wake( f_dialog_Run_Start );
	thread(f_dialog_catastrophic_depressurization());
			
	sleep_until(LevelEventStatus("last door opened"), 1);
	thread (f_objective_blip( DEF_R_OBJECTIVE_PRY_POD_DOOR, FALSE, TRUE ));
end


// === f_maintenance_hall_deinit::: Deinitialize
script dormant f_maintenance_hall_deinit()
	//dprint( "::: f_maintenance_hall_deinit :::" );
	
	// deinit modules
	wake( f_maintenance_hall_AI_deinit );

	// deinitialize sub modules
	wake( f_maintenance_hall_jump_deinit );
	wake( f_maintenance_airlock_deinit );
	wake( f_maintenance_hall_block01_deinit );
	wake( f_maintenance_hall_destruction_deinit );
	//wake( f_maintenance_hall_close_deinit );

	// shutdown triggers
	sleep_forever( f_maintenance_hall_trigger );

end

// === f_maintenance_hall_trigger::: trigger in area
script dormant f_maintenance_hall_trigger()
	sleep_until( volume_test_players(tv_explosionalley_area), 1 );
	//dprint( "::: f_maintenance_hall_trigger :::" );

	//datamine
	data_mine_set_mission_segment( "m10_END_maintenance_hall" );

end

// === f_maintenance_hall_cleanup::: Cleanup
script dormant f_maintenance_hall_cleanup()
	dprint( "::: f_maintenance_hall_cleanup :::" );

	// XXX

end





// -------------------------------------------------------------------------------------------------
// LIGHTING: DIRECT
// -------------------------------------------------------------------------------------------------
// === f_lighting_bsp18_direct_set::: Sets the direct lighting over time
script static void f_lighting_bsp18_direct_set( real r_time, real r_lighting_bsp18_start, real r_lighting_bsp18_end, short s_rate )
static long l_lighting_bsp18_thread = 0;

	if ( l_lighting_bsp18_thread != 0 ) then
		kill_thread( l_lighting_bsp18_thread );
		l_lighting_bsp18_thread = 0;
	end
	
	// initialize defualt values
	if ( r_lighting_bsp18_start < 0 ) then
		r_lighting_bsp18_start = f_lighting_bsp18_direct_get();
	end
	if ( r_lighting_bsp18_end < 0 ) then
		r_lighting_bsp18_end = f_lighting_bsp18_direct_get();
	end
	if ( s_rate < 0 ) then
		s_rate = 1;
	end
	
	// store the scale target for reset
	//R_lightmap_direct_scale_target = r_lighting_bsp18_end;

	// thread the lighting scale	
	l_lighting_bsp18_thread = thread( f_lighting_bsp18_direct_thread(r_time, r_lighting_bsp18_start, r_lighting_bsp18_end, s_rate) );
	
	// wait for it to finish
	sleep_until( r_lighting_bsp18_end == f_lighting_bsp18_direct_get(), 1 );
	l_lighting_bsp18_thread = 0;
	
end

// === f_lighting_bsp18_direct_get::: Gets the current direct lighting scaler value
script static real f_lighting_bsp18_direct_get()
	get_lightmap_direct_scalar_bsp(18);
end

// === f_lighting_bsp18_direct_thread::: Handles the logic for scaling the lighting
//			NOTE: Do not use this function, use f_lighting_bsp18_direct_set instead
script static void f_lighting_bsp18_direct_thread( real r_time, real r_lighting_bsp18_start, real r_lighting_bsp18_end, short s_rate )
static long l_time_start = 0;
static long l_time_end = 0;

	// get start time	
	l_time_start = game_tick_get();
	
	// get end time	
	l_time_end = l_time_start + seconds_to_frames( r_time );

	if ( l_time_start != l_time_end ) then
		// make sure the lighting gets to it's starting state
		set_lightmap_direct_scalar_bsp(18, r_lighting_bsp18_start);

		repeat
			// apply lighting
			set_lightmap_direct_scalar_bsp(18, r_lighting_bsp18_start + ( (r_lighting_bsp18_end - r_lighting_bsp18_start) * ((game_tick_get() - l_time_start) / (l_time_end - l_time_start)) ));
		until ( game_tick_get() > l_time_end, s_rate );
	end
	
	// make sure the lighting gets to it's final state
	set_lightmap_direct_scalar_bsp(18, r_lighting_bsp18_end);

end

// -------------------------------------------------------------------------------------------------
// LIGHTING: INDIRECT
// -------------------------------------------------------------------------------------------------
// === f_lighting_bsp18_indirect_set::: Sets the indirect lighting over time
script static void f_lighting_bsp18_indirect_set( real r_time, real r_lighting_bsp18_start, real r_lighting_bsp18_end, short s_rate )
static long l_lighting_bsp18_thread = 0;

	if ( l_lighting_bsp18_thread != 0 ) then
		kill_thread( l_lighting_bsp18_thread );
		l_lighting_bsp18_thread = 0;
	end
	
	// initialize defualt values
	if ( r_lighting_bsp18_start < 0 ) then
		r_lighting_bsp18_start = f_lighting_bsp18_indirect_get();
	end
	if ( r_lighting_bsp18_end < 0 ) then
		r_lighting_bsp18_end = f_lighting_bsp18_indirect_get();
	end
	if ( s_rate < 0 ) then
		s_rate = 1;
	end
	
	// store the scale target for reset
	//R_lightmap_indirect_scale_target = r_lighting_bsp18_end;

	// thread the lighting scale	
	l_lighting_bsp18_thread = thread( f_lighting_bsp18_indirect_thread(r_time, r_lighting_bsp18_start, r_lighting_bsp18_end, s_rate) );
	
	// wait for it to finish
	sleep_until( r_lighting_bsp18_end == f_lighting_bsp18_indirect_get(), 1 );
	l_lighting_bsp18_thread = 0;
	
end

// === f_lighting_bsp18_indirect_get::: Gets the current indirect lighting scaler value
script static real f_lighting_bsp18_indirect_get()
	get_lightmap_indirect_scalar_bsp(18);
end

// === f_lighting_bsp18_indirect_thread::: Handles the logic for scaling the lighting
//			NOTE: Do not use this function, use f_lighting_bsp18_indirect_set instead
script static void f_lighting_bsp18_indirect_thread( real r_time, real r_lighting_bsp18_start, real r_lighting_bsp18_end, short s_rate )
static long l_time_start = 0;
static long l_time_end = 0;

	// get start time	
	l_time_start = game_tick_get();
	
	// get end time	
	l_time_end = l_time_start + seconds_to_frames( r_time );

	if ( l_time_start != l_time_end ) then
		// make sure the lighting gets to it's starting state
		set_lightmap_indirect_scalar_bsp(18, r_lighting_bsp18_start);

		repeat
			// apply lighting
			set_lightmap_indirect_scalar_bsp(18, r_lighting_bsp18_start + ( (r_lighting_bsp18_end - r_lighting_bsp18_start) * ((game_tick_get() - l_time_start) / (l_time_end - l_time_start)) ));
		until ( game_tick_get() > l_time_end, s_rate );
	end
	
	// make sure the lighting gets to it's final state
	set_lightmap_indirect_scalar_bsp(18, r_lighting_bsp18_end);

end




// -------------------------------------------------------------------------------------------------
// MAINTENANCE: HALL: JUMP
// -------------------------------------------------------------------------------------------------
// variables

// functions
// === f_maintenance_hall_jump_init::: init
script dormant f_maintenance_hall_jump_init()
	sleep_until( volume_test_players(tv_maintenance_jump_area), 1 );
	//dprint( "::: f_maintenance_hall_jump_init :::" );

	//datamine
	data_mine_set_mission_segment( "m10_END_maintenance_jump" );

end

// === f_maintenance_hall_jump_deinit::: deinit
script dormant f_maintenance_hall_jump_deinit()
	//dprint( "::: f_maintenance_hall_jump_deinit :::" );

	// kill functions
	sleep_forever( f_maintenance_hall_jump_init );

end



// -------------------------------------------------------------------------------------------------
// MAINTENANCE: HALL: BLOCK01
// -------------------------------------------------------------------------------------------------
// variables
global real DEF_MAINTENANCE_HALL_ANIM_TIME = 0.75;

// functions
/*
script static void test_maintenance_hall_block( real r_pos_final, real r_play_time, real r_pos_step, real r_rewind_time, real r_between_time )
static real r_test_pos = 0.0;

	if ( r_play_time >= 0.0 ) then
		DEF_MAINTENANCE_HALL_ANIM_TIME = r_play_time;
	end

	wake( f_maintenance_hall_block01_action );

	repeat
		if ( r_pos_step >= 0.0 ) then
			repeat
					r_test_pos = f_maintenance_hall_block_pos() + r_pos_step;
					sleep_until( f_maintenance_hall_block_pos() >= r_test_pos, 1 );
					inspect( f_maintenance_hall_block_pos() );
					set( game_speed, 0.0 );
			until( f_maintenance_hall_block_pos() >= r_pos_final, 1 );
		end
		sleep_until( f_maintenance_hall_block_pos() >= r_pos_final, 1 );

		if ( r_rewind_time >= 0.0 ) then
			sleep_s( r_between_time );
			f_maintenance_hall_block_animate( 0.0, r_rewind_time, 0.1 );
			sleep_until( f_maintenance_hall_block_pos() == 0.0, 1 );
			sleep_s( r_between_time );
			f_maintenance_hall_block_animate_default();
		end
	until ( r_rewind_time < 0.0, 1 );

end
*/
// === f_maintenance_hall_block01_init::: init
script dormant f_maintenance_hall_block01_init()
	//dprint( "::: f_maintenance_hall_block01_init :::" );

	// setup triggers
	wake( f_maintenance_hall_block01_trigger );

end

// === f_explosionalley_blocker01_deinit::: Cleanup
script dormant f_maintenance_hall_block01_deinit()
	//dprint( "::: f_explosionalley_blocker01_deinit :::" );

	// kill functions
	sleep_forever( f_maintenance_hall_block01_init );
	sleep_forever( f_maintenance_hall_block01_trigger );
	sleep_forever( f_maintenance_hall_block01_action );

end

// === f_maintenance_hall_block_animate::: Plays the destruction
script static real f_maintenance_hall_block_pos()
static real r_return = 0.0;

	if ( object_valid(dm_maintenance_hall_block_01) ) then
		r_return = device_get_position(dm_maintenance_hall_block_01);
	/*elseif ( object_valid(dm_maintenance_hall_block_02) ) then
		r_return = device_get_position(dm_maintenance_hall_block_02);*/
	end

	// return
	r_return;

end
script static void f_maintenance_hall_block_animate( real r_position, real r_time, real r_blend )
	if ( object_valid(dm_maintenance_hall_block_01) ) then
		device_animate_position( dm_maintenance_hall_block_01, r_position, r_time, r_blend, 0, TRUE );
	end
	/*if ( object_valid(dm_maintenance_hall_block_02) ) then
		device_animate_position( dm_maintenance_hall_block_02, r_position, r_time, r_blend, 0, TRUE );
	end*/
end
script static void f_maintenance_hall_block_animate_default()
	f_maintenance_hall_block_animate( 1.0, DEF_MAINTENANCE_HALL_ANIM_TIME, 0.1 );
end

// === f_maintenance_hall_block01_trigger::: Triggers the event
script dormant f_maintenance_hall_block01_trigger()
	sleep_until( volume_test_players(tv_maintenance_hall_block01) or (volume_test_objects(tv_explosionalley_block01_ai,ai_actors(gr_maintenance_explosionalley))), 1 );
	//dprint( "::: f_maintenance_hall_block01_trigger :::" );

	// trigger the action
	wake( f_maintenance_hall_block01_action );

end

// === f_maintenance_hall_block01_action::: Collapses blocker01
script dormant f_maintenance_hall_block01_action()
	//dprint( "::: f_maintenance_hall_block01_action :::" );
	
	// make the AI dive if necessary
	//wake( f_maintenance_hall_AI_destruction_dive );

	// create an explosion
	f_explosion_flag_large( flg_explosionalley_block01, TRUE, TRUE );

	f_maintenance_hall_block_animate_default();

	//dprint( "::: f_maintenance_hall_block01_action:DONE :::" );

end



// -------------------------------------------------------------------------------------------------
// MAINTENANCE: HALL: DESTRUCTION
// -------------------------------------------------------------------------------------------------
// variables
global short S_maintenance_hall_explosion_total 		= 0;
global short S_maintenance_hall_explosion_trigger 	= -1;
global long L_maintenance_hall_explosion_timer 			= 0;
global short L_maintenance_hall_explosion_fired 		= 0;
global long L_maintenance_hall_rumble_ID 						= 0;
global real R_mh_destruction_delay_s 								= 0.375;
global real r_mh_destruction_delay_l 								= 0.75;

// functions
// === f_maintenance_hall_destruction_init::: Sets up explosion alley area
script dormant f_maintenance_hall_destruction_init()
	//dprint ( "::: f_maintenance_hall_destruction_init :::" );

	// setup triggers
	wake( f_maintenance_hall_destruction_trigger );
	
	f_maintenance_hall_destruction_setup( TRUE );

end

// === f_maintenance_hall_destruction_deinit::: Deinit
script static void f_maintenance_hall_destruction_setup( boolean b_setup )
//static long l_explosion_01 = 0;
static long l_explosion_02 = 0;
static long l_explosion_03 = 0;
static long l_explosion_04 = 0;
//static long l_explosion_05 = 0;
//static long l_explosion_06 = 0;
static long l_explosion_07 = 0;
static long l_explosion_08 = 0;
static long l_explosion_09 = 0;
static long l_explosion_10 = 0;
static long l_explosion_11 = 0;
static long l_explosion_12 = 0;
//static long l_explosion_13 = 0;
static long l_explosion_14 = 0;
//static long l_explosion_15 = 0;
//static long l_explosion_16 = 0;
static long l_explosion_17 = 0;
static long l_explosion_18 = 0;
//static long l_explosion_19 = 0;
//static long l_explosion_20 = 0;
//static long l_explosion_21 = 0;
//static long l_explosion_22 = 0;
//static long l_explosion_23 = 0;

	if ( b_setup ) then
		// setup explosion triggers
//		if ( l_explosion_01 == 0 ) then
//			l_explosion_01 = thread( f_maintenance_hall_explosion_trigger(01, flg_maintenance_hall_explosion_01, cr_maintenance_hall_wall_01, FX_explosion_large, DMG_explosion_large, "maintenance_hall_explosion_01", R_mh_destruction_delay_s, 1, FALSE, 1) );
//		end
		if ( l_explosion_02 == 0 ) then
			l_explosion_02 = thread( f_maintenance_hall_explosion_trigger(02, flg_maintenance_hall_explosion_02, cr_maintenance_hall_wall_02, FX_explosion_sparks, DMG_explosion_large, "maintenance_hall_explosion_02", R_mh_destruction_delay_s, 1, FALSE, 1) );
		end
		if ( l_explosion_03 == 0 ) then
			l_explosion_03 = thread( f_maintenance_hall_explosion_trigger(03, flg_maintenance_hall_explosion_03, cr_maintenance_hall_wall_03, FX_explosion_large, DMG_explosion_large, "maintenance_hall_explosion_03", R_mh_destruction_delay_s, 1, FALSE, 1) );
		end
		if ( l_explosion_04 == 0 ) then
			l_explosion_04 = thread( f_maintenance_hall_explosion_trigger(04, flg_maintenance_hall_explosion_04, cr_maintenance_hall_wall_04, FX_explosion_sparks, DMG_explosion_large, "maintenance_hall_explosion_04", R_mh_destruction_delay_s, 1, TRUE, 2) );
		end
//		if ( l_explosion_05 == 0 ) then
//			l_explosion_05 = thread( f_maintenance_hall_explosion_trigger(05, flg_maintenance_hall_explosion_05, cr_maintenance_hall_wall_05, FX_explosion_sparks, DMG_explosion_large, "maintenance_hall_explosion_05", R_mh_destruction_delay_s, 1, TRUE, 2) );
//		end
//		if ( l_explosion_06 == 0 ) then
//			l_explosion_06 = thread( f_maintenance_hall_explosion_trigger(06, flg_maintenance_hall_explosion_06, cr_maintenance_hall_wall_06, FX_explosion_large, DMG_explosion_large, "maintenance_hall_explosion_06", R_mh_destruction_delay_s, 1, TRUE, 2) );
//		end
		if ( l_explosion_07 == 0 ) then
			l_explosion_07 = thread( f_maintenance_hall_explosion_trigger(07, flg_maintenance_hall_explosion_07, cr_maintenance_hall_wall_07, FX_explosion_sparks, DMG_explosion_large, "maintenance_hall_explosion_07", R_mh_destruction_delay_s, 1, TRUE, 2) );
		end
		if ( l_explosion_08 == 0 ) then
			l_explosion_08 = thread( f_maintenance_hall_explosion_trigger(08, flg_maintenance_hall_explosion_08, NONE, FX_explosion_sparks, DMG_explosion_large, "maintenance_hall_explosion_08", r_mh_destruction_delay_l, 3, TRUE, 3) );
		end
		if ( l_explosion_09 == 0 ) then
			l_explosion_09 = thread( f_maintenance_hall_explosion_trigger(09, flg_maintenance_hall_explosion_09, NONE, FX_explosion_sparks, DMG_explosion_large, "maintenance_hall_explosion_09", r_mh_destruction_delay_l, 1, TRUE, 3) );
		end
		if ( l_explosion_10 == 0 ) then
			l_explosion_10 = thread( f_maintenance_hall_explosion_trigger(10, flg_maintenance_hall_explosion_10, NONE, FX_explosion_large, DMG_explosion_large, "maintenance_hall_explosion_10", r_mh_destruction_delay_l, 2, TRUE, 3) );
		end
		if ( l_explosion_11 == 0 ) then
			l_explosion_11 = thread( f_maintenance_hall_explosion_trigger(11, flg_maintenance_hall_explosion_11, NONE, FX_explosion_sparks, DMG_explosion_large, "maintenance_hall_explosion_11", r_mh_destruction_delay_l, 1, TRUE, 3) );
		end
		if ( l_explosion_12 == 0 ) then
			l_explosion_12 = thread( f_maintenance_hall_explosion_trigger(12, flg_maintenance_hall_explosion_12, cr_maintenance_hall_wall_12, FX_explosion_sparks, DMG_explosion_large, "maintenance_hall_explosion_12", R_mh_destruction_delay_s, 1, TRUE, 4) );
		end
//		if ( l_explosion_13 == 0 ) then
//			l_explosion_13 = thread( f_maintenance_hall_explosion_trigger(13, flg_maintenance_hall_explosion_13, cr_maintenance_hall_wall_13, FX_explosion_sparks, DMG_explosion_large, "maintenance_hall_explosion_13", R_mh_destruction_delay_s, 1, TRUE, 4) );
//		end
		if ( l_explosion_14 == 0 ) then
			l_explosion_14 = thread( f_maintenance_hall_explosion_trigger(14, flg_maintenance_hall_explosion_14, cr_maintenance_hall_wall_14, FX_explosion_large, DMG_explosion_large, "maintenance_hall_explosion_14", R_mh_destruction_delay_s, 1, TRUE, 5) );
		end
//		if ( l_explosion_15 == 0 ) then
//			l_explosion_15 = thread( f_maintenance_hall_explosion_trigger(15, flg_maintenance_hall_explosion_15, cr_maintenance_hall_wall_15, FX_explosion_large, DMG_explosion_large, "maintenance_hall_explosion_15", R_mh_destruction_delay_s, 1, TRUE, 5) );
//		end
//		if ( l_explosion_16 == 0 ) then
//			l_explosion_16 = thread( f_maintenance_hall_explosion_trigger(16, flg_maintenance_hall_explosion_16, cr_maintenance_hall_wall_16, FX_explosion_sparks, DMG_explosion_large, "maintenance_hall_explosion_16", R_mh_destruction_delay_s, 1, TRUE, 5) );
//		end
		if ( l_explosion_17 == 0 ) then
			l_explosion_17 = thread( f_maintenance_hall_explosion_trigger(17, flg_maintenance_hall_explosion_17, cr_maintenance_hall_wall_17, FX_explosion_large, DMG_explosion_large, "maintenance_hall_explosion_17", R_mh_destruction_delay_s, 1, TRUE, 5) );
		end
		if ( l_explosion_18 == 0 ) then
			l_explosion_18 = thread( f_maintenance_hall_explosion_trigger(18, flg_maintenance_hall_explosion_18, cr_maintenance_hall_wall_18, FX_explosion_sparks, DMG_explosion_large, "maintenance_hall_explosion_18", R_mh_destruction_delay_s, 1, TRUE, 5) );
		end
//		if ( l_explosion_19 == 0 ) then
//			l_explosion_19 = thread( f_maintenance_hall_explosion_trigger(19, flg_maintenance_hall_explosion_19, cr_maintenance_hall_wall_19, FX_explosion_sparks, DMG_explosion_large, "maintenance_hall_explosion_19", R_mh_destruction_delay_s, 1, TRUE, 5) );
//		end
//		if ( l_explosion_20 == 0 ) then
//			l_explosion_20 = thread( f_maintenance_hall_explosion_trigger(20, flg_maintenance_hall_explosion_20, cr_maintenance_hall_wall_20, FX_explosion_large, DMG_explosion_large, "maintenance_hall_explosion_20", R_mh_destruction_delay_s, 1, TRUE, 6) );
//		end
//		if ( l_explosion_21 == 0 ) then
//			l_explosion_21 = thread( f_maintenance_hall_explosion_trigger(21, flg_maintenance_hall_explosion_21, cr_maintenance_hall_wall_21, FX_explosion_large, DMG_explosion_large, "maintenance_hall_explosion_21", R_mh_destruction_delay_s, 1, TRUE, 6) );
//		end
//		if ( l_explosion_22 == 0 ) then
//			l_explosion_22 = thread( f_maintenance_hall_explosion_trigger(22, flg_maintenance_hall_explosion_22, cr_maintenance_hall_wall_22, FX_explosion_sparks, DMG_explosion_large, "maintenance_hall_explosion_22", R_mh_destruction_delay_s, 1, TRUE, 6) );
//		end
//		if ( l_explosion_23 == 0 ) then
//			l_explosion_23 = thread( f_maintenance_hall_explosion_trigger(23, flg_maintenance_hall_explosion_23, cr_maintenance_hall_wall_23, FX_explosion_sparks, DMG_explosion_large, "maintenance_hall_explosion_23", R_mh_destruction_delay_s, 1, TRUE, 6) );
//		end
	else
//		if ( l_explosion_01 != 0 ) then
//			kill_thread( l_explosion_01 );
//			l_explosion_01 = 0;
//		end
		if ( l_explosion_02 != 0 ) then
			kill_thread( l_explosion_02 );
			l_explosion_02 = 0;
		end
		if ( l_explosion_03 != 0 ) then
			kill_thread( l_explosion_03 );
			l_explosion_03 = 0;
		end
		if ( l_explosion_04 != 0 ) then
			kill_thread( l_explosion_04 );
			l_explosion_04 = 0;
		end
//		if ( l_explosion_05 != 0 ) then
//			kill_thread( l_explosion_05 );
//			l_explosion_05 = 0;
//		end
//		if ( l_explosion_06 != 0 ) then
//			kill_thread( l_explosion_06 );
//			l_explosion_06 = 0;
//		end
		if ( l_explosion_07 != 0 ) then
			kill_thread( l_explosion_07 );
			l_explosion_07 = 0;
		end
		if ( l_explosion_08 != 0 ) then
			kill_thread( l_explosion_08 );
			l_explosion_08 = 0;
		end
		if ( l_explosion_09 != 0 ) then
			kill_thread( l_explosion_09 );
			l_explosion_09 = 0;
		end
		if ( l_explosion_10 != 0 ) then
			kill_thread( l_explosion_10 );
			l_explosion_10 = 0;
		end
		if ( l_explosion_11 != 0 ) then
			kill_thread( l_explosion_11 );
			l_explosion_11 = 0;
		end
		if ( l_explosion_12 != 0 ) then
			kill_thread( l_explosion_12 );
			l_explosion_12 = 0;
		end
//		if ( l_explosion_13 != 0 ) then
//			kill_thread( l_explosion_13 );
//			l_explosion_13 = 0;
//		end
		if ( l_explosion_14 != 0 ) then
			kill_thread( l_explosion_14 );
			l_explosion_14 = 0;
		end
//		if ( l_explosion_15 != 0 ) then
//			kill_thread( l_explosion_15 );
//			l_explosion_15 = 0;
//		end
//		if ( l_explosion_16 != 0 ) then
//			kill_thread( l_explosion_16 );
//			l_explosion_16 = 0;
//		end
		if ( l_explosion_17 != 0 ) then
			kill_thread( l_explosion_17 );
			l_explosion_17 = 0;
		end
		if ( l_explosion_18 != 0 ) then
			kill_thread( l_explosion_18 );
			l_explosion_18 = 0;
		end
//		if ( l_explosion_19 != 0 ) then
//			kill_thread( l_explosion_19 );
//			l_explosion_19 = 0;
//		end
//		if ( l_explosion_20 != 0 ) then
//			kill_thread( l_explosion_20 );
//			l_explosion_20 = 0;
//		end
//		if ( l_explosion_21 != 0 ) then
//			kill_thread( l_explosion_21 );
//			l_explosion_21 = 0;
//		end
//		if ( l_explosion_22 != 0 ) then
//			kill_thread( l_explosion_22 );
//			l_explosion_22 = 0;
//		end
//		if ( l_explosion_23 != 0 ) then
//			kill_thread( l_explosion_23 );
//			l_explosion_23 = 0;
//		end
	
	end
end

// === f_maintenance_hall_destruction_deinit::: Deinit
script dormant f_maintenance_hall_destruction_deinit()
	//dprint( "::: f_maintenance_hall_destruction_deinit :::" );

	// shut down all the events just in case
	f_maintenance_hall_destruction_setup( FALSE );

	// kill functions
	sleep_forever( f_maintenance_hall_destruction_init );
	sleep_forever( f_maintenance_hall_destruction_trigger_player );
	sleep_forever( f_maintenance_hall_destruction_trigger_AI );

end

// === f_maintenance_hall_destruction_trigger::: Deinit
script dormant f_maintenance_hall_destruction_trigger()
	//dprint( "::: f_maintenance_hall_destruction_trigger :::" );
	// setup triggers
	wake( f_maintenance_hall_destruction_trigger_player );
	wake( f_maintenance_hall_destruction_trigger_AI );

	sleep_until( f_maintenance_hall_destruction_active(), 1 );
	sleep_rand_s( 0.25, 0.333 );		
	sfx_end_alarm_set( DEF_S_END_ALARM_STATE_EXPLOSION_ALLEY );
	L_maintenance_hall_rumble_ID = f_mission_screenshakes_rumble_high( -0.125 );	// XXX make stronger if you're in the hall
	
	wake( f_dialog_ShipVO_ExplosionAlley );
	
	thread( f_lighting_bsp18_direct_set(0.5, -1, 0.10, 1) );
	thread( f_lighting_bsp18_indirect_set(0.5, -1, 0.10, 1) );
	sleep_s( 0.5 );
	f_screenshake_ambient_pause( TRUE, FALSE, 0.0 );

	sleep_until( f_maintenance_hall_destruction_complete(), 1 );
	sleep_rand_s( 0.5, 0.75 );										
	thread( f_lighting_bsp18_direct_set(2.5, -1, 0.75, 1) );
	thread( f_lighting_bsp18_indirect_set(2.5, -1, 0.75, 1) );
	
	if ( not volume_test_players(tv_vehiclebay_airlock_area) ) then
		f_screenshake_ambient_pause( TRUE, FALSE, 0.0 );
	end

	thread( fx_explosionalley_destruction(FALSE) );
	
	L_maintenance_hall_rumble_ID = f_screenshake_rumble_global_remove( L_maintenance_hall_rumble_ID, -1, 1.5 );
	
	wake( f_maintenance_hall_destruction_deinit );

end

script static void f_maintenance_hall_explosion_trigger( short s_index, cutscene_flag flg_loc, object obj_object, effect fx_tag, damage dmg_tag, string str_notify, real r_delay, short s_next_min, boolean B_check_area, short s_sfx_state )
	// increment total
	S_maintenance_hall_explosion_total = S_maintenance_hall_explosion_total + 1;

	// wait for event conditions
	sleep_until( (L_maintenance_hall_explosion_timer <= game_tick_get()) and ((S_maintenance_hall_explosion_trigger >= s_index) or ((objects_distance_to_flag(players(),flg_loc) <= 3.75) and (volume_test_players(tv_explosionalley_area) or (not B_check_area)))), 1 );
	
	if ( S_maintenance_hall_explosion_trigger <= s_index) then
		S_maintenance_hall_explosion_trigger = s_index;
	end

	if ( S_maintenance_hall_explosion_trigger == s_index ) then
	
		// set the sfx state
		thread( sfx_explosion_alley_destruction(s_sfx_state) );

		if ( (objects_distance_to_flag(players(),flg_loc) > 1.875) or (player_count() == 0) ) then
		
			// start the timer
			L_maintenance_hall_explosion_timer = game_tick_get() + seconds_to_frames(r_delay);
			
			if ( obj_object != NONE ) then
				object_set_physics( obj_object, TRUE );
			end
			
			if ( fx_tag != NONE ) then
				effect_new( fx_tag, flg_loc );
			end
	
			if ( dmg_tag != NONE ) then
				damage_new( dmg_tag, flg_loc );
			end
			
		
			if ( str_notify != "" ) then
				NotifyLevel( str_notify );
			end
			
			L_maintenance_hall_explosion_fired = L_maintenance_hall_explosion_fired + 1;
			
		end
		
		S_maintenance_hall_explosion_trigger = S_maintenance_hall_explosion_trigger + random_range( s_next_min, 2 );
		
	end

end

script dormant test_explosion_alley()
static real l_time = game_tick_get();

	wake( f_maintenance_hall_destruction_init );

	if ( S_maintenance_hall_explosion_trigger <= 1 ) then
		S_maintenance_hall_explosion_trigger = 1;
	end

	sleep_until ( f_maintenance_hall_destruction_complete(), 1 );
	//dprint( "----------------------------------------" );
	//dprint( "::: test_explosion_alley: TOTAL TIME :::" );
	//dprint( "----------------------------------------" );
	inspect( frames_to_seconds(game_tick_get() - l_time) );
	//dprint( "----------------------------------------" );
	//dprint( "::: test_explosion_alley: TOTAL FIRED :::" );
	//dprint( "----------------------------------------" );
	inspect( L_maintenance_hall_explosion_fired );

end

// === f_maintenance_hall_destruction_active::: Checks if the destruciton is active
script static boolean f_maintenance_hall_destruction_active()
	(S_maintenance_hall_explosion_trigger > -1) and (not f_maintenance_hall_destruction_complete());
end
// === f_maintenance_hall_destruction_complete::: Checks if the destruciton is complete
script static boolean f_maintenance_hall_destruction_complete()
	(S_maintenance_hall_explosion_trigger > S_maintenance_hall_explosion_total) and (S_maintenance_hall_explosion_total > 0);
end

// === f_maintenance_hall_destruction_trigger_player::: Triggers the destruction action
script dormant f_maintenance_hall_destruction_trigger_player()
static long l_timer 	= 0;

	sleep_until( volume_test_players(tv_explosionalley_area) or f_maintenance_hall_destruction_active(), 1 );
	//dprint( "::: f_maintenance_hall_destruction_trigger_player :::" );

	if ( not f_maintenance_hall_destruction_active() ) then
		thread( fx_explosionalley_destruction(TRUE) );
	
		// start the destruction
		S_maintenance_hall_explosion_trigger = 0;

		// wait to start	
		l_timer = game_tick_get() + seconds_to_frames( 5.0 );
		sleep_until( (l_timer <= game_tick_get()) or (volume_test_players(tv_ea_destruction_player_force)) or (S_maintenance_hall_explosion_trigger > 0), 1 );

//		if ( (not f_maintenance_hall_destruction_complete()) and volume_test_players(tv_explosionalley_area) ) then
//			// VO
//			wake( f_dialog_Run_Start );
//		end

		if ( S_maintenance_hall_explosion_trigger == 0 ) then
			sleep_forever( f_maintenance_hall_destruction_trigger_AI );

			// start the first trigger
			S_maintenance_hall_explosion_trigger = 1;
		end

	end
			
end

// === f_maintenance_hall_destruction_trigger_AI::: Triggers the destruction action
script dormant f_maintenance_hall_destruction_trigger_AI()
	sleep_until( volume_test_objects( tv_ea_destruction_ai_force, ai_actors(gr_maintenance_explosionalley) ) or f_maintenance_hall_destruction_active(), 1 );
	//dprint( "::: f_maintenance_hall_destruction_trigger_AI :::" );
	
	if ( not f_maintenance_hall_destruction_active() ) then
		thread( fx_explosionalley_destruction(TRUE) );

		// start the destruction
		S_maintenance_hall_explosion_trigger = 0;

		// give them a little wiggle room
		sleep_rand_s( 0.75, 1.5 );

		if ( S_maintenance_hall_explosion_trigger == 0 ) then
			sleep_forever( f_maintenance_hall_destruction_trigger_player );

			// start the first trigger
			S_maintenance_hall_explosion_trigger = 1;
		end
	end	

end



// -------------------------------------------------------------------------------------------------
// MAINTENANCE: HALL: AIRLOCK
// -------------------------------------------------------------------------------------------------
// variables

// functions
// === f_maintenance_airlock_init::: Initialize
script dormant f_maintenance_airlock_init()
	//dprint( "::: f_maintenance_airlock_init :::" );

	// initialize sub modules
	wake( f_maintenance_airlock_door01_init );
	wake( f_maintenance_airlock_door02_init );
	wake( f_maintenance_airlock_blackout_init );

	// setup triggers
	wake( f_maintenance_airlock_trigger_vo );
	
end

// === f_maintenance_airlock_trigger_vo::: Initialize
script dormant f_maintenance_airlock_trigger_vo()
	sleep_until( volume_test_players(tv_vehiclebay_airlock_area), 1 );
	//dprint( "::: f_maintenance_airlock_trigger_vo :::" );

	wake( f_dialog_VehicleBay_Airlock );
end

// === f_maintenance_airlock_deinit::: Deinitialize
script dormant f_maintenance_airlock_deinit()
	//dprint( "::: f_maintenance_airlock_deinit :::" );

	// kill any functions
	sleep_forever( f_maintenance_airlock_init );
	sleep_forever( f_maintenance_airlock_trigger_vo );

	// deinitialize sub modules
	wake( f_maintenance_airlock_door01_deinit );
	wake( f_maintenance_airlock_door02_deinit );
	wake( f_maintenance_airlock_blackout_deinit );

end



// -------------------------------------------------------------------------------------------------
// MAINTENANCE: AIRLOCK: DOORS: 01
// -------------------------------------------------------------------------------------------------
// variables
global real DEF_MAINTENANCE_HALL_01_CLOSE_POS = 0.125;

// functions
// === f_maintenance_airlock_door01_init::: Initialize
script dormant f_maintenance_airlock_door01_init()
	sleep_until( object_valid(dm_maintenance_hall_door01), 1 );
	//dprint( "::: f_maintenance_airlock_door01_init :::" );
	
	// when the door is open
	wake( f_maintenance_airlock_door01_autoopen );

end

// === f_maintenance_airlock_door01_deinit::: Deinitialize
script dormant f_maintenance_airlock_door01_deinit()
	//dprint( "::: f_maintenance_airlock_door01_deinit :::" );

	// kill any functions
	sleep_forever( f_maintenance_airlock_door01_init );
	sleep_forever( f_maintenance_airlock_door01_autoopen );
	sleep_forever( f_maintenance_airlock_door01_autoclose );
	sleep_forever( f_maintenance_airlock_door01_trigger );
	sleep_forever( f_maintenance_airlock_door01_action );

end

// === f_maintenance_airlock_door01_opened::: Handles auto opening the door
script dormant f_maintenance_airlock_door01_autoopen()

	if ( not volume_test_players_all(tv_vehiclebay_airlock_area) ) then
		// setup auto open
		dm_maintenance_hall_door01->speed_set( (dm_maintenance_hall_door01->speed_fast() + dm_maintenance_hall_door01->speed_very_fast()) / 2 );
		thread( dm_maintenance_hall_door01->auto_distance_open(-7.5, FALSE) );
		sleep_until( dm_maintenance_hall_door01->check_open(), 1 );
		//dprint( "::: f_maintenance_airlock_door01_opened :::" );
	
		// Setup auto close
		wake( f_maintenance_airlock_door01_autoclose );
	end

	// Setup auto close trigger
	wake( f_maintenance_airlock_door01_trigger );

end

// === f_maintenance_airlock_door01_autoclose::: Closes the door behind the players
script dormant f_maintenance_airlock_door01_autoclose()
	sleep_until( (not volume_test_objects(tv_vehiclebay_airlock_area,ai_actors(gr_maintenance_explosionalley))) and volume_test_players_all(tv_vehiclebay_airlock_area), 1 );
	// close the door when all players are in
	dm_maintenance_hall_door01->auto_trigger_close( tv_vehiclebay_airlock_area, TRUE, TRUE, TRUE );
	//dprint( "::: f_maintenance_airlock_door01_autoclose :::" );
	
end	

// === f_maintenance_airlock_door01_trigger::: Closes the door behind the players
script dormant f_maintenance_airlock_door01_trigger()
	sleep_until( device_get_position(dm_maintenance_hall_door01) <= DEF_MAINTENANCE_HALL_01_CLOSE_POS, 1 );

	// close the door when all players are in
	//dprint( "::: f_maintenance_airlock_door01_trigger :::" );
	sfx_end_alarm_set( DEF_S_END_ALARM_STATE_BLACKOUT );
	
	// action
	wake( f_maintenance_airlock_door01_action );
	
end	

// === f_maintenance_airlock_door01_action::: Action
script dormant f_maintenance_airlock_door01_action()
	//dprint( "::: f_maintenance_airlock_door01_action :::" );
	
		//datamine
	data_mine_set_mission_segment( "m10_END_vehiclebay_airlock" );

	// blackout
	wake( f_maintenance_airlock_blackout_action );

end



// -------------------------------------------------------------------------------------------------
// MAINTENANCE: HALL: CHECKPOINT
// -------------------------------------------------------------------------------------------------
// === f_maintenance_airlock_checkpoint::: Checkpoint
script dormant f_maintenance_airlock_checkpoint()
static boolean b_checkpoint = FALSE;
	//dprint( "::: f_maintenance_airlock_checkpoint :::" );

	if ( not b_checkpoint ) then
		game_save();
		sleep( 1 );
		
		transition_fov( -1, -1, 0.0, -1 );
		//render_default_lighting = FALSE;
	end

end



// -------------------------------------------------------------------------------------------------
// MAINTENANCE: HALL: BLACKOUT
// -------------------------------------------------------------------------------------------------
// variables

// functions
// === f_maintenance_airlock_blackout_init::: Initialize
script dormant f_maintenance_airlock_blackout_init()
	dprint( "::: f_maintenance_airlock_blackout_init :::" );

end

// === f_maintenance_airlock_blackout_deinit::: Deinitialize
script dormant f_maintenance_airlock_blackout_deinit()
	//dprint( "::: f_maintenance_airlock_blackout_deinit :::" );

	sleep_forever( f_maintenance_airlock_blackout_init );
	sleep_forever( f_maintenance_airlock_blackout_action );

end

// === f_maintenance_airlock_blackout_action::: Do the blackout event
script dormant f_maintenance_airlock_blackout_action()
static real r_blackout_lighting_start_time = 1.0;
static real r_blackout_lighting_start_level = 0.0;
static real r_blackout_lighting_return_time = 3.125;
static real r_blackout_lighting_return_level = 0.125;

	//dprint( "::: f_maintenance_airlock_blackout_action :::" );

	f_screenshake_ambient_pause( TRUE, FALSE, 0.0 );

	// blackout VO
	wake( f_dialog_ShipVO_Blackout );
	sleep_until( dialog_id_played_check(L_dialog_ShipVO_Blackout), 1 );
	
	// xxx blackout
	thread( sfx_vehiclebay_blackout() );
	thread( f_lighting_bsp18_direct_set(r_blackout_lighting_start_time, -1, r_blackout_lighting_start_level, 1) );
	thread( f_lighting_bsp18_indirect_set( r_blackout_lighting_start_time, -1, r_blackout_lighting_start_level, 1) );
	sleep_s( r_blackout_lighting_start_time );
	
	// load the zone
	//f_insertion_zoneload( S_zoneset_36_hallway_38_vehicle_40_debris, TRUE );

	sleep_until( B_sfx_blackout_complete or B_maintenance_airlock_ICS_started, 1 );

	sleep_s( 0.75 );
	thread( f_lighting_bsp18_direct_set(r_blackout_lighting_return_time, -1, r_blackout_lighting_return_level, 1) );
	thread( f_lighting_bsp18_indirect_set(r_blackout_lighting_return_time, -1, r_blackout_lighting_return_level, 1) );

	sleep_s( 0.5 );
	if ( not B_maintenance_airlock_ICS_started ) then
		thread( f_objective_set(DEF_R_OBJECTIVE_PRY_POD_DOOR, FALSE, TRUE, FALSE, TRUE) );
		f_mission_screenshakes_ambient_layer_set_inc( DEF_S_AMBIENTSHAKE_STATE_BLACKOUT );
	end
	
	//wake( f_maintenance_airlock_checkpoint );

end


// -------------------------------------------------------------------------------------------------
// MAINTENANCE: HALL: DOORS: 02
// -------------------------------------------------------------------------------------------------
// variables
global boolean B_maintenance_airlock_ICS_started = FALSE;

// functions
// === f_maintenance_airlock_door02_init::: Initialize
script dormant f_maintenance_airlock_door02_init()

	wake( f_maintenance_airlock_door02_trigger );
	
end
	
// === f_maintenance_airlock_door02_deinit::: Deinitialize
script dormant f_maintenance_airlock_door02_deinit()
	//dprint( "::: f_maintenance_airlock_door02_deinit :::" );

	// kill any functions
	sleep_forever( f_maintenance_airlock_door02_init );
	sleep_forever( f_maintenance_airlock_door02_trigger );

end
	
// === f_maintenance_airlock_door02_trigger::: Trigger for the ICS door
script dormant f_maintenance_airlock_door02_trigger()
	sleep_until( volume_test_players(tv_spacesuck)==true, 1 );
	f_mission_screenshakes_ambient_layer_set_inc( DEF_S_AMBIENTSHAKE_STATE_NONE );
	f_screenshake_ambient_pause( TRUE, FALSE, 0.0 );
	sleep(1);
	// load the zone
	thread( dm_maintenance_hall_door01->close_instant() );
	f_insertion_zoneload( S_zoneset_36_hallway_38_vehicle_40_debris, TRUE );

//	wake (f_dialog_rail_sequence);

	g_ics_player=player_get_first_alive();
	pup_play_show(vehicle_bay);
end

script static void f_force_scenery_door()
		//dprint("open sn door");
		scenery_animation_start ( sn_maintenance_door_02, environments\solo\m10_crash\scenery\m10_ics_elevator_door01\m10_ics_elevator_door01  ,"m10_ics_elevator_door01");
end

script static void f_title_card_display()
	music_stop('Stop_mus_m10'); 
	cui_load_screen( 'environments\solo\m10_crash\ui\m10_ending_logo.cui_screen' );
	sleep_s(6.5);

	game_won();
end
// --- End m10_end_maintenance_hall.hsc ---

// --- Begin m10_end_maintenance_hall_ai.hsc ---
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343
//
// Mission: 					m10_crash_end
//	Insertion Points:	start (or icr)	- Beginning
//										ibr							- Broken Floor
//										iea							- explosion alley
//										ivb							- Vehicle Bay
//										iju							- Jump Debris
//										
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343
		
// -------------------------------------------------------------------------------------------------
// MAINTENANCE: HALL: AI
// -------------------------------------------------------------------------------------------------
// variables
global short S_maintenance_hall_AI_state										= -1;

global short DEF_S_MAINTENANCE_HALL_AI_STATE_GATE_0				= 0;
global short DEF_S_MAINTENANCE_HALL_AI_STATE_GATE_1				= 1;
global short DEF_S_MAINTENANCE_HALL_AI_STATE_GATE_2				= 2;
global short DEF_S_MAINTENANCE_HALL_AI_STATE_GATE_3				= 3;
global short DEF_S_MAINTENANCE_HALL_AI_STATE_DOOR					= 4;
global short DEF_S_MAINTENANCE_HALL_AI_STATE_WAITING			= 5;
global short DEF_S_MAINTENANCE_HALL_AI_STATE_AIRLOCK			= 6;

global real R_maintenance_hall_AI_goto_range							= 0.5;
//global real R_maintenance_hall_AI_gate_delay							= 2.5;
global real R_maintenance_hall_AI_gate_delay							= 0.0;
global boolean B_maintenance_hall_AI_suprised							= FALSE;
global long S_maintenance_hall_AI_watch_thread						= 0;
global boolean B_maintenance_hall_AI_test									= FALSE;
global boolean B_maintenance_hall_AI_paused								= FALSE;
global boolean B_maintenance_hall_AI_dive_move						= FALSE;
global short S_maintenance_hall_AI_guard_post							= 0;

// functions
// -------------------------------------------------------------------------------------------------
// MAINTENANCE: HALL: TEST
// -------------------------------------------------------------------------------------------------
/*
script static void debug_maintenance_hall_ai()

	if ( S_maintenance_hall_AI_state < DEF_S_MAINTENANCE_HALL_AI_STATE_GATE_0 ) then

		// wake up modules that need to be ready
		wake( f_maintenance_hall_block01_init );
		wake( f_maintenance_hall_destruction_init );
		wake( f_maintenance_airlock_door01_init );
	
		// start the init
		wake( f_maintenance_hall_AI_init );
		
		R_maintenance_hall_AI_gate_delay = 0.0;
		B_maintenance_hall_AI_test = TRUE;
		
		// start the ai state
		S_maintenance_hall_AI_state = DEF_S_MAINTENANCE_HALL_AI_STATE_GATE_0;
	else
		S_maintenance_hall_AI_state = S_maintenance_hall_AI_state+1;
		if ( S_maintenance_hall_AI_state > DEF_S_MAINTENANCE_HALL_AI_STATE_AIRLOCK ) then
			S_maintenance_hall_AI_state = DEF_S_MAINTENANCE_HALL_AI_STATE_AIRLOCK;
		end
	end

end
*/
// -------------------------------------------------------------------------------------------------
// MAINTENANCE: HALL: AI
// -------------------------------------------------------------------------------------------------
// === f_maintenance_hall_AI_init::: Initialize
script dormant f_maintenance_hall_AI_init()
	//dprint( "::: f_maintenance_hall_AI_init :::" );

	// place AI
	//ai_place( gr_maintenance_explosionalley );



	// initialize sub modules
	//wake( f_maintenance_hall_AI_trigger );
	//wake( f_maintenance_hall_AI_suprised );
	//wake( f_maintenance_hall_AI_pause );

	// setup cleanup
	wake( f_maintenance_hall_AI_cleanup );

	sleep_until(volume_test_players(tv_explosionalley_prehall_area), 1);
	fx_hall_explosion();
	pup_play_show(elite_alley_crawl);
end

// === f_maintenance_hall_AI_deinit::: Deinitialize
script dormant f_maintenance_hall_AI_deinit()
	//dprint( "::: f_maintenance_hall_AI_deinit :::" );

	// kill functions
	sleep_forever( f_maintenance_hall_AI_destruction_dive );
	sleep_forever( f_maintenance_hall_AI_suprised );
	sleep_forever( f_maintenance_hall_AI_trigger );
	sleep_forever( f_maintenance_hall_AI_pause );

	// deinitialize sub modules

end

// === f_maintenance_hall_AI_destruction_dive::: Makes an AI dive from explosion
script dormant f_maintenance_hall_AI_destruction_dive()
	//dprint( "f_maintenance_hall_AI_destruction_dive" );

	if ( volume_test_objects(tv_explosionalley_ai_dive,ai_actors(gr_maintenance_explosionalley)) ) then
		sleep_rand_s( 0.0, 0.25 );
		cs_run_command_script( sq_mh_explosionalley_grunt01, cs_maintenance_hall_AI_dive );
		cs_run_command_script( sq_mh_explosionalley_grunt02, cs_maintenance_hall_AI_dive );
		cs_run_command_script( sq_mh_explosionalley_grunt03, cs_maintenance_hall_AI_dive );
		//cs_run_command_script( sq_mh_explosionalley_grunt04, cs_maintenance_hall_AI_dive );
	end

end

// === f_maintenance_hall_AI_suprised::: Makes an AI acti suprised
script dormant f_maintenance_hall_AI_suprised()
	sleep_until( f_ai_is_aggressive(gr_maintenance_explosionalley) or volume_test_players(tv_explosionalley_area), 1 );
	
	if ( S_maintenance_hall_AI_state < DEF_S_MAINTENANCE_HALL_AI_STATE_DOOR ) then
		static short s_index = 0;
		//dprint( "::: f_maintenance_hall_AI_suprised :::" );

		s_index = objlist_index_nearest_point( ai_actors(gr_maintenance_explosionalley), ps_maintenance_explosionalley.start );
	
		if ( s_index != -1 ) then
			cs_run_command_script( object_get_ai(list_get(ai_actors(gr_maintenance_explosionalley),s_index)), cs_maintenance_hall_AI_suprise );
		end
	end

end

// === f_maintenance_hall_AI_pause_set::: Sets the pause flag
script static void f_maintenance_hall_AI_pause_set( boolean b_pause )

	if ( B_maintenance_hall_AI_paused != b_pause ) then
		B_maintenance_hall_AI_paused = b_pause;
		//dprint_if( b_pause, "f_maintenance_hall_AI_pause_set: TRUE" );
		//dprint_if( not b_pause, "f_maintenance_hall_AI_pause_set: FALSE" );
	end
	
end

// === f_maintenance_hall_AI_pause::: Sets the pause flag under the right condition
script dormant f_maintenance_hall_AI_pause()
	//dprint( "f_maintenance_hall_AI_pause" );
	
	sleep_until( S_maintenance_hall_AI_state >= DEF_S_MAINTENANCE_HALL_AI_STATE_GATE_1, 1 );
	repeat
		f_maintenance_hall_AI_pause_set( (objects_distance_to_point(Players(),ps_maintenance_explosionalley.door01) <= objects_distance_to_point(ai_actors(gr_maintenance_explosionalley),ps_maintenance_explosionalley.door01)) and (player_count() > 0) );
	until( S_maintenance_hall_AI_state > DEF_S_MAINTENANCE_HALL_AI_STATE_DOOR, 15 );
	
end

script static long ai_dead_count( ai ai_check )
	ai_living_count( ai_check ) - ai_spawn_count( ai_check );
end

// === f_maintenance_hall_AI_trigger::: triggers the AI
script dormant f_maintenance_hall_AI_trigger()
	//dprint( "::: f_maintenance_hall_AI_trigger :::" );

	// start -> gate 0	
	sleep_until( (volume_test_players(tv_explosionalley_ai_force)) or (volume_test_players(tv_explosionalley_area)) or ((volume_test_players(tv_explosionalley_ai_lookat_area)) and (volume_test_players_lookat(tv_explosionalley_ai_lookat_target, 17.5, 5.0))) or (S_maintenance_hall_AI_state >= DEF_S_MAINTENANCE_HALL_AI_STATE_GATE_0), 1 );
	//dprint( "::: f_maintenance_hall_AI_trigger: GATE 0 :::" );
	//ai_set_task_condition( ai_maintenance_explosionalley.easg_home, FALSE );
	//cs_run_command_script( sq_mh_explosionalley_grunt01, cs_maintenance_hall_AI_gate0 );
	//cs_run_command_script( sq_mh_explosionalley_grunt02, cs_maintenance_hall_AI_gate0 );
	//cs_run_command_script( sq_mh_explosionalley_grunt03, cs_maintenance_hall_AI_gate0 );
//	cs_run_command_script( sq_mh_explosionalley_grunt04, cs_maintenance_hall_AI_gate0 );
	if ( S_maintenance_hall_AI_state < DEF_S_MAINTENANCE_HALL_AI_STATE_GATE_0 ) then
		S_maintenance_hall_AI_state = DEF_S_MAINTENANCE_HALL_AI_STATE_GATE_0;
	end

	// gate 0	-> gate 
	sleep_until( (S_maintenance_hall_AI_state >= DEF_S_MAINTENANCE_HALL_AI_STATE_GATE_1) or (volume_test_objects(tv_explosionalley_gate0,ai_actors(gr_maintenance_explosionalley))) or (ai_dead_count(gr_maintenance_explosionalley) >= 1), 1 );
	//dprint( "::: f_maintenance_hall_AI_trigger: GATE 1 :::" );
	//ai_set_task_condition( ai_maintenance_explosionalley.easg_gate0, FALSE );
	//cs_run_command_script( sq_mh_explosionalley_grunt01, cs_maintenance_hall_AI_gate1 );
	//cs_run_command_script( sq_mh_explosionalley_grunt02, cs_maintenance_hall_AI_gate1 );
	//cs_run_command_script( sq_mh_explosionalley_grunt03, cs_maintenance_hall_AI_gate1 );
	//cs_run_command_script( sq_mh_explosionalley_grunt04, cs_maintenance_hall_AI_gate1 );
	if ( S_maintenance_hall_AI_state < DEF_S_MAINTENANCE_HALL_AI_STATE_GATE_1 ) then
		S_maintenance_hall_AI_state = DEF_S_MAINTENANCE_HALL_AI_STATE_GATE_1;
	end

	// gate 1	-> gate 2
	sleep_until( (S_maintenance_hall_AI_state >= DEF_S_MAINTENANCE_HALL_AI_STATE_GATE_2) or (volume_test_objects(tv_explosionalley_gate1,ai_actors(gr_maintenance_explosionalley))) or (ai_dead_count(gr_maintenance_explosionalley) >= 2), 1 );
	//dprint( "::: f_maintenance_hall_AI_trigger: GATE 2 :::" );
	//ai_set_task_condition( ai_maintenance_explosionalley.easg_gate1, FALSE );
	//cs_run_command_script( sq_mh_explosionalley_grunt01, cs_maintenance_hall_AI_gate2 );
	//cs_run_command_script( sq_mh_explosionalley_grunt02, cs_maintenance_hall_AI_gate2 );
	//cs_run_command_script( sq_mh_explosionalley_grunt03, cs_maintenance_hall_AI_gate2 );
	//cs_run_command_script( sq_mh_explosionalley_grunt04, cs_maintenance_hall_AI_gate2 );
	if ( S_maintenance_hall_AI_state < DEF_S_MAINTENANCE_HALL_AI_STATE_GATE_2 ) then
		S_maintenance_hall_AI_state = DEF_S_MAINTENANCE_HALL_AI_STATE_GATE_2;
	end

	// gate 2	-> gate 3
	sleep_until( (S_maintenance_hall_AI_state >= DEF_S_MAINTENANCE_HALL_AI_STATE_GATE_3) or (volume_test_objects(tv_explosionalley_gate2,ai_actors(gr_maintenance_explosionalley))) or (ai_dead_count(gr_maintenance_explosionalley) >= 3), 1 );
	//dprint( "::: f_maintenance_hall_AI_trigger: GATE 3 :::" );
	//ai_set_task_condition( ai_maintenance_explosionalley.easg_gate2, FALSE );
	//cs_run_command_script( sq_mh_explosionalley_grunt01, cs_maintenance_hall_AI_gate3 );
	//cs_run_command_script( sq_mh_explosionalley_grunt02, cs_maintenance_hall_AI_gate3 );
	//cs_run_command_script( sq_mh_explosionalley_grunt03, cs_maintenance_hall_AI_gate3 );
	//cs_run_command_script( sq_mh_explosionalley_grunt04, cs_maintenance_hall_AI_gate3 );
	if ( S_maintenance_hall_AI_state < DEF_S_MAINTENANCE_HALL_AI_STATE_GATE_3 ) then
		S_maintenance_hall_AI_state = DEF_S_MAINTENANCE_HALL_AI_STATE_GATE_3;
	end

	// gate 3	-> door
	sleep_until( (S_maintenance_hall_AI_state >= DEF_S_MAINTENANCE_HALL_AI_STATE_DOOR) or (volume_test_objects(tv_explosionalley_gate3,ai_actors(gr_maintenance_explosionalley))), 1 );
	//dprint( "::: f_maintenance_hall_AI_trigger: DOOR :::" );
	//ai_set_task_condition( ai_maintenance_explosionalley.easg_gate3, FALSE );
	//cs_run_command_script( sq_mh_explosionalley_grunt01, cs_maintenance_hall_AI_airlock_open );
	//cs_run_command_script( sq_mh_explosionalley_grunt02, cs_maintenance_hall_AI_airlock_open );
	//cs_run_command_script( sq_mh_explosionalley_grunt03, cs_maintenance_hall_AI_airlock_open );
	//cs_run_command_script( sq_mh_explosionalley_grunt04, cs_maintenance_hall_AI_airlock_open );
	if ( S_maintenance_hall_AI_state < DEF_S_MAINTENANCE_HALL_AI_STATE_DOOR ) then
		S_maintenance_hall_AI_state = DEF_S_MAINTENANCE_HALL_AI_STATE_DOOR;
	end
	
	sleep_until( (S_maintenance_hall_AI_state >= DEF_S_MAINTENANCE_HALL_AI_STATE_WAITING) or (not(dm_maintenance_hall_door01->check_close())), 1 );
	//dprint( "::: f_maintenance_hall_AI_trigger: WAITING :::" );
	if ( dm_maintenance_hall_door01->check_close() ) then
		dm_maintenance_hall_door01->open_instant();
	end
	if ( S_maintenance_hall_AI_state < DEF_S_MAINTENANCE_HALL_AI_STATE_WAITING ) then
		S_maintenance_hall_AI_state = DEF_S_MAINTENANCE_HALL_AI_STATE_WAITING;
	end

	sleep_until( (S_maintenance_hall_AI_state >= DEF_S_MAINTENANCE_HALL_AI_STATE_AIRLOCK) or (dm_maintenance_hall_door01->check_open()), 1 );
	//dprint( "::: f_maintenance_hall_AI_trigger: AIRLOCK :::" );
	//ai_set_task_condition( ai_maintenance_explosionalley.easg_door, FALSE );
	if ( S_maintenance_hall_AI_state < DEF_S_MAINTENANCE_HALL_AI_STATE_AIRLOCK ) then
		S_maintenance_hall_AI_state = DEF_S_MAINTENANCE_HALL_AI_STATE_AIRLOCK;
	end

end

// === f_maintenance_hall_AI_cleanup::: Cleanup
script dormant f_maintenance_hall_AI_cleanup()
	sleep_until( ai_spawn_count(gr_maintenance_explosionalley) > 0, 1 );
	sleep_until( ai_living_count(gr_maintenance_explosionalley) <= 0, 1 );
	//dprint( "::: f_maintenance_hall_AI_cleanup :::" );

	// shut down functions
	wake( f_maintenance_hall_AI_deinit );
	
	sleep_forever( f_maintenance_hall_AI_cleanup );

end

// === f_maintenance_hall_AI_airlock_guard::: AI for grunt at door
script static void f_maintenance_hall_AI_airlock_guard( ai ai_watch )

	//dprint( "::: f_maintenance_hall_AI_airlock_guard: SETUP :::" );
	sleep_until( unit_get_health(ai_get_unit(ai_watch)) <= 0.0, 1 );
	//dprint( "::: f_maintenance_hall_AI_airlock_guard: SWITCH :::" );
	if ( ai_living_count(gr_maintenance_explosionalley) > 0 ) then
		sleep_until( not(B_maintenance_hall_AI_paused) or (S_maintenance_hall_AI_state > DEF_S_MAINTENANCE_HALL_AI_STATE_DOOR), 1 );
		if ( S_maintenance_hall_AI_state <= DEF_S_MAINTENANCE_HALL_AI_STATE_DOOR ) then
			if ( S_maintenance_hall_AI_watch_thread != 0 ) then
				kill_thread( S_maintenance_hall_AI_watch_thread );
				S_maintenance_hall_AI_watch_thread = 0;
			end
			S_maintenance_hall_AI_guard_post = 0;
			cs_run_command_script( sq_mh_explosionalley_grunt01, cs_maintenance_hall_AI_airlock_open );
			cs_run_command_script( sq_mh_explosionalley_grunt02, cs_maintenance_hall_AI_airlock_open );
			cs_run_command_script( sq_mh_explosionalley_grunt03, cs_maintenance_hall_AI_airlock_open );
//			cs_run_command_script( sq_mh_explosionalley_grunt04, cs_maintenance_hall_AI_airlock_open );
		end
	end

end

// === cs_maintenance_hall_AI_dive::: Makes the AI dive from the explosion
script command_script cs_maintenance_hall_AI_dive()
	//dprint( "cs_maintenance_hall_AI_dive" );

	cs_abort_on_alert( FALSE );
	cs_abort_on_damage( FALSE );

	if ( volume_test_object(tv_explosionalley_ai_dive, ai_current_actor) ) then
		sleep_rand_s( 0.0, 0.125 );
		cs_custom_animation( 'objects\characters\storm_grunt\storm_grunt.model_animation_graph', "combat:missile:dive_front", TRUE );
		//sleep_rand_s( 0.0, 0.25 );
		cs_stop_custom_animation();
		B_maintenance_hall_AI_dive_move = TRUE;
		sleep_rand_s( 0.0, 0.25 );
	else
		cs_face( TRUE, ps_maintenance_explosionalley.start );
		sleep_until( B_maintenance_hall_AI_dive_move, 1 );
		sleep_rand_s( 0.0, 0.25 );
	end
	
	cs_run_command_script( ai_current_actor, cs_maintenance_hall_AI_gate0 );
	
end

// === cs_maintenance_hall_AI_suprise::: Makes an AI act suprised
script command_script cs_maintenance_hall_AI_suprise()
	//dprint( "cs_maintenance_hall_AI_suprise" );

	cs_abort_on_alert( FALSE );
	cs_abort_on_damage( FALSE );

	// face the player
	cs_face_player( TRUE );
	
	// Act suprised
	cs_custom_animation( 'objects\characters\storm_grunt\storm_grunt.model_animation_graph', "combat:unarmed:surprise_front", TRUE );
	sleep_rand_s( 0.0, 1.0 );
	cs_stop_custom_animation();
	cs_face_player( FALSE );

	cs_run_command_script( ai_current_actor, cs_maintenance_hall_AI_gate0 );
	
end

// === cs_maintenance_hall_AI_gate0::: AI for grunt going to gate 0
script command_script cs_maintenance_hall_AI_gate0()
	sleep_until( (S_maintenance_hall_AI_state >= DEF_S_MAINTENANCE_HALL_AI_STATE_GATE_0) or (f_maintenance_hall_destruction_active()), 1 );
	//dprint( "cs_maintenance_hall_AI_gate0" );
	
	if ( S_maintenance_hall_AI_state == DEF_S_MAINTENANCE_HALL_AI_STATE_GATE_0 ) then
		cs_abort_on_combat_status( ai_combat_status_dangerous );
		cs_abort_on_damage( volume_test_players(tv_explosionalley_area) or f_ai_is_aggressive(ai_get_squad(ai_current_actor)) );

		sleep_rand_s( 0.0, 1.0 );
		// move to gate
		cs_push_stance( "FLEE" );
		cs_move_towards_point( ps_maintenance_explosionalley.gate0, R_maintenance_hall_AI_goto_range );
	end	
	
end

// === cs_maintenance_hall_AI_gate1::: AI for grunt going to gate 1
script command_script cs_maintenance_hall_AI_gate1()
	sleep_until( (S_maintenance_hall_AI_state >= DEF_S_MAINTENANCE_HALL_AI_STATE_GATE_1) or (f_maintenance_hall_destruction_active()), 1 );
	//dprint( "cs_maintenance_hall_AI_gate1" );

	sleep_until( not(B_maintenance_hall_AI_paused) or (S_maintenance_hall_AI_state > DEF_S_MAINTENANCE_HALL_AI_STATE_GATE_1) or (f_maintenance_hall_destruction_active()), 1 );
	if ( S_maintenance_hall_AI_state == DEF_S_MAINTENANCE_HALL_AI_STATE_GATE_1 ) then
		static long l_timer 	= 0;

		// artificial delay to allow player to catch up		
		if ( l_timer == 0 ) then
			l_timer = game_tick_get() + seconds_to_frames( R_maintenance_hall_AI_gate_delay );
		end
		sleep_until( (l_timer < game_tick_get()) or (volume_test_players(tv_explosionalley_area)) or (volume_test_players(tv_explosionalley_start)) or (f_ai_is_aggressive(ai_get_squad(ai_current_actor))) or (f_maintenance_hall_destruction_active()), 1 );
		
		// set aborts
		cs_abort_on_combat_status( ai_combat_status_dangerous );
		cs_abort_on_damage( volume_test_players(tv_explosionalley_area) or f_ai_is_aggressive(ai_get_squad(ai_current_actor)) );
		
		// move to gate
		cs_push_stance( "FLEE" );
		cs_move_towards_point( ps_maintenance_explosionalley.gate1, R_maintenance_hall_AI_goto_range );
	end
	
end

// === cs_maintenance_hall_AI_gate2::: AI for grunt going to gate 2
script command_script cs_maintenance_hall_AI_gate2()
	sleep_until( (S_maintenance_hall_AI_state >= DEF_S_MAINTENANCE_HALL_AI_STATE_GATE_2) or (f_maintenance_hall_destruction_active()), 1 );
	//dprint( "cs_maintenance_hall_AI_gate2" );

	sleep_until( not(B_maintenance_hall_AI_paused) or (S_maintenance_hall_AI_state > DEF_S_MAINTENANCE_HALL_AI_STATE_GATE_2) or (f_maintenance_hall_destruction_active()), 1 );
	if ( S_maintenance_hall_AI_state == DEF_S_MAINTENANCE_HALL_AI_STATE_GATE_2 ) then
		static long l_timer 	= 0;

		// artificial delay to allow player to catch up		
		if ( l_timer == 0 ) then
			l_timer = game_tick_get() + seconds_to_frames( R_maintenance_hall_AI_gate_delay );
		end
		sleep_until( (l_timer < game_tick_get()) or (volume_test_players(tv_explosionalley_area)) or (volume_test_players(tv_explosionalley_start)) or (f_ai_is_aggressive(ai_get_squad(ai_current_actor))) or (f_maintenance_hall_destruction_active()), 1 );

		// set aborts
		cs_abort_on_combat_status( ai_combat_status_dangerous );
		cs_abort_on_damage( volume_test_players(tv_explosionalley_area) or f_ai_is_aggressive(ai_get_squad(ai_current_actor)) );
		
		// move to gate
		cs_push_stance( "FLEE" );
		cs_move_towards_point( ps_maintenance_explosionalley.gate2, R_maintenance_hall_AI_goto_range );
	end
	
end

// === cs_maintenance_hall_AI_gate3::: AI for grunt going to gate 3
script command_script cs_maintenance_hall_AI_gate3()
	sleep_until( (S_maintenance_hall_AI_state >= DEF_S_MAINTENANCE_HALL_AI_STATE_GATE_3) or (f_maintenance_hall_destruction_active()), 1 );
	//dprint( "cs_maintenance_hall_AI_gate3" );

	sleep_until( not(B_maintenance_hall_AI_paused) or (S_maintenance_hall_AI_state > DEF_S_MAINTENANCE_HALL_AI_STATE_GATE_3) or (f_maintenance_hall_destruction_active()), 1 );
	//dprint( "cs_maintenance_hall_AI_gate3-b" );
	if ( S_maintenance_hall_AI_state == DEF_S_MAINTENANCE_HALL_AI_STATE_GATE_3 ) then
		static long l_timer 	= 0;

		// artificial delay to allow player to catch up		
		if ( l_timer == 0 ) then
			//dprint( "cs_maintenance_hall_AI_gate3-c" );
			l_timer = game_tick_get() + seconds_to_frames( R_maintenance_hall_AI_gate_delay );
		end
		sleep_until( (l_timer < game_tick_get()) or (volume_test_players(tv_explosionalley_area)) or (volume_test_players(tv_explosionalley_start)) or (f_ai_is_aggressive(ai_get_squad(ai_current_actor))) or (f_maintenance_hall_destruction_active()), 1 );
		
		// set aborts
		cs_abort_on_combat_status( ai_combat_status_dangerous );
		cs_abort_on_damage( volume_test_players(tv_explosionalley_area) or f_ai_is_aggressive(ai_get_squad(ai_current_actor)) );
		
		// move to gate
		cs_push_stance( "FLEE" );
		cs_move_towards_point( ps_maintenance_explosionalley.gate3, R_maintenance_hall_AI_goto_range );
	end
	
end

// === cs_maintenance_hall_AI_airlock_open::: AI for grunt at door
script command_script cs_maintenance_hall_AI_airlock_open()
	//dprint( "cs_maintenance_hall_AI_airlock_open" );

	if ( S_maintenance_hall_AI_watch_thread == 0 ) then
		//dprint( "cs_maintenance_hall_AI_airlock_open: OPEN" );
		S_maintenance_hall_AI_watch_thread = thread( f_maintenance_hall_AI_airlock_guard(ai_current_actor) );
		cs_abort_on_alert( FALSE );
		cs_abort_on_damage( FALSE );
		cs_go_to( ps_maintenance_explosionalley.door01 );
		if ( dm_maintenance_hall_door01->check_close() ) then
			static short s_door_tries = 1;
//			static short s_door_tries = random_range( 2, 3 );
			
			repeat
				if ( not(B_maintenance_hall_AI_paused) ) then
					// XXX change to beat on door or try to lift
					cs_face( TRUE, ps_maintenance_explosionalley.door02 );
					//cs_custom_animation( 'objects\characters\storm_grunt\storm_grunt.model_animation_graph', "combat:pistol:taunt:var1", TRUE );
					cs_custom_animation( 'objects\characters\storm_grunt\storm_grunt.model_animation_graph', "m10_grunt_door_pound_v01", TRUE );
					cs_stop_custom_animation();
					s_door_tries = s_door_tries - 1;
					if ( s_door_tries > 0 ) then
						sleep_rand_s( 0.75, 1.25 );
					end
				else
					sleep_s( 1.0 );
				end
			until ( (s_door_tries <= 0) or not(dm_maintenance_hall_door01->check_close()), 1 );

			// win, open
			if ( dm_maintenance_hall_door01->check_close() ) then
				thread( dm_maintenance_hall_door01->open() );
				sleep_until ( not(dm_maintenance_hall_door01->check_close()), 1 );

				cs_abort_on_alert( FALSE );
				cs_abort_on_damage( FALSE );
				if ( not f_ai_is_aggressive(gr_maintenance_explosionalley) ) then
					// shocked he opened it			
					cs_custom_animation( 'objects\characters\storm_grunt\storm_grunt.model_animation_graph', "combat:unarmed:surprise_front", TRUE );
					cs_stop_custom_animation();
					sleep_s( 0.125 );
				end
			end

			// victory!			
			if ( not f_ai_is_aggressive(gr_maintenance_explosionalley) ) then
				cs_face( TRUE, ps_maintenance_explosionalley.door02 );
				cs_custom_animation( 'objects\characters\storm_grunt\storm_grunt.model_animation_graph', "combat:pistol:taunt:var2", TRUE );
			end
		end

		cs_abort_on_alert( FALSE );
		cs_abort_on_damage( FALSE );
		cs_face( TRUE, ps_maintenance_explosionalley.start );

		cs_run_command_script( ai_current_actor, cs_maintenance_hall_AI_airlock );

	else
		//dprint( "f_maintenance_hall_AI_door: GUARD" );
		cs_run_command_script( ai_current_actor, cs_maintenance_hall_AI_airlock_guard );
	end

end

// === cs_maintenance_hall_AI_airlock_guard::: AI for grunt at door to guard
script command_script cs_maintenance_hall_AI_airlock_guard()
	//dprint( "cs_maintenance_hall_AI_airlock_guard" );
	
	if ( S_maintenance_hall_AI_guard_post >= 4 ) then
		S_maintenance_hall_AI_guard_post = 0;
	end
	
	cs_abort_on_alert( FALSE );
	cs_abort_on_damage( FALSE );
	cs_stop_custom_animation();
	if (S_maintenance_hall_AI_guard_post == 0 ) then
		S_maintenance_hall_AI_guard_post = S_maintenance_hall_AI_guard_post + 1;
		cs_go_to_and_face( ps_maintenance_explosionalley.guard0, ps_maintenance_explosionalley.start );
	end
	if (S_maintenance_hall_AI_guard_post == 1 ) then
		S_maintenance_hall_AI_guard_post = S_maintenance_hall_AI_guard_post + 1;
		cs_go_to_and_face( ps_maintenance_explosionalley.guard1, ps_maintenance_explosionalley.start );
	end
	if (S_maintenance_hall_AI_guard_post == 2 ) then
		S_maintenance_hall_AI_guard_post = S_maintenance_hall_AI_guard_post + 1;
		cs_go_to_and_face( ps_maintenance_explosionalley.guard2, ps_maintenance_explosionalley.start );
	end
	if (S_maintenance_hall_AI_guard_post == 3 ) then
		S_maintenance_hall_AI_guard_post = S_maintenance_hall_AI_guard_post + 1;
		cs_go_to_and_face( ps_maintenance_explosionalley.guard3, ps_maintenance_explosionalley.start );
	end
	cs_abort_on_alert( TRUE );
	cs_abort_on_damage( TRUE );
	cs_aim( TRUE, ps_maintenance_explosionalley.start );

end

// === cs_maintenance_hall_AI_airlock::: AI for airlock guy
script command_script cs_maintenance_hall_AI_airlock()
static real r_health = 0.0;
	//dprint( "cs_maintenance_hall_AI_airlock" );
	
	//dprint( "cs_maintenance_hall_AI_airlock: GOTO" );
	cs_abort_on_alert( FALSE );
	cs_abort_on_damage( FALSE );
	cs_stop_custom_animation();
	cs_go_to( ps_maintenance_explosionalley.door02 );

	// stop anyone else from coming in here
	//dprint( "cs_maintenance_hall_AI_airlock: KILL THREAD" );
	if ( S_maintenance_hall_AI_watch_thread != 0 ) then
		kill_thread( S_maintenance_hall_AI_watch_thread );
		S_maintenance_hall_AI_watch_thread = 0;
	end

	// get current health
	r_health = object_get_health( ai_get_object(ai_current_actor) );

	// try to open the door; sorry grunty, no door open for you this time
	//dprint( "cs_maintenance_hall_AI_airlock: ANIMATE - START" );
	cs_face( TRUE, ps_maintenance_explosionalley.door02 );
	cs_custom_animation( 'objects\characters\storm_grunt\storm_grunt.model_animation_graph', "m10_grunt_door_pound_v01", TRUE );
	cs_stop_custom_animation();
	//dprint( "cs_maintenance_hall_AI_airlock: ANIMATE - DONE" );

	if ( f_ai_is_aggressive(ai_get_squad(ai_current_actor)) ) then
		//dprint( "cs_maintenance_hall_AI_airlock: SUPRISED" );
		cs_abort_on_alert( FALSE );
		cs_abort_on_damage( FALSE );
		cs_custom_animation( 'objects\characters\storm_grunt\storm_grunt.model_animation_graph', "combat:unarmed:surprise_back", TRUE );
		cs_stop_custom_animation();
	else
		//dprint( "cs_maintenance_hall_AI_airlock: FACE" );
		cs_abort_on_alert( TRUE );
		cs_abort_on_damage( TRUE );
		cs_face( TRUE, ps_maintenance_explosionalley.door01 );
	end

	// for honor
	sleep_until( f_ai_is_aggressive(ai_get_squad(ai_current_actor)), 1 );
	//dprint( "cs_maintenance_hall_AI_airlock: KAMIKAZE" );
	cs_abort_on_alert( FALSE );
	cs_abort_on_damage( FALSE );
	ai_grunt_kamikaze( ai_current_actor );

end
// --- End m10_end_maintenance_hall_ai.hsc ---

// --- Begin m10_flank.hsc ---

// =================================================================================================
// =================================================================================================
// Prep Room  / Corner Hall  SCWARNER
// =================================================================================================
// =================================================================================================


global short S_flank_obj = 0;

global short DEF_HALLWAY_OBJ_START 		  	    = 1;
global short DEF_HALLWAY_OBJ_LOOKOUT	   	 	  = 2;
global short DEF_HALLWAY_OBJ_CH	  	 	  			= 3;
global short DEF_HALLWAY_OBJ_CH_SHIELD_ROOM   = 4;
global short DEF_HALLWAY_OBJ_CH_COMBAT  	 	  = 5;
global short DEF_FLANK_OBJ_MAIN_START		 	  	= 6;
global short DEF_FLANK_OBJ_MAIN_ENGAGE	 	 		= 7;
global short DEF_FLANK_OBJ_MAIN_ADVANCE  	 		= 8;
global short DEF_FLANK_OBJ_AIRLOCK 			 	 		= 9;

global short S_hallway_move_grunts = 0;
global short S_elite_retreat = 0;
global short S_hallways2_move_grunts = 0;
global short S_cafe_jackal_gate = 0;
global boolean B_move_hallways_grunts = FALSE;
global boolean B_unlock_airlock = FALSE;
global boolean B_cafe_jackal_move = FALSE;
global boolean B_airlock_1_complete = FALSE;
global boolean B_flank_center_move = FALSE;
global boolean B_flank_doorpastelevator_open = FALSE;
global boolean b_cafe_jackals_crossed = FALSE;
global boolean b_conc_elite_enter = FALSE;

//////////////////////////////////////////////////////////////

script startup f_flank_init()
sleep_until (b_mission_started == TRUE);
	wake(f_flank_main);
end

//====== MAIN FUNCTION
//====== We're going to setup up everything here from Hallways to Flank
//====== These encounters occur between BSP 08 Elevator and BSP 028 Airlock
//====== BSP 030 Beacons is also used at part of the section but for 
//====== framing purposes only (no encounters occur here... yet)

script dormant f_flank_main()
	sleep_until (current_zone_set_fully_active() == S_zoneset_08_elevator_14_elevator_16_lookout, 1);
	
	thread(f_lookout_door_block());
	thread(f_cafe_door_block());
	thread(f_flank_door_block());
	thread(f_check_disable_backtrack());
  thread(f_mus_m10_e02_begin());
	ai_place(ai_hallways);
	ai_place(ai_lookout);
	thread(f_lookout_dialog_check());
	wake(f_door_post_elevator);
	pup_play_show(obs_ships);
	pup_play_show(debris_show);
	sleep_s(1);
	wake(f_door_pre_lookout);
	wake(f_hallways_grunt_move);
	sleep_until(volume_test_players(tv_lookout_spawn), 1);
	ai_place(hallways_lookout_phantom);
	sleep_until(volume_test_players(tv_lookout_vo), 1);
	wake(f_cafe_encounter_start);
	wake(f_hallways_2_encounter_start);
	wake(f_flank_encounter_start);
	wake(f_flank_save);
  wake(f_flank_music_start);
end

//====== f_hallways_2_encounter_start()
//====== This will spawn in the A.I. in the second hallways section
//====== after the 16_18_30 zoneset has been loaded
//====== We also wake f_hallways_2_grunt_move() here which will eventually
//====== close out a task in this objective that allows grunts to move forward 
//====== during the encounter (mostly for staging purposes)

script dormant f_hallways_2_encounter_start()
	dprint("prepping hallways 2");
	sleep_until (current_zone_set_fully_active() == s_zoneset_16_lookout_18_elevator_20_cafe, 1);
	dprint("placing hallways 2");
	ai_place(ai_hallways_2);
	wake(f_hallways_2_grunt_move);
end

//====== f_hallways_2_grunt_move()
//====== This closes a task in obj_hallways (move_gate_grunts) and causes them to start moving down the hall
//====== once the player is in sight of the back

script dormant f_hallways_2_grunt_move()
	sleep_until(volume_test_players(tv_hallways2_gruntmove), 1);
	S_hallways2_move_grunts = 1;
end


//====== f_hallways_grunt_move()
//====== This closes a task in obj_hallways (move_gate_grunts) and causes them to start moving down the hall
//====== The intent is that they are moving away from the player when they come into his view

script dormant f_hallways_grunt_move()
	sleep_until(volume_test_players(tv_open_door_post_elevator), 1);
  S_hallway_move_grunts = 1;  
end

//====== f_cafe_encounter_start()
//====== This will spawn in the A.I. in the Cafe section
//====== after the 16_18_30 zoneset has been loaded
//====== It also calls the f_jackal_reinforce which brings in Jackals from behind
//====== the two doors at the back of the encounter after a specified amount of time in script
//====== also, gamesave.

script dormant f_cafe_encounter_start()
	sleep_until (current_zone_set_fully_active() == S_zoneset_16_lookout_18_elevator_20_cafe, 1);
	game_save_cancel();
	game_save_no_timeout();
	zone_set_trigger_volume_enable("zone_set:24_corner_26_box_28_airlock", FALSE);
	thread(f_flank_preload());
	ai_place(ai_cafe_init);
	//wake(f_jackal_reinforce);
	wake(f_wr_corner_hall);
end

//====== f_flank_encounter_start()
//====== This will spawn in the A.I. in the flank area
//====== once a player has entered the tv_flank_spawn trigger volume

script dormant f_flank_encounter_start()
	sleep_until(volume_test_players(tv_flank_spawn), 1);
	wake(f_flank_center_move);
	S_flank_obj = DEF_FLANK_OBJ_MAIN_START;
	wake(f_flank_spawn);
	sleep_until(volume_test_players(tv_flank_enter)or ai_combat_status(flank_encounter) >= 8, 1);
	S_flank_obj = DEF_FLANK_OBJ_MAIN_ENGAGE;
	wake(f_beacon_main);
  S_flank_obj = DEF_FLANK_OBJ_MAIN_ADVANCE;
  wake(f_wr_airlock);
  game_insertion_point_unlock(1); 


end


//====== f_flank_encounter_start()
//====== This will spawn in the A.I. in the flank area
//====== once a player has entered the tv_flank_spawn trigger volume


script dormant f_flank_spawn()
	sleep_until (current_zone_set_fully_active() == S_zoneset_24_corner_26_box_28_airlock, 1);
	data_mine_set_mission_segment ("m10_Flank");
	ai_place(ai_flank);
	ai_place(ai_flank_2);
//  pup_play_show(elite_spot_player);
	wake(f_pre_beac_airlock_physics);
	sleep_until(volume_test_players(tv_flank_playerpos_far_back));
	pup_play_show(elite_door);
	
end


//====== f_jackal_reinforce()
//====== This function brings in Jackals through the doors behind
//====== the encoutner in the Cafe - this is timed to happen after 

script dormant f_jackal_reinforce()
	//sleep_until (volume_test_players(tv_cafe_opendoors), 1);
	sleep_until(ai_living_count(ai_cafe_init) <= 2);
	ai_place(ai_cafe_reinforce);
	sleep_s(1);
	wake(f_door_ch_door_02);
	wake(f_door_ch_door_01);
	sleep_until (dm_ch_door_02->check_open(), 1);
	if not volume_test_players(tv_cafe_opendoors) then
		local long j_door = pup_play_show(jackals_door);
		sleep_until(not pup_is_playing(j_door));
		b_cafe_jackals_crossed = TRUE;
	end
	b_cafe_jackal_move = 1;
end

//====== f_flank_center_move()
//====== sets a boolean to true so a task making A.I. wait until the player 
//====== shows up closes out

script dormant f_flank_center_move()
	sleep_until(volume_test_players(tv_flank_spawn), 1);
	B_flank_center_move = TRUE;
end

//======= WEAPON RACKS
//======= These functions activate weapon rack machines as soon as players
//======= enter specified volumes.

//======= Activates the big UNSC weapon box in BSP 020 CAFE

script dormant f_wr_corner_hall()
	sleep_until(volume_test_players(tv_corner_hall_spawn) == TRUE, 1);
	game_save_cancel();
	game_save_no_timeout();
	thread(wr_corner_hall_3->open_default());
end

//======= Activates the Battle Rifle Wall Dispensers in BSP 026 Box Room

script dormant f_wr_airlock()
	sleep_until(volume_test_players(tv_airlock_start) == TRUE, 1);	
	thread(wr_flank_br_01->open_default());
	thread(wr_flank_br_02->open_default());
	thread(wr_flank_br_03->open_default());
	thread(wr_flank_br_04->open_default());
			
end

//====== MUSIC FUNCTIONS

script static void f_flank_music()
	sleep_until(ai_living_count (flank_encounter) < 1, 1);
	sleep_until(ai_living_count (flank_encounter) == 0, 1);
	thread(f_music_main_flank_killed_all_enemies());
end


script dormant f_flank_music_start()
  sleep_until (volume_test_players_all (tv_flank_enter), 1);
  thread(f_mus_m10_e02_finish());
  thread(f_mus_m10_e03_begin());
end


script dormant f_flank_music_end()
  sleep_until (volume_test_players_all (tv_flank_music_end), 1);
	thread(f_mus_m10_e03_finish());
end



//====== CHECKPOINT FUNCTIONS

//====== f_flank_save()
//====== This saves the game when the player is at the beginning 
//====== of the flank room

script dormant f_flank_save()
  sleep_until(volume_test_players(tv_flank_spawn), 1);
  game_save_cancel();
	game_save_no_timeout();
end


//DOORS

//====== f_door_post_elevator()
//====== This opens the first door past the elevator once the player has passed through 
//====== a trigger volume (tv_open_door_post_elevator) 
//====== This also sets a boolean to allow narrative to cue a VO off of the door opening

script dormant f_door_post_elevator()
  sleep_until(volume_test_players(tv_open_door_post_elevator), 1);
  sleep_s(1);
	door_post_elevator->open_default();
	B_flank_doorpastelevator_open = TRUE;
end

//====== f_door_pre_lookout()
//====== 

script dormant f_door_pre_lookout()
	sleep_until ( object_valid (door_pre_lookout), 1);
	sleep_until(volume_test_players(tv_open_pre_lookout_door), 1);
	door_pre_lookout->open_default();
	sleep_s(5);
  S_elite_retreat = 1;
end

script dormant f_door_ch_door_01()
	dm_ch_door_02->open_default();
end

script dormant f_door_ch_door_02()
	dm_ch_door_01->open_default();
end

script static void f_door_airlock_1_interior_close()
	door_airlock_1_interior->auto_trigger_close( tv_airlock_inside, TRUE, TRUE, TRUE );
end

script static void f_door_airlock_1_interior()
	door_airlock_1_interior->open_default();
		sleep_until(volume_test_players(tv_airlock_start),1);
		door_airlock_1_interior->auto_trigger_open( tv_airlock_start, FALSE, TRUE, TRUE );
		
end

script dormant f_close_airlock_door()
	sleep_until (volume_test_players_all (tv_front), 1);
		f_door_airlock_1_exterior_close();
end

//======= BREADCRUMBS NAVPOINT FUNCTIONS
script dormant f_blip_hallway_breadcrumbs()
	sleep_until(LevelEventStatus("obs waypoint set"), 1);

	f_blip_position_breadcrumbs(-36.70, -16.85, -4.82, "flank_corner_hall", "default");
	sleep_until(objects_distance_to_position(players(), -36.70, -16.85, -4.82) < 1.5);
	f_unblip_position_breadcrumbs("flank_corner_hall");

	sleep(150);

	f_blip_position_breadcrumbs(-33.37, -29.76, -4.98, "flank_enter", "default");
	sleep_until(objects_distance_to_position(players(), -33.37, -29.76, -4.98) < 1.5);
	f_unblip_position_breadcrumbs("flank_enter");

	f_blip_position_breadcrumbs(-2.30, -23.2, -4.78, "airlock_equipment", "default");
	sleep_until(objects_distance_to_position(players(), -2.30, -23.2, -4.78) < 1.5);
	f_unblip_position_breadcrumbs("airlock_equipment");
end

//=======  PHYSICS FUNCTIONS

script dormant f_pre_beac_airlock_physics()
	object_wake_physics(cr_airlock_01);
	object_wake_physics(cr_airlock_02);
	object_wake_physics(cr_airlock_03);
	object_wake_physics(cr_airlock_04);
	object_wake_physics(cr_airlock_05);
	object_wake_physics(cr_airlock_06);
	object_wake_physics(cr_airlock_07);
	object_wake_physics(cr_airlock_08);
	object_wake_physics(cr_airlock_09);
end

script static void f_lookout_dialog_check()
	sleep_until(ai_living_count(sq_lookout_grunts_01) == 0);
	wake(f_blip_hallway_breadcrumbs);
	wake(f_dialog_m10_lookout_combat);
end


script static void f_lookout_door_block()
	sleep_until(volume_test_players(tv_hallways_door_chk) == TRUE, 1);
	volume_teleport_players_not_inside(tv_hallways_door_volume, flg_lookout_tp );
	door_post_elevator->close_speed_wait(1.2, false);
end

script static void f_cafe_door_block()
	sleep_until(current_zone_set_fully_active() == S_zoneset_16_lookout_18_elevator_20_cafe,1);
	sleep_until(object_active_for_script(door_cafe_block),1);
	door_cafe_block->open_instant();
	sleep_until(volume_test_players(tv_cafe_door_chk) == TRUE);
	volume_teleport_players_not_inside(tv_cafe_door_block_in, flg_cafe_tp );
	door_cafe_block->close_speed_wait(0.7, false);
end

script static void f_flank_door_block()
	sleep_until(volume_test_players(tv_flank_doors_chk) == TRUE, 1);
	volume_teleport_players_not_inside(tv_flank_whole, flg_flank_tp );
	thread(dm_ch_door_01->close_default());
	thread(dm_ch_door_02->close_default());
	thread(door_flank_back->open_default());
end

script static void f_check_disable_backtrack()
	sleep_until(volume_test_players("zone_set:24_corner_26_box_28_airlock") == true, 1);
	sleep(30); // Wait a sec to ensure that the zone transition happens before we disable the volume.
	zone_set_trigger_volume_enable("zone_set:24_corner_26_box_28_airlock", false);
end

script static void f_flank_preload()
	sleep_until(volume_test_players("begin_zone_set:24_corner_26_box_28_airlock") == true, 1);
	sleep(1);
	sleep_until (not PreparingToSwitchZoneSet(), 1);
	zone_set_trigger_volume_enable("zone_set:24_corner_26_box_28_airlock", TRUE);
	sleep_until(volume_test_players("zone_set:24_corner_26_box_28_airlock") == true, 1);
	wake(f_jackal_reinforce);
	
	end
	

/// DEFAULT ACME DEBUG COPY N' PASTE TXT!
/// dprint( ">>>> OMGOMGOMGOMGOMGOMGOMGOMGOMGOMGOMGOMGOMGOMGOMGOMGOMGOMGOMGOMGOMGOMGOMGOMGOMGOMGOMGOMG" );

// --- End m10_flank.hsc ---

// --- Begin m10_flank_ai.hsc ---
//HALLWAYS COMMAND SCRIPTS

//BEACON PHANTOMS
script command_script cs_lookout_phantom_01()
	kill_volume_disable(kill_observatory);
	object_set_scale ( ai_vehicle_get ( ai_current_actor ), 0.01, 0 );      //scale to a tiny point instantly
	object_set_scale ( ai_vehicle_get ( ai_current_actor ), 1.0, 120 );    //scale up to full size over time
	f_load_phantom (ai_current_actor, "dual", sq_lookout_beac_01, sq_lookout_beac_02, sq_lookout_beac_03, NONE );
	sleep(10);
	cs_fly_to(ps_lookout_phantom.p0);
	cs_fly_to(ps_lookout_phantom.p1);
	cs_stationary_face(true, ps_lookout_phantom.p2);
	sleep_s(1);
	sleep_until(volume_test_players(tv_lookout_vo));
	f_unload_phantom (ai_current_squad, "dual");
	cs_stationary_face(FALSE, ps_lookout_phantom.p2);
	sleep_s(3);
	cs_fly_to(ps_lookout_phantom.p6);
	cs_fly_to(ps_lookout_phantom.p7);
end

script command_script cs_lookout_phantom_02()
kill_volume_disable(kill_observatory);
	object_set_scale ( ai_vehicle_get ( ai_current_actor ), 0.01, 0 );      //scale to a tiny point instantly
	object_set_scale ( ai_vehicle_get ( ai_current_actor ), 1.0, 120 );    //scale up to full size over time
	f_load_phantom (sq_phantom_lookout_02, "left", sq_lookout_beac_04, sq_lookout_beac_05, none, NONE );
	sleep(10);
	cs_fly_to(ps_lookout_phantom.p3);
	cs_fly_to(ps_lookout_phantom.p4);
	cs_stationary_face(true, ps_lookout_phantom.p5);
	sleep_s(1);
	sleep_until(volume_test_players(tv_lookout_vo));
	dprint("unload");
	f_unload_phantom (ai_current_squad, "left");
	cs_stationary_face(FALSE, ps_lookout_phantom.p5);
	sleep_s(6);
	cs_fly_to(ps_lookout_phantom.p8);
	cs_fly_to(ps_lookout_phantom.p9);
	cs_fly_to(ps_lookout_phantom.p10);
	cs_fly_to(ps_lookout_phantom.p6);
	cs_fly_to(ps_lookout_phantom.p11);
end


//CORNER HALL 
script command_script cs_grunt_patrol_01()
cs_abort_on_damage(TRUE);
cs_abort_on_combat_status(8);
dprint("cs_grunt_patrol");
cs_walk(TRUE);
cs_go_to(ps_ch_patrol_01.p0);
cs_go_to(ps_ch_patrol_01.p1);
cs_go_to(ps_ch_patrol_01.p2);
end

script command_script cs_grunt_patrol_02()
cs_abort_on_damage(TRUE);
cs_abort_on_combat_status(8);
cs_walk(TRUE);
dprint("cs_grunt_patrol");
cs_go_to(ps_ch_patrol_01.p0);
cs_go_to(ps_ch_patrol_01.p1);
end

script command_script cs_grunt_patrol_retreat_01()
dprint("cs_grunt_patrol_retreat");
cs_abort_on_damage(TRUE);
cs_push_stance("flee");
cs_walk(FALSE);
cs_go_to(ps_ch_patrol_fallback_01.p0);
cs_go_to(ps_ch_patrol_fallback_01.p1);
cs_go_to(ps_ch_patrol_fallback_01.p2);
end

script command_script cs_grunt_patrol_retreat_02()
cs_push_stance("flee");
cs_walk(FALSE);
cs_abort_on_damage(TRUE);
cs_go_to(ps_ch_patrol_fallback_02.p0);
cs_go_to(ps_ch_patrol_fallback_02.p1);
cs_go_to(ps_ch_patrol_fallback_02.p2);
end

script command_script cs_clear()
	cs_abort_on_damage(TRUE);
	cs_abort_on_alert(TRUE);
	cs_walk(FALSE);
	cs_push_stance("");
end

script command_script cs_kamikazee()
dprint("cs_kamikazee");
cs_face_player(TRUE);
ai_grunt_kamikaze(ai_current_actor);
end

script command_script cs_grunt_retreat()
dprint("cs_grunt_retreat");
cs_push_stance("flee");
cs_walk(FALSE);
cs_abort_on_damage(TRUE);
cs_go_to(ps_ch_fallback_01.p0);
cs_go_to(ps_ch_fallback_01.p1);
cs_abort_on_combat_status(8);
cs_go_to(ps_ch_fallback_01.p2);
cs_go_to(ps_ch_fallback_01.p3);
sleep_until(volume_test_players(tv_corner_hall_spawn), 1);
cs_go_to(ps_ch_fallback_01.p4);
cs_go_to(ps_ch_fallback_01.p5);
end

script command_script cs_grunt_retreat_02()
dprint("cs_grunt_retreat");
cs_push_stance("flee");
cs_walk(FALSE);
cs_abort_on_damage(TRUE);
cs_go_to(ps_ch_fallback_02.p0);
cs_go_to(ps_ch_fallback_02.p1);
cs_abort_on_combat_status(8);
cs_go_to(ps_ch_fallback_02.p2);
sleep_until(volume_test_players(tv_corner_hall_spawn), 1);
cs_go_to(ps_ch_fallback_02.p3);
cs_go_to(ps_ch_fallback_02.p4);
cs_go_to(ps_ch_fallback_02.p5);

end

script command_script cs_grunt_door_pound()
dprint("cs_grunt_door_pound");
cs_push_stance("flee");
cs_walk(FALSE);
cs_abort_on_damage(TRUE);
cs_go_to(ps_ch_fallback_door.p0);
cs_go_to(ps_ch_fallback_door.p1);
cs_custom_animation(objects\characters\storm_grunt\storm_grunt.model_animation_graph,"vin:global:solo:door_pound" , TRUE);
end

script command_script cs_grunt_panic()
cs_abort_on_damage(TRUE);
cs_abort_on_alert(TRUE);
cs_push_stance("flee");
dprint("panic");
cs_walk(TRUE);
cs_go_to(ps_ch_fallback_02.p4);
cs_go_to(ps_ch_fallback_02.p5);
end

script command_script cs_grunt_work()
dprint("cs_grunt_work");
end

script command_script cs_grunt_work_02()
dprint("cs_grunt_work_02");
end


script command_script cs_jackal_advance_01()
cs_teleport(ps_ch_jackal_reinforce.p0, ps_ch_jackal_reinforce.p2);
cs_pause(2.25);
cs_move_towards_point(ps_ch_jackal_reinforce.p2, 0.5);
end

script command_script cs_jackal_advance_02()
cs_teleport(ps_ch_jackal_reinforce.p1, ps_ch_jackal_reinforce.p3);
cs_pause(1);
cs_move_towards_point(ps_ch_jackal_reinforce.p3, 0.5);
end



script command_script cs_grunt_panel()
cs_abort_on_damage(TRUE);
cs_abort_on_combat_status(9);
repeat
dprint("panel");
sleep(10);
cs_custom_animation(objects\characters\storm_grunt\storm_grunt.model_animation_graph,"vin:global:solo:door_panel_fiddle" , TRUE);
sleep(unit_get_custom_animation_time(ai_current_squad));
until(ai_combat_status(ai_current_squad) > 7);
end

script command_script cs_surprise_01()
sleep(random_range(0,15));
cs_face_player(TRUE);
cs_custom_animation(objects\characters\storm_grunt\storm_grunt.model_animation_graph,"combat:pistol:surprise_front" , TRUE);
sleep(unit_get_custom_animation_time(ai_current_squad));
end

script command_script cs_surprise_02()
cs_custom_animation(objects\characters\storm_grunt\storm_grunt.model_animation_graph,"combat:pistol:surprise_front" , TRUE);
sleep(unit_get_custom_animation_time(ai_current_squad));
cs_abort_on_damage(TRUE);
cs_custom_animation(objects\characters\storm_grunt\storm_grunt.model_animation_graph,"combat:pistol:warn" , TRUE);
sleep(unit_get_custom_animation_time(ai_current_squad));

end


script command_script cs_grunt_examine()
cs_abort_on_damage(TRUE);
cs_abort_on_alert(TRUE);
cs_abort_on_combat_status(8);
cs_custom_animation(objects\characters\storm_grunt\storm_grunt.model_animation_graph,"act_examine_1:enter" , TRUE);
repeat
sleep(unit_get_custom_animation_time(ai_current_squad));
cs_custom_animation(objects\characters\storm_grunt\storm_grunt.model_animation_graph,"act_examine_1:idle" , TRUE);
sleep(unit_get_custom_animation_time(ai_current_squad));
//cs_custom_animation(objects\characters\storm_grunt\storm_grunt.model_animation_graph,"act_examine_1:look" , TRUE);
sleep(unit_get_custom_animation_time(ai_current_squad));
//cs_custom_animation(objects\characters\storm_grunt\storm_grunt.model_animation_graph,"act_examine_1:exit" , TRUE);
sleep(unit_get_custom_animation_time(ai_current_squad));
until(ai_combat_status(ai_current_squad) > 8);
end
//vin:global:solo:grunt_injured
// --- End m10_flank_ai.hsc ---

// --- Begin m10_lab.hsc ---

// =================================================================================================
// m10 LAB
// =================================================================================================
global boolean B_didact_scan = FALSE;
global boolean b_scan_done = FALSE;

script dormant f_lab_init()
	sleep_until (b_mission_started == TRUE);
	//wake(f_weapons_armory);
	//wake(f_end_of_hall);
	wake(f_lab_main);
end

 script dormant f_lab_main()
	dprint  ("::: LAB EVENT START :::");
	f_star_make_create();
	object_create(fud_star_map);
	//thread(f_lab_save());
	thread(f_cryo_door_block());
	wake(f_blip_lab_hallway_breadcrumbs);
	//	if S_insertion_index == DEF_INSERTION_INDEX_LAB then
 	//	sleep_until (current_zone_set_fully_active() == S_zoneset_04_armory_06_hallway, 1);
	//	else
	sleep_until (current_zone_set_fully_active() == S_zoneset_00_cryo_02_hallway_04_armory, 1);
	//	end
		//dprint  ("::: GHOST MOMENT :::");
	//DATA MINE
	data_mine_set_mission_segment ("m10_lab");
	//wake(f_ghost_mon);
	//dprint  ("::: GHOST MONITOR :::");
	sleep_until (volume_test_players(tv_ghost_mon), 1);

	wake(f_scan_timer);
	wake (f_scan_event_begin);	

	// set co-op profiles
	thread(f_loadout_set ("default"));
end

script dormant f_ghost_mon()
	sleep_until( volume_test_players_lookat(tv_ghost_mon, 2, 2), 1);
	fx_ghost_mon();
end

script dormant f_blip_lab_hallway_breadcrumbs()
	sleep_until(objects_distance_to_position(players(), -50.38, 28.13, 0.95) < 1.5);
	f_blip_position_breadcrumbs(-41.36, 25.77, 1.44, "lab_hallway_door", "default");
	
	sleep_until (volume_test_players(tv_ghost_mon), 1);
	f_unblip_position_breadcrumbs("lab_hallway_door");
end

script dormant f_scan_timer()
	sleep_s(real_random_range(5, 7));
	if B_didact_scan == FALSE then
	B_didact_scan = TRUE;
	else
	sleep(1);
	end
end

script dormant f_scan_event_begin()
	dprint("::: DIDACT EVENT :::");
	sleep_until (volume_test_players(tv_ghost_mon) or B_didact_scan == TRUE, 1);
	B_didact_scan = TRUE;
	wake(f_dialog_lab_didact_event);	
end

script dormant f_scan_event_real()

	//sleep_s(0.5);
	
	thread(f_screenshake_ambient_pause( TRUE, FALSE, 0.0 ));
	thread(f_screenshake_event_med(-3, -1, -0.1, sfx_didact_pre_scan()));
	object_destroy(fud_star_map);
	thread(fx_arm_didact_scan());
	thread(f_star_map_flicker());
	//thread( f_screenshake_event_very_low(-0.125, 1.5, -1.5, NONE) );
	thread(f_screenshake_event_high(0, -1, -0.5, sfx_didact_scan()));
	sleep(sound_impulse_time(sfx_didact_scan()) - (2 * 30));
	thread(f_mission_screenshakes_ambient_layer_set_inc( DEF_S_AMBIENTSHAKE_STATE_LAB ));
	thread(f_screenshake_ambient_pause( FALSE, TRUE, 0.0 ));
	sleep_s(1);
	//dprint("run open door");
	//f_insertion_zoneload( 2, TRUE );
	sleep_s(3.5);
	(b_scan_done = TRUE);
	sleep(1);
	f_star_make_create();
	//effect_new(environments\solo\m10_crash\fx\holograms\starmap_new.effect, fx_arm_starmap_new );
	object_create(fud_star_map);
	wake(f_lab_door);
	game_save_no_timeout();
	sleep_s(1);
	f_objective_set( DEF_R_OBJECTIVE_GOTO_OBSERVATION, TRUE, FALSE, FALSE, FALSE );
	//NotifyLevel("librarian moment");
	sleep_until (volume_test_players(tv_elevator_pre), 1);
	//zoneset
	//wake(f_dialog_lab_pre_elevator_ics);
end
	
//Librarian
script dormant f_lab_door()
	//dprint("open lab door");
	door_librarian_event->open_fast();
	//dprint("open lab door open");
end

script static void f_cryo_door_block()
	sleep_until(volume_test_players(tv_ghost_mon) == TRUE);
	volume_teleport_players_not_inside(tv_cryo_door_block, flg_cryo_blocker_door );
	object_create(door_block_cryo);
	f_unblip_object(cryo_switch_4);
	f_unblip_object(cryo_switch_3);
	f_unblip_object(cryo_switch_2);
end

script static void f_star_map_flicker()
	print("flicker time");
	repeat
	//dprint("not working");
		effect_kill_from_flag(environments\solo\m10_crash\fx\holograms\starmap_new.effect, fx_arm_starmap_new );
		sleep(1);
		effect_kill_from_flag(environments\solo\m10_crash\fx\holograms\starmap_new.effect, fx_arm_starmap_new );
		sleep(5);
		effect_new(environments\solo\m10_crash\fx\holograms\starmap_new.effect, fx_arm_starmap_new );
		sleep(7);
		effect_kill_from_flag(environments\solo\m10_crash\fx\holograms\starmap_new.effect, fx_arm_starmap_new );
		sleep(1);
		effect_kill_from_flag(environments\solo\m10_crash\fx\holograms\starmap_new.effect, fx_arm_starmap_new );
		sleep(5);
		effect_new(environments\solo\m10_crash\fx\holograms\starmap_new.effect, fx_arm_starmap_new );
	until
		(b_scan_done == TRUE);

end

script static void f_lab_save()
	sleep_until(volume_test_players(tv_fud_rumble));
	game_save_no_timeout();
end

script static void f_star_make_create()
	dprint("::BUILDING STAR MAP::");
	effect_new(environments\solo\m10_crash\fx\holograms\starmap_new.effect, fx_arm_starmap_new );
end

/*
DIDACT SCAN EVENT REFERENCE
Script:
E:\Corinth\Midnight\Main\data\environments\solo\m10_crash\scripts\m10_crash_fx.hsc

Function:
fx_arm_didact_scan()

Effect:
E:\Corinth\Midnight\Main\tags\environments\solo\m10_crash\fx\scan\didact_scan.effect
*/

// --- End m10_lab.hsc ---

// --- Begin m10_narrative.hsc ---

// =================================================================================================
// =================================================================================================
// NARRATIVE SCRIPTING M10
// =================================================================================================
// =================================================================================================


// =================================================================================================
// *** GLOBALS ***
// =================================================================================================
global long ms_1_thread = 0;
global long ms_10_thread = 0;
global long sec_1_thread = 0;
global long sec_10_thread = 0;
global long min_1_thread = 0;
global long min_10_thread = 0;
global long hours_1_thread = 0;
global long hours_10_thread = 0;
global long days_1_thread = 0;
global long days_10_thread = 0;
global long days_100_thread = 0;
global boolean b_objective_1_complete = FALSE;
global boolean b_objective_2_complete = FALSE;
global boolean b_objective_3_complete = FALSE;
global boolean b_objective_4_complete = FALSE;
global boolean b_objective_5_complete = FALSE;
global boolean b_objective_6_complete = FALSE;
global boolean b_objective_7_complete = FALSE;
global boolean b_objective_8_complete = FALSE;
global boolean b_objective_9_complete = FALSE;
global boolean b_objective_10_complete = FALSE;
global boolean b_objective_11_complete = FALSE;
global boolean b_objective_12_complete = FALSE;
global boolean b_missile_control_elite_dead = TRUE;
global boolean b_used_fud_holgoram = FALSE;
global boolean b_get_objective_beacon = FALSE;
global boolean b_fud_active = FALSE;
global boolean b_has_left_fud_switch = FALSE;
global object_name g_active_fud_switch_name = fud_switch;

///////////////////////////////////////////////////////////////////////////////////
// MAIN
///////////////////////////////////////////////////////////////////////////////////
script startup m10_narrative_startup()
	sleep_until( b_mission_started == TRUE );
	
	objectives_set_string(0, obj_menu_int_alert);
	objectives_set_string(1, obj_menu_destroy_cruiser);
	objectives_set_string(2, obj_menu_escape_fud);
	
	print ("m10_narrative_startup");
	thread (chiefs_record_main());
	thread (star_map_main());
	thread (fud_holo_main());
	thread (start_cryo_clock());
	thread (cryo_room_monitors());
	thread (m10_missile_launched());
	//thread (m10_vo_airlock_return());
	thread (m10_vo_planet_reveal());
	thread (fud_intrustion_loop());
	wake (m10_achievement_unlock);
	
	wake(m10_elevator_in_sight);
	//wake(m10_post_second_elevator);
	wake(m10_lookout_post);
	wake(m10_cafe_vo);
	wake(m10_beacon_launch_beacon);
	wake(m10_kill_zone);
	//wake(m10_beacon_prep);
	wake(m10_start_observatory_pip);
	object_destroy(fud_switch_02);
	object_destroy(fud_switch_03);
	object_destroy(fud_switch_04);
	object_destroy(fud_switch_05);
	object_destroy(history_switch_02);
	
	thread(m10_hull_integrity_30());
	thread(m10_hull_integrity_25());
	thread(m10_hull_integrity_15());
	thread(m10_hull_integrity_10());
	thread(m10_system_depressurization());
	
end

script static void cryo_room_monitors()
		sleep_until( object_valid(cryo_monitor), 1 );
	
		object_set_permutation (cryo_monitor, "","default");
		
		sleep_until(objects_distance_to_object (player0, cryo_monitor) < 4, 1);
		
		object_set_permutation (cryo_monitor, "","active");
end

///////////////////////////////////////////////////////////////////////////////////
// FUD Halogram
///////////////////////////////////////////////////////////////////////////////////


script static void fud_intrustion_loop()
	dprint("fud_intrustion_loop THREADED");
///MWG : Adding a sleep until object valid to prevent debug spew
	sleep_until(object_valid(g_active_fud_switch_name));
	print ("Break One");
	sleep_until(objects_distance_to_object (player0, g_active_fud_switch_name) < 4, 1);
	print ("Break Two");
	sleep_until (b_has_left_fud_switch == FALSE);
	print ("Break Three - NEW");
	sleep_s(5);
	if (objects_distance_to_object(player0, g_active_fud_switch_name) < 4) and  b_fud_active == FALSE then
		dprint("intrustion fired");
		sound_impulse_start( 'sound\dialog\mission\m10\m10_fud_hologram_00105', g_active_fud_switch_name, 1 );
		print("System Voice: Intrusion alert.");
		sleep_s(2);
		sound_impulse_start( 'sound\dialog\mission\m10\m10_fud_hologram_00105', g_active_fud_switch_name, 1 );
		print("System Voice: Intrusion alert.");
	end
	if b_fud_active == FALSE then
		thread(fud_intrustion_loop());
	end
	print ("NOP");
	
end

script static void fud_holo_main()


		wake (f_has_left_fud_switch);	
	sleep_until( object_valid(halogram), 1 );
	
	static short holo_state = 0;
	
	repeat 
		sleep_until (device_get_position(fud_switch) != 0);
		local long show = pup_play_show (fud_hud_button);
		sleep_until(not pup_is_playing(show),1);
		b_fud_active = TRUE;
		//sound_impulse_stop(m10_fud_hologram_00105);
		dialog_end_interrupt(l_dlg_m80_intrusion_alert);
		kill_script(fud_intrustion_loop);
		object_destroy(fud_switch);
		object_set_variant (halogram, "guns_offline");
		thread (f_dialog_FUDhologram( holo_state ));
		holo_state = holo_state + 1;
		sleep_s(4);
		b_fud_active = FALSE;
		thread(fud_intrustion_loop());
		object_create(fud_switch_02);
		device_set_position_immediate(fud_switch_02, 0);
		g_active_fud_switch_name = fud_switch_02;
		
		sleep_until (device_get_position(fud_switch_02) != 0);
	//	pup_play_show (fud_hud_button);
	//	sound_impulse_stop(m10_fud_hologram_00105);
		b_fud_active = TRUE;
		dialog_end_interrupt(l_dlg_m80_intrusion_alert);
		kill_script(fud_intrustion_loop);
		object_destroy(fud_switch_02);
		object_set_variant (halogram, "grav_online");
		thread (f_dialog_FUDhologram( holo_state ));
		holo_state = holo_state + 1;
		sleep_s(4);
		b_fud_active = FALSE;
		thread(fud_intrustion_loop());
		object_create(fud_switch_03);
		device_set_position_immediate(fud_switch_03, 0);
		g_active_fud_switch_name = fud_switch_03;

		sleep_until (device_get_position(fud_switch_03) != 0);
	//	pup_play_show (fud_hud_button);
	//	sound_impulse_stop(m10_fud_hologram_00105);
		b_fud_active = TRUE;
		dialog_end_interrupt(l_dlg_m80_intrusion_alert);
		kill_script(fud_intrustion_loop);
		object_destroy(fud_switch_03);
		object_set_variant (halogram, "propul_offline");
		thread (f_dialog_FUDhologram( holo_state ));
		holo_state = holo_state + 1;
		sleep_s(4);
		b_fud_active = FALSE;
		thread(fud_intrustion_loop());
		object_create(fud_switch_04);
		device_set_position_immediate(fud_switch_04, 0);
		g_active_fud_switch_name = fud_switch_04;

		sleep_until (device_get_position(fud_switch_04) != 0);
	//	pup_play_show (fud_hud_button);
		b_fud_active = TRUE;
		//sound_impulse_stop(m10_fud_hologram_00105);
		dialog_end_interrupt(l_dlg_m80_intrusion_alert);
		kill_script(fud_intrustion_loop);
		object_destroy(fud_switch_04);
		object_set_variant (halogram, "hull_compromised");
		thread (f_dialog_FUDhologram( holo_state ));
		holo_state = holo_state + 1;
		sleep_s(4);
		b_fud_active = FALSE;
		thread(fud_intrustion_loop());
		object_create(fud_switch_05);
		device_set_position_immediate(fud_switch_05, 0);
		g_active_fud_switch_name = fud_switch_05;
		
		sleep_until (device_get_position(fud_switch_05) != 0);
	//	pup_play_show (fud_hud_button);
		//sound_impulse_stop(m10_fud_hologram_00105);
		b_fud_active = TRUE;
		dialog_end_interrupt(l_dlg_m80_intrusion_alert);
		kill_script(fud_intrustion_loop);
		object_destroy(fud_switch_05);
		object_set_variant (halogram, "life_support");
		thread (f_dialog_FUDhologram( holo_state ));
		holo_state = holo_state + 1;
		sleep_s(4);
		b_fud_active = FALSE;
		thread(fud_intrustion_loop());
		object_create(fud_switch);
		device_set_position_immediate(fud_switch, 0);
		g_active_fud_switch_name = fud_switch;
		
		holo_state = 0;
	until (1 == 0, 1);	
	
end

script dormant f_has_left_fud_switch

	sleep_until (volume_test_players (tv_has_left_fud_switch), 1);
	 b_has_left_fud_switch = true;

end

global sound SND_FUDhologram_active = NONE;
script static void f_dialog_FUDhologram_play( sound snd_sound, real r_time, string str_dprint )
	// kill previous sound if it's playing
	if ( SND_FUDhologram_active != NONE ) then
		sound_impulse_stop( SND_FUDhologram_active );
		SND_FUDhologram_active = NONE;
	end

	// XXX set the target to the object in the room
	sound_impulse_start( snd_sound, halogram, 1 );
	SND_FUDhologram_active = snd_sound;

	dprint( str_dprint );
	sleep_s( r_time );
	if ( SND_FUDhologram_active == snd_sound ) then
		SND_FUDhologram_active = NONE;
	end
end

script static void f_dialog_FUDhologram( short s_index )
static long l_thread = 0;
	//dprint( "::: f_dialog_FUDhologram :::" );

	// kill the thread
	if ( l_thread != 0 ) then
		kill_thread( l_thread );
		l_thread = 0;
	end
	
	// play the indexed sound
	if ( s_index == 0 ) then
	sleep_s(1);
		l_thread = thread( f_dialog_FUDhologram_play('sound\dialog\mission\m10\m10_fud_hologram_00100', sound_impulse_time('sound\dialog\mission\m10\m10_fud_hologram_00100'), "System Voice : Weapon systems offline.") );
		b_used_fud_holgoram = TRUE;
	end
	if ( s_index == 1 ) then
	sleep_s(1);
		l_thread = thread( f_dialog_FUDhologram_play('sound\dialog\mission\m10\m10_fud_hologram_00101', sound_impulse_time('sound\dialog\mission\m10\m10_fud_hologram_00101'), "System Voice : Gravity controls online.") );
	end
	if ( s_index == 2 ) then
	sleep_s(1);
		l_thread = thread( f_dialog_FUDhologram_play('sound\dialog\mission\m10\m10_fud_hologram_00102', sound_impulse_time('sound\dialog\mission\m10\m10_fud_hologram_00102'), "System Voice : Ship Propulsion offline.") );
	end
	if ( s_index == 3 ) then
	sleep_s(1);
		l_thread = thread( f_dialog_FUDhologram_play('sound\dialog\mission\m10\m10_fud_hologram_00103', sound_impulse_time('sound\dialog\mission\m10\m10_fud_hologram_00103'), "System Voice : Bow hull integrity compromised.") );
	end
	if ( s_index == 4 ) then
	sleep_s(1);
		l_thread = thread( f_dialog_FUDhologram_play('sound\dialog\mission\m10\m10_fud_hologram_00104', sound_impulse_time('sound\dialog\mission\m10\m10_fud_hologram_00104'), "System Voice : Life support online.") );
	end
	if ( s_index == 5 ) then
	sleep_s(1);
		l_thread = thread( f_dialog_FUDhologram_play('sound\dialog\mission\m10\m10_fud_hologram_00105', sound_impulse_time('sound\dialog\mission\m10\m10_fud_hologram_00105'), "System Voice : Intrusion alert.") );
	end
end

///////////////////////////////////////////////////////////////////////////////////
// Interactive Star Map
///////////////////////////////////////////////////////////////////////////////////

script static void star_map_main()
	// XXX ADDED TO PREVENT IT FROM RUNNING WHEN THE OBJECTS ARE NOT LOADED - THFRENCH
		sleep_until (object_valid(star_switch));
		local long fud_show = -1;
	
		device_group_set_immediate (fud_star_power, 1 );
		sleep_until (device_get_position(star_switch) != 0);
		//pup_play_show (star_map_button);
		device_group_set_immediate (fud_star_power, 0 );
		sleep(30);
		object_create (fud_star_map);
		fud_show = pup_play_show(ps_fud_star_map);
		sleep_until( pup_is_playing( fud_show ) == FALSE, 1 );		
		device_set_position_immediate(star_switch, 0);
		thread (star_map_main());

	
end

script static void star_map_anims()
	pup_play_show(ps_fud_star_map);
end


///////////////////////////////////////////////////////////////////////////////////
// Chief's Record
///////////////////////////////////////////////////////////////////////////////////
script static void chiefs_record_main()
	// XXX ADDED TO PREVENT IT FROM RUNNING WHEN THE OBJECTS ARE NOT LOADED - THFRENCH
	print("::RECORD INITIATED::");
	sleep_until( object_valid(history_switch));
	print("::RECORD SHOULD BE ON::");
	static short record_state = 0;
	
	repeat 
		sleep_until (device_get_position(history_switch) != 0);
		object_destroy(history_switch);
		local long record_show = pup_play_show (chief_record_button);
		sleep_until(not pup_is_playing(record_show),1);
		object_create(chief_record);
		object_set_permutation (chief_record, "","default");
		thread (f_dialog_servicerecord( record_state ));
		record_state = record_state + 1;
		sleep_s(7);
		object_create(history_switch_02);
		device_set_position_immediate(history_switch_02, 0);
		
		sleep_until (device_get_position(history_switch_02) != 0);
	//	pup_play_show (chief_record_button);
		object_destroy(history_switch_02);
		object_set_permutation (chief_record, "","slide_1");
		thread (f_dialog_servicerecord( record_state ));
		record_state = record_state + 1;
		sleep_s(19);
		object_create(history_switch_02);
		device_set_position_immediate(history_switch_02, 0);

		sleep_until (device_get_position(history_switch_02) != 0);
	//	pup_play_show (chief_record_button);
		object_destroy(history_switch_02);
		object_set_permutation (chief_record, "","slide_2");
		thread (f_dialog_servicerecord( record_state ));
		record_state = record_state + 1;
		sleep_s(25);
		object_create(history_switch_02);
		device_set_position_immediate(history_switch_02, 0);
		
		sleep_until (device_get_position(history_switch_02) != 0);
//		pup_play_show (chief_record_button);
		object_destroy(history_switch_02);
		object_set_permutation (chief_record, "","slide_3");
		thread (f_dialog_servicerecord( record_state ));
		record_state = record_state + 1;
		sleep_s(23);
		object_create(history_switch_02);
		device_set_position_immediate(history_switch_02, 0);
		
		sleep_until (device_get_position(history_switch_02) != 0);
//		pup_play_show (chief_record_button);
		object_destroy(history_switch_02);
		object_set_permutation (chief_record, "","slide_4");
		thread (f_dialog_servicerecord( record_state ));
		record_state = record_state + 1;
		sleep_s(12);
		object_create(history_switch_02);
		device_set_position_immediate(history_switch_02, 0);
		
		sleep_until (device_get_position(history_switch_02) != 0);
	//	pup_play_show (chief_record_button);
		object_destroy(history_switch_02);
		//object_set_permutation (chief_record, "","slide_6");
		thread (f_dialog_servicerecord( record_state ));
		record_state = record_state + 1;
		sleep_s(19);
		object_create(history_switch);
		device_set_position_immediate(history_switch, 0);
		record_state = 0;

		
	until (1 == 0, 1);	
end


script static void f_dialog_servicerecord( short s_index )
static long l_thread = 0;
	//dprint( "::: f_dialog_servicerecord :::" );

	// kill the thread
	if ( l_thread != 0 ) then
		kill_thread( l_thread );
		l_thread = 0;
	end
	
	// play the indexed sound
	if ( s_index == 0 ) then
	sleep_s(1);
	  l_thread = thread( f_dialog_servicerecord_play('sound\dialog\mission\m10\m10_servicerecord_00130', sound_impulse_time('sound\dialog\mission\m10\m10_servicerecord_00130'), "This is the service record for Spartan John One-One-Seven.") );
	  sleep_s(5);
	  l_thread = thread( f_dialog_servicerecord_play('sound\dialog\mission\m10\m10_servicerecord_00131', sound_impulse_time('sound\dialog\mission\m10\m10_servicerecord_00131'), "Would you like to continue?") );
	end
	if ( s_index == 1 ) then
	sleep_s(1);
	  l_thread = thread( f_dialog_servicerecord_play('sound\dialog\mission\m10\m10_servicerecord_00124', sound_impulse_time('sound\dialog\mission\m10\m10_servicerecord_00124'), "Frigate Pillar of Autumn discovers Forerunner Halo Installation 04, and deploys Spartan 117 to protect  UNSC AI Cortana. Chief uncovers a Covenant plot to fire the weapon, and sacrifices the Autumn to destroy the Halo ring.") );
	end
	if ( s_index == 2 ) then
	sleep_s(1);
	  l_thread = thread( f_dialog_servicerecord_play('sound\dialog\mission\m10\m10_servicerecord_00125', sound_impulse_time('sound\dialog\mission\m10\m10_servicerecord_00125'), "Pursuing the Covenant flagship after an attack on Earth, Spartan one one seven arrives at Halo Installation 05 to find the Covenant erupting into civil war. After preventing the Covenant from firing the ring, one one seven followed them back to Earth in search of a Forerunner installation that can activate all the galaxy�s Halos.") );
	end
	if ( s_index == 3 ) then
	sleep_s(1);
	  l_thread = thread( f_dialog_servicerecord_play('sound\dialog\mission\m10\m10_servicerecord_00126', sound_impulse_time('sound\dialog\mission\m10\m10_servicerecord_00126'), "The Covenant arrive at Earth, and open a portal to the Ark, an extragalactic Forerunner installation that can fire the Halo Array. Spartan one one seven unites a joint Covenant/UNSC team to pursue the Covenant to the Ark, where he successfully destroys the Installation and prevents the rings from being used.") );
	end
	if ( s_index == 4 ) then
	sleep_s(1);
	  l_thread = thread( f_dialog_servicerecord_play('sound\dialog\mission\m10\m10_servicerecord_00127', sound_impulse_time('sound\dialog\mission\m10\m10_servicerecord_00127'), "When Spartan one one seven attempts to escape from the Ark aboard the UNSC Forward Unto Dawn, the slipspace portal that the ship is passing through collapses.") );
	end
	if ( s_index == 5 ) then
	sleep_s(1);
	  l_thread = thread( f_dialog_servicerecord_play('sound\dialog\mission\m10\m10_servicerecord_00122', sound_impulse_time('sound\dialog\mission\m10\m10_servicerecord_00122'), "Aboard the aft section of the Dawn, Spartan 117 is placed into cryo sleep pending recovery by UNSC forces. AI Cortana to remain active as long as is technically feasible.") );
	  sleep_s(16);
	  l_thread = thread( f_dialog_servicerecord_play('sound\dialog\mission\m10\m10_servicerecord_00123', sound_impulse_time('sound\dialog\mission\m10\m10_servicerecord_00123'), "End of service record.") );
	end

end

global sound SND_servicerecord_active = NONE;
script static void f_dialog_servicerecord_play( sound snd_sound, real r_time, string str_dprint )

	// kill previous sound if it's playing
	if ( SND_servicerecord_active != NONE ) then
		sound_impulse_stop( SND_servicerecord_active );
		SND_servicerecord_active = NONE;
	end

	// XXX set the target to the object in the room
	sound_impulse_start( snd_sound, service_record, 1 );
	SND_servicerecord_active = snd_sound;
		
	dprint( str_dprint );
	sleep_s( r_time );
	if ( SND_servicerecord_active == snd_sound ) then
		SND_servicerecord_active = NONE;
	end

end

///////////////////////////////////////////////////////////////////////////////////
// CRYOCLOCK (the impossible)
///////////////////////////////////////////////////////////////////////////////////
script static void start_cryo_clock()
	// XXX ADDED TO PREVENT IT FROM RUNNING WHEN THE OBJECTS ARE NOT LOADED - THFRENCH
	sleep_until( object_valid(sec_1), 1 );


	static short ms_init_10 = 5;
	static short sec_init_1 = 5;
	static short sec_init_10 = 5;
	static short min_init_1 = 8;
	static short min_init_10 = 5;
	static short hour_init_1 = 3;
	static short hour_init_10 = 2;
	static short day_init_1 = 2;
	static short day_init_10 = 4;
	static short day_init_100 = 3;
	static short year_init_1 = 3;
	static short year_init_10 = 0;
	static short year_init_100 = 0;
	
	thread (set_cryo_clock_init_num(ms_10, ms_init_10));
	thread (set_cryo_clock_init_num(sec_1, sec_init_1));
	thread (set_cryo_clock_init_num(sec_10, sec_init_10));
	thread (set_cryo_clock_init_num(min_1, min_init_1));
	thread (set_cryo_clock_init_num(min_10, min_init_10));
	thread (set_cryo_clock_init_num(hour_1, hour_init_1));
	thread (set_cryo_clock_init_num(hour_10, hour_init_10));
	thread (set_cryo_clock_init_num(day_1, day_init_1));
	thread (set_cryo_clock_init_num(day_10, day_init_10));
	thread (set_cryo_clock_init_num(day_100, day_init_100));
	thread (set_cryo_clock_init_num(year_1, year_init_1));
	thread (set_cryo_clock_init_num(year_10, year_init_10));
	thread (set_cryo_clock_init_num(year_100, year_init_100));
	
	// ms
	ms_1_thread = thread (set_cryo_clock_num_ms_1(ms_1));
	ms_10_thread = thread (set_cryo_clock_num_ms_10(ms_10, sec_init_1));
		
	// seconds
	sec_1_thread = thread (set_cryo_clock_num_sec_1(sec_1, 1, sec_init_1));
	sec_10_thread = thread (set_cryo_clock_num_sec_10(sec_10, 10, sec_init_10));
	
	// minutes
	min_1_thread = thread (set_cryo_clock_num_min_1(min_1, 60, min_init_1));
	min_10_thread = thread (set_cryo_clock_num_min_10(min_10, 600, min_init_10));
		
	// hours
	hours_1_thread = thread (set_cryo_clock_num_hour_1(hour_1, 3600, hour_init_1, hour_init_10));
	hours_10_thread = thread (set_cryo_clock_num_hour_10(hour_10, 36000, hour_init_10));
	
	// days
	days_1_thread = thread (set_cryo_clock_num_day_1(day_1, 86400, day_init_1));
	days_10_thread = thread (set_cryo_clock_num_day_10(day_10, 864000, day_init_10, 34));	// careful with this one
	days_100_thread = thread (set_cryo_clock_num_day_100(day_100, 8640000, day_init_100));	
	
end

script static void set_cryo_clock_init_num(object num, short init)
		if (init == 0) then
				object_set_permutation (num, "","0");
		end
		
		if (init == 1) then
				object_set_permutation (num, "","1");
		end
		
		if (init == 2) then
				object_set_permutation (num, "","2");
		end
		
		if (init == 3) then
				object_set_permutation (num, "","3");
		end

		if (init == 4) then
				object_set_permutation (num, "","4");
		end
		
		if (init == 5) then
				object_set_permutation (num, "","5");
		end
		
		if (init == 6) then
				object_set_permutation (num, "","6");
		end
		
		if (init == 7) then
				object_set_permutation (num, "","7");
		end
		
		if (init == 8) then
				object_set_permutation (num, "","8");
		end

		if (init == 9) then
				object_set_permutation (num, "","9");
		end		
end

script static void set_cryo_clock_num_ms_1(object num)
				
	repeat 
		begin_random 
			object_set_permutation (num, "","0"); 
			object_set_permutation (num, "","1");
			object_set_permutation (num, "","2"); 
			object_set_permutation (num, "","3");
			object_set_permutation (num, "","4"); 
			object_set_permutation (num, "","5");
			object_set_permutation (num, "","6"); 
			object_set_permutation (num, "","7");
			object_set_permutation (num, "","8"); 
			object_set_permutation (num, "","9");
		end
	until (1 == 0, 1);

end

script static void set_cryo_clock_num_ms_10(object num, short init)
	
	static short current_time = 0;
	current_time = init;

	// set up the first time through	
	current_time = current_time + 1;

	if (current_time == 0 or current_time >= 10) then
			object_set_permutation (num, "","0");
			current_time = 0;		
			NotifyLevel( "start seconds one" );
	end
	
	if (current_time == 1) then
			object_set_permutation (num, "","1");
	end
	
	if (current_time == 2) then
			object_set_permutation (num, "","2");
	end
	
	if (current_time == 3) then
			object_set_permutation (num, "","3");
	end

	if (current_time == 4) then
			object_set_permutation (num, "","4");
	end
	
	if (current_time == 5) then
			object_set_permutation (num, "","5");
	end		

	if (current_time == 6) then
			object_set_permutation (num, "","6");
	end		
	
	if (current_time == 7) then
			object_set_permutation (num, "","7");
	end		
	
		if (current_time == 8) then
			object_set_permutation (num, "","8");
	end		
	
	if (current_time == 9) then
			object_set_permutation (num, "","9");
	end			
				
	// clock loop				
	repeat 	
		current_time = current_time + 1;
		
		if (current_time == 0 or current_time >= 10) then
				object_set_permutation (num, "","0");
				current_time = 0;		
				NotifyLevel( "start seconds one" );
		end
		
		if (current_time == 1) then
				object_set_permutation (num, "","1");
		end
		
		if (current_time == 2) then
				object_set_permutation (num, "","2");
		end
		
		if (current_time == 3) then
				object_set_permutation (num, "","3");
		end
	
		if (current_time == 4) then
				object_set_permutation (num, "","4");
		end
		
		if (current_time == 5) then
				object_set_permutation (num, "","5");
		end		
	
		if (current_time == 6) then
				object_set_permutation (num, "","6");
		end		
		
		if (current_time == 7) then
				object_set_permutation (num, "","7");
		end		
		
			if (current_time == 8) then
				object_set_permutation (num, "","8");
		end		
		
		if (current_time == 9) then
				object_set_permutation (num, "","9");
		end			

	until (1 == 0, 3);

end

script static void set_cryo_clock_num_sec_1(object num, long loop_time, short init)
	
	static short current_time = 0;
	current_time = init;
		
	// set up the first time through	
	sleep_until( LevelEventStatus( "start seconds one" ), 1 );
	current_time = current_time + 1;
	
	if (current_time == 0 or current_time == 10) then
			object_set_permutation (num, "","0");
			current_time = 0;
			NotifyLevel( "start seconds tens" );		
	end
	
	if (current_time == 1) then
			object_set_permutation (num, "","1");
	end
	
	if (current_time == 2) then
			object_set_permutation (num, "","2");
	end
	
	if (current_time == 3) then
			object_set_permutation (num, "","3");
	end

	if (current_time == 4) then
			object_set_permutation (num, "","4");
	end
	
	if (current_time == 5) then
			object_set_permutation (num, "","5");
	end
	
	if (current_time == 6) then
			object_set_permutation (num, "","6");
	end
	
	if (current_time == 7) then
			object_set_permutation (num, "","7");
	end
	
	if (current_time == 8) then
			object_set_permutation (num, "","8");
	end

	if (current_time == 9) then
			object_set_permutation (num, "","9");
	end		
			
	repeat 
		current_time = current_time + 1;
			
		if (current_time == 0 or current_time == 10) then
				object_set_permutation (num, "","0");
				current_time = 0;
				NotifyLevel( "start seconds tens" );		
		end
		
		if (current_time == 1) then
				object_set_permutation (num, "","1");
		end
		
		if (current_time == 2) then
				object_set_permutation (num, "","2");
		end
		
		if (current_time == 3) then
				object_set_permutation (num, "","3");
		end

		if (current_time == 4) then
				object_set_permutation (num, "","4");
		end
		
		if (current_time == 5) then
				object_set_permutation (num, "","5");
		end
		
		if (current_time == 6) then
				object_set_permutation (num, "","6");
		end
		
		if (current_time == 7) then
				object_set_permutation (num, "","7");
		end
		
		if (current_time == 8) then
				object_set_permutation (num, "","8");
		end

		if (current_time == 9) then
				object_set_permutation (num, "","9");
		end		
		
	until (1 == 0, 30 * loop_time);

end

script static void set_cryo_clock_num_sec_10(object num, long loop_time, short init)
	
	static short current_time = 0;
	current_time = init;

	// set up the first time through	
	sleep_until( LevelEventStatus( "start seconds tens" ), 1 );
	current_time = current_time + 1;

	if (current_time == 0 or current_time == 6) then
			object_set_permutation (num, "","0");
			current_time = 0;		
			NotifyLevel( "start minutes one" );
	end
	
	if (current_time == 1) then
			object_set_permutation (num, "","1");
	end
	
	if (current_time == 2) then
			object_set_permutation (num, "","2");
	end
	
	if (current_time == 3) then
			object_set_permutation (num, "","3");
	end

	if (current_time == 4) then
			object_set_permutation (num, "","4");
	end
	
	if (current_time == 5) then
			object_set_permutation (num, "","5");
	end		
				
	// clock loop				
	repeat 	
		current_time = current_time + 1;
		
		if (current_time == 0 or current_time == 6) then
				object_set_permutation (num, "","0");
				current_time = 0;		
				NotifyLevel( "start minutes one" );
		end
		
		if (current_time == 1) then
				object_set_permutation (num, "","1");
		end
		
		if (current_time == 2) then
				object_set_permutation (num, "","2");
		end
		
		if (current_time == 3) then
				object_set_permutation (num, "","3");
		end

		if (current_time == 4) then
				object_set_permutation (num, "","4");
		end
		
		if (current_time == 5) then
				object_set_permutation (num, "","5");
		end


	until (1 == 0, 30 * loop_time);

end

script static void set_cryo_clock_num_min_1(object num, long loop_time, short init)
	
	static short current_time = 0;
	current_time = init;
	
	// first time through

	sleep_until( LevelEventStatus( "start minutes one" ), 1 );
	current_time = current_time + 1;
		
	if (current_time == 0 or current_time == 10) then
				object_set_permutation (num, "","0");
				current_time = 0;
				NotifyLevel( "start minutes tens" );

	end
		
	if (current_time == 1) then
				object_set_permutation (num, "","1");
	end
		
	if (current_time == 2) then
			object_set_permutation (num, "","2");
	end
	
	if (current_time == 3) then
			object_set_permutation (num, "","3");
	end

	if (current_time == 4) then
			object_set_permutation (num, "","4");
	end
	
	if (current_time == 5) then
			object_set_permutation (num, "","5");
	end
	
	if (current_time == 6) then
			object_set_permutation (num, "","6");
	end
	
	if (current_time == 7) then
			object_set_permutation (num, "","7");
	end
	
	if (current_time == 8) then
			object_set_permutation (num, "","8");
	end

	if (current_time == 9) then
			object_set_permutation (num, "","9");
	end		
	
	// clock loop	
	repeat 
		current_time = current_time + 1;
	
		if (current_time == 0 or current_time == 10) then
				object_set_permutation (num, "","0");
				current_time = 0;
				NotifyLevel( "start minutes tens" );
		end
		
		if (current_time == 1) then
				object_set_permutation (num, "","1");
		end
		
		if (current_time == 2) then
				object_set_permutation (num, "","2");
		end
		
		if (current_time == 3) then
				object_set_permutation (num, "","3");
		end

		if (current_time == 4) then
				object_set_permutation (num, "","4");
		end
		
		if (current_time == 5) then
				object_set_permutation (num, "","5");
		end
		
		if (current_time == 6) then
				object_set_permutation (num, "","6");
		end
		
		if (current_time == 7) then
				object_set_permutation (num, "","7");
		end
		
		if (current_time == 8) then
				object_set_permutation (num, "","8");
		end

		if (current_time == 9) then
				object_set_permutation (num, "","9");
		end		
		
	until (1 == 0, 30 * loop_time);

end

script static void set_cryo_clock_num_min_10(object num, long loop_time, short init)
	
	static short current_time = 0;
	current_time = init;
	
	// set up the first time through	
	sleep_until( LevelEventStatus( "start minutes tens" ), 1 );
	current_time = current_time + 1;
	
	if (current_time == 0 or current_time == 6) then
			object_set_permutation (num, "","0");
			current_time = 0;
			NotifyLevel( "start hours ones" );
	end
	
	if (current_time == 1) then
			object_set_permutation (num, "","1");
	end
	
	if (current_time == 2) then
			object_set_permutation (num, "","2");
	end
	
	if (current_time == 3) then
			object_set_permutation (num, "","3");
	end

	if (current_time == 4) then
			object_set_permutation (num, "","4");
	end
	
	if (current_time == 5) then
			object_set_permutation (num, "","5");
	end
	
	// clock loop
	repeat 
		current_time = current_time + 1;

		if (current_time == 0 or current_time == 6) then
				object_set_permutation (num, "","0");
				current_time = 0;
				NotifyLevel( "start hours ones" );
		end
		
		if (current_time == 1) then
				object_set_permutation (num, "","1");
		end
		
		if (current_time == 2) then
				object_set_permutation (num, "","2");
		end
		
		if (current_time == 3) then
				object_set_permutation (num, "","3");
		end

		if (current_time == 4) then
				object_set_permutation (num, "","4");
		end
		
		if (current_time == 5) then
				object_set_permutation (num, "","5");
		end
			
	until (1 == 0, 30 * loop_time);

end

script static void set_cryo_clock_num_hour_1(object num, long loop_time, short init, short ten_accum_init)
	
	static short current_time = 0;
	static short ten_accum = 0;
	static short loop_accum = 0;
		
	current_time = init;
	ten_accum = ten_accum_init;

	// set up the first time through	
	sleep_until( LevelEventStatus( "start hours ones" ), 1 );
	current_time = current_time + 1;
	
	if (current_time == 0 or current_time == 10) then
			object_set_permutation (num, "","0");
			current_time = 0;
			ten_accum = ten_accum + 1;
			NotifyLevel( "start hours tens" );
	end
	
	if (current_time == 1) then
			object_set_permutation (num, "","1");
	end
	
	if (current_time == 2) then
			object_set_permutation (num, "","2");
	end
	
	if (current_time == 3) then
			object_set_permutation (num, "","3");
	end

	if (current_time == 4) then
			if (ten_accum == 2) then
				object_set_permutation (num, "","0");
				current_time = 0;
				ten_accum = 0;
				NotifyLevel( "start hours tens" );
			else
				object_set_permutation (num, "","4");
			end		
	end
	
	if (current_time == 5 ) then
			object_set_permutation (num, "","5");
	end
	
	if (current_time == 6) then
			object_set_permutation (num, "","6");
	end
	
	if (current_time == 7) then
			object_set_permutation (num, "","7");
	end
	
	if (current_time == 8) then
			object_set_permutation (num, "","8");
	end

	if (current_time == 9) then
			object_set_permutation (num, "","9");
	end		
			
	// clock loop
	repeat 
		loop_accum = loop_accum + 1;
		
		if (loop_accum == loop_time) then
			loop_accum = 0;
			current_time = current_time + 1;
		
			if (current_time == 0 or current_time == 10) then
					object_set_permutation (num, "","0");
					current_time = 0;
					ten_accum = ten_accum + 1;
					NotifyLevel( "start hours tens" );
			end
			
			if (current_time == 1) then
					object_set_permutation (num, "","1");
			end
			
			if (current_time == 2) then
					object_set_permutation (num, "","2");
			end
			
			if (current_time == 3) then
					object_set_permutation (num, "","3");
			end
	
			if (current_time == 4) then
					if (ten_accum == 2) then
						object_set_permutation (num, "","0");
						current_time = 0;
						ten_accum = 0;
						NotifyLevel( "start hours tens" );
					else
						object_set_permutation (num, "","4");
					end		
			end
			
			if (current_time == 5 ) then
					object_set_permutation (num, "","5");
			end
			
			if (current_time == 6) then
					object_set_permutation (num, "","6");
			end
			
			if (current_time == 7) then
					object_set_permutation (num, "","7");
			end
			
			if (current_time == 8) then
					object_set_permutation (num, "","8");
			end
	
			if (current_time == 9) then
					object_set_permutation (num, "","9");
			end			
		end	
	until (1 == 0, 30);

end

script static void set_cryo_clock_num_hour_10(object num, long loop_time, short init)
	
	static short current_time = 0;
	static short loop_accum = 0;
	current_time = init;

	// set up the first time through	
	sleep_until( LevelEventStatus( "start hours tens" ), 1 );
	current_time = current_time + 1;
	
	if (current_time == 0 or current_time == 3) then
			object_set_permutation (num, "","0");
			current_time = 0;
			NotifyLevel( "start days ones" );
	end
	
	if (current_time == 1) then
			object_set_permutation (num, "","1");
	end
	
	if (current_time == 2) then
			object_set_permutation (num, "","2");
	end
			
	// clock loop
	repeat 
		loop_accum = loop_accum + 1;

		if (loop_accum == loop_time) then
			loop_accum = 0;			
			current_time = current_time + 1;
	
			if (current_time == 0 or current_time == 3) then
					object_set_permutation (num, "","0");
					current_time = 0;
					NotifyLevel( "start days ones" );
			end
			
			if (current_time == 1) then
					object_set_permutation (num, "","1");
			end
			
			if (current_time == 2) then
					object_set_permutation (num, "","2");
			end
		end
	until (1 == 0, 30);

end

script static void set_cryo_clock_num_day_1(object num, long loop_time, short init)
	
	static short current_time = 0;
	static short loop_accum = 0;
	current_time = init;

	// set up the first time through	
	sleep_until( LevelEventStatus( "start days ones" ), 1 );
	current_time = current_time + 1;
	
	if (current_time == 0 or current_time == 10) then
			object_set_permutation (num, "","0");
			current_time = 0;
			NotifyLevel( "start days tens" );
	end
	
	if (current_time == 1) then
			object_set_permutation (num, "","1");
	end
	
	if (current_time == 2) then
			object_set_permutation (num, "","2");
	end
	
	if (current_time == 3) then
			object_set_permutation (num, "","3");
	end

	if (current_time == 4) then
			object_set_permutation (num, "","4");
	end
	
	if (current_time == 5) then
			object_set_permutation (num, "","5");
	end
	
	if (current_time == 6) then
			object_set_permutation (num, "","6");
	end
	
	if (current_time == 7) then
			object_set_permutation (num, "","7");
	end
	
	if (current_time == 8) then
			object_set_permutation (num, "","8");
	end

	if (current_time == 9) then
			object_set_permutation (num, "","9");
	end		
	// clock loop
	repeat 
		loop_accum = loop_accum + 1;
		
		if (loop_accum == loop_time) then
			loop_accum = 0;
			current_time = current_time + 1;
	
			if (current_time == 0 or current_time == 10) then
					object_set_permutation (num, "","0");
					current_time = 0;
					NotifyLevel( "start days tens" );
			end
			
			if (current_time == 1) then
					object_set_permutation (num, "","1");
			end
			
			if (current_time == 2) then
					object_set_permutation (num, "","2");
			end
			
			if (current_time == 3) then
					object_set_permutation (num, "","3");
			end
	
			if (current_time == 4) then
					object_set_permutation (num, "","4");
			end
			
			if (current_time == 5) then
					object_set_permutation (num, "","5");
			end
			
			if (current_time == 6) then
					object_set_permutation (num, "","6");
			end
			
			if (current_time == 7) then
					object_set_permutation (num, "","7");
			end
			
			if (current_time == 8) then
					object_set_permutation (num, "","8");
			end
	
			if (current_time == 9) then
					object_set_permutation (num, "","9");
			end
		end	
	until (1 == 0, 30);

end

script static void set_cryo_clock_num_day_10(object num, long loop_time, short init, short ten_accum_init)
	
	static short current_time = 0;
	static short loop_accum = 0;
	current_time = init;
	
	static short ten_accum = 0;
	ten_accum = ten_accum_init;
	
	// set up the first time through	
	sleep_until( LevelEventStatus( "start days tens" ), 1 );
	current_time = current_time + 1;

	if (current_time == 0 or current_time == 10) then
			object_set_permutation (num, "","0");
			current_time = 0;
			ten_accum = ten_accum + 1;
			NotifyLevel( "start days hundreds" );
	end
	
	if (current_time == 1) then
			object_set_permutation (num, "","1");
	end
	
	if (current_time == 2) then
			object_set_permutation (num, "","2");
	end
	
	if (current_time == 3) then
			object_set_permutation (num, "","3");
	end

	if (current_time == 4) then
			object_set_permutation (num, "","0");
	end
	
	if (current_time == 5 ) then
			if (ten_accum == 36) then
				object_set_permutation (num, "","0");
				current_time = 0;
				ten_accum = 0;
				NotifyLevel( "start days hundreds" );
			else
				object_set_permutation (num, "","5");
			end		
	end
	
	if (current_time == 6) then
			object_set_permutation (num, "","6");
	end
	
	if (current_time == 7) then
			object_set_permutation (num, "","7");
	end
	
	if (current_time == 8) then
			object_set_permutation (num, "","8");
	end

	if (current_time == 9) then
			object_set_permutation (num, "","9");
	end		

	// clock loop
	repeat 
		loop_accum = loop_accum + 1;

		if (loop_accum == loop_time) then
				loop_accum = 0;		
				current_time = current_time + 1;
		
				if (current_time == 0 or current_time == 10) then
						object_set_permutation (num, "","0");
						current_time = 0;
						ten_accum = ten_accum + 1;
						NotifyLevel( "start days hundreds" );
				end
				
				if (current_time == 1) then
						object_set_permutation (num, "","1");
				end
				
				if (current_time == 2) then
						object_set_permutation (num, "","2");
				end
				
				if (current_time == 3) then
						object_set_permutation (num, "","3");
				end
		
				if (current_time == 4) then
						object_set_permutation (num, "","0");
				end
				
				if (current_time == 5 ) then
						if (ten_accum == 36) then
							object_set_permutation (num, "","0");
							current_time = 0;
							ten_accum = 0;
							NotifyLevel( "start days hundreds" );
						else
							object_set_permutation (num, "","5");
						end		
				end
				
				if (current_time == 6) then
						object_set_permutation (num, "","6");
				end
				
				if (current_time == 7) then
						object_set_permutation (num, "","7");
				end
				
				if (current_time == 8) then
						object_set_permutation (num, "","8");
				end
		
				if (current_time == 9) then
						object_set_permutation (num, "","9");
				end		
			end
	until (1 == 0, 30);

end

script static void set_cryo_clock_num_day_100(object num, long loop_time, short init)
	
	static short current_time = 0;
	static short loop_accum = 0;

	current_time = init;

	// set up the first time through	
	sleep_until( LevelEventStatus( "start days hundreds" ), 1 );
	current_time = current_time + 1;

	if (current_time == 0 or current_time == 3) then
			object_set_permutation (num, "","0");
			current_time = 0;
	end
	
	if (current_time == 1) then
			object_set_permutation (num, "","1");
	end
	
	if (current_time == 2) then
			object_set_permutation (num, "","2");
	end

	if (current_time == 3) then
			object_set_permutation (num, "","3");
	end
					
	repeat 
		loop_accum = loop_accum + 1;
		
		if (loop_accum == loop_time) then
			loop_accum = 0;
			current_time = current_time + 1;
	
			if (current_time == 0 or current_time == 3) then
					object_set_permutation (num, "","0");
					current_time = 0;
			end
			
			if (current_time == 1) then
					object_set_permutation (num, "","1");
			end
			
			if (current_time == 2) then
					object_set_permutation (num, "","2");
			end
	
			if (current_time == 3) then
					object_set_permutation (num, "","3");
			end		
		end	
	until (1 == 0, 30);

end

///////////////////////////////////////////////////////////////////////////////////
// Stop the CRYOCLOCK (so sad)
///////////////////////////////////////////////////////////////////////////////////
script static void stop_cryo_clock()
	kill_thread (ms_1_thread);
	kill_thread (ms_10_thread);
	kill_thread (sec_1_thread);
	kill_thread (sec_10_thread);
	kill_thread (min_1_thread);
	kill_thread (min_10_thread);
	kill_thread (hours_1_thread);
	kill_thread (hours_10_thread);
	kill_thread (days_1_thread);
	kill_thread (days_10_thread);
	kill_thread (days_100_thread);
end

// =================================================================================================
// =================================================================================================
// NARRATIVE BEATS
// =================================================================================================
// =================================================================================================


script dormant maw_opens_description()

	dprint("d");

end

script dormant m10_elevator_in_sight()
	sleep_until( volume_test_players(m10_elevator_in_sight), 1);
	dprint("vo_planet_reveal");
				wake(f_dialog_m10_elevator_in_sight);
end

script dormant m10_observ_atmosphere_breach()
		thread(f_dialog_m10_observ_atmosphere_breach());
end

script dormant m10_observatory_get_objective_beacon_main()
sleep_until( volume_test_players(observatory_exit), 1);
	kill_script(m10_observ_stragglers);
	sleep_forever(m10_observ_stragglers);
	 if b_osb_line_fired == FALSE then
			wake(f_dialog_observatory_get_objective_beacon_main);
			wake(m10_observ_atmosphere_breach);
			b_osb_line_fired = true;
	 end
end



script static void m10_observ_stragglers()
		sleep_s(120);
		wake(f_dialog_m10_observ_stragglers);
end


script dormant m10_observatory_get_objective_beacon_alt()
		sleep_until( volume_test_players(observatory_front_windows), 1);
		kill_script(m10_observ_stragglers);
		sleep_forever(m10_observ_stragglers);
		 if b_osb_line_fired == FALSE then
					wake(f_dialog_observatory_get_objective_beacon_alt);
					wake(m10_observ_atmosphere_breach);
				b_osb_line_fired = true;
	 	 end
			
end


/*script dormant m10_post_second_elevator()
	     	sleep_until( volume_test_players(post_second_elevator), 1);
				wake(f_dialog_m10_post_second_elevator);
end
*/
script dormant m10_lookout_post()
	
	sleep_until(volume_test_players(lookout_post), 1);
  wake(f_dialog_lookout_post);
  
end

script dormant m10_cafe_vo()
	
	sleep_until(volume_test_players(m10_cafe_vo), 1);
  wake(f_dialog_m10_cafe);
  
end


script dormant m10_beacon_prep()
	
	sleep_until(volume_test_players(m10_beacon_prep), 1);
 // wake(f_dialog_beacon_prep);
  
end



script dormant m10_kill_zone()
   sleep_until(volume_test_players(m10_kill_zone), 1);
	dprint("beacon_launch_beacon");
				wake(f_dialog_kill_zone);
end



script dormant m10_beacon_launch_beacon()
   sleep_until(volume_test_players(beacon_launch_beacon), 1);
	dprint("beacon_launch_beacon");
				wake(f_dialog_beacon_launch_beacon);
end

script dormant m10_beacon_controls()
	sleep_until((unit_get_health(sq_3_elite) <= 0) and (device_get_position( missile_control_switch ) == 0), 1);
	dprint("m10_beacon_controls");
		wake(f_dialog_near_missile_room);
			//	wake(f_dialog_beacon_controls);

end


script static void m10_kill_objective_4()
		sleep_until (object_valid (obs_plinth_control), 1);
		kill_script(m10_objective_4_nudge);

end

script dormant m10_start_observatory_pip()
	// MWG : Adding a sleep until object valid to kill debug spew
	sleep_until(object_valid(obs_plinth_control));
	
	sleep_until (device_get_position(obs_plinth_control) != 0, 1);
	sleep_s(1);

	hud_play_pip_from_tag( bink\campaign\M10_B_60 );
	thread(f_dialog_play_pip_m10_b_subtitles());
end

script static void f_dialog_play_pip_m10_b_subtitles()
	sleep_s(1.03);
	dialog_play_subtitle('sound\dialog\mission\m10\m10_observatory_00102');
	sleep_s(4.06);
	dialog_play_subtitle('sound\dialog\mission\m10\m10_observatory_00103');
	sleep_s(3.03);
	dialog_play_subtitle('sound\dialog\mission\m10\m10_observatory_window_open_00100_5');
	sleep_s(2.18);
	dialog_play_subtitle('sound\dialog\mission\m10\m10_observatory_cruiser_00101');	
end

script static void m10_missile_launched()
		sleep_until (object_valid (missile_control_switch), 1);
		sleep_until (device_get_position(missile_control_switch) > 0.0, 1 );
		wake(f_dialog_missile_launched);

end

script static void m10_vo_planet_reveal()
	  sleep_until( volume_test_players(vo_planet_reveal), 1);
	dprint("vo_planet_reveal");
				wake(f_dialog_vo_planet_reveal);
end

/*script static void m10_vo_airlock_return()
	sleep_until( volume_test_players(vo_airlock_return), 1);
	dprint("vo_airlock_return");
				wake(f_dialog_vo_airlock_return);
end*/

script static void m10_system_depressurization()
	sleep_until( volume_test_players(m10_system_depressurization), 1);
	dprint("m10_system_depressurization");
				thread(f_dialog_system_depressurization());
end

script static void m10_hull_integrity_30()
	sleep_until( volume_test_players(vo_airlock_return), 1);
	dprint("m10_hull_integrity_30");
				thread(f_dialog_m10_hull_integrity_30());
end

script static void m10_hull_integrity_25()
	sleep_until( volume_test_players(m10_hull_integrity_25), 1);
	dprint("m10_hull_integrity_25");
				thread(f_dialog_m10_hull_integrity_25());
end

script static void m10_hull_integrity_15()
	sleep_until( volume_test_players(m10_hull_integrity_15), 1);
	dprint("m10_hull_integrity_15");
				thread(f_dialog_m10_hull_integrity_15());
end

script static void m10_hull_integrity_10()
	sleep_until( volume_test_players(m10_hull_integrity_10), 1);
	dprint("m10_hull_integrity_10)");
				thread(f_dialog_m10_hull_integrity_10());
				wake( f_dialog_Breakhall01_Action );
end


// =================================================================================================
// =================================================================================================
// NUDGES
// =================================================================================================
// =================================================================================================


script static void m10_objective_1_nudge()
			dprint("Nudge 1 fired");
			sleep_s(300);
			if b_objective_1_complete == FALSE then
						thread(f_dialog_m10_objective_1());
			end
			if b_objective_1_complete == FALSE then
					thread(m10_objective_1_nudge());
			end
end

script static void m10_objective_2_nudge()
			dprint("Nudge 2 fired");
			sleep_s(300);
			if b_objective_2_complete == FALSE then
						thread(f_dialog_m10_objective_2());
			end
			if b_objective_2_complete == FALSE then
						thread(m10_objective_2_nudge());
			end
end

script static void m10_objective_3_nudge()
			dprint("Nudge 3 fired");
			sleep_s(300);
			if b_objective_3_complete == FALSE then
						thread(f_dialog_m10_objective_3());
			end
			if b_objective_3_complete == FALSE then
				thread(m10_objective_3_nudge());
			end
end


script static void m10_objective_4_nudge()
			dprint("Nudge 4 fired");
			sleep_s(300);
			if b_objective_4_complete == FALSE then
						thread(f_dialog_m10_objective_4());
			end
			if b_objective_4_complete == FALSE then
					thread(m10_objective_4_nudge());
			end
end

script static void m10_objective_5_nudge()
			dprint("Nudge 5 fired");
			sleep_s(300);
			if b_objective_5_complete == FALSE then
						thread(f_dialog_m10_objective_5());
			end
			if b_objective_5_complete == FALSE then
					thread(m10_objective_5_nudge());
			end
end


script static void m10_objective_6_nudge()
			dprint("Nudge 6 fired");
			sleep_s(180);
			if b_objective_6_complete == FALSE then
						thread(f_dialog_m10_objective_6());
			end
			if b_objective_6_complete == FALSE then
					thread(m10_objective_6_nudge());
			end
end

script static void m10_objective_7_nudge()
			dprint("Nudge 7 fired");
			sleep_s(300);
			if b_objective_7_complete == FALSE then
						thread(f_dialog_m10_objective_7());
			end
			if b_objective_7_complete == FALSE then
						thread(m10_objective_7_nudge());
			end
end

script static void m10_objective_8_nudge()
			dprint("Nudge 8 fired");
			sleep_s(300);
			if b_objective_8_complete == FALSE then
						thread(f_dialog_m10_objective_8());
			end
			if b_objective_8_complete == FALSE then
						thread(m10_objective_8_nudge());
			end
					
end

script static void m10_objective_9_nudge()
			dprint("Nudge 9 fired");
			sleep_s(300);
			if b_objective_9_complete == FALSE then
						thread(f_dialog_m10_objective_9());
			end
			if b_objective_9_complete == FALSE then
						thread(m10_objective_9_nudge());
			end
end

script static void m10_objective_10_nudge()
			dprint("Nudge 10 fired");
			sleep_s(300);
			if b_objective_10_complete == FALSE then
						thread(f_dialog_m10_objective_10());
			end
			if b_objective_10_complete == FALSE then
					thread(m10_objective_10_nudge());
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

//Cheevo

script dormant m10_achievement_unlock()
	sleep_until(object_valid(history_switch));
	sleep_until (device_get_position(history_switch) != 0);
	submit_incident_with_cause_player (achieve_m10_special, player0);
	submit_incident_with_cause_player (achieve_m10_special, player1);
	submit_incident_with_cause_player (achieve_m10_special, player2);
	submit_incident_with_cause_player (achieve_m10_special, player3);
	dprint("ACHIEVEMENT UNLOCKED");
end
// --- End m10_narrative.hsc ---

// --- Begin m10_objectives.hsc ---
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343
//
// Mission: 					m10_crash_end
//	Insertion Points:	start (or icr)	- Beginning
//										ila							- Lab/Armory
//										iob							- Observatory
//										ifl							- Flank
//										ibe							-	Beacon
//										ibr							- Broken Floors
//										iea							- Explosion Alley
//										ivb							- Vehicle Bay
//										iju							- Jump Debris
//	
/*
obj_get_cortana					= "OBJECTIVE: Retrieve Cortana"
obj_activate_power			= "OBJECTIVE: Restore Ship Power"
obj_launch_beacon				= "OBJECTIVE: Launch Distress Beacon"
obj_toescapepodbay			= "OBJECTIVE: Escape the Ship"
obj_enterescapepod			= "OBJECTIVE: Catch the Escape Pod"
*/									
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343

// -------------------------------------------------------------------------------------------------
// OBJECTIVES
// -------------------------------------------------------------------------------------------------
// Defines
global real DEF_R_OBJECTIVE_GOTO_OBSERVATION					= 0.1;
global real DEF_R_OBJECTIVE_ACTIVATE_ELEVATOR					= 0.2;
global real DEF_R_OBJECTIVE_ELIMINATE_ENEMY						= 0.3;
global real DEF_R_OBJECTIVE_ACTIVATE_BLAST_DOOR				= 0.4;
global real DEF_R_OBJECTIVE_ELIMINATE_ENEMY_2					= 0.5;
global real DEF_R_OBJECTIVE_GOTO_ELEVATOR							= 0.6;
global real DEF_R_OBJECTIVE_GET_IN_ELEVATOR						= 0.7;
global real DEF_R_OBJECTIVE_FIND_MISSILE_CONTROLS			= 0.8;
global real DEF_R_OBJECTIVE_MANUAL_LAUNCH							= 0.9;
global real DEF_R_OBJECTIVE_REACH_ESCAPE_PODS					= 1.0;
global real DEF_R_OBJECTIVE_EXIT_OUTER_DECK						= 1.1;
global real DEF_R_OBJECTIVE_PRY_POD_DOOR							= 1.2;

// variables
global boolean B_missioncomplete_title_pause					= FALSE;
global boolean B_missioncomplete_end_pause						= TRUE;

// functions
// === f_mission_objective_blip: Blips an objective index
script static boolean f_mission_objective_blip( real r_index, boolean b_blip )
static boolean b_blipped = FALSE;
	// set the default return value
	b_blipped = FALSE;

	//dprint( "::: f_mission_objective_blip :::" );
	inspect( r_index );
	
	//DEF_R_OBJECTIVE_GOTO_OBSERVATION
	if ( r_index == DEF_R_OBJECTIVE_GOTO_OBSERVATION ) then
		b_blipped = TRUE;
		thread (m10_objective_1_nudge());
	end	
	
	
	//DEF_R_OBJECTIVE_ACTIVATE_ELEVATOR	
	if ( r_index == DEF_R_OBJECTIVE_ACTIVATE_ELEVATOR ) then
		if ( b_blip ) then
			f_blip_flag( flg_elevator_ics_door_objective, "default" );
			b_blipped = TRUE;
		end
		if ( not b_blip ) then
			f_unblip_flag( flg_elevator_ics_door_objective );
			b_blipped = TRUE;
		end
		thread (m10_objective_2_nudge());		
		kill_script(m10_objective_1_nudge);
		sleep_forever(m10_objective_1_nudge);
		b_objective_1_complete = TRUE;
	end	
	
	//DEF_R_OBJECTIVE_ELIMINATE_ENEMY
	if ( r_index == DEF_R_OBJECTIVE_ELIMINATE_ENEMY ) then
		thread (m10_objective_3_nudge());		
		kill_script(m10_objective_2_nudge);
		sleep_forever(m10_objective_2_nudge);
		b_objective_2_complete = TRUE;
		end

	//DEF_R_OBJECTIVE_ACTIVATE_BLAST_DOOR	
	if ( r_index == DEF_R_OBJECTIVE_ACTIVATE_BLAST_DOOR ) then
		if ( b_blip ) then
			f_blip_object_offset( obs_plinth_control, "default", 0.12 );
			b_blipped = TRUE;
		end
		if ( not b_blip ) then
			f_unblip_object( obs_plinth_control );
			b_blipped = TRUE;
		end
		//thread (m10_objective_4_nudge());		
		kill_script(m10_objective_3_nudge);
		sleep_forever(m10_objective_3_nudge);
		b_objective_3_complete = TRUE;
	end	

	//DEF_R_OBJECTIVE_ELIMINATE_ENEMY_2	
	if ( r_index == DEF_R_OBJECTIVE_ELIMINATE_ENEMY_2 ) then
		b_blipped = TRUE;
		thread (m10_objective_5_nudge());		
		kill_script(m10_objective_4_nudge);
		sleep_forever(m10_objective_4_nudge);
		b_objective_4_complete = TRUE;
	end		
	
 	//DEF_R_OBJECTIVE_GOTO_ELEVATOR
 	if ( r_index == DEF_R_OBJECTIVE_GOTO_ELEVATOR ) then
		if ( b_blip ) then
			f_blip_flag( flag_blip_obs_ele, "default" );
			b_blipped = TRUE;
		end
		if ( not b_blip ) then
			f_unblip_flag( flag_blip_obs_ele );
			b_blipped = TRUE;
		end
		thread (m10_objective_6_nudge());		
		kill_script(m10_objective_5_nudge);
		sleep_forever(m10_objective_5_nudge);
		b_objective_5_complete = TRUE;
	end	
	
	//DEF_R_OBJECTIVE_GET_IN_ELEVATOR
 	if ( r_index == DEF_R_OBJECTIVE_GET_IN_ELEVATOR ) then
		if ( b_blip ) then
			f_blip_object( elevator_1_platform, "default" );
			b_blipped = TRUE;
		end
		if ( not b_blip ) then
			f_unblip_object( elevator_1_platform );
			b_blipped = TRUE;
		end
		thread (m10_objective_7_nudge());		
		kill_script(m10_objective_6_nudge);
		sleep_forever(m10_objective_6_nudge);
		b_objective_6_complete = TRUE;
	end	
	
	 	//DEF_R_OBJECTIVE_FIND_MISSILE_CONTROLS
 	if ( r_index == DEF_R_OBJECTIVE_FIND_MISSILE_CONTROLS ) then
		if ( b_blip ) then
			f_blip_object( missile_control_switch, "default" );
			b_blipped = TRUE;
		end
		if ( not b_blip ) then
			f_unblip_object( missile_control_switch );
			b_blipped = TRUE;
		end
		thread (m10_objective_8_nudge());		
		kill_script(m10_objective_7_nudge);
		sleep_forever(m10_objective_7_nudge);
		b_objective_7_complete = TRUE;
	end	
	
 	//DEF_R_OBJECTIVE_BEACON_LAUNCH_START
 	if ( r_index == DEF_R_OBJECTIVE_MANUAL_LAUNCH ) then
		if ( b_blip ) then
			f_blip_object( mag_push_switch, "default" );
			b_blipped = TRUE;
		end
		if ( not b_blip ) then
			f_unblip_object( mag_push_switch );
			b_blipped = TRUE;
		end
		thread (m10_objective_9_nudge());		
		kill_script(m10_objective_8_nudge);
		sleep_forever(m10_objective_8_nudge);
		b_objective_8_complete = TRUE;
	end	
	
 	//DEF_R_OBJECTIVE_BEACON_LAUNCH_ESCAPE
		if ( r_index == DEF_R_OBJECTIVE_REACH_ESCAPE_PODS ) then
		if ( b_blip ) then
			f_blip_flag( flag_airlock_exit, "default" );
			b_blipped = TRUE;
		end
		if ( not b_blip ) then
			f_unblip_flag( flag_airlock_exit );
			b_blipped = TRUE;
		end
		thread (m10_objective_10_nudge());		
		kill_script(m10_objective_9_nudge);
		sleep_forever(m10_objective_9_nudge);
		b_objective_9_complete = TRUE;
	end	
	
	//DEF_R_OBJECTIVE_EXIT_OUTER_DECK
	//if ( r_index == DEF_R_OBJECTIVE_EXIT_OUTER_DECK ) then
		//thread (m10_objective_11_nudge());		
		//end
		
	// return if something was blipped
	b_blipped;

end

// === f_mission_objective_title: Returns the index title title
script static string_id f_mission_objective_title( real r_index )
local string_id sid_return = SID_objective_none;
	
	//DEF_R_OBJECTIVE_GOTO_OBSERVATION
	if ( r_index == DEF_R_OBJECTIVE_GOTO_OBSERVATION ) then
		sid_return = 'obj_observation_deck';
	end	
	
	//DEF_R_OBJECTIVE_ELIMINATE_ENEMY	
	if ( r_index == DEF_R_OBJECTIVE_ELIMINATE_ENEMY ) then
		sid_return = 'obj_eliminate_enemy';
	end		

	//DEF_R_OBJECTIVE_ACTIVATE_BLAST_DOOR	
	if ( r_index == DEF_R_OBJECTIVE_ACTIVATE_BLAST_DOOR ) then
		sid_return = 'obj_find_override';
	end		 
 	
	//DEF_R_OBJECTIVE_ELIMINATE_ENEMY_2	
	if ( r_index == DEF_R_OBJECTIVE_ELIMINATE_ENEMY_2 ) then
		sid_return = 'obj_eliminate_enemy_2';
	end		
 
	// DEF_R_OBJECTIVE_FIND_MISSILE_CONTROLS
	if ( r_index == DEF_R_OBJECTIVE_FIND_MISSILE_CONTROLS ) then
		sid_return = 'obj_missile_controls';
	end	
 
 	// DEF_R_OBJECTIVE_FIND_MISSILE_CONTROLS
	if ( r_index == DEF_R_OBJECTIVE_MANUAL_LAUNCH ) then
		sid_return = 'obj_manual_release';
	end	
	
	// DEF_R_OBJECTIVE_REACH_ESCAPE_PODS
	if ( r_index == DEF_R_OBJECTIVE_REACH_ESCAPE_PODS ) then
		sid_return = 'obj_escape_pods';
	end	

	
	// return
	sid_return;

end
/*
// === f_objective_mission_missioncomplete::: Handles all the general mission complete
script dormant f_objective_mission_missioncomplete()
static real r_logo_time = 22.0;
static long l_logo_timer = 0;
	dprint( "::: f_objective_mission_missioncomplete :::" );

	//dprint( "::: --- MISSION COMPLETE --- :::" );
	//f_end_mission( 'cinematics\transitions\default_intra.cinematic_transition', '36_hallway_38_vehicle_40_debris' );

	// disable controls, etc
	player_action_test_reset();

	player_enable_input( 0 );
	camera_control( 1 );

	// complete current index
	f_objective_complete( f_objective_current_index(), FALSE, TRUE );

	sleep_until( not B_missioncomplete_title_pause, 1 );

	//fade_out( 1.0, 1.0, 1.0, seconds_to_frames(0.5) );
	//sleep_s( 0.5 );

	// show the screen
	cui_load_screen( 'environments\solo\m10_crash\ui\oyo_title.cui_screen' );
	l_logo_timer = seconds_to_frames(r_logo_time) + game_tick_get();
	
	thread( sys_screenshake_global_intensity_set(0.0, 2.5) );

	// wait for timer to finish or [back] input
	sleep_until( player_action_test_back() or (l_logo_timer <= game_tick_get()), 1 );
		
	// audio mission complete
	sfx_campaign_exit() ;
	sleep_until( not B_missioncomplete_end_pause, 1 );

	//if ( editor_mode() ) then
		//cinematic_transition_fade_out_from_game( 'cinematics\transitions\default_intra.cinematic_transition' );
	//end
	
	//sleep_until( not dialog_active(), 1 );
	//sleep_s( 0.5 );

	// end
	dprint( "::: f_objective_mission_missioncomplete: end_mission :::" );

	hud_show_crosshair( TRUE );
	hud_show_radar( TRUE );
	hud_show_weapon( TRUE );
	
	transition_fov( -1, -1, -1, -1 );
	//render_default_lighting = FALSE;
	
	f_objective_missioncomplete();

end
*/
// --- End m10_objectives.hsc ---

// --- Begin m10_observatory.hsc ---

// =================================================================================================
// =================================================================================================
// OBSERVATORY ENCOUNTER
// =================================================================================================
// =================================================================================================


// =================================================================================================
// *** GLOBALS ***
// =================================================================================================

global short S_OBS_OBJ_CON  								= 0;

global short DEF_OBS_OBJ_START 							= 1;
global short DEF_OBS_OBJ_ENCOUNTER_01				= 2;
global short DEF_OBS_OBJ_POWER_ACTIVE		  	= 3;
global short DEF_OBS_OBJ_DOOR_OPENING		  	= 4;
global short DEF_OBS_OBJ_MAW_REVEAL 				= 5;
global short DEF_OBS_OBJ_PODS_LANDED 				= 6;
global short DEF_OBS_OBJ_WAVE_01 						= 7;
global short DEF_OBS_OBJ_LANDER_01_SPAWN  	= 8;
global short DEF_OBS_OBJ_LANDER_01_UNLOAD 	= 9;
global short DEF_OBS_OBJ_LANDER_02_SPAWN  	= 10;
global short DEF_OBS_OBJ_LANDER_02_UNLOAD 	= 11;
global short DEF_OBS_OBJ_ENCOUNTER_CLEANUP	= 12;
global short DEF_OBS_OBJ_CORTANA_GET 				= 13;
global short DEF_OBS_OBJ_ELEVATOR_OPEN 			= 14;
global short DEF_OBS_OBJ_ELEVATOR_ACTIVE 		= 15;

global short S_OBS_WAVE_COUNT 	= 0;
global short S_OBS_WAVE_NEXT   = 0;

global short S_OBS_LANDER_ELITE_COUNT = 2;

global short DEF_OBS_FLEET_FRAME_TOTAL 	= 1800;
global short DEF_OBS_WINDOW_FRAME_TOTAL = 30;

global real R_OBS_FLEET_POSITION		= 0.0;
global real R_OBS_WINDOW_POSITION   = 0.0;


global long L_observatory_cruiser_rumble_ID = 0;

global long L_checkpoint_combat_ID_observatory = 0;
global long g_ObsShipsShow = 0;
global long g_DebrisShow = 0;

// =================================================================================================

script startup f_observatory_init()
	sleep_until (b_mission_started == TRUE);
	//wake(f_observatory_main);
	wake(f_observatory_main_02);
	kill_volume_disable(kill_observatory);
end

//NEW OBSERVATORY ENCOUNTER SET UP NO DROP POD MOMENT
script dormant f_observatory_main_02()
	dprint ("::: observatory prepare 2:::");

	sleep_until (current_zone_set_fully_active() == S_zoneset_06_hallway_08_elevator_10_elevator_12_observatory, 1);
	object_create_folder_anew(dm_observatory);
	object_create_folder_anew(dc_observatory);
	kill_volume_enable(kill_observatory);
	sleep_until(object_valid(wr_obs_3));
	wr_obs_3->open_instant();
	wr_obs_4->open_instant();
	wr_obs_7->open_instant();
	wr_obs_8->open_instant();
	wr_obs_11->open_instant();
	wr_obs_12->open_instant();
	wr_obs_13->open_instant();
	//dprint  ("::: observatory start :::");
	
	//DATA MINE
	data_mine_set_mission_segment ("m10_observatory");
	
	//STAGING
	//wake(f_wr_obs_main);
	wake(f_grenade_tutorial);
	wake (f_observatory_objectives);
		print ("WAKE OBJECTIVES");
	
	device_group_set_immediate (obs_power_group, 0);

	sleep_s(1);
	
	//START
	S_OBS_OBJ_CON = DEF_OBS_OBJ_START;
		print ("OBJ_CON START");

//	game_save();
//	print ("Game Saved");
	thread( f_mus_m10_e01_begin() );

	sleep_until(volume_test_players(tv_enter_obs)==TRUE, 1);
		print ("In volume");
	//ai_place(ai_observatory_init);

	print ("Puppet Show Start");
	// elite hacking the business
	pup_play_show(elite_hacking_obs);
	pup_play_show(obs_grunts_1);
	pup_play_show(obs_grunts_2);	
	wake(f_grunt_living_check);
	thread (disregard_player());

	
	//TURN OFF AI GRENADES
	ai_grenades(FALSE);
	sleep_until(ai_combat_status(ai_observatory_init) > 7 or ai_living_count(ai_observatory_init) < 1);
	S_OBS_OBJ_CON = DEF_OBS_OBJ_ENCOUNTER_01;
	sleep_until(ai_living_count(ai_observatory_init) < 1);
	wake(f_obs_plinth_02);
	
	NotifyLevel("first obs guys dead");

	sleep_until (S_OBS_OBJ_CON == DEF_OBS_OBJ_DOOR_OPENING, 1);
	
	//sleep until right moment in dialogue
	//game_save();
	wake(f_obs_cov_ai_02);
	
	sleep_until (S_OBS_OBJ_CON == DEF_OBS_OBJ_ELEVATOR_OPEN, 1);
	game_save();
	//kill optional leaving dialogue once comabat is over
	sleep_forever(f_dialog_observatory_try_to_leave_optional);
		
	sleep_s(2);
		
	//game_save();
	thread( f_mus_m10_e01_finish() );
	sleep_s(1);
	
	wake(f_elevator_activate);
end

// f_objective_set( real r_index, boolean b_new_msg, boolean b_new_blip, boolean b_complete_msg, boolean b_complete_unblip )
script dormant f_observatory_objectives
	
	// kill the guys
	sleep_until(volume_test_players(tv_leave_obs_during_combat), 1);
	thread (f_objective_set( DEF_R_OBJECTIVE_ELIMINATE_ENEMY, TRUE, FALSE, TRUE, FALSE ));
	// HAX: for some reason this doesn't say complete
	
	// ai eliminated, find the switch
	sleep_until(LevelEventStatus("first obs guys dead"), 1);
	//thread (f_objective_complete( DEF_R_OBJECTIVE_ELIMINATE_ENEMY, TRUE, FALSE ));
	thread (f_objective_set( DEF_R_OBJECTIVE_ACTIVATE_BLAST_DOOR, TRUE, FALSE, TRUE, TRUE ));
	wake(f_blip_override_panel);
	
	// unblip if switch hit
	sleep_until(LevelEventStatus("override switch hit"), 1);
	thread (f_objective_blip( DEF_R_OBJECTIVE_ACTIVATE_BLAST_DOOR, FALSE, TRUE ));
		
	// guys rush in, kill them!
	sleep_until(LevelEventStatus("landers broken through"), 1);
	thread (f_objective_set( DEF_R_OBJECTIVE_ELIMINATE_ENEMY_2, TRUE, FALSE, FALSE, FALSE ));

	// killed attackers, head to elevator
	sleep_until(LevelEventStatus("Get to the Elevator"), 1);
	
	sleep_until(b_elevator_banks_blip == TRUE);
	thread (f_objective_blip( DEF_R_OBJECTIVE_GOTO_ELEVATOR, TRUE, TRUE ));
	
	sleep_until(b_get_objective_beacon == TRUE);
	thread (f_objective_set( DEF_R_OBJECTIVE_FIND_MISSILE_CONTROLS, TRUE, FALSE, TRUE, FALSE ));

	objectives_finish(0);
	objectives_show_up_to(1);
		
	// got near elevator
	sleep_until(LevelEventStatus("Got near elevator"), 1);
	thread(f_objective_blip( DEF_R_OBJECTIVE_GOTO_ELEVATOR, FALSE, TRUE ));
end

script dormant f_blip_override_panel()
	sleep_until(LevelEventStatus("obs waypoint set"), 1);

	if (navpoint_using_improved_navpoints() == FALSE) then
		sleep_s (10);
	else // sleep to ensure there is a bit of time to activate the power group
		sleep_s (1);
	end
			
	if (device_get_power(obs_plinth_control) == 1) then
		thread (f_mission_objective_blip( DEF_R_OBJECTIVE_ACTIVATE_BLAST_DOOR, TRUE));
	end		
end


script static void disregard_player()

	player_action_test_reset();
	sleep_until (volume_test_players (tv_obs_ai_disregard) or player_action_test_grenade_trigger() or player_action_test_primary_trigger()
							or ai_living_count(sq_obs_start_elite_01) < 1 or ai_combat_status(sq_obs_start_elite_01) >= 7, 1);
	
	ai_set_blind(sq_obs_start_grunt_02, FALSE);
	ai_set_blind(sq_obs_start_grunt_03_left, FALSE);
	ai_set_blind(sq_obs_start_grunt_04_left, FALSE);
	ai_set_deaf (sq_obs_start_elite_01, FALSE);
	wake(f_surprise_grunts);
end

//================================================================================================
//OBSERVATORY
//================================================================================================

/*script static void f_activator_get( object trigger, unit activator )
	g_ics_player = activator;
end*/

//Grunts puppeteer exit animation
script dormant f_surprise_grunts()
	print("**Surprise!!**");
	custom_animation(sq_obs_start_grunt_02.spawn_points_0, "objects\characters\storm_grunt\storm_grunt.model_animation_graph", "combat:pistol:surprise_front", true);
	sleep(15);
	custom_animation(sq_obs_start_grunt_02.spawn_points_3, "objects\characters\storm_grunt\storm_grunt.model_animation_graph", "combat:pistol:surprise_front", true);
	sleep(5);
	custom_animation(sq_obs_start_grunt_03_left.spawn_points_2, "objects\characters\storm_grunt\storm_grunt.model_animation_graph", "combat:pistol:surprise_front", true);
		sleep(10);
	custom_animation(sq_obs_start_grunt_04_left.spawn_points_1, "objects\characters\storm_grunt\storm_grunt.model_animation_graph", "combat:pistol:surprise_front", true);
end

script dormant f_obs_plinth_02()
	//Objective blip is in dialog
	
	//game_save();
	
	wake(f_dialog_observatory_start);
	//wake(f_dialog_observatory_start_optional);
	
	sleep_until(LevelEventStatus("obs waypoint set"), 1);
	
	sleep_s(0.3);
	device_group_set_immediate (obs_power_group, 1);
	sleep(1);
	sleep_until (device_get_position(obs_plinth_control) != 0, 1);

	device_group_set_immediate (obs_power_group, 0);
	
	NotifyLevel("override switch hit");
	
	//g_ics_player = player0; // HACK - eventually this should be set to the player that pressed the button
	local long show_button=pup_play_show(obs_button);
	sleep_until(not pup_is_playing(show_button),1);

	wake(f_obs_blast_shields_open);

//	sleep_forever(f_dialog_observatory_start_optional);
		
	S_OBS_OBJ_CON = DEF_OBS_OBJ_DOOR_OPENING;

	// PiP
	//hud_play_pip("010_ob_deck_pip");
	
	wake(f_move_close_ship_obs);
	g_ObsShipsShow= pup_play_show(obs_ships);	
	g_DebrisShow= pup_play_show(debris_show);	
	local long show = pup_play_show(observe);
	sleep_until(not pup_is_playing(show),1);
	
	NotifyLevel("landers broken through");
	
	pup_play_show(observe_left);
	
	show = pup_play_show(observe_right);
	
	sleep_until(not pup_is_playing(show),1);
	S_OBS_OBJ_CON = DEF_OBS_OBJ_WAVE_01;
	wake (f_lander_elite_check);
	
	// optional if player leaves during combat
	wake(f_dialog_observatory_try_to_leave_optional);
end

script dormant f_move_close_ship_obs()
		object_cinematic_visibility( close_cruiser, TRUE );
		object_move_to_point (close_cruiser, 500, ps_close_cruiser.p0);
end

script dormant f_obs_cov_ai_02()
	sleep_until (S_OBS_OBJ_CON == DEF_OBS_OBJ_WAVE_01, 1);
		if ( L_checkpoint_combat_ID_observatory == 0 ) then
		L_checkpoint_combat_ID_observatory = f_combat_checkpoint_add( obs_group, -1, TRUE, -1, 10, -1 );
	end
	
	//music
	thread(f_music_observatory_first_pod_landed());
	ai_object_enable_grenade_attack(player0, FALSE);
	ai_grenades(FALSE);
	thread(m10_observ_stragglers());
	wake(m10_observ_atmosphere_breach);
	
	sleep_until (ai_living_count(obs_lander_ai) > 0);
	sleep_until (ai_living_count (obs_lander_ai) <= 2);
	S_OBS_OBJ_CON = DEF_OBS_OBJ_ENCOUNTER_CLEANUP;
	sleep_until (ai_living_count (obs_lander_ai) == 0, 1);
	
	//music 
	thread(f_music_observatory_combat_finished());
	ai_object_enable_grenade_attack(player0, TRUE);
	ai_grenades(TRUE);
	sleep_s(1);
	S_OBS_OBJ_CON = DEF_OBS_OBJ_ELEVATOR_OPEN;
end

script dormant f_lander_elite_check()
	repeat 
	dprint("start elite living check");
		if (ai_living_count(sq_obs_right_elite) + ai_living_count(sq_obs_left_elite)) > 1 then
		dprint("equals 2");
		sleep_s(1);
		else
		S_OBS_LANDER_ELITE_COUNT = 1;
		dprint("set to 1");
		end
		sleep_s(1);
	until(S_OBS_LANDER_ELITE_COUNT == 1);

end

script dormant f_wave_1_timer()
	sleep_s(random_range(90, 110));
	//dprint("::: NEXT WAVE:::");
	S_OBS_WAVE_NEXT = 1;
end

script dormant f_wave_2_timer()
	sleep_s(random_range(80, 90));
	//dprint("::: NEXT WAVE:::");
	S_OBS_WAVE_NEXT = 2;
end


script dormant f_obs_maw()

	sleep_until(f_check_device_position(obs_fleet_drop_pod, 100, DEF_OBS_FLEET_FRAME_TOTAL), 1);
	//dprint("maw opening now");
	//maw_door->open();
	f_screenshake_ambient_pause( TRUE, FALSE, 0.0 );
	L_observatory_cruiser_rumble_ID = f_mission_screenshakes_rumble_low( 4.0 );
	//XXX NEED TO COME UP WITH SOLUTION TO SELL FUD MOVING INTO MAW

end

script dormant f_cov_ship_fly_over()
	sleep_until(f_check_device_position(obs_fleet_drop_pod, 400, DEF_OBS_FLEET_FRAME_TOTAL), 1);
	f_screenshake_event_med( 0.75, 1.25, 5.0, NONE );
end


//=================================================================================================
//STAGING
//=================================================================================================

//ELEVATOR
script dormant f_elevator_activate()
	dprint("Elevator on");
    wake(m10_observatory_get_objective_beacon_main);
    wake(m10_observatory_get_objective_beacon_alt);
	
	//dprint("sleep until door and elevator are valid");
	sleep_until( object_valid(elevator_1_platform) and object_valid(door_elevator_1_top), 1 );
	//dprint("prep elevator");

	// setup elevator door
	dprint("set device position track");
	device_set_position_track( door_elevator_1_top, 'any:idle', 0 );
	device_set_position(door_elevator_1_top, 0);
	
	//dprint("disable kill volume and set cinematic visibility");
	kill_volume_disable(kill_observatory);
	object_cinematic_visibility( elevator_1_platform, TRUE );	
	object_set_always_active( elevator_1_platform, TRUE );
	
	//dprint("blip door");
	sleep_s(12);
	NotifyLevel("Get to the Elevator");

	sleep_until (volume_test_players (tv_enter_obs));

	//game_save();
	
	NotifyLevel("Got near elevator");

	// open elevator door
	f_elevator_open();	
end

script static void f_elevator_check_reset() 
	sleep_until(volume_test_players(tv_observatory_elevator), 1);
	f_elevator_close();
	sleep_until(device_get_position(door_elevator_1_top) == 0);

	wake(f_blip_post_elevator_breadcrumbs);

	if volume_test_players (tv_observatory_elevator) then
		dprint("elevator ready to go");
		wake(f_elevator_go);
	else
		f_elevator_open(); 
	end
end

script dormant f_blip_post_elevator_breadcrumbs()
	sleep_until (volume_test_players(tv_post_elevator), 1);
	f_blip_position_breadcrumbs(-12.49, -15.00, -0.99, "post_elevator_blast_door", "default");

	sleep_until(objects_distance_to_position(players(), -12.49, -15.00, -0.99) < 1.5);
	f_unblip_position_breadcrumbs("post_elevator_blast_door");
end

script static void f_elevator_open()
	
	sleep_until(device_get_position(door_elevator_1_top) == 0, 1);
	NotifyLevel("Got in elevator");
	thread(fx_elevator_flares());
	// open the doors
	sfx_elevator_double_door(door_elevator_1_top); // play door open sound
	device_animate_position(door_elevator_1_top, 1, 2, 0.1, 0.1, FALSE);
	
	// wait for the doors to get open completely
	sleep_until(device_get_position(door_elevator_1_top) == 1, 1);
	thread(f_elevator_check_reset());
	kill_script(m10_objective_6_nudge);
		sleep_forever(m10_objective_6_nudge);
		b_objective_6_complete = TRUE;
end

script static void f_elevator_close()
	dprint("F_ELEVATOR_CLOSE");

	// turn off puppet shows that aren't visible anymore
	if g_ObsShipsShow>0 then
		pup_stop_show(g_ObsShipsShow);
		g_ObsShipsShow = 0;
	end
	if g_DebrisShow>0 then
		pup_stop_show(g_DebrisShow);
		g_DebrisShow = 0;
	end
	
	// make sure it's all the way open before proceeding
	sleep_until(device_get_position(door_elevator_1_top) == 1, 1); 
	sleep_s(2);
	dprint("sleep 2");

	// close the top door
	sfx_elevator_double_door(door_elevator_1_top); // play door sound	
	device_animate_position(door_elevator_1_top, 0, 2, 0.1, 0.1, FALSE);
	
	dprint("door closed unblip object");
	thread(f_objective_blip( DEF_R_OBJECTIVE_GOTO_ELEVATOR, FALSE, TRUE ));
	f_unblip_object (elevator_1_platform);
end

script dormant f_elevator_go()
		dprint("F_ELEVATOR_GO");
		sleep_until(device_get_position(door_elevator_1_top) == 0, 1);	
		//fx_camera_pause( TRUE );
		sleep(1);

		// Move the elevator down
		// thread(sfx_m10_elevator_platform_start( NONE )); // start the motor sound- do we want to put the sound on the platform?
		// sfx_elevator_door_open( NONE ); // play sound for the inner door - TODO: need marker
		local long ele_show = pup_play_show(obs_elevator_down);
		
		// elevator_1_platform->down();		
		kill_volume_disable(kill_observatory);
		//fx_camera_pause( FALSE );
		sleep(80);
		volume_teleport_players_not_inside(tv_observatory_elevator, flag_obs_ele_tp) ;
		thread(f_objective_blip( DEF_R_OBJECTIVE_GOTO_ELEVATOR, FALSE, TRUE ));
		// Wait for it to descend
		// dprint("sleep_until Position 0.7");
		// sleep_until(device_get_position(elevator_1_platform) >= 0.7, 1);
		sleep_until(not pup_is_playing(ele_show));
		thread(f_objective_blip( DEF_R_OBJECTIVE_GOTO_ELEVATOR, FALSE, TRUE ));
		// thread(sfx_m10_elevator_platform_stop()); // stop the motor sound
		sleep_s(1);
		dprint("check");
		
		// Open the bottom doors
		// wake(f_elevator_door_bottom);
		sfx_elevator_double_door(door_elevator_1_bottom); // play door sound
		device_animate_position(door_elevator_1_bottom, 1, 2, 0, 0, FALSE);
end


//DOORS
/*
script dormant f_observatory_door_1()
	//dprint("Observatory door should open");
	//door_observatory_1->open_default();
	door_observatory_1->auto_trigger_open(tv_enter_obs, TRUE, TRUE, FALSE);
end
 */

/* script dormant f_elevator_door_bottom()
	wake (f_flank_main);
	game_save();
	
	dprint("F_ELEVATOR_DOOR_BOTTOM");
	sleep_until( object_valid(elevator_1_platform), 1);
	
	// dprint("object is moving down");
	// elevator_1_platform->door_open_bottom();
	// dprint("sleep to 1");
	// sleep_until(device_get_position(elevator_1_platform) == 1, 1);
	// dprint("prep door");
	// device_set_position_track( door_elevator_1_bottom, 'any:idle', 0 );
	// dprint("door set");
	// device_set_position(door_elevator_1_bottom, 0);
	
	sleep(1);
	device_animate_position(door_elevator_1_bottom, 1, 2, 0, 0, FALSE);
end */

script static void f_break( object_name window, object_name shield, object_name vortex_1, object_name vortex_2, object_name vortex_3, object_name vortex_4)
	//DESTROY WINDOW
	object_destroy (window);
	thread(f_obs_destroy_window(window));
	thread(f_obs_air_escape(window));
//xxxxx
	thread(f_screenshake_ambient_pause( TRUE, TRUE, 0.0 ));
	thread( f_screenshake_event_med(2.5, 1.0, 1.5, NONE) );  // XXX eventually switch to be location based
	thread(f_screenshake_ambient_pause( FALSE, FALSE, 0.0 ));
	//GRAVITY LOW
	NotifyLevel("window broken");
	//f_gravity_set( R_gravity_cryo );
	//AIR ESCAPE
	//sleep_s(0.1);
	
	sleep(5);
	//VORTEX CREATE
	object_create (vortex_1);
	object_create (vortex_3);
	object_create (vortex_4);
	sleep_s(real_random_range(1.75, 2));
	object_create (vortex_2);
	sleep_s(real_random_range(0.8, 1.0));
	object_destroy (vortex_1);
	object_destroy (vortex_2);
	object_destroy (vortex_3);
	object_destroy (vortex_4);
	thread(f_obs_shield_activate(window));
	f_gravity_set( R_gravity_default );	
end 

//XXX CAN PROBABLY STILL OPTIMIZE THIS SEQUENCE
script static void f_obs_destroy_window(object_name window)

		if window == obs_window_side_right then
			dprint("WINDOW RIGHT BREAK EFFECT");
			effect_new( environments\solo\m10_crash\fx\podbreak\pod_glass_break_0g_02.effect, fx_pod_debris02  );	
		else
			dprint("WINDOW LEFT BREAK EFFECT");
			effect_new( environments\solo\m10_crash\fx\podbreak\pod_glass_break_0g_02.effect, fx_pod_debris03  );	
		end
end

script static void f_obs_air_escape(object_name window)

		if window == obs_window_side_right then
			dprint("WINDOW RIGHT SUCK EFFECT");
			effect_new( environments\solo\m10_crash\fx\podbreak\pod_glass_escape_0g_02.effect, fx_air_escape02 );
		else
			dprint("WINDOW LEFT SUCK EFFECT");
			effect_new( environments\solo\m10_crash\fx\podbreak\pod_glass_escape_0g_02.effect, fx_air_escape03 );
		end
end

script static void f_obs_shield_activate(object_name window)

		if window == obs_window_side_right then
			//dprint("WINDOW RIGHT SHIELD EFFECT");
			thread(fx_shield_tube_rt_on());
		else
		//dprint("WINDOW LEFT SHIELD EFFECT");
		thread(fx_shield_tube_lf_on());
		end
end 
/////////////////////////////////////////////////////////

script dormant f_obs_blast_shields_open()
	//dprint("observatory blast shields openening");


//	object_create_folder_anew(dm_observatory);
	object_create_folder_anew(dc_observatory);
	sleep(1);
	thread(f_obs_light());

	//thread(obs_blast_shield->open());
	//thread(f_sfx_observatory_visor());
	//music
	NotifyLevel("music observatory doors opening");
	thread(f_music_observatory_doors_opening());
	kill_script(f_dialog_m10_objective_4);
	kill_script(m10_objective_4_nudge);
	sleep_forever(m10_objective_4_nudge);
end


/*script dormant f_wr_obs_main()

	sleep_until (S_OBS_OBJ_CON >= DEF_OBS_OBJ_START, 1);
	thread(wr_obs_11->auto_distance_open( -2, FALSE ));
	thread(wr_obs_12->auto_distance_open( -2, FALSE ));

	// Right Weapons odd
	dprint("right prep 01");
	

	
	
	sleep_until( object_valid(wr_obs_3), 1 );
	wr_obs_3->chain_parent_open( wr_obs_1, wr_obs_1->close_position(), wr_obs_3->S_chain_state_greater() );
	sleep_until( object_valid(wr_obs_5), 1 );
	dprint("right prep 02");
	wr_obs_5->chain_parent_open( wr_obs_3, wr_obs_3->close_position(), wr_obs_5->S_chain_state_greater() );
	dprint("right prep 03");
	sleep_until( object_valid(wr_obs_7), 1 );
	wr_obs_7->chain_parent_open( wr_obs_5, wr_obs_5->close_position(), wr_obs_7->S_chain_state_greater() );
	dprint("right preped and gtg");
	//Middle
	sleep_until( object_valid(wr_obs_13), 1 );
	wr_obs_13->chain_parent_open( wr_obs_7, wr_obs_7->close_position(), wr_obs_13->S_chain_state_greater() );
	dprint("middle prepped and gtg");
	//Left Weapons even
	sleep_until( object_valid(wr_obs_4), 1 );
	wr_obs_4->chain_parent_open( wr_obs_2, wr_obs_2->close_position(), wr_obs_4->S_chain_state_greater() );
	dprint("left prep 01");
	sleep_until( object_valid(wr_obs_6), 1 );
	wr_obs_6->chain_parent_open( wr_obs_4, wr_obs_4->close_position(), wr_obs_6->S_chain_state_greater() );
	dprint("left prep 02");
	sleep_until( object_valid(wr_obs_8), 1 );
	wr_obs_8->chain_parent_open( wr_obs_6, wr_obs_6->close_position(), wr_obs_8->S_chain_state_greater() );
	dprint("left prep 03");
	//sleep_until (S_OBS_OBJ_CON == DEF_OBS_OBJ_PODS_LANDED, 1);	
	dprint("all weapon racks prepped and gtg wait until grav == 0");
	sleep_until(LevelEventStatus("landers broken through"), 1);
	//sleep_s(1.5);
	sleep_until( object_valid(wr_obs_1), 1 );
	thread(wr_obs_1->open_default());
	dprint("raise 1");
	sleep_until( object_valid(wr_obs_2), 1 );
	thread(wr_obs_2->open_default());
	dprint("raise 2");
end*/

script dormant f_grenade_tutorial()
	thread(f_grenade_check(player0));
	thread(f_grenade_check(player1));
	thread(f_grenade_check(player2));
	thread(f_grenade_check(player3));
end

script static void f_grenade_check(player player_num)
	//dprint("player HAS grenade run grenade tutorial");
	
	// HAX: Remove for GI demo
	//sleep_until (unit_get_total_grenade_count(player_num) > 0, 1);
	//chud_show_screen_training (player_num, "training_throwgrenade");
	sleep_s (3);
	//chud_show_screen_training (player_num, "");
end

//LIGHTS
script static void light_on_gradual()
	print("::: start light function :::");
	
	static real increment = 0.01;
	
	// Turn on direct lights
	// [mboulton 10/25/2011] Note that 12_observatory is actually bsp06, hence the bsp06 post-fix
	repeat
		set_lightmap_direct_scalar_bsp(6, get_lightmap_direct_scalar_bsp(6) + increment);
		set_lightmap_indirect_scalar_bsp(6, get_lightmap_direct_scalar_bsp(6));
	until (get_lightmap_direct_scalar_bsp(6) >= 2.0, 1);
	set_lightmap_direct_scalar_bsp(6, 2.0);
	set_lightmap_indirect_scalar_bsp(6, 2.0);

	
		
	// Wait a few secs
	sleep(60);

	
	thread(sfx_observatory_visor());
		
	//obs_blast_shield->open();
end

script static void light_off_gradual()
	static real decrement = 0.04;
	static real minValue = 0.05;
	
	repeat
		set_lightmap_indirect_scalar_bsp(6, get_lightmap_indirect_scalar_bsp(6) - decrement);
		set_lightmap_direct_scalar_bsp(6, get_lightmap_direct_scalar_bsp(6) - decrement);
	until (get_lightmap_direct_scalar_bsp(6) <= minValue, 1);
	set_lightmap_indirect_scalar_bsp(6, minValue);
	set_lightmap_direct_scalar_bsp(6, minValue);
end
	
script static void f_windows_close()
	obs_blast_shield->close();
	thread(light_off_gradual());
end
	
script static void f_windows_open()
	thread(light_on_gradual());
end

script dormant f_clean_up_obs_crates()
object_destroy(cr_obs_01);
object_destroy(cr_obs_02);
object_destroy(cr_obs_03);
object_destroy(cr_obs_04);
object_destroy(cr_obs_05);
object_destroy(cr_obs_06);
object_destroy(cr_obs_07);
object_destroy(cr_obs_08);
object_destroy(cr_obs_09);
object_destroy(cr_obs_10);
object_destroy(cr_obs_11);
object_destroy(cr_obs_12);
object_destroy(cr_obs_13);
object_destroy(cr_obs_14);
object_destroy(cr_obs_15);
object_destroy(cr_obs_16);
object_destroy(cr_obs_17);
object_destroy(cr_obs_18);
object_destroy(cr_obs_19);
object_destroy(cr_obs_20);
object_destroy(cr_obs_21);
object_destroy(cr_obs_22);
object_destroy(cr_obs_23);
object_destroy(cr_obs_24);
object_destroy(cr_obs_25);
object_destroy(cr_obs_26);
object_destroy(cr_obs_27);
object_destroy(cr_obs_28);
object_destroy(cr_obs_29);
object_destroy(cr_obs_30);
object_destroy(cr_obs_31);
object_destroy(cr_obs_32);
object_destroy(cr_obs_33);
object_destroy(cr_obs_34);
object_destroy(cr_obs_35);
object_destroy(cr_obs_36);
object_destroy(cr_obs_37);
object_destroy(cr_obs_38);
object_destroy(cr_obs_39);
object_destroy(cr_obs_40);

end


//xxx for fx


	script static void fx_fleet()
	//thread(fx_pods());
	thread(obs_blast_shield->open());
	sleep_s(1);
	object_cinematic_visibility( obs_fleet_background, TRUE );
	object_cinematic_visibility( obs_fleet_debris, TRUE );
	object_cinematic_visibility( obs_fleet_crash, TRUE );
	object_cinematic_visibility( obs_fleet_drop_pod, TRUE );
	//dprint("launch covenant fleet animation");
	thread(obs_fleet_background->launch());
	//dprint("obs_fleet_background");
	thread(obs_fleet_debris->launch());
	//dprint("obs_fleet_debris->launch()");
	thread(obs_fleet_crash->launch());
	//dprint("obs_fleet_crash->launch()");
	thread(obs_fleet_drop_pod->launch());
	//dprint("obs_fleet_drop_pod->launch()");
	thread(ambient_debris->start());
	end
	
	/*script static void fx_pods()
	//dprint("pods attached to device machine");
	objects_attach( obs_fleet_drop_pod, "m_obs_grunt_drop_pod_01", obs_pod_1, "chud_nav_point");
	objects_attach( obs_fleet_drop_pod, "m_obs_grunt_drop_pod_02", obs_pod_2, "chud_nav_point");
	objects_attach( obs_fleet_drop_pod, "m_beacon_drop_pod_01", beac_pod_1, "fx_impact");
	objects_attach( obs_fleet_drop_pod, "m_beacon_drop_pod_02", beac_pod_2, "fx_impact");
	objects_attach( obs_fleet_drop_pod, "m_beacon_drop_pod_03", beac_pod_3, "fx_impact");
	objects_attach( obs_fleet_drop_pod, "m_beacon_drop_pod_04", beac_pod_4, "fx_impact");
	objects_attach( obs_fleet_drop_pod, "m_beacon_drop_pod_05", beac_pod_5, "fx_impact");
	objects_attach( obs_fleet_drop_pod, "m_beacon_drop_pod_06", beac_pod_6, "fx_impact");
end*/

	script static void fx_fleet_reset()
	thread(obs_blast_shield->close());
	sleep_s(1);
	//dprint("launch covenant fleet animation");
	thread(obs_fleet_background->reset());
	//dprint("obs_fleet_background");
	thread(obs_fleet_debris->reset());
	//dprint("obs_fleet_debris->launch()");
	thread(obs_fleet_crash->reset());
	//dprint("obs_fleet_crash->launch()");
	thread(obs_fleet_drop_pod->reset());
	//dprint("obs_fleet_drop_pod->launch()");
	end

script command_script cs_grunt_pod_exit_01()

cs_custom_animation (objects\characters\storm_grunt\storm_grunt.model_animation_graph, "m10_2grunts_exit_escpod_grua", TRUE);
end 

script command_script cs_grunt_pod_exit_02()
cs_custom_animation (objects\characters\storm_grunt\storm_grunt.model_animation_graph, "m10_2grunts_exit_escpod_grub", TRUE);
end 

script command_script cs_grunt_pod_exit_03()
cs_custom_animation (objects\characters\storm_grunt\storm_grunt.model_animation_graph, "m10_2grunts_exit_escpod_gruc", TRUE);
end 

script dormant f_temp_1()
	
	ai_place (ai_observatory_init);
	ai_grenades(FALSE);
	sleep_until(ai_combat_status(ai_observatory_init) > 7 or ai_living_count(ai_observatory_init) < 1);
	S_OBS_OBJ_CON = DEF_OBS_OBJ_ENCOUNTER_01;
	
	sleep_until(ai_living_count(ai_observatory_init) < 1);
	sleep_s(2);
	print("hello world");
 	wake (f_lander_elite_check);
	ai_place (obs_lander_ai);
	/*wr_obs_1->open_default();
	wr_obs_2->open_default();
	wr_obs_3->open_default();
	wr_obs_4->open_default();
	wr_obs_5->open_default();
	wr_obs_6->open_default();
	wr_obs_7->open_default();
	wr_obs_8->open_default();
	wr_obs_11->open_default();
	wr_obs_12->open_default();*/
	

end
script static void f_grunt_counter()
	local short  s_grunt_count = 0;

	repeat
		sleep_s(1);
		s_grunt_count = s_grunt_count + 1;
		//print("living grunt check");
	until(s_grunt_count == 60);
	
	if (ai_living_count(obs_grunt_squads) != 0) then
			 wake(f_dialog_m10_observ_stragglers);
	end

end

script dormant f_grunt_living_check()
	sleep_until(ai_living_count(obs_grunt_squads) <= 3);
	thread(f_grunt_counter());
end

script static void f_elite_left_no_melee()
	object_set_melee_attack_inhibited((ai_get_object(sq_obs_left_elite)),false);
end

script static void f_elite_right_no_melee()
	object_set_melee_attack_inhibited((ai_get_object(sq_obs_right_elite)),false);
end

script static void f_elite_left_readd_melee()
	object_set_melee_attack_inhibited((ai_get_object(sq_obs_left_elite)), TRUE);
end

script static void f_elite_right_readd_melee()
	object_set_melee_attack_inhibited((ai_get_object(sq_obs_right_elite)), TRUE);
end

script static void f_obs_light()
	print("::light is increasing::");
	sleep(85);
	interpolator_start ('observatory');
end

// --- End m10_observatory.hsc ---

// --- Begin m10_observatory_covenant_fleet.hsc ---

script dormant f_obs_covenant_fleet_02()
		object_cinematic_visibility( obs_fleet_background, TRUE );
		object_cinematic_visibility( obs_fleet_debris, TRUE );
		object_cinematic_visibility( obs_fleet_crash, TRUE );
		object_cinematic_visibility( obs_fleet_drop_pod, TRUE );
		wake(f_attach_fleet);
end

script dormant f_obs_covenant_fleet()
		object_cinematic_visibility( obs_fleet_background, TRUE );
		object_cinematic_visibility( obs_fleet_debris, TRUE );
		object_cinematic_visibility( obs_fleet_crash, TRUE );
		object_cinematic_visibility( obs_fleet_drop_pod, TRUE );
		wake(f_attach_fleet);
		sleep_until(f_check_device_position(obs_blast_shield, 5, DEF_OBS_WINDOW_FRAME_TOTAL), 1 );
		wake(f_cov_ship_fly_over);
		//dprint("launch covenant fleet animation");
		thread(obs_fleet_background->launch());
		//dprint("obs_fleet_background");
		thread(obs_fleet_debris->launch());
		//dprint("obs_fleet_debris->launch()");
		thread(obs_fleet_crash->launch());
		//dprint("obs_fleet_crash->launch()");
		thread(obs_fleet_drop_pod->launch());
		//dprint("obs_fleet_drop_pod->launch()");
		//wake(fx_drop_pods);
		//wake(f_obs_covenant_fleet_clean_up);
end


script dormant f_attach_fleet()
	f_spawn_folder_sc_observatory_fleet();
	//object_create_folder_anew(sc_observatory_fleet);
	objects_attach( obs_fleet_background, "cov_cruiser_01", obs_cruiser_01, "m_attach");
	objects_attach( obs_fleet_background, "cov_cruiser_02", obs_cruiser_02, "m_attach");
	objects_attach( obs_fleet_background, "cov_cruiser_03", obs_cruiser_03, "m_attach");
	objects_attach( obs_fleet_background, "cov_cruiser_04", obs_cruiser_04, "m_attach");
	objects_attach( obs_fleet_background, "cov_cruiser_05", obs_cruiser_05, "m_attach");
	objects_attach( obs_fleet_background, "cov_cruiser_06", obs_cruiser_06, "m_attach");
	
	//objects_attach( obs_fleet_background, "phantom_1_a", obs_phantom_01, "");
	//objects_attach( obs_fleet_background, "phantom_1_b", obs_phantom_02, "");
	//objects_attach( obs_fleet_background, "phantom_1_c", obs_phantom_03, "");
	//objects_attach( obs_fleet_background, "phantom_2_a", obs_phantom_04, "");
	//objects_attach( obs_fleet_background, "phantom_2_b", obs_phantom_05, "");
	//objects_attach( obs_fleet_background, "phantom_2_c", obs_phantom_06, "");
	//objects_attach( obs_fleet_background, "phantom_3_a", obs_phantom_07, "");
	//objects_attach( obs_fleet_background, "phantom_4_a", obs_phantom_08, "");
	//objects_attach( obs_fleet_background, "phantom_5_a", obs_phantom_09, "");
	//objects_attach( obs_fleet_background, "phantom_6_a", obs_phantom_10, "");
	//objects_attach( obs_fleet_background, "phantom_7_a", obs_phantom_11, "");
	
end

/*script dormant f_attach_pods()
	//dprint("pods attached to device machine");
	objects_attach( obs_fleet_drop_pod, "m_obs_grunt_drop_pod_01", obs_pod_1, "sync_action");
	objects_attach( obs_fleet_drop_pod, "m_obs_grunt_drop_pod_02", obs_pod_2, "sync_action");
	objects_attach( obs_fleet_drop_pod, "m_beacon_drop_pod_01", beac_pod_1, "fx_impact");
	objects_attach( obs_fleet_drop_pod, "m_beacon_drop_pod_02", beac_pod_2, "fx_impact");
	objects_attach( obs_fleet_drop_pod, "m_beacon_drop_pod_03", beac_pod_3, "fx_impact");
	objects_attach( obs_fleet_drop_pod, "m_beacon_drop_pod_04", beac_pod_4, "fx_impact");
	objects_attach( obs_fleet_drop_pod, "m_beacon_drop_pod_05", beac_pod_5, "fx_impact");
	objects_attach( obs_fleet_drop_pod, "m_beacon_drop_pod_06", beac_pod_6, "fx_impact");
end*/

//script dormant f_obs_covenant_fleet_clean_up()
//	sleep_until(device_get_position(obs_fleet_background) == 1);
//	object_destroy(obs_fleet_background);
//	sleep_until(device_get_position(obs_fleet_debris) == 1);
//	object_destroy(obs_fleet_debris);
//	sleep_until(device_get_position(obs_fleet_crash) == 1);
//	object_destroy(obs_fleet_crash);
//	//sleep_until(device_get_position(obs_fleet_drop_pod) == 1);
//	//objects_detach(obs_fleet_drop_pod, beac_pod_1 );
//	//objects_detach(obs_fleet_drop_pod, beac_pod_2 );
//	//objects_detach(obs_fleet_drop_pod, beac_pod_3 );
//	//objects_detach(obs_fleet_drop_pod, beac_pod_4 );
//	//objects_detach(obs_fleet_drop_pod, beac_pod_5 );
//	//objects_detach(obs_fleet_drop_pod, beac_pod_6 );
//	//object_destroy(obs_fleet_drop_pod);
////	object_destroy(maw_door);
//	object_destroy(ambient_debris);
//	f_destroy_folder_sc_observatory_fleet();
//end


script static void f_spawn_folder_sc_observatory_fleet()
object_create_anew(obs_cruiser_01);
object_create_anew(obs_cruiser_02);
object_create_anew(obs_cruiser_03);
object_create_anew(obs_cruiser_04);
object_create_anew(obs_cruiser_05);
object_create_anew(obs_cruiser_06);
//object_create_anew(obs_phantom_01);
//object_create_anew(obs_phantom_02);
//object_create_anew(obs_phantom_03);
//object_create_anew(obs_phantom_04);
//object_create_anew(obs_phantom_05);
//object_create_anew(obs_phantom_06);
//object_create_anew(obs_phantom_07);
//object_create_anew(obs_phantom_08);
//object_create_anew(obs_phantom_09);
//object_create_anew(obs_phantom_10);
//object_create_anew(obs_phantom_11);
end

//script static void f_destroy_folder_sc_observatory_fleet()
//object_destroy(obs_cruiser_01);
//object_destroy(obs_cruiser_02);
//object_destroy(obs_cruiser_03);
//object_destroy(obs_cruiser_04);
//object_destroy(obs_cruiser_05);
//object_destroy(obs_cruiser_06);
//object_destroy(obs_phantom_01);
//object_destroy(obs_phantom_02);
//object_destroy(obs_phantom_03);
//object_destroy(obs_phantom_04);
//object_destroy(obs_phantom_05);
//object_destroy(obs_phantom_06);
//object_destroy(obs_phantom_07);
//object_destroy(obs_phantom_08);
//object_destroy(obs_phantom_09);
//object_destroy(obs_phantom_10);
//object_destroy(obs_phantom_11);
//end

/*script dormant fx_drop_pods()
sleep_until(f_check_device_position(obs_fleet_drop_pod, 550, DEF_OBS_FLEET_FRAME_TOTAL), 1);
//dprint(":::FIRE FX POD 01:::");
sound_impulse_start( sound\environments\solo\m010\scripted\events\m10_cruiser_launch_pod, NONE, 1 );
wake(fx_beac_pod_01);
sleep_until(f_check_device_position(obs_fleet_drop_pod, 602, DEF_OBS_FLEET_FRAME_TOTAL), 1);
//dprint(":::FIRE FX POD 02:::");
wake(fx_beac_pod_02);
sleep_until(f_check_device_position(obs_fleet_drop_pod, 665, DEF_OBS_FLEET_FRAME_TOTAL), 1);
//dprint(":::FIRE FX POD 03:::");
wake(fx_beac_pod_03);
sleep_until(f_check_device_position(obs_fleet_drop_pod, 727, DEF_OBS_FLEET_FRAME_TOTAL), 1);
//dprint(":::FIRE FX POD 04:::");
wake(fx_beac_pod_04);
sleep_until(f_check_device_position(obs_fleet_drop_pod, 790, DEF_OBS_FLEET_FRAME_TOTAL), 1);
//dprint(":::FIRE FX POD 05:::");
wake(fx_beac_pod_05);
sleep_until(f_check_device_position(obs_fleet_drop_pod, 835, DEF_OBS_FLEET_FRAME_TOTAL), 1);
//dprint(":::FIRE FX POD 06:::");
sound_impulse_start( sound\environments\solo\m010\scripted\events\m10_cruiser_launch_pod, NONE, 1 );
wake(fx_obs_pod_01);
sleep_until(f_check_device_position(obs_fleet_drop_pod, 837, DEF_OBS_FLEET_FRAME_TOTAL), 1);
//dprint(":::FIRE FX POD 07:::");
wake(fx_obs_pod_02);
end*/

/*script dormant fx_obs_pod_01()
//shoot
fx_droppod_cov_elite_launch(obs_pod_1, TRUE);
fx_droppod_cov_elite_trail(obs_pod_1, TRUE);
sleep(15);
fx_droppod_cov_elite_launch(obs_pod_1, FALSE);
//land
sleep_until(f_check_device_position(obs_fleet_drop_pod, 950, DEF_OBS_FLEET_FRAME_TOTAL), 1);
fx_droppod_cov_elite_trail(obs_pod_1, FALSE);
fx_droppod_cov_elite_impact(obs_pod_1, TRUE);
sleep_s(2);
fx_droppod_cov_elite_impact(obs_pod_1, FALSE);
end*/

/*script dormant fx_obs_pod_02()
//shoot
fx_droppod_cov_elite_launch(obs_pod_2, TRUE);
fx_droppod_cov_elite_trail(obs_pod_2, TRUE);
sleep(15);
//land
sleep_until(f_check_device_position(obs_fleet_drop_pod, 950, DEF_OBS_FLEET_FRAME_TOTAL), 1);
fx_droppod_cov_elite_trail(obs_pod_2, FALSE);
fx_droppod_cov_elite_impact(obs_pod_2, TRUE);
sleep_s(2);
fx_droppod_cov_elite_impact(obs_pod_2, FALSE);
end

script dormant fx_beac_pod_01()
//shoot
fx_droppod_cov_squad_launch(beac_pod_1, TRUE);
fx_droppod_cov_squad_trail(beac_pod_1, TRUE);
sleep(15);
fx_droppod_cov_squad_launch(beac_pod_1, FALSE);
//land
sleep_until(f_check_device_position(obs_fleet_drop_pod, 580, DEF_OBS_FLEET_FRAME_TOTAL), 1);
fx_droppod_cov_squad_trail(beac_pod_1, FALSE);
fx_droppod_cov_squad_impact(beac_pod_1, TRUE);
sleep_s(1);
fx_droppod_cov_squad_impact(beac_pod_1, FALSE);
end

script dormant fx_beac_pod_02()
//shoot
fx_droppod_cov_squad_launch(beac_pod_2, TRUE);
fx_droppod_cov_squad_trail(beac_pod_2, TRUE);
sleep(15);
fx_droppod_cov_squad_launch(beac_pod_2, FALSE);
//land
sleep_until(f_check_device_position(obs_fleet_drop_pod, 632, DEF_OBS_FLEET_FRAME_TOTAL), 1);
fx_droppod_cov_squad_trail(beac_pod_2, FALSE);
fx_droppod_cov_squad_impact(beac_pod_2, TRUE);
sleep_s(2);
fx_droppod_cov_squad_impact(beac_pod_2, FALSE);
end

script dormant fx_beac_pod_03()
//shoot
fx_droppod_cov_squad_launch(beac_pod_3, TRUE);
fx_droppod_cov_squad_trail(beac_pod_3, TRUE);
sleep(15);
fx_droppod_cov_squad_launch(beac_pod_3, FALSE);
//land
sleep_until(f_check_device_position(obs_fleet_drop_pod, 691, DEF_OBS_FLEET_FRAME_TOTAL), 1);
fx_droppod_cov_squad_trail(beac_pod_3, FALSE);
fx_droppod_cov_squad_impact(beac_pod_3, TRUE);
sleep_s(2);
fx_droppod_cov_squad_impact(beac_pod_3, FALSE);
end

script dormant fx_beac_pod_04()
//shoot
fx_droppod_cov_squad_launch(beac_pod_4, TRUE);
fx_droppod_cov_squad_trail(beac_pod_4, TRUE);
sleep(15);
fx_droppod_cov_squad_launch(beac_pod_4, FALSE);
//land
sleep_until(f_check_device_position(obs_fleet_drop_pod, 755, DEF_OBS_FLEET_FRAME_TOTAL), 1);
fx_droppod_cov_squad_trail(beac_pod_4, FALSE);
fx_droppod_cov_squad_impact(beac_pod_4, TRUE);
sleep_s(2);
fx_droppod_cov_squad_impact(beac_pod_4, FALSE);
end

script dormant fx_beac_pod_05()
//shoot
fx_droppod_cov_squad_launch(beac_pod_5, TRUE);
fx_droppod_cov_squad_trail(beac_pod_5, FALSE);
sleep(15);
fx_droppod_cov_squad_launch(beac_pod_5, TRUE);
//land
sleep_until(f_check_device_position(obs_fleet_drop_pod, 810, DEF_OBS_FLEET_FRAME_TOTAL), 1);
fx_droppod_cov_squad_trail(beac_pod_5, FALSE);
fx_droppod_cov_squad_impact(beac_pod_5, TRUE);
sleep_s(2);
fx_droppod_cov_squad_impact(beac_pod_5, FALSE);
end

/*
script dormant fx_beac_pod_06()
fx_ droppod_cov_squad_launch(beac_pod_6, b_active);
fx_ droppod_cov_squad_trail(beac_pod_6, b_active);
fx_ droppod_cov_squad_impact(beac_pod_6, b_active);
end
*/
// --- End m10_observatory_covenant_fleet.hsc ---

// --- Begin m10_observatory_phantom_lander.hsc ---


global boolean lander_01_wave_spawn = FALSE;
global boolean lander_02_wave_spawn = FALSE;

script static void phantom_lander(device phantom_lander)
/*
thread(spawn_lander(phantom_lander));
sleep_s(2);
//dprint("more enemies incoming");
	if phantom_lander == phantom_lander_01 then
		phantom_lander_01->launch();
		sleep_until(device_get_position(phantom_lander_01) >= 0.945, 1);
		f_break(obs_window_side_right, obs_window_side_right_shield, obs_vortex_right_1, obs_vortex_right_2, obs_vortex_right_3, obs_vortex_right_4 );
		f_lander_eject_door(lander_01_tube_01, lander_01_tube_01_cover);
	elseif phantom_lander == phantom_lander_02 then
		phantom_lander_02->launch();
		sleep_until(device_get_position(phantom_lander_02) >= 0.88, 1);
		f_break(obs_window_side_left, obs_window_side_left_shield, obs_vortex_left_1, obs_vortex_left_2, obs_vortex_left_3, obs_vortex_left_4 );
		f_lander_eject_door(lander_02_tube_02, lander_02_tube_02_cover);
	else
		dprint("::::INVALID DEVICE MACHINE SELECTION CHANGE NAME OR USE PHANTOM LANDER 01 OR PHANTOM LANDER 02:::");
	end
sleep_s(0.25);
f_spawn_lander_squad(phantom_lander);
//dprint("more enemies incoming");
//sleep_until(phantom_lander->check_open(), 1);
//spawn_lander_units(phantom_lander);
*/

dprint("nop");
end

script static void f_lander_eject_door(object_name lander_tube, object_name lander_door)

	objects_detach(lander_tube, lander_door);
	//dprint(":::OBJECT DETACH:::");
	object_set_physics(lander_door ,true);
	object_wake_physics(lander_door);
	if lander_door == lander_01_tube_01_cover then
		object_set_velocity ( lander_door, 1, random_range (-20, -30), 1);
	elseif lander_door == lander_02_tube_02_cover then
		object_set_velocity ( lander_door, 1, random_range (-20, -30), 1);
	else 
		dprint(":::: DOOR IS INVALID:::");
	end
	
	// Play detach sound
	sound_impulse_start("sound\environments\solo\m010\scripted\events\m10_phantom_lander_tube_cover_eject", lander_door, 1.0);
end

script static void prepare_lander1()
	object_cannot_take_damage(phantom_lander_01);
	//create crate
	object_create(lander_01_tube_01_cover);
	object_create(lander_01_tube_02_cover);
	//create scenery
	object_create(lander_01_tube_01);
	object_create(lander_01_tube_02);
	object_create(obs_lander_01);
	//attach
	objects_attach(phantom_lander_01, "m_attach_phantom", obs_lander_01, "");
	objects_attach(phantom_lander_01, "m_arm_attach_01", lander_01_tube_01, "lander_tube");
	objects_attach(phantom_lander_01, "m_arm_attach_02", lander_01_tube_02, "lander_tube");
	objects_attach(lander_01_tube_01, "lander_tube_door", lander_01_tube_01_cover, "m_attach" );
	objects_attach(lander_01_tube_02, "lander_tube_door", lander_01_tube_02_cover, "m_attach");
end
	
script static void prepare_lander2()
	object_cannot_take_damage(phantom_lander_02);
	//create crate
	object_create(lander_02_tube_01_cover);
	object_create(lander_02_tube_02_cover);
	//create scenery
	object_create(lander_02_tube_01);
	object_create(lander_02_tube_02);
	object_create(obs_lander_02);
	//attach
	objects_attach(phantom_lander_02, "m_attach_phantom", obs_lander_02, "");
	objects_attach(phantom_lander_02, "m_arm_attach_01", lander_02_tube_01, "lander_tube");
	objects_attach(phantom_lander_02, "m_arm_attach_02", lander_02_tube_02, "lander_tube");
	objects_attach(lander_02_tube_01, "lander_tube_door", lander_02_tube_01_cover, "m_attach" );
	objects_attach(lander_02_tube_02, "lander_tube_door", lander_02_tube_02_cover, "m_attach");
end

// --- End m10_observatory_phantom_lander.hsc ---

// --- Begin m10_spacesuck_fx.hsc ---
//(Frame numbers refer to burned in frames in movie files)
//\\cyprus\share\Midnight\Users\v-jidono\Playblasts\m10\spacesuck\SpaceSuck_part_one_v004.mov
// -     x117                door opening
// -     x126                ship hitting
// -     x424                exit vehiclebay
// \\cyprus\share\Midnight\Users\v-jidono\Playblasts\m10\spacesuck\SpaceSuck_part_two_v004.mov
// -	x128               First arm hit 
// -	x279               Debris/cruiser collision
// -	x350               Grunt impact 1
// -	x380               Grunt impact 2
// -	x393               Hand grab
// -	x407               grunt impact 3 (unless the grunt goes through that geom)
// -	x697               Chief splat! (damage effect)



// scratchboard section - DELETE ME ----------------------------------------
//    sleep_s(1)
//    effect_new( environments\solo\m10_crash\fx\lights\cry_tube_light.effect, 
//                fx_tube_light );
//
//    effect_new_on_object_marker(
//                 environments\solo\m10_crash\fx\beacon_stuck\bea_l_stuck.effect, 
//                 beac_2_mag_3, 
//                 left_sparks);
//
// -------------------------------------------------------------------------


// x117 When the door opens and chief starts getting sucked
// ~ frame 0 of the vignette
script static void fx_spacesuck_dooropening()
    dprint ("fx_spacesuck_dooropening");
    // effect on p_door1 marker, behind camera, atmosphere/debris through door
    effect_new( environments\solo\m10_crash\fx\atmosphere\decompression_vby_door.effect, fx_vby_atmos_door_01 ); 

end


// x126 When the ship hits the vehicle bay and starts ripping it open
// ~ frame 0 of the vignette
script static void fx_spacesuck_shiphitting()
    dprint ("fx_spacesuck_shiphitting");
    effect_new_on_object_marker( environments\solo\m10_crash\fx\sparks\sparks_decomp_large.effect, vb_hull, fx_hull_sparks_1 );
    effect_new_on_object_marker( environments\solo\m10_crash\fx\sparks\sparks_decomp_large.effect, vb_hull, fx_hull_sparks_2 );
    effect_new_on_object_marker( environments\solo\m10_crash\fx\sparks\sparks_decomp_large.effect, vb_hull, fx_hull_sparks_3 );
    effect_new_on_object_marker( environments\solo\m10_crash\fx\sparks\sparks_decomp_large.effect, vb_hull, fx_hull_sparks_4 );
    effect_new_on_object_marker( environments\solo\m10_crash\fx\sparks\sparks_decomp_large.effect, vb_hull, fx_hull_sparks_5 );

    effect_new_on_object_marker( environments\solo\m10_crash\fx\sparks\sparks_decomp_large.effect, vb_hull, fx_hull_hole_1 );
    effect_new_on_object_marker( environments\solo\m10_crash\fx\sparks\sparks_decomp_large.effect, vb_hull, fx_hull_hole_2 );
    effect_new_on_object_marker( environments\solo\m10_crash\fx\sparks\sparks_decomp_large.effect, vb_hull, fx_hull_hole_3 );
    effect_new_on_object_marker( environments\solo\m10_crash\fx\sparks\sparks_decomp_large.effect, vb_hull, fx_ceiling_1 );
    effect_new_on_object_marker( environments\solo\m10_crash\fx\sparks\sparks_decomp_large.effect, vb_hull, fx_ceiling_2 );


    // p_pack   3-4 big small exlposions
    effect_new_on_object_marker( environments\solo\m10_crash\fx\explosions\explosion_vby_decomp_quick.effect, vb_hull, flying_lock01_3 );
    effect_new_on_object_marker( environments\solo\m10_crash\fx\explosions\explosion_vby_decomp_quick.effect, vb_hull, fx_vb_locks_5 );
    effect_new_on_object_marker( environments\solo\m10_crash\fx\explosions\explosion_vby_decomp_quick.effect, vb_hull, fx_vb_locks_3 );
    effect_new_on_object_marker( environments\solo\m10_crash\fx\explosions\explosion_vby_decomp_quick.effect, vb_hull, fx_vb_locks_4 );

end


// x424 Elvis has left the building (Chief is sucked out into space)
// ~ frame 313 of the vignette
script static void fx_spacesuck_exitvehiclebay()
    dprint ("fx_spacesuck_exitvehiclebay");
    // chief damage
    // start debris field flying
    ////effect_new_on_object_marker( environments\solo\m10_crash\fx\debris\debris_space_falling_maw.effect, maw_door, maw_eye_center );
    effect_attached_to_camera_new( environments\solo\m10_crash\fx\debris\debris_space_falling_maw.effect );

end


// x128 First arm hit when chief hits debris
// ~ frame 500 of the vignette
script static void fx_spacesuck_armhit1()
    dprint ("fx_spacesuck_armhit1");
    // sparks, dusthit from arm
    effect_new( environments\solo\m10_crash\fx\sparks\sparks_space_impact_small.effect, fx_debris_armhit_11 );
    effect_new( environments\solo\m10_crash\fx\sparks\sparks_space_impact_small.effect, fx_debris_armhit_12 );
    effect_new( environments\solo\m10_crash\fx\sparks\sparks_space_impact_small.effect, fx_debris_armhit_13 );
    effect_new( environments\solo\m10_crash\fx\sparks\sparks_space_impact_small.effect, fx_debris_armhit_15 );
    damage_players(objects\characters\monitor\damage_effects\first_hit.damage_effect);
end


// x279 Debris/cruiser collision
// ~ frame 645 of the vignette
script static void fx_spacesuck_cruisercolldebris()
    dprint ("fx_spacesuck_cruisercolldebris");

    // p_cruiser, 1 big explosion, debris
    effect_new_on_object_marker( environments\solo\m10_crash\fx\explosions\spsuck_cruiser_impact_explosion.effect,vb_ship1, fx_ship_explode05 );

    // p_cruiser, 2-3 small explosions, debris
    effect_new_on_object_marker( environments\solo\m10_crash\fx\explosions\spsuck_cruiser_impact_explosion_small.effect,vb_ship1, fx_ship_explode01 );
    effect_new_on_object_marker( environments\solo\m10_crash\fx\explosions\spsuck_cruiser_impact_explosion_small.effect,vb_ship1, fx_ship_explode02 );

    effect_new_on_object_marker( environments\solo\m10_crash\fx\explosions\spsuck_cruiser_impact_explosion_small.effect,vb_ship1, fx_ship_explode04 );

end


// x350 Grunt impact 1
// ~ frame 718 in the vignette
script static void fx_spacesuck_gruntimpact1()
    dprint ("fx_spacesuck_gruntimpact1");
    // splat impact effect
    effect_new_on_object_marker( environments\solo\m10_crash\fx\blood\grunt_collision_blood_spray.effect, sq_vb_grunt, body );
//NOTE need to find ship name

    // trailing blood effect
    effect_new_on_object_marker( environments\solo\m10_crash\fx\blood\grunt_blood_trailing.effect, sq_vb_grunt, body );

end


// x380 Grunt impact 2
// ~ frame 748 in the vignette
script static void fx_spacesuck_gruntimpact2()
    dprint ("fx_spacesuck_gruntimpact2");
    // splat impact effect
    effect_new_on_object_marker( environments\solo\m10_crash\fx\blood\grunt_collision_blood_spray.effect, sq_vb_grunt, body );

    // trailing blood effect
    effect_new_on_object_marker( environments\solo\m10_crash\fx\blood\grunt_blood_trailing.effect, sq_vb_grunt, body );

end


// x393 Hand grab
// ~ frame 760
script static void fx_spacesuck_handgrab()
    dprint ("fx_spacesuck_handgrab");

    effect_new( environments\solo\m10_crash\fx\sparks\sparks_space_impact_small.effect, fx_debris_armhit_20 );
    effect_new( environments\solo\m10_crash\fx\sparks\sparks_space_impact_small.effect, fx_debris_armhit_21 );
    effect_new( environments\solo\m10_crash\fx\sparks\sparks_space_impact_small.effect, fx_debris_armhit_22 );
    effect_new( environments\solo\m10_crash\fx\sparks\sparks_space_impact_small.effect, fx_debris_armhit_23 );
    effect_new( environments\solo\m10_crash\fx\sparks\sparks_space_impact_small.effect, fx_debris_armhit_24 );
    effect_new( environments\solo\m10_crash\fx\sparks\sparks_space_impact_small.effect, fx_debris_armhit_25 );
    effect_new( environments\solo\m10_crash\fx\sparks\sparks_space_impact_small.effect, fx_debris_armhit_26 );

end

// x393 Hand grab
// ~ frame 760
script static void fx_ship_explosion_2()
    dprint ("fx_ship_explosion_2");

    // explosion to travel through
    effect_new_on_object_marker( environments\solo\m10_crash\fx\explosions\spsuck_cruiser_impact_explosion_engulfing.effect, vb_ship1, fx_ship_explode05 );

    // have the grunt trail some fire, needs to be timed to happen after he is engulfed in flames
    effect_new_on_object_marker( environments\solo\m10_crash\fx\fire\fire_flying_grunt.effect, sq_vb_grunt, body );

end

// x407 grunt impact 3 (unless the grunt goes through that geom)
// ~ frame 875
script static void fx_spacesuck_gruntimpact3()
    dprint ("fx_spacesuck_gruntimpact3");
    // splat impact effect
    //effect_new_on_object_marker( environments\solo\m10_crash\fx\blood\grunt_collision_blood_spray.effect, sq_vb_grunt, body );

end



// x697 Chief splat! (damage effect)
// ~ frame 949
script static void fx_spacesuck_chiefsplat()
    dprint ("fx_spacesuck_chiefsplat");
    // sheild effect
    object_can_take_damage(player0);
    object_can_take_damage(player1);
    object_can_take_damage(player2);
    object_can_take_damage(player3);
    damage_players(objects\characters\monitor\damage_effects\first_hit.damage_effect);

end




// --- End m10_spacesuck_fx.hsc ---
