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

//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343
//
// 	Mission: 					m05_prologue
//										
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343

// =================================================================================================
// =================================================================================================
// *** START-UP ***
// =================================================================================================
// =================================================================================================

; Mission Started
global boolean b_mission_started 		=	FALSE;
global boolean b_game_emulate				= FALSE;

script startup m05_prologue()
	
	thread (m05_prologue_play());

end

script static void m05_prologue_play()
	
	dprint ("playing");
	cinematic_enter( cin_m005_prologue, FALSE );
        cinematic_outro_start();
	local long prologue_bink_thread = thread( f_prologue_bink() );
	f_start_mission( cin_m005_prologue );
	kill_thread( prologue_bink_thread );
	cinematic_exit_no_fade( cin_m005_prologue, FALSE );
	dprint( "Cinematic exited!" );
        fade_out( 0, 0, 0, 0 );
        sleep( 1 );
        game_won( );
        sleep( 0 );

end

script static void f_prologue_bink()
	sleep_until(bink_is_playing() == TRUE, 1);
	sleep_s(17.5);
	cinematic_subtitle(C_prologue_00100, 1.3); // "Oni Agent: Tell me about the children."
	//17.5 seconds � 18.8 seconds
	sleep_s(7.5);
	cinematic_subtitle(C_prologue_00200, 1.0); // "Oni Agent: Doctor Halsey?"
	//25 seconds - 26 seconds
	sleep_s(4.5);
	cinematic_subtitle(C_prologue_00300, 2.4); // "Dr. Catherine Halsey: You already know everything."
	//29.5 seconds - 31.9 seconds
	sleep_s(5.0);
	cinematic_subtitle(C_prologue_00400, 1.0); // "Oni Agent: You kidnapped them."
	//34.5 seconds - 35.5 seconds
	sleep_s(2.7);
	cinematic_subtitle(C_prologue_00500, 8.7); // "Dr. Halsey: Children's minds are more easily accepting of indoctrination. Their bodies more adaptable to augmentation."
	//37.2 seconds - 45.9
	sleep_s(8.8);
	cinematic_subtitle(C_prologue_00600, 3.1); // "Dr. Halsey: The result was the ultimate soldier."
	//46 seconds - 49.1 seconds
	sleep_s(5.0);
	cinematic_subtitle(C_prologue_00700, 5.0); // "Dr. Halsey: And because of our success, when the Covenant invaded, we were ready."
	//51 seconds - 56 seconds
	sleep_s(8.8);
	cinematic_subtitle(C_prologue_00800, 3.0); // "Oni Agent: Doctor Halsey, you're bending history to your own favor and you know it."
	//59.8 seconds - 62.8
	sleep_s(4.3);
	cinematic_subtitle(C_prologue_00801, 3.9); // "Oni Agent: You developed the Spartans to crush human rebellion, not to fight the Covenant."
	//64.1 seconds - 68 seconds
	sleep_s(6.9);
	cinematic_subtitle(C_prologue_00900, 2.0); // "Dr. Halsey: When one human world after another fell..."
	//71 seconds - 73 seconds
	sleep_s(2.5);
	cinematic_subtitle(C_prologue_01000, 5.0); // "Dr. Halsey: When my Spartans were all that stood between humanity and extinction..."
	//73.5 seconds - 78.5 seconds
	sleep_s(5.4);
	cinematic_subtitle(C_prologue_01100, 3.9); // "Dr. Halsey: Nobody was concerned about why they were originally built."
	//78.9 seconds - 82.8 seconds
	sleep_s(5.3);
	cinematic_subtitle(C_prologue_01200, 2.8); // "Oni Agent: So you feel that, in the end, your choices were justified."
	//84.2 seconds - 87 seconds
	sleep_s(6.4);
	cinematic_subtitle(C_prologue_01300, 3.4); // "Dr. Halsey: My work saved the human race."
	//90.6 seconds - 94 seconds
	sleep_s(7.4);
	cinematic_subtitle(C_prologue_01400, 3.6); // "Oni Agent: Do you think the Spartans' lack of basic humanity helped?"
	//98 seconds - 101.6 seconds
	sleep_s(6.7);
	cinematic_subtitle(C_prologue_01500, 8.4); // "Dr. Halsey: What are you after? The others before you were Naval Intelligence, but you... You're something else."
	//104.7 seconds - 113.1 seconds
	sleep_s(9.4);
	cinematic_subtitle(C_prologue_01600, 5.0); // "Oni Agent: Records show Spartans routinely exhibited mildly sociopathic tendencies: difficulty with socialization and verbalization..."
	//114.1 seconds - 119.1 seconds
	sleep_s(5.0);
	cinematic_subtitle(C_prologue_01700, 5.8); // "Dr. Halsey: The records show efficient behavior operating in hazardous situations."
	//119.1 seconds - 124.9
	sleep_s(7.0);
	cinematic_subtitle(C_prologue_01800, 4.3); // "Dr. Halsey: I supplied the tools to maintain that efficiency."
	//126.1 seconds - 130.4 seconds
	sleep_s(5.4);
	cinematic_subtitle(C_prologue_01900, 4.9); // "Oni Agent: But do you believe the Master Chief succeeded because he was, at his core, broken?"
	//131.5 seconds - 136.4 seconds
	sleep_s(6.1);
	cinematic_subtitle(C_prologue_02000, 1.7); // "Dr. Halsey: What does John have to do with this?"
	//137.6 seconds - 139.3 seconds
	sleep_s(5.2);
	cinematic_subtitle(C_prologue_02100, 1.2); // "Dr. Halsey: You want to replace him."
	//142.8 seconds - 144 seconds
	sleep_s(4.2);
	cinematic_subtitle(C_prologue_02200, 1.4); // "Oni Agent: The Master Chief is dead."
	//147 seconds - 148.4 seconds
	sleep_s(2.5);
	cinematic_subtitle(C_prologue_02300, 3.3); // "Dr. Halsey: His file reads Missing In Action."
	//149.5 seconds - 152.8 seconds
	sleep_s(4.3);
	cinematic_subtitle(C_prologue_02400, 3.4); // "Oni Agent: Catherine? Spartans never die?"
	//153.8 seconds - 157.2 seconds
	sleep_s(5.2);
	cinematic_subtitle(C_prologue_02500, 4.5); // "Dr. Halsey: Your mistake is seeing Spartans as military hardware."
	//159 seconds - 163.5 seconds
	sleep_s(5.7);
	cinematic_subtitle(C_prologue_02600, 6.4); // "Dr. Halsey: My Spartans are humanity's next step. Our destiny as a species."
	//164.7 seconds - 171.1 seconds
	sleep_s(7.8);
	cinematic_subtitle(C_prologue_02700, 3.7); // "Dr. Halsey: Do not underestimate them. But most of all..."
	//172.5 seconds - 176.2 seconds
	sleep_s(4.6);
	cinematic_subtitle(C_prologue_02800, 4.0); // "Dr. Halsey: Do not underestimate him."
	//177.1 seconds - 181.1 seconds
end

; Zone Set Index
global short zs_prologue_idx 			    = 0;	// default / start

; Insertion Index
global short prologue_ins_idx 			  = 0;	// default / start

; Zone Sets
global short s_zoneset_all					  = 0;

; =================================================================================================
; =================================================================================================
; *** INSERTIONS ***
; =================================================================================================
; =================================================================================================

script static void f_insertion_index_load( short s_insertion )
local boolean b_started = FALSE;
 //dprint( "::: f_insertion_index_load :::" );
 inspect( s_insertion );
 
 if (s_insertion == prologue_ins_idx) then
  b_started = TRUE;
  ins_prologue();
 end
 
 if ( not b_started ) then
  dprint( "f_insertion_index_load: ERROR: Failed to find insertion point index to load" );
  inspect( s_insertion );
 end

end

script static zone_set f_zoneset_get( short s_index )
local zone_set zs_return = "prologue"; 

 if ( s_index == zs_prologue_idx ) then
  zs_return = "prologue";
 end

 zs_return;
end

; =================================================================================================
; INSERTION
; =================================================================================================

script static void ipro()
	f_insertion_reset( prologue_ins_idx );
end

script static void ins_prologue()

	f_insertion_begin( "PROLOGUE" );
	f_insertion_zoneload( zs_prologue_idx, FALSE );
	f_insertion_playerwait();
	//f_insertion_teleport( ps_insertion_py1_start.p0, ps_insertion_py1_start.p1, ps_insertion_py1_start.p2, ps_insertion_py1_start.p3 );
	f_insertion_end();
	
	thread (m05_prologue_play());
	dprint ("start playing here");

end
