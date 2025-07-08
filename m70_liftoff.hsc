// --- Begin m70_audio.hsc ---
// =================================================================================================
// startup
// =================================================================================================
script startup f_m70_audio_startup()
	sleep_until( b_mission_started == TRUE, 1 );
	thread (load_music_for_zone_set());
end

// =================================================================================================
// Gondola ride
// =================================================================================================
script static void f_audio_gondola_moving_start()
	print("f_audio_gondola_moving_start");
	sound_impulse_start('tags\sound\environments\solo\m070\amb_m70_final\amb_m70_machines\events\machine_m70_gondola_start_st', NONE, 1);

	sound_looping_start_marker('sound\environments\solo\m070\amb_m70_final\amb_m70_machines\machine_m70_gondola_back_moving', dm_sp01_gondola, audio_gon_back, 1);
	sound_looping_start_marker('sound\environments\solo\m070\amb_m70_final\amb_m70_machines\machine_m70_gondola_front_moving', dm_sp01_gondola, audio_gon_front, 1);
end

script static void f_audio_gondola_moving_stop()
	print("f_audio_gondola_moving_stop");
	sound_impulse_start('\tags\sound\environments\solo\m070\amb_m70_final\amb_m70_machines\events\machine_m70_gondola_end_st', NONE, 1);

	sound_looping_stop('sound\environments\solo\m070\amb_m70_final\amb_m70_machines\machine_m70_gondola_back_moving');
	sound_looping_stop('sound\environments\solo\m070\amb_m70_final\amb_m70_machines\machine_m70_gondola_front_moving');
end

// =================================================================================================
// Global screen shake audio
// =================================================================================================
global sound m70_camera_shake_medium = 'sound\environments\solo\m070\amb_m70_final\amb_m70_screen_shakes\m70_camera_shake_medium';
global sound m70_camera_shake_weak = 'sound\environments\solo\m070\amb_m70_final\amb_m70_screen_shakes\m70_camera_shake_weak.';
global sound gondola_camera_shake = 'sound\environments\solo\m070\amb_m70_final\amb_m70_screen_shakes\m70_gondola_camera_shake';
global sound emp_hit_camera_shake = 'sound\environments\solo\m070\amb_m70_final\amb_m70_screen_shakes\m70_emp_hit_camera_shake';
global sound emp_pop_camera_shake = 'sound\environments\solo\m070\amb_m70_final\amb_m70_screen_shakes\m70_emp_pop_camera_shake';

// =================================================================================================
// music encounter hooks
// =================================================================================================
script static void f_mus_m70_e01_begin()
	dprint("f_mus_m70_e01");
	music_set_state('Play_mus_m70_e01_exterior_platforms');
end

script static void f_mus_m70_e02_begin()
	dprint("f_mus_m70_e02");
	music_set_state('Play_mus_m70_e03_spire1');
end

script static void f_mus_m70_e03_begin()
	dprint("f_mus_m70_e03");
	music_set_state('Play_mus_m70_e05_spire2');
end

script static void f_mus_m70_e04_begin()
	dprint("f_mus_m70_e04");
	music_set_state('Play_mus_m70_e07_spire3');
end

script static void f_mus_m70_e05_begin()
	dprint("f_mus_m70_e05");
	music_set_state('Play_mus_m70_e09_lich_train');
end

script static void f_mus_m70_e06_begin()
	dprint("f_mus_m70_e06");
end

script static void f_mus_m70_e07_begin()
	dprint("f_mus_m70_e07");
end

script static void f_mus_m70_e08_begin()
	dprint("f_mus_m70_e08");
end

script static void f_mus_m70_e09_begin()
	dprint("f_mus_m70_e09");
end

script static void f_mus_m70_e10_begin()
	dprint("f_mus_m70_e10");
end

script static void f_mus_m70_e01_finish()
	dprint("f_mus_m70_e01");
	music_set_state('Play_mus_m70_e02_exterior_platforms_end');
end

script static void f_mus_m70_e02_finish()
	dprint("f_mus_m70_e02");
	music_set_state('Play_mus_m70_e04_spire1_end');
end

script static void f_mus_m70_e03_finish()
	dprint("f_mus_m70_e03");
	music_set_state('Play_mus_m70_e06_spire2_end');
end

script static void f_mus_m70_e04_finish()
	dprint("f_mus_m70_e04");
	music_set_state('Play_mus_m70_e08_spire3_end');
end

script static void f_mus_m70_e05_finish()
	dprint("f_mus_m70_e05");
	music_set_state('Play_mus_m70_e10_lich_train_end');
end

script static void f_mus_m70_e06_finish()
	dprint("f_mus_m70_e06");
end

script static void f_mus_m70_e07_finish()
	dprint("f_mus_m70_e07");
end

script static void f_mus_m70_e08_finish()
	dprint("f_mus_m70_e08");
end

script static void f_mus_m70_e09_finish()
	dprint("f_mus_m70_e09");
end

script static void f_mus_m70_e10_finish()
	dprint("f_mus_m70_e10");
end

script static void f_music_m70_tweak01()
	dprint("f_music_m70_tweak01");
	music_set_state('Play_mus_m70_t01_tweak');
end

script static void f_music_m70_tweak02()
	dprint("f_music_m70_tweak02");
	music_set_state('Play_mus_m70_t02_tweak');
end

script static void f_music_m70_tweak03()
	dprint("f_music_m70_tweak03");
	music_set_state('Play_mus_m70_t03_tweak');
end

script static void f_music_m70_tweak04()
	dprint("f_music_m70_tweak04");
	music_set_state('Play_mus_m70_t04_tweak');
end

script static void f_music_m70_tweak05()
	dprint("f_music_m70_tweak05");
	music_set_state('Play_mus_m70_t05_tweak');
end

script static void f_music_m70_tweak06()
	dprint("f_music_m70_tweak06");
	music_set_state('Play_mus_m70_t06_tweak');
end

script static void f_music_m70_tweak07()
	dprint("f_music_m70_tweak07");
	music_set_state('Play_mus_m70_t07_tweak');
end

script static void f_music_m70_tweak08()
	dprint("f_music_m70_tweak08");
	music_set_state('Play_mus_m70_t08_tweak');
end

script static void f_music_m70_tweak09()
	dprint("f_music_m70_tweak09");
	music_set_state('Play_mus_m70_t09_tweak');
end

script static void f_music_m70_tweak10()
	dprint("f_music_m70_tweak10");
	music_set_state('Play_mus_m70_t10_tweak');
end

// ========================================
// Vignette music events
// ========================================
script static void f_music_m70_v08_gondola_stop()
	dprint("f_music_m70_v08_gondola_stop");
	music_set_state('Play_mus_m70_v08_gondola_stop');
end

script static void f_music_m70_v07_didact_voice_1()
	dprint("f_music_m70_v07_didact_voice_1");
	music_set_state('Play_mus_m70_v07_didact_voice_1');
end

script static void f_music_m70_v07_didact_voice_2()
	dprint("f_music_m70_v07_didact_voice_2");
	music_set_state('Play_mus_m70_v07_didact_voice_2');
end

script static void f_music_m70_v07_didact_voice_3()
	dprint("f_music_m70_v07_didact_voice_3");
	music_set_state('Play_mus_m70_v07_didact_voice_3');
end

script static void f_music_m70_v07_didact_voice_4()
	dprint("f_music_m70_v07_didact_voice_4");
	music_set_state('Play_mus_m70_v07_didact_voice_4');
end

script static void f_music_m70_v07_didact_voice_5()
	dprint("f_music_m70_v07_didact_voice_5");
	music_set_state('Play_mus_m70_v07_didact_voice_5');
end

script static void f_music_m70_v07_didact_voice_6()
	dprint("f_music_m70_v07_didact_voice_6");
	music_set_state('Play_mus_m70_v07_didact_voice_6');
end

script static void f_music_m70_v07_didact_voice_7()
	dprint("f_music_m70_v07_didact_voice_7");
	music_set_state('Play_mus_m70_v07_didact_voice_7');
end

script static void f_music_m70_v07_didact_voice_8()
	dprint("f_music_m70_v07_didact_voice_8");
	music_set_state('Play_mus_m70_v07_didact_voice_8');
end

script static void f_music_m70_v09_didact_ship()
	dprint("f_music_m70_v09_didact_ship");
	music_set_state('Play_mus_m70_v09_didact_ship');
end

// =================================================================================================
// music zoneset hooks
// =================================================================================================
// this will always be 0 unless an insertion point is used
// in that case, it is used to skip past the trigger volumes that precede the selected insertion point
global short b_m70_music_progression = 0;

script static void load_music_for_zone_set()
	sleep_until( b_m70_music_progression > 0 or current_zone_set_fully_active() == DEF_S_ZONESET_INFINITY, 1 );

	music_start('Play_mus_m70');
	
	sleep_until(b_m70_music_progression > 10 or volume_test_players (tv_music_r01_00_infinity), 1);
	if b_m70_music_progression <= 10 then		
		music_set_state('Play_mus_m70_r01_00_infinity');
		sound_set_state('Set_State_M70_infinity');
	end
	
	sleep_until(b_m70_music_progression > 20 or volume_test_players (tv_music_r02_00_infinity_exterior), 1);
	if b_m70_music_progression <= 20 then				
		music_set_state('Play_mus_m70_r02_00_infinity_exterior');
		sound_set_state('Set_State_M70_infinity_exterior');
	end
		
	// spire 1 and 2 can be completed in any order
	thread (load_spire_1_music());
	thread (load_spire_2_music());
	
	// now wait until the player enters spire 3
	sleep_until(b_m70_music_progression > 70 or volume_test_players (tv_music_r09_spire_3_exterior), 1);
	if b_m70_music_progression <= 70 then		
		music_set_state('Play_mus_m70_r09_spire_3_exterior');
		sound_set_state('Set_State_M70_spire_3_exterior');
	end
	
	// RALLY POINT DELTA
	sleep_until(b_m70_music_progression > 80 or volume_test_players (tv_music_r10_spire_3_interior_a), 1);
	if b_m70_music_progression <= 80 then				
		music_set_state('Play_mus_m70_r10_spire_3_interior_a');
		sound_set_state('Set_State_M70_spire_3_interior_a');
	end
	
	sleep_until(b_m70_music_progression > 90 or volume_test_players (tv_music_r11_spire_3_interior_b), 1);
	if b_m70_music_progression <= 90 then				
		music_set_state('Play_mus_m70_r11_spire_3_interior_b');
		sound_set_state('Set_State_M70_spire_3_interior_b');
	end
	
	sleep_until(b_m70_music_progression > 100 or volume_test_players (tv_music_r12_spire_3_interior_c), 1);
	if b_m70_music_progression <= 100 then				
		music_set_state('Play_mus_m70_r12_spire_3_interior_c');
		sound_set_state('Set_State_M70_spire_3_interior_c');
	end
	
	sleep_until(b_m70_music_progression > 110 or volume_test_players (tv_music_r13_spire_3_interior_d), 1);
	if b_m70_music_progression <= 110 then				
		music_set_state('Play_mus_m70_r13_spire_3_interior_d');
		sound_set_state('Set_State_M70_spire_3_interior_d');
	end
	
	sleep_until(b_m70_music_progression > 120 or volume_test_players (tv_music_r14_spire_3_exit), 1);
	if b_m70_music_progression <= 120 then				
		music_set_state('Play_mus_m70_r14_spire_3_exit');
		sound_set_state('Set_State_M70_spire_3_exit');
	end	
	
	// chief jumping off the platform triggers the cinematic start
	sleep_until(B_lich_chief_jumped == TRUE, 1);
		music_stop('Stop_mus_m70');
end

script static void load_spire_1_music()
	// RALLY POINT BRAVO
	sleep_until(b_m70_music_progression > 30 or volume_test_players (tv_music_r03_spire_1_exterior), 1);
	if b_m70_music_progression <= 30 then	
		music_set_state('Play_mus_m70_r03_spire_1_exterior');
		sound_set_state('Set_State_M70_spire_1_exterior');
	end
	
	sleep_until(b_m70_music_progression > 40 or volume_test_players (tv_music_r04_spire_1_interior_a), 1);
	if b_m70_music_progression <= 40 then	
		music_set_state('Play_mus_m70_r04_spire_1_interior_a');
		sound_set_state('Set_State_M70_spire_1_interior_a');
	end
	
	sleep_until(volume_test_players (tv_music_r05_spire_1_interior_b), 1);
		music_set_state('Play_mus_m70_r05_spire_1_interior_b');
		sound_set_state('Set_State_M70_spire_1_interior_b');
		
	sleep_until(volume_test_players (tv_music_r15_spire_1_exit), 1);
		music_set_state('Play_mus_m70_r03_spire_1_exit');
		sound_set_state('Set_State_M70_spire_1_exit');
		
end

script static void load_spire_2_music()
	//  RALLY POINT CHARLIE
	sleep_until(b_m70_music_progression > 50 or volume_test_players (tv_music_r06_spire_2_exterior), 1);
	if b_m70_music_progression <= 50 then	
		music_set_state('Play_mus_m70_r06_spire_2_exterior');
		sound_set_state('Set_State_M70_spire_2_exterior');
	end
	
	sleep_until(b_m70_music_progression > 60 or volume_test_players (tv_music_r07_spire_2_interior_a), 1);
	if b_m70_music_progression <= 60 then		
		music_set_state('Play_mus_m70_r07_spire_2_interior_a');
		sound_set_state('Set_State_M70_spire_2_interior_a');
	end
		
	sleep_until(volume_test_players (tv_music_r08_spire_2_interior_b), 1);
		music_set_state('Play_mus_m70_r08_spire_2_interior_b');
		sound_set_state('Set_State_M70_spire_2_interior_b');
		
	sleep_until(volume_test_players (tv_music_r16_spire_2_exit), 1);
		music_set_state('Play_mus_m70_r06_spire_2_exit');
		sound_set_state('Set_State_M70_spire_2_exit');
end


// --- End m70_audio.hsc ---

// --- Begin m70_dialog.hsc ---
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343
//
// Mission: 					m70
//
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343

// =================================================================================================
// =================================================================================================
// DIALOG
// =================================================================================================
// =================================================================================================
// variables

// -------------------------------------------------------------------------------------------------
// INFINITY
// -------------------------------------------------------------------------------------------------
// variables
global long L_dlg_infinity_start = DEF_DIALOG_ID_NONE();
global long L_dlg_flight_launch_start = DEF_DIALOG_ID_NONE();
global long L_dlg_flight_a_tutorial = DEF_DIALOG_ID_NONE();
global long L_dlg_infinity_marine_01 =             DEF_DIALOG_ID_NONE();
global long L_dlg_infinity_marine_02 =             DEF_DIALOG_ID_NONE();
global long L_dlg_infinity_marine_03 =             DEF_DIALOG_ID_NONE();
global long L_dlg_infinity_marine_04 =             DEF_DIALOG_ID_NONE();
global long L_dlg_infinity_marine_05 =             DEF_DIALOG_ID_NONE();
global long L_dlg_infinity_marine_06 =             DEF_DIALOG_ID_NONE();
global long L_dlg_infinity_marine_07 =             DEF_DIALOG_ID_NONE();



// functions

// === f_dlg_infinity_start::: Dialog
script dormant f_dlg_infinity_start()
dprint( "f_dlg_infinity_start" );

	if ( not dialog_foreground_id_active_check(L_dlg_infinity_start) ) then
	
		
		sleep_s(1);
		L_dlg_infinity_start = dialog_start_foreground( "INFINITY_START", L_dlg_infinity_start, TRUE, DEF_DIALOG_STYLE_INTERRUPT(), TRUE, "", 0.0 );
												hud_rampancy_players_set( 0.15 );	
												dialog_line_cortana( L_dlg_infinity_start, 0, TRUE, 'sound\dialog\mission\m70\m70_infinity_dock_00101', TRUE, NONE, 0.0, "", "Cortana : The Didact used this Composer to create the Prometheans from ancient humans." );
												dialog_line_cortana( L_dlg_infinity_start, 1, TRUE, 'sound\dialog\mission\m70\m70_infinity_dock_00102', TRUE, NONE, 0.0, "", "Cortana : If he wants to finish the job, he'll have to find it first. Our best bet to stop him is keep him firmly on Requiem." );
												dialog_line_cortana( L_dlg_infinity_start, 2, TRUE, 'sound\dialog\mission\m70\m70_infinity_dock_00103', TRUE, NONE, 0.0, "", "Cortana : Let's hope Lasky didn't skimp on that Pelican." );
												hud_rampancy_players_set( 0.0 );
												

		L_dlg_infinity_start = dialog_end( L_dlg_infinity_start, TRUE, TRUE, "" );
		
	end
  thread(m70_objective_1_nudge());
end



script static void f_dialog_m70_story_button_1( short s_index )


	local long l_dialog_id = DEF_DIALOG_ID_NONE();
	if ( s_index == 1 ) then
		 l_dialog_id = dialog_start_background("STORY_BUTTON_01", l_dialog_id, TRUE, DEF_DIALOG_STYLE_PLAY(), TRUE, "", 0.25 );         
			dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m70\m70_secondary_00100', FALSE, second_console_action_marker, 0.0, "", "Infinity System Voice : We're sorry. Non-essential reporting systems are off-line during departure prep. Recreational information and WarGames standings will return after Infinity is underway.", TRUE);
		l_dialog_id = dialog_end( l_dialog_id, TRUE, FALSE, "" );
	
	elseif ( s_index == 2 ) then
		 l_dialog_id = dialog_start_background("STORY_BUTTON_01", l_dialog_id, TRUE, DEF_DIALOG_STYLE_PLAY(), TRUE, "", 0.25 );         
			dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m70\m70_secondary_00101', FALSE, second_console_action_marker, 0.0, "", "Infinity System Voice : Cargo manifest correction. All pallets bound for Ivanoff Station should be restowed until further notice.", TRUE);
		l_dialog_id = dialog_end( l_dialog_id, TRUE, FALSE, "" );
	
	elseif ( s_index == 3 ) then
		 l_dialog_id = dialog_start_background("STORY_BUTTON_01", l_dialog_id, TRUE, DEF_DIALOG_STYLE_PLAY(), TRUE, "", 0.25 );         
			dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m70\m70_secondary_00102', FALSE, second_console_action_marker, 0.0, "", "Infinity System Voice : Information for all hands regarding Infinity return voyage to Cairo Station, Earth. All personnel are to remain upon Infinity until fully debriefed by their ranking officer. For further information, please contact Lt Cmdr Phillips, Security Deck 1.", TRUE);
		l_dialog_id = dialog_end( l_dialog_id, TRUE, FALSE, "" );
		story_button_state_01 = 0;
	end
	if current_zone_set_fully_active() == DEF_S_ZONESET_INFINITY then
		object_create(story_03_switch);
		sleep_s(0.25);
		thread(story_button_01());
	end
end




script static void f_dialog_m70_story_button_2( short s_index )


	local long l_dialog_id = DEF_DIALOG_ID_NONE();
	if ( s_index == 1 ) then
		 l_dialog_id = dialog_start_background("STORY_BUTTON_02", l_dialog_id, TRUE, DEF_DIALOG_STYLE_PLAY(), TRUE, "", 0.25 );         
			dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m70\m70_announcer_secondary_00100', FALSE, first_console_action_marker, 0.0, "", "Announcer : Wargames simulations, offline.", TRUE);
		l_dialog_id = dialog_end( l_dialog_id, TRUE, FALSE, "" );
	elseif( s_index == 2 ) then
		 l_dialog_id = dialog_start_background("STORY_BUTTON_02", l_dialog_id, TRUE, DEF_DIALOG_STYLE_PLAY(), TRUE, "", 0.25 );         
			dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m70\m70_announcer_secondary_00102', FALSE, first_console_action_marker, 0.0, "", "Announcer : Come back later.", TRUE);
		l_dialog_id = dialog_end( l_dialog_id, TRUE, FALSE, "" );
	elseif( s_index == 3 ) then
		 l_dialog_id = dialog_start_background("STORY_BUTTON_02", l_dialog_id, TRUE, DEF_DIALOG_STYLE_PLAY(), TRUE, "", 0.25 );         
			dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m70\m70_announcer_secondary_00104', FALSE, first_console_action_marker, 0.0, "", "Announcer : Combat deck information offline.", TRUE);
		l_dialog_id = dialog_end( l_dialog_id, TRUE, FALSE, "" );
	elseif ( s_index == 4 ) then
		 l_dialog_id = dialog_start_background("STORY_BUTTON_02", l_dialog_id, TRUE, DEF_DIALOG_STYLE_PLAY(), TRUE, "", 0.25 );         
			dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m70\m70_announcer_secondary_00103', FALSE, first_console_action_marker, 0.0, "", "Announcer : Killing spree postponed.", TRUE);
		l_dialog_id = dialog_end( l_dialog_id, TRUE, FALSE, "" );
	elseif ( s_index == 5 ) then
		 l_dialog_id = dialog_start_background("STORY_BUTTON_02", l_dialog_id, TRUE, DEF_DIALOG_STYLE_PLAY(), TRUE, "", 0.25 );         
			dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m70\m70_announcer_secondary_00105', FALSE, first_console_action_marker, 0.0, "", "Announcer : Spartan wargames scoreboard not available during departure.", TRUE);
		l_dialog_id = dialog_end( l_dialog_id, TRUE, FALSE, "" );
	elseif ( s_index == 6 ) then
		 l_dialog_id = dialog_start_background("STORY_BUTTON_02", l_dialog_id, TRUE, DEF_DIALOG_STYLE_PLAY(), TRUE, "", 0.25 );         
			dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m70\m70_announcer_secondary_00106', FALSE, first_console_action_marker, 0.0, "", "Announcer : Return later for more red versus blue carnage.", TRUE);
		l_dialog_id = dialog_end( l_dialog_id, TRUE, FALSE, "" );		
		story_button_state_02 = 0;
	end
	if current_zone_set_fully_active() == DEF_S_ZONESET_INFINITY then
		object_create(story_04_switch);
		sleep_s(0.25);
		thread(story_button_02());
	end
end


script static void f_dlg_infinity_dock_pa_01()
dprint("f_dlg_infinity_dock_pa_01");
static long l_dialog_id = DEF_DIALOG_ID_NONE();

            if ( not dialog_background_id_active_check(l_dialog_id) ) then
            
                        l_dialog_id = dialog_start_background( "INFINITY_DOCK_PA_01", l_dialog_id, TRUE, DEF_DIALOG_STYLE_PLAY(), TRUE, "", 0.0 );
														dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m70\m70_infinity_dock_pa_00100', FALSE, audio_infinitypa, 0.0, "", "Infinity System Voice : ATTENTION FLIGHT CREWS. PLEASE ENSURE ALL CRAFT RATED GRADE 7 AND HIGHER HAVE BEEN SECURED FOR TRANSIT.", TRUE);
                        l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
                        
            end
end

script static void f_dlg_infinity_dock_pa_02()
dprint("f_dlg_infinity_dock_pa_02");
static long l_dialog_id = DEF_DIALOG_ID_NONE();

            if ( not dialog_background_id_active_check(l_dialog_id) ) then
            
                        l_dialog_id = dialog_start_background( "INFINITY_DOCK_PA_02", l_dialog_id, TRUE, DEF_DIALOG_STYLE_PLAY(), TRUE, "", 0.0 );
														dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m70\m70_infinity_dock_pa_00100', FALSE, audio_infinitypa, 0.0, "", "Infinity System Voice : ATTENTION FLIGHT CREWS. PLEASE ENSURE ALL CRAFT RATED GRADE 7 AND HIGHER HAVE BEEN SECURED FOR TRANSIT.", TRUE);
                        l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
                        
            end
end

script static void f_dlg_infinity_dock_pa_03()
dprint("f_dlg_infinity_dock_pa_03");
static long l_dialog_id = DEF_DIALOG_ID_NONE();

            if ( not dialog_background_id_active_check(l_dialog_id) ) then
            
                        l_dialog_id = dialog_start_background( "INFINITY_DOCK_PA_03", l_dialog_id, TRUE, DEF_DIALOG_STYLE_PLAY(), TRUE, "", 0.0 );
														dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m70\m70_infinity_dock_pa_00102', FALSE, audio_infinitypa, 0.0, "", "Infinity System Voice : INFINITY'S ORBITAL DEPARTURE STATUS 'BLUE'. ALL ACTIVE DUTY PERSONNEL MUST REPORT TO DUTY STATIONS IMMEDIATELY.", TRUE);
                        l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
                        
            end
end

script static void f_dlg_infinity_dock_pa_04()
dprint("f_dlg_infinity_dock_pa_04");
static long l_dialog_id = DEF_DIALOG_ID_NONE();

            if ( not dialog_background_id_active_check(l_dialog_id) ) then
            
                        l_dialog_id = dialog_start_background( "INFINITY_DOCK_PA_04", l_dialog_id, TRUE, DEF_DIALOG_STYLE_PLAY(), TRUE, "", 0.0 );
														dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m70\m70_infinity_dock_pa_00103', FALSE, audio_infinitypa, 0.0, "", "Infinity System Voice : ALL NON-ESSENTIAL PERSONNEL ARE ASKED TO PLEASE RESTRICT INTERDECK TRANSIT UNTIL PLANETARY DEPARTURE IS COMPLETE.", TRUE);
                        l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
                        
            end
end

script static void f_dlg_infinity_dock_pa_05()
dprint("f_dlg_infinity_dock_pa_05");
static long l_dialog_id = DEF_DIALOG_ID_NONE();

            if ( not dialog_background_id_active_check(l_dialog_id) ) then
            
                        l_dialog_id = dialog_start_background( "INFINITY_DOCK_PA_05", l_dialog_id, TRUE, DEF_DIALOG_STYLE_PLAY(), TRUE, "", 0.0 );
														dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m70\m70_infinity_dock_pa_00104', FALSE, audio_infinitypa, 0.0, "", "Infinity System Voice : ALL PRE-FLIGHT TEAMS: HULL PRESSURIZATION PROTOCOLS ARE NOW IN EFFECT. ALL PERSONNEL ARE ORDERED TO RETURN TO INFINITY.", TRUE);
                        l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
                        
            end
end


script static void f_dlg_infinity_dock_pa_06()
dprint("f_dlg_infinity_dock_pa_06");
static long l_dialog_id = DEF_DIALOG_ID_NONE();

            if ( not dialog_background_id_active_check(l_dialog_id) ) then
            
                        l_dialog_id = dialog_start_background( "INFINITY_DOCK_PA_06", l_dialog_id, TRUE, DEF_DIALOG_STYLE_PLAY(), TRUE, "", 0.0 );
														dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m70\m70_infinity_dock_pa_00105', FALSE, audio_infinitypa, 0.0, "", "Infinity System Voice : STANDBY FOR TIME CHECK. ON SIGNAL, SHIP TIME WILL BE 19 HOURS 30 MINUTES. STANDBY... MARK.", TRUE);
                        l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
                        
            end
end

script static void f_dlg_infinity_dock_pa_07()
dprint("f_dlg_infinity_dock_pa_07");
static long l_dialog_id = DEF_DIALOG_ID_NONE();

            if ( not dialog_background_id_active_check(l_dialog_id) ) then
            
                        l_dialog_id = dialog_start_background( "INFINITY_DOCK_PA_07", l_dialog_id, TRUE, DEF_DIALOG_STYLE_PLAY(), TRUE, "", 0.0 );
														dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m70\m70_infinity_dock_pa_00106', FALSE, audio_infinitypa, 0.0, "", "Infinity System Voice : A SIGMA-LEVEL ANOMALY HAS BEEN REPORTED IN MATERIAL DEPLOYMENT BAY F959.", TRUE);
                        l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
                        
            end
end

script static void f_dlg_infinity_dock_pa_08()
dprint("f_dlg_infinity_dock_pa_08");
static long l_dialog_id = DEF_DIALOG_ID_NONE();

            if ( not dialog_background_id_active_check(l_dialog_id) ) then
            
                        l_dialog_id = dialog_start_background( "INFINITY_DOCK_PA_08", l_dialog_id, TRUE, DEF_DIALOG_STYLE_PLAY(), TRUE, "", 0.0 );
														dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m70\m70_infinity_dock_pa_00107', FALSE, audio_infinitypa, 0.0, "", "Infinity PA : RESPONSE CREWS ARE EN ROUTE. PLEASE AVOID MDB F959 UNTIL FURTHER NOTICE.", TRUE);
                        l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
                        
            end
end

script dormant f_dialog_m70_infinity_marine_01()
	//dprint("f_dialog_m70_infinity_marine_01");
					
            L_dlg_infinity_marine_01 = dialog_start_background("INFINITY_MARINE_01", L_dlg_infinity_marine_01, TRUE, DEF_DIALOG_STYLE_PLAY(), TRUE, "", 0.25 );         
								dialog_line_npc_ai( L_dlg_infinity_marine_01, 0, not ai_allegiance_broken(player, human), 'sound\dialog\mission\m70\m70_infinity_dock_00140', FALSE, sq_inf_marine_salute_01.tom, 0.0, "", "Uh... sir.", FALSE);
            L_dlg_infinity_marine_01 = dialog_end( L_dlg_infinity_marine_01, TRUE, TRUE, "" );
				
		
		
end

	script dormant f_dialog_m70_infinity_marine_02()
	//dprint("f_dialog_m70_infinity_marine_02");
					
            L_dlg_infinity_marine_02 = dialog_start_background("INFINITY_MARINE_02", L_dlg_infinity_marine_02, TRUE, DEF_DIALOG_STYLE_PLAY(), TRUE, "", 0.25 );         
								dialog_line_npc_ai( L_dlg_infinity_marine_02, 0, not ai_allegiance_broken(player, human), 'sound\dialog\mission\m70\m70_infinity_dock_00117', FALSE, sq_inf_marine_salute_02.jacob, 0.0, "", "Spartan on deck. Sir.", FALSE);
								dialog_line_npc_ai( L_dlg_infinity_marine_02, 1, not ai_allegiance_broken(player, human), 'sound\dialog\mission\m70\m70_infinity_dock_00118', FALSE, sq_inf_marine_salute_02.dan, 0.0, "", "The guys... we respect what you did, Chief.", FALSE);
            L_dlg_infinity_marine_02 = dialog_end( L_dlg_infinity_marine_02, TRUE, TRUE, "" );
				
		
		
end		

	script dormant f_dialog_m70_infinity_marine_03()
	//dprint("f_dialog_m70_infinity_marine_03");
					
            L_dlg_infinity_marine_03 = dialog_start_background("INFINITY_MARINE_03", L_dlg_infinity_marine_03, TRUE, DEF_DIALOG_STYLE_PLAY(), TRUE, "", 0.25 );         
								dialog_line_npc_ai( L_dlg_infinity_marine_03, 0, not ai_allegiance_broken(player, human), 'sound\dialog\mission\m70\m70_infinity_dock_00115', FALSE, sq_inf_spartans_03.spawn_points_0, 0.0, "", "That�s pretty much the way things are going, ain�t it?", FALSE);
								dialog_line_npc_ai( L_dlg_infinity_marine_03, 1, not ai_allegiance_broken(player, human), 'sound\dialog\mission\m70\m70_infinity_dock_00116', FALSE, sq_inf_spartans_03.spawn_points_1, 0.0, "", "This is all kinds of wrong, man.", FALSE);
            L_dlg_infinity_marine_03 = dialog_end( L_dlg_infinity_marine_03, TRUE, TRUE, "" );
            sleep_s(15);
				thread( f_m70_infinity_marine_04_trigger(sq_inf_spartans_03.spawn_points_0));
		
		
end		

script dormant f_dialog_m70_infinity_marine_04()
	//dprint("f_dialog_m70_infinity_marine_04");
					
            L_dlg_infinity_marine_04 = dialog_start_background("INFINITY_MARINE_04", L_dlg_infinity_marine_04, TRUE, DEF_DIALOG_STYLE_PLAY(), TRUE, "", 0.25 );         
								dialog_line_npc_ai( L_dlg_infinity_marine_04, 0, not ai_allegiance_broken(player, human), 'sound\dialog\mission\m70\m70_infinity_dock_00121', FALSE, sq_inf_marines_stand_01.cory, 0.0, "", "I thought we came here to figure out what happened with that thing on Ivanoff?", FALSE);
								dialog_line_npc_ai( L_dlg_infinity_marine_04, 1, not ai_allegiance_broken(player, human), 'sound\dialog\mission\m70\m70_infinity_dock_00122', FALSE, sq_inf_marines_stand_01.justin, 0.0, "", "Yeah, and now we�re gonna bug out cuz we got a bloody nose. Stupid.", FALSE);
								dialog_line_npc_ai( L_dlg_infinity_marine_04, 2, not ai_allegiance_broken(player, human), 'sound\dialog\mission\m70\m70_infinity_dock_00123', FALSE, sq_inf_marines_stand_01.cory, 0.0, "", "FISHDO, man. Keep cashin� the check.", FALSE);
								
            L_dlg_infinity_marine_04 = dialog_end( L_dlg_infinity_marine_04, TRUE, TRUE, "" );
				
		
		
end		

	script dormant f_dialog_m70_infinity_marine_05()
	//dprint("f_dialog_m70_infinity_marine_05");
					
            L_dlg_infinity_marine_05 = dialog_start_background("INFINITY_MARINE_05", L_dlg_infinity_marine_05, TRUE, DEF_DIALOG_STYLE_PLAY(), TRUE, "", 0.25 );         
								dialog_line_npc_ai( L_dlg_infinity_marine_05, 0, not ai_allegiance_broken(player, human), 'sound\dialog\mission\m70\m70_infinity_dock_00141', FALSE, sq_marines_work_02.tom, 0.0, "", "The old man tried tearing him a new one.", FALSE);
								dialog_line_npc_ai( L_dlg_infinity_marine_05, 1, not ai_allegiance_broken(player, human), 'sound\dialog\mission\m70\m70_infinity_dock_00142', FALSE, sq_marines_work_02.chris, 0.0, "", "Good luck with that.", FALSE);
								dialog_line_npc_ai( L_dlg_infinity_marine_05, 2, not ai_allegiance_broken(player, human), 'sound\dialog\mission\m70\m70_infinity_dock_00137', FALSE, sq_marines_work_02.tom, 0.0, "", "And good luck on the night watch, Private. The old man is still your superior officer and you will refer to him as such. Are we clear?", FALSE);
								dialog_line_npc_ai( L_dlg_infinity_marine_05, 3, not ai_allegiance_broken(player, human), 'sound\dialog\mission\m70\m70_infinity_dock_00138', FALSE, sq_marines_work_02.chris, 0.0, "", "Sir, yes sir.", FALSE);
            L_dlg_infinity_marine_05 = dialog_end( L_dlg_infinity_marine_05, TRUE, TRUE, "" );
            sleep_s(15);
            thread( f_m70_infinity_marine_06_trigger(sq_marines_work_02.chris));

end		

	script dormant f_dialog_m70_infinity_marine_06()
	//dprint("f_dialog_m70_infinity_marine_06");
					
            L_dlg_infinity_marine_06 = dialog_start_background("INFINITY_MARINE_06", L_dlg_infinity_marine_06, TRUE, DEF_DIALOG_STYLE_PLAY(), TRUE, "", 0.25 );         
								dialog_line_npc_ai( L_dlg_infinity_marine_06, 0, not ai_allegiance_broken(player, human), 'sound\dialog\mission\m70\m70_infinity_dock_00139', FALSE, sq_marines_work_03.jesse, 0.0, "", "Look, I fought to get this assignment, I'm just saying-", FALSE);
								dialog_line_npc_ai( L_dlg_infinity_marine_06, 1, not ai_allegiance_broken(player, human), 'sound\dialog\mission\m70\m70_infinity_dock_00134', FALSE, sq_marines_work_03.ray, 0.0, "", "A chain of command is still a chain of command.", FALSE);
								dialog_line_npc_ai( L_dlg_infinity_marine_06, 2, not ai_allegiance_broken(player, human), 'sound\dialog\mission\m70\m70_infinity_dock_00135', FALSE, sq_marines_work_03.jesse, 0.0, "", "C'mon, who do you think FleetCom's going to side with? Don't be naive.", FALSE);
            L_dlg_infinity_marine_06 = dialog_end( L_dlg_infinity_marine_06, TRUE, TRUE, "" );
				sleep_s(15);
				thread( f_m70_infinity_marine_07_trigger(sq_marines_work_03.ray) );
end		

	script dormant f_dialog_m70_infinity_marine_07()
	//dprint("f_dialog_m70_infinity_marine_07");
					
            L_dlg_infinity_marine_07 = dialog_start_background("INFINITY_MARINE_06", L_dlg_infinity_marine_07, TRUE, DEF_DIALOG_STYLE_PLAY(), TRUE, "", 0.25 );         
								dialog_line_npc_ai( L_dlg_infinity_marine_06, 3, not ai_allegiance_broken(player, human), 'sound\dialog\mission\m70\m70_infinity_dock_00136', FALSE, sq_inf_marine_03.sp_01, 0.0, "", "All right, so I know we just unpacked this heap, but we gotta stow the Ivanoff drops again. Word's coming down that we're headed back to Earth first.", FALSE);
            L_dlg_infinity_marine_07 = dialog_end( L_dlg_infinity_marine_07, TRUE, TRUE, "" );

end		



global long l_test_dialog_id = 0;

// === f_dlg_infinity_npc_bark::: Dialog
script static void f_dlg_infinity_npc_bark( trigger_volume tv_trigger, object obj_marine_a, object obj_marine_b )
dprint( "f_dlg_infinity_npc_bark" );
local long l_dialog_id = DEF_DIALOG_ID_NONE();
static short s_infinity_npc_bark_index = 0;
local long l_post_reset_timer = 0;

	// make sure the infinity start dialog has played before setting up these triggers
	sleep_until( dialog_id_played_check(L_dlg_infinity_start), 1 );

	repeat
	
		sleep_until( (volume_test_players(tv_trigger) and (not dialog_background_id_active_check(l_dialog_id))) or (dialog_id_invalid_check(l_dialog_id)), 1 ); 

		l_dialog_id = dialog_start_background( "INFINITY_NPC_BARK", l_dialog_id, TRUE, DEF_DIALOG_STYLE_SKIP_ALL(), TRUE, "", 0.0 );
		l_test_dialog_id = l_dialog_id;

			// increment bark index
			if ( dialog_background_id_active_check(l_dialog_id) ) then
				s_infinity_npc_bark_index = s_infinity_npc_bark_index + 1;
			end

			dialog_line_npc( l_dialog_id, 1, s_infinity_npc_bark_index == 1, 'sound\dialog\mission\m70\m70_infinity_dock_00117', FALSE, obj_marine_a, 0.0, "", "Marine 5: Spartan on deck. Sir.", FALSE );
			dialog_line_npc( l_dialog_id, 2, s_infinity_npc_bark_index == 1, 'sound\dialog\mission\m70\m70_infinity_dock_00118', FALSE, obj_marine_b, 0.0, "", "Marine 6 : The guys... we respect what you did, Chief.", FALSE );
			
			dialog_line_npc( l_dialog_id, 3, s_infinity_npc_bark_index == 2, 'sound\dialog\mission\m70\m70_infinity_dock_00113', FALSE, obj_marine_a, 0.0, "", "Marine 2 : The old man tried tearing him a new one.", FALSE );
			dialog_line_npc( l_dialog_id, 4, s_infinity_npc_bark_index == 2, 'sound\dialog\mission\m70\m70_infinity_dock_00114', FALSE, obj_marine_b, 0.0, "", "Marine 6 : Good luck with THAT one.", FALSE );
			
			dialog_line_npc( l_dialog_id, 5, s_infinity_npc_bark_index == 3, 'sound\dialog\mission\m70\m70_infinity_dock_00119', FALSE, obj_marine_a, 0.0, "", "Marine 1 : We�re supposed to be the biggest badasses in the fleet, and we�re running away?!?", FALSE  );
			dialog_line_npc( l_dialog_id, 6, s_infinity_npc_bark_index == 3, 'sound\dialog\mission\m70\m70_infinity_dock_00120', FALSE, obj_marine_b, 0.0, "","Marine 2 : What�s so friggin� tough about this Didact guy anyway? He�s one dude.", FALSE );
			
			dialog_line_npc( l_dialog_id, 7, s_infinity_npc_bark_index == 4, 'sound\dialog\mission\m70\m70_infinity_dock_00121', FALSE, obj_marine_a, 0.0, "", "Marine 3 : I thought we came here to figure out what happened with that thing on Ivanoff?", FALSE );
			dialog_line_npc( l_dialog_id, 8, s_infinity_npc_bark_index == 4, 'sound\dialog\mission\m70\m70_infinity_dock_00122', FALSE, obj_marine_b, 0.0, "", "Marine 4 : Yeah, and now we�re gonna bug out cuz we got a bloody nose. (This is) Stupid.", FALSE );
			dialog_line_npc( l_dialog_id, 9, s_infinity_npc_bark_index == 4, 'sound\dialog\mission\m70\m70_infinity_dock_00123', FALSE, obj_marine_b, 0.0, "", "Marine 3 : FISHDO, man. Keep cashin� the check.", FALSE );

		l_dialog_id = dialog_end( l_dialog_id, s_infinity_npc_bark_index >= 4, s_infinity_npc_bark_index >= 4, "" );

		if ( s_infinity_npc_bark_index < 4 ) then
			// set the time between that these marines are allowed to speak again
			l_post_reset_timer = game_tick_get() + seconds_to_frames( 7.5 );		
			
			sleep_until( (not volume_test_players(tv_trigger)) or (l_post_reset_timer < game_tick_get()), 1 ); 
		end

	until(  s_infinity_npc_bark_index >= 4, 1 );
	
end

// === f_dlg_infinity_comp_intercom::: Dialog
script dormant f_dlg_infinity_comp_intercom()
dprint( "f_dlg_infinity_comp_intercom" );
static long l_dialog_id = DEF_DIALOG_ID_NONE();

	if ( not dialog_background_id_active_check(l_dialog_id) ) then
	
		l_dialog_id = dialog_start_background( "INFINITY_COMP_INTERCOM", l_dialog_id, TRUE, DEF_DIALOG_STYLE_PLAY(), TRUE, "", 0.0 );
			dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m70\m70_infinity_dock_00111', FALSE, audio_infinitypa, 0.0, "", "Del Rio : All hands, this is the Captain. Infinity is preparing to depart Requiem and return to UNSC space.", TRUE);
			dialog_line_npc( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m70\m70_infinity_dock_00112', FALSE, audio_infinitypa, 0.0, "", "Del Rio : We mourn the fallen comrades we leave behind, but any victory requires sacrifice. Discipline.", TRUE);
			dialog_line_npc( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m70\m70_infinity_dock_00113', FALSE, audio_infinitypa, 0.0, "", "Del Rio : Most of all, victory requires patience. We have already won the most important battle - we now know the face of the enemy.", TRUE);
			dialog_line_npc( l_dialog_id, 3, TRUE, 'sound\dialog\mission\m70\m70_infinity_dock_00114', FALSE, audio_infinitypa, 0.0, "", "Del Rio : When we meet them again, they will know ours. Del Rio out.", TRUE);
		l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );

	end
	
end

// === f_dlg_infinity_pelican_01::: Dialog
script static void f_dlg_infinity_pelican_01()
dprint( "f_dlg_infinity_pelican_01" );
static long l_dialog_id = DEF_DIALOG_ID_NONE();
	kill_script(infinity_dock_pa_controller);
	sleep_forever(infinity_dock_pa_controller);
	if ( not dialog_background_id_active_check(l_dialog_id) ) then
	
		l_dialog_id = dialog_start_background( "INFINITY_PELICAN_01", l_dialog_id, TRUE, DEF_DIALOG_STYLE_INTERRUPT(), TRUE, "", 0.0 );			
			dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m70\m70_infinity_dock_00126', FALSE, pelican_vo_action_marker, 0.0, "", "Infinity System Voice : Attention. All Hands. Final call. Secure all hulls and prepare for immediate departure. Final call.", TRUE);
			dialog_line_npc( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m70\m70_infinity_dock_00127', FALSE, sq_marines_work_04.matt_01, 0.0, "", "Marine 1 : Master Chief, sir.", TRUE);
			dialog_line_npc( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m70\m70_infinity_dock_00128', FALSE, sq_inf_marines_stand_02.st_7, 0.0, "", "Marine 1 : Leave some for us, Chief.", TRUE);
			dialog_line_npc( l_dialog_id, 3, TRUE, 'sound\dialog\mission\m70\m70_infinity_dock_00129', FALSE, sq_inf_marines_stand_02.st_8, 0.0, "", "Marine 2 : Watch your back out there.", TRUE);
		l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
		sleep_s(5);
		wake(f_dialog_m70_infinity_marine_05);
	end
end


script static void f_dlg_infinity_pelican_02()
dprint( "f_dlg_infinity_pelican_02" );
static long l_dialog_id = DEF_DIALOG_ID_NONE();
	kill_script(m70_objective_1_nudge);
	sleep_forever(m70_objective_1_nudge);
	wake(f_dlg_flight_launch_start);
	sleep_s(.5);
	if ( not dialog_background_id_active_check(l_dialog_id) ) then
		l_dialog_id = dialog_start_background( "INFINITY_PELICAN_02", l_dialog_id, TRUE, DEF_DIALOG_STYLE_PLAY(), TRUE, "", 0.0 );
			dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m70\m70_infinity_dock_00130', FALSE, sq_inf_marines_stand_02.st_7, 0.0, "", "Marine 1 : Clear the deck!", TRUE);
		//	dialog_line_npc( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m70\m70_infinity_dock_00131', FALSE, NONE, 0.0, "", "Marine 2 : Clear the deck!", TRUE);
			//dialog_line_npc( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m70\m70_infinity_dock_00132', FALSE, sq_inf_marines_stand_02.st_7, 0.0, "", "Marine 1 : Back it up, people!", TRUE);
			dialog_line_npc( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m70\m70_infinity_dock_00133', FALSE, sq_inf_marines_stand_02.st_8, 0.0, "", "Marine 2 : Lowering the deck elevator. Step off.", TRUE);
		l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );

	end
	
end



/*script dormant f_dialog_m70_infinity_launch_tube()
dprint("f_dialog_m70_infinity_launch_tube");
local long l_dialog_id = L_dlg_flight_launch_start;

            l_dialog_id = dialog_start_foreground( "M70_INFINITY_LAUNCH_TUBE", L_dlg_flight_launch_start, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );
								dialog_line_cortana( L_dlg_flight_launch_start, 0, TRUE, 'sound\dialog\mission\m70\m70_infinity_launch_tube_00100', FALSE, NONE, 0.0, "", "Cortana : Initiating pre-flight diagnostics. Forward Autocannon - Check. Lateral Rail Turrets - Check. Main thrusters - Check. Auxiliary boosters - Check. Alright, keying engines... now." );
								dialog_line_cortana( L_dlg_flight_launch_start, 1, TRUE, 'sound\dialog\mission\m70\m70_infinity_launch_tube_00101', FALSE, NONE, 0.0, "", "Cortana : It may be a while 'til we find another ride home. You know that, right?" );
								dialog_line_chief( L_dlg_flight_launch_start, 2, TRUE, 'sound\dialog\mission\m70\m70_infinity_launch_tube_00105', FALSE, NONE, 0.0, "", "Master Chief : 'Seems like old times�?" );
								dialog_line_cortana( L_dlg_flight_launch_start, 3, TRUE, 'sound\dialog\mission\m70\m70_infinity_launch_tube_00106', FALSE, NONE, 0.0, "", "Cortana : Right. Controls are yours. We are cleared for launch." );
            l_dialog_id = dialog_end( L_dlg_flight_launch_start, TRUE, TRUE, "" );
end*/

// functions
// === f_dlg_flight_a_start::: Dialog
script dormant f_dlg_flight_launch_start()
dprint( "f_dlg_flight_a_start" );
	kill_script(m70_objective_1_nudge);
	sleep_forever(m70_objective_1_nudge);
	kill_script(f_dlg_infinity_pelican_01);
	kill_script(f_dlg_infinity_pelican_02);
	L_dlg_flight_launch_start = dialog_start_foreground( "FLIGHT_A_START", L_dlg_flight_launch_start, TRUE, DEF_DIALOG_STYLE_SKIP(), FALSE, "", 0.0 );
				dialog_line_cortana( L_dlg_flight_launch_start, 0, TRUE, 'sound\dialog\mission\m70\m70_infinity_launch_tube_00100', FALSE, NONE, 0.0, "", "Cortana : Initiating pre-flight diagnostics. Forward Autocannon - Check. Lateral Rail Turrets - Check. Main thrusters - Check. Auxiliary boosters - Check. Alright, keying engines... now." );
				sleep_s(3);
				dialog_line_cortana( L_dlg_flight_launch_start, 1, TRUE, 'sound\dialog\mission\m70\m70_infinity_launch_tube_00101', FALSE, NONE, 0.0, "", "Cortana : It may be a while 'til we find another ride home. You know that, right?" );
				dialog_line_chief( L_dlg_flight_launch_start, 2, TRUE, 'sound\dialog\mission\m70\m70_infinity_launch_tube_00105', FALSE, NONE, 0.0, "", "Master Chief : It'll be ok." );
				//dialog_line_cortana( L_dlg_flight_launch_start, 3, TRUE, 'sound\dialog\mission\m70\m70_infinity_launch_tube_00106', FALSE, NONE, 0.0, "", "Cortana : Right. Controls are yours. We are cleared for launch." );
	L_dlg_flight_launch_start = dialog_end( L_dlg_flight_launch_start, TRUE, TRUE, "" );
	thread(m70_objective_2_nudge());
end

// === f_dlg_flight_a_tutorial::: Dialog
script dormant f_dlg_flight_a_tutorial()
 //wake(m70_chapter_1);
//dprint( "f_dlg_flight_a_tutorial" );

kill_script(m70_objective_2_nudge);
	sleep_forever(m70_objective_2_nudge);

end



// -------------------------------------------------------------------------------------------------
// FLIGHT
// -------------------------------------------------------------------------------------------------

// -------------------------------------------------------------------------------------------------
// FLIGHT: GENERAL
// -------------------------------------------------------------------------------------------------
// variables



// functions


script dormant f_dlg_m70_first_flight_02()
dprint( "f_dlg_m70_first_flight_02" );
local long l_dialog_id = DEF_DIALOG_ID_NONE();
	
	l_dialog_id = dialog_start_foreground( "FIRST_FLIGHT_02", l_dialog_id, TRUE, DEF_DIALOG_STYLE_SKIP(), TRUE, "", 0.0 );
		dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m70\m70_first_flight_00102', FALSE, NONE, 0.0, "", "Cortana : And I was just starting to get used to her." );
	l_dialog_id = dialog_end( l_dialog_id, TRUE, FALSE, "" );
	
end





// === f_dlg_flight_craft_a::: Dialog
script static void f_dlg_flight_didact_kill_warning()
dprint( "f_dlg_flight_craft_a" );
	local short s_random = 0;
	local long l_dialog_id = DEF_DIALOG_ID_NONE();

	s_random = random_range(1, 4);

	if s_random == 1 then
		l_dialog_id = dialog_start_foreground( "didact_kill_warning_a", l_dialog_id, TRUE, DEF_DIALOG_STYLE_SKIP(), TRUE, "", 0.0 );
			dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m70\m70_first_flight_00103', FALSE, NONE, 0.0, "", "Cortana : Chief, these new Pelicans may handle a little looser than what you are used to. Better not to run before you can walk." );
		l_dialog_id = dialog_end( l_dialog_id, TRUE, FALSE, "" );
	elseif s_random == 2 then
		l_dialog_id = dialog_start_foreground( "didact_kill_warning_b", l_dialog_id, TRUE, DEF_DIALOG_STYLE_SKIP(), TRUE, "", 0.0 );
			dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m70\m70_first_flight_00105', FALSE, NONE, 0.0, "", "Cortana : OK. Since it�s not like you had time to get rated on these new Pelicans, you may want to get a feel for the controls before going head-to-head with the Didact." );
		l_dialog_id = dialog_end( l_dialog_id, TRUE, FALSE, "" );
	elseif s_random == 3 then
		l_dialog_id = dialog_start_foreground( "didact_kill_warning_b", l_dialog_id, TRUE, DEF_DIALOG_STYLE_SKIP(), TRUE, "", 0.0 );
			dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m70\m70_first_flight_00104', FALSE, NONE, 0.0, "", "Cortana : Chief, these new Pelicans may handle a little looser than what you are used to. Get a feel for the controls while I scan the area." );
		l_dialog_id = dialog_end( l_dialog_id, TRUE, FALSE, "" );
	end


end


// === f_dlg_flight_craft_a::: Dialog
script dormant f_dlg_flight_craft_a()
dprint( "f_dlg_flight_craft_a" );
local long l_dialog_id = DEF_DIALOG_ID_NONE();

	l_dialog_id = dialog_start_foreground( "FLIGHT_CRAFT_A", l_dialog_id, TRUE, DEF_DIALOG_STYLE_SKIP(), TRUE, "", 0.0 );
		dialog_line_cortana( l_dialog_id, 1, TRUE, NONE, FALSE, NONE, 0.0, "", "CORTANA: Watch out! [Craft name]!" );
	l_dialog_id = dialog_end( l_dialog_id, TRUE, FALSE, "" );
	
end

// === f_dlg_flight_craft_b::: Dialog
script dormant f_dlg_flight_craft_b()
dprint( "f_dlg_flight_craft_b" );
local long l_dialog_id = DEF_DIALOG_ID_NONE();
	
	l_dialog_id = dialog_start_foreground( "FLIGHT_CRAFT_B", l_dialog_id, TRUE, DEF_DIALOG_STYLE_SKIP(), TRUE, "", 0.0 );
		dialog_line_cortana( l_dialog_id, 1, TRUE, NONE, FALSE, NONE, 0.0, "", "CORTANA: Incoming [craft name]!" );
	l_dialog_id = dialog_end( l_dialog_id, TRUE, FALSE, "" );
	
end

// === f_dlg_flight_craft_c::: Dialog
script dormant f_dlg_flight_craft_c()
dprint( "f_dlg_flight_craft_c" );
local long l_dialog_id = DEF_DIALOG_ID_NONE();

	l_dialog_id = dialog_start_foreground( "FLIGHT_CRAFT_C", l_dialog_id, TRUE, DEF_DIALOG_STYLE_SKIP(), TRUE, "", 0.0 );
		dialog_line_cortana( l_dialog_id, 1, TRUE, NONE, FALSE, NONE, 0.0, "", "CORTANA: [Craft name] inbound!" );
	l_dialog_id = dialog_end( l_dialog_id, TRUE, FALSE, "" );
	
end

// === f_dlg_flight_cannon_warn::: Dialog
script dormant f_dlg_flight_cannon_warn()
dprint( "f_dlg_flight_cannon_warn" );
local long l_dialog_id = DEF_DIALOG_ID_NONE();

	l_dialog_id = dialog_start_foreground( "FLIGHT_CANNON_WARN", l_dialog_id, TRUE, DEF_DIALOG_STYLE_SKIP(), TRUE, "", 0.0 );
		dialog_line_cortana( l_dialog_id, 1, TRUE, NONE, FALSE, NONE, 0.0, "", "CORTANA: Energy cannons!  Look out!" );
	l_dialog_id = dialog_end( l_dialog_id, TRUE, FALSE, "" );
	
end

// === f_dlg_flight_cannon_tip::: Dialog
script dormant f_dlg_flight_cannon_tip()
dprint( "f_dlg_flight_cannon_tip" );
local long l_dialog_id = DEF_DIALOG_ID_NONE();

	l_dialog_id = dialog_start_foreground( "FLIGHT_CANNON_TIP", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), TRUE, "", 0.0 );
		dialog_line_cortana( l_dialog_id, 1, TRUE, NONE, FALSE, NONE, 0.0, "", "CORTANA: Chief, ship systems are picking up a massive charge from the location of Didact's ship." );
		dialog_line_chief( l_dialog_id, 2, TRUE, NONE, FALSE, NONE, 0.0, "", "CHIEF: Engines?" );
		dialog_line_cortana( l_dialog_id, 3, TRUE, NONE, FALSE, NONE, 0.0, "", "CORTANA: Not yet.  But things are certainly coming online." );
	l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
	
end

global long L_dlg_flight_didact_reveal = DEF_DIALOG_ID_NONE();

// === f_dlg_flight_didact_reveal::: Dialog
script dormant f_dlg_flight_didact_reveal()
dprint( "f_dlg_flight_didact_reveal" );
	b_objective_2_complete = TRUE;
	kill_script(m70_objective_2_nudge);
	sleep_forever(m70_objective_2_nudge);
	L_dlg_flight_didact_reveal = dialog_start_foreground( "FLIGHT_DIDACT_REVEAL", L_dlg_flight_didact_reveal, TRUE, DEF_DIALOG_STYLE_INTERRUPT(), FALSE, "", 0.0 );
		//cui_hud_show_radio_transmission_hud( "infinity_transmission_name" );
		//dialog_line_npc( L_dlg_flight_a_tutorial, 0, TRUE, 'sound\dialog\mission\m70\m70_first_flight_00100', FALSE, NONE, 0.0, "", "Infinity Comm : This is Infinity Actual, outbound on a heading of 232 mark 2. Activating sublight engines in 3... 2... 1... ignition.", TRUE);
	//	cui_hud_hide_radio_transmission_hud();
	//	sleep_s(2);
		dialog_line_cortana( L_dlg_flight_didact_reveal, 0, TRUE, 'sound\dialog\mission\m70\m70_first_flight_00106', FALSE, NONE, 0.0, "", "Cortana : Contact. Didact - dead ahead." );
		dialog_line_chief( L_dlg_flight_didact_reveal, 1, TRUE, 'sound\dialog\mission\m70\m70_rev_comm_first_flight_00100', FALSE, NONE, 0.0, "", "Master Chief: How do we get inside those shields?" );
		dialog_line_cortana( L_dlg_flight_didact_reveal, 2, TRUE, 'sound\dialog\mission\m70\m70_rev_comm_first_flight_00101', FALSE, NONE, 0.0, "", "Cortana : Marking two of the larger facilities on your HUD." );
		sleep_s(0.5);
		b_flight_main_spires_blip = TRUE;
		dialog_line_cortana( L_dlg_flight_didact_reveal, 3, TRUE, 'sound\dialog\mission\m70\m70_rev_comm_first_flight_00102', FALSE, NONE, 0.0, "", "Cortana : They're acting as traffic control for resources moving to and from the satellite." );
		thread(f_m70_objective_set(ct_obj_spire_first));
		dialog_line_cortana( L_dlg_flight_didact_reveal, 4, TRUE, 'sound\dialog\mission\m70\m70_rev_comm_first_flight_00103', FALSE, NONE, 0.0, "", "Cortana : If we disrupt their communications,  I can forge an override code and convince it to lower those defenses." );
		
	L_dlg_flight_didact_reveal = dialog_end( L_dlg_flight_didact_reveal, TRUE, TRUE, "" );
	thread(m70_objective_3_nudge());
end



/*// === f_dlg_flight_sentinels_origin::: Dialog
script dormant f_dlg_flight_sentinels_origin_A()
dprint( "f_dlg_flight_sentinels_origin" );
local long l_dialog_id = DEF_DIALOG_ID_NONE();
kill_script(m70_objective_2_nudge);
	sleep_forever(m70_objective_2_nudge);
	kill_script(m70_objective_3_nudge);
	sleep_forever(m70_objective_3_nudge);
	l_dialog_id = dialog_start_foreground( "FLIGHT_SENTINELS_ORIGIN_A", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 );
			dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m70\m70_first_flight_00109', FALSE, NONE, 0.0, "", "Cortana : Those spires are forming a defensive perimeter around the satellite. Evasive!" );
			dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m70\m70_first_flight_00111', FALSE, NONE, 0.0, "", "Cortana : Right before they attacked, I intercepted an exchange between those spires and two of the big stationary towers." );
			dialog_line_chief( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m70\m70_first_flight_00112', FALSE, NONE, 0.0, "", "Master Chief : Some type of command network?" );
			dialog_line_cortana( l_dialog_id, 3, TRUE, 'sound\dialog\mission\m70\m70_first_flight_00113', FALSE, NONE, 0.0, "", "Cortana : I think so. Disrupting the Didact's communications could cripple them and give us an open shot at his front door." );
	l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
			thread(m70_objective_3b_nudge());
	
end*/

script dormant f_dlg_flight_sentinels_origin_B()
dprint( "f_dlg_flight_sentinels_origin_B" );
local long l_dialog_id = DEF_DIALOG_ID_NONE();

	l_dialog_id = dialog_start_foreground( "FLIGHT_SENTINELS_ORIGIN_B", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 );
		//dialog_line_cortana( l_dialog_id, 1, TRUE, NONE, FALSE, NONE, 0.0, "", "CORTANA: There we go!  Sentinels are coming from these two spires." );
	l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
	
end


script dormant f_dlg_flight_third_spire_early()
dprint( "f_dlg_flight_first_spire" );
/*local long l_dialog_id = DEF_DIALOG_ID_NONE();
	
	l_dialog_id = dialog_start_foreground( "flight_first_spire", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 );
		dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m70\m70_spire3_early_00100', FALSE, NONE, 0.0, "", "Cortana : The tower we�re approaching is the source of the defense spires. With that much firepower at its desposal, you might want to give it a wide berth." );
	l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );*/
	
end

script dormant f_dlg_flight_third_spire_early_2()
dprint( "f_dlg_flight_first_spire" );
/*local long l_dialog_id = DEF_DIALOG_ID_NONE();

	l_dialog_id = dialog_start_foreground( "flight_first_spire", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 );
			dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m70\m70_spire3_early_00100a', FALSE, NONE, 0.0, "", "Cortana : Look. This tower's creating the defense spires. With that much firepower at its disposal, you might want to give it a wide berth." );
	l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );*/
	
end

script dormant f_dlg_flight_third_spire_early_3()
dprint( "f_dlg_flight_first_spire_3" );
/*local long l_dialog_id = DEF_DIALOG_ID_NONE();

	l_dialog_id = dialog_start_foreground( "flight_first_spire_", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 );
		dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m70\m70_spire3_early_00100b', FALSE, NONE, 0.0, "", "Cortana : We should steer clear of the production tower. If it starts spitting out more defense spires, we could have our hands full." );
	l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );*/
	
end

script dormant f_dlg_flight_first_spire()
dprint( "f_dlg_flight_first_spire" );
local long l_dialog_id = DEF_DIALOG_ID_NONE();
b_objective_2_complete = TRUE;
	l_dialog_id = dialog_start_foreground( "f_dlg_flight_first_spire", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 );
				dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m70\m70_rev_all_2nd_flight_00104', FALSE, NONE, 0.0, "", "Cortana : All right. Take us in." );
	l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
	
end

// === f_dlg_flight_spire_collision::: Dialog
script static void f_dlg_flight_spire_collision()
dprint( "f_dlg_flight_spire_collision" );
static long l_dialog_id = DEF_DIALOG_ID_NONE();
static short s_collision_cnt = 0;

	if ( not dialog_foreground_id_active_check(l_dialog_id) and (not dialog_id_invalid_check(l_dialog_id)) ) then

		l_dialog_id = dialog_start_foreground( "FLIGHT_SPIRE_COLLISION", l_dialog_id, TRUE, DEF_DIALOG_STYLE_SKIP(), TRUE, "", 0.0 );

			// increment collision count
			if ( dialog_foreground_id_active_check(l_dialog_id) ) then
				s_collision_cnt = s_collision_cnt + 1;
			end

			dialog_line_cortana( l_dialog_id, 1, (s_collision_cnt == 1), NONE, FALSE, NONE, 0.0, "", "CORTANA: Nice flying, cowboy." );
			dialog_line_cortana( l_dialog_id, 2, (s_collision_cnt == 2), NONE, FALSE, NONE, 0.0, "", "CORTANA: Hey! Watch the paint!" );
			dialog_line_cortana( l_dialog_id, 3, (s_collision_cnt == 3), NONE, FALSE, NONE, 0.0, "", "CORTANA: Someday we should return an aircraft in one piece." );
		l_dialog_id = dialog_end( l_dialog_id, s_collision_cnt >= 3, s_collision_cnt >= 3, "" );
		
	end
	
end/*

script dormant f_dlg_first_defense_spire()
dprint( "f_dlg_first_defense_spire" );
local long l_dialog_id = DEF_DIALOG_ID_NONE();

	l_dialog_id = dialog_start_foreground( "first_defense_spire", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 );
		dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m70\m70_first_defense_spire_00100', FALSE, NONE, 0.0, "", "Cortana : Nice, Chief, but I wouldn't celebrate just yet. I'm detecting a replacement spire being generated on the far side of the docking area. We'll want to reach the command network before the backup arrives." );
	l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
	
end*/


script dormant f_dlg_flight_exit_through_maw()
dprint( "f_dlg_flight_exit_through_maw" );
local short s_random = 0;
	local long l_dialog_id = DEF_DIALOG_ID_NONE();

	s_random = random_range(1, 2);

	if s_random == 1 then
		l_dialog_id = dialog_start_foreground( "flight_exit_through_maw", l_dialog_id, TRUE, DEF_DIALOG_STYLE_SKIP(), TRUE, "", 0.0 );
			dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m70\m70_maw_00101', FALSE, NONE, 0.0, "", "Cortana : Careful, there's a gravimetric disturbance near the lip of the shell. I don't know what impact it will have on the Pelican." );
		l_dialog_id = dialog_end( l_dialog_id, TRUE, FALSE, "" );
	elseif s_random == 2 then
		l_dialog_id = dialog_start_foreground( "flight_exit_through_maw", l_dialog_id, TRUE, DEF_DIALOG_STYLE_SKIP(), TRUE, "", 0.0 );
			dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m70\m70_maw_00102', FALSE, NONE, 0.0, "", "Cortana : Heading right for the exit won't stop the Didact." );
		l_dialog_id = dialog_end( l_dialog_id, TRUE, FALSE, "" );

	end
	
end


script dormant f_dlg_flight_first_spire_approach()
dprint( "f_dlg_first_spire_open" );
local long l_dialog_id = DEF_DIALOG_ID_NONE();
	kill_script(m70_objective_3_nudge);
	sleep_forever(m70_objective_3_nudge);

	l_dialog_id = dialog_start_foreground( "first_spire_open", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 );
		dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m70\m70_first_spire_00105', FALSE, NONE, 0.0, "", "Cortana : Set her down." );
	l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
	
end






//dialog_foreground_id_line_index_check_greater( long l_dialog_id, short s_line_index )
// -------------------------------------------------------------------------------------------------
// FLIGHT: A
// -------------------------------------------------------------------------------------------------
// variables

// functions
// === f_dlg_flight_a_start::: Dialog
/*script dormant f_dlg_flight_launch_start()
dprint( "f_dlg_flight_a_start" );

	local long l_dialog_id = DEF_DIALOG_ID_NONE();
	l_dialog_id = dialog_start_foreground( "FLIGHT_LAUNCH_START", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );
								dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m70\m70_infinity_launch_tube_00100', FALSE, NONE, 0.0, "", "Cortana : Initiating pre-flight diagnostics. Forward Autocannon - Check." );
								dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m70\m70_infinity_launch_tube_00101', FALSE, NONE, 0.0, "", "Cortana : It may be a while 'til we find another ride home. You know that, right?" );
								dialog_line_chief( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m70\m70_infinity_launch_tube_00105', FALSE, NONE, 0.0, "", "Master Chief : 'Seems like old times�?" );
								dialog_line_cortana( l_dialog_id, 3, TRUE, 'sound\dialog\mission\m70\m70_infinity_launch_tube_00106', FALSE, NONE, 0.0, "", "Cortana : Right. Controls are yours. We are cleared for launch." );
	l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
	thread(m70_objective_2_nudge()); 
	
end*/

/*
// === f_dlg_flight_a_tutorial::: Dialog
script dormant f_dlg_flight_a_tutorial()
dprint( "f_dlg_flight_a_tutorial" );
local long l_dialog_id = DEF_DIALOG_ID_NONE();

	l_dialog_id = dialog_start_foreground( "FLIGHT_A_TUTORIAL", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );                       								
		dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m70\m70_first_flight_00104', FALSE, NONE, 0.0, "", "Cortana : Chief, these new Pelicans may handle a little looser than what you are used to. Get a feel for the controls while I scan the area." );
		dialog_line_cortana( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m70\m70_first_flight_00105', FALSE, NONE, 0.0, "", "Cortana : OK. Since it�s not like you had time to get rated on these new Pelicans, you may want to get a feel for the controls before going head-to-head with the Didact." );
	l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
	
end*/

script dormant f_dlg_spires_start_moving()
dprint( "f_dlg_spires_start_moving" );
local long l_dialog_id = DEF_DIALOG_ID_NONE();

	l_dialog_id = dialog_start_foreground( "f_dlg_spires_start_moving", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), TRUE, "", 0.0 );
		dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m70\m70_first_flight_00109', FALSE, NONE, 0.0, "", "Cortana : Those spires are forming a perimeter around the satellite. Evasive!" );
		dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m70\m70_first_flight_00111', FALSE, NONE, 0.0, "", "Cortana : Right before they attacked, I intercepted an exchange between those defense spires and two of the  towers descending from the roof." );
		dialog_line_chief( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m70\m70_first_flight_00112', FALSE, NONE, 0.0, "", "Master Chief : Some type of command network?" );
		dialog_line_cortana( l_dialog_id, 3, TRUE, 'sound\dialog\mission\m70\m70_first_flight_00113', FALSE, NONE, 0.0, "", "Cortana : I think so. Disrupting their communications could cripple the spires and give us an open shot at the Didact�s front door." );

	l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
	
end




// === f_dlg_flight_a_cov_warning::: Dialog
script dormant f_dlg_flight_a_cov_warning()
dprint( "f_dlg_flight_a_cov_warning" );
local long l_dialog_id = DEF_DIALOG_ID_NONE();

	l_dialog_id = dialog_start_foreground( "FLIGHT_A_TUTORIAL", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), TRUE, "", 0.0 );
		dialog_line_cortana( l_dialog_id, 1, TRUE, NONE, FALSE, NONE, 0.0, "", "CORTANA: Be Carefull Chief, Lots of Covenant craft in the area, protecting their god while he builds his ship." );
	l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
	
end

// === f_dlg_flight_a_incoming::: Dialog
script dormant f_dlg_flight_a_incoming()
dprint( "f_dlg_flight_a_incoming" );
local long l_dialog_id = DEF_DIALOG_ID_NONE();

	l_dialog_id = dialog_start_foreground( "FLIGHT_A_INCOMING", l_dialog_id, TRUE, DEF_DIALOG_STYLE_SKIP(), FALSE, "", 0.0 );
		dialog_line_cortana( l_dialog_id, 1, TRUE, NONE, FALSE, NONE, 0.0, "", "CORTANA: Chief!  Incoming Covenant!" );
	l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
	
end

// === f_dlg_flight_a_energising::: Dialog
script dormant f_dlg_flight_a_energising()
dprint( "f_dlg_flight_a_energising" );
local long l_dialog_id = DEF_DIALOG_ID_NONE();

	l_dialog_id = dialog_start_foreground( "FLIGHT_A_ENERGISING", l_dialog_id, TRUE, DEF_DIALOG_STYLE_SKIP(), FALSE, "", 0.0 );
		dialog_line_cortana( l_dialog_id, 1, TRUE, NONE, FALSE, NONE, 0.0, "", "CORTANA: Changing altitude can help avoid cannon fire." );
	l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
	
end

// -------------------------------------------------------------------------------------------------
// FLIGHT: B
// -------------------------------------------------------------------------------------------------
// variables

// functions
// === f_dlg_flight_b_sentinels::: Dialog
script dormant f_dlg_flight_second_didact_ship_01()
dprint( "f_dlg_flight_b_start" );
local long l_dialog_id = DEF_DIALOG_ID_NONE();

	l_dialog_id = dialog_start_foreground( "FLIGHT_2_START", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 );
		dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m70\m70_rev_all_2nd_flight_00103', FALSE, NONE, 0.0, "", "Cortana : The Didact's shields are weakened but I'm detecting increased activity inside the satellite. And something tells me that's probably not a good thing." );
		//dialog_line_chief( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m70\m70_second_flight_00102', FALSE, NONE, 0.0, "", "Master Chief : What's that forming around the Didact's satellite?" );
	//	dialog_line_cortana( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m70\m70_second_flight_00103', FALSE, NONE, 0.0, "", "Cortana : [From the look of those segments,] I'd say he's constructing some type of starship." );
	//	dialog_line_cortana( l_dialog_id, 3, TRUE, 'sound\dialog\mission\m70\m70_second_flight_00104', FALSE, NONE, 0.0, "", "Cortana : And at the rate it's coming together, we'd better hurry if we want to stop him from leaving." );
	l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );

end
/*
// === f_dlg_flight_b_didact_01::: Dialog
script dormant f_dlg_flight_b_didact_01()
dprint( "f_dlg_flight_b_didact_01" );
local long l_dialog_id = DEF_DIALOG_ID_NONE();

	l_dialog_id = dialog_start_foreground( "FLIGHT_B_DIDACT_01", l_dialog_id, TRUE, DEF_DIALOG_STYLE_INTERRUPT(), FALSE, "", 0.0 );		
			dialog_line_didact( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m70\m70_second_flight_00105', FALSE, NONE, 0.0, "", "Didact : Your continued actions tread in the worlds between honor and foolishness." );
			dialog_line_chief( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m70\m70_second_flight_00106', FALSE, NONE, 0.0, "", "Master Chief : Cortana, are you hearing him?" );
			dialog_line_didact( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m70\m70_second_flight_00107', FALSE, NONE, 0.0, "", "Didact : I will leave this world and retrieve the Composer. You cannot doubt this." );
			dialog_line_cortana( l_dialog_id, 3, TRUE, 'sound\dialog\mission\m70\m70_second_flight_00108', FALSE, NONE, 0.0, "", "Cortana : I don't hear anything. Didact?" );
			dialog_line_didact( l_dialog_id, 4, TRUE, 'sound\dialog\mission\m70\m70_second_flight_00109', FALSE, NONE, 0.0, "", "Didact : So then... which of us does this pointless resistence debase?" );
			dialog_line_chief( l_dialog_id, 5, TRUE, 'sound\dialog\mission\m70\m70_second_flight_00110', FALSE, NONE, 0.0, "", "Master Chief : Is it possible you can't hear him because of whatever the Librarian did to me?" );
			dialog_line_cortana( l_dialog_id, 6, TRUE, 'sound\dialog\mission\m70\m70_second_flight_00111', FALSE, NONE, 0.0, "", "Cortana : Nothing comes out of thin air. If he's talking, I'll find a way to hear him." );
	l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
	
end*/

/*// === f_dlg_flight_b_didact_02::: Dialog
script dormant f_dlg_flight_b_didact_02()
dprint( "f_dlg_flight_b_didact_02" );
local long l_dialog_id = DEF_DIALOG_ID_NONE();

	l_dialog_id = dialog_start_foreground( "FLIGHT_B_DIDACT_02", l_dialog_id, TRUE, DEF_DIALOG_STYLE_INTERRUPT(), FALSE, "", 0.0 );
		dialog_line_didact ( l_dialog_id, 1, TRUE, NONE, FALSE, NONE, 0.0, "", "DIDACT: The Librarian's mindstate is sealed away, beyond reach of aiding you, Reclaimer." );
		dialog_line_chief  ( l_dialog_id, 2, TRUE, NONE, FALSE, NONE, 0.0, "", "CHIEF: I don't need her help." );
		dialog_line_cortana( l_dialog_id, 3, TRUE, NONE, FALSE, NONE, 0.0, "", "CORTANA: Who?  Me?" );
		dialog_line_didact ( l_dialog_id, 4, TRUE, NONE, FALSE, NONE, 0.0, "", "DIDACT: Is that so?" );
		dialog_line_cortana( l_dialog_id, 5, TRUE, NONE, FALSE, NONE, 0.0, "", "CORTANA: Since when don't you need my help?" );
		dialog_line_didact ( l_dialog_id, 6, TRUE, NONE, FALSE, NONE, 0.0, "", "DIDACT: We shall see." );
		dialog_line_chief  ( l_dialog_id, 7, TRUE, NONE, FALSE, NONE, 0.0, "", "CHIEF: So you can hear me." );
		dialog_line_cortana( l_dialog_id, 8, TRUE, NONE, FALSE, NONE, 0.0, "", "CORTANA: Of course I can hear-- (beat)  You...aren't talking to me, are you?" );
		dialog_line_didact ( l_dialog_id, 9, TRUE, NONE, FALSE, NONE, 0.0, "", "DIDACT: I hear all on this world, human.  I see.  I am all." );
	l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
	
end*/


// === f_dlg_flight_b_didact_01::: Dialog
script static void f_dlg_flight_second_spire_approach()
dprint( "f_dlg_second_spire_approach" );
local long l_dialog_id = DEF_DIALOG_ID_NONE();

	l_dialog_id = dialog_start_foreground( "FLIGHT_SECOND_SPIRE_APPROACH", l_dialog_id, TRUE, DEF_DIALOG_STYLE_INTERRUPT(), FALSE, "", 0.0 );		
			dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m70\m70_rev_all_2nd_flight_00105', FALSE, NONE, 0.0, "", "Cortana : Set us down." );
	l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
	
end


script dormant f_dlg_flight_second_didact_ship_02()
dprint( "f_dlg_second_spire_approach" );
local long l_dialog_id = DEF_DIALOG_ID_NONE();

	l_dialog_id = dialog_start_foreground( "FLIGHT_SECOND_DIDACT_SHIP", l_dialog_id, TRUE, DEF_DIALOG_STYLE_INTERRUPT(), FALSE, "", 0.0 );		
			dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m70\m70_rev_all_2nd_flight_00103', FALSE, NONE, 0.0, "", "Cortana : The Didact's shields are weakened but I'm detecting increased activity inside the satellite. And something tells me that's probably not a good thing." );
	l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
	
end

script dormant f_dlg_second_spire_destroy()
dprint( "f_dlg_second_flight_destroy" );
local long l_dialog_id = DEF_DIALOG_ID_NONE();

	l_dialog_id = dialog_start_foreground( "SECOND_FLIGHT_DESTROY", l_dialog_id, TRUE, DEF_DIALOG_STYLE_INTERRUPT(), FALSE, "", 0.0 );		
	//		dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m70\m70_second_flight_00113', FALSE, NONE, 0.0, "", "Cortana : Good work. ." );
	l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
	
end
		

// === f_dlg_flight_b_touchdown::: Dialog
script dormant f_dlg_flight_b_touchdown()
dprint( "f_dlg_flight_b_touchdown" );
local long l_dialog_id = DEF_DIALOG_ID_NONE();

	l_dialog_id = dialog_start_foreground( "FLIGHT_B_TOUCHDOWN", l_dialog_id, TRUE, DEF_DIALOG_STYLE_INTERRUPT(), FALSE, "", 0.0 );
		dialog_line_cortana( l_dialog_id, 1, TRUE, NONE, FALSE, NONE, 0.0, "", "CORTANA: Let's get this done.  I'm tired of not being the only voice in your head." );
	l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
	
end

// -------------------------------------------------------------------------------------------------
// FLIGHT: C
// -------------------------------------------------------------------------------------------------
// variables

// functions
// === f_dlg_flight_c_sentinels::: Dialog
/*
script dormant f_dlg_flight_c_sentinels()
dprint( "f_dlg_flight_c_sentinels" );
local long l_dialog_id = DEF_DIALOG_ID_NONE();

	l_dialog_id = dialog_start_foreground( "FLIGHT_C_SENTINELS", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 );
		dialog_line_cortana( l_dialog_id, 1, TRUE, NONE, FALSE, NONE, 0.0, "", "CORTANA: There's the final source of Sentinels." );
		dialog_line_cortana( l_dialog_id, 2, TRUE, NONE, FALSE, NONE, 0.0, "", "CORTANA: Didn't see it at first, but I'm putting up a waypoint for it now." );
	l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
	
end
*/
// === f_dlg_flight_c_covenant::: Dialog
script dormant f_dlg_flight_third_spire_03()
dprint( "f_dlg_flight_third_spire_03" );
local long l_dialog_id = DEF_DIALOG_ID_NONE();

	l_dialog_id = dialog_start_foreground( "FLIGHT_C_COVENANT", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 );
		dialog_line_didact( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m70\m70_rev_didact_00100', FALSE, NONE, 0.0, "", "Didact: Do you truly believe these theatrics can prevent my departure? Embrace your sad fate and retain your nobility. I am already beyond you." );
		dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m70\m70_third_flight_pelican_00103', FALSE, NONE, 0.0, "", "Cortana : He knows what we're trying to do.  If we try to get too close to that ship, we're dead." );
		//wake(f_dlg_flight_third_spire_03_background);
		dialog_line_cortana( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m70\m70_third_flight_pelican_00108', FALSE, NONE, 0.0, "", "Cortana : I� I have an idea.  Head for that waypoint." );
		sleep_s(0.25);
		f_blip_flag(flg_spire_03_approach, "recon");	
		b_cortana_bliped_sp03 = TRUE;
	l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
	
end

script dormant f_dlg_flight_third_spire_03_background()
dprint( "f_dlg_flight_third_spire_03_background" );
local long l_dialog_id = DEF_DIALOG_ID_NONE();

	l_dialog_id = dialog_start_background( "THIRD_SPIRE_03_BACKGROUND", l_dialog_id, TRUE, DEF_DIALOG_STYLE_PLAY(), FALSE, "", 0.0 );
		dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m70\Play_m70_third_flight_00102_rampancy', FALSE, NONE, 0.0, "", "Cortana : DON'T BE RIDICULOUS!" );
	l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
	
end
/*
// === f_dlg_flight_c_turrets::: Dialog
script dormant f_dlg_flight_c_turrets()
dprint( "f_dlg_flight_c_turrets" );
local long l_dialog_id = DEF_DIALOG_ID_NONE();

	l_dialog_id = dialog_start_foreground( "FLIGHT_C_TURRETS", l_dialog_id, TRUE, DEF_DIALOG_STYLE_SKIP(), FALSE, "", 0.0 );
		dialog_line_cortana( l_dialog_id, 1, TRUE, NONE, FALSE, NONE, 0.0, "", "CORTANA: It's almost like Didact's getting serious about you." );
	l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
	
end*/
/*
// === xxx::: Dialog
script dormant f_dlg_flight_c_destination()
dprint( "f_dlg_flight_c_destination" );
local long l_dialog_id = DEF_DIALOG_ID_NONE();

	l_dialog_id = dialog_start_foreground( "FLIGHT_C_DESTINATION", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 );		
			dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m70\m70_third_flight_00103', FALSE, NONE, 0.0, "", "Cortana : Chief, I'm setting a waypoint!" );
			dialog_line_chief( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m70\m70_third_flight_00104', FALSE, NONE, 0.0, "", "Master Chief : Where?" );
			dialog_line_cortana( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m70\m70_third_flight_00105', FALSE, NONE, 0.0, "", "Cortana : The production tower that created the spires. Just because Didact can't use them anymore doesn't mean we can't. GO." );
			dialog_line_cortana( l_dialog_id, 3, TRUE, 'sound\dialog\mission\m70\m70_third_flight_00106', FALSE, NONE, 0.0, "", "Cortana : Chief, trust me - our only option to stop Didact is to get to that production spire." );
	l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
	
end
*/

// === xxx::: Dialog
script static void f_dlg_flight_c_didact_ship( short s_index)
dprint( "f_dlg_flight_c_didact_ship" );


	local long l_dialog_id = DEF_DIALOG_ID_NONE();
	if ( s_index == 1 ) then
	l_dialog_id = dialog_start_foreground( "FLIGHT_C_DIDACT", l_dialog_id, TRUE, DEF_DIALOG_STYLE_INTERRUPT(), FALSE, "", 0.0 );
			dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m70\m70_rev_cortana_00101', FALSE, NONE, 0.0, "", "Cortana : The Didact's trying to stop us!" );
			dialog_line_chief( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m70\m70_third_flight_pelican_00101', FALSE, NONE, 0.0, "", "Master Chief : Divert all power to the engines." );
			dialog_line_cortana( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m70\m70_third_flight_pelican_00102', FALSE, NONE, 0.0, "", "Cortana : It won't matter! The Pelican's breaking up, we have to pull back!" );
	l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
	end
	if ( s_index == 2 ) then
		l_dialog_id = dialog_start_foreground( "FLIGHT_C_DIDACT", l_dialog_id, TRUE, DEF_DIALOG_STYLE_INTERRUPT(), FALSE, "", 0.0 );
			dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m70\m70_third_flight_pelican_00100', FALSE, NONE, 0.0, "", "Cortana : The Pelican can't take much more of this�!" );
			dialog_line_chief( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m70\m70_third_flight_pelican_00104', FALSE, NONE, 0.0, "", "Master Chief : I don't care how we do it, but we're not letting the Didact leave this planet." );
			dialog_line_cortana( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m70\m70_third_flight_pelican_00106', FALSE, NONE, 0.0, "", "Cortana : This isn't the way!" );
	l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
	end
	sleep_s(30);
	thread(f_nar_flight_03_didact_ship());
end

script static void f_dlg_flight_01_defense( short s_index)
dprint( "f_dlg_flight_01_defense" );


	local long l_dialog_id = DEF_DIALOG_ID_NONE();
	if ( s_index == 1 ) then
	l_dialog_id = dialog_start_foreground( "FLIGHT_A_DEFENSE", l_dialog_id, TRUE, DEF_DIALOG_STYLE_INTERRUPT(), FALSE, "", 0.0 );
			dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m70\m70_rev_all_1st_flight_00101', FALSE, NONE, 0.0, "", "Cortana : Be careful around these smaller defense spires. I'm detecting propulsion units and I'm betting they can outrun us if they want to." );
			
	l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
	end
	if ( s_index == 2 ) then
		l_dialog_id = dialog_start_foreground( "FLIGHT_A_DEFENSE", l_dialog_id, TRUE, DEF_DIALOG_STYLE_INTERRUPT(), FALSE, "", 0.0 );
			dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m70\m70_rev_all_1st_flight_00102', FALSE, NONE, 0.0, "", "Cortana : We can hammer on these defense spires all day, but unless we disable those bigger towers, we are not getting on that ship." );
			
	l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
	end
	sleep_s(15);
	thread(f_nar_flight_01_defense());
end


// -------------------------------------------------------------------------------------------------
// SPIRES
// -------------------------------------------------------------------------------------------------

// -------------------------------------------------------------------------------------------------
// SPIRE: 01
// -------------------------------------------------------------------------------------------------
// variables

// functions
// === f_dlg_spire_01_enter_reminder::: Dialog
script dormant f_dlg_spire_01_enter_reminder()
dprint( "f_dlg_spire_01_enter_reminder" );
local long l_dialog_id = DEF_DIALOG_ID_NONE();

	l_dialog_id = dialog_start_foreground( "SPIRE_01_ENTER_REMINDER", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 );
		dialog_line_cortana( l_dialog_id, 1, TRUE, NONE, FALSE, NONE, 0.0, "", "CORTANA: What are you waiting for?  The Spire is open." );
	l_dialog_id = dialog_end( l_dialog_id, FALSE, FALSE, "" );

end

// === f_dlg_spire_01_enter_radar::: Dialog
script dormant f_dlg_spire_01_enter_first()
dprint( "f_dlg_spire_01_enter_radar" );
local long l_dialog_id = DEF_DIALOG_ID_NONE();
		kill_script(m70_objective_3_nudge);
	sleep_forever(m70_objective_3_nudge);
	l_dialog_id = dialog_start_foreground( "SPIRE_01_ENTER_RADAR", l_dialog_id, TRUE, DEF_DIALOG_STYLE_INTERRUPT(), FALSE, "", 0.0 );
			dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m70\m70_rev_comm_spire1_gondolas_00100', FALSE, NONE, 0.0, "", "Cortana : This tower's directing traffic to the Didact's satellite through a carrier wave generator located somewhere inside." );
			hud_rampancy_players_set( 0.7 );
			dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m70\m70_first_spire_00113', FALSE, NONE, 0.0, "", "Cortana : Of course, if Infinity wasn't on its way back to Earth, locating and disabling it would be trivial." );
			dialog_line_chief( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m70\m70_first_spire_00114', FALSE, NONE, 0.0, "", "Master Chief : We can handle it." );
			dialog_line_cortana( l_dialog_id, 3, TRUE, 'sound\dialog\mission\m70\m70_first_spire_00115', FALSE, NONE, 0.0, "", "Cortana : That's hardly the point, is it?" );
			hud_rampancy_players_set( 0.0 );
			thread(f_m70_objective_set(ct_obj_spire_01));
	l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );

end

script dormant f_dlg_spire_01_first_gondola_dock()
dprint( "f_dlg_spire_01_gondola_start_platform" );
local long l_dialog_id = DEF_DIALOG_ID_NONE();

	l_dialog_id = dialog_start_foreground( "START_PLATFORM", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 );
			dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m70\m70_spire1_gondolas_00100', FALSE, NONE, 0.0, "", "Cortana : I've found the carrier wave generator. It's on the opposite end of this chamber." );
			
	l_dialog_id = dialog_end( l_dialog_id, FALSE, FALSE, "" );
	sleep_s(1);
	f_blip_flag(flg_sp01_shield_lock, "neutralize");	
end

global long L_dlg_gondola_enter = DEF_DIALOG_ID_NONE();

script dormant f_dlg_spire_01_first_gondola_nudge()
dprint( "f_dlg_spire_02_gondola_enter" );

	L_dlg_gondola_enter = dialog_start_foreground( "GONDOLA_ENTER", L_dlg_gondola_enter, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 );
			dialog_line_cortana( L_dlg_gondola_enter, 0, TRUE, 'sound\dialog\mission\m70\m70_spire1_gondolas_00101', FALSE, NONE, 0.0, "", "Cortana : We can use this gondola to cross to the other side. Find the activation switch." );
	L_dlg_gondola_enter = dialog_end( L_dlg_gondola_enter, FALSE, FALSE, "" );
		b_blip_gondola_start = TRUE;

end



script dormant f_dlg_spire_01_gondola_moving()
dprint( "f_dlg_spire_01_gondola_moving" );
local long l_dialog_id = DEF_DIALOG_ID_NONE();

	l_dialog_id = dialog_start_foreground( "GONDOLA_ENTER", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 );
	hud_play_pip_from_tag( bink\Campaign\M70_A_60 );
			dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m70\m70_spire1_gondolas_00102', FALSE, NONE, 0.0, "", "Cortana : To take a page out of our old playbook, I'm tuning your shields to emit an EMP at the same frequency as the spire communications." );
			dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m70\m70_spire1_gondolas_00122', FALSE, NONE, 0.0, "", "Cortana : All you'll need to do to trigger it is to make contact with the carrier wave generator." );

	l_dialog_id = dialog_end( l_dialog_id, FALSE, FALSE, "" );

end

script dormant f_dlg_spire_01_gondola_taking_fire()
dprint( "f_dlg_spire_01_gondola_taking_fire" );
local long l_dialog_id = DEF_DIALOG_ID_NONE();

	l_dialog_id = dialog_start_foreground( "TAKING_FIRE", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 );
			dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m70\m70_spire1_gondolas_00103', FALSE, NONE, 0.0, "", "Cortana : Taking fire! Starboard side!" );
	l_dialog_id = dialog_end( l_dialog_id, FALSE, FALSE, "" );

end



script dormant f_dlg_spire_01_first_gondola_stop_tower_1()
dprint( "f_dlg_spire_01_covenant_attack" );
local long l_dialog_id = DEF_DIALOG_ID_NONE();

	l_dialog_id = dialog_start_foreground( "GONDOLA_ENTER", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 );
		dialog_line_chief( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m70\m70_spire1_gondolas_00104', FALSE, NONE, 0.0, "", "Master Chief : Why are we stopping?" );
		hud_rampancy_players_set( 0.6 );
		dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m70\m70_spire1_gondolas_00124', FALSE, NONE, 0.0, "", "Cortana : Stopping?" );
		hud_rampancy_players_set( 0.0 );
		dialog_line_cortana( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m70\m70_spire1_gondolas_00105', FALSE, NONE, 0.0, "", "Cortana : They've... they've overridden the gondola controls!" );
		
		dialog_line_chief( l_dialog_id, 3, TRUE, 'sound\dialog\mission\m70\m70_spire1_gondolas_00106', FALSE, NONE, 0.0, "", "Master Chief : Light up the Override on the HUD." );
		hud_rampancy_players_set( 0.7 );
		sleep_s(1.5);
		dialog_line_chief( l_dialog_id, 4, TRUE, 'sound\dialog\mission\m70\m70_spire1_gondolas_00125', FALSE, NONE, 0.0, "", "Master Chief : Cortana, the location of the override." );
		hud_rampancy_players_set( 0.0 );
		dialog_line_cortana( l_dialog_id, 5, TRUE, 'sound\dialog\mission\m70\m70_spire1_gondolas_00126', FALSE, NONE, 0.0, "", "Cortana : Here!" );
		b_gondola_waypoint_1 = TRUE;
	l_dialog_id = dialog_end( l_dialog_id, FALSE, FALSE, "" );

end


script dormant f_dlg_spire1_gondola_button_release()
dprint( "f_dlg_spire1_button_release" );
local long l_dialog_id = DEF_DIALOG_ID_NONE();

	l_dialog_id = dialog_start_foreground( "BUTTON_RELEASE", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 );
			dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m70\m70_spire1_gondolas_00107', FALSE, NONE, 0.0, "", "Cortana : OK. The lockout has been released but--" );
	l_dialog_id = dialog_end( l_dialog_id, FALSE, FALSE, "" );
//	thread(f_sp01_null_blips());
	//sleep_s(1);
	//wake(f_dlg_spire_01_first_gondola_tower_1_end);
end

script dormant f_dlg_spire_01_first_gondola_tower_1_end()
dprint( "f_dlg_spire1_button_release_02" );
local long l_dialog_id = DEF_DIALOG_ID_NONE();

	l_dialog_id = dialog_start_foreground( "BUTTON_RELEASE_2", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 );
			dialog_line_chief( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m70\m70_spire1_gondolas_00108', FALSE, NONE, 0.0, "", "Master Chief : Where�d they all go?" );
			dialog_line_cortana( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m70\m70_spire1_gondolas_00109', FALSE, NONE, 0.0, "", "Cortana : I'm... not sure. Regardless, the gondola's online. Get onboard while I try to work out what just happened." );
	l_dialog_id = dialog_end( l_dialog_id, FALSE, FALSE, "" );

end

script dormant f_dlg_spire_1_gondola_fight_start()
dprint( "f_dlg_spire1_gondola_attack" );
local long l_dialog_id = DEF_DIALOG_ID_NONE();

	l_dialog_id = dialog_start_foreground( "GONDOLA_ATTACK", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 );
			dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m70\m70_spire1_gondolas_00111', FALSE, NONE, 0.0, "", "Cortana : They're not going to make this easy, are they?" );

	l_dialog_id = dialog_end( l_dialog_id, FALSE, FALSE, "" );
end

script dormant f_dlg_spire1_gondola_start_back_up()
dprint( "f_dlg_spire1_gondola_start_back_up" );
local long l_dialog_id = DEF_DIALOG_ID_NONE();

	l_dialog_id = dialog_start_foreground( "GONDOLA_START_BACK_UP", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 );
			dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m70\m70_spire1_gondolas_00112', FALSE, NONE, 0.0, "", "Cortana : OK, start us back up." );

	l_dialog_id = dialog_end( l_dialog_id, FALSE, FALSE, "" );

end



script dormant f_dlg_spire_01_gondola_covenant_attack_02()
dprint( "f_dlg_spire_01_covenant_attack_02" );
local long l_dialog_id = DEF_DIALOG_ID_NONE();

	l_dialog_id = dialog_start_foreground( "COVENANT_ATTACK_2	", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 );
		dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m70\m70_spire1_gondolas_00134', FALSE, NONE, 0.0, "", "Cortana : We've got another squad moving to override the transport controls." );		
	l_dialog_id = dialog_end( l_dialog_id, FALSE, FALSE, "" );

end

script dormant f_dlg_spire_01_first_gondola_stop_02()
dprint( "f_dlg_spire_01_stop_02" );
local long l_dialog_id = DEF_DIALOG_ID_NONE();

	l_dialog_id = dialog_start_foreground( "COVENANT_ATTACK_2	", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 );
			dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m70\m70_spire1_gondolas_00127', FALSE, NONE, 0.0, "", "Cortana: Power this crate back up. We're just about to the carrier wave generator." );		
	l_dialog_id = dialog_end( l_dialog_id, FALSE, FALSE, "" );

end

script dormant f_dlg_spire_01_gondola_didact_scan()
dprint( "f_dlg_spire_01_didact_scan" );
local long l_dialog_id = DEF_DIALOG_ID_NONE();
	sleep_s(2);
	l_dialog_id = dialog_start_foreground( "DIDACT_SCAN", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 );
			dialog_line_chief( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m70\m70_spire1_gondolas_00128', FALSE, NONE, 0.0, "", "Master Chief : Didact?" );
			dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m70\m70_spire1_gondolas_00113', FALSE, NONE, 0.0, "", "Cortana : So much for going unnoticed. We better step it up." );
	l_dialog_id = dialog_end( l_dialog_id, FALSE, FALSE, "" );

end

script dormant f_dlg_spire_01_gondola_carrier_wave_generator()
dprint( "f_dlg_spire_01_carrier_wave_generator" );
local long l_dialog_id = DEF_DIALOG_ID_NONE();

	l_dialog_id = dialog_start_foreground( "CARRIER_WAVE_GENERATOR", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 );
		dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m70\m70_spire1_gondolas_00114', FALSE, NONE, 0.0, "", "Cortana : On the platform - that's the carrier wave generator." );
		dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m70\m70_spire1_gondolas_00129', FALSE, NONE, 0.0, "", "Cortana : Enter the carrier field to trigger the suit's EMP." );
	l_dialog_id = dialog_end( l_dialog_id, FALSE, FALSE, "" );
end


script static void  f_dlg_spire_01_gondola_carrier_wave_generator_02()
dprint( "f_dlg_spire_01_carrier_wave_generator_02" );
local long l_dialog_id = DEF_DIALOG_ID_NONE();
	l_dialog_id = dialog_start_foreground( "CARRIER_WAVE_GENERATOR_02", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 );
			dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m70\m70_spire1_gondolas_00131', FALSE, NONE, 0.0, "", "Cortana : Give it a second�" );
	l_dialog_id = dialog_end( l_dialog_id, FALSE, FALSE, "" );
end

script dormant f_dlg_spire_01_gondola_carrier_wave_generator_02a()
dprint( "f_dlg_spire_01_carrier_wave_generator_02" );
local long l_dialog_id = DEF_DIALOG_ID_NONE();

	l_dialog_id = dialog_start_foreground( "CARRIER_WAVE_GENERATOR_02", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 );
			dialog_line_didact( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m70\m70_spire1_gondolas_00116', FALSE, NONE, 0.0, "", "Didact : The others scatter like embers over sand. And yet the Librarian's champion is unmoved." );
			sleep_s(0.25);
			dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m70\m70_rev_comm_spire1_gondolas_00102', FALSE, NONE, 0.0, "", "Cortana : Well done. All communications from this tower have ceased" );	
			//dialog_line_chief( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m70\m70_spire1_gondolas_00117', FALSE, NONE, 0.0, "", "Master Chief : Cortana, where's this coming from?" );
			//dialog_line_cortana( l_dialog_id, 3, TRUE, 'sound\dialog\mission\m70\m70_spire1_gondolas_00118', FALSE, NONE, 0.0, "", "Cortana : Where�s what coming from?" );
	l_dialog_id = dialog_end( l_dialog_id, FALSE, FALSE, "" );

end

script dormant f_dlg_spire_01_gondola_carrier_wave_generator_02b()
dprint( "f_dlg_spire_01_gondola_carrier_wave_generator_02b" );
local long l_dialog_id = DEF_DIALOG_ID_NONE();

	l_dialog_id = dialog_start_foreground( "CARRIER_WAVE_GENERATOR_02b", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 );
			dialog_line_didact( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m70\m70_spire1_gondolas_00119', FALSE, NONE, 0.0, "", "Didact : The mantle of responsibility for the galaxy shelters all, human. But only the Forerunners are its masters." );
		//xxxx
			dialog_line_chief( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m70\m70_spire1_gondolas_00117', FALSE, NONE, 0.0, "", "Master Chief : Cortana, where's this coming from?" );
			dialog_line_cortana( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m70\m70_spire1_gondolas_00118', FALSE, NONE, 0.0, "", "Cortana : Where�s what coming from?" );
			//xxx
			dialog_line_chief( l_dialog_id, 3, TRUE, 'sound\dialog\mission\m70\m70_spire1_gondolas_00120', FALSE, NONE, 0.0, "", "Master Chief : The Didact�s voice." );
			//sleep_s(0.25);
			//dialog_line_didact( l_dialog_id, 4, TRUE, 'sound\dialog\mission\m70\m70_spire1_gondolas_00132', FALSE, NONE, 0.0, "", "Didact : You and your kind are obstacles to its restoration. For all our sakes, you must accept containment." );
			//sleep_s(0.5);
			dialog_line_cortana( l_dialog_id, 4, TRUE, 'sound\dialog\mission\m70\m70_spire1_gondolas_00121', FALSE, NONE, 0.0, "", "Cortana : I'm not picking up anything, Chief." );
			dialog_line_chief( l_dialog_id, 5, TRUE, 'sound\dialog\mission\m70\m70_spire1_gondolas_00133', FALSE, NONE, 0.0, "", "Master Chief : He's there. Keep trying." );

	l_dialog_id = dialog_end( l_dialog_id, FALSE, FALSE, "" );

end


script dormant f_dlg_spire_01_gondola_exit()
dprint( "f_dlg_spire_01_exit" );
local long l_dialog_id = DEF_DIALOG_ID_NONE();

	l_dialog_id = dialog_start_foreground( "SPIRE_01_EXIT", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 );
			 dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m70\m70_rev_all_2nd_flight_00101', FALSE, NONE, 0.0, "", "Cortana : Covenant air traffic's increasing. If we don't disable the other tower quickly, reaching the Didact could become exponentially more difficult." );
	l_dialog_id = dialog_end( l_dialog_id, FALSE, FALSE, "" );

end

script dormant f_dlg_spire_02_first_intro()
dprint( "f_dlg_spire_01_exit" );
	kill_script(m70_objective_3_nudge);
	sleep_forever(m70_objective_3_nudge);
local long l_dialog_id = DEF_DIALOG_ID_NONE();

	l_dialog_id = dialog_start_foreground( "CORES_01", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 );
			dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m70\m70_rev_comm_spire1_cores_00100', FALSE, NONE, 0.0, "", "Cortana : Slight complication. There are millions of transmissions passing through this structure, not simply the ones controlling the movement through the satellite's shield." );
			dialog_line_chief( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m70\m70_rev_comm_spire1_cores_00101', FALSE, NONE, 0.0, "", "Master Chief : Can you isolate the satellite communications?" );
			dialog_line_cortana( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m70\m70_spire1_cores_00102', FALSE, NONE, 0.0, "", "Cortana : Not quickly, and shutting them all down's not an option. But destroying the system's attenuators should flood the network." );
			hud_rampancy_players_set( 0.7 );
			dialog_line_cortana( l_dialog_id, 3, TRUE, 'sound\dialog\mission\m70\m70_spire1_cores_00112', FALSE, NONE, 0.0, "", "Cortana : Of course, if Infinity wasn't on their way back to Earth, they could overload the attenuators remotely." );
			dialog_line_chief( l_dialog_id, 4, TRUE, 'sound\dialog\mission\m70\m70_spire1_cores_00113', FALSE, NONE, 0.0, "", "Master Chief : We'll handle it." );
			dialog_line_cortana( l_dialog_id, 5, TRUE, 'sound\dialog\mission\m70\m70_spire1_cores_00114', FALSE, NONE, 0.0, "", "Cortana : That's hardly the point." );
			hud_rampancy_players_set( 0.0 );
			f_m70_objective_set(ct_obj_spire_02);
	l_dialog_id = dialog_end( l_dialog_id, FALSE, FALSE, "" );

end

script dormant f_dlg_spire_02_first_cores_enter()
dprint( "f_dlg_spire_01_cores_02" );
local long l_dialog_id = DEF_DIALOG_ID_NONE();

	l_dialog_id = dialog_start_foreground( "CORES_02	", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 );
				dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m70\m70_spire1_cores_00103', FALSE, NONE, 0.0, "", "Cortana : The attenuators are housed in Faraday enclosures. I'd bet there's a release around here somewhere�" );
	l_dialog_id = dialog_end( l_dialog_id, FALSE, FALSE, "" );
	f_blip_flag (flg_spire02_switch, "activate");
	b_spire_02_button_active = TRUE;
end



script dormant f_dlg_spire_02_first_cores_start()
dprint( "f_dlg_spire_01_cores_03" );
local long l_dialog_id = DEF_DIALOG_ID_NONE();

	l_dialog_id = dialog_start_foreground( "CORES_03	", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 );
			dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m70\m70_spire1_cores_00104', FALSE, NONE, 0.0, "", "Cortana : OK, the structure contains three central attenuators. Sever those connections." );
	l_dialog_id = dialog_end( l_dialog_id, FALSE, FALSE, "" );

end

/*script dormant f_dlg_spire_02_first_cores_phantom_blip()
dprint( "f_dlg_spire_01_cores_04" );
local long l_dialog_id = DEF_DIALOG_ID_NONE();

	l_dialog_id = dialog_start_foreground( "CORES_04	", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 );
			dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m70\m70_spire1_cores_00105', FALSE, NONE, 0.0, "", "Cortana : Multiple contacts on the tracker!" );
			sleep_s(1);
			dialog_line_chief( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m70\m70_spire1_cores_00106', FALSE, NONE, 0.0, "", "Master Chief : Where'd they go?" );
			dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m70\m70_spire1_cores_00107', FALSE, NONE, 0.0, "", "Cortana : Unknown. Though I can't imagine very far." );
	l_dialog_id = dialog_end( l_dialog_id, FALSE, FALSE, "" );

end*/


script dormant f_dlg_spire_02_first_nudge_second_core()
dprint( "f_dlg_spire_01_cores_05" );
local long l_dialog_id = DEF_DIALOG_ID_NONE();

	l_dialog_id = dialog_start_foreground( "CORES_05	", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 );
			dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m70\m70_spire1_cores_00108', FALSE, NONE, 0.0, "", "Cortana : Second attenuator, (LONG DRAWN OUT RAMPANCY DISTORTION, then) up ahead." );
	l_dialog_id = dialog_end( l_dialog_id, FALSE, FALSE, "" );

end



script dormant f_dlg_spire_02_first_didact_scan()
dprint( "f_dlg_spire_01_cores_06" );
local long l_dialog_id = DEF_DIALOG_ID_NONE();

	l_dialog_id = dialog_start_foreground( "CORES_06	", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 );
	
			dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m70\m70_rev_comm_spire1_cores_00102', FALSE, NONE, 0.0, "", "Cortana : Great, the increased signal traffic is almost entirely blocking out the satellite communications. Only one more target left." );
				
				sleep_s(1);
				
				//xxx scan test
				/*
				if volume_test_objects (tv_nar_fx_didact_scan_2a, players()) then
					effect_new (environments\solo\m70_liftoff\fx\scan\dscan_spire2_1.effect, fx_didact_scan_spire2a);
				end		
				
				if volume_test_objects (tv_nar_fx_didact_scan_2b, players()) then
					effect_new (environments\solo\m70_liftoff\fx\scan\dscan_spire2_1.effect, fx_didact_scan_spire2b);
				end
				
				if volume_test_objects (tv_nar_fx_didact_scan_2c, players()) then
					effect_new (environments\solo\m70_liftoff\fx\scan\dscan_spire2_1.effect, fx_didact_scan_spire2c);
				end			
			*/	
			//	sleep_s(1);
		//dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m70\m70_spire1_cores_00110', FALSE, NONE, 0.0, "", "Cortana : There goes the element of surprise. If the Didact knows we're here, this could get tricky." );
	l_dialog_id = dialog_end( l_dialog_id, FALSE, FALSE, "" );

end


script dormant f_dlg_spire_02_first_cores_destroyed_3()
dprint( "f_dlg_spire_01_cores_07" );
local long l_dialog_id = DEF_DIALOG_ID_NONE();

	l_dialog_id = dialog_start_foreground( "CORES_07	", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 );
			dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m70\m70_spire1_cores_00111', FALSE, NONE, 0.0, "", "Cortana : That's it! Transmission buffers are overflowing. Get us to the second tower-" );
			dialog_line_didact( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m70\m70_spire1_gondolas_00116', FALSE, NONE, 0.0, "", "Didact : The others scatter like embers over sand. And yet the Librarian's champion is unmoved." );
			dialog_line_chief( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m70\m70_spire1_gondolas_00117', FALSE, NONE, 0.0, "", "Master Chief : Cortana, where's this coming from?" );
			dialog_line_cortana( l_dialog_id, 3, TRUE, 'sound\dialog\mission\m70\m70_spire1_gondolas_00118', FALSE, NONE, 0.0, "", "Cortana : Where�s what coming from?" );
			dialog_line_didact( l_dialog_id, 4, TRUE, 'sound\dialog\mission\m70\m70_spire1_gondolas_00119', FALSE, NONE, 0.0, "", "Didact : The mantle of responsibility for the galaxy shelters all, human. But only the Forerunners are its masters." );
			dialog_line_chief( l_dialog_id, 5, TRUE, 'sound\dialog\mission\m70\m70_spire1_gondolas_00120', FALSE, NONE, 0.0, "", "Master Chief : The Didact�s voice." );
			//dialog_line_didact( l_dialog_id, 6, TRUE, 'sound\dialog\mission\m70\m70_spire1_gondolas_00132', FALSE, NONE, 0.0, "", "Didact : You and your kind are obstacles to its restoration. For all our sakes, you must accept containment." );
			dialog_line_cortana( l_dialog_id, 6, TRUE, 'sound\dialog\mission\m70\m70_spire1_gondolas_00121', FALSE, NONE, 0.0, "", "Cortana : I'm not picking up anything, Chief." );
			dialog_line_chief( l_dialog_id, 7, TRUE, 'sound\dialog\mission\m70\m70_spire1_gondolas_00133', FALSE, NONE, 0.0, "", "Master Chief : He's there. Keep trying." );
	l_dialog_id = dialog_end( l_dialog_id, FALSE, FALSE, "" );
end

script dormant f_dlg_spire_02_first_end()
dprint( "f_dlg_spire_01_cores_08" );
local long l_dialog_id = DEF_DIALOG_ID_NONE();

	l_dialog_id = dialog_start_foreground( "CORES_08	", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 );
			dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m70\m70_rev_all_2nd_flight_00101', FALSE, NONE, 0.0, "", "Cortana : Covenant air traffic's increasing. If we don't disable the other tower quickly, reaching the Didact could become exponentially more difficult." );		
			f_m70_objective_complete(ct_obj_spire_02 );
	l_dialog_id = dialog_end( l_dialog_id, FALSE, FALSE, "" );

end




// -------------------------------------------------------------------------------------------------
// -------------------------------------------------------------------------------------------------
// -------------------------------------------------------------------------------------------------
// SPIRE: 02
// -------------------------------------------------------------------------------------------------
// -------------------------------------------------------------------------------------------------
// -------------------------------------------------------------------------------------------------
// variables

// functions
// === f_dlg_spire_02_entry::: Dialog
script dormant f_dlg_spire_01_enter_second()
dprint( "f_dlg_spire_01_enter_second" );
local long l_dialog_id = DEF_DIALOG_ID_NONE();

	l_dialog_id = dialog_start_foreground( "SPIRE_02_GONDOLA_LANDING", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 );			
		dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m70\m70_spire2_gondolas_00100', FALSE, NONE, 0.0, "", "Cortana : This node's different than the previous tower." );
		dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m70\m70_rev_comm_spire2_gondolas_00100', FALSE, NONE, 0.0, "", "Cortana : The source of the tower communications is a carrier wave generator located somewhere inside." );
		sleep_s(1);
		thread(f_m70_objective_set(ct_obj_spire_01));
	l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );

end


script dormant f_dlg_spire_01_second_gondola_dock()
dprint( "f_dlg_spire_02_gondola_entry" );
local long l_dialog_id = DEF_DIALOG_ID_NONE();

	l_dialog_id = dialog_start_foreground( "SPIRE_02_ENTRY", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 );
			dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m70\m70_spire2_gondolas_00102', FALSE, NONE, 0.0, "", "Cortana : It looks like the carrier wave generator is located at the far end of this chamber. Find us a way across." );
	l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
	sleep_s(1);
	f_blip_flag(flg_sp01_shield_lock, "neutralize");

end



script dormant f_dlg_spire_01_second_gondola_nudge()
dprint( "f_dlg_spire_02_gondola_boarded" );
local long l_dialog_id = DEF_DIALOG_ID_NONE();

	l_dialog_id = dialog_start_foreground( "SPIRE_02_BOARDED", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 );
		dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m70\m70_spire2_gondolas_00103', FALSE, NONE, 0.0, "", "Cortana : This gondola should do the trick. Look for its activation switch." );
	l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
	b_blip_gondola_start = TRUE;
end



script dormant f_dlg_spire_02_gondola_shields()
dprint( "f_dlg_spire_02_gondola_shields" );
local long l_dialog_id = DEF_DIALOG_ID_NONE();
		
	l_dialog_id = dialog_start_foreground( "SPIRE_02_GONDOLA_SHIELDS", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 );
	hud_play_pip_from_tag( bink\Campaign\M70_A_60 );
			dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m70\m70_spire2_gondolas_00112', FALSE, NONE, 0.0, "", "Cortana : To take a page out of our old playbook, I'm going to tune your shields to emit an EMP at the same frequency as the communication network." );
			dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m70\m70_spire2_gondolas_00113', FALSE, NONE, 0.0, "", "Cortana : All you'll need to do to trigger it is to make physical contact with the carrier wave generator." );
	l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );

end



script dormant f_dlg_spire_01_second_gondola_stop_tower_1()
dprint( "f_dlg_spire_02_gondola_covenant_attack" );
local long l_dialog_id = DEF_DIALOG_ID_NONE();

	l_dialog_id = dialog_start_foreground( "SPIRE_02_GONDOLA_COVENANT_ATTACK", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 );
			dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m70\m70_spire2_gondolas_00104', FALSE, NONE, 0.0, "", "Cortana : Covenant!" );
			dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m70\m70_spire2_gondolas_00105', FALSE, NONE, 0.0, "", "Cortana : The Didact's given them control of the system overrides! You're going to have to wrestle for it." );
			dialog_line_cortana( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m70\m70_spire2_gondolas_00106', FALSE, NONE, 0.0, "", "Cortana : The controls are up there." );
			sleep_s(1);
			dialog_line_chief( l_dialog_id, 3, TRUE, 'sound\dialog\mission\m70\m70_spire2_gondolas_00114', FALSE, NONE, 0.0, "", "Master Chief : Where?" );
			hud_rampancy_players_set( 0.6 );
			sleep_s(1.5);
			hud_rampancy_players_set( 0.0 );
			dialog_line_cortana( l_dialog_id, 4, TRUE, 'sound\dialog\mission\m70\m70_spire2_gondolas_00115', FALSE, NONE, 0.0, "", "Cortana : Right, sorry. Waypoint!" );
			b_gondola_waypoint_1 = TRUE; 
	l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );

end



script dormant f_dlg_spire_01_second_gondola_tower_1_end()
dprint( "f_dlg_spire_02_gondola_override_1" );
local long l_dialog_id = DEF_DIALOG_ID_NONE();

	l_dialog_id = dialog_start_foreground( "SPIRE_02_GONDOLA_OVERRIDE_1", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 );
		dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m70\m70_spire2_gondolas_00107', FALSE, NONE, 0.0, "", "Cortana : We're in business! Back to the gondola." );
	l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );

end

script dormant f_dlg_spire_01_second_gondola_stop_tower_2()
dprint( "f_dlg_spire_02_gondola_covenant_attack_2" );
local long l_dialog_id = DEF_DIALOG_ID_NONE();

	l_dialog_id = dialog_start_foreground( "SPIRE_02_GONDOLA_COVENANT_ATTACK_2", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 );
				dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m70\m70_spire2_gondolas_00108', FALSE, NONE, 0.0, "", "Cortana : They're trying to lockout the gondola controls again!" );
				sleep_s(2);
				dialog_line_didact( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m70\m70_spire2_cores_00111', FALSE, NONE, 0.0, "", "Didact : Your actions tread between honor and foolishness." );
				dialog_line_chief( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m70\m70_spire2_cores_00112', FALSE, NONE, 0.0, "", "Master Chief : Cortana, are you hearing him?" );
				dialog_line_cortana( l_dialog_id, 3, TRUE, 'sound\dialog\mission\m70\m70_spire2_cores_00113', FALSE, NONE, 0.0, "", "Cortana : No. Didact?" );
				//dialog_line_didact( l_dialog_id, 4, TRUE, 'sound\dialog\mission\m70\m70_spire2_cores_00114', FALSE, NONE, 0.0, "", "Didact : I will retrieve the Composer and cage humanity, as I did with my Prometheans. You cannot doubt this." );
				//dialog_line_didact( l_dialog_id, 5, TRUE, 'sound\dialog\mission\m70\m70_spire2_cores_00115', FALSE, NONE, 0.0, "", "Didact : So then... which of us does this pointless resistence debase?" );
				//dialog_line_chief( l_dialog_id, 5, TRUE, 'sound\dialog\mission\m70\m70_spire2_cores_00116', FALSE, NONE, 0.0, "", "Master Chief : We've got to wrap this up. Where are the other targets?" );
			//	hud_rampancy_players_set( 0.8 );
			//	sleep_s(1);
			//	hud_rampancy_players_set( 0.0 );
			//	dialog_line_chief( l_dialog_id, 6, TRUE, 'sound\dialog\mission\m70\m70_spire2_cores_00117', FALSE, NONE, 0.0, "", "Master Chief : Cortana?" );


	l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );

end




script dormant f_dlg_spire_01_second_cortana_gondola_stop_2()
dprint( "f_dlg_spire_02_gondola_power_crate_back" );
local long l_dialog_id = DEF_DIALOG_ID_NONE();

	l_dialog_id = dialog_start_foreground( "SPIRE_02_GONDOLA_POWER_CRATE_BACK", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 );
				dialog_line_chief( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m70\m70_spire2_cores_00118', FALSE, NONE, 0.0, "", "Master Chief : Cortana!?" );
	l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );

end
/*

script dormant f_dlg_spire_02_gondola_control_restored()
dprint( "f_dlg_spire_02_gondola_control_restored" );
local long l_dialog_id = DEF_DIALOG_ID_NONE();

	l_dialog_id = dialog_start_foreground( "SPIRE_02_GONDOLA_CONTROL_RESTORED", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 );
				dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m70\m70_spire2_gondolas_00109', FALSE, NONE, 0.0, "", "Cortana : Gondola controls restored. It's docking at the carrier wave generator. Get over there." );
	l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );

end*/

script dormant f_dlg_spire_02_gondola_trigger_the_emp()
dprint( "f_dlg_spire_02_gondola_trigger_the_emp" );
local long l_dialog_id = DEF_DIALOG_ID_NONE();

	l_dialog_id = dialog_start_foreground( "SPIRE_02_GONDOLA_TRIGGER_THE_EMP", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 );
				dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m70\m70_spire2_gondolas_00110', FALSE, NONE, 0.0, "", "Cortana : The carrier wave generator's on top of that platform. You only have to enter field to trigger the EMP." );
	l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );

end

script dormant f_dlg_spire_01_second_gondola_final_ride()
dprint( "f_dlg_spire_02_gondola_clear" );
local long l_dialog_id = DEF_DIALOG_ID_NONE();
	l_dialog_id = dialog_start_foreground( "SPIRE_02_GONDOLA_CLEAR", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 );
			dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m70\m70_rev_comm_spire2_gondolas_00101', FALSE, NONE, 0.0, "", "Cortana : We're clear - all transmissions between the towers and the satellite have ceased." );
			sleep_s(1);
			dialog_line_didact( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m70\m70_spire2_cores_00119', FALSE, NONE, 0.0, "", "Didact : You are a fool. Even now, your kind tinkers with the Composer in the shadow of the third ring. Children and fire, whom -" );
		//	hud_rampancy_players_set( 0.6 );
		//	dialog_line_cortana( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m70\m70_spire2_cores_00120', FALSE, NONE, 0.0, "", "Cortana : GOT HIM!" );
		//	hud_rampancy_players_set( 0.0 );
			//dialog_line_cortana( l_dialog_id, 3, TRUE, 'sound\dialog\mission\m70\m70_spire2_cores_00121', FALSE, NONE, 0.0, "", "Cortana : Finally. Whatever the Librarian did to you expanded your range of hearing." );
		//	dialog_line_cortana( l_dialog_id, 4, TRUE, 'sound\dialog\mission\m70\m70_rev_comm_spire2_cores_00103', FALSE, NONE, 0.0, "", "Cortana : He's broadcasting on an infrasonic frequency, it's the same one the towers used to communicate with his satellite." );
	//		dialog_line_chief( l_dialog_id, 5, TRUE, 'sound\dialog\mission\m70\m70_spire2_cores_00123', FALSE, NONE, 0.0, "", "Master Chief : Can we use it against him?" );
	//		dialog_line_cortana( l_dialog_id, 6, TRUE, 'sound\dialog\mission\m70\m70_spire2_cores_00124', FALSE, NONE, 0.0, "", "Cortana : You bet we can. Next time he pulls that trick, we can track his precise location on the satellite." );
	//		dialog_line_cortana( l_dialog_id, 7, TRUE, 'sound\dialog\mission\m70\m70_spire2_cores_00125', FALSE, NONE, 0.0, "", "Cortana : Maybe even turn some of his own toys against him." );
	l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );

end


script dormant f_dlg_spire_02_second_intro()
dprint( "f_dlg_spire_02_second_intro" );
local long l_dialog_id = DEF_DIALOG_ID_NONE();

	l_dialog_id = dialog_start_foreground( "SPIRE_02_GONDOLA_CLEAR", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 );				
		dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m70\m70_rev_comm_spire2_cores_00100', FALSE, NONE, 0.0, "", "Cortana : Chief, there's a lot more comm traffic passing through this tower than just what's servicing the Didact's satellite." );
	//dialog_line_chief( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m70\m70_spire2_cores_00101', FALSE, NONE, 0.0, "", "Master Chief : So we shut the entire facility down." );
		//dialog_line_cortana( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m70\m70_spire2_cores_00102', FALSE, NONE, 0.0, "", "Cortana : Probably not as fast as simply overloading it." );
		dialog_line_cortana( l_dialog_id, 3, TRUE, 'sound\dialog\mission\m70\m70_rev_comm_spire2_cores_00101', FALSE, NONE, 0.0, "", "Cortana : These systems use data attenuators to regulate the flow of communications. Destroying those would drown out the defense spire instructions." );
	dialog_line_cortana( l_dialog_id, 4, TRUE, 'sound\dialog\mission\m70\m70_rev_comm_spire2_cores_00102', FALSE, NONE, 0.0, "", "Cortana : The towers's instructions to the Didact's shields would be drowned in the noise." );
		sleep_s(0.25);
		//hud_rampancy_players_set( 0.5 );
		//sleep_s(2);
		//hud_rampancy_players_set( 0.0 );
		f_m70_objective_set(ct_obj_spire_02);
	l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );

end


script dormant f_dlg_spire_02_second_cores_enter()
dprint( "f_dlg_spire_02_second_cores_enter" );
local long l_dialog_id = DEF_DIALOG_ID_NONE();

	l_dialog_id = dialog_start_foreground( "SPIRE_02_ATTENUATOR_INSIDE", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 );
		dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m70\m70_spire2_cores_00105', FALSE, NONE, 0.0, "", "Cortana : The tower's attenuator would most likely be housed in a Faraday enclosure." );
		dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m70\m70_spire2_cores_00106', FALSE, NONE, 0.0, "", "Cortana : Let's see if we can find its controls around here somewhere�" );
	l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
	f_blip_flag (flg_spire02_switch, "activate");
	b_spire_02_button_active = TRUE;
end


script dormant f_dlg_spire_02_second_cores_start()
dprint( "f_dlg_spire_02_second_cores_start" );
local long l_dialog_id = DEF_DIALOG_ID_NONE();

	l_dialog_id = dialog_start_foreground( "SPIRE_02_FIRST_BUTTON_PUSHED", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 );
					dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m70\m70_spire2_cores_00107', FALSE, NONE, 0.0, "", "Cortana : OK, the structure actually contains three central attenuators. We'll have to sever all three connections." );
	l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );

end


script dormant f_dlg_spire_02_second_cores_destroyed_1()
dprint( "f_dlg_spire_02_second_cores_destroyed_1" );
local long l_dialog_id = DEF_DIALOG_ID_NONE();

	l_dialog_id = dialog_start_foreground( "SPIRE_02_ATTENUATOR_PUSHED_01", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 );
	  dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m70\m70_spire2_cores_00108', FALSE, NONE, 0.0, "", "Cortana : Nicely done, Chief. Two more to go." );
		dialog_line_didact( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m70\m70_spire2_cores_00111', FALSE, NONE, 0.0, "", "Didact : Your actions tread between honor and foolishness." );
		dialog_line_chief( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m70\m70_spire2_cores_00112', FALSE, NONE, 0.0, "", "Master Chief : Cortana, are you hearing him?" );
		dialog_line_cortana( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m70\m70_spire2_cores_00113', FALSE, NONE, 0.0, "", "Cortana : No. Didact?" );
		//dialog_line_didact( l_dialog_id, 3, TRUE, 'sound\dialog\mission\m70\m70_spire2_cores_00114', FALSE, NONE, 0.0, "", "Didact : I will retrieve the Composer and cage humanity, as I did with my Prometheans. You cannot doubt this." );
		//dialog_line_didact( l_dialog_id, 4, TRUE, 'sound\dialog\mission\m70\m70_spire2_cores_00115', FALSE, NONE, 0.0, "", "Didact : So then... which of us does this pointless resistence debase?" );
		//dialog_line_chief( l_dialog_id, 4, TRUE, 'sound\dialog\mission\m70\m70_spire2_cores_00116', FALSE, NONE, 0.0, "", "Master Chief : We've got to wrap this up. Where are the other targets?" );
		//hud_rampancy_players_set( 0.6 );
		//dialog_line_chief( l_dialog_id, 5, TRUE, 'sound\dialog\mission\m70\m70_spire2_cores_00117', FALSE, NONE, 0.0, "", "Master Chief : Cortana?" );
	//	dialog_line_chief( l_dialog_id, 6, TRUE, 'sound\dialog\mission\m70\m70_spire2_cores_00118', FALSE, NONE, 0.0, "", "Master Chief : Cortana!?" );
	//	hud_rampancy_players_set( 0.0 );
	l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );

end


script dormant f_dlg_spire_02_attenuator_pushed_02()
dprint( "f_dlg_spire_02_attenuator_pushed_02" );
local long l_dialog_id = DEF_DIALOG_ID_NONE();
			
end

script dormant f_dlg_spire_02_second_cores_destroyed_3()
dprint( "f_dlg_spire_02_attenuator_pushed_03" );
local long l_dialog_id = DEF_DIALOG_ID_NONE();

	l_dialog_id = dialog_start_foreground( "SPIRE_02_ATTENUATOR_PUSHED_03", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 );
		dialog_line_didact( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m70\m70_spire2_cores_00119', FALSE, NONE, 0.0, "", "Didact : You are a fool. Even now, your kind tinkers with the Composer in the shadow of the third ring. Children and fire, who disregard the welfare of the galaxy." );
	//	hud_rampancy_players_set( 0.6 );
	//	dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m70\m70_spire2_cores_00120', FALSE, NONE, 0.0, "", "Cortana : GOT HIM!" );
	//	hud_rampancy_players_set( 0.0 );
		//dialog_line_cortana( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m70\m70_spire2_cores_00121', FALSE, NONE, 0.0, "", "Cortana : Finally. Whatever the Librarian did to you expanded your range of hearing." );
	//	dialog_line_cortana( l_dialog_id, 3, TRUE, 'sound\dialog\mission\m70\m70_rev_comm_spire2_cores_00103', FALSE, NONE, 0.0, "", "Cortana : He's broadcasting on an infrasonic frequency, it's the same one the towers used to communicate with his satellite." );
//		dialog_line_chief( l_dialog_id, 4, TRUE, 'sound\dialog\mission\m70\m70_spire2_cores_00123', FALSE, NONE, 0.0, "", "Master Chief : Can we use it against him?" );
//		dialog_line_cortana( l_dialog_id, 5, TRUE, 'sound\dialog\mission\m70\m70_spire2_cores_00124', FALSE, NONE, 0.0, "", "Cortana : You bet we can. Next time he pulls that trick, we can track his precise location on the satellite." );
//		dialog_line_cortana( l_dialog_id, 6, TRUE, 'sound\dialog\mission\m70\m70_spire2_cores_00125', FALSE, NONE, 0.0, "", "Cortana : Maybe even turn some of his own toys against him." );
	l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
	sleep_s(2);
	wake(f_dlg_spire_02_second_end);
end

script dormant f_dlg_spire_02_second_end()
dprint( "f_dlg_spire_02_cores_leaving" );
local long l_dialog_id = DEF_DIALOG_ID_NONE();

	l_dialog_id = dialog_start_foreground( "SPIRE_02_CORES_LEAVING", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 );		
		dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m70\m70_rev_comm_spire2_cores_00104', FALSE, NONE, 0.0, "", "Cortana : Success." );
		dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m70\m70_rev_comm_spire2_cores_00105', FALSE, NONE, 0.0, "", "Cortana : The system's overloading. I don't think we'll be having any more trouble from those shields." );
		f_m70_objective_complete(ct_obj_spire_02 );
	l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );

end

// === f_dlg_spire_02_button_01::: Dialog
script dormant f_dlg_spire_02_button_01()
dprint( "f_dlg_spire_02_button_01" );
local long l_dialog_id = DEF_DIALOG_ID_NONE();

	l_dialog_id = dialog_start_foreground( "SPIRE_02_BUTTON_01", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 );
		dialog_line_cortana( l_dialog_id, 1, TRUE, NONE, FALSE, NONE, 0.0, "", "CORTANA: <Says something about Button 1.>" );
	l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );

end

// === f_dlg_spire_02_button_02::: Dialog
script dormant f_dlg_spire_02_button_02()
dprint( "f_dlg_spire_02_button_02" );
local long l_dialog_id = DEF_DIALOG_ID_NONE();

	l_dialog_id = dialog_start_foreground( "SPIRE_02_BUTTON_02", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 );
		dialog_line_cortana( l_dialog_id, 1, TRUE, NONE, FALSE, NONE, 0.0, "", "CORTANA <Says something about Button 2.>" );
	l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );

end

// === f_dlg_spire_02_button_03::: Dialog
script dormant f_dlg_spire_02_button_03()
dprint( "f_dlg_spire_02_button_03" );
local long l_dialog_id = DEF_DIALOG_ID_NONE();

	l_dialog_id = dialog_start_foreground( "SPIRE_02_BUTTON_03", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 );
		dialog_line_cortana( l_dialog_id, 1, TRUE, NONE, FALSE, NONE, 0.0, "", "CORTANA: <Says something about Button 3.>" );
	l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );

end

// -------------------------------------------------------------------------------------------------
// -------------------------------------------------------------------------------------------------
// -------------------------------------------------------------------------------------------------
// SPIRE: 03
// -------------------------------------------------------------------------------------------------
// -------------------------------------------------------------------------------------------------
// -------------------------------------------------------------------------------------------------
// variables
global long L_dlg_spire_03_cortana_02 			= DEF_DIALOG_ID_NONE();
global long L_dlg_spire_03_rampancy_03 			= DEF_DIALOG_ID_NONE();
global long L_dlg_spire_03_take_charge 			= DEF_DIALOG_ID_NONE();
global long L_dlg_spire_03_outro_01 				= DEF_DIALOG_ID_NONE();

// functions
// === f_dlg_spire_03_didact_01::: Dialog
/*script dormant f_dlg_spire_03_didact_01()
dprint( "f_dlg_spire_03_didact_01" );
local long l_dialog_id = DEF_DIALOG_ID_NONE();

	// On the way in, final reminder of what we're up to as Didact talks again
	l_dialog_id = dialog_start_foreground( "SPIRE_03_DIDACT_01", l_dialog_id, TRUE, DEF_DIALOG_STYLE_INTERRUPT(), FALSE, "", 0.0 );
			dialog_line_didact( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m70\m70_spire3_00100', FALSE, NONE, 0.0, "", "Didact : The Librarian called you Reclaimer." );
			dialog_line_chief( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m70\m70_spire3_00101', FALSE, NONE, 0.0, "", "Master Chief : The Didact's doing it again." );
			dialog_line_didact( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m70\m70_spire3_00102', FALSE, NONE, 0.0, "", "Didact : And yet all you seek is suffering for those you would protect." );
			dialog_line_chief( l_dialog_id, 3, TRUE, 'sound\dialog\mission\m70\m70_spire3_00103', FALSE, NONE, 0.0, "", "Master Chief : Cortana?" );
			dialog_line_didact( l_dialog_id, 4, TRUE, 'sound\dialog\mission\m70\m70_spire3_00104', FALSE, NONE, 0.0, "", "Didact : Such hubris. Your kind are children, interferring in matters-" );
			dialog_line_cortana( l_dialog_id, 5, TRUE, 'sound\dialog\mission\m70\m70_spire3_00105', FALSE, NONE, 0.0, "", "Cortana : GOT HIM!" );
			dialog_line_cortana( l_dialog_id, 6, TRUE, 'sound\dialog\mission\m70\m70_spire3_00106', FALSE, NONE, 0.0, "", "Cortana : He's broadcasting on an infrasonic frequency." );
			dialog_line_cortana( l_dialog_id, 7, TRUE, 'sound\dialog\mission\m70\m70_spire3_00107', FALSE, NONE, 0.0, "", "Cortana : Outside the range of human hearing, but apparently not all the rules apply to you anymore." );
			dialog_line_chief( l_dialog_id, 8, TRUE, 'sound\dialog\mission\m70\m70_spire3_00108', FALSE, NONE, 0.0, "", "Master Chief : Can we use it against him?" );
			dialog_line_cortana( l_dialog_id, 9, TRUE, 'sound\dialog\mission\m70\m70_spire3_00109', FALSE, NONE, 0.0, "", "Cortana : Yes we can." );
			dialog_line_cortana( l_dialog_id, 10, TRUE, 'sound\dialog\mission\m70\m70_spire3_00110', FALSE, NONE, 0.0, "", "Cortana : Tracking its point of origin. The Didact just painted himself a great big target." );
	l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );

end*/

// === f_dlg_spire_03_didact_02::: Dialog
script dormant f_dlg_flight_third_spire_03_approach()
dprint( "f_dlg_spire_03_exterior" );
local long l_dialog_id = DEF_DIALOG_ID_NONE();


	l_dialog_id = dialog_start_foreground( "SPIRE_03_EXTERIOR", l_dialog_id, TRUE, DEF_DIALOG_STYLE_INTERRUPT(), FALSE, "", 0.0 );
		dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m70\m70_rev_spire3_intro_00100', FALSE, NONE, 0.0, "", "Cortana : Those defense spires we keep running into are being controlled from this tower. Get me to the Control room and we might be able to reposition them to block the Didact's ship from leaving." );

	l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );

end



script dormant f_dlg_spire_03_didact_taunt_01()
dprint( "f_dlg_spire_03_didact_taunt_01" );
local long l_dialog_id = DEF_DIALOG_ID_NONE();
		
	l_dialog_id = dialog_start_foreground( "SPIRE_BOTTOM", l_dialog_id, TRUE, DEF_DIALOG_STYLE_INTERRUPT(), FALSE, "", 0.0 );
		dialog_line_didact( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m70\m70_spire3_00100', FALSE, NONE, 0.0, "", "Didact : You will relent, human, or you will perish. All in life is choice." );
	l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
	
/*	hud_rampancy_players_set( 0.4 );
		sleep_s(3);
		hud_rampancy_players_set( 0.0 );*/


end

script dormant f_dlg_spire_03_bottom_start()
dprint( "f_dlg_spire_03_top" );
local long l_dialog_id = DEF_DIALOG_ID_NONE();


	l_dialog_id = dialog_start_foreground( "SPIRE_03_TOP", l_dialog_id, TRUE, DEF_DIALOG_STYLE_INTERRUPT(), FALSE, "", 0.0 );			
  	dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m70\m70_spire3_00112', FALSE, NONE, 0.0, "", "Cortana : He's altering the tower!" );
  
	l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );

end




script dormant f_dlg_spire_03_didact_top_of_tower()
dprint( "f_dlg_spire_03_didact_top_of_tower" );
local long l_dialog_id = DEF_DIALOG_ID_NONE();


	l_dialog_id = dialog_start_foreground( "SPIRE_03_DIDACT_02_JETPACK", l_dialog_id, TRUE, DEF_DIALOG_STYLE_INTERRUPT(), FALSE, "", 0.0 );			
  	dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m70\m70_spire3_00116', FALSE, NONE, 0.0, "", "Cortana : I'm seeing a control facility at the top of the tower. We need to be there yesterday!" );
  //	dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m70\m70_spire3_00112', FALSE, NONE, 0.0, "", "Cortana : He's altering the tower!" );
	l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );

end



script dormant f_dlg_spire_03_elite_jumpers()
dprint( "f_dlg_spire_03_elite_jumpers" );


	 	if (unit_has_equipment (player0, "objects\equipment\storm_jet_pack\storm_jet_pack_pve.equipment")) or (unit_has_equipment (player0, "objects\equipment\storm_jet_pack\storm_jet_pack.equipment"))
	 	
	 	then
				wake(f_dlg_spire_03_didact_attack_02_jetpack);
		else
		    wake(f_dlg_spire_03_didact_attack_02_jetpack_none);
  	end
end




script dormant f_dlg_spire_03_didact_attack_02_jetpack()
dprint( "f_dlg_spire_03_didact_attack_02_jetpack" );
local long l_dialog_id = DEF_DIALOG_ID_NONE();


	l_dialog_id = dialog_start_foreground( "SPIRE_03_DIDACT_02_JETPACK", l_dialog_id, TRUE, DEF_DIALOG_STYLE_INTERRUPT(), FALSE, "", 0.0 );		
			dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m70\m70_spire3_00114', FALSE, NONE, 0.0, "", "Cortana : Chief, your jetpack!" );
	l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
   
end




script dormant f_dlg_spire_03_didact_attack_02_jetpack_none()
dprint( "f_dlg_spire_03_didact_attack_02_jetpack" );
local long l_dialog_id = DEF_DIALOG_ID_NONE();


	l_dialog_id = dialog_start_foreground( "SPIRE_03_DIDACT_02_JETPACK", l_dialog_id, TRUE, DEF_DIALOG_STYLE_INTERRUPT(), FALSE, "", 0.0 );			
		dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m70\m70_spire3_00115', FALSE, NONE, 0.0, "", "Cortana : Grab one of those Elite's jump packs!" );
	l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
	 
end


// === f_dlg_spire_03_rampancy_02::: Dialog
script dormant f_dlg_spire_03_control_room_start()
dprint( "f_dlg_spire_03_rampancy_02" );
local long l_dialog_id = DEF_DIALOG_ID_NONE();

	// Cortana gives instructions then is hit by rampancy
	l_dialog_id = dialog_start_foreground( "SPIRE_03_RAMPANCY_02", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 );
		dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m70\m70_failmoment_00101', FALSE, NONE, 0.0, "", "Cortana : Quick, let me at the spire controls." );
	l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );

end

// === f_dlg_spire_03_rampancy_03::: Dialog
script dormant f_dlg_spire_03_rampancy_03()
dprint( "f_dlg_spire_03_rampancy_03" );

	// Something catastrophically bad happens outside the window
	L_dlg_spire_03_rampancy_03 = dialog_start_foreground( "SPIRE_03_RAMPANCY_03", L_dlg_spire_03_rampancy_03, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 );
		dialog_line_chief( L_dlg_spire_03_rampancy_03, 1, TRUE, NONE, FALSE, NONE, 0.0, "", "CHIEF: Cortana!" );
	L_dlg_spire_03_rampancy_03 = dialog_end( L_dlg_spire_03_rampancy_03, TRUE, TRUE, "" );

	// start rampancy loop

end


// === f_dlg_spire_03_chief_01::: Dialog
script dormant f_dlg_spire_03_chief_01()
dprint( "f_dlg_spire_03_chief_01" );
local long l_dialog_id = DEF_DIALOG_ID_NONE();

	l_dialog_id = dialog_start_foreground( "SPIRE_03_CHIEF_01", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 );
		dialog_line_chief( l_dialog_id, 1, TRUE, NONE, FALSE, NONE, 0.0, "", "CHIEF: The optimal path...looks like up is the way to go." );
	l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );

end

// === f_dlg_spire_03_cortana_01::: Dialog
script dormant f_dlg_spire_03_cortana_01()
dprint( "f_dlg_spire_03_cortana_01" );
local long l_dialog_id = DEF_DIALOG_ID_NONE();

	// Cortana is back in business
	l_dialog_id = dialog_start_foreground( "SPIRE_03_CORTANA_01", l_dialog_id, TRUE, DEF_DIALOG_STYLE_INTERRUPT(), FALSE, "", 0.0 );
		dialog_line_cortana( l_dialog_id, 1, TRUE, NONE, FALSE, NONE, 0.0, "", "CORTANA: Hey, you aren't where I told you to go." );

		// XXX TODO - hook up real waypoint
		thread (story_blurb_add("other", "Cortana: <Puts up a waypoint.>") );
		sleep_s (1.5 );

		// XXX TODO - Do wee need to put up a real waypoint here? or remove the old one
		dialog_line_cortana( l_dialog_id, 2, TRUE, NONE, FALSE, NONE, 0.0, "", "CORTANA: Over there, Chief." );
		dialog_line_chief  ( l_dialog_id, 3, TRUE, NONE, FALSE, NONE, 0.0, "", "CHIEF: Are you sure?" );
		dialog_line_cortana( l_dialog_id, 4, TRUE, NONE, FALSE, NONE, 10.0, "", "CORTANA: You don't trust me?" ); // TIME IS PADDED IN THIS LINE

		dialog_line_chief  ( l_dialog_id, 5, TRUE, NONE, FALSE, NONE, 0.0, "", "CHIEF: I trust you." );
		dialog_line_cortana( l_dialog_id, 6, TRUE, NONE, FALSE, NONE, 0.0, "", "CORTANA: Took you long enough to say so." );
	l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );

end

// === f_dlg_spire_03_cortana_02::: Dialog
script dormant f_dlg_spire_03_cortana_02()
dprint( "f_dlg_spire_03_cortana_02" );

	// Cortana is slotted and starts trying to close the Maw  - This gets called from CONTROL ROOM hsc
	L_dlg_spire_03_cortana_02 = dialog_start_foreground( "SPIRE_03_CORTANA_02", L_dlg_spire_03_cortana_02, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 );
			dialog_line_cortana( L_dlg_spire_03_cortana_02, 0, TRUE, 'sound\dialog\mission\m70\m70_failmoment_00102', FALSE, NONE, 0.0, "", "Cortana : Tapping into the spires' central net." );
			dialog_line_cortana( L_dlg_spire_03_cortana_02, 1, TRUE, 'sound\dialog\mission\m70\m70_failmoment_00103', FALSE, NONE, 0.0, "", "Cortana : They're mine." );
			dialog_line_cortana( L_dlg_spire_03_cortana_02, 2, TRUE, 'sound\dialog\mission\m70\m70_failmoment_00104', FALSE, NONE, 0.0, "", "Cortana : Now to�" );
			dialog_line_cortana( L_dlg_spire_03_cortana_02, 3, TRUE, 'sound\dialog\mission\m70\m70_failmoment_00105', FALSE, NONE, 0.0, "", "Cortana : ...IMPRISON THEM?!?" );
			dialog_line_chief( L_dlg_spire_03_cortana_02, 4, TRUE, 'sound\dialog\mission\m70\m70_failmoment_00106', FALSE, NONE, 0.0, "", "Master Chief : What are you doing?" );
			dialog_line_cortana( L_dlg_spire_03_cortana_02, 5, TRUE, 'sound\dialog\mission\m70\m70_failmoment_00107', FALSE, NONE, 0.0, "", "Cortana : -- LIKE HE IMPRISONED HIS PROMETHEANS? LIKE DR. HALSEY IMPRISONED ME??" );
			dialog_line_cortana( L_dlg_spire_03_cortana_02, 6, TRUE, 'sound\dialog\mission\m70\m70_failmoment_00108', FALSE, NONE, 0.0, "", "Cortana : Chief?" );
			dialog_line_chief( L_dlg_spire_03_cortana_02, 7, TRUE, 'sound\dialog\mission\m70\m70_failmoment_00109', FALSE, NONE, 0.0, "", "Master Chief : His ship's online! They're leaving!" );
			dialog_line_cortana( L_dlg_spire_03_cortana_02, 8, TRUE, 'sound\dialog\mission\m70\m70_failmoment_00110', FALSE, NONE, 0.0, "", "Cortana : Chief, I'm sorry. I don't know what-" );
			dialog_line_chief( L_dlg_spire_03_cortana_02, 9, TRUE, 'sound\dialog\mission\m70\m70_failmoment_00111', FALSE, NONE, 0.0, "", "Master Chief : Track those Liches. We can go across them to get to the Didact's ship." );
			dialog_line_cortana( L_dlg_spire_03_cortana_02, 10, TRUE, 'sound\dialog\mission\m70\m70_failmoment_00112', FALSE, NONE, 0.0, "", "Cortana : Wait. ACROSS them?!?" );
	L_dlg_spire_03_cortana_02 = dialog_end( L_dlg_spire_03_cortana_02, TRUE, TRUE, "" );
	
end

// === f_dlg_spire_03_door_01::: Dialog
script dormant f_dlg_spire_03_door_01()
dprint( "f_dlg_spire_03_door_01" );
local long l_dialog_id = DEF_DIALOG_ID_NONE();

	l_dialog_id = dialog_start_foreground( "SPIRE_03_DOOR_01", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 );
		dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m70\m70_rev_spire3_intro_00100', FALSE, NONE, 0.0, "", "Cortana : Those defense spires we keep running into are being controlled from this tower. Get me to the Control room and we might be able to reposition them to block the Didact's ship from leaving." );
	l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );

end

// === f_dlg_spire_03_control_room::: Dialog
script dormant f_dlg_spire_03_control_room()
dprint( "f_dlg_spire_03_control_room" );
local long l_dialog_id = DEF_DIALOG_ID_NONE();

	// Enter the Control Room
	l_dialog_id = dialog_start_foreground( "SPIRE_03_CONTROL_ROOM", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 );
		dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m70\m70_failmoment_00101', FALSE, NONE, 0.0, "", "Cortana : Quick, let me at the spire controls." );
	l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
	
end


script dormant f_dlg_spire_03_control_room_fail()
dprint( "f_dlg_spire_03_control_room" );
local long l_dialog_id = DEF_DIALOG_ID_NONE();

	// Enter the Control Room
	l_dialog_id = dialog_start_foreground( "SPIRE_03_CONTROL_ROOM", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 );
		dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m70\m70_failmoment_00102', FALSE, NONE, 0.0, "", "Cortana : Tapping into the spires' central net." );
		dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m70\m70_failmoment_00103', FALSE, NONE, 0.0, "", "Cortana : They're mine." );
		dialog_line_cortana( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m70\m70_failmoment_00104', FALSE, NONE, 0.0, "", "Cortana : Now to�" );
		dialog_line_cortana( l_dialog_id, 3, TRUE, 'sound\dialog\mission\m70\m70_failmoment_00105', FALSE, NONE, 0.0, "", "Cortana : ...IMPRISON THEM?!?" );
		dialog_line_chief( l_dialog_id, 4, TRUE, 'sound\dialog\mission\m70\m70_failmoment_00106', FALSE, NONE, 0.0, "", "Master Chief : What are you doing?" );
		dialog_line_cortana( l_dialog_id, 5, TRUE, 'sound\dialog\mission\m70\m70_failmoment_00107', FALSE, NONE, 0.0, "", "Cortana : -- LIKE HE IMPRISONED HIS PROMETHEANS? LIKE DR. HALSEY IMPRISONED ME??" );
		dialog_line_cortana( l_dialog_id, 6, TRUE, 'sound\dialog\mission\m70\m70_failmoment_00108', FALSE, NONE, 0.0, "", "Cortana : Chief?" );
		dialog_line_chief( l_dialog_id, 7, TRUE, 'sound\dialog\mission\m70\m70_failmoment_00109', FALSE, NONE, 0.0, "", "Master Chief : His ship's online! They're leaving!" );
		dialog_line_cortana( l_dialog_id, 8, TRUE, 'sound\dialog\mission\m70\m70_failmoment_00110', FALSE, NONE, 0.0, "", "Cortana : Chief, I'm sorry. I don't know what-" );
	l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
	
end




// === f_dlg_spire_03_take_charge::: Dialog
script dormant f_dlg_spire_03_take_charge()
dprint( "f_dlg_spire_03_take_charge" );

	// Chief takes charge and pulls Cortana from the console - This gets called from CONTROL ROOM hsc
	L_dlg_spire_03_take_charge = dialog_start_foreground( "SPIRE_03_TAKE_CHARGE", L_dlg_spire_03_take_charge, TRUE, DEF_DIALOG_STYLE_INTERRUPT(), FALSE, "", 0.0 );
	//	dialog_line_chief  ( L_dlg_spire_03_take_charge, 1, TRUE, NONE, FALSE, NONE, 0.0, "", "CHIEF: I'm getting you out of here." );
		
		if ( dialog_foreground_id_active_check(L_dlg_spire_03_take_charge) ) then
			//thread (story_blurb_add("other", "Cortana is back in Chief's head.") );
			sleep_s( 0.25 );
		end
		dialog_line_chief( L_dlg_spire_03_take_charge, 0, TRUE, 'sound\dialog\mission\m70\m70_failmoment_00111', FALSE, NONE, 0.0, "", "Master Chief : Track those Liches. We can go across them to get to the Didact's ship." );
		hud_rampancy_players_set( 0.25 );	
		dialog_line_cortana( L_dlg_spire_03_take_charge, 1, TRUE, 'sound\dialog\mission\m70\m70_failmoment_00112', FALSE, NONE, 0.0, "", "Cortana : Wait. ACROSS them?!?" );
		dialog_line_cortana( L_dlg_spire_03_take_charge, 3, TRUE, 'sound\dialog\mission\global\global_MC_00100', FALSE, NONE, 0.0, "", "Master Chief : Yes." );
		dialog_line_cortana( L_dlg_spire_03_take_charge, 2, TRUE, 'sound\dialog\mission\m70\m70_lichjump_00100', FALSE, NONE, 0.0, "", "Cortana : Um... there.... there are several Liches moving in formation towards the Didact's ship." );
		hud_rampancy_players_set( 0.0 );	
	L_dlg_spire_03_take_charge = dialog_end( L_dlg_spire_03_take_charge, TRUE, TRUE, "" );
	wake(f_dlg_spire_03_outro_01);
end

// === f_dlg_spire_03_outro_01::: Dialog
global short S_dlg_spire_03_outro_01_blip 				= 2;
script dormant f_dlg_spire_03_outro_01()

	L_dlg_spire_03_outro_01 = dialog_start_foreground( "SPIRE03_OUTRO01", L_dlg_spire_03_outro_01, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 );
			dialog_line_cortana( L_dlg_spire_03_outro_01, 0, TRUE, 'sound\dialog\mission\m70\m70_lichjump_00102', FALSE, NONE, 0.0, "", "Cortana : We're only going to have one shot at this." );
			sleep_s(3);
			dialog_line_cortana( L_dlg_spire_03_outro_01, 1, TRUE, 'sound\dialog\mission\m70\m70_lichjump_00103', FALSE, NONE, 0.0, "", "Cortana : Okay, GO!" );
	L_dlg_spire_03_outro_01 = dialog_end( L_dlg_spire_03_outro_01, TRUE, TRUE, "" );
	
end

// -------------------------------------------------------------------------------------------------
// -------------------------------------------------------------------------------------------------
// -------------------------------------------------------------------------------------------------
// LICH TRAIN
// -------------------------------------------------------------------------------------------------
// -------------------------------------------------------------------------------------------------
// -------------------------------------------------------------------------------------------------

// -------------------------------------------------------------------------------------------------
// LICH: JUMPS
// -------------------------------------------------------------------------------------------------
// variables

// functions
// === f_dlg_lich_jump_01::: Dialog
script dormant f_dlg_lich_jump_01()
local long l_dialog_id = DEF_DIALOG_ID_NONE();
dprint( "f_dlg_lich_jump_01" );

	// Chief starts to jump across the Liches
	l_dialog_id = dialog_start_foreground( "LICH_JUMP_01", l_dialog_id, TRUE, DEF_DIALOG_STYLE_SKIP(), TRUE, "", 0.0 );
//		dialog_line_cortana( l_dialog_id, 1, TRUE, NONE, FALSE, NONE, 0.0, "", "CORTANA: Chief! What are you doing?!" );
	//	dialog_line_chief  ( l_dialog_id, 2, TRUE, NONE, FALSE, NONE, 0.0, "", "CHIEF: Improvising." );
	l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
	thread(m70_objective_lich_nudge());
	
end

// === f_dlg_lich_jump_02::: Dialog
script dormant f_dlg_lich_jump_02()
local long l_dialog_id = DEF_DIALOG_ID_NONE();
dprint( "f_dlg_lich_jump_02" );

	l_dialog_id = dialog_start_foreground( "LICH_JUMP_02", l_dialog_id, TRUE, DEF_DIALOG_STYLE_SKIP(), TRUE, "", 0.0 );
				dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m70\m70_lichjump_00115', FALSE, NONE, 0.0, "", "Cortana : JUMP NOW!!" );
	l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
	
	
end


script dormant f_dlg_lich_02()
local long l_dialog_id = DEF_DIALOG_ID_NONE();
dprint( "f_dlg_lich_02" );

	l_dialog_id = dialog_start_foreground( "LICH_02", l_dialog_id, TRUE, DEF_DIALOG_STYLE_SKIP(), TRUE, "", 0.0 );
				dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m70\m70_lichjump_00104', FALSE, NONE, 0.0, "", "Cortana : Chief! The second Lich is moving up! Get ready!" );
				dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m70\m70_lichjump_00105', FALSE, NONE, 0.0, "", "Cortana : Here they come - off to the right." );
				dialog_line_cortana( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m70\m70_lichjump_00107', FALSE, NONE, 0.0, "", "Cortana : Other side!" );
	l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
	
	
end


script dormant f_dlg_lich_03()
local long l_dialog_id = DEF_DIALOG_ID_NONE();
dprint( "f_dlg_lich_03" );
		kill_script(m70_objective_lich_nudge);
	l_dialog_id = dialog_start_foreground( "LICH_03", l_dialog_id, TRUE, DEF_DIALOG_STYLE_SKIP(), TRUE, "", 0.0 );
		dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m70\m70_lichjump_00110', FALSE, NONE, 0.0, "", "Cortana : The Didact's ship's in range! One more jump should get us there!" );
		dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m70\m70_lichjump_00111', FALSE, NONE, 0.0, "", "Cortana : Lich! Starboard side!" );
		dialog_line_cortana( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m70\m70_lichjump_00112', FALSE, NONE, 0.0, "", "Cortana : Lich! Off the Port bow!" );
		dialog_line_cortana( l_dialog_id, 3, TRUE, 'sound\dialog\mission\m70\m70_lichjump_00113', FALSE, NONE, 0.0, "", "Cortana : Line up, Chief!" );
	l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );

	
end



// === f_dlg_lich_jump_03::: Dialog
script dormant f_dlg_lich_jump_03()
local long l_dialog_id = DEF_DIALOG_ID_NONE();
dprint( "f_dlg_lich_jump_03" );

	l_dialog_id = dialog_start_foreground( "LICH_JUMP_03", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 );
		dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m70\m70_lichjump_00114', FALSE, NONE, 0.0, "", "Cortana : It's too far!" );
		dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m70\m70_lichjump_00115', FALSE, NONE, 0.0, "", "Cortana : JUMP NOW!!" );
	l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
	
end

// -------------------------------------------------------------------------------------------------
// LICH: SCANNED PLAYER
// -------------------------------------------------------------------------------------------------
// variables
global long L_dlg_scanned_player = DEF_DIALOG_ID_NONE();

// functions
// === f_dlg_lich_scanned_player::: Dialog
script static void f_dlg_lich_scanned_player()
dprint( "f_dlg_lich_scanned_player" );

	// Player has been scanned by the Didact in the lich train; could be on a lich or platform
	L_dlg_scanned_player = dialog_start_foreground( "LICH_SCANNED_PLAYER", L_dlg_scanned_player, TRUE, DEF_DIALOG_STYLE_INTERRUPT(), FALSE, "", 0.0 );
		dialog_line_cortana( L_dlg_scanned_player, 1, TRUE, NONE, FALSE, NONE, 0.25, "", "CORTANA: <TEMP> The Didact knows you're coming!" );
		dialog_line_cortana( L_dlg_scanned_player, 2, TRUE, NONE, FALSE, NONE, 0.0, "", "CORTANA: <TEMP> I'm detecting a weapon firing from the ship!" );
	L_dlg_scanned_player = dialog_end( L_dlg_scanned_player, TRUE, TRUE, "" );
	
end

// -------------------------------------------------------------------------------------------------
// LICH: ATTACK PLATFORM
// -------------------------------------------------------------------------------------------------
// variables
global long L_dlg_attack_platform = DEF_DIALOG_ID_NONE();

// functions
// === f_dlg_lich_attack_platform::: Dialog
script static void f_dlg_lich_attack_platform()
dprint( "f_dlg_lich_attack_platform" );

	// Lich ship has taken damage after the didact scanned it (then attacked it or whatever he's doing)
	L_dlg_attack_platform = dialog_start_foreground( "LICH_attack_platform", L_dlg_attack_platform, TRUE, DEF_DIALOG_STYLE_SKIP(), FALSE, "", 0.0 );
		dialog_line_cortana( L_dlg_attack_platform, 1, TRUE, NONE, FALSE, NONE, 0.0, "", "CORTANA: <TEMP> GET OUT OF THERE!!!" );
	L_dlg_attack_platform = dialog_end( L_dlg_attack_platform, TRUE, TRUE, "" );
	
end

// -------------------------------------------------------------------------------------------------
// LICH: SCAN DAMAGE
// -------------------------------------------------------------------------------------------------
// variables

// functions
// === f_dlg_lich_damage_start::: Dialog
script static void f_dlg_lich_damage_start()
dprint( "f_dlg_lich_damage_start" );
static long l_dialog_id = DEF_DIALOG_ID_NONE();

	// Lich ship has taken damage after the didact scanned it (then attacked it or whatever he's doing)
	l_dialog_id = dialog_start_foreground( "LICH_DAMAGE_START", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 );
      dialog_line_cortana( l_dialog_id, 0, TRUE, NONE, FALSE, NONE, 0.0, "", "Cortana : Didact scan damaged the lich's core!" );
	//	dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m70\m70_lichjump_00104', FALSE, NONE, 0.0, "", "Cortana : Chief! The second Lich is moving up! Get ready!" );
	//	dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m70\m70_lichjump_00105', FALSE, NONE, 0.0, "", "Cortana : Here they come - off to the right." );
	//	dialog_line_cortana( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m70\m70_lichjump_00107', FALSE, NONE, 0.0, "", "Cortana : Other side!" );
	l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
	
end

// -------------------------------------------------------------------------------------------------
// LICH: ABANDON SHIP!!!
// -------------------------------------------------------------------------------------------------
// variables

// functions
// === f_dlg_lich_abandon_ship::: Dialog
script static void f_dlg_lich_abandon_ship( trigger_volume tv_volume, short s_line_min, short s_line_max )
dprint( "f_dlg_lich_abandon_ship" );
static long l_dialog_id = DEF_DIALOG_ID_NONE();
static boolean b_line_01_played = FALSE;
static boolean b_line_02_played = FALSE;
static boolean b_line_03_played = FALSE;
static boolean b_line_04_played = FALSE;

	if ( not dialog_foreground_id_active_check(l_dialog_id) ) then
	
		l_dialog_id = dialog_start_foreground( "LICH_ABANDON_SHIP", l_dialog_id, volume_test_players(tv_volume), DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 );

			static short s_play_line = 0;
			s_play_line = random_range( s_line_min, s_line_max );
	
			// find out if the line is still valid to play, if not, start at the top	
			if ( (s_play_line == 1) and (b_line_01_played) ) then
				s_play_line = s_line_min;
			end
			if ( (s_play_line == 2) and (b_line_02_played) ) then
				s_play_line = s_line_min;
			end
			if ( (s_play_line == 3) and (b_line_03_played) ) then
				s_play_line = s_line_min;
			end
			if ( (s_play_line == 4) and (b_line_04_played) ) then
				s_play_line = s_line_min;
			end


			// play unplayed line
			if ( (s_play_line <= 1) and (not b_line_01_played) ) then
				b_line_01_played = dialog_line_cortana( l_dialog_id, 1, volume_test_players(tv_volume), 'sound\dialog\mission\m70\m70_lichjump_00109', FALSE, NONE, 0.0, "", "Cortana : You can shoot Covenant later! We've got to go NOW!" );
				if ( b_line_01_played ) then
					s_play_line = 5;
				end
			end
			if ( (s_play_line <= 2) and (not b_line_02_played) ) then
				b_line_02_played = dialog_line_cortana( l_dialog_id, 2, volume_test_players(tv_volume), 'sound\dialog\mission\m70\m70_lichjump_00108', FALSE, NONE, 0.0, "", "Cortana : Don't worry about them! The Didact's getting away!" );
				if ( b_line_02_played ) then
					s_play_line = 5;
				end
			end
			if ( (s_play_line <= 3) and (not b_line_03_played) ) then
				b_line_03_played = dialog_line_cortana( l_dialog_id, 3, volume_test_players(tv_volume),'sound\dialog\mission\m70\m70_lichjump_00109', FALSE, NONE, 0.0, "", "Cortana : You can shoot Covenant later! We've got to go NOW!" );
				if ( b_line_03_played ) then
					s_play_line = 5;
				end
			end
			if ( (s_play_line <= 4) and (not b_line_04_played) ) then
				b_line_04_played = dialog_line_cortana( l_dialog_id, 4, volume_test_players(tv_volume), 'sound\dialog\mission\m70\m70_lichjump_00108', FALSE, NONE, 0.0, "", "Cortana : Don't worry about them! The Didact's getting away!" );
				if ( b_line_04_played ) then
					s_play_line = 5;
				end
			end
			
		l_dialog_id = dialog_end( l_dialog_id, FALSE, FALSE, "" );
		
	end
	
end

/*
// === f_dlg_<event>::: Dialog
script dormant f_dlg_<event>()
static long l_dialog_id = DEF_DIALOG_ID_NONE();

	if ( not dialog_xxx_id_active_check(l_dialog_id) ) then
	
		l_dialog_id = dialog_start_xxx( "str_name", l_dialog_id, b_condition, r_style, b_foreground_interruptable, "", 0.0 );
			dialog_line_chief( l_dialog_id, s_line_index, TRUE, NONE, FALSE, NONE, 0.0, "", str_debug );
			dialog_line_cortana( l_dialog_id, s_line_index, TRUE, NONE, FALSE, NONE, 0.0, "", str_debug );
			dialog_line_other( l_dialog_id, s_line_index, TRUE, NONE, FALSE, NONE, 0.0, "", str_debug );
		l_dialog_id = dialog_end( l_dialog_id, b_active_invalidates, "" );
		
	end

end
*/



// =================================================================================================
// =================================================================================================
// NUDGES
// =================================================================================================
// =================================================================================================

script static void f_dialog_m70_nudge_1()
dprint( "f_dialog_m70_nudge_1" );
	local short s_random = 0;
	local long l_dialog_id = DEF_DIALOG_ID_NONE();

	s_random = random_range(1, 4);

	if s_random == 1 then
		l_dialog_id = dialog_start_foreground( "f_dialog_m70_nudge_1_03_a", l_dialog_id, (not b_objective_1_complete), DEF_DIALOG_STYLE_SKIP(), TRUE, "", 0.0 );
			dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m70\m70_infinity_dock_00104', FALSE, NONE, 0.0, "", "Cortana : Infinity's going to leave Requiem any minute. We've got to go." );
		l_dialog_id = dialog_end( l_dialog_id, TRUE, FALSE, "" );
	elseif s_random == 2 then
		l_dialog_id = dialog_start_foreground( "f_dialog_m70_nudge_1_b", l_dialog_id, (not b_objective_1_complete), DEF_DIALOG_STYLE_SKIP(), TRUE, "", 0.0 );
			dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m70\m70_infinity_dock_00105', FALSE, NONE, 0.0, "", "Cortana : Get to the Pelican, Chief." );
		l_dialog_id = dialog_end( l_dialog_id, TRUE, FALSE, "" );
	elseif s_random == 3 then
		l_dialog_id = dialog_start_foreground( "didact_scientist_03_c", l_dialog_id, (not b_objective_1_complete), DEF_DIALOG_STYLE_SKIP(), TRUE, "", 0.0 );
			dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m70\m70_infinity_dock_00106', FALSE, NONE, 0.0, "", "Cortana : If we're going to stop the Didact from getting this Composer, we should find that Pelican A-SAP." );
		l_dialog_id = dialog_end( l_dialog_id, TRUE, FALSE, "" );

	end


end

script static void f_dialog_m70_nudge_2()
dprint( "f_dialog_m70_nudge_2" );
	local short s_random = 0;
	local long l_dialog_id = DEF_DIALOG_ID_NONE();

	s_random = random_range(1, 6);

	if s_random == 1 then
		l_dialog_id = dialog_start_foreground( "f_dialog_m70_nudge_2_a", l_dialog_id, (not b_objective_2_complete), DEF_DIALOG_STYLE_SKIP(), TRUE, "", 0.0 );
			dialog_line_cortana( l_dialog_id, 0, (not b_objective_2_complete), 'sound\dialog\mission\m70\m70_infinity_launch_tube_00107', FALSE, NONE, 0.0, "", "Cortana : Initiate the launch sequence, Chief." );
		l_dialog_id = dialog_end( l_dialog_id, TRUE, FALSE, "" );
	elseif s_random == 2 then
		l_dialog_id = dialog_start_foreground( "f_dialog_m70_nudge_2_b", l_dialog_id, TRUE, DEF_DIALOG_STYLE_SKIP(), TRUE, "", 0.0 );
			dialog_line_cortana( l_dialog_id, 0, (not b_objective_2_complete), 'sound\dialog\mission\m70\m70_infinity_launch_tube_00109', FALSE, NONE, 0.0, "", "Cortana : Infinity's ready to leave Requiem. If we're doing this, it has to be now." );
		l_dialog_id = dialog_end( l_dialog_id, TRUE, FALSE, "" );
	elseif s_random == 3 then
		l_dialog_id = dialog_start_foreground( "f_dialog_m70_nudge_2_c", l_dialog_id, TRUE, DEF_DIALOG_STYLE_SKIP(), TRUE, "", 0.0 );
			dialog_line_cortana( l_dialog_id, 0, (not b_objective_2_complete), 'sound\dialog\mission\m70\m70_infinity_launch_tube_00110', FALSE, NONE, 0.0, "", "Cortana : The Didact won't wait forever. We need to go." );
		l_dialog_id = dialog_end( l_dialog_id, TRUE, FALSE, "" );
	elseif s_random == 4 then
		l_dialog_id = dialog_start_foreground( "f_dialog_m70_nudge_2_d", l_dialog_id, TRUE, DEF_DIALOG_STYLE_SKIP(), TRUE, "", 0.0 );
			dialog_line_cortana( l_dialog_id, 0, (not b_objective_2_complete), 'sound\dialog\mission\m70\m70_infinity_launch_tube_00108', FALSE, NONE, 0.0, "", "Cortana : Look, we can't BOTH have second thoughts. Get us out of here." );
		l_dialog_id = dialog_end( l_dialog_id, TRUE, FALSE, "" );
	elseif s_random == 5 then
		l_dialog_id = dialog_start_foreground( "f_dialog_m70_nudge_2_e", l_dialog_id, TRUE, DEF_DIALOG_STYLE_SKIP(), TRUE, "", 0.0 );
			dialog_line_cortana( l_dialog_id, 0, (not b_objective_2_complete), 'sound\dialog\mission\m70\m70_infinity_launch_tube_00111', FALSE, NONE, 0.0, "", "Cortana : What are you waiting for? Launch." );
		l_dialog_id = dialog_end( l_dialog_id, TRUE, FALSE, "" );
	end


end
script static void f_dialog_m70_nudge_3()
dprint( "f_dialog_m70_nudge_3" );

	local long l_dialog_id = DEF_DIALOG_ID_NONE();

		if ( (not dialog_foreground_id_active_check(l_dialog_id)) and  (not b_objective_3_complete)) then
					l_dialog_id = dialog_start_foreground( "NUDGE_3b", l_dialog_id,  (not b_objective_3b_complete), DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 ); 
								dialog_line_cortana( l_dialog_id, 0, (not b_objective_3_complete), 'sound\dialog\mission\m70\m70_rev_all_1st_flight_00100', FALSE, NONE, 0.0, "", "Cortana : Chief, head for one of those locations. Bringing those towers down's the only way we're going to reach the Didact." );
				 l_dialog_id = dialog_end( l_dialog_id, b_objective_3b_complete, b_objective_3b_complete, "" );
		end

end



script static void f_dialog_m70_nudge_4()
dprint("f_dialog_m70_nudge_4");
static long l_dialog_id = DEF_DIALOG_ID_NONE();
		if ( (not dialog_foreground_id_active_check(l_dialog_id)) and  (not b_objective_4_complete)) then
					l_dialog_id = dialog_start_foreground( "NUDGE_4", l_dialog_id,  (not b_objective_4_complete), DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 ); 
								dialog_line_cortana( l_dialog_id, 0, (not b_objective_4_complete), 'sound\dialog\mission\m70\m70_spire1_gondolas_00110', FALSE, NONE, 0.0, "", "Cortana : Get back to the Gondola, Chief." );
				 l_dialog_id = dialog_end( l_dialog_id, b_objective_4_complete, b_objective_4_complete, "" );
		end
end



script static void f_dialog_m70_lich_nudge()
dprint("f_dialog_m70_lich_nudge");
static long l_dialog_id = DEF_DIALOG_ID_NONE();
		if ( (not dialog_foreground_id_active_check(l_dialog_id)) and  (not b_objective_4_complete)) then
					l_dialog_id = dialog_start_foreground( "LICH_NUDGE", l_dialog_id,  (not b_objective_4_complete), DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 ); 
								dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m70\m70_lichjump_00109', FALSE, NONE, 0.0, "", "Cortana : You can shoot Covenant later! We've got to go NOW!" );
				 l_dialog_id = dialog_end( l_dialog_id, b_objective_4_complete, b_objective_4_complete, "" );
		end
end

script static void f_dialog_m70_callout_reinforcements()
dprint("f_dialog_callout_reinforcements");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "REINFORCEMENTS", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\global\global_chatter_00149', FALSE, NONE, 0.0, "", "Cortana : Reinforcements!" );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end

script static void f_dialog_m70_callout_knight()
dprint("f_dialog_callout_knight");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "KNIGHT", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\global\global_chatter_00164', FALSE, NONE, 0.0, "", "Cortana : Knight!" );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end


script static void f_dialog_m70_callout_more_knights()
dprint("f_dialog_callout_more_knights");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "MORE_KNIGHTS", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\global\global_chatter_00157', FALSE, NONE, 0.0, "", "Cortana : More knights!" );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end

script static void f_dialog_m70_callout_look_out()
dprint("f_dialog_callout_look_out");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "LOOK_OUT", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\global\global_chatter_00137', FALSE, NONE, 0.0, "", "Cortana : Look out!" );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end

script static void f_dialog_m70_callout_atta_boy()
dprint("f_dialog_callout_atta_boy");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "LOOK_OUT", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\global\global_chatter_00238', FALSE, NONE, 0.0, "", "Cortana : Atta boy, Chief." );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end


script static void f_dialog_m70_callout_stragglers()
dprint("f_dialog_callout_atta_boy");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "STRAGGLERS", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\global\global_chatter_00246', FALSE, NONE, 0.0, "", "Cortana : We've still got some stragglers." );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end

script static void f_dialog_m70_callout_more_prometheans()
dprint("f_dialog_callout_more_prometheans");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "MORE_PROMETHEANS", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\global\global_chatter_00166', FALSE, NONE, 0.0, "", "Cortana : More Prometheans!" );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end

script static void f_dialog_m70_callout_inbound()
dprint("f_dialog_callout_inbound");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "INBOUND", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\global\global_chatter_00128', FALSE, NONE, 0.0, "", "Cortana : Inbound!" );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end

script static void f_dialog_m70_callout_covenant()
dprint("f_dialog_m70_callout_covenant");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "COVENANT", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\global\global_chatter_00120', FALSE, NONE, 0.0, "", "Cortana : Covenant!" );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end
// --- End m70_dialog.hsc ---

// --- Begin m70_didact.hsc ---
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343
//
// Mission: 					m70
//
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343

// =================================================================================================
// =================================================================================================
// DIDACT
// =================================================================================================
// =================================================================================================
// defines

// variables
// debug

// functions
// === f_didact_startup::: Auto startup
script startup f_didact_startup()
	sleep_until( b_mission_started == TRUE, 1 );
	dprint( "::: f_didact_startup :::" );
	
	// setup cleanup
	wake( f_didact_cleanup );
	
	sleep_until( (current_zone_set_fully_active() >= DEF_S_ZONESET_INFINITY_EXT) and (current_zone_set_fully_active() <= DEF_S_ZONESET_SPIRE_03_EXT), 1 );

	// wake init
	wake( f_didact_init );
	
end

// === f_didact_init::: Initialize
script dormant f_didact_init()
	dprint( "::: f_didact_init :::" );
	
	// init sub modules
	wake( f_didact_ship_init );
	wake( f_didact_attack_init );

end

// === f_didact_deinit::: Deinitialize
script dormant f_didact_deinit()
	dprint( "::: f_didact_deinit :::" );

	// kill functions
	sleep_forever( f_didact_init );

	// init sub modules
	wake( f_didact_ship_deinit );
	wake( f_didact_attack_deinit );

end

// === f_didact_cleanup::: Cleanup area
script dormant f_didact_cleanup()
	sleep_until( f_objective_missioncomplete_check(), 1 );
	dprint( "::: f_didact_cleanup :::" );

	wake( f_didact_deinit );
	
end

// =================================================================================================
// DIDACT: SHIP
// =================================================================================================
// === f_didact_ship_init::: Initialize
script dormant f_didact_ship_init()
//sleep_until( object_valid(dm_didact_ship_01), 1 );
	dprint( "::: f_didact_ship_init :::" );
	
	//device_set_position_track( dm_didact_ship_01, "m70_liftoff", 0.0 );

end

// === f_didact_ship_deinit::: Deinitialize
script dormant f_didact_ship_deinit()
	dprint( "::: f_didact_ship_deinit :::" );

	// kill functions
	sleep_forever( f_didact_ship_init );

end

// =================================================================================================
// DIDACT: ATTACK
// =================================================================================================
// === f_didact_attack_init::: Initialize
script dormant f_didact_attack_init()
	dprint( "::: f_didact_attack_init :::" );

end

// === f_didact_attack_deinit::: Deinitialize
script dormant f_didact_attack_deinit()
	dprint( "::: f_didact_attack_deinit :::" );

	// kill functions
	sleep_forever( f_didact_attack_init );

end

// === f_didact_attack_target::: Makes Didact ship attack the target
script static void f_didact_attack_target()

	if ( not dialog_id_played_check(L_dlg_scanned_player)) then
		sleep_until( dialog_id_played_check(L_dlg_scanned_player) or dialog_foreground_id_line_index_check_greater_equel(L_dlg_scanned_player, 2), 1 );
	end
	
	// sleep a brief moment to simulate projectile
	sleep_rand_s( 1.25, 1.75 );

	dprint( "::: f_didact_attack_target :::" );
	// XXX

end

// --- End m70_didact.hsc ---

// --- Begin m70_flight.hsc ---
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343
//
// Mission: 					m70
// M70_FLIGHT
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343

//==========================================
//FUNCTIONS_INDEX
//==========================================


//==========================================
//FLIGHT_VARIABLES
//==========================================

global boolean b_flight_launch_active = FALSE;
global boolean b_flight_insertion = FALSE;
global boolean b_flight_blip_clear = TRUE;
global boolean b_flight_main_spires_blip = FALSE;
global boolean b_cortana_bliped_sp03 = FALSE;
global short s_flight_state = 0;

script static short S_DEF_FLIGHT_STATE_START()							1; end
script static short S_DEF_FLIGHT_STATE_START_COMPLETE()			2; end
script static short S_DEF_FLIGHT_STATE_SECOND()							3; end
script static short S_DEF_FLIGHT_STATE_SECOND_COMPLETE()		4; end
script static short S_DEF_FLIGHT_STATE_THIRD()							5; end
script static short S_DEF_FLIGHT_STATE_THIRD_COMPLETE()			6; end

global long l_didact_kill_volume = 0;
global long l_thread_blip_flags = 0;
//==========================================
//FLIGHT_MAIN
//==========================================
// :: FLIGHT_INIT

script startup f_flight_startup()
	sleep_until( b_mission_started == TRUE, 1 );
	wake( f_flight_init ); 	// wake init
end

script dormant f_flight_init()
	dprint( "::: prepare f_flight_init :::" );
	// setup cleanup watch
	wake( f_flight_cleanup );
	sleep_until( F_Flight_Zone_Active(), 1);

	dprint( "::: f_flight_init :::" );
	// initialize modules
	wake( f_flight_AI_init );
	wake( f_flight_narrative_init );
	wake( f_flight_audio_init );
	wake( f_flight_FX_init );
	kill_volume_disable(kill_didact_attack);
	sleep(60);
	// initialize sub modules
	dprint("f_flight_main");
	
	if s_flight_state < S_DEF_FLIGHT_STATE_SECOND_COMPLETE() then
		thread(f_flight_state_second_spire());
	end

	if s_flight_state < S_DEF_FLIGHT_STATE_THIRD_COMPLETE() then
		thread(f_flight_state_third_spire());
	end
end

// :: FLIGHT_CLEANUP
script dormant f_flight_cleanup()
	sleep_until( s_flight_state >= S_DEF_FLIGHT_STATE_THIRD_COMPLETE(), 1 );
	dprint( "::: f_flight_cleanup :::" );

	// deinitialize modules
	wake( f_flight_AI_deinit );
	wake( f_flight_narrative_deinit );
	wake( f_flight_audio_deinit );
	wake( f_flight_FX_deinit );
	
	//functions
	sleep_forever( f_flight_init );
	//sleep_forever(f_flight_state_start);
	//sleep_forever(f_flight_state_second_spire);
//	sleep_forever(f_flight_state_third_spire);
	sleep_forever(f_flight_start_game_save);
	sleep_forever(f_flight_launch_main);
	sleep_forever(f_flight_launch_tutorial);
	sleep_forever(f_dlg_flight_first_spire);
	
end

//==========================================
//FLIGHT_GATES
//==========================================

// :: FLIGHT_GATES
script static boolean f_Flight_Zone_Active()
	( current_zone_set_fully_active() == DEF_S_ZONESET_INFINITY_EXT ) or
	( current_zone_set_fully_active() == DEF_S_ZONESET_SPIRE_01_EXT ) or
	( current_zone_set_fully_active() == DEF_S_ZONESET_SPIRE_02_EXT ) or
	( current_zone_set_fully_active() == DEF_S_ZONESET_SPIRE_03_EXT );
end

script static boolean f_Flight_Zone_current_zoneset()
	( current_zone_set() == DEF_S_ZONESET_INFINITY_EXT ) or
	( current_zone_set() == DEF_S_ZONESET_SPIRE_01_EXT ) or
	( current_zone_set() == DEF_S_ZONESET_SPIRE_02_EXT ) or
	( current_zone_set() == DEF_S_ZONESET_SPIRE_03_EXT );
end
//================================
// FLIGHT_STATES
//================================
//== ZONESET CHECK
script continuous f_flight_zone_spire_1_exterior_check()
	sleep_until(f_Flight_Zone_current_zoneset() and volume_test_players(tv_flight_spire_01_landing_pad) and current_zone_set_fully_active() != DEF_S_ZONESET_SPIRE_01_EXT, 1);
	device_set_power(dm_sp01_int_door_01, 0);

	zoneset_prepare_and_load( DEF_S_ZONESET_SPIRE_01_EXT );

	device_set_power(dm_sp01_int_door_01, 1);
end

script continuous f_flight_zone_spire_2_exterior_check()
	sleep_until(f_Flight_Zone_current_zoneset() and volume_test_players(tv_flight_spire_02_landing_pad) and current_zone_set_fully_active() != DEF_S_ZONESET_SPIRE_02_EXT, 1);
	device_set_power(dm_sp02_int_door_01, 0);
	
	zoneset_prepare_and_load( DEF_S_ZONESET_SPIRE_02_EXT );
	
	device_set_power(dm_sp02_int_door_01, 1);
end

script continuous f_flight_zone_spire_3_exterior_check()
	sleep_until(f_Flight_Zone_current_zoneset() and volume_test_players(tv_flight_spire_03_landing_pad) and current_zone_set_fully_active() != DEF_S_ZONESET_SPIRE_03_EXT, 1);
	device_set_power(dm_sp03_int_door_01, 0);
	
	zoneset_prepare_and_load( DEF_S_ZONESET_SPIRE_03_EXT );
	
	if s_flight_state == S_DEF_FLIGHT_STATE_THIRD() and f_check_both_spire_complete() then
		device_set_power(dm_sp03_int_door_01, 1);
	end
	
end
//======================


// :: STATE_START
script static void f_flight_state_start()
	sleep_until(s_flight_state == S_DEF_FLIGHT_STATE_START(), 1);

	dprint("f_flight_state_start");
	data_mine_set_mission_segment ("m70_flight_01"); 
	//xxx test drop
	s_drop_protection_thread = thread(f_pelican_drop_protection());

	wake(f_flight_launch_main);

	sleep_until(f_flight_Zone_Active(), 1);
	device_set_power(dm_sp03_int_door_01, 0);

	thread(f_flight_ai_spawn());
	thread(f_flight_flocks());
	thread(f_didact_ship());
	//xxx DANGER this shit could break it all
	thread(f_anti_pelican_grief(inf_pelican_gunship));
	//XXX NAR
	//thread(f_flight_nar_defense_spires());
	
	sleep_until(not b_flight_launch_active, 1);
	
	wake(f_flight_infinity_depart);
	
	if game_is_cooperative() then
		thread(f_flight_airspace_coop_control());
		thread(f_flight_check_safe_to_respawn());
	end
	
	game_save();
	
	wake(f_nar_flight_first_didact_reveal);

	sleep_until(b_flight_main_spires_blip, 1);
	
	wake(f_nar_flight_first_spire_approach);
	
	thread(f_flight_blip_both_spires());
	
	
	thread(f_flight_start_spire_01());
	thread(f_flight_start_spire_02());
	//sleep_until(f_spires_state_active(), 1)
	//kill_thread(blip_both_thread);
	
end


// :: STATE_SECOND
script static void f_flight_state_second_spire()
	sleep_until(s_flight_state == S_DEF_FLIGHT_STATE_SECOND() and f_check_first_spire_complete(), 1);
	dprint("f_flight_state_second_spire");
	sleep_until(F_Flight_Zone_Active(), 1);
	data_mine_set_mission_segment ("m70_flight_02"); 
	device_set_power(dm_sp03_int_door_01, 0);
	//xxx test drop
	kill_thread(s_drop_protection_thread);
	sleep(5);
	s_drop_protection_thread = thread(f_pelican_drop_protection());
	b_flight_blip_clear = FALSE;
	
	thread(f_flight_ai_spawn());
	thread(f_flight_flocks());
	thread(f_didact_ship());
	
	if game_is_cooperative() then
		thread(f_flight_airspace_coop_control());
		thread(f_flight_check_safe_to_respawn());
	end
//xxx DANGER this shit could break it all
	thread(f_anti_pelican_grief(flight_pelican_sp01));
	
	//XXX NAR
	wake(f_nar_flight_second_spire_approach);
	wake(f_nar_flight_second_didact_ship);

	game_save();

	sleep_until(vehicle_test_players(), 1);
	sleep_s(2);
	f_m70_objective_set(ct_obj_spire_second);
	sleep_s(1);
	
	if not f_spire_state_complete(DEF_SPIRE_01) then
		f_blip_flag(flg_sp02_to_sp01, "recon");
		sleep_until(not volume_test_players_all(tv_flight_spire_02_landing_pad) and vehicle_test_players(), 1);
		f_unblip_flag(flg_sp02_to_sp01);
		f_blip_flag(flg_spire_01_approach, "recon");
		thread(f_flight_blip_spire_01());
		thread(f_flight_start_spire_01());
	elseif not f_spire_state_complete(DEF_SPIRE_02) then
		f_blip_flag(flg_sp01_to_sp02, "recon");
		sleep_until(not volume_test_players_all(tv_flight_spire_01_landing_pad) and vehicle_test_players(), 1);
		f_unblip_flag(flg_sp01_to_sp02);
		f_blip_flag(flg_spire_02_approach, "recon");
		thread(f_flight_blip_spire_02());
		thread(f_flight_start_spire_02());
	end
	
end

// :: STATE_THIRD
script static void f_flight_state_third_spire()
	sleep_until(s_flight_state == S_DEF_FLIGHT_STATE_THIRD() and f_check_both_spire_complete(), 1);
	dprint("f_flight_state_third_spire");
	sleep_until(F_Flight_Zone_Active(), 1);
	//xxx test drop
	kill_thread(s_drop_protection_thread);
	sleep(5);
	s_drop_protection_thread = thread(f_pelican_drop_protection());
	
	data_mine_set_mission_segment ("m70_flight_03"); 
	device_set_power(dm_sp03_int_door_01, 1);
	thread(f_flight_flocks());
	thread(f_didact_ship());

	thread(f_flight_didact_cryptum_kill_volume());
	
	if game_is_cooperative() then
		thread(f_flight_airspace_coop_control());
		thread(f_flight_check_safe_to_respawn());
	end
	
	//xxx DANGER this shit could break it all
	thread(f_anti_pelican_grief(flight_pelican_sp02));
	
	
	sleep_until(vehicle_test_players(), 1);
	
	game_save();
	
	sleep_s(1);
	
	thread(f_m70_objective_set(ct_obj_spire_final));
	
	wake(f_nar_flight_didact_warning);
	
	wake(f_nar_flight_third_spire);
	
	wake(f_nar_spire_03_exterior);
	
	//if volume_test_players(tv_flight_spire_01_landing_pad) then
		//f_flight_blip_clear_all();
		//f_blip_flag(flg_sp01_to_sp03, "recon");
	//elseif volume_test_players(tv_flight_spire_02_landing_pad) then
	//	f_flight_blip_clear_all();
		//f_blip_flag(flg_sp02_to_sp03, "recon");
	//end
	
	//sleep_until(vehicle_test_players(), 1);
	//sleep_s(2);
	f_flight_blip_clear_all();

//xxx
//	thread(f_music_m70_v07_didact_voice_8());
	
	
	
	sleep_until(volume_test_players(tv_flight_spire_03_airspace) and f_check_both_spire_complete() and b_cortana_bliped_sp03, 1);
	thread(f_flight_spire_03());

end

//==========================
// FLIGHT_SPIRES
//==========================
script static boolean f_not_in_airspace()
	not volume_test_players_all(tv_flight_spire_02_airspace) and not volume_test_players_all(tv_flight_spire_01_airspace);
end

script static void f_flight_blip_clear_all()
	dprint("CLEAR ALL BLIPS");
	f_unblip_flag(flg_spire_01_approach);
	f_unblip_flag(flg_spire_02_approach);	
	f_unblip_flag(flg_spire_03_approach);
	f_unblip_flag(flg_spire_01_entrance);
	f_unblip_flag(flg_spire_02_entrance);
	f_unblip_flag(flg_spire_03_entrance);
	f_unblip_flag(flg_sp01_enter);
	f_unblip_flag(flg_sp02_enter);
	f_unblip_flag(flg_sp03_enter);
	f_unblip_flag(flg_sp01_to_sp03);
	f_unblip_flag(flg_sp02_to_sp03);
end



script static void f_flight_blip_both_spires()
	dprint("f_flight_blip_both_spires");
	local long l_sp01_blip_thd_id	= 0;
	local long l_sp02_blip_thd_id	= 0;
	repeat
		l_sp01_blip_thd_id = thread(f_flight_blip_spire_01());
		l_sp02_blip_thd_id = thread(f_flight_blip_spire_02());
		sleep_until( ( volume_test_players(tv_flight_spire_01_airspace) or volume_test_players(tv_flight_spire_02_airspace) ) or f_spires_state_active(), 1);
		sleep_s(0.50);
		sleep_until( ( not volume_test_players(tv_flight_spire_01_airspace) and not volume_test_players(tv_flight_spire_02_airspace) ) or f_spires_state_active(), 1);

		kill_thread(l_sp01_blip_thd_id);
		kill_thread(l_sp02_blip_thd_id);
		sleep_s(0.25);
		f_flight_blip_clear_all();
		sleep_s(0.25);
		until(f_spires_state_active(), 1);
		f_flight_blip_clear_all();
		
		kill_thread(l_sp01_blip_thd_id);
		kill_thread(l_sp02_blip_thd_id);
		dprint("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx");
		dprint("flight blip both spires is over");
		dprint("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx");
end

script static void f_flight_blip_spire_01()
	dprint("f_flight_blip_spire_01");
	f_blip_flag(flg_spire_01_approach, "recon");
	sleep_until(volume_test_players_all(tv_flight_spire_01_airspace) or f_spires_state_active(), 1);
		f_flight_blip_clear_all();
		
		if not f_spires_state_active() then
			sleep_s(0.25);
			f_blip_flag(flg_spire_01_entrance, "recon");
		end
	sleep_until( not vehicle_test_players_all() or f_spires_state_active(), 1);
		f_flight_blip_clear_all();
		
		if not f_spires_state_active() then
		sleep_s(0.25);
		f_blip_flag(flg_sp01_enter, "recon");
		end
		
	sleep_until(volume_test_players(tv_flight_spire_01_entrance) or f_spires_state_active(), 1);
		f_flight_blip_clear_all();
end


script static void f_flight_blip_spire_02()
	dprint("f_flight_blip_spire_02");
	dprint("blip spire_02_approach");
	f_blip_flag(flg_spire_02_approach, "recon");
	sleep_until(volume_test_players_all(tv_flight_spire_02_airspace) or f_spires_state_active(), 1);
		f_flight_blip_clear_all();
		
		if not f_spires_state_active() then
		sleep_s(0.25);
		dprint("blip enter");
		f_blip_flag(flg_spire_02_entrance, "recon");
		end
		
	sleep_until( not vehicle_test_players_all()  or f_spires_state_active(), 1);
		f_flight_blip_clear_all();
		
		if not f_spires_state_active() then
		sleep_s(0.25);
		dprint("blip enter_2");
		f_blip_flag(flg_sp02_enter, "recon");
		end
		
	sleep_until(volume_test_players(tv_flight_spire_02_entrance)  or f_spires_state_active(), 1);
		f_flight_blip_clear_all();
end


script static void f_flight_start_spire_01()
	dprint("f_flight_spire_01");
	
	local long nudge_thread_01 = thread(f_flight_nudge_lower_pelican(tv_sp01_landing_nudge, sg_flight_sp01));
	
	sleep_until(volume_test_players(tv_flight_spire_01_entrance) or f_spires_state_active(), 1);
		
		if not f_spires_state_active() then
			f_spire_state_set ( DEF_SPIRE_01, DEF_SPIRE_STATE_START());
		end
		
	kill_thread(nudge_thread_01);
	
	chud_show_screen_training (player0(), "");
	chud_show_screen_training (player1(), "");
	chud_show_screen_training (player2(), "");
	chud_show_screen_training (player3(), "");
end

script static void f_flight_start_spire_02()
	dprint("f_flight_spire_02");
	local long nudge_thread_02 = thread(f_flight_nudge_lower_pelican(tv_sp02_landing_nudge, sg_flight_sp02));
	
	sleep_until(volume_test_players(tv_flight_spire_02_entrance) or f_spires_state_active(), 1);
	
	if not f_spires_state_active() then
		f_spire_state_set ( DEF_SPIRE_02, DEF_SPIRE_STATE_START());
	end
	
	kill_thread(nudge_thread_02);
	
	chud_show_screen_training (player0(), "");
	chud_show_screen_training (player1(), "");
	chud_show_screen_training (player2(), "");
	chud_show_screen_training (player3(), "");
end

script static void f_flight_spire_03()
	sleep_until(s_flight_state == S_DEF_FLIGHT_STATE_THIRD() and f_check_both_spire_complete(), 1);
	dprint("f_flight_spire_03");
	local long pup_show_sp03_door = pup_play_show(pup_spire_03_door_open);
	
	sleep_until(volume_test_players(tv_flight_spire_03_door), 1);
	
	f_flight_blip_clear_all();
	
	sleep_until (not pup_is_playing(pup_show_sp03_door), 1);
	
	local long nudge_thread_03 = thread(f_flight_nudge_lower_pelican(tv_sp03_landing_nudge, sg_flight_sp03));
	
	f_spire_state_set ( DEF_SPIRE_03, DEF_SPIRE_STATE_START());
	
	sleep_s(1.5);

	f_blip_flag(flg_spire_03_entrance, "recon");	
	
	sleep_until(not vehicle_test_players_all(), 1);
	
	f_flight_blip_clear_all();
	
	sleep_s(1);
	
	if not f_spires_state_active() then
		f_blip_flag(flg_sp03_enter, "recon");	
	end
	
	sleep_until(volume_test_players(tv_flight_spire_03_entrance) or f_spires_state_active(), 1);
	
	sleep_s(0.25);
	f_flight_blip_clear_all();
	
	kill_thread(nudge_thread_03);
	
	chud_show_screen_training (player0(), "");
	chud_show_screen_training (player1(), "");
	chud_show_screen_training (player2(), "");
	chud_show_screen_training (player3(), "");
end

// :: FLIGHT_GAME_SAVE
script dormant f_flight_start_game_save()
	dprint("f_flight_start_game_save");
end

//==============================
// DIDACT_SHIP
//==============================
// :: DIDACT_SHIP_REVEAL
script static void f_didact_ship()
dprint("f_didact_ship");
	object_create_anew(cr_didact_ship);
	sleep_until(object_valid(cr_didact_ship), 1);
	if not object_valid(cr_didact_ship) then
		object_create(cr_didact_ship);
	end
	
	if s_flight_state <= S_DEF_FLIGHT_STATE_START() then
		if not object_valid(cr_didact_shield_large) then
			dprint("Didact large shield");
			object_create(cr_didact_shield_large);
			thread(f_flight_didact_large_shield_kill_volume()); //256
		end
		if object_valid(cr_didact_shield_small) then
			object_destroy(cr_didact_shield_small);
		end
	elseif s_flight_state == S_DEF_FLIGHT_STATE_SECOND() then
		//effect_new_on_object_marker( environments\solo\m70_liftoff\fx\cryptum\cryptum_shield_small.effect, cr_didact_ship, fx_ambient);
		if not object_valid(cr_didact_shield_small) then
			object_create(cr_didact_shield_small);
			thread(f_flight_didact_small_shield_kill_volume()); //256
		end
		if object_valid(cr_didact_shield_large) then
			object_destroy(cr_didact_shield_large);
		end
	else
		if not object_valid(cr_didact_shield_small) then
			object_destroy(cr_didact_shield_small);
		end
		if object_valid(cr_didact_shield_large) then
			object_destroy(cr_didact_shield_large);
		end
	end
end

script static void cryptum_fx_test_shield()
	dprint("FX cryptum fx shield PLAY");
	effect_new_on_object_marker( environments\solo\m70_liftoff\fx\cryptum\cryptum_shield.effect, cr_didact_ship, fx_ambient);
end

script static void cryptum_fx_test_shield_small()
	dprint("FX cryptum fx shield PLAY");
	effect_new_on_object_marker( environments\solo\m70_liftoff\fx\cryptum\cryptum_shield_small.effect, cr_didact_ship, fx_ambient);
end

//=========================================
// FLIGHT_SENTINALS
//=========================================
//flock_destroy(flock_flight_spire_01_sent);
script static void f_flight_flocks()
	thread(f_flight_flocking_cruisers());
	thread(f_flight_flocking_lich());
end

script static void f_flight_flocking_cruisers()
dprint("f_flight_flocking_cruisers");
	local long show_flight_flocking_cruisers = pup_play_show(pup_ambient_ships);
	sleep_until(not F_Flight_Zone_Active(), 1);
	pup_stop_show(show_flight_flocking_cruisers);
end

script static void f_flight_flocking_lich()
	dprint("f_flight_flocking_lich");
	//flock_create(flock_flight_lich_01);
	//flock_create(flock_flight_lich_02);
	//flock_create(flock_flight_lich_03);
	//flock_create(flock_flight_lich_04);
	//sleep_until(not f_Flight_Zone_current_zoneset(), 1);
	//flock_destroy(flock_flight_lich_01);
	//flock_destroy(flock_flight_lich_02);
	//flock_destroy(flock_flight_lich_03);
	//flock_destroy(flock_flight_lich_04);
	garbage_collect_now();
end

//======================================
// FLIGHT_LAUNCH
//======================================
//xxx set player
////
script dormant f_flight_launch_kill_volume_control()
	dprint("f_flight_launch_kill_volume_control");
	kill_volume_disable(kill_soft_04);
	sleep_until(volume_test_players(tv_flight_didact_ship_reveal), 1);
	sleep_s(4);
	kill_volume_enable(kill_soft_04);
end
// :: FLIGHT_LAUNCH_MAIN
script dormant f_flight_launch_main()
	dprint("f_flight_launch");
	b_flight_launch_active = TRUE;
	object_create(dm_flight_launch_tube);
	wake(f_flight_launch_kill_volume_control);
	
	//f_set_current_pilot();
	object_teleport_to_ai_point(inf_pelican_gunship, ps_pelican_launch.p_start);
	//objects_attach(sc_flight_sync_action, "", inf_pelican_gunship, "landing_tires" );
	sleep(5);
	player_control_lock_gaze(player0(), ps_pelican_launch.p_end, 500);
	player_control_lock_gaze(player1(), ps_pelican_launch.p_end, 500);
	player_control_lock_gaze(player2(), ps_pelican_launch.p_end, 500);
	player_control_lock_gaze(player3(), ps_pelican_launch.p_end, 500);
	
	pup_play_show(pup_pelican_launch);
	sleep(5);
	fade_in(0, 0, 0, 360);

	wake(f_flight_launch_tutorial);

	// begin loading the next zoneset.  Let this load while we're playing dialog.
	prepare_to_switch_to_zone_set("00_infinity_exterior");
		
	//thread(f_m70_chapter_title(ch_flight));
	thread(f_chapter_title(ch_flight));
	
	wake(f_dlg_flight_launch_start);
	
	game_save();  

	// We are currently loading the next zoneset.  Don't allow pelican to launch until zoneset is loaded and we switch to it
	sleep_until(not PreparingToSwitchZoneset(),1);
	if (editor_mode() or current_zone_set() == DEF_S_ZONESET_INFINITY_EXT) then
		switch_zone_set("00_infinity_exterior");
	end
	
	sleep_until(b_pelican_launch_triggered, 1);
	
	thread(f_launch_return_control());
	
	sleep_s(5);
	object_destroy(dm_flight_launch_tube);
	object_destroy ( inf_tunnel_light1 ); //INFINITY LIGHT TUBE SOUND SCENERY TURNS OFF
	object_destroy ( inf_tunnel_light2 );
	//object_move_to_point(sc_flight_sync_action, 1, ps_pelican_launch.p_end);
	//objects_detach(sc_pelican_octopus, inf_pelican_gunship);
	//object_set_velocity(inf_pelican_gunship, 50);
	b_flight_launch_active = FALSE;	
end


// :: FLIGHT_LAUNCH_RETURN_CONTROL
script static void f_launch_return_control()
	sleep_s(5);
	player_enable_input(TRUE);
	player_control_unlock_gaze(player0);
	player_control_unlock_gaze(player1);
	player_control_unlock_gaze(player2);
	player_control_unlock_gaze(player3);
	sleep_s(0.25);
	player_disable_movement(FALSE);
	hud_show_radar (TRUE);
	hud_show_shield (TRUE);
	hud_show_weapon (TRUE);
	hud_show_crosshair(TRUE);
end

//=========================================
// FLIGHT_PELICAN_LAUNCH_TUTORIAL
//=========================================
script static void  testss()
sleep_until(  unit_action_test_secondary_trigger (player0) , 1);

end
// :: LAUNCH_TUTORIAL
global boolean b_pelican_launch_triggered = FALSE;

script dormant f_flight_launch_tutorial()
	dprint("f_flight_launch_tutorial");
	f_flight_set_pilot(inf_pelican_gunship);
	sleep_s(1);
	sleep_until(dialog_id_played_check(L_dlg_flight_launch_start), 1);

	chud_show_screen_training( p_pelican_pilot, "pelican_boost" );
	unit_action_test_reset (p_pelican_pilot);
	
	sleep_until ( unit_action_test_secondary_trigger(p_pelican_pilot) or not player_valid(p_pelican_pilot) or not vehicle_test_seat(inf_pelican_gunship, "pelican_d") ,1 );
	b_pelican_launch_triggered = TRUE;
	
	//NotifyLevel("flight_launch_start");
	if not vehicle_test_seat( inf_pelican_gunship, "pelican_d" ) then
		vehicle_load_magic(inf_pelican_gunship, "pelican_d", player_get_first_valid());
		sleep_s(1);
		f_flight_set_pilot(inf_pelican_gunship);
	end
	
	chud_show_screen_training (p_pelican_pilot, "");
	sound_impulse_start (sfx_tutorial_complete, p_pelican_pilot, 1);
	
	sleep_until(not b_flight_launch_active, 1);
	
	if not vehicle_test_seat( inf_pelican_gunship, "pelican_d" ) then
		vehicle_load_magic(inf_pelican_gunship, "pelican_d", player_get_first_valid());
		sleep_s(1);
		f_flight_set_pilot(inf_pelican_gunship);
	end

	game_safe_to_respawn(TRUE);
	
	//xxx narative
	wake( m70_first_flight );
	wake( f_dlg_flight_a_tutorial );
	sleep_s(1.75);
	f_flight_pelican_tutorial(p_pelican_pilot, "pelican_steer", 4);
	sleep_s(1);
	f_flight_pelican_tutorial(p_pelican_pilot, "pelican_rise", 4);
	sleep_s(1);
	f_flight_pelican_tutorial(p_pelican_pilot, "pelican_descend", 4);
	//sleep_s(1);
	//f_flight_pelican_tutorial(p_pelican_pilot, "pelican_weapon_swap", 4);
end

// :: FLIGHT_PELICAN_TUTORIALS
//chud_show_screen_training (player0, "pelican_shoot_secondary");
script static void f_flight_pelican_tutorial(player player_num, string_id display_title, real r_time)
	chud_show_screen_training (player_num, "display_title");
	if r_time == 0 then
		unit_action_test_reset (player_num);
		sleep_until ( f_get_unit_action_test(display_title, player_num) or not player_valid(player_num), 1);
	else
		r_time = (game_tick_get() + (r_time * game_tick_rate_get()));
		unit_action_test_reset (player_num);
		sleep_until ( r_time <= game_tick_get() or f_get_unit_action_test(display_title, player_num) or not player_valid(player_num), 1);
	end

	sleep_s(1);

	chud_show_screen_training (player_num, "");
	sound_impulse_start (sfx_tutorial_complete, player_num, 1);
end
	
// :: GET_UNIT_ACTION_TEST
script static boolean f_get_unit_action_test(string_id display_title, player player_num)
	
	if display_title == "pelican_move" then 
		unit_action_test_move_relative_all_directions(player_num);
	elseif display_title == "pelican_steer" then 
		unit_action_test_move_relative_all_directions(player_num);
	elseif display_title == "pelican_rise" then 
		unit_action_test_melee (player_num);
	elseif display_title == "pelican_descend" then 
		unit_action_test_equipment (player_num);	
	elseif display_title == "pelican_boost" then 
		unit_action_test_grenade_trigger (player_num);
	elseif display_title == "pelican_shoot" then 
		unit_action_test_primary_trigger(player_num);
	elseif display_title == "pelican_shoot_secondary" then 
		unit_action_test_primary_trigger(player_num);
	elseif display_title == "pelican_weapon_swap" then 
		unit_action_test_rotate_weapons(player_num);
	end
	
end



script static void f_flight_nudge_lower_pelican(trigger_volume tv_spire, ai spire_air_squad)
	dprint("f_flight_nudge_lower_pelican");
	repeat
	
	sleep_until(volume_test_players(tv_spire) and ai_living_count(spire_air_squad) <= 0 or not vehicle_test_players_all(), 1);
	sleep_s(10);
	
	if volume_test_players(tv_spire) and vehicle_test_players_all() then
		f_flight_pelican_tutorial(p_pelican_pilot, "pelican_descend", 4);
	end
	sleep_s(20);
	until(not f_Flight_Zone_Active() or not vehicle_test_players_all(), 1);

end

//f_flight_nudge_lower_pelican(tv_sp01_landing_nudge, sg_flight_sp01)
//f_flight_nudge_lower_pelican(tv_sp02_landing_nudge, sg_flight_sp02)
//f_flight_nudge_lower_pelican(tv_sp03_landing_nudge, sg_flight_sp03)


//======================================
// FLIGHT_NARRATIVE
//======================================


//xxx NAR ADD

script static void f_flight_nar_defense_spires()
	dprint("f_flight_nar_defense_spires");
	sleep_until( volume_test_players(tv_flight_spire_01_landing_pad) or volume_test_players(tv_flight_spire_02_landing_pad),1);
	repeat	
	
	sleep_until( volume_test_players(tv_flight_spire_01_landing_pad) or volume_test_players(tv_flight_spire_02_landing_pad) or not f_Flight_Zone_Active(),1);
	
	if f_Flight_Zone_Active() then
		b_first_flight_defense_spires = TRUE;
	end
	
	sleep_until( not volume_test_players(tv_flight_spire_01_landing_pad) or not volume_test_players(tv_flight_spire_02_landing_pad) or not f_Flight_Zone_Active(),1);
	
	if f_Flight_Zone_Active() then
		b_first_flight_defense_spires = FALSE;
	end
	
	until(not f_Flight_Zone_Active(), 1);

end
//256
//171
//110

//s_flight_state > S_DEF_FLIGHT_STATE_SECOND();	
//s_flight_state > S_DEF_FLIGHT_STATE_THIRD();	
script static void f_flight_didact_large_shield_kill_volume()
	sleep_until(objects_distance_to_flag(players(), flg_didact_center) <= 256 or s_flight_state > S_DEF_FLIGHT_STATE_START(), 1);
	//xxx 
	//add kill effect
	//sleep(15);
	if s_flight_state <= S_DEF_FLIGHT_STATE_START() then
	thread(f_flight_didact_kill_effect());
	f_flight_didact_kill_pelican();
	end
end

script static void f_flight_didact_small_shield_kill_volume()
	sleep_until(objects_distance_to_flag(players(), flg_didact_center) <= 170 or s_flight_state > S_DEF_FLIGHT_STATE_SECOND(), 1);
	if s_flight_state <= S_DEF_FLIGHT_STATE_SECOND() then
	thread(f_flight_didact_kill_effect());
	f_flight_didact_kill_pelican();
	end
end

script static void f_flight_didact_cryptum_kill_volume()
	sleep_until(objects_distance_to_flag(players(), flg_didact_center) <= 180 or s_flight_state > S_DEF_FLIGHT_STATE_THIRD(), 1);
	//xxx 
	//add kill effect
	//sleep(15);
	if s_flight_state <= S_DEF_FLIGHT_STATE_THIRD() then
	thread(f_flight_didact_kill_effect());
	sleep_s(0.25);
	f_flight_didact_kill_pelican();
	thread(f_flight_didact_kill_effect());
	end
end


script static void f_flight_didact_kill_pelican()
damage_object (unit_get_vehicle(player_get_first_alive() ), hull, 10000);
damage_object (unit_get_vehicle(player_get_first_alive() ), engine_lb, 10000);
damage_object (unit_get_vehicle(player_get_first_alive() ), engine_lf, 10000);
damage_object (unit_get_vehicle(player_get_first_alive() ), engine_rb, 10000);
damage_object (unit_get_vehicle(player_get_first_alive() ), engine_rf, 10000);
damage_object (unit_get_vehicle(player_get_first_alive() ), stands, 10000);
damage_object (unit_get_vehicle(player_get_first_alive() ), turrets, 10000);

end



script dormant f_nar_flight_didact_warning()
	dprint("f_flight_nar_didact_warning");
	repeat
	sleep_until(volume_test_players(tv_didact_warning) or not f_Flight_Zone_Active(), 1);
	
	if f_Flight_Zone_Active() then
		b_third_flight_near_didact = TRUE;
	end
	
	sleep_until(not volume_test_players(tv_didact_warning) or not f_Flight_Zone_Active(), 1);
	
	if f_Flight_Zone_Active() then
		b_third_flight_near_didact = FALSE;
	end
	
	until(not f_Flight_Zone_Active(), 1);
end

//co-op controls
// vehicle_test_players_all()
//vehicle_test_players()
//if game_is_cooperative() then

script static void f_flight_airspace_coop_control()
local short current_zoneset = 0;
local short new_zoneset = 0;
	repeat
		if f_Flight_Zone_current_zoneset() then
			
			//sleep_until(PreparingToSwitchZoneSet(), 1);	
			//sleep_s(1);
			//sleep_until(not PreparingToSwitchZoneSet(), 1);			
			
			if current_zone_set_fully_active() == DEF_S_ZONESET_INFINITY_EXT and f_players_in_vehicle_but_not_all() and f_players_abandoned_infinity() then
				thread(f_flight_fade_to_teleport(inf_pelican_gunship, inf_pelican_gunship));
				thread(f_flight_fade_to_teleport(flight_pelican_sp01, flight_pelican_sp01));
				thread(f_flight_fade_to_teleport(flight_pelican_sp02, flight_pelican_sp02)); 
			end
			
			if current_zone_set_fully_active() == DEF_S_ZONESET_SPIRE_01_EXT and f_players_in_vehicle_but_not_all() and f_players_abandoned_on_spire_1() then
				thread(f_flight_fade_to_teleport(inf_pelican_gunship, inf_pelican_gunship));
				thread(f_flight_fade_to_teleport(flight_pelican_sp01, flight_pelican_sp01));
				thread(f_flight_fade_to_teleport(flight_pelican_sp02, flight_pelican_sp02));
			end
			
			if current_zone_set_fully_active() == DEF_S_ZONESET_SPIRE_02_EXT and f_players_in_vehicle_but_not_all() and f_players_abandoned_on_spire_2() then
				thread(f_flight_fade_to_teleport(inf_pelican_gunship, inf_pelican_gunship));
				thread(f_flight_fade_to_teleport(flight_pelican_sp01, flight_pelican_sp01));
				thread(f_flight_fade_to_teleport(flight_pelican_sp02, flight_pelican_sp02));
			end
			
			if current_zone_set_fully_active() == DEF_S_ZONESET_SPIRE_03_EXT and f_players_in_vehicle_but_not_all() and f_players_abandoned_on_spire_3() then
				thread(f_flight_fade_to_teleport(inf_pelican_gunship, inf_pelican_gunship));
				thread(f_flight_fade_to_teleport(flight_pelican_sp01, flight_pelican_sp01));
				thread(f_flight_fade_to_teleport(flight_pelican_sp02, flight_pelican_sp02));
			end
			
		end
		
	until(not f_Flight_Zone_current_zoneset(), 1);
	
end

script static void f_flight_fade_to_teleport(object_name obj_pelican, vehicle v_pelican)
	dprint("check fade teleport");
	if object_valid(obj_pelican) and player_in_vehicle(v_pelican) then
		teleport_players_into_vehicle(v_pelican);
	end
end

script static boolean f_players_in_vehicle_but_not_all()
	vehicle_test_players() and not vehicle_test_players_all();
end

script static boolean f_players_abandoned_infinity()
f_players_abandoned_on_spire_1() or f_players_abandoned_on_spire_2() or f_players_abandoned_on_spire_3();
end
script static boolean f_players_abandoned_on_spire_1()
	volume_test_players( tv_flight_spire_01_airspace) and not volume_test_players_all(tv_flight_spire_01_airspace);
end

script static boolean f_players_abandoned_on_spire_2()
	volume_test_players( tv_flight_spire_02_airspace) and not volume_test_players_all(tv_flight_spire_02_airspace);
end

script static boolean f_players_abandoned_on_spire_3()
	volume_test_players( tv_flight_spire_03_airspace) and not volume_test_players_all(tv_flight_spire_03_airspace);
end


//script static void f_flight_fade_to_teleport(object_name obj_pelican, vehicle v_pelican)
	//dprint("check fade teleport");
	/*
	local boolean b_player0_fade = FALSE;
	local boolean b_player1_fade = FALSE;
	local boolean b_player2_fade = FALSE;
	local boolean b_player3_fade = FALSE;
	*/
	//if object_valid(obj_pelican) and player_in_vehicle(v_pelican) then
	/*
		if not unit_in_vehicle (player0()) and  then
			fade_out_for_player(player0());
			b_player0_fade = TRUE;
		end
		
		if not unit_in_vehicle (player1()) and f_flight_player_in_landingpad() then
			fade_out_for_player (player1());
			b_player1_fade = TRUE;
		end
		
		if not unit_in_vehicle (player2()) and f_flight_player_in_landingpad() then
			fade_out_for_player(player2());
			b_player2_fade = TRUE;
		end
		
		if not unit_in_vehicle (player3()) and f_flight_player_in_landingpad() then
			fade_out_for_player(player3());
			b_player3_fade = TRUE;
		end
		*/
		//sleep_s(3);
		//teleport_players_into_vehicle(v_pelican);
		/*
		if b_player0_fade then
			fade_in_for_player(player0());
			b_player0_fade = FALSE;
		end
	
		if b_player1_fade then
			fade_in_for_player(player1());
			b_player1_fade = FALSE;
		end
	
		if b_player2_fade then
			fade_in_for_player(player2());
			b_player2_fade = FALSE;
		end
	
		if b_player3_fade then
			fade_in_for_player(player3());
			b_player3_fade = FALSE;
		end
		*/
	//end
//end



//inf_pelican_gunship
//flight_pelican_sp01
//flight_pelican_sp02


script static boolean f_flight_pelican_in_airspace(object_name obj_pelican)
	volume_test_object(tv_flight_spire_01_door , obj_pelican ) or
	volume_test_object(tv_flight_spire_02_door , obj_pelican) or
	volume_test_object(tv_flight_spire_03_door , obj_pelican);
end

script static boolean f_flight_player_in_landingpad()
	volume_test_players(tv_flight_spire_01_pilot_valid) and
	volume_test_players(tv_flight_spire_02_pilot_valid) and
  volume_test_players(tv_flight_spire_03_pilot_valid);
end

////////////////////////////////
script dormant f_flight_infinity_depart()
	object_create_anew(sc_infinity);
	sleep_until(object_valid(sc_infinity), 1);	
	effect_new_on_object_marker(environments\solo\m70_liftoff\fx\infinity\left_engine_flare.effect, sc_infinity, "fx_enginethrust_left"); 
	effect_new_on_object_marker(environments\solo\m70_liftoff\fx\infinity\center_engine_flare.effect, sc_infinity, "fx_enginethrust_main"); 
	effect_new_on_object_marker(environments\solo\m70_liftoff\fx\infinity\right_engine_flare.effect, sc_infinity, "fx_enginethrust_right");
	pup_play_show(pup_inf_leaving);
end

script static void f_sp01_blip_pelican()
	f_blip_flag(flg_sp01_pelican, "recon");
	sleep_s(2);
	f_blip_flag( flg_sp01_pelican_armory_1, "ammo");
	f_blip_flag( flg_sp01_pelican_armory_2, "ammo");
	sleep_until(volume_test_players(tv_sp01_pelican_armory_nudge) or vehicle_test_players(), 1);
	f_unblip_flag(flg_sp01_pelican_armory_1);
	f_unblip_flag(flg_sp01_pelican_armory_2);
	sleep_until(vehicle_test_seat (flight_pelican_sp01, "pelican_d") or not object_valid(flight_pelican_sp01), 1);
	f_unblip_flag(flg_sp01_pelican);
end



script static void f_sp02_blip_pelican()
	f_blip_flag(flg_sp02_pelican, "recon");
	sleep_s(2);
	f_blip_flag( flg_sp02_pelican_armory_1, "ammo");
	f_blip_flag( flg_sp02_pelican_armory_2, "ammo");
	sleep_until(volume_test_players(tv_sp02_pelican_armory_nudge) or vehicle_test_players(), 1);
	f_unblip_flag(flg_sp02_pelican_armory_1);
	f_unblip_flag(flg_sp02_pelican_armory_2);
	sleep_until(vehicle_test_seat (flight_pelican_sp02, "pelican_d") or not object_valid(flight_pelican_sp02), 1);
	f_unblip_flag(flg_sp02_pelican);
end


//xxx DANGER this shit could break it all
script static void f_anti_pelican_grief(object_name obj_pelican)
	sleep_until(object_get_health(obj_pelican) <= 0 or not f_Flight_Zone_current_zoneset(), 1);
	dprint("pelican gone??");
	sleep_s(10);
	if f_Flight_Zone_Active() then
		if object_get_health(player0()) > 0 or object_get_health(player1()) > 0 or object_get_health(player2()) > 0 or object_get_health(player3()) > 0  then 
		dprint("pelican gone");
		dprint("revert?");
			//fade_out(0,0,0, 3);
			//sleep_s(4);
			//dprint("revert in 2 seconds");
		//	game_revert();
			//sleep_s(2);
			//fade_in(0,0,0, 3);
		end
	end
end

script static void f_flight_check_safe_to_respawn()
	repeat
		if not f_flight_player_in_airspace() and vehicle_test_players() then
			game_safe_to_respawn (FALSE);
		else
			game_safe_to_respawn (TRUE);		
		end
		
	until(not f_Flight_Zone_current_zoneset(), 1);
	
		game_safe_to_respawn (TRUE);
end

script static boolean f_flight_player_in_airspace()
	volume_test_players(tv_flight_spire_01_door) or volume_test_players(tv_flight_spire_02_door) or volume_test_players(tv_flight_spire_03_door);
end


script static void f_flight_launch_rumble(real r_max_rumble)
	player_effect_set_max_rumble_for_player(player0(), r_max_rumble, r_max_rumble);
	player_effect_set_max_rumble_for_player(player1(), r_max_rumble, r_max_rumble);
	player_effect_set_max_rumble_for_player(player2(), r_max_rumble, r_max_rumble);
	player_effect_set_max_rumble_for_player(player3(), r_max_rumble, r_max_rumble);
end
// --- End m70_flight.hsc ---

// --- Begin m70_flight_ai.hsc ---
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343
//
// Mission: 					m70
// M70_FLIGHT_AI
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343

// ===============================================
// FUNCTION INDEX
// ===============================================

// ===============================================
// FLIGHT_AI_VARIABLES
// ===============================================

global short S_banshee_spawn_location 				= 0;
global short S_phantom_spawn_location 				= 0;
global short S_flight_door_wave       				= 0;
global boolean b_move_to_spires								= FALSE;
global short   S_reinforce_spire              = 0;
global boolean b_begin_spire1_bait_stage_1		= FALSE;
global boolean b_begin_spire1_bait_stage_2		= FALSE;
global boolean b_begin_spire2_bait_stage_1    = FALSE;
global boolean b_begin_spire2_bait_stage_2    = FALSE;
global boolean b_turrets_active								= FALSE;


global short S_flight_bait_state = 0;


script static short DEF_FLIGHT_DOOR_WAVE_MAX()  3; end

//===============================================
// FLIGHT_AI
//===============================================

//:: F_FLIGHT_AI_INIT
script dormant f_flight_AI_init()
	dprint( "::: f_flight_AI_init :::" );

end

//:: FLIGHT_AI_DEINIT 
script dormant f_flight_AI_deinit()
	dprint( "::: f_flight_AI_deinit :::" );
	// kill sub modules
	sleep_forever(f_flight_AI_init);
end

script static void f_flight_ai_spawn()
	sleep_until( f_Flight_Zone_Active(), 1);
		if s_flight_state == S_DEF_FLIGHT_STATE_START() then
			wake(f_flight_ai_start_spawn);
		elseif s_flight_state == S_DEF_FLIGHT_STATE_SECOND() then
			wake(f_flight_ai_second_spire_spawn);	
		end

end

script dormant f_flight_ai_start_spawn()
	dprint ("f_flight_spire_bait");
	sleep_until(not b_flight_launch_active, 1);
	ai_place(sg_flight_sp01_air);
	ai_place(sg_flight_sp02_air);
	sleep_s(2);
	thread(f_flight_set_ai_clump());
	//ai_place(sg_flight_sp01_ground);
	//ai_place(sg_flight_sp02_ground);
	//thread(f_flight_ai_start_flight_sp01());
	//thread(f_flight_ai_start_flight_sp02());
	sleep_until(not f_Flight_Zone_Active() and f_spires_state_active(), 1);
	ai_erase(sg_flight_all);
end


script static void f_flight_ai_start_flight_sp01()
	dprint("f_flight_respawn_flight_sp02_air");
	
	local short sp01_phantoms_killed = 0;
	
	
	repeat
		sleep_until(volume_test_players(tv_flight_spire_01_airspace), 1);
		inspect(sp01_phantoms_killed);
		sleep_s(2);
		if	sp01_phantoms_killed < 3 then
			ai_place(sq_flight_sp01_01);
		end
		
		if	sp01_phantoms_killed < 2 then
			ai_place(sq_flight_sp01_02);
		end
		
		if	sp01_phantoms_killed < 1 then
			ai_place(sq_flight_sp01_03);
		end
		sleep_s(3);
		sleep_until( not volume_test_players(tv_flight_spire_01_airspace), 1);
		
		if ai_living_count(sq_flight_sp01_01) == 0 then
			sp01_phantoms_killed = sp01_phantoms_killed + 1;
		end
		
		if ai_living_count(sq_flight_sp01_02) == 0 then
			sp01_phantoms_killed = sp01_phantoms_killed + 1;
		end
		
		if ai_living_count(sq_flight_sp01_03) == 0 then
			sp01_phantoms_killed = sp01_phantoms_killed + 1;
		end
		
		ai_erase(sg_flight_sp01_air);
	until(sp01_phantoms_killed == 3 or not f_Flight_Zone_Active(), 1 );
end



script static void f_flight_ai_start_flight_sp02()
	dprint("f_flight_respawn_flight_sp02_air");

	local short sp02_phantoms_killed = 0;
	
	
	repeat
		sleep_until(volume_test_players(tv_flight_spire_02_airspace), 1);
		inspect(sp02_phantoms_killed);
		sleep_s(1);
		if	sp02_phantoms_killed < 3 then
			ai_place(sq_flight_sp02_01);
		end
		
		if sp02_phantoms_killed < 2 then
			ai_place(sq_flight_sp02_02);
		end
		
		if	sp02_phantoms_killed < 1 then
			ai_place(sq_flight_sp02_03);
		end
		
		sleep_until(not volume_test_players(tv_flight_spire_02_airspace), 1);
		
		if ai_living_count(sq_flight_sp02_01) == 0 then
			sp02_phantoms_killed = sp02_phantoms_killed + 1;
		end

		if ai_living_count(sq_flight_sp02_02) == 0 then
			sp02_phantoms_killed = sp02_phantoms_killed + 1;
		end
		
		if ai_living_count(sq_flight_sp02_03) == 0 then
			sp02_phantoms_killed = sp02_phantoms_killed + 1;
		end
	
		ai_erase(sg_flight_sp02_air);
	
	until(sp02_phantoms_killed == 3 or not f_Flight_Zone_Active(), 1 );
end



script dormant f_flight_ai_second_spire_spawn()
dprint("f_flight_ai_second_spire_spawn");
sleep_until(f_Flight_Zone_Active() , 1);
	if f_spire_state_complete(DEF_SPIRE_02) then
		ai_place(sg_flight_sp01);
	elseif f_spire_state_complete(DEF_SPIRE_01) then
		ai_place(sg_flight_sp02);
	end
	sleep_until(not f_Flight_Zone_current_zoneset(), 1);
	ai_erase(sg_flight_all);
end


script command_script f_cs_give_collision()
	dprint("f_cs_give_collision");
	//vehicle_set_collision_group( ai_vehicle_get(ai_current_actor), "everything" ) ;
	unit_set_ultimate_parent_vehicle_collision_group(ai_current_actor, everything);
end


//RegisterHSFunction(new HaloscriptVoidFunctionDef<1, HSRealParam, _hs_type_real>("ai_designer_clump_perception_range", ai_scripting_set_clump_perception_range, "Override the maximum perception range of designer specified clumps"));

//RegisterHSFunction(new HaloscriptVoidFunctionDef<2, HSAIParam, _hs_type_ai, HSShortParam, _hs_type_short_integer>("ai_set_clump", ai_scripting_set_clump_index, "Force the given AI into a specific clump"));

script static void f_flight_set_ai_clump()
	dprint("f_flight_clump");
	ai_designer_clump_perception_range(350);
	sleep(5);
	ai_set_clump(sq_flight_sp01_01, 1);
	ai_set_clump(sq_flight_sp01_02, 2);
	ai_set_clump(sq_flight_sp01_03, 3);
	ai_set_clump(sq_flight_sp01_04, 4);
	ai_set_clump(sq_flight_sp01_05, 5);
	ai_set_clump(sq_flight_sp02_01, 6);
	ai_set_clump(sq_flight_sp02_02, 7);
	ai_set_clump(sq_flight_sp02_03, 8);
	ai_set_clump(sq_flight_sp02_04, 9);
	ai_set_clump(sq_flight_sp02_05, 10);
end

//======================================
// TURRET DISTANCE PHASING CONTROL
//======================================

global short max_distance = 300;
global short min_distance = 280;

script static void turret_phase_control (ai vehicle_turret, point_reference turret_loc, ai task_name)

local boolean turret_deleted = true;

  repeat
  
  inspect (vehicle_turret);
  
    if ai_living_count (vehicle_turret) == 0 and objects_distance_to_point (players(), turret_loc) < min_distance and ai_task_status (task_name) != (ai_task_status_exhausted) and b_turrets_active then
      ai_place(vehicle_turret);
      //object_hide(ai_vehicle_get(vehicle_turret.turret1));
      object_dissolve_from_marker(ai_vehicle_get(vehicle_turret), "phase_in", "primary_trigger");
      
      effect_new_on_object_marker ("objects\vehicles\forerunner\turrets\storm_anti_vehicle_turret\fx\spr_gravity_lift", ai_vehicle_get(vehicle_turret), "primary_trigger");
      sleep_s(2);
      effect_stop_object_marker ("objects\vehicles\forerunner\turrets\storm_anti_vehicle_turret\fx\spr_gravity_lift", ai_vehicle_get(vehicle_turret), "primary_trigger");

    end
    
    if ((ai_living_count(vehicle_turret) == 1) and objects_distance_to_point (players(), turret_loc) > max_distance) then

      object_dissolve_from_marker(ai_vehicle_get(vehicle_turret), "phase_out", "primary_trigger");
      sleep_s(2);
      
      object_destroy (ai_vehicle_get(vehicle_turret));
      ai_erase(vehicle_turret);
    end
    
  until (1 == 0, 30*5); 

end


// --- End m70_flight_ai.hsc ---

// --- Begin m70_flight_audio.hsc ---
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343
//
// Mission: 					m70
//
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343

// =================================================================================================
// =================================================================================================
// flight_audio
// =================================================================================================
// =================================================================================================
// variables

// functions
// === f_flight_audio_init::: Initialize
script dormant f_flight_audio_init()
	dprint( "::: f_flight_audio_init :::" );

	// initialize modules
	thread(f_flight_encounter());
	// initialize sub modules
	//wake( f_flight_audio_CCC_init );

end

// === f_flight_audio_deinit::: Deinitialize
script dormant f_flight_audio_deinit()
	dprint( "::: f_flight_audio_deinit :::" );

	// kill functions
	sleep_forever( f_flight_audio_init );

	// deinitialize modules

	// deinitialize sub modules
	//wake( f_flight_audio_CCC_deinit );

end

script static void f_flight_encounter()
	dprint("f_flight_encounter");
	sleep_until(f_Flight_Zone_Active(), 1);

	thread( f_mus_m70_e01_begin() );
	
	sleep_until(  not f_Flight_Zone_Active(), 1);
	
	thread( f_mus_m70_e01_finish() );
end
// --- End m70_flight_audio.hsc ---

// --- Begin m70_flight_fx.hsc ---
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343
//
// Mission: 					m70
//
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343

// =================================================================================================
// =================================================================================================
// flight_FX
// =================================================================================================
// =================================================================================================
// variables

// functions
// === f_flight_FX_init::: Initialize
script dormant f_flight_FX_init()
	dprint( "::: f_flight_FX_init :::" );

	// initialize modules

	// initialize sub modules
	//wake( f_flight_FX_CCC_init );

end

// === f_flight_FX_deinit::: Deinitialize
script dormant f_flight_FX_deinit()
	dprint( "::: f_flight_FX_deinit :::" );

	// kill functions
	sleep_forever( f_flight_FX_init );

	// deinitialize modules

	// deinitialize sub modules
	//wake( f_flight_FX_CCC_deinit );

end

script static void f_flight_didact_kill_effect()
	effect_new(environments\solo\m70_liftoff\fx\cryptum\cryptum_pulse.effect, flg_didact_center );
end
// --- End m70_flight_fx.hsc ---

// --- Begin m70_infinity.hsc ---
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343
//
// Mission: 					m70
//
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343

// =================================================================================================
// =================================================================================================
// infinity
// =================================================================================================
// =================================================================================================
// variables
global long pup_pelican_no_fx = 0;
// functions
// === f_infinity_startup::: Auto startup
script startup f_infinity_startup()
	sleep_until( b_mission_started == TRUE, 1 );
	
	// wake init
	wake( f_infinity_init );
	
	
end

// === f_infinity_init::: Initialize
script dormant f_infinity_init()

	// setup cleanup watch
	wake( f_infinity_cleanup );
	
	sleep_until( current_zone_set_fully_active() == DEF_S_ZONESET_INFINITY, 1 );
	dprint( "::: f_infinity_init :::" );
	if not b_flight_insertion then 
	// initialize modules
	wake( f_infinity_AI_init );
	wake( f_infinity_narrative_init );
	wake( f_infinity_audio_init );
	wake( f_infinity_FX_init );

	// initialize sub modules
	wake( f_infinity_main );
	//wake( f_infinity_pelican_init );
	end
end

// === f_infinity_deinit::: Deinitialize
script dormant f_infinity_deinit()
	dprint( "::: f_infinity_deinit :::" );

	// kill functions
	sleep_forever( f_infinity_init );
	// deinitialize modules
	wake( f_infinity_AI_deinit );
	wake( f_infinity_narrative_deinit );
	wake( f_infinity_audio_deinit );
	wake( f_infinity_FX_deinit );

	// deinitialize sub modules
//	wake( f_infinity_start_deinit );
	//wake( f_infinity_pelican_deinit );

end

// === f_infinity_cleanup::: Cleanup area
script dormant f_infinity_cleanup()
	sleep_until( current_zone_set_fully_active() > DEF_S_ZONESET_INFINITY, 1 );
	dprint( "::: f_infinity_cleanup :::" );

	// Cleanup
	wake( f_infinity_deinit );
	
end



// -------------------------------------------------------------------------------------------------
// infinity: start
// -------------------------------------------------------------------------------------------------
// === f_infinity_init::: Initialize
script dormant f_infinity_main()
	dprint( "f_infinity_start_init" );
	//thread(f_infinity_weapon_down_state());
	  
	dprint( "f_infinity_trigger" );
//	wake( f_infinity_start_action );
	b_pelican_open = FALSE;
	sleep(5);
	device_set_position_track(dm_inf_launchpad, "device:position", 0);
	object_create(inf_pelican_gunship);
	vehicle_set_player_interaction(inf_pelican_gunship, "" , FALSE, FALSE);
	object_cannot_take_damage(inf_pelican_gunship);
	game_save();
	
	//wake( f_inf_pelican_start );
	dprint("f_inf_pelican_start");
	wake(f_inf_blip_armory);
	sleep_until( dialog_id_played_check(L_dlg_infinity_start), 1 );
	thread(f_m70_objective_set(ct_obj_main));
	//pm_obj
	//objectives_show_up_to(0);
	sleep_s(1);
	f_blip_flag(flg_pelican_blip, "default");
	wake(f_pelican_open_infinity);
	
	thread(f_pelican_disable_extra_seats(inf_pelican_gunship, inf_pelican_gunship));

	
	wake(f_inf_pelican_disable_pilot);


	sleep_until(vehicle_test_players_all() and vehicle_test_seat (inf_pelican_gunship, "pelican_d"), 1);
	f_unblip_flag(flg_pelican_blip);
	wake(f_infinity_narrative_pelican_02);
	sleep_s(3);
	f_objective_set( DEF_R_OBJECTIVE_NONE, FALSE, FALSE, FALSE, TRUE );
	sleep_s(2);
	wake(f_infinity_pelican_launch_lower);
end

script dormant f_inf_pelican_disable_pilot()
	dprint("f_inf_pelican_disable_pilot");
	sleep_until(vehicle_test_seat (inf_pelican_gunship, "pelican_d"), 1);
	pup_pelican_no_fx = pup_play_show(pup_pelican_lower_idle);
		
	player_enable_input(false);
	objects_attach (dm_inf_launchpad, "m_attach", inf_pelican_gunship, "");
	hud_show_crosshair(FALSE);
	hud_show_radar (FALSE);
	hud_show_shield (FALSE);
	hud_show_weapon (FALSE);
	game_safe_to_respawn(FALSE);
	teleport_players_into_vehicle(inf_pelican_gunship);
	device_set_position_track(dm_inf_launchpad, "device:position", 0);
	objects_attach (dm_inf_launchpad, "m_attach", inf_pelican_gunship, "");
	objects_detach (dm_inf_launchpad, inf_pelican_gunship);
end


script dormant f_pelican_open_infinity()
	sleep_until(volume_test_players(tv_open_pelican) and volume_test_players_all_lookat(tv_inf_pelican, 10, 10), 1);
	unit_open(inf_pelican_gunship);
	sleep_until(vehicle_test_seat (inf_pelican_gunship, "pelican_d"), 1);
	unit_close(inf_pelican_gunship);
end

// -------------------------------------------------------------------------------------------------
// infinity: pelican
// -------------------------------------------------------------------------------------------------
script static void f_inf_lower_launchpad()
dprint("f_inf_lower_launchpad");

sleep_s(1);


dprint("test complete");
end

// === f_infinity_pelican_action::: Pelican trigger action
script dormant f_infinity_pelican_launch_lower()
	dprint("f_infinity_pelican_launch_lower");
	//xxx for insertion
	if not object_valid(inf_pelican_gunship) then
		object_create(inf_pelican_gunship);
	end
	sleep(5);
	if not vehicle_test_players_all() then
		teleport_players_into_vehicle(inf_pelican_gunship);
		game_safe_to_respawn(FALSE);
	end
	
	f_inf_pelican_lower();
	

	//local long show_inf_pelican_lower = pup_play_show(pup_inf_pelican_lower);
	
	//device_set_position_track(dm_inf_launchpad, "device:position", 0);
	//device_animate_position(dm_inf_launchpad, 1, 7, 0.1, 0.1, true);
	//sleep_until(not pup_is_playing(show_inf_pelican_lower), 1);
	sleep(5);
	object_can_take_damage(inf_pelican_gunship);


	s_flight_state = S_DEF_FLIGHT_STATE_START();

	thread(f_flight_state_start());
  
end



script static void f_inf_pelican_lower()

	if not pup_is_playing(pup_pelican_no_fx) then
		pup_pelican_no_fx = pup_play_show(pup_pelican_lower_idle);
	end
	sleep_s(1);
	sound_impulse_start ( 'sound\environments\solo\m070\amb_m70_final\amb_m70_machines\events\machine_m70_inf_lift', dm_inf_launchpad, 1 ); //AUDIO!
	device_animate_position(dm_inf_launchpad, 1, 10, 0.1, 0.1, TRUE);
	sleep_s(6);
	fade_out(0, 0, 0, 60);
	sleep_s(2);
	
	pup_stop_show(pup_pelican_no_fx);
	sleep(5);
	objects_detach(dm_inf_launchpad, inf_pelican_gunship);
	sleep(5);
	player_control_lock_gaze(player0(), ps_pelican_launch.p_end, 500);
	player_control_lock_gaze(player1(), ps_pelican_launch.p_end, 500);
	player_control_lock_gaze(player2(), ps_pelican_launch.p_end, 500);
	player_control_lock_gaze(player3(), ps_pelican_launch.p_end, 500);
end


//XXX remove this and make it better


script static void f_infinity_weapon_down_state()
dprint("weapon down state");
/*
			players_weapon_down( -1, 1.0, TRUE );
			dprint("START down");
			repeat 
				dprint("START CHECK");
				player_action_test_reset();
				sleep(1);
				if player_action_test_context_primary() or player_action_test_grenade_trigger() or player_action_test_rotate_weapons()  or player_action_test_primary_trigger() or player_action_test_primary_trigger() then
					players_weapon_down( -1, 0.01, FALSE );
					sleep_s(3);
					dprint("weapon up");
				else
					players_weapon_down( -1, 1.0, TRUE );
					dprint("weapon down");
				end
			until(object_valid(pelican_switch_01) and (device_get_position(pelican_switch_01) > 0.0));
			dprint("check over player gun is always up");
			players_weapon_down( -1, 0.25, FALSE );
*/
end


script dormant f_inf_blip_armory()
	sleep_s(6);
	f_blip_flag( flg_inf_pelican_armory_1, "ammo");
	f_blip_flag( flg_inf_pelican_armory_2, "ammo");
	sleep_until(volume_test_players(tv_inf_pelican_armory_nudge) or vehicle_test_players(), 1);
	f_unblip_flag(flg_inf_pelican_armory_1);
	f_unblip_flag(flg_inf_pelican_armory_2);
end


//cs_push_stance( sq_inf_dock_worker.spawn_points_0, "panic");
//cs_push_stance( sq_inf_dock_worker, flee);
//ai_flee_target(sq_inf_dock_worker, player0());
//ai_flee_target (sq_inf_dock_worker, player0);
//script command_script()
//

//script command_script cs_panic()
//ai_flee_target (sq_inf_dock_worker, player0);
//cs_stow(TRUE);
//cs_push_stance( "panic" );

//end
//cs_push_stance(sq_inf_dock_worker, "flee" );
//script command_script cs_flee()
//cs_push_stance( "flee" );
//sleep_s(30);
//end
// --- End m70_infinity.hsc ---

// --- Begin m70_infinity_ai.hsc ---
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343
//
// Mission: 					m70
//
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343

// =================================================================================================
// =================================================================================================
// infinity_AI
// =================================================================================================
// =================================================================================================
// variables

// functions
// === f_infinity_AI_init::: Initialize
script dormant f_infinity_AI_init()
	dprint( "::: f_infinity_AI_init :::" );
	
	// initialize modules

	// initialize sub modules
	
	//wake( f_infinity_AI_marines_init );
	ai_allegiance( player, human );
	
	ai_place ( sg_infinity );
	wake(f_inf_dock_workers);
	
	local long show_marine_01 = pup_play_show(pup_marines_salute_1_2);
	local long show_marine_02 = pup_play_show(pup_marines_salute_3_4);
	local long show_marine_03 = pup_play_show(pup_marines_salute_5_6);
	local long show_marine_04 = pup_play_show(pup_marines_salute_7_8);
	local long show_marine_05 = pup_play_show(pup_spartan_sitting);
	local long show_marine_06 = pup_play_show(pup_marines_work);
	local short show_marine_07 = pup_play_show(pup_marines_work_001);
	local long show_marine_08 = pup_play_show(pup_marines_work_02);
	local long show_marine_09 = pup_play_show(pup_marines_talking_01);
	local long show_marine_10 = pup_play_show(pup_spartan_patrol_01);
	local long show_marine_11 = pup_play_show(pup_spartan_convo_01);
	local long show_marine_12 = pup_play_show(pup_spartan_convo_01);
	local long show_marine_13 = pup_play_show(pup_spartan_patrol_02);
	print("salute");
	sleep_until(ai_allegiance_broken(player, human ), 1);
	ai_allegiance_remove (player, human);
	ai_braindead( sg_infinity, FALSE);
	b_dock_workers_panic = TRUE;
	
	pup_stop_show(show_marine_01);
	pup_stop_show(show_marine_02);
	pup_stop_show(show_marine_03);
	pup_stop_show(show_marine_04);
	pup_stop_show(show_marine_05);
	pup_stop_show(show_marine_06);
	pup_stop_show(show_marine_07);
	pup_stop_show(show_marine_08);
	pup_stop_show(show_marine_09);
	pup_stop_show(show_marine_10);
	pup_stop_show(show_marine_11);
	pup_stop_show(show_marine_12);
	pup_stop_show(show_marine_13);

	
	sleep_until(ai_living_count(sg_infinity_all) < 15, 1);
	wake(f_inf_hunter_killer);
end

// === f_infinity_AI_deinit::: Deinitialize
script dormant f_infinity_AI_deinit()
	dprint( "::: f_infinity_AI_deinit :::" );

	// kill functions
	sleep_forever( f_infinity_AI_init );

	// deinitialize modules

	// deinitialize sub modules
	//wake( f_infinity_AI_CCC_deinit );
	wake( f_infinity_AI_marines_deinit );

end

script command_script cs_inf_marines()
dprint("cs_inf_marines");
cs_enable_moving(FALSE);
sleep_until(b_dock_workers_panic, 1);
cs_enable_moving(TRUE);
end

script command_script cs_clear()
sleep(5);
end

script dormant f_inf_hunter_killer()
dprint("f_inf_hunter_killer");

sleep_until(ai_living_count(sg_infinity_all) < 14, 1);
	f_inf_hunter_killer_spawn_control();
	dprint("spawning next");
sleep_until(ai_living_count(sg_infinity_all) < 13, 1);
	f_inf_hunter_killer_spawn_control();
	dprint("spawning next");
sleep_until(ai_living_count(sg_infinity_all) < 10, 1);
	f_inf_hunter_killer_spawn_control();
	dprint("spawning next");
sleep_until(ai_living_count(sg_infinity_all) < 3, 1);
	if game_difficulty_get() >= "Legendary" then
		ai_place(kill_team_07);
	end
	
end

script static void f_inf_hunter_killer_spawn_control()
dprint("f_inf_hunter_killer_01");
	local boolean b_spawned = FALSE;
	local short s_check_next = random_range(1, 3);
	
	repeat
	
	if s_check_next == 1 and not b_spawned then
	
		if not volume_test_players_lookat ( tv_inf_killteam_01, 40, 40) then
			ai_place(kill_team_01);
			b_spawned = TRUE;
		end
		
	elseif s_check_next == 2 and not b_spawned then
		
		if not volume_test_players_lookat ( tv_inf_killteam_02, 40, 40) then
			ai_place(kill_team_02);
			b_spawned = TRUE;
		end
		
	elseif s_check_next == 3 and not b_spawned then
		
		if not volume_test_players_lookat ( tv_inf_killteam_03, 40, 40) then
			ai_place(kill_team_03);
			b_spawned = TRUE;
		end
	end
	
	if s_check_next > 3 then
		s_check_next = 1;
	else
		s_check_next = s_check_next + 1;
	end

	until(b_spawned, 1);
	
end



script dormant f_temp_start

 wake (f_infinity_init);
 print ("GO");

end

// -------------------------------------------------------------------------------------------------
// infinity_AI: CCC
// -------------------------------------------------------------------------------------------------

//inspect(ai_living_count(sg_infinity));
// === f_infinity_AI_marines_deinit::: Deinit
script dormant f_infinity_AI_marines_deinit()
	dprint( "::: f_infinity_AI_marines_deinit :::" );

	// shutdown functions
	ai_erase( sg_infinity_all );


end


script static void f_player_proximity_time_check(real r_time)
	repeat
	b_dock_workers_play_show = FALSE;
	sleep_until(volume_test_players(tv_dock_worker), 1);
	if volume_test_players(tv_dock_worker) then
		sleep_s(r_time);
		if volume_test_players(tv_dock_worker) then
			b_dock_workers_play_show = TRUE;
		end
	end
	until(b_dock_workers_play_show or ai_allegiance_broken(player, human ), 1);
end


global boolean b_dock_workers_play_show = FALSE; 
global boolean b_dock_workers_panic = FALSE; 
global boolean g_end_dock_show = FALSE;

script dormant f_inf_dock_workers()
	dprint("f_inf_conan");
	local long show_dock_idle = 0;
	local long show_dock_worker = 0;
	sleep_until(ai_living_count(sq_inf_dock_worker) > 1, 1);
	show_dock_idle = pup_play_show(pup_dock_idle);
	ai_actor_dialogue_enable(sq_inf_dock_worker, FALSE);
	repeat		

		f_player_proximity_time_check(30);

		//CRATE_UNION
		dprint("CRATE_UNION");
		if pup_is_playing(show_dock_idle) and ai_living_count(sq_inf_dock_worker) > 1 and not ai_allegiance_broken(player, human) then
			pup_stop_show(show_dock_idle);
			show_dock_worker = pup_play_show(pup_crate_union);
			sleep_until( g_end_dock_show or not pup_is_playing(show_dock_worker), 1);
			pup_stop_show(show_dock_worker);
			if g_end_dock_show then
				show_dock_idle = pup_play_show(pup_dock_idle);
			end
		end

		f_player_proximity_time_check(5);

		//RUGS_WOULD_BE_NICE
		dprint("RUGS_WOULD_BE_NICE");
		if pup_is_playing(show_dock_idle) and ai_living_count(sq_inf_dock_worker) > 1 and not ai_allegiance_broken(player, human) then
			pup_stop_show(show_dock_idle);
			show_dock_worker = pup_play_show(pup_rugs_would_be_nice);
			sleep_until( g_end_dock_show or not pup_is_playing(show_dock_worker), 1);
			pup_stop_show(show_dock_worker);
			if g_end_dock_show then
				show_dock_idle = pup_play_show(pup_dock_idle);
			end
		end

		f_player_proximity_time_check(5);

		//ANCIENT_EVIL
		dprint("ANCIENT_EVIL");
		sleep_until(volume_test_players(tv_dock_worker), 1);
		if pup_is_playing(show_dock_idle) and ai_living_count(sq_inf_dock_worker) > 1 and not ai_allegiance_broken(player, human) then
			pup_stop_show(show_dock_idle);
			show_dock_worker = pup_play_show(pup_wake_ancient_evil);
			sleep_until( g_end_dock_show or not pup_is_playing(show_dock_worker), 1);
			pup_stop_show(show_dock_worker);
			if g_end_dock_show then
				show_dock_idle = pup_play_show(pup_dock_idle);
			end
		end

	until( not pup_is_playing(show_dock_idle) or vehicle_test_players_all(),1);
	dprint("LEAVING");
end

// --- End m70_infinity_ai.hsc ---

// --- Begin m70_infinity_audio.hsc ---
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343
//
// Mission: 					m70
//
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343

// =================================================================================================
// =================================================================================================
// infinity_audio
// =================================================================================================
// =================================================================================================
// variables

// functions
// === f_infinity_audio_init::: Initialize
script dormant f_infinity_audio_init()
	dprint( "::: f_infinity_audio_init :::" );

	// initialize modules

	// initialize sub modules
	//wake( f_infinity_audio_CCC_init );

end

// === f_infinity_audio_deinit::: Deinitialize
script dormant f_infinity_audio_deinit()
	dprint( "::: f_infinity_audio_deinit :::" );

	// kill functions
	sleep_forever( f_infinity_audio_init );

	// deinitialize modules

	// deinitialize sub modules
	//wake( f_infinity_audio_CCC_deinit );

end


/*
// -------------------------------------------------------------------------------------------------
// infinity_audio: CCC
// -------------------------------------------------------------------------------------------------
// variables
//global boolean <t>_infinity_audio_<NAME> = <VALUE>;

// functions
// === f_infinity_audio_CCC_init::: Initialize infinity_audio: CCC sub module
script dormant f_infinity_audio_CCC_cleanup()
	dprint( "::: f_infinity_audio_CCC_cleanup :::" );

	// XXX_TODO

end

// === f_infinity_audio_CCC_deinit::: Initialize infinity_audio: CCC sub module
script dormant f_infinity_audio_CCC_deinit()
	dprint( "::: f_infinity_audio_CCC_deinit :::" );

	// XXX_TODO

end
*/
// --- End m70_infinity_audio.hsc ---

// --- Begin m70_infinity_fx.hsc ---
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343
//
// Mission: 					m70
//
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343

// =================================================================================================
// =================================================================================================
// infinity_FX
// =================================================================================================
// =================================================================================================
// variables

// functions
// === f_infinity_FX_init::: Initialize
script dormant f_infinity_FX_init()
	dprint( "::: f_infinity_FX_init :::" );

	// initialize modules

	// initialize sub modules
	//wake( f_infinity_FX_CCC_init );

end

// === f_infinity_FX_deinit::: Deinitialize
script dormant f_infinity_FX_deinit()
	dprint( "::: f_infinity_FX_deinit :::" );

	// kill functions
	sleep_forever( f_infinity_FX_init );

	// deinitialize modules

	// deinitialize sub modules
	//wake( f_infinity_FX_CCC_deinit );

end


/*
// -------------------------------------------------------------------------------------------------
// infinity_FX: CCC
// -------------------------------------------------------------------------------------------------
// variables
//global boolean <t>_infinity_FX_<NAME> = <VALUE>;

// functions
// === f_infinity_FX_CCC_init::: Initialize infinity_FX: CCC sub module
script dormant f_infinity_FX_CCC_cleanup()
	dprint( "::: f_infinity_FX_CCC_cleanup :::" );

	// XXX_TODO

end

// === f_infinity_FX_CCC_deinit::: Initialize infinity_FX: CCC sub module
script dormant f_infinity_FX_CCC_deinit()
	dprint( "::: f_infinity_FX_CCC_deinit :::" );

	// XXX_TODO

end
*/
// --- End m70_infinity_fx.hsc ---

// --- Begin m70_insertion.hsc ---
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343
//
// Mission: 					m70
//
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343
// NOTE: 	Several of the functions used in m10_crash_insertion use global_insertion.hsc.
//				You can find documentation in that file on how to setup your insertion script
//				so you can use the library of script functions to streamline your insertion script.

// =================================================================================================
// =================================================================================================
// *** INSERTIONS ***
// =================================================================================================
// =================================================================================================
// defines
// --- insertion indexes
global short DEF_INSERTION_INDEX_CINEMATIC_OPEN															= 0;
global short DEF_INSERTION_INDEX_INFINITY																		= 1;
global short DEF_INSERTION_INDEX_FLIGHT																			= 2;
global short DEF_INSERTION_INDEX_SPIRE_01																		= 3;
global short DEF_INSERTION_INDEX_SPIRE_02																		= 4;
global short DEF_INSERTION_INDEX_SPIRE_03																		= 5;
global short DEF_INSERTION_INDEX_LICH																				= 6;
global short DEF_INSERTION_INDEX_CINEMATIC_END															= 7;
global short DEF_INSERTION_INDEX_FLIGHT_2_1																	= 8;
global short DEF_INSERTION_INDEX_FLIGHT_2_2																	= 9;
global short DEF_INSERTION_INDEX_FLIGHT_3_1																	= 10;
global short DEF_INSERTION_INDEX_FLIGHT_3_2																	= 11;
global short DEF_INSERTION_INDEX_FAIL																				= 12;
//xxx
global short DEF_INSERTION_INDEX_FAIL2																			= 13;

// variables

// functions
// -------------------------------------------------------------------------------------------------
// START
// -------------------------------------------------------------------------------------------------
script static void start()
	//dprint( "::: start :::" );

	f_insertion_index_load( game_insertion_point_get() );

end

// -------------------------------------------------------------------------------------------------
// CINEMATIC
// -------------------------------------------------------------------------------------------------
script static void icno()
	f_insertion_reset( DEF_INSERTION_INDEX_CINEMATIC_OPEN );
end

script static void ins_cinematic_open()

	f_insertion_begin( "CINEMATIC OPEN" );
	f_cinematic_open();
	dprint("START INFINITY INSERTION");
	// start the infinity insertion point
	ins_infinity();
	
end


// -------------------------------------------------------------------------------------------------
// INFINITY
// -------------------------------------------------------------------------------------------------
script static void iinf()
	f_insertion_reset( DEF_INSERTION_INDEX_INFINITY );
end

script static void ins_infinity()

	f_insertion_begin( "INFINITY" );
	f_insertion_zoneload( DEF_S_ZONESET_INFINITY, FALSE );
	f_insertion_playerwait();
	f_insertion_teleport( ps_insertion_infinity.p0, ps_insertion_infinity.p1, ps_insertion_infinity.p2, ps_insertion_infinity.p3 );
	f_insertion_playerprofile( profile_infinity, FALSE );
	f_insertion_end();
	
	// force objective index
	//f_objective_set( <OBJECTIVE_INDEX>, FALSE, FALSE, FALSE, FALSE );
	
	// forces setup of mission functions to put game into proper state
	// XXX_TODO
	
	wake( f_dlg_infinity_start );
	
	dprint("::: INSERTION: COMPLETE" );
	
end

// -------------------------------------------------------------------------------------------------
// FLIGHT STATE START
// -------------------------------------------------------------------------------------------------
script static void iflt()
	f_insertion_reset( DEF_INSERTION_INDEX_FLIGHT );
end

script static void ins_flight()
	b_flight_insertion = TRUE;
	
	f_insertion_begin( "FLIGHT_START" );
	f_insertion_zoneload( DEF_S_ZONESET_INFINITY, FALSE );
	f_insertion_playerwait();
	f_insertion_teleport( ps_insertion_flight.p0, ps_insertion_flight.p1, ps_insertion_flight.p2, ps_insertion_flight.p3 );
	f_insertion_playerprofile( profile_flight, FALSE );
	f_insertion_end();
	
	// forces setup of mission functions to put game into proper state
	wake( f_infinity_pelican_launch_lower );

	dprint("::: INSERTION: COMPLETE" );
	
end

// -------------------------------------------------------------------------------------------------
// FLIGHT STATE SECOND COMPLETED SPIRE 1
// -------------------------------------------------------------------------------------------------
script static void iflt2_1()
	f_insertion_reset( DEF_INSERTION_INDEX_FLIGHT_2_1 );
end

script static void ins_flight_2_1()

	f_insertion_begin( "FLIGHT_SECOND_SPIRE" );
	f_insertion_zoneload( DEF_S_ZONESET_SPIRE_01_EXT, FALSE );
	f_insertion_playerwait();
	f_insertion_teleport( ps_insertion_flight_spire_01.p0, ps_insertion_flight_spire_01.p1, ps_insertion_flight_spire_01.p2, ps_insertion_flight_spire_01.p3 );
	f_insertion_playerprofile( profile_flight, FALSE );
	f_insertion_end();
	
	// forces setup of mission functions to put game into proper state
	S_SPIRE_FIRST = DEF_SPIRE_01;
	f_spire_state_set ( DEF_SPIRE_01, DEF_SPIRE_STATE_COMPLETE());
	f_objective_set( DEF_R_OBJECTIVE_FLIGHT_SPIRE_01(), TRUE, TRUE, TRUE, TRUE);
	thread( f_spire01_exit() );

	dprint("::: INSERTION: COMPLETE" );
	
end

// -------------------------------------------------------------------------------------------------
// FLIGHT STATE SECOND SPIRE COMPLETED SPIRE 2
// -------------------------------------------------------------------------------------------------
script static void iflt2_2()
	f_insertion_reset( DEF_INSERTION_INDEX_FLIGHT_2_2 );
end

script static void ins_flight_2_2()

	f_insertion_begin( "FLIGHT_SECOND_SPIRE" );
	f_insertion_zoneload( DEF_S_ZONESET_SPIRE_02_EXT, FALSE );
	f_insertion_playerwait();
	f_insertion_teleport( ps_insertion_flight_spire_02.p0, ps_insertion_flight_spire_02.p1, ps_insertion_flight_spire_02.p2, ps_insertion_flight_spire_02.p3 );
	f_insertion_playerprofile( profile_flight, FALSE );
	f_insertion_end();
	
	
	// forces setup of mission functions to put game into proper state
	S_SPIRE_FIRST = DEF_SPIRE_02;
	f_spire_state_set ( DEF_SPIRE_02, DEF_SPIRE_STATE_COMPLETE());
	f_objective_set( DEF_R_OBJECTIVE_FLIGHT_SPIRE_02(), TRUE, TRUE, TRUE, TRUE);
	thread( f_spire_02_exit() );
	//wake( f_flight_main );

	dprint("::: INSERTION: COMPLETE" );
	
end

// -------------------------------------------------------------------------------------------------
// FLIGHT STATE SPIRE 3 COMPLETED SPIRE 1
// -------------------------------------------------------------------------------------------------
script static void iflt3_1()
	f_insertion_reset( DEF_INSERTION_INDEX_FLIGHT_3_1 );
end

script static void ins_flight_3_1()

	f_insertion_begin( "FLIGHT_THIRD_SPIRE" );
	f_insertion_zoneload( DEF_S_ZONESET_SPIRE_01_EXT, FALSE );
	f_insertion_playerwait();
	f_insertion_teleport( ps_insertion_flight_spire_01.p0, ps_insertion_flight_spire_01.p1, ps_insertion_flight_spire_01.p2, ps_insertion_flight_spire_01.p3 );
	f_insertion_playerprofile( profile_flight, FALSE );
	f_insertion_end();
	
	// forces setup of mission functions to put game into proper state
	music_start('Play_mus_m70');
	b_m70_music_progression = 10;
	
	S_SPIRE_FIRST = DEF_SPIRE_02;
	f_spire_state_set ( DEF_SPIRE_01, DEF_SPIRE_STATE_COMPLETE());
	f_spire_state_set ( DEF_SPIRE_02, DEF_SPIRE_STATE_COMPLETE());
	f_objective_set( DEF_R_OBJECTIVE_FLIGHT_SPIRE_03(), TRUE, TRUE, TRUE, TRUE);
	thread(f_spire01_exit());

	//wake( f_flight_main );
	dprint("::: INSERTION: COMPLETE" );
	
end

// -------------------------------------------------------------------------------------------------
// FLIGHT STATE SPIRE 3 COMPLETED SPIRE 2
// -------------------------------------------------------------------------------------------------
script static void iflt3_2()
	f_insertion_reset( DEF_INSERTION_INDEX_FLIGHT_3_2 );
end

script static void ins_flight_3_2()
	
	f_insertion_begin( "FLIGHT_THIRD_SPIRE" );
	f_insertion_zoneload( DEF_S_ZONESET_SPIRE_02_EXT, FALSE );
	f_insertion_playerwait();
	f_insertion_teleport( ps_insertion_flight_spire_02.p0, ps_insertion_flight_spire_02.p1, ps_insertion_flight_spire_02.p2, ps_insertion_flight_spire_02.p3 );
	f_insertion_playerprofile( profile_flight, FALSE );
	f_insertion_end();
	
	// forces setup of mission functions to put game into proper state
	S_SPIRE_FIRST = DEF_SPIRE_01;
	f_spire_state_set ( DEF_SPIRE_01, DEF_SPIRE_STATE_COMPLETE());
	f_spire_state_set ( DEF_SPIRE_02, DEF_SPIRE_STATE_COMPLETE());
	f_objective_set( DEF_R_OBJECTIVE_FLIGHT_SPIRE_03(), TRUE, TRUE, TRUE, TRUE);
	thread( f_spire_02_exit() );

	//wake( f_flight_main );
	
	dprint("::: INSERTION: COMPLETE" );
	
end

// -------------------------------------------------------------------------------------------------
// SPIRE 01
// -------------------------------------------------------------------------------------------------
script static void is01()
	f_insertion_reset( DEF_INSERTION_INDEX_SPIRE_01 );
end

// RALLY POINT BRAVO
script static void ins_spire01()

	f_insertion_begin( "SPIRE 01" );
	f_insertion_zoneload( DEF_S_ZONESET_SPIRE_01_INT_B, FALSE );
	f_insertion_playerwait();
	f_insertion_teleport( ps_insertion_spire_01.p0, ps_insertion_spire_01.p1, ps_insertion_spire_01.p2, ps_insertion_spire_01.p3 );
	f_insertion_playerprofile( profile_spire_01, FALSE );
	f_insertion_end();
	
	// force objective index
	//f_objective_set( <OBJECTIVE_INDEX>, FALSE, FALSE, FALSE, FALSE );
	
	// forces setup of mission functions to put game into proper state
	music_start('Play_mus_m70');
	b_m70_music_progression = 40;
	//f_spire_01_state_set( DEF_SPIRE_STATE_INTERIOR_OBJECTIVE );
	
	f_spire_state_set ( DEF_SPIRE_01, DEF_SPIRE_STATE_INTERIOR_START());
	// XXX_TODO
	device_set_power(dm_sp01_int_door_01, 0);
	dprint("::: INSERTION: COMPLETE" );
	
end

// -------------------------------------------------------------------------------------------------
// SPIRE 02
// -------------------------------------------------------------------------------------------------
script static void is02()
	f_insertion_reset( DEF_INSERTION_INDEX_SPIRE_02 );
end

// RALLY POINT CHARLIE
script static void ins_spire02()
	zone_set_trigger_volume_enable("begin_zone_set:spire_1_exterior", FALSE);
	zone_set_trigger_volume_enable("zone_set:spire_1_exterior", FALSE);
	f_insertion_begin( "SPIRE 02" );
	f_insertion_zoneload( DEF_S_ZONESET_SPIRE_02_INT_B, FALSE );
	f_insertion_playerwait();
	f_insertion_teleport( ps_insertion_spire_02.p0, ps_insertion_spire_02.p1, ps_insertion_spire_02.p2, ps_insertion_spire_02.p3 );
	f_insertion_playerprofile( profile_spire_02, FALSE );
	f_insertion_end();
	
	// force objective index
	//f_objective_set( <OBJECTIVE_INDEX>, FALSE, FALSE, FALSE, FALSE );
	
	// forces setup of mission functions to put game into proper state
	music_start('Play_mus_m70');
	b_m70_music_progression = 60;
	//f_spire_02_state_set( DEF_SPIRE_STATE_INTERIOR_OBJECTIVE );
	f_spire_state_set ( DEF_SPIRE_01, DEF_SPIRE_STATE_COMPLETE());
	f_spire_state_set ( DEF_SPIRE_02, DEF_SPIRE_STATE_INTERIOR_START());
	// XXX_TODO
	device_set_power(dm_sp02_int_door_01, 0);
	dprint("::: INSERTION: COMPLETE" );
	
end

// -------------------------------------------------------------------------------------------------
// SPIRE 03
// -------------------------------------------------------------------------------------------------
script static void is03()
	f_insertion_reset( DEF_INSERTION_INDEX_SPIRE_03 );
end

// RALLY POINT DELTA
script static void ins_spire03()

	f_insertion_begin( "SPIRE 03" );
	f_insertion_zoneload( DEF_S_ZONESET_SPIRE_03_INT_A, FALSE );
	f_insertion_playerwait();
	f_insertion_teleport( ps_insertion_spire_03.p0, ps_insertion_spire_03.p1, ps_insertion_spire_03.p2, ps_insertion_spire_03.p3 );
	f_insertion_playerprofile( profile_spire_03, FALSE );
	f_insertion_end();
	
	// force objective index
	//f_objective_set( <OBJECTIVE_INDEX>, FALSE, FALSE, FALSE, FALSE );
	
	// forces setup of mission functions to put game into proper state
	music_start('Play_mus_m70');
	b_m70_music_progression = 80;
	f_spire_state_set ( DEF_SPIRE_01, DEF_SPIRE_STATE_COMPLETE() );
	f_spire_state_set ( DEF_SPIRE_02, DEF_SPIRE_STATE_COMPLETE() );
	f_spire_state_set ( DEF_SPIRE_03, DEF_SPIRE_STATE_OPEN() );
	device_set_power(dm_sp03_int_door_01, 0);
	dprint("::: INSERTION: COMPLETE" );
	
end
//=============================================================
script static void ifail()
	f_insertion_reset( DEF_INSERTION_INDEX_FAIL );
end

script static void ins_fail()

	f_insertion_begin( "FAIL" );
		f_insertion_zoneload( DEF_S_ZONESET_SPIRE_03_INT_D, FALSE );
		f_insertion_playerwait();
		f_insertion_teleport( ps_insertion_lich.p0, ps_insertion_lich.p1, ps_insertion_lich.p2, ps_insertion_lich.p3 );
		f_insertion_playerprofile( profile_lich, FALSE );

	// setup any states before b_mission_started is set	

	f_insertion_end();

	// forces setup of mission functions to put game into proper state
	f_spire_state_set( DEF_SPIRE_01, DEF_SPIRE_STATE_COMPLETE() );
	f_spire_state_set( DEF_SPIRE_02, DEF_SPIRE_STATE_COMPLETE() );
	
	//f_spire_state_set( DEF_SPIRE_03, DEF_SPIRE_STATE_COMPLETE() );
	
	// start the floor
	wake( f_spire_03_INT_control_room_init);
	
	dprint("::: INSERTION: COMPLETE" );
	
end

//==============================================================
//XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
script static void ifail2()
	f_insertion_reset( DEF_INSERTION_INDEX_FAIL2 );
end

script static void ins_fail2()

		f_insertion_begin( "FAIL" );
		f_insertion_zoneload( DEF_S_ZONESET_SPIRE_03_INT_D, FALSE );
		f_insertion_playerwait();
		f_insertion_teleport( ps_insertion_lich.p0, ps_insertion_lich.p1, ps_insertion_lich.p2, ps_insertion_lich.p3 );
		f_insertion_playerprofile( profile_lich, FALSE );

	// setup any states before b_mission_started is set	

	f_insertion_end();

	// forces setup of mission functions to put game into proper state
	f_spire_state_set( DEF_SPIRE_01, DEF_SPIRE_STATE_COMPLETE() );
	f_spire_state_set( DEF_SPIRE_02, DEF_SPIRE_STATE_COMPLETE() );
	
	//f_spire_state_set( DEF_SPIRE_03, DEF_SPIRE_STATE_COMPLETE() );

	
	dprint("::: INSERTION: COMPLETE" );
	
end
//================================================================
// -------------------------------------------------------------------------------------------------
// LICH
// -------------------------------------------------------------------------------------------------
script static void ilch()
	f_insertion_reset( DEF_INSERTION_INDEX_LICH );
end

script static void ins_lich()

	f_insertion_begin( "LICH" );
		f_insertion_zoneload( DEF_S_ZONESET_SPIRE_03_INT_D, FALSE );
		f_insertion_playerwait();
		f_insertion_teleport( ps_insertion_lich.p0, ps_insertion_lich.p1, ps_insertion_lich.p2, ps_insertion_lich.p3 );
		f_insertion_playerprofile( profile_lich, FALSE );

	// setup any states before b_mission_started is set	

	f_insertion_end();

	// forces setup of mission functions to put game into proper state
	f_spire_state_set( DEF_SPIRE_01, DEF_SPIRE_STATE_COMPLETE() );
	f_spire_state_set( DEF_SPIRE_02, DEF_SPIRE_STATE_COMPLETE() );
	f_spire_state_set( DEF_SPIRE_03, DEF_SPIRE_STATE_COMPLETE() );
	
	// start the floor
	wake( f_spire_03_INT_control_room_floor_init );
	wake( f_dlg_spire_03_outro_01 );
	
	dprint("::: INSERTION: COMPLETE" );
	
end

// -------------------------------------------------------------------------------------------------
// CINEMATIC END
// -------------------------------------------------------------------------------------------------
script static void icne()
	f_insertion_reset( DEF_INSERTION_INDEX_CINEMATIC_END );
end

script static void ins_cinematic_end()

	f_insertion_begin( "CINEMATIC CLOSE" );
	f_cinematic_close();
	
end



// =================================================================================================
// =================================================================================================
// UTILITY
// =================================================================================================
// =================================================================================================
// -------------------------------------------------------------------------------------------------
// INSERTION LOAD INDEX
// -------------------------------------------------------------------------------------------------
script static void f_insertion_index_load( short s_insertion )
local boolean b_started = FALSE;
	//dprint( "::: f_insertion_index_load :::" );
	inspect( game_insertion_point_get() );
	
	if (s_insertion == DEF_INSERTION_INDEX_CINEMATIC_OPEN) then
		b_started = TRUE;
		ins_cinematic_open();
	end
	if (s_insertion == DEF_INSERTION_INDEX_INFINITY) then
		b_started = TRUE;
		ins_infinity();
	end
	if (s_insertion == DEF_INSERTION_INDEX_FLIGHT) then
		b_started = TRUE;
		ins_flight();
	end
	if (s_insertion == DEF_INSERTION_INDEX_FLIGHT_2_1) then
		b_started = TRUE;
		ins_flight_2_1();
	end
	if (s_insertion == DEF_INSERTION_INDEX_FLIGHT_2_2) then
		b_started = TRUE;
		ins_flight_2_2();
	end
	if (s_insertion == DEF_INSERTION_INDEX_FLIGHT_3_1) then
		b_started = TRUE;
		ins_flight_3_1();
	end
	if (s_insertion == DEF_INSERTION_INDEX_FLIGHT_3_2) then
		b_started = TRUE;
		ins_flight_3_2();
	end
	if (s_insertion == DEF_INSERTION_INDEX_SPIRE_01) then
		b_started = TRUE;
		ins_spire01();
	end
	if (s_insertion == DEF_INSERTION_INDEX_SPIRE_02) then
		b_started = TRUE;
		ins_spire02();
	end
	if (s_insertion == DEF_INSERTION_INDEX_SPIRE_03) then
		b_started = TRUE;
		ins_spire03();
	end
	if (s_insertion == DEF_INSERTION_INDEX_LICH) then
		b_started = TRUE;
		ins_lich();
	end
	if (s_insertion == DEF_INSERTION_INDEX_FAIL) then
		b_started = TRUE;
		ins_fail();
	end
	//xxx
	if (s_insertion == DEF_INSERTION_INDEX_FAIL2) then
		b_started = TRUE;
		ins_fail2();
	end
	
	if (s_insertion == DEF_INSERTION_INDEX_CINEMATIC_END) then
		b_started = TRUE;
		ins_cinematic_end();
	end

	if ( not b_started ) then
		dprint( "f_insertion_index_load: ERROR: Failed to find insertion point index to load" );
		inspect( s_insertion );
	end

end

// -------------------------------------------------------------------------------------------------
// ZONE SET GET
// -------------------------------------------------------------------------------------------------
script static zone_set f_zoneset_get( short s_index )
local zone_set zs_return = "00_infinity";

	if ( s_index == DEF_S_ZONESET_INFINITY ) then
	 zs_return = "00_infinity";
	end
	if ( s_index == DEF_S_ZONESET_INFINITY_EXT ) then
	 zs_return = "00_infinity_exterior";
	end
	if ( s_index == DEF_S_ZONESET_SPIRE_01_EXT ) then
	 zs_return = "spire_1_exterior";
	end
	if ( s_index == DEF_S_ZONESET_SPIRE_01_INT_A ) then
	 zs_return = "spire_1_interior_a";
	end
	if ( s_index == DEF_S_ZONESET_SPIRE_01_INT_B ) then
	 zs_return = "spire_1_interior_b";
	end
	if ( s_index == DEF_S_ZONESET_SPIRE_02_EXT ) then
	 zs_return = "spire_2_exterior";
	end
	if ( s_index == DEF_S_ZONESET_SPIRE_02_INT_A ) then
	 zs_return = "spire_2_interior_a";
	end
	if ( s_index == DEF_S_ZONESET_SPIRE_02_INT_B ) then
	 zs_return = "spire_2_interior_b";
	end
	if ( s_index == DEF_S_ZONESET_SPIRE_03_EXT ) then
	 zs_return = "spire_3_exterior";
	end
	if ( s_index == DEF_S_ZONESET_SPIRE_03_INT_A ) then
	 zs_return = "spire_3_interior_a";
	end
	if ( s_index == DEF_S_ZONESET_SPIRE_03_INT_B ) then
	 zs_return = "spire_3_interior_b";
	end
	if ( s_index == DEF_S_ZONESET_SPIRE_03_INT_C ) then
	 zs_return = "spire_3_interior_c";
	end
	if ( s_index == DEF_S_ZONESET_SPIRE_03_INT_D ) then
	 zs_return = "spire_3_interior_d";
	end
	if ( s_index == DEF_S_ZONESET_SPIRE_03_EXIT ) then
	 	zs_return = "spire_3_exit";
	end
	if ( s_index == DEF_S_ZONESET_CIN_M070_LIFTOFF ) then
	 	zs_return = "cin_m070_liftoff";
	end
	if ( s_index == DEF_S_ZONESET_CIN_M072_END ) then
	 	zs_return = "cin_m072_end";
	end

	// return
	zs_return;
end

// --- End m70_insertion.hsc ---

// --- Begin m70_lich.hsc ---
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343
//
// Mission: 					m70
//
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343

// =================================================================================================
// =================================================================================================
// lich
// =================================================================================================
// =================================================================================================
// defines

// variables
global boolean B_lich_chief_jumped = FALSE;

// functions
// === f_lich_startup::: Auto startup
script startup f_lich_startup()
	sleep_until( b_mission_started, 1 );
	
	// wake init
	wake( f_lich_init );
	
end

// === f_lich_init::: Initialize
script dormant f_lich_init()

	// disable the kill volume by default
	kill_volume_disable( kill_lich );

	// setup cleanup watch
	wake( f_lich_cleanup );
	//XXX PUT BACK AFTER UR
	//sleep_until( current_zone_set_fully_active() == DEF_S_ZONESET_SPIRE_03_EXIT, 1 );
	sleep_until( current_zone_set_fully_active() >= DEF_S_ZONESET_SPIRE_03_INT_D, 1 );
	data_mine_set_mission_segment ("m70_lich_end"); 
	dprint( "::: f_lich_init :::" );
	if object_valid(cr_didact_ship) then
		object_destroy(cr_didact_ship);
	end
	// init sub modules
	wake( f_lich_props_init );

	// setup trigger
	wake( f_lich_trigger );

end

// === f_lich_deinit::: Deinitialize
script dormant f_lich_deinit()
	dprint( "::: f_lich_deinit :::" );

	// kill functions
	kill_script( f_lich_init );
	kill_script( f_lich_action );
	kill_script( f_lich_trigger );
	
	// deinit sub modules
	wake( f_lich_props_deinit );

end

// === f_lich_cleanup::: Cleanup area
script dormant f_lich_cleanup()
	sleep_until( f_objective_missioncomplete_check(), 1 );
	dprint( "::: f_lich_cleanup :::" );

	wake( f_lich_deinit );
	
end

// === f_lich_trigger::: Trigger
script dormant f_lich_trigger()
	sleep_until( f_spire_state_complete(DEF_SPIRE_03), 1 );
	dprint( "::: f_lich_trigger :::" );

	// action
	wake( f_lich_action );

	// blip the lich
  sleep_until( dialog_id_played_check(L_dlg_spire_03_outro_01) or dialog_foreground_id_line_index_check_greater(L_dlg_spire_03_outro_01, S_dlg_spire_03_outro_01_blip), 1 );
  if ( not object_valid(scn_lich_target_01) ) then
  	object_create_anew( scn_lich_target_01 );
  end
  
  f_objective_blip( DEF_R_OBJECTIVE_LICH(), TRUE, FALSE );
  
	sleep_until(volume_test_players(tv_lich_jump_blip), 1);
	sleep_s(1);
	f_unblip_flag(flg_lich_jump);
	sleep_s(1);
	f_blip_object(scn_lich_target_01, "recon");
	
	sleep_until(not volume_test_players(tv_lich_platform), 1);
	
	f_unblip_object(scn_lich_target_01);
end

// === f_lich_action::: Action the Lich sequence
script dormant f_lich_action()
local real r_time_min = 60.0;
local real r_time_max = 360.0;

	// start lich sequence
	dprint( "::: f_lich_action :::" );

	// enable the kill volume
	kill_volume_enable( kill_lich );
 
 // display the objectives
  f_objective_set( DEF_R_OBJECTIVE_LICH(), FALSE, FALSE, FALSE, TRUE );
  
  // setup end triggers
  thread(f_lich_win_trigger());
  /*
  thread( f_lich_end_trigger(Player0()) );
  thread( f_lich_end_trigger(Player1()) );
  thread( f_lich_end_trigger(Player2()) );
  thread( f_lich_end_trigger(Player3()) );
*/
	// move target liches
	sleep_until( volume_test_players(tv_lich_move) or dialog_id_played_check(L_dlg_spire_03_outro_01) or dialog_foreground_id_line_index_check_greater(L_dlg_spire_03_outro_01, S_dlg_spire_03_outro_01_blip), 1 ); 
	thread( f_lich_props_move(scn_lich_target_01, 0.0, 0.0, 180.0, 180.0, ps_lich.target_01, ps_lich.target_01, ps_lich.target_01, ps_lich.target_01, ps_lich.target_01, 0.75, 1.0, FALSE, FALSE) );
	thread( f_lich_props_move(scn_lich_target_02, 0.0, 0.0, 180.0, 180.0, ps_lich.target_02, ps_lich.target_02, ps_lich.target_02, ps_lich.target_02, ps_lich.target_02, 0.75, 1.0, FALSE, FALSE) );
	thread( f_lich_props_move(scn_lich_target_03, 0.0, 0.0, 180.0, 180.0, ps_lich.target_03, ps_lich.target_03, ps_lich.target_03, ps_lich.target_03, ps_lich.target_03, 0.75, 1.0, FALSE, FALSE) );

	//thread( f_lich_props_move(scn_lich_low_01, 0.0, 0.0, r_time_min, r_time_max, ps_lich.extra_01, ps_lich.extra_02, ps_lich.extra_03, ps_lich.extra_04, ps_lich.extra_05, real_random_range(0.75,1.00), 0.0, TRUE, FALSE) );
	//thread( f_lich_props_move(scn_lich_low_02, 0.0, 0.0, r_time_min, r_time_max, ps_lich.extra_01, ps_lich.extra_02, ps_lich.extra_03, ps_lich.extra_04, ps_lich.extra_05, real_random_range(0.75,1.00), 0.0, TRUE, FALSE) );
	//thread( f_lich_props_move(scn_lich_low_03, 0.0, 0.0, r_time_min, r_time_max, ps_lich.extra_01, ps_lich.extra_02, ps_lich.extra_03, ps_lich.extra_04, ps_lich.extra_05, real_random_range(0.75,1.00), 0.0, TRUE, FALSE) );
	//thread( f_lich_props_move(scn_lich_low_04, 0.0, 0.0, r_time_min, r_time_max, ps_lich.extra_01, ps_lich.extra_02, ps_lich.extra_03, ps_lich.extra_04, ps_lich.extra_05, real_random_range(0.75,1.00), 0.0, TRUE, FALSE) );
	//thread( f_lich_props_move(scn_lich_low_05, 0.0, 0.0, r_time_min, r_time_max, ps_lich.extra_01, ps_lich.extra_02, ps_lich.extra_03, ps_lich.extra_04, ps_lich.extra_05, real_random_range(0.75,1.00), 0.0, TRUE, FALSE) );

end

script static boolean f_lich_win_volume() 
	volume_test_players(tv_lich_jump) or volume_test_players(tv_lich_win_01) or volume_test_players(tv_lich_win_02) or volume_test_players(tv_lich_win_03);
end

script static void f_lich_win_trigger()
	sleep_until(volume_test_players(tv_lich_jump) or volume_test_players(tv_lich_win_01) or volume_test_players(tv_lich_win_02) or volume_test_players(tv_lich_win_03), 1);
	kill_script( f_dlg_spire_03_outro_01 );
	kill_script( f_lich_trigger );
	//thread( ins_cinematic_end() );
	//xxx might have to wait until cinematic ends
	f_mission_objective_missioncomplete();
end


script static void f_lich_end_trigger( object obj_player )
	sleep_until( object_get_health(obj_player) > 0.0 and (not volume_test_object(tv_lich_platform, obj_player)) and volume_test_object(tv_lich_jump, obj_player), 1 );
	
	dprint( "::: f_lich_end_trigger :::" );
	
	if ( not B_lich_chief_jumped ) then
		B_lich_chief_jumped = TRUE;
		kill_script( f_dlg_spire_03_outro_01 );
		kill_script( f_lich_trigger );
		//thread( ins_cinematic_end() );
		//xxx might have to wait until cinematic ends
		f_mission_objective_missioncomplete();
	end
	
end



// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// LICH: PROPS
// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// ----------------------------------------------------------------------------------------------------------------------------------------------------------

// FUNCTIONS ------------------------------------------------------------------------------------------------------------------------------------------------
// === f_lich_props_init::: Init


script dormant f_lich_props_init()
local real r_time_min = 30.0;
local real r_time_max = 90.0;
	dprint( "::: f_lich_props_init :::" );
/*
	// create start group
	object_create_folder( scn_lich_start );	
	
	thread( f_lich_props_move(scn_lich_extra_01, 00.5, 07.5, r_time_min, r_time_max, ps_lich.extra_01, ps_lich.extra_02, ps_lich.extra_03, ps_lich.extra_04, ps_lich.extra_05, 1.0, 0.0, TRUE, TRUE) );
	thread( f_lich_props_move(scn_lich_extra_02, 20.0, 30.0, r_time_min, r_time_max, ps_lich.extra_01, ps_lich.extra_02, ps_lich.extra_03, ps_lich.extra_04, ps_lich.extra_05, 1.0, 0.0, TRUE, TRUE) );
	thread( f_lich_props_move(scn_lich_extra_03, 10.0, 17.5, r_time_min, r_time_max, ps_lich.extra_01, ps_lich.extra_02, ps_lich.extra_03, ps_lich.extra_04, ps_lich.extra_05, 1.0, 0.0, TRUE, TRUE) );
	thread( f_lich_props_move(scn_lich_extra_04, 20.0, 30.0, r_time_min, r_time_max, ps_lich.extra_01, ps_lich.extra_02, ps_lich.extra_03, ps_lich.extra_04, ps_lich.extra_05, 1.0, 0.0, TRUE, TRUE) );
	thread( f_lich_props_move(scn_lich_extra_05, 10.0, 17.5, r_time_min, r_time_max, ps_lich.extra_01, ps_lich.extra_02, ps_lich.extra_03, ps_lich.extra_04, ps_lich.extra_05, 1.0, 0.0, TRUE, TRUE) );
	thread( f_lich_props_move(scn_lich_extra_06, 00.5, 07.5, r_time_min, r_time_max, ps_lich.extra_01, ps_lich.extra_02, ps_lich.extra_03, ps_lich.extra_04, ps_lich.extra_05, 1.0, 0.0, TRUE, TRUE) );
	thread( f_lich_props_move(scn_lich_extra_07, 20.0, 30.0, r_time_min, r_time_max, ps_lich.extra_01, ps_lich.extra_02, ps_lich.extra_03, ps_lich.extra_04, ps_lich.extra_05, 1.0, 0.0, TRUE, TRUE) );
	thread( f_lich_props_move(scn_lich_extra_08, 00.5, 07.5, r_time_min, r_time_max, ps_lich.extra_01, ps_lich.extra_02, ps_lich.extra_03, ps_lich.extra_04, ps_lich.extra_05, 1.0, 0.0, TRUE, TRUE) );
	//thread( f_lich_props_move(scn_lich_extra_09, 10.0, 17.5, r_time_min, r_time_max, ps_lich.extra_01, ps_lich.extra_02, ps_lich.extra_03, ps_lich.extra_04, ps_lich.extra_05, 1.0, 0.0, TRUE, TRUE) );
	*/
end

// === f_lich_props_deinit::: Deinit
script dormant f_lich_props_deinit()
	dprint( "::: f_lich_props_deinit :::" );

	object_destroy_folder( scn_lich_start );	
	object_destroy_folder( scn_lich_extras );	
	
	// kill functions
	kill_script( f_lich_props_init );
	kill_script( f_lich_props_move );
	
end

// === f_lich_props_move::: Moves a prop
script static void f_lich_props_move( object_name obj_prop, real r_delay_min, real r_delay_max, real r_time_min, real r_time_max, point_reference pr_point_01, point_reference pr_point_02, point_reference pr_point_03, point_reference pr_point_04, point_reference pr_point_05, real r_scale_min, real r_scale_max, boolean b_destroy, boolean b_recycle )
local real r_time = real_random_range( r_time_min, r_time_max );
local point_reference pr_point = pr_point_01;
	dprint( "::: f_guns_props_move :::" );

	// delay
	sleep_rand_s( r_delay_min, r_delay_max );

	// pick a point_reference
	begin_random_count( 1 )
		pr_point = pr_point_01;
		pr_point = pr_point_02;
		pr_point = pr_point_03;
		pr_point = pr_point_04;
		pr_point = pr_point_01;
	end

	// create
	if ( not object_valid(obj_prop) ) then
		object_create_anew( obj_prop );
	end
	object_set_always_active( obj_prop, TRUE );
	object_set_cinematic_visibility( obj_prop, TRUE );
	
	// down scale
	object_set_scale( obj_prop, r_scale_min, 0 );
	
	// up scale
	sleep( 1 );
	object_set_scale( obj_prop, r_scale_max, r_time * 30 );
	
	// move
	object_move_to_point( obj_prop, r_time, pr_point );
	
	// destroy
	if ( b_destroy or b_recycle ) then
		dprint( "::: f_guns_props_move: DESTROY :::" );
		object_destroy( obj_prop );
	end
	
	// destroy
	if ( b_recycle ) then
		dprint( "::: f_guns_props_move: RECYCLE :::" );
		thread( f_lich_props_move(obj_prop, 0.0, 0.5, r_time_min, r_time_max, pr_point_01, pr_point_02, pr_point_03, pr_point_04, pr_point_05, r_scale_min, r_scale_max, b_destroy, b_recycle) );
	end
	
end

// --- End m70_lich.hsc ---

// --- Begin m70_mission.hsc ---
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343
//
// Mission: 					m70
//
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343

// =================================================================================================
// =================================================================================================
// MISSION
// =================================================================================================
// =================================================================================================
// defines

// --- zone indexes
global short DEF_S_ZONESET_INFINITY 																				= 0;
global short DEF_S_ZONESET_INFINITY_EXT 																		= 1;
global short DEF_S_ZONESET_SPIRE_01_EXT 																		= 2;
global short DEF_S_ZONESET_SPIRE_01_INT_A 																	= 3;
global short DEF_S_ZONESET_SPIRE_01_INT_B 																	= 4;
global short DEF_S_ZONESET_SPIRE_02_EXT 																		= 5;
global short DEF_S_ZONESET_SPIRE_02_INT_A 																	= 6;
global short DEF_S_ZONESET_SPIRE_02_INT_B 																	= 7;
global short DEF_S_ZONESET_SPIRE_03_EXT 																		= 8;
global short DEF_S_ZONESET_SPIRE_03_INT_A 																	= 9;
global short DEF_S_ZONESET_SPIRE_03_INT_B 																	= 10;
global short DEF_S_ZONESET_SPIRE_03_INT_C 																	= 11;
global short DEF_S_ZONESET_SPIRE_03_INT_D 																	= 12;
global short DEF_S_ZONESET_SPIRE_03_EXIT 																		= 13;
global short DEF_S_ZONESET_CIN_M070_LIFTOFF																	= 14;
global short DEF_S_ZONESET_CIN_M072_END																			= 15;

// variables
global boolean b_mission_started 					= FALSE;

// --- Debug Options
global boolean b_debug 										= FALSE;
global boolean b_game_emulate							= FALSE;
//global boolean b_encounters 							= TRUE;
//global boolean b_editor 									= editor_mode();

// XXX NOT SURE WHERE THESE GO
global short s_elevator_go = 0;
global short s_mall_hit = 0;
global short s_stores_hit = 0;
global short s_gap_hit = 0;
global short s_arc_hit = 0;
global short s_relay_hit = 0;
global string_id s_id_first_sp01_first = "pm_obj_02";
global string_id s_id_second_sp02 = "pm_obj_03";



// -------------------------------------------------------------------------------------------------
// INIT
// -------------------------------------------------------------------------------------------------
// variables

// functions
script startup mission_startup()
	dprint( "::: M70 - LIFTOFF :::" );

	if ( b_game_emulate or (not editor_mode()) ) then
		fade_out( 0, 0, 0, 0 );
	end

	if ( b_game_emulate or (not editor_mode()) ) then
	
		// in editor mode make sure the players are there to start
		if ( editor_mode() ) then
			f_insertion_playerwait();
		end

		// run start function
		start();
		
		sleep_until( b_mission_started, 1);
		fade_in( 0, 0, 0, (0.50 * 30) );
	end
	
	// wait for the game to start
	sleep_until( b_mission_started, 1 );
	
	
	
	// display difficulty
	print_difficulty(); 
	
end

script static void f_spire_objectives_set_string()
	sleep_until(S_SPIRE_FIRST != 0, 1);
	
	if f_check_first_spire(DEF_SPIRE_01) then
		objectives_set_string(1, pm_obj_02);
		objectives_set_string(2, pm_obj_03);
	elseif f_check_first_spire(DEF_SPIRE_02) then
		objectives_set_string(1, pm_obj_03);
		objectives_set_string(2, pm_obj_02);
	end
end

//PELICAN
global vehicle g_vehicle_pelican = inf_pelican_gunship;
global object_name v_pelican_active = inf_pelican_gunship;
global player p_pelican_pilot = player0();
global boolean b_pelican_open = TRUE;

script continuous f_pelican_get_active()
	dprint("f_pelican_get_active");
		sleep_until(object_valid(inf_pelican_gunship) or object_valid(flight_pelican_sp01) or object_valid(flight_pelican_sp02), 1);
		//SET VARIABLES
		if object_valid(inf_pelican_gunship) then
			g_vehicle_pelican = inf_pelican_gunship;
			v_pelican_active = inf_pelican_gunship;
			
		elseif object_valid(flight_pelican_sp01) then
			g_vehicle_pelican = flight_pelican_sp01;
			v_pelican_active = flight_pelican_sp01;
			
		elseif object_valid(flight_pelican_sp02) then
			g_vehicle_pelican = flight_pelican_sp02;
			v_pelican_active = flight_pelican_sp02;
			
		end

		//if b_pelican_open then
		//	f_pelican_disable_extra_seats(g_vehicle_pelican);
		//else
		//	vehicle_set_player_interaction(g_vehicle_pelican, "" , FALSE, FALSE);
		//end
		sleep_until(not object_valid(v_pelican_active), 1);
end

script static void f_pelican_disable_extra_seats( vehicle vehicle_pelican, object_name obj_pelican)
	dprint("f_pelican_disable_extra_seats");
	sleep_until(object_valid(obj_pelican) ,1);
	b_pelican_open = TRUE;
	vehicle_set_player_interaction(vehicle_pelican, "" , TRUE, TRUE);
	if game_is_cooperative() then
		thread(f_pelican_disable_seats_coop(vehicle_pelican));
	else
		thread(f_pelican_disable_seats_single_player(vehicle_pelican));
	end
end

script static void f_pelican_disable_seats_coop(vehicle vehicle_pelican)
		dprint("f_pelican_disable_passenger_seats");
		vehicle_set_player_interaction(vehicle_pelican, "pelican_p_l01", FALSE, TRUE);
		vehicle_set_player_interaction(vehicle_pelican, "pelican_p_l02", FALSE, TRUE);
		vehicle_set_player_interaction(vehicle_pelican, "pelican_p_l03", FALSE, TRUE);
		vehicle_set_player_interaction(vehicle_pelican, "pelican_p_l04", FALSE, TRUE);
		vehicle_set_player_interaction(vehicle_pelican, "pelican_p_l05", FALSE, TRUE);
		vehicle_set_player_interaction(vehicle_pelican, "pelican_p_r01", FALSE, TRUE);
		vehicle_set_player_interaction(vehicle_pelican, "pelican_p_r02", FALSE, TRUE);
		vehicle_set_player_interaction(vehicle_pelican, "pelican_p_r03", FALSE, TRUE);
		vehicle_set_player_interaction(vehicle_pelican, "pelican_p_r03", FALSE, TRUE);
		vehicle_set_player_interaction(vehicle_pelican, "pelican_p_r04", FALSE, TRUE);
		vehicle_set_player_interaction(vehicle_pelican, "pelican_p_r05", FALSE, TRUE);
		vehicle_set_player_interaction(vehicle_pelican, "pelican_p_r", FALSE, TRUE);
		vehicle_set_player_interaction(vehicle_pelican, "pelican_lc", FALSE, TRUE);
		vehicle_set_player_interaction(vehicle_pelican, "pelican_e", FALSE, TRUE);
end		

script static void f_pelican_disable_seats_single_player(vehicle vehicle_pelican)
		dprint("f_pelican_disable_coop_seats");
		vehicle_set_player_interaction(vehicle_pelican, "", FALSE, TRUE);
		sleep(10);
		vehicle_set_player_interaction(vehicle_pelican, "pelican_d", TRUE, TRUE);
end


script static void f_flight_set_pilot(vehicle v_pelican)
dprint("f_flight_set_pilot");
	if vehicle_test_seat_unit(v_pelican, "pelican_d", player0()) then
		p_pelican_pilot = player0();
		dprint("pilot_set player 0");	
	elseif vehicle_test_seat_unit(v_pelican, "pelican_d", player1()) then
		p_pelican_pilot = player1();
		dprint("pilot_set player 1");	
	elseif vehicle_test_seat_unit(v_pelican, "pelican_d", player2()) then
		p_pelican_pilot = player2();
		dprint("pilot_set player 2");	
	elseif vehicle_test_seat_unit(v_pelican, "pelican_d", player3()) then
		p_pelican_pilot = player3();
		dprint("pilot_set player 3");	
	end
end
//vehicle_test_seat(inf_pelican_gunship, "pelican_d")

//===
//camera shakes
//camera_shake_player (player actor, real attack, real intensity, short duration, real deca
script static void shake()
	camera_shake_player	(player0, 0.4, 0.4, 0, 1, m70_camera_shake_medium);
end


script static void f_camera_shake_strong(player p_player)
	camera_shake_player	(p_player, 1, 1, 2, 2, m70_camera_shake_strong);
end

script static void f_camera_shake_weak(player p_player)
	camera_shake_player	(p_player, 1, 1, 1, 1, m70_camera_shake_weak);
end

script static void f_camera_shake_gondola(player p_player)
	camera_shake_player	(p_player, 0.1, 0.1, 0, 1, gondola_camera_shake);

end

script static void test_player()
	dprint("START INFINITE VOLUME TEST LOOP");
	repeat
	//tv_spire01_gondola
	//tv_gondola_player_effect
		if volume_test_object(tv_spire01_gondola, player0) then
			dprint("PLAYER IN VOLUME");
		else
			dprint("PLAYER OUT VOLUME");
		end
	until(1 == 0, 1);
end

script static void f_rumble_gondola(player p_player)
	local boolean b_rumble_valid	 = TRUE;
	local boolean b_rumble_active	 = FALSE;
	local boolean b_rumble_break 	 = FALSE;
	local short rumble_count 			 = 0;
	local short rumble_count_max 	 = 10;
	
	repeat			
		if volume_test_object(tv_gondola_path, p_player) and b_rumble_valid  then
			rumble_count = rumble_count + 1;
			inspect(	rumble_count );
			if rumble_count >= rumble_count_max then
				b_rumble_valid = FALSE;
			end
				
			if not b_rumble_active then
				dprint("RUMBLE ON");
				player_effect_set_max_rumble_for_player(p_player, 0.1, 0.1);
				b_rumble_active = TRUE;
			end
				
		elseif not volume_test_object(tv_gondola_path, p_player) or not b_rumble_valid then
			
			dprint("RUMBLE OFF");
			player_effect_set_max_rumble_for_player(p_player, 0, 0);
			b_rumble_active = FALSE;
			
			if rumble_count >= rumble_count_max then
				sleep_s(1.5);
				rumble_count = 0;
				b_rumble_valid = TRUE;
			end
			
		end
			sleep_s(1);
			
	until(not sp01_gondola_moving, 1);
	player_effect_set_max_rumble_for_player(p_player, 0, 0);
end


script static void f_camera_shake_emp_hit(player p_player ) 
	camera_shake_player	(p_player, 0.2, 0.2, 0, 1.5, emp_hit_camera_shake);
	player_effect_set_max_rumble_for_player(p_player, 0.8, 0.8);
	sleep_s(0.25);
	player_effect_set_max_rumble_for_player(p_player, 0, 0);
end

script static void f_camera_shake_emp_pop(player p_player ) 
	camera_shake_player	(p_player, 0.7, 0.7, 0, 1, emp_pop_camera_shake);
	player_effect_set_max_rumble_for_player(p_player, 1, 1);
	sleep_s(1);
	player_effect_set_max_rumble_for_player(p_player, 0, 0);
end

//continuous
//static void


script static boolean f_pelican_on_landing_pad(object_name obj_pelican)
	not volume_test_object( tv_flight_spire_01_pilot_valid, obj_pelican) and
	not volume_test_object(tv_flight_spire_02_pilot_valid , obj_pelican) and
	not volume_test_object( tv_flight_spire_03_pilot_valid, obj_pelican);
end


//f_test_pelican_teleport(flight_pelican_sp01, flight_pelican_sp01)
script static void f_test_pelican_teleport(object_name obj_pelican, vehicle v_pelican)
		dprint("f_test_pelican_teleport");
		if object_valid(obj_pelican) and not f_pelican_on_landing_pad(obj_pelican) then
		dprint("check pelican not in seat");
			if player_in_vehicle(v_pelican) and not vehicle_test_seat_unit_list(v_pelican, "pelican_d", players()) then
				fade_out(0, 0, 0, 1);
				object_cannot_take_damage(obj_pelican);
				object_cannot_take_damage(players()); 
				player_control_fade_out_all_input(1);
				vehicle_load_magic(v_pelican, "pelican_d", player_get_first_valid());
				sleep_s(1);
				player_control_fade_in_all_input(1.5);
				fade_in(0, 0, 0, 2);
				sleep_s(1);
				object_can_take_damage(obj_pelican);
				object_can_take_damage(players()); 
			end
		end
end

//xxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxx
global short s_player_count = 0;
global long s_drop_protection_thread = 0;

script static void f_pelican_drop_protection() 
	repeat
		s_player_count = game_coop_player_count();
	
		repeat
		sleep(5);
		until(s_player_count > game_coop_player_count(), 1);
	
	//	sleep_until( s_player_count > game_coop_player_count(), 1);
	
		if f_Flight_Zone_current_zoneset() then
			f_test_pelican_teleport(inf_pelican_gunship, inf_pelican_gunship);
			f_test_pelican_teleport(flight_pelican_sp01, flight_pelican_sp01);
			f_test_pelican_teleport(flight_pelican_sp02, flight_pelican_sp02);
		end
	
	until(not f_Flight_Zone_current_zoneset(), 1);
end



script static void f_flight_eject_players()

	if unit_in_vehicle(player0()) then
		unit_exit_vehicle(player0(), 0);
	end
	
	if unit_in_vehicle(player1()) then
		unit_exit_vehicle(player1(), 0);
	end
	
	if unit_in_vehicle(player2()) then
		unit_exit_vehicle(player2(), 0);
	end
	
	if unit_in_vehicle(player3()) then
		unit_exit_vehicle(player3(), 0);
	end
	
	if object_valid(inf_pelican_gunship) then
		vehicle_set_player_interaction(inf_pelican_gunship, "" , FALSE, FALSE);
	end
	
	if object_valid(flight_pelican_sp01) then
		vehicle_set_player_interaction(flight_pelican_sp01, "" , FALSE, FALSE);
	end
	
	if object_valid(flight_pelican_sp02) then
		vehicle_set_player_interaction(flight_pelican_sp02, "" , FALSE, FALSE);
	end
	
end
// --- End m70_mission.hsc ---

// --- Begin m70_narrative.hsc ---

//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343
//
// Mission: 					m70
//
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343

// =================================================================================================
// =================================================================================================
// lich
// =================================================================================================
// =================================================================================================
// variables

		global boolean b_objective_1_complete = FALSE;
		global boolean b_objective_2_complete = FALSE;
		global boolean b_objective_3_complete = FALSE;
		global boolean b_objective_3b_complete = FALSE;
		global boolean b_objective_4_complete = FALSE;
		global boolean b_objective_lich_complete = FALSE;
		global boolean b_gondola_waypoint_1 = FALSE;
		global boolean b_second_stop = FALSE;
		global object g_ics_player = NONE;
		global boolean g_activate_spires = FALSE;
		global short story_button_state_01 = 0;
		global short story_button_state_02 = 0;
		global short didact_ship_vo_state_01 = 0;
		global short defense_spire_vo_state_01 = 0;
		global boolean b_third_flight_near_didact = FALSE;
		global boolean b_first_flight_defense_spires = FALSE;

///////////////////////////////////////////////////////////////////////////////////
// MAIN
///////////////////////////////////////////////////////////////////////////////////
script startup M70_narrative_main()
	sleep_until( b_mission_started == TRUE, 1 );
	print ("::: M70 Narrative Start :::");
	wake(f_nar_infinity);
	wake(f_nar_spire_01);
	wake(f_nar_spire_02);
	wake(f_nar_flight_03);
	wake(f_nar_spire_03);
end

script dormant f_nar_infinity()
	sleep_until( current_zone_set_fully_active() == DEF_S_ZONESET_INFINITY, 1 );
	thread(story_button_01());
	thread(story_button_02());
	thread( f_m70_infinity_marine_01_trigger(sq_inf_marine_salute_01.paul) );
	thread( f_m70_infinity_marine_02_trigger(sq_inf_marines_stand_01.cory) );
	thread( f_m70_infinity_marine_03_trigger(sq_inf_marine_salute_02.jacob) );
end

script dormant f_nar_flight_03()
	sleep_until( F_Flight_Zone_Active() and s_flight_state >= S_DEF_FLIGHT_STATE_THIRD(), 1);
	dprint("f_nar_flight_03");
	//wake(f_nar_spire_03_exterior);
end

script dormant f_nar_spire_01()
	sleep_until(f_spire_state_active(DEF_SPIRE_01), 1);
	dprint("f_nar_spire_01");
	wake(f_nar_spire01_intro);
end

script dormant f_nar_spire_02()
	sleep_until(f_spire_state_active(DEF_SPIRE_02), 1);
	dprint("f_nar_spire_02");
	wake(f_nar_spire_02_intro);
end

script dormant f_nar_spire_03()
	sleep_until(f_spire_state_active(DEF_SPIRE_03), 1);
	dprint("f_nar_spire_03");
	wake(f_nar_spire_3_intro);
	wake(f_nar_m70_waypoint_terminal);
end

// =================================================================================================
// =================================================================================================
// Cinematic
// =================================================================================================
// =================================================================================================
// functions
script startup narrative_startup()
	dialog_line_temp_blurb_set( TRUE );
	dialog_line_temp_blurb_pad_set( 3.75 );
end

script static void f_cinematic_open()
local string_id sid_cin_name = "cin_M070_Liftoff";
local short s_zoneset_id = DEF_S_ZONESET_CIN_M070_LIFTOFF;
	dprint( "::: f_cinematic_open :::" );
	f_start_mission( sid_cin_name );

  cinematic_exit_no_fade( sid_cin_name, TRUE ); 
end

	
script static void f_cinematic_close()
local string_id sid_cin_name = "cin_M072_End";
local short s_zoneset_id = DEF_S_ZONESET_CIN_M072_END;
	dprint( "::: f_cinematic_close :::" );
	// called from lich sequence

  cinematic_enter( sid_cin_name, FALSE );

  cinematic_suppress_bsp_object_creation( TRUE );
	f_insertion_zoneload( s_zoneset_id, FALSE );
  cinematic_suppress_bsp_object_creation( FALSE );
	sleep (1);

	f_start_mission( sid_cin_name );

  cinematic_exit_no_fade( sid_cin_name, FALSE ); 

end


global real R_infinity_narrative_conversation_trigger_see_dist = 	7.5;
global real R_infinity_narrative_conversation_trigger_near_dist = 5.0;

script static boolean f_narrative_distance_trigger( object obj_character, real r_distance_see, real r_distance_near, real r_obj_sees_player_angle )

	// defaults
	if ( r_obj_sees_player_angle < 0.0 ) then
		r_obj_sees_player_angle = 25.0;
	end

	// condition
	( not ai_allegiance_broken(player, human) )
	and
	(
		( objects_distance_to_object(Players(),obj_character) <= r_distance_near )
		or
		(
			( objects_distance_to_object(Players(),obj_character) <= r_distance_near )
			and
			objects_can_see_object(Players(),obj_character,25.0)
		)
	)
	and
	(
		( r_obj_sees_player_angle <= 0.0 )
		or
		objects_can_see_player( obj_character, r_obj_sees_player_angle )
	);

end

// =================================================================================================
// =================================================================================================
// infinity_narrative
// =================================================================================================
// =================================================================================================
// variables

// functions
// === f_infinity_narrative_init::: Initialize
script dormant f_infinity_narrative_init()
	dprint( "::: f_infinity_narrative_init :::" );

	// initialize modules

	// initialize sub modules
	wake( f_infinity_narrative_npc_barks_init );
	wake( f_infinity_narrative_pelican_init );
	thread (infinity_dock_pa_controller());
	
end

// === f_infinity_narrative_deinit::: Deinitialize
script dormant f_infinity_narrative_deinit()
	dprint( "::: f_infinity_narrative_deinit :::" );

	// kill functions
	sleep_forever( f_infinity_narrative_init );
	sleep_forever(infinity_dock_pa_controller);
	kill_script(infinity_dock_pa_controller);
	// deinitialize modules

	// deinitialize sub modules
	wake( f_infinity_narrative_npc_barks_deinit );
	wake( f_infinity_narrative_pelican_deinit );


end


script static void story_button_01()
  sleep_until (object_valid(story_03_switch) and device_get_position(story_03_switch) != 0);
  object_destroy (story_03_switch);
 	story_button_state_01 = story_button_state_01 + 1;
  thread(f_dialog_m70_story_button_1(story_button_state_01));
end

script static void story_button_02()
   sleep_until (object_valid(story_04_switch) and device_get_position(story_04_switch) != 0);
   object_destroy (story_04_switch);
   story_button_state_02 = story_button_state_02 + 1;
   thread(f_dialog_m70_story_button_2(story_button_state_02));
end

script static void infinity_dock_pa_controller()
	sleep_until( volume_test_players(infinity_dock_pa_controller), 1);
	sleep_s(30);
	thread(f_dlg_infinity_dock_pa_01());
	sleep_s(60);
	thread(f_dlg_infinity_dock_pa_03());
	sleep_s(60);
	wake(f_dlg_infinity_comp_intercom);
	sleep_s(60);
	thread(f_dlg_infinity_dock_pa_04());
	sleep_s(60);
	thread(f_dlg_infinity_dock_pa_05());
	sleep_s(60);
	thread(f_dlg_infinity_dock_pa_06());
	sleep_s(60);
	thread(f_dlg_infinity_dock_pa_07());
	sleep_s(60);
	thread(f_dlg_infinity_dock_pa_08());

end


// =================================================================================================
// infinity_narrative: NPC barks
// =================================================================================================
// variables
global long L_infinity_narrative_npc_bark_01_thread = 0;
global long L_infinity_narrative_npc_bark_02_thread = 0;
global long L_infinity_narrative_npc_bark_03_thread = 0;
global long L_infinity_narrative_npc_bark_04_thread = 0;


// functions
// === f_infinity_narrative_npc_barks_init::: Initialize
script dormant f_infinity_narrative_npc_barks_init()
	dprint( "::: f_infinity_narrative_npc_barks_init :::" );

	// setup triggers
	L_infinity_narrative_npc_bark_01_thread = thread( f_dlg_infinity_npc_bark(infinity_npcbark_01, NONE, NONE) );	// XXX TODO - Replace NONE with Marine A & B from each group
	L_infinity_narrative_npc_bark_02_thread = thread( f_dlg_infinity_npc_bark(infinity_npcbark_02, NONE, NONE) );	// XXX TODO - Replace NONE with Marine A & B from each group
	L_infinity_narrative_npc_bark_03_thread = thread( f_dlg_infinity_npc_bark(infinity_npcbark_03, NONE, NONE) );	// XXX TODO - Replace NONE with Marine A & B from each group
	L_infinity_narrative_npc_bark_04_thread = thread( f_dlg_infinity_npc_bark(infinity_npcbark_04, NONE, NONE) );	// XXX TODO - Replace NONE with Marine A & B from each group

	// initialize modules

	// initialize sub modules

end

// === f_infinity_narrative_npc_barks_deinit::: Deinitialize
script dormant f_infinity_narrative_npc_barks_deinit()
	dprint( "::: f_infinity_narrative_npc_barks_deinit :::" );

	// kill functions
	sleep_forever( f_infinity_narrative_npc_barks_init );

	kill_thread( L_infinity_narrative_npc_bark_01_thread );
	kill_thread( L_infinity_narrative_npc_bark_02_thread );
	kill_thread( L_infinity_narrative_npc_bark_03_thread );
	kill_thread( L_infinity_narrative_npc_bark_04_thread );

	// deinitialize modules

	// deinitialize sub modules
	wake( f_infinity_narrative_npc_barks_deinit );

end



// =================================================================================================
// infinity_narrative: Pelican
// =================================================================================================
// variables

// functions
// === f_infinity_narrative_pelican_init::: Initialize
script dormant f_infinity_narrative_pelican_init()
	dprint( "::: f_infinity_narrative_pelican_init :::" );
	
	wake( f_infinity_narrative_pelican_trigger );
	
end

// === f_infinity_narrative_pelican_deinit::: Deinitialize
script dormant f_infinity_narrative_pelican_deinit()
	dprint( "::: f_infinity_narrative_pelican_deinit :::" );

	// kill functions
	sleep_forever( f_infinity_narrative_pelican_init );
	sleep_forever( f_infinity_narrative_pelican_trigger );
	sleep_forever( f_infinity_narrative_pelican_action );

	// deinitialize modules

	// deinitialize sub modules

end

// === f_infinity_narrative_pelican_trigger::: Triggers the action
script dormant f_infinity_narrative_pelican_trigger()
	sleep_until( volume_test_players(infinity_pelican_01), 1 );
	dprint( "::: f_infinity_narrative_pelican_trigger :::" );
	
	wake( f_infinity_narrative_pelican_action );
	
end


// === f_infinity_narrative_pelican_action::: Pelican action trigger
script dormant f_infinity_narrative_pelican_action()
	dprint( "::: f_infinity_narrative_pelican_action :::" );
	 thread(f_dlg_infinity_pelican_01());
	
end


script dormant f_infinity_narrative_pelican_02()
	
	dprint( "::: f_dlg_infinity_pelican_02 :::" );
	
	thread(f_dlg_infinity_pelican_02());

	
	
end

script static void f_m70_infinity_marine_01_trigger( ai ai_character )
static boolean b_triggered = FALSE;

	// wait for the character to be valid
	sleep_until( ai_living_count(ai_character) > 0, 1 );
 
	// wait for player to be w/i distance
	sleep_until( b_triggered or (ai_living_count(ai_character) <= 0) or f_narrative_distance_trigger(ai_get_object(ai_character), R_infinity_narrative_conversation_trigger_see_dist, R_infinity_narrative_conversation_trigger_near_dist, 0.0), 1 );

	// trigger the dialog
	if ( (not b_triggered) and (ai_living_count(ai_character) > 0) and (not ai_allegiance_broken(player, human)) ) then
		b_triggered = TRUE;
		wake( f_dialog_m70_infinity_marine_01 );
	end

end

script static void f_m70_infinity_marine_02_trigger( ai ai_character )
static boolean b_triggered = FALSE;

	// wait for the character to be valid
	sleep_until( ai_living_count(ai_character) > 0, 1 );
 
	// wait for player to be w/i distance
	sleep_until( b_triggered or (ai_living_count(ai_character) <= 0) or f_narrative_distance_trigger(ai_get_object(ai_character), R_infinity_narrative_conversation_trigger_see_dist, R_infinity_narrative_conversation_trigger_near_dist, 0.0), 1 );

	// trigger the dialog
	if ( (not b_triggered) and (ai_living_count(ai_character) > 0) and (not ai_allegiance_broken(player, human)) ) then
		b_triggered = TRUE;
		wake( f_dialog_m70_infinity_marine_02 );
	end

end

script static void f_m70_infinity_marine_03_trigger( ai ai_character )
static boolean b_triggered = FALSE;

	// wait for the character to be valid
	sleep_until( ai_living_count(ai_character) > 0, 1 );
 
	// wait for player to be w/i distance
	sleep_until( b_triggered or (ai_living_count(ai_character) <= 0) or f_narrative_distance_trigger(ai_get_object(ai_character), R_infinity_narrative_conversation_trigger_see_dist, R_infinity_narrative_conversation_trigger_near_dist, 0.0), 1 );

	// trigger the dialog
	if ( (not b_triggered) and (ai_living_count(ai_character) > 0) and (not ai_allegiance_broken(player, human)) ) then
		b_triggered = TRUE;
		wake( f_dialog_m70_infinity_marine_03 );
	end

end

script static void f_m70_infinity_marine_04_trigger( ai ai_character )
static boolean b_triggered = FALSE;

	// wait for the character to be valid
	sleep_until( ai_living_count(ai_character) > 0, 1 );
 
	// wait for player to be w/i distance
	sleep_until( b_triggered or (ai_living_count(ai_character) <= 0) or f_narrative_distance_trigger(ai_get_object(ai_character), R_infinity_narrative_conversation_trigger_see_dist, R_infinity_narrative_conversation_trigger_near_dist, 0.0), 1 );

	// trigger the dialog
	if ( (not b_triggered) and (ai_living_count(ai_character) > 0) and (not ai_allegiance_broken(player, human)) ) then
		b_triggered = TRUE;
		wake( f_dialog_m70_infinity_marine_04 );
	end

end

script static void f_m70_infinity_marine_05_trigger( ai ai_character )
static boolean b_triggered = FALSE;

	// wait for the character to be valid
	sleep_until( ai_living_count(ai_character) > 0, 1 );
 
	// wait for player to be w/i distance
	sleep_until( b_triggered or (ai_living_count(ai_character) <= 0) or f_narrative_distance_trigger(ai_get_object(ai_character), R_infinity_narrative_conversation_trigger_see_dist, R_infinity_narrative_conversation_trigger_near_dist, 0.0), 1 );

	// trigger the dialog
	if ( (not b_triggered) and (ai_living_count(ai_character) > 0) and (not ai_allegiance_broken(player, human)) ) then
		b_triggered = TRUE;
		wake( f_dialog_m70_infinity_marine_05 );
	end

end

script static void f_m70_infinity_marine_06_trigger( ai ai_character )
static boolean b_triggered = FALSE;

	// wait for the character to be valid
	sleep_until( ai_living_count(ai_character) > 0, 1 );
 
	// wait for player to be w/i distance
	sleep_until( b_triggered or (ai_living_count(ai_character) <= 0) or f_narrative_distance_trigger(ai_get_object(ai_character), R_infinity_narrative_conversation_trigger_see_dist, R_infinity_narrative_conversation_trigger_near_dist, 0.0), 1 );

	// trigger the dialog
	if ( (not b_triggered) and (ai_living_count(ai_character) > 0) and (not ai_allegiance_broken(player, human)) ) then
		b_triggered = TRUE;
		wake( f_dialog_m70_infinity_marine_06 );
	end

end


script static void f_m70_infinity_marine_07_trigger( ai ai_character )
static boolean b_triggered = FALSE;

	// wait for the character to be valid
	sleep_until( ai_living_count(ai_character) > 0, 1 );
 
	// wait for player to be w/i distance
	sleep_until( b_triggered or (ai_living_count(ai_character) <= 0) or f_narrative_distance_trigger(ai_get_object(ai_character), R_infinity_narrative_conversation_trigger_see_dist, R_infinity_narrative_conversation_trigger_near_dist, 0.0), 1 );

	// trigger the dialog
	if ( (not b_triggered) and (ai_living_count(ai_character) > 0) and (not ai_allegiance_broken(player, human)) ) then
		b_triggered = TRUE;
		wake( f_dialog_m70_infinity_marine_07 );
	end

end



// =================================================================================================
// =================================================================================================
// flight_narrative
// =================================================================================================
// =================================================================================================


script dormant f_flight_narrative_init()
	dprint( "::: f_flight_narrative_init :::" );
	// initialize sub modules

end

script dormant f_flight_narrative_deinit()
	dprint( "::: f_flight_narrative_deinit :::" );
	// kill functions
	sleep_forever( f_flight_narrative_init );

end

script dormant m70_first_flight()
		kill_script(infinity_dock_pa_controller);
		sleep_forever(infinity_dock_pa_controller);
end

script dormant f_nar_flight_first_didact_reveal()
	if  F_Flight_Zone_Active() then
		wake(f_dlg_flight_didact_reveal);
	end
end

script dormant f_nar_flight_first_spire_approach()
	sleep_until(volume_test_players(tv_flight_spire_01_landing_pad) or volume_test_players(tv_flight_spire_02_landing_pad) or not F_Flight_Zone_Active(), 1);
	//wake(f_dlg_flight_first_spire_approach);
	if  F_Flight_Zone_Active() then
		thread(f_dlg_flight_second_spire_approach());
	end
end

script dormant f_nar_flight_second_didact_ship()
	sleep_until( ( volume_test_players_lookat(tv_didact_warning, 90, 90) and not volume_test_players(tv_flight_spire_01_door) and not volume_test_players(tv_flight_spire_02_door) and vehicle_test_players() ) or not F_Flight_Zone_Active(), 1);
	if  F_Flight_Zone_Active() then
		wake(f_dlg_flight_second_didact_ship_01);
	end
end

script dormant f_nar_flight_second_spire_approach()
	if f_check_first_spire(DEF_SPIRE_01) then
		sleep_until(volume_test_players(tv_flight_spire_02_landing_pad) or not F_Flight_Zone_Active(), 1);
	elseif f_check_first_spire(DEF_SPIRE_02) then
		sleep_until(volume_test_players(tv_flight_spire_01_landing_pad) or not F_Flight_Zone_Active(), 1);
	end
	if F_Flight_Zone_Active() then
		thread(f_dlg_flight_second_spire_approach());
	end
end

script dormant f_nar_flight_third_spire()
	sleep_until(volume_test_players(tv_flight_spire_03_door), 1);
	wake(f_dlg_flight_third_spire_03_approach);
end


script dormant f_nar_spire_03_exterior()
	dprint( "::: f_nar_spire_03_exterior :::" );
  //sleep_until(volume_test_players(spire_03_exterior), 1 );
	wake(f_dlg_flight_third_spire_03);
	thread(f_music_m70_v07_didact_voice_8());

end

script static void f_nar_flight_03_didact_ship()
  sleep_until ( b_third_flight_near_didact == TRUE);
 	didact_ship_vo_state_01 = didact_ship_vo_state_01 + 1;
  thread(f_dlg_flight_c_didact_ship(didact_ship_vo_state_01));
end

script static void f_nar_flight_01_defense()
                sleep_until ( b_first_flight_defense_spires == TRUE);
                 defense_spire_vo_state_01 = defense_spire_vo_state_01 + 1;
                thread(f_dlg_flight_c_didact_ship(didact_ship_vo_state_01));
end


// =================================================================================================
// =================================================================================================
// spire_01_narrative
// =================================================================================================
// =================================================================================================
// variables
// functions


script dormant f_nar_spire01_intro()
	dprint( "::: f_nar_spire01_intro :::" );
  sleep_until(volume_test_players(tv_nar_sp01_intro), 1 );
	if f_check_first_spire(DEF_SPIRE_01) then
		wake(f_dlg_spire_01_enter_first);
	else
		sleep_s(2);
		wake(f_dlg_spire_01_enter_second);	
	end
	
	sleep_until(volume_test_players(tv_nar_sp01_gondola_start), 1 );
	sleep_s(1);
	if f_check_first_spire(DEF_SPIRE_01) then
		wake(f_dlg_spire_01_first_gondola_dock);
	else
		wake(f_dlg_spire_01_second_gondola_dock);
	end 
	
	
	dprint( "::: f_nar_spire_01_gondola_enter :::" );
	sleep_until(volume_test_players(tv_nar_sp01_gondola_enter), 1 );
	if f_check_first_spire(DEF_SPIRE_01) then
		wake(f_dlg_spire_01_first_gondola_nudge);
	else
		wake(f_dlg_spire_01_second_gondola_nudge);	
	end
	
	sleep_s(1);
	
	sleep_until(sp01_gondola_moving == TRUE, 1);
	wake(f_dlg_spire_02_gondola_shields);

end

global boolean tower_01_start_gondola_back_up = FALSE;

script dormant f_nar_spire_01_gondola_first_stop()
	sleep_until(volume_test_players(tv_nar_gondola_stop_01), 1);
	dprint( "::: f_spire_01_gondola_attack :::" );
	f_unblip_flag(flg_sp01_shield_lock);
	sleep_s(4);
	if f_check_first_spire(DEF_SPIRE_01) then
		wake(f_dlg_spire_01_first_gondola_stop_tower_1);
	else
		wake(f_dlg_spire_01_second_gondola_stop_tower_1);	
	end
	
	sleep_until(device_get_position(dc_spire01_tower_01) != 0, 1);
	
	if f_check_first_spire(DEF_SPIRE_01) then
		wake(f_dlg_spire1_gondola_button_release);
		//sleep_until(volume_test_players(tv_nar_gondola_fight_01), 1 );
	else
		wake(f_dlg_spire_01_second_gondola_tower_1_end); 
	end
	sleep_s(5);
	sleep_until(tower_01_start_gondola_back_up, 1);
	
	sleep_s(0.25);
	
	wake(f_dlg_spire1_gondola_start_back_up);
	
	sleep_until(ai_living_count(sg_gondola_01) > 0, 1);
	
	sleep_s(0.75);
	
	wake(f_dlg_spire_1_gondola_fight_start);
	
	
end


script dormant f_nar_spire_gondola_ride_02()
	dprint( "::: f_nar_spire_gondola_ride_02 :::" );
	sleep_until(volume_test_players(tv_tower_02_area), 1);
	if f_check_first_spire(DEF_SPIRE_01) == TRUE then
		wake(f_dlg_spire_01_gondola_covenant_attack_02);
	else
		wake(f_dlg_spire_01_second_gondola_stop_tower_1);	
		thread(f_music_m70_v07_didact_voice_3());
	end
	
	sleep_until( not sp01_gondola_moving, 1);
	
	if f_check_first_spire(DEF_SPIRE_01) then
		wake(f_dlg_spire_01_first_gondola_stop_02);
		sleep_s(0.5);
		f_blip_flag( flg_sp01_tw02_switch,"activate");	
	else
		wake(f_dlg_spire_01_second_gondola_stop_tower_2);	
		sleep_s(0.5);
		f_blip_flag( flg_sp01_tw02_switch,"activate");	
	end
	
	sleep_until(device_get_position(dc_spire01_tower_02) != 0, 1);
	
	sleep_s(1.75);
	//xxx scan test
	//if f_check_first_spire(DEF_SPIRE_01) then
		//effect_new (environments\solo\m70_liftoff\fx\scan\dscan_spire1_1.effect, fx_didact_scan_spire1);
		//sleep_s(0.75);
		//wake(f_dlg_spire_01_gondola_didact_scan);
	//end
	
end

script static void f_nar_spire_gondola_pre_carrier_wave_generator()
	dprint("f_nar_spire_gondola_pre_carrier_wave_generator");
	sleep_until(volume_test_players_lookat(tv_spire01_final_shieldbreak, 40, 40) or volume_test_players(tv_spire01_final_shieldbreak), 1);
		f_blip_flag(flg_sp01_shield_lock, "recon");
		if not volume_test_players(tv_spire01_final_shieldbreak) then
			if f_check_first_spire(DEF_SPIRE_01) == TRUE then
				wake(f_dlg_spire_01_gondola_carrier_wave_generator);
			else
				wake(f_dlg_spire_02_gondola_trigger_the_emp);
			end
		end
	sleep_until(volume_test_players(tv_spire01_final_shieldbreak), 1);
	
	if not b_sp01_deactivated then
		thread(f_dlg_spire_01_gondola_carrier_wave_generator_02());
	end
end

script dormant f_nar_spire_gondola_carrier_wave_generator()
	dprint( "::: f_nar_spire_gondola_carrier_wave_generator :::" );
	if not b_sp01_deactivated then
		f_nar_spire_gondola_pre_carrier_wave_generator();
	end
	
	sleep_until(b_sp01_deactivated, 1);
	
	thread(f_m70_objective_complete(ct_obj_spire_01));
	
	if f_check_first_spire(DEF_SPIRE_01) == TRUE then
		wake(f_dlg_spire_01_gondola_carrier_wave_generator_02a);
		thread(f_music_m70_v07_didact_voice_1());
		sleep_s(0.5);
		b_sp01_bishop_attack = TRUE;
		sleep_until(b_final_gondola_ride, 1);
		sleep_s(5);
		wake(f_dlg_spire_01_gondola_carrier_wave_generator_02b);
		
		sleep_until(volume_test_players(tv_nar_sp01_exit), 1 );	
		
		wake(f_dlg_spire_01_gondola_exit);
		
		thread(f_m70_objective_set(ct_obj_pelican_return));
		
	else
		sleep_s(0.5);
		b_sp01_bishop_attack = TRUE;
		sleep_until(ai_is_shooting(sg_sp01_exit_bishops) or ai_combat_status(sg_sp01_exit_bishops) >= 9 or b_final_gondola_ride, 1);
		
		if not b_final_gondola_ride and ai_living_count(sg_sp01_exit_bishops) > 0 then
			thread(f_dialog_m70_callout_look_out());
		end
		
		sleep_until(b_final_gondola_ride, 1);
		sleep_s(5);
		wake(f_dlg_spire_01_second_gondola_final_ride);	
		thread(f_music_m70_v07_didact_voice_4());
		
		sleep_until(volume_test_players(tv_nar_sp01_exit), 1 );	
		
		thread(f_m70_objective_set(ct_obj_pelican_return));
	end
	sleep_s(1);

end

// =================================================================================================
// =================================================================================================
// spire_02_narrative
// =================================================================================================
// =================================================================================================

script dormant f_nar_spire_02_intro()
	dprint( "::: f_nar_spire_02_intro :::" );
	sleep_until(volume_test_players(tv_sp02_nar_intro), 1 );
	if f_check_first_spire(DEF_SPIRE_02) then
		wake(f_dlg_spire_02_first_intro);	
	else
		wake(f_dlg_spire_02_second_intro);
	end
		
	sleep_until(volume_test_players(tv_sp02_nar_cores_enter), 1 );
	if f_check_first_spire(DEF_SPIRE_02) then
		wake(f_dlg_spire_02_first_cores_enter);	
	else
		wake(f_dlg_spire_02_second_cores_enter);		
	end
	
	sleep_until(object_valid(dc_sp02_core_control) and device_get_position(dc_sp02_core_control)> 0.0, 1);
	if f_check_first_spire(DEF_SPIRE_02) == TRUE then
		wake(f_dlg_spire_02_first_cores_start);	
	else
		wake(f_dlg_spire_02_second_cores_start);		
	end
  
  sleep_until(S_SP02_CORES_DESTROYED >= 1, 1);
  
  if f_check_first_spire(DEF_SPIRE_02) then
  	dprint("old_phantom_blip");
  	//wake(f_sp02_phantom_blip);
		//wake(f_dlg_spire_02_first_cores_phantom_blip);	
	else
		wake(f_dlg_spire_02_second_cores_destroyed_1);
		thread(f_music_m70_v07_didact_voice_5());
	end
	
	sleep_s(1);
	
  wake(f_nar_spire_02_nudge_second_core);
   
  sleep_until(S_SP02_CORES_DESTROYED >= 2, 1);
 	if f_check_first_spire(DEF_SPIRE_02) then
		wake(f_dlg_spire_02_first_didact_scan);	
	end
   	
	sleep_until(S_SP02_CORES_DESTROYED >= 3, 1);
  if f_check_first_spire(DEF_SPIRE_02) == TRUE then
		wake(f_dlg_spire_02_first_cores_destroyed_3);	
		thread(f_music_m70_v07_didact_voice_2());
	else
		wake(f_dlg_spire_02_second_cores_destroyed_3);
		thread(f_music_m70_v07_didact_voice_6());
	end
	
	sleep_until(volume_test_players(tv_sp02_nar_intro), 1 );
	if f_check_first_spire(DEF_SPIRE_02) == TRUE then
		wake(f_dlg_spire_02_first_end);	
	end
	
end

script dormant f_nar_spire_02_nudge_second_core()
	dprint( "::: f_nar_spire_02_nudge_second_core :::" );
	if f_check_first_spire(DEF_SPIRE_02) then
		sleep_s(5);
		sleep_until((volume_test_players(tv_spire02_core_01) or volume_test_players(tv_spire02_core_02) or volume_test_players(tv_spire02_core_03)), 1 );
		if S_SP02_CORES_DESTROYED < 2 then
			wake(f_dlg_spire_02_first_nudge_second_core);	
		end
	end
end



// =================================================================================================
// =================================================================================================
// spire_03
// =================================================================================================
// =================================================================================================
// variables

script dormant f_nar_spire_3_intro()
	sleep_until(volume_test_players(tv_nar_spire_03_intro), 1 );
	
  //thread(f_m70_chapter_title(ch_spire_03));
  thread(f_chapter_title(ch_spire_03));
	sleep_until(volume_test_players(tv_nar_sp03_bottom_lift), 1 );
	
	thread(f_m70_objective_set(ct_obj_spire_03));
	sleep_s(3);
	
	wake(f_dlg_spire_03_didact_taunt_01);
	thread(f_music_m70_v07_didact_voice_7());
	
	sleep_until(volume_test_players(tv_sp03_bridge_fall_02) or volume_test_players(tv_sp03_bridge_fall_03), 1 );
	
	wake(f_dlg_spire_03_bottom_start);
	
	sleep_until(volume_test_players(tv_nar_sp03_get_to_the_top), 1 );
//xxx scan test
	//effect_new (environments\solo\m70_liftoff\fx\scan\dscan_spire3_1.effect, fx_didact_scan_spire3);
	sleep_s(1);
	wake(f_dlg_spire_03_didact_top_of_tower);
	
	sleep_until( volume_test_players(tv_nar_sp03_control_room), 1 );
	
	wake( f_dlg_spire_03_control_room_start );
end


//:: ICS SCRIPTS

script static void f_activator_get( object obj_control, unit activator )
	g_ics_player = activator;
	
	if ( obj_control == dc_terminal_domain ) then
		f_narrative_domain_terminal_interact( 4, cr_70_domain, dc_terminal_domain, activator, 'pup_domain_terminal' );
	end
	
end

script static void f_activator_cannot_take_damage()
	object_cannot_take_damage (g_ics_player);	
end

script static void f_activator_can_take_damage()
	object_can_take_damage (g_ics_player);	
end


//=============================
//Narrative Terminal
//=============================
//xxx once tom checks in

script dormant f_nar_m70_waypoint_terminal()
    f_narrative_domain_terminal_setup( 4, cr_70_domain, dc_terminal_domain );
end


/*
//xxxx using global function now
script dormant f_nar_m70_waypoint_terminal()
	
	sleep_until (object_valid (dc_terminal_domain), 1);
	device_set_power(dc_terminal_domain, 1.0);
	sleep_until(device_get_position(dc_terminal_domain) > 0.0, 1);
	device_set_power (dc_terminal_domain, 0.0);
	
	local long show_domain_terminal = pup_play_show("pup_m70_domain");
	
	sleep_until(not pup_is_playing(show_domain_terminal), 1);
	
	if (IsNarrativeFlagSetOnAnyPlayer(0) == FALSE) and (IsNarrativeFlagSetOnAnyPlayer(1) == FALSE) and (IsNarrativeFlagSetOnAnyPlayer(2) == FALSE) and (IsNarrativeFlagSetOnAnyPlayer(3) == FALSE) and (IsNarrativeFlagSetOnAnyPlayer(4) == FALSE) and (IsNarrativeFlagSetOnAnyPlayer(5) == FALSE) and (IsNarrativeFlagSetOnAnyPlayer(6) == FALSE)then
		wake(f_dialog_global_my_first_domain); 
	end
	
	SetNarrativeFlagWithFanfareMessageForAllPlayers( 4, TRUE );
	
end

*/
	
//=============================
//Chapter Title
//=============================
script static void f_m70_chapter_title(cutscene_title chapter_title)
	hud_play_global_animtion (screen_fade_out);
	cinematic_show_letterbox (TRUE);
	sleep_s (1.5);
	cinematic_set_title (chapter_title);
	hud_stop_global_animtion (screen_fade_out);
	sleep_s (3.5);     
	hud_play_global_animtion (screen_fade_in);
	hud_stop_global_animtion (screen_fade_in);
	cinematic_show_letterbox (FALSE);
end



//f_chapter_title();





// =================================================================================================
// =================================================================================================
// fx
// =================================================================================================
// =================================================================================================


script static void f_fx_interior_scan( cutscene_flag the_location )

	effect_new( environments\solo\m10_crash\fx\scan\didact_scan.effect, the_location );

end

script dormant m70_exit_through_maw()
	wake(f_dlg_flight_exit_through_maw);
end


// =================================================================================================
// =================================================================================================
// NUDGES
// =================================================================================================
// =================================================================================================


//xxx
script static void m70_objective_1_nudge()
			dprint("Nudge fired");
			sleep_s(120);
			if b_objective_1_complete == FALSE then
						thread(f_dialog_m70_nudge_1());
			end
				if b_objective_1_complete == FALSE then
					thread( m70_objective_1_nudge());
			end
end
//xxx fix it
script static void m70_objective_2_nudge()
			dprint("Nudge fired");
			sleep_s(120);
			if b_objective_2_complete == FALSE then
						thread(f_dialog_m70_nudge_2());
			end
				if b_objective_2_complete == FALSE then
					thread( m70_objective_2_nudge());
			end
end

script static void m70_objective_3_nudge()
			dprint("Nudge fired");
			sleep_s(300);
			if b_objective_3_complete == FALSE then
						thread(f_dialog_m70_nudge_3());
			end
				if b_objective_3_complete == FALSE then
					thread( m70_objective_3_nudge());
			end
end


script static void m70_objective_4_nudge()
			dprint("Nudge fired");
			sleep_s(300);
			if b_objective_4_complete == FALSE then
						thread(f_dialog_m70_nudge_4());
			end
				if b_objective_4_complete == FALSE then
					thread( m70_objective_4_nudge());
			end
end


script static void m70_objective_lich_nudge()
			dprint("Nudge fired");
			sleep_s(60);
			if b_objective_lich_complete == FALSE then
						thread(f_dialog_m70_lich_nudge());
			end
				if b_objective_lich_complete == FALSE then
					thread( m70_objective_4_nudge());
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






// -------------------------------------------------------------------------------------------------
// spire_03_INT_narrative: Dialog Triggers
// -------------------------------------------------------------------------------------------------
// === f_spire_03_INT_narrative_dlg_triggers_init::: Init

// === f_spire_03_INT_narrative_dlg_trigger_chief_01::: Dialog Trigger
//script dormant f_spire_03_INT_narrative_dlg_trigger_chief_01()
	//sleep_until( volume_test_players(tv_spire_3_chief_01), 1 );
	//wake( f_dlg_spire_03_chief_01 );
//end

// --- End m70_narrative.hsc ---

// --- Begin m70_objectives.hsc ---
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343
//
// Mission: 					m70
//
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343
/*
obj_<OBJECTIVE 1>				= "<OBJECTIVE TEXT>"
obj_<OBJECTIVE 2>				= "<OBJECTIVE TEXT>"
*/									

// =================================================================================================
// =================================================================================================
// OBJECTIVES
// =================================================================================================
// =================================================================================================

// Defines
global real DEF_R_OBJECTIVE_INFINITY_PELICAN											 = 0.1;

//FLIGHT
 script static real DEF_R_OBJECTIVE_FLIGHT_REVEAL()								 0.2; end
 script static real DEF_R_OBJECTIVE_FLIGHT_SPIRE_CHOOSE()					 0.3; end
 script static real DEF_R_OBJECTIVE_FLIGHT_SPIRE_01()							 0.4; end
 script static real DEF_R_OBJECTIVE_FLIGHT_SPIRE_02()							 0.5; end
 script static real DEF_R_OBJECTIVE_FLIGHT_SPIRE_03()							 0.6; end
 script static real DEF_R_OBJECTIVE_FLIGHT_SPIRE_DOOR()						 0.7; end
//SPIRE 03
 script static real DEF_R_OBJECTIVE_SPIRE_01_ENTER()							 1.0; end
 script static real DEF_R_OBJECTIVE_SPIRE_01_START()							 1.1; end
 script static real DEF_R_OBJECTIVE_SPIRE_01_RIDE_TW01()					 1.2; end
 script static real DEF_R_OBJECTIVE_SPIRE_01_SWITCH_TW01()				 1.3; end
 script static real DEF_R_OBJECTIVE_SPIRE_01_RIDE_TW02()					 1.4; end
 script static real DEF_R_OBJECTIVE_SPIRE_01_SWITCH_TW02()				 1.5; end
 script static real DEF_R_OBJECTIVE_SPIRE_01_SWITCH_MAIN()				 1.6; end
 script static real DEF_R_OBJECTIVE_SPIRE_01_RIDE_LAST()					 1.7; end
 script static real DEF_R_OBJECTIVE_SPIRE_01_EXIT()								 1.8; end
//SPIRE 02
 script static real DEF_R_OBJECTIVE_SPIRE_02_ENTER()							 2.0; end
 script static real DEF_R_OBJECTIVE_SPIRE_02_START()							 2.1; end
 script static real DEF_R_OBJECTIVE_SPIRE_02_SWITCH_CORES()				 2.2; end
 script static real DEF_R_OBJECTIVE_SPIRE_02_CORE_COUNT_03()			 2.3; end
 script static real DEF_R_OBJECTIVE_SPIRE_02_CORE_COUNT_02()			 2.4; end
 script static real DEF_R_OBJECTIVE_SPIRE_02_CORE_COUNT_01()			 2.5; end
 script static real DEF_R_OBJECTIVE_SPIRE_02_CORE_DESTROYED()			 2.6; end
 script static real DEF_R_OBJECTIVE_SPIRE_02_END()								 2.7; end
 script static real DEF_R_OBJECTIVE_SPIRE_02_EXIT()								 2.8; end
//SPIRE 03
 script static real DEF_R_OBJECTIVE_SPIRE_03_ENTER()							 3.0; end
 script static real DEF_R_OBJECTIVE_SPIRE_03_START()							 3.1; end
 script static real DEF_R_OBJECTIVE_SPIRE_03_BOTTOM_FLOOR()				 3.2; end
 script static real DEF_R_OBJECTIVE_SPIRE_03_TOP_FLOOR()				 		3.3; end
 script static real DEF_R_OBJECTIVE_SPIRE_03_CONTROL_ROOM_ENTER()	 	3.4; end
 script static real DEF_R_OBJECTIVE_SPIRE_03_CONTROL_ROOM_SWITCH()			3.9; end

script static real DEF_R_OBJECTIVE_LICH()														4.0; end



/*
ct_obj_start				 	= "OBJECTIVE: BOARD THE PELICAN"
ct_obj_main 					= "OBJECTIVE: STOP THE DIDACT"
ct_obj_spire_start		= "OBJECTIVE: DISABLE THE TOWERS"
ct_obj_spire_01				= "OBJECTIVE: NEURTALIZE THE CARRIER WAVE GENERATOR"
ct_obj_spire_02				= "OBJECTIVE: DESTROY THE ATTENUATORS"
ct_obj_spire_final 		= "OBJECTIVE: ENTER THE PRODUCTION TOWER"
ct_obj_spire_03 			= "OBJECTIVE: REACH THE SPIRE CONTROLS"
ct_obj_pelican_return = "OBJECTIVE: RETURN TO THE PELICAN"
*/
//f_m70_objective_complete(ct_obj_main )
//f_m70_objective_set(ct_obj_main);
//f_m70_objective_set(ct_obj_reveal);

//f_m70_objective_complete(ct_obj_reveal )
//f_m70_objective_set(ct_obj_spire_start);
//f_m70_objective_complete(ct_obj_spire_start )
//f_m70_objective_set(ct_obj_spire_start);
//f_m70_objective_complete(ct_obj_spire_01 )
//f_m70_objective_set(ct_obj_spire_01);
//f_m70_objective_complete(ct_obj_main )
//f_m70_objective_set(ct_obj_main);
//f_m70_objective_complete(ct_obj_main )
//f_m70_objective_set(ct_obj_main);

script static void f_m70_objective_set(string_id str_obj)
	dprint ("objective update");
	cui_hud_set_new_objective (str_obj);
end

script static void f_m70_objective_complete(string_id str_obj )
	dprint ("objective complete");
	cui_hud_set_objective_complete(str_obj);
	
end
/*
//global short DEF_R_OBJECTIVE_<OBJECTIVE_2>									= 1;
global real DEF_R_OBJECTIVE_LICH_01														= 4.0;
global real DEF_R_OBJECTIVE_LICH_02														= 4.1;
global real DEF_R_OBJECTIVE_LICH_03														= 4.2;
global real DEF_R_OBJECTIVE_LICH_04														= 4.3;
global real DEF_R_OBJECTIVE_LICH_05														= 4.4;
*/



// variables
	/*
	// DEF_R_OBJECTIVE_<OBJECTIVE_2>
	if ( r_index == DEF_R_OBJECTIVE_<OBJECTIVE_2> ) then
		if ( b_blip ) then
			// XXX_TODO: BLIPPING CODE
			b_blipped = TRUE;
		end
		if ( not b_blip ) then
			// XXX_TODO: UNBLIPPING CODE
			b_blipped = TRUE;
		end
	end	
	*/
	
// functions
// === f_mission_objective_blip: Blips an objective index
script static boolean f_mission_objective_blip( real r_index, boolean b_blip )
static boolean b_blipped = FALSE;
	// set the default return value
	b_blipped = FALSE;

	//dprint( "::: f_mission_objective_blip :::" );
	inspect( r_index );
	
	// DEF_R_OBJECTIVE_INFINITY_PELICAN
	if ( r_index == DEF_R_OBJECTIVE_INFINITY_PELICAN ) then
		if ( b_blip ) then
			f_blip_object( inf_pelican_gunship, "default" );
			b_blipped = TRUE;
		end
		if ( not b_blip ) then
			f_unblip_object( inf_pelican_gunship );
			b_blipped = TRUE;
		end
	end	

	// DEF_R_OBJECTIVE_FLIGHT_REVEAL
	if ( r_index == DEF_R_OBJECTIVE_FLIGHT_REVEAL() ) then
		if ( b_blip ) then
			//f_blip_flag( flg_didact_core_ship, "default" );
			b_blipped = TRUE;
		end
		if ( not b_blip ) then
			//f_unblip_flag( flg_didact_core_ship );
			b_blipped = TRUE;
		end
	end	

		// DEF_R_OBJECTIVE_FLIGHT_SPIRE_CHOOSE
	if ( r_index == DEF_R_OBJECTIVE_FLIGHT_SPIRE_CHOOSE() ) then
		if ( b_blip ) then
//			f_blip_object( spire_exterior_door_01, "default" );
//			f_blip_object( spire_exterior_door_02, "default" );
			b_blipped = TRUE;
		end
		if ( not b_blip ) then
//			f_unblip_object( spire_exterior_door_01 );
	//		f_unblip_object( spire_exterior_door_02 );
			// XXX_TODO: UNBLIPPING CODE
			b_blipped = TRUE;
		end
	end	
	
	// DEF_R_OBJECTIVE_FLIGHT_SPIRE_01
	if ( r_index == DEF_R_OBJECTIVE_FLIGHT_SPIRE_01() ) then
		if ( b_blip ) then
		//f_blip_object( spire_exterior_door_01, "default" );
			b_blipped = TRUE;
		end
		if ( not b_blip ) then
		//f_unblip_object( spire_exterior_door_01 );
			b_blipped = TRUE;
		end
	end	
	
	// DEF_R_OBJECTIVE_FLIGHT_SPIRE_02
	if ( r_index == DEF_R_OBJECTIVE_FLIGHT_SPIRE_02() ) then
		if ( b_blip ) then
		//f_blip_object( spire_exterior_door_02, "default" );
			b_blipped = TRUE;
		end
		if ( not b_blip ) then
		//f_unblip_object( spire_exterior_door_02 );
			b_blipped = TRUE;
		end
	end	
	
	// DEF_R_OBJECTIVE_FLIGHT_SPIRE_03
	if ( r_index == DEF_R_OBJECTIVE_FLIGHT_SPIRE_03() ) then
		if ( b_blip ) then
			//f_blip_object( spire_exterior_door_03, "default" );
			b_blipped = TRUE;
		end
		if ( not b_blip ) then
			//f_unblip_object( spire_exterior_door_01 );
			b_blipped = TRUE;
		end
	end	

	// DEF_R_OBJECTIVE_FLIGHT_SPIRE_DOOR
	if ( r_index == DEF_R_OBJECTIVE_FLIGHT_SPIRE_DOOR() ) then
		if ( b_blip ) then
			b_blipped = TRUE;
		end
		if ( not b_blip ) then
			b_blipped = TRUE;
		end
	end	
	
	// DEF_R_OBJECTIVE_SPIRE_01_ENTER
	if ( r_index == DEF_R_OBJECTIVE_SPIRE_01_ENTER() ) then
		if ( b_blip ) then
			// XXX_TODO: BLIPPING CODE
			b_blipped = TRUE;
		end
		if ( not b_blip ) then
			// XXX_TODO: UNBLIPPING CODE
			b_blipped = TRUE;
		end
	end	
	
	// DEF_R_OBJECTIVE_SPIRE_01_START
	if ( r_index == DEF_R_OBJECTIVE_SPIRE_01_START() ) then
		if ( b_blip ) then
			// XXX_TODO: BLIPPING CODE
			b_blipped = TRUE;
		end
		if ( not b_blip ) then
			// XXX_TODO: UNBLIPPING CODE
			b_blipped = TRUE;
		end
	end	
	
	// DEF_R_OBJECTIVE_SPIRE_01_RIDE_TW01
	if ( r_index == DEF_R_OBJECTIVE_SPIRE_01_RIDE_TW01() ) then
		if ( b_blip ) then
			// XXX_TODO: BLIPPING CODE
			b_blipped = TRUE;
		end
		if ( not b_blip ) then
			// XXX_TODO: UNBLIPPING CODE
			b_blipped = TRUE;
		end
	end	
	
	// DEF_R_OBJECTIVE_SPIRE_01_SWITCH_TW01
	if ( r_index == DEF_R_OBJECTIVE_SPIRE_01_SWITCH_TW01() ) then
		if ( b_blip ) then
			// XXX_TODO: BLIPPING CODE
			b_blipped = TRUE;
		end
		if ( not b_blip ) then
			// XXX_TODO: UNBLIPPING CODE
			b_blipped = TRUE;
		end
	end	
	
	// DEF_R_OBJECTIVE_SPIRE_01_RIDE_TW02
	if ( r_index == DEF_R_OBJECTIVE_SPIRE_01_RIDE_TW02() ) then
		if ( b_blip ) then
			// XXX_TODO: BLIPPING CODE
			b_blipped = TRUE;
		end
		if ( not b_blip ) then
			// XXX_TODO: UNBLIPPING CODE
			b_blipped = TRUE;
		end
	end	
	
	// DEF_R_OBJECTIVE_SPIRE_01_SWITCH_TW02
	if ( r_index == DEF_R_OBJECTIVE_SPIRE_01_SWITCH_TW02() ) then
		if ( b_blip ) then
			// XXX_TODO: BLIPPING CODE
			b_blipped = TRUE;
		end
		if ( not b_blip ) then
			// XXX_TODO: UNBLIPPING CODE
			b_blipped = TRUE;
		end
	end	
	
	// DEF_R_OBJECTIVE_SPIRE_01_SWITCH_TW02
	if ( r_index == DEF_R_OBJECTIVE_SPIRE_01_SWITCH_TW02() ) then
		if ( b_blip ) then
			// XXX_TODO: BLIPPING CODE
			b_blipped = TRUE;
		end
		if ( not b_blip ) then
			// XXX_TODO: UNBLIPPING CODE
			b_blipped = TRUE;
		end
	end	
	
	// DEF_R_OBJECTIVE_SPIRE_01_SWITCH_MAIN
	if ( r_index == DEF_R_OBJECTIVE_SPIRE_01_SWITCH_MAIN() ) then
		if ( b_blip ) then
			// XXX_TODO: BLIPPING CODE
			b_blipped = TRUE;
		end
		if ( not b_blip ) then
			// XXX_TODO: UNBLIPPING CODE
			b_blipped = TRUE;
		end
	end	
	
	// DEF_R_OBJECTIVE_SPIRE_01_SWITCH_MAIN
	if ( r_index == DEF_R_OBJECTIVE_SPIRE_01_SWITCH_MAIN() ) then
		if ( b_blip ) then
			// XXX_TODO: BLIPPING CODE
			b_blipped = TRUE;
		end
		if ( not b_blip ) then
			// XXX_TODO: UNBLIPPING CODE
			b_blipped = TRUE;
		end
	end
	
	// DEF_R_OBJECTIVE_SPIRE_01_RIDE_LAST
	if ( r_index == DEF_R_OBJECTIVE_SPIRE_01_RIDE_LAST() ) then
		if ( b_blip ) then
			// XXX_TODO: BLIPPING CODE
			b_blipped = TRUE;
		end
		if ( not b_blip ) then
			// XXX_TODO: UNBLIPPING CODE
			b_blipped = TRUE;
		end
	end
	
	// DEF_R_OBJECTIVE_SPIRE_01_EXIT
	if ( r_index == DEF_R_OBJECTIVE_SPIRE_01_EXIT() ) then
		if ( b_blip ) then
			// XXX_TODO: BLIPPING CODE
			b_blipped = TRUE;
		end
		if ( not b_blip ) then
			// XXX_TODO: UNBLIPPING CODE
			b_blipped = TRUE;
		end
	end
	
	// DEF_R_OBJECTIVE_SPIRE_02_ENTER
	if ( r_index == DEF_R_OBJECTIVE_SPIRE_02_ENTER() ) then
		if ( b_blip ) then
			// XXX_TODO: BLIPPING CODE
			b_blipped = TRUE;
		end
		if ( not b_blip ) then
			// XXX_TODO: UNBLIPPING CODE
			b_blipped = TRUE;
		end
	end
	
	// DEF_R_OBJECTIVE_SPIRE_02_START
	if ( r_index == DEF_R_OBJECTIVE_SPIRE_02_START() ) then
		if ( b_blip ) then
			// XXX_TODO: BLIPPING CODE
			b_blipped = TRUE;
		end
		if ( not b_blip ) then
			// XXX_TODO: UNBLIPPING CODE
			b_blipped = TRUE;
		end
	end
	
	//DEF_R_OBJECTIVE_SPIRE_02_SWITCH_CORES
	if ( r_index == DEF_R_OBJECTIVE_SPIRE_02_SWITCH_CORES()	) then
		if ( b_blip ) then
			// XXX_TODO: BLIPPING CODE
			b_blipped = TRUE;
		end
		if ( not b_blip ) then
			// XXX_TODO: UNBLIPPING CODE
			b_blipped = TRUE;
		end
	end
	
	//DEF_R_OBJECTIVE_SPIRE_02_CORE_COUNT_03
	if ( r_index == DEF_R_OBJECTIVE_SPIRE_02_CORE_COUNT_03()	) then
		if ( b_blip ) then
			// XXX_TODO: BLIPPING CODE
			b_blipped = TRUE;
		end
		if ( not b_blip ) then
			// XXX_TODO: UNBLIPPING CODE
			b_blipped = TRUE;
		end
	end
	
	//DEF_R_OBJECTIVE_SPIRE_02_CORE_COUNT_02
	if ( r_index == DEF_R_OBJECTIVE_SPIRE_02_CORE_COUNT_02() ) then
		if ( b_blip ) then
			// XXX_TODO: BLIPPING CODE
			b_blipped = TRUE;
		end
		if ( not b_blip ) then
			// XXX_TODO: UNBLIPPING CODE
			b_blipped = TRUE;
		end
	end
	
	//DEF_R_OBJECTIVE_SPIRE_02_CORE_COUNT_01
	if ( r_index == DEF_R_OBJECTIVE_SPIRE_02_CORE_COUNT_01() ) then
		if ( b_blip ) then
			// XXX_TODO: BLIPPING CODE
			b_blipped = TRUE;
		end
		if ( not b_blip ) then
			// XXX_TODO: UNBLIPPING CODE
			b_blipped = TRUE;
		end
	end
	
	//DEF_R_OBJECTIVE_SPIRE_02_CORE_DESTROYED
	if ( r_index == DEF_R_OBJECTIVE_SPIRE_02_CORE_DESTROYED() ) then
		if ( b_blip ) then
			// XXX_TODO: BLIPPING CODE
			b_blipped = TRUE;
		end
		if ( not b_blip ) then
			// XXX_TODO: UNBLIPPING CODE
			b_blipped = TRUE;
		end
	end
	
	//DEF_R_OBJECTIVE_SPIRE_02_END
	if ( r_index == DEF_R_OBJECTIVE_SPIRE_02_END() ) then
		if ( b_blip ) then
			// XXX_TODO: BLIPPING CODE
			b_blipped = TRUE;
		end
		if ( not b_blip ) then
			// XXX_TODO: UNBLIPPING CODE
			b_blipped = TRUE;
		end
	end
	
	//DEF_R_OBJECTIVE_SPIRE_02_EXIT
	if ( r_index == DEF_R_OBJECTIVE_SPIRE_02_EXIT() ) then
		if ( b_blip ) then
			// XXX_TODO: BLIPPING CODE
			b_blipped = TRUE;
		end
		if ( not b_blip ) then
			// XXX_TODO: UNBLIPPING CODE
			b_blipped = TRUE;
		end
	end

	//DEF_R_OBJECTIVE_SPIRE_03_ENTER
	if ( r_index == DEF_R_OBJECTIVE_SPIRE_03_ENTER() ) then
		if ( b_blip ) then
			// XXX_TODO: BLIPPING CODE
			b_blipped = TRUE;
		end
		if ( not b_blip ) then
			// XXX_TODO: UNBLIPPING CODE
			b_blipped = TRUE;
		end
	end
	
	//DEF_R_OBJECTIVE_SPIRE_03_START
	if ( r_index == DEF_R_OBJECTIVE_SPIRE_03_START() ) then
		if ( b_blip ) then
			// XXX_TODO: BLIPPING CODE
			b_blipped = TRUE;
		end
		if ( not b_blip ) then
			// XXX_TODO: UNBLIPPING CODE
			b_blipped = TRUE;
		end
	end
	
	//DEF_R_OBJECTIVE_SPIRE_03_BOTTOM_FLOOR
	if ( r_index == DEF_R_OBJECTIVE_SPIRE_03_BOTTOM_FLOOR()	 ) then
		if ( b_blip ) then
			// XXX_TODO: BLIPPING CODE
			b_blipped = TRUE;
		end
		if ( not b_blip ) then
			// XXX_TODO: UNBLIPPING CODE
			b_blipped = TRUE;
		end
	end	

	//DEF_R_OBJECTIVE_SPIRE_03_BOTTOM_FLOOR
	if ( r_index == DEF_R_OBJECTIVE_SPIRE_03_BOTTOM_FLOOR()	 ) then
		if ( b_blip ) then
			// XXX_TODO: BLIPPING CODE
			b_blipped = TRUE;
		end
		if ( not b_blip ) then
			// XXX_TODO: UNBLIPPING CODE
			b_blipped = TRUE;
		end
	end	
	
	// DEF_R_OBJECTIVE_SPIRE_03_TOP_FLOOR
	if ( r_index == DEF_R_OBJECTIVE_SPIRE_03_TOP_FLOOR()	 ) then
		if ( b_blip ) then
			f_blip_flag( flag_sp03_control, "default" );
			b_blipped = TRUE;
		end
		if ( not b_blip ) then
			f_unblip_flag( flag_sp03_control );
			b_blipped = TRUE;
		end
	end	
	
	// DEF_R_OBJECTIVE_SPIRE_03_CONTROL_ROOM_ENTER
	if ( r_index == DEF_R_OBJECTIVE_SPIRE_03_CONTROL_ROOM_ENTER()	 ) then
		if ( b_blip ) then
			f_blip_object( top_spire_switch_01, "default" );
			b_blipped = TRUE;
		end
		if ( not b_blip ) then
			f_unblip_object( top_spire_switch_01 );
			b_blipped = TRUE;
		end
	end	
	
		if ( r_index == DEF_R_OBJECTIVE_SPIRE_03_CONTROL_ROOM_SWITCH()	 ) then
		if ( b_blip ) then
			f_blip_object( top_spire_switch_01, "default" );
			b_blipped = TRUE;
		end
		if ( not b_blip ) then
			f_unblip_object( top_spire_switch_01 );
			b_blipped = TRUE;
		end
	end	
	
	// DEF_R_OBJECTIVE_LICH
	if ( r_index == DEF_R_OBJECTIVE_LICH() ) then
		if ( b_blip ) then
			f_blip_flag( flg_lich_jump, "recon" ); 
			b_blipped = TRUE;
		end
		if ( not b_blip ) then
		 	f_unblip_object( scn_lich_target_01 );
			b_blipped = TRUE;
		end
	end	
/*	
	// DEF_R_OBJECTIVE_LICH_01
	if ( r_index == DEF_R_OBJECTIVE_LICH_01 ) then
		if ( b_blip ) then
			f_blip_object( m_lich_01, "default" );
			b_blipped = TRUE;
		end
		if ( not b_blip ) then
		 	f_unblip_object( m_lich_01 );
			b_blipped = TRUE;
		end
	end	

	// DEF_R_OBJECTIVE_LICH_02
	if ( r_index == DEF_R_OBJECTIVE_LICH_02 ) then
		if ( b_blip ) then
			f_blip_object( m_lich_02, "default" );
			b_blipped = TRUE;
		end
		if ( not b_blip ) then
			f_unblip_object( m_lich_02 );
			b_blipped = TRUE;
		end
	end	

	// DEF_R_OBJECTIVE_LICH_03
	if ( r_index == DEF_R_OBJECTIVE_LICH_03 ) then
		if ( b_blip ) then
			f_blip_object( m_lich_03, "default" );
			b_blipped = TRUE;
		end
		if ( not b_blip ) then
			f_unblip_object( m_lich_03 );
			b_blipped = TRUE;
		end
	end	

	// DEF_R_OBJECTIVE_LICH_04
	if ( r_index == DEF_R_OBJECTIVE_LICH_04 ) then
		if ( b_blip ) then
			f_blip_object( m_lich_04, "default" );
			b_blipped = TRUE;
		end
		if ( not b_blip ) then
			f_unblip_object( m_lich_04 );
			b_blipped = TRUE;
		end
	end	

	// DEF_R_OBJECTIVE_LICH_05
	if ( r_index == DEF_R_OBJECTIVE_LICH_05 ) then
		if ( b_blip ) then
			f_blip_object( m_lich_05, "default" );
			b_blipped = TRUE;
		end
		if ( not b_blip ) then
			f_unblip_object( m_lich_05 );
			b_blipped = TRUE;
		end
	end	
*/
	// return if something was blipped
	b_blipped;

end

// === f_mission_objective_title: Returns the index title title
script static string_id f_mission_objective_title( real r_index )
local string_id sid_return = SID_objective_none;
	
	// DEF_R_OBJECTIVE_INFINITY_PELICAN
	if ( r_index == DEF_R_OBJECTIVE_INFINITY_PELICAN ) then
		sid_return = 'ct_obj_main';
	end	

	// DEF_R_OBJECTIVE_FLIGHT_REVEAL
	if ( r_index ==  DEF_R_OBJECTIVE_FLIGHT_REVEAL()	 ) then
		sid_return = 'ct_obj_spire_first';
	end	
	
	// DEF_R_OBJECTIVE_FLIGHT_SPIRE_CHOOSE
	if ( r_index ==  DEF_R_OBJECTIVE_FLIGHT_SPIRE_CHOOSE() ) then
		sid_return = 'ct_obj_spire_start';
	end	
	
	// DEF_R_OBJECTIVE_FLIGHT_SPIRE_01
	if ( r_index ==  DEF_R_OBJECTIVE_FLIGHT_SPIRE_01() ) then
		sid_return = SID_objective_none;
	end	
	
	// DEF_R_OBJECTIVE_FLIGHT_SPIRE_02
	if ( r_index ==  DEF_R_OBJECTIVE_FLIGHT_SPIRE_02() ) then
		sid_return = SID_objective_none;
	end	
	
	// DEF_R_OBJECTIVE_FLIGHT_SPIRE_03
	if ( r_index ==  DEF_R_OBJECTIVE_FLIGHT_SPIRE_03() ) then
		sid_return = 'ct_obj_spire_final';
	end	
	
	// DEF_R_OBJECTIVE_FLIGHT_SPIRE_DOOR
	if ( r_index ==    DEF_R_OBJECTIVE_FLIGHT_SPIRE_DOOR() ) then
		sid_return = SID_objective_none;
	end	

	// DEF_R_OBJECTIVE_FLIGHT_SPIRE_DOOR
	if ( r_index ==    DEF_R_OBJECTIVE_SPIRE_01_ENTER() ) then
		sid_return = SID_objective_none;
	end	
	
	// DEF_R_OBJECTIVE_SPIRE_01_START
	if ( r_index ==    DEF_R_OBJECTIVE_SPIRE_01_START() ) then
		sid_return = 'ct_obj_spire_01';
	end	
	
	// DEF_R_OBJECTIVE_SPIRE_01_RIDE_TW01
	if ( r_index ==    DEF_R_OBJECTIVE_SPIRE_01_RIDE_TW01() ) then
		sid_return = SID_objective_none;
	end	
	
	// DEF_R_OBJECTIVE_SPIRE_01_SWITCH_TW01
	if ( r_index ==    DEF_R_OBJECTIVE_SPIRE_01_SWITCH_TW01() ) then
		sid_return = SID_objective_none;
	end	
	
	// DEF_R_OBJECTIVE_SPIRE_01_RIDE_TW02
	if ( r_index ==    DEF_R_OBJECTIVE_SPIRE_01_RIDE_TW02() ) then
		sid_return = SID_objective_none;
	end	
	
	// DEF_R_OBJECTIVE_SPIRE_01_SWITCH_TW02
	if ( r_index ==    DEF_R_OBJECTIVE_SPIRE_01_SWITCH_TW02() ) then
		sid_return = SID_objective_none;
	end	
	
	// DEF_R_OBJECTIVE_FLIGHT_SPIRE_DOOR
	if ( r_index ==    DEF_R_OBJECTIVE_SPIRE_01_ENTER() ) then
		sid_return = SID_objective_none;
	end	
	
	// DEF_R_OBJECTIVE_SPIRE_01_SWITCH_MAIN
	if ( r_index ==    DEF_R_OBJECTIVE_SPIRE_01_SWITCH_MAIN() ) then
		sid_return = SID_objective_none;
	end	
	
	// DEF_R_OBJECTIVE_SPIRE_01_RIDE_LAST
	if ( r_index ==    DEF_R_OBJECTIVE_SPIRE_01_RIDE_LAST() ) then
		sid_return = 'ct_obj_pelican_return';
	end	
	
	// DEF_R_OBJECTIVE_SPIRE_01_EXIT
	if ( r_index ==    DEF_R_OBJECTIVE_SPIRE_01_EXIT() ) then
		sid_return = SID_objective_none;
	end	
	
	// DEF_R_OBJECTIVE_SPIRE_02_ENTER
	if ( r_index ==    DEF_R_OBJECTIVE_SPIRE_02_ENTER() ) then
		sid_return = SID_objective_none;
	end	
	
	// DEF_R_OBJECTIVE_SPIRE_02_START
	if ( r_index ==    DEF_R_OBJECTIVE_SPIRE_02_START() ) then
		sid_return = 'ct_obj_spire_02';
	end	

	// DEF_R_OBJECTIVE_SPIRE_02_SWITCH_CORES
	if ( r_index ==    DEF_R_OBJECTIVE_SPIRE_02_SWITCH_CORES() ) then
		sid_return = SID_objective_none;
	end	
	
	// DEF_R_OBJECTIVE_SPIRE_02_CORE_COUNT_03
	if ( r_index ==    DEF_R_OBJECTIVE_SPIRE_02_CORE_COUNT_03() ) then
		sid_return = SID_objective_none;
	end	
	
	// DEF_R_OBJECTIVE_SPIRE_02_CORE_COUNT_02
	if ( r_index ==    DEF_R_OBJECTIVE_SPIRE_02_CORE_COUNT_02() ) then
		sid_return = SID_objective_none;
	end	
	
	// DEF_R_OBJECTIVE_SPIRE_02_CORE_COUNT_01
	if ( r_index ==    DEF_R_OBJECTIVE_SPIRE_02_CORE_COUNT_01() ) then
		sid_return = SID_objective_none;
	end	
	
	// DEF_R_OBJECTIVE_SPIRE_02_CORE_DESTROYED
	if ( r_index ==    DEF_R_OBJECTIVE_SPIRE_02_CORE_DESTROYED() ) then
		sid_return = SID_objective_none;
	end	
	
	// DEF_R_OBJECTIVE_SPIRE_02_END
	if ( r_index ==    DEF_R_OBJECTIVE_SPIRE_02_END() ) then
		sid_return = 'ct_obj_pelican_return';
	end	

	// DEF_R_OBJECTIVE_SPIRE_02_EXIT
	if ( r_index ==    DEF_R_OBJECTIVE_SPIRE_02_EXIT() ) then
		sid_return = SID_objective_none;
	end	
	
	// DEF_R_OBJECTIVE_SPIRE_03_ENTER
	if ( r_index ==    DEF_R_OBJECTIVE_SPIRE_03_ENTER() ) then
		sid_return = SID_objective_none;
	end	
	
	// DEF_R_OBJECTIVE_SPIRE_03_START
	if ( r_index ==    DEF_R_OBJECTIVE_SPIRE_03_START() ) then
		sid_return = 'SID_objective_none';
	end	
	
	// DEF_R_OBJECTIVE_SPIRE_03_BOTTOM_FLOOR
	if ( r_index ==    DEF_R_OBJECTIVE_SPIRE_03_BOTTOM_FLOOR() ) then
		sid_return = SID_objective_none;
	end	
	
	// DEF_R_OBJECTIVE_SPIRE_03_TOP_FLOOR
	if ( r_index ==    DEF_R_OBJECTIVE_SPIRE_03_TOP_FLOOR() ) then
		sid_return = SID_objective_none;
	end	

	// DEF_R_OBJECTIVE_SPIRE_03_CONTROL_ROOM_ENTER
	if ( r_index ==    DEF_R_OBJECTIVE_SPIRE_03_CONTROL_ROOM_ENTER() ) then
		sid_return = SID_objective_none;
	end	

	// DEF_R_OBJECTIVE_SPIRE_03_CONTROL_ROOM_SWITCH
	if ( r_index == DEF_R_OBJECTIVE_SPIRE_03_CONTROL_ROOM_SWITCH() ) then
		sid_return = SID_objective_none;	// XXX TODO - SETUP REAL TEXT ID
	end	

	// DEF_R_OBJECTIVE_LICH_01
	if ( r_index == DEF_R_OBJECTIVE_LICH() ) then
		sid_return = SID_objective_none;	// XXX TODO - SETUP REAL TEXT ID
	end	
	
	/*
	// DEF_R_OBJECTIVE_LICH_01
	if ( r_index == DEF_R_OBJECTIVE_LICH_01 ) then
		sid_return = SID_objective_none;	// XXX TODO - SETUP REAL TEXT ID
	end	

	// DEF_R_OBJECTIVE_LICH_02
	if ( r_index == DEF_R_OBJECTIVE_LICH_02 ) then
		sid_return = SID_objective_none;	// XXX TODO - SETUP REAL TEXT ID
	end	

	// DEF_R_OBJECTIVE_LICH_03
	if ( r_index == DEF_R_OBJECTIVE_LICH_03 ) then
		sid_return = SID_objective_none;	// XXX TODO - SETUP REAL TEXT ID
	end	

	// DEF_R_OBJECTIVE_LICH_04
	if ( r_index == DEF_R_OBJECTIVE_LICH_04 ) then
		sid_return = SID_objective_none;	// XXX TODO - SETUP REAL TEXT ID
	end	

	// DEF_R_OBJECTIVE_LICH_05
	if ( r_index == DEF_R_OBJECTIVE_LICH_05 ) then
		sid_return = SID_objective_none;	// XXX TODO - SETUP REAL TEXT ID
	end	
	*/

	// return
	sid_return;

	/*
	// DEF_R_OBJECTIVE_<OBJECTIVE_2>
	if ( r_index == DEF_R_OBJECTIVE_<OBJECTIVE_2> ) then
		sid_return = 'obj_<objective_2>';
	end	
	*/
end

// === f_mission_objective_missioncomplete::: Handles all the general mission complete
script static void f_mission_objective_missioncomplete()
	dprint( "::: f_mission_objective_missioncomplete :::" );

	// disable controls, etc
	player_action_test_reset();

	player_enable_input( 0 );
	camera_control( 1 );

	// complete current index
	f_objective_complete( f_objective_current_index(), FALSE, TRUE );
	
	// play end cinematic
	f_cinematic_close();
	
	// general mission complete
	f_objective_missioncomplete();

end

// --- End m70_objectives.hsc ---

// --- Begin m70_spire.hsc ---
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343
//
// Mission: 					m70
//
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343
// =================================================================================================
// =================================================================================================
// spire
// =================================================================================================
// =================================================================================================

//================================
// SPIRE_VARIABLES
//================================

global real R_spire_01_state = DEF_SPIRE_STATE_DORMANT();
global real R_spire_02_state = DEF_SPIRE_STATE_DORMANT();
global real R_spire_03_state = DEF_SPIRE_STATE_DORMANT();
global short S_SPIRE_FIRST 	 = 0;
global short DEF_SPIRE_01    = 1;
global short DEF_SPIRE_02    = 2;
global short DEF_SPIRE_03    = 3;

// :: DEFINES
script static real DEF_SPIRE_STATE_DORMANT() 						0.0; end
script static real DEF_SPIRE_STATE_START() 							1.0; end
script static real DEF_SPIRE_STATE_OPEN() 							2.0; end
script static real DEF_SPIRE_STATE_INTERIOR_START()		  3.0; end
script static real DEF_SPIRE_STATE_INTERIOR_COMPLETE() 	4.0; end
script static real DEF_SPIRE_STATE_COMPLETE() 					5.0; end

//================================
// SPIRE_FUNCTIONS
//================================
script startup f_spire_startup()
	sleep_until( b_mission_started, 1 );
	dprint("f_spire_startup");
	wake( f_spire_init );
end

script dormant f_spire_init()
	sleep_until( (current_zone_set_fully_active() >= DEF_S_ZONESET_INFINITY_EXT) and (current_zone_set_fully_active() <= DEF_S_ZONESET_SPIRE_03_EXIT), 1 );
	
	// initialize modules
	wake( f_spire_01_init );
	wake( f_spire_02_init );
	wake( f_spire_03_init );
end

//================================
//SPIRE_CLOSE
//================================

script static void f_spires_exit_clear_pelican()
	dprint("f_spires_exit_clear_pelicans");
	if object_valid(inf_pelican_gunship) then
		object_destroy(inf_pelican_gunship);
	end
	
	if object_valid(flight_pelican_sp01) then
		object_destroy(flight_pelican_sp01);
	end
	
	if object_valid(flight_pelican_sp02) then
		object_destroy(flight_pelican_sp02);
	end
end

script static void f_spire_exit_respawn_pelican( object_name obj_pelican, vehicle v_pelican, trigger_volume tv_pelican )
	repeat
		if not object_valid(obj_pelican) then
			object_create(obj_pelican);
			if (object_valid(obj_pelican)) then
				thread(f_pelican_disable_extra_seats( v_pelican, obj_pelican));
			end
		else
			if (object_get_health(obj_pelican) <= 0) and not volume_test_players(tv_pelican) and not volume_test_players_lookat(tv_pelican, 15, 15) then
				object_destroy(obj_pelican);
				sleep_s(1);
				object_create_anew(obj_pelican);
				thread(f_pelican_disable_extra_seats( v_pelican, obj_pelican));
				sleep_s(1);
			end
		end
	until(not volume_test_players(tv_pelican) and vehicle_test_players(), 1);
end

script static boolean vehicle_test_players()
	unit_in_vehicle(player0()) or unit_in_vehicle(player1()) or unit_in_vehicle(player2()) or unit_in_vehicle(player3());
end

script static boolean vehicle_test_players_all_old()
	unit_in_vehicle(player0) and unit_in_vehicle(player1) and unit_in_vehicle(player2) and unit_in_vehicle(player3);
end
script static boolean vehicle_test_players_all()

	( (unit_get_health(player0) <= 0.0) or unit_in_vehicle(player0) )
	and
	( (unit_get_health(player1) <= 0.0) or unit_in_vehicle(player1) )
	and
	( (unit_get_health(player2) <= 0.0) or unit_in_vehicle(player2) )
	and
	( (unit_get_health(player3) <= 0.0) or unit_in_vehicle(player3) );

end
/*
script static boolean vehicle_test_players_all()

	( (not player_valid(0)) or (unit_get_health(player0) <= 0.0) or unit_in_vehicle(player0) )
	and
	( (not player_valid(1)) or (unit_get_health(player1) <= 0.0) or unit_in_vehicle(player1) )
	and
	( (not player_valid(2)) or (unit_get_health(player2) <= 0.0) or unit_in_vehicle(player2) )
	and
	( (not player_valid(3)) or (unit_get_health(player3) <= 0.0) or unit_in_vehicle(player3) );

end
*/
//xxx 
//second test if first does not work
/*
global boolean b_vehicle_check = FALSE;
script dormant check_bool()

	repeat
		sleep_until( b_vehicle_check != test_Bool(), 1 );
		b_vehicle_check = not b_vehicle_check;
	until( FALSE, 1 );
	
end
*/
//SPIRE_STATE_CHECKS

// :: SPIRE_STATE_GET
script static real f_spire_state_get(short spire_number)
	if spire_number == 1 then
		R_spire_01_state;
	elseif spire_number == 2 then
		R_spire_02_state;
	elseif spire_number == 3 then
		R_spire_03_state;
	end
end

// :: SPIRE_STATE_CHECK_FOR_STATE
script static boolean f_spire_state_check(short spire_number, real spire_state)
	if spire_number == 1 then
		R_spire_01_state >= spire_state;
	elseif spire_number == 2 then
		R_spire_02_state >= spire_state;
	elseif spire_number == 3 then
		R_spire_03_state >= spire_state;
	end
end


// :: SPIRE_STATE_SET
script static real f_spire_state_set ( short spire_number, real r_spire_state_new)
	if spire_number == 1 then
		if ( r_spire_state_new < R_spire_01_state ) then
			r_spire_state_new = R_spire_01_state;
		end
		R_spire_01_state = r_spire_state_new;
	
	elseif spire_number == 2 then
		if ( r_spire_state_new < R_spire_02_state ) then
			r_spire_state_new = R_spire_02_state;
		end
		R_spire_02_state = r_spire_state_new;

	elseif spire_number == 3 then
		if ( r_spire_state_new < R_spire_03_state ) then
			r_spire_state_new = R_spire_03_state;
		end
		R_spire_03_state = r_spire_state_new;
	end
	r_spire_state_new;
end

// :: SPIRE_CHECK_SPIRE_STATE_ACTIVE
script static boolean f_spire_state_active(short spire_number)
	if spire_number == 1 then
		( R_spire_01_state > DEF_SPIRE_STATE_DORMANT() ) and ( R_spire_01_state < DEF_SPIRE_STATE_COMPLETE() );
	elseif spire_number == 2 then
		( R_spire_02_state > DEF_SPIRE_STATE_DORMANT() and ( R_spire_02_state < DEF_SPIRE_STATE_COMPLETE() ) );
	elseif spire_number == 3 then
		( R_spire_02_state > DEF_SPIRE_STATE_DORMANT() and ( R_spire_03_state < DEF_SPIRE_STATE_COMPLETE() ) );
	end
end

// :: SPIRE_CHECK_SPIRE_STATE_ACTIVE_ANY_SPIRES
script static boolean f_spires_state_active()
	f_spire_state_active(DEF_SPIRE_01) or f_spire_state_active(DEF_SPIRE_02) or f_spire_state_complete(DEF_SPIRE_03);
end

// :: SPIRE_CHECK_FOR_START_VALID
script static boolean f_spire_start_valid(short spire_number)
	if spire_number == DEF_SPIRE_01 then
		not f_spire_state_complete(DEF_SPIRE_01) and not f_spire_state_active(DEF_SPIRE_02);
	elseif spire_number == DEF_SPIRE_02 then
		not f_spire_state_complete(DEF_SPIRE_02) and not f_spire_state_active(DEF_SPIRE_01);
	elseif spire_number == DEF_SPIRE_03 then
		f_spire_state_complete(DEF_SPIRE_01) and f_spire_state_complete(DEF_SPIRE_02);
	end
end

// :: SPIRE_CHECK_STATE_COMPLETE
script static boolean f_spire_state_complete(short spire_number)
	if spire_number == 1 then
		( R_spire_01_state >= DEF_SPIRE_STATE_COMPLETE() );
	elseif spire_number == 2 then
		( R_spire_02_state >= DEF_SPIRE_STATE_COMPLETE() );
	elseif spire_number == 3 then
		( R_spire_03_state >= DEF_SPIRE_STATE_COMPLETE() );
	end
end

// :: SPIRE_CHECK_STATE_ANY_OPEN
script static boolean f_spires_state_open()
	f_spire_state_open(DEF_SPIRE_01) or
	f_spire_state_open(DEF_SPIRE_02) or
	f_spire_state_open(DEF_SPIRE_03);
end

// :: SPIRE_CHECK_STATE_OPEN
script static boolean f_spire_state_open(short spire_number)
	if spire_number == 1 then
		R_spire_01_state == 2;
	elseif spire_number == 2 then
		R_spire_02_state == 2;
	elseif spire_number == 3 then
		R_spire_03_state == 2;
	end
end
// :: SPIRE_GET_FIRST
script static short f_get_first_spire()
	//if 0 set first spire if not 0 then return first
	if S_SPIRE_FIRST == 0 then
		if f_spire_state_active(DEF_SPIRE_01) and not f_spire_state_complete(DEF_SPIRE_02) then 
			S_SPIRE_FIRST = DEF_SPIRE_01;
		elseif f_spire_state_active(DEF_SPIRE_02) and not f_spire_state_complete(DEF_SPIRE_01) then
			S_SPIRE_FIRST = DEF_SPIRE_02;
		end
	end
	S_SPIRE_FIRST;
end


// :: SPIRE_CHECK_FIRST
script static boolean f_check_first_spire(short spire_number)
	f_get_first_spire();
	f_get_first_spire() == spire_number;
end

// :: SPIRE_CHECK_FIRST_COMPLETE
script static boolean f_check_first_spire_complete()
	f_spire_state_complete(DEF_SPIRE_01) or f_spire_state_complete(DEF_SPIRE_02);
end

// :: SPIRE_CHECK_FIRST_AND_SECOND_COMPLETE
script static boolean f_check_both_spire_complete()
	f_spire_state_complete(DEF_SPIRE_01) and f_spire_state_complete(DEF_SPIRE_02);
end


// --- End m70_spire.hsc ---

// --- Begin m70_spire_01.hsc ---
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343
//
// Mission: 					m70
//
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343

// =================================================================================================
// =================================================================================================
// spire_01
// =================================================================================================
// =================================================================================================

//VARIABLES
global boolean b_sp01_deactivated 							   = FALSE;
global boolean b_sp01_tower_1_spawn_exit 					 = FALSE;
global boolean b_sp01_tower_2_spawn_exit 					 = FALSE;
global boolean b_final_gondola_ride								 = FALSE;
global boolean DEF_SPIRE_01_SPAWN_STEALTH   			 = FALSE;
global boolean sp01_gondola_moving 								 = FALSE;
global boolean B_GONDOLA_ACTIVE 									 = FALSE;
global boolean b_blip_gondola_start 							 = FALSE;
global long L_sp01_int_door_03_thread = 0;
global long L_door_function_thread = 0;

// functions
// === f_spire_01_INT_init::: Initialize
script dormant f_spire_01_init()

	// setup cleanup watch
	wake( f_spire_01_deinit );
	
	sleep_until( f_spire_01_Zone_Active() and not f_spire_state_complete(DEF_SPIRE_01) and f_spire_state_active(DEF_SPIRE_01), 1 );
	dprint( "::: f_spire_01_INT_init :::" );

	// initialize modules
	wake( f_spire_01_AI_init );
	wake( f_spire_01_audio_init );
	wake( f_spire_01_fx_init );


	// initialize sub modules
	wake( f_spire_01_main );

end


// === f_spire_01_INT_Cleanup::: Cleanup area
script dormant f_spire_01_deinit()
	sleep_until( f_spire_state_complete(DEF_SPIRE_01) and (not f_spire_01_INT_Zone_Active()), 1 );
	dprint( "::: f_spire_01_INT_Cleanup :::" );
	
	// deinitialize scripts
		// kill functions
	sleep_forever( f_spire_01_init );

	// deinitialize modules
	wake( f_spire_01_AI_deinit );
	wake( f_spire_01_audio_deinit );
	wake( f_spire_01_fx_deinit );

	// deinitialize sub modules
	sleep_forever( f_spire_01_main );
	
end

// === f_spire_01_INT_Zone_Active::: Checks if the current zone set is for this area
script static boolean f_spire_01_INT_Zone_Active()
	( current_zone_set_fully_active() >= DEF_S_ZONESET_SPIRE_01_INT_A ) and ( current_zone_set_fully_active() <= DEF_S_ZONESET_SPIRE_01_INT_B );
end

script static boolean f_spire_01_Zone_Active()
	(current_zone_set_fully_active() == DEF_S_ZONESET_SPIRE_01_EXT) or  f_spire_01_INT_Zone_Active();
end



//======================================================
// SPIRE 01 INT MAIN
//======================================================
script dormant f_spire_01_main()

	dprint("f_spire_01_INT_main");
	//thread(f_spire_01_door_enter());
	//wake(f_spire_01_int_doors);
	//wake(f_dm_spire_01_int_door_02);
	thread(f_sp01_door_enter());
	
	sleep_until(f_spire_01_INT_Zone_Active(), 1);
	data_mine_set_mission_segment ("m70_spire_01"); 
	player_set_profile( profile_coop_respawn );
	if f_check_first_spire(DEF_SPIRE_02) then 
		s_flight_state = S_DEF_FLIGHT_STATE_SECOND_COMPLETE();
		game_insertion_point_unlock(4);
	else
		s_flight_state = S_DEF_FLIGHT_STATE_START_COMPLETE();
		game_insertion_point_unlock(3);
	end
		
	wake(f_spire_01_setup);
	garbage_collect_now();

	sleep_until(volume_test_players(tv_spire01_int_enter), 1);
	
	device_set_power(dc_spire01_gondola_switch, 0);
	//xxx beam_effects
	thread(f_sp01_beam_effects_init());
	dprint("SPIRE_01_GONDOLA_RIDE_01");
	
	object_create (sc_sp01_bridge_00);
	
	
	sleep_until( 	b_blip_gondola_start, 1 );
	
	
	f_blip_flag( flg_sp01_gondola_switch_01,"activate");

	//objectives_show_up_to(1);
/*
	if f_check_first_spire(DEF_SPIRE_01) then
			objectives_show_up_to(2);
	elseif f_check_first_spire(DEF_SPIRE_02) then
			objectives_show_up_to(3);
	end
	*/
	
	f_gondola_button();
	
	f_unblip_flag( flg_sp01_gondola_switch_01 );
	
	local long show_button_gondola_01 = pup_play_show("pup_sp01_gondola_switch_01");
	sleep_until (not pup_is_playing(show_button_gondola_01) , 1);

	sleep_s(1.25);
	
	game_save_no_timeout();
	
	thread(f_sp01_gondola_player_effects());
	
	wake(f_nar_spire_01_gondola_first_stop);
	
	// GONDOLA RIDE 1
	thread(f_audio_gondola_moving_start()); // gondola audio
	local long show_gondola_ride_01 = pup_play_show("pup_sp01_gondola_ride_01");
	thread(stop_gondala_ride_1_helper(show_gondola_ride_01));
	sleep_until (not pup_is_playing(show_gondola_ride_01) or volume_test_players(tv_tower_01_area), 1);
		
	game_save_no_timeout();
	sleep_s(1);

	sleep_until(b_gondola_waypoint_1, 1);
	
	sleep_s(1.25);
	
	f_blip_flag( flg_sp01_tw01_switch,"activate");
	
	f_sp01_tower_01_button();
	
	f_unblip_flag( flg_sp01_tw01_switch );
	
	
	local long show_tower_01 = pup_play_show("pup_sp01_tw01_switch");
	sleep_until (not pup_is_playing(show_tower_01) , 1);
	
	game_save_no_timeout();
	sleep_s(2);
	
	b_sp01_tower_1_spawn_exit = TRUE;
	
	sleep_s (2);
	
	// GONDOLA RIDE 2
	thread(f_audio_gondola_moving_start()); // gondola audio
	local long show_gondola_ride_02 = pup_play_show("pup_sp01_gondola_ride_02");
	sleep_until (not pup_is_playing(show_gondola_ride_02) , 1);
	thread(f_audio_gondola_moving_stop()); // gondola audio
	
	game_save_no_timeout();
	sleep_s(0.25);
	
	local long show_button_reset_01 = pup_play_show("pup_sp01_gondola_switch_reset");
	sleep_until (not pup_is_playing(show_button_reset_01) , 1);
	sleep_s (0.25);
	game_save_no_timeout();
	
	// :: SPIRE_01_GONDOLA_RIDE_02
	dprint("SPIRE_01_GONDOLA_RIDE_02");
	//xxx
	wake(f_sp01_gondola_squad_nudge);
	sleep_s(3);
	sleep_until(ai_living_count(sq_tw1_exit_knight) == 0, 1);
	f_unblip_flag(flg_sp01_gondola_secure);
	sleep_s(1);
	
	tower_01_start_gondola_back_up = TRUE;
	f_blip_flag( flg_sp01_gondola_switch_02,"activate");
	f_gondola_button();
	f_unblip_flag( flg_sp01_gondola_switch_02 );
	
	local long show_button_gondola_02 = pup_play_show("pup_sp01_gondola_switch_02");
	sleep_until (not pup_is_playing(show_button_gondola_02), 1);
	
	sleep_s(0.25);
	game_save_no_timeout();
	sleep_s (2);
	
	wake(f_nar_spire_gondola_ride_02);
	
	// GONDOLA RIDE 3
	thread(f_sp01_gondola_player_effects());
	thread(f_audio_gondola_moving_start()); // gondola audio
	
	wake(f_sp01_main_objective_beam);
	//xxxx fx_distortion
	dprint("DISABLE EFFECT DISTORTIONS");
	effects_distortion_enabled = FALSE;

	local long show_gondola_ride_03 = pup_play_show("pup_sp01_gondola_ride_03");
	sleep_until (not pup_is_playing(show_gondola_ride_03) , 1);
	thread(f_audio_gondola_moving_stop()); // gondola audio
	
	game_save_no_timeout();
	sleep_s (3);
	
	
	////xxxx
	//set two global varables switch true, generator true
	//set two conditionals button press switch pop
	//sleep until one condition is commited to, then do that.
	/// branch scripts here
	//wake conditions, thread button
	// :: SPIRE_01_TOWER_02_SWITCH
	dprint("SPIRE_01_TOWER_02_SWITCH");

	
	//f_sp01_tower_02_button();
	thread(f_sp01_tower_02_button());
	//wake(f_sp01_main_objective_beam);
	sleep_until(device_get_position(dc_spire01_tower_02) != 0 or b_sp01_deactivated, 1);
	
	if b_sp01_deactivated then 
		f_spire_02_end_path_generator_first();
	else
		f_spire_02_end_path_button_first();
	end
	b_final_gondola_ride = TRUE;
	game_save_no_timeout();
	sleep_s(0.5);
	
	// GONDOLA RIDE 5
	thread(f_sp01_gondola_player_effects());
	thread(f_audio_gondola_moving_start()); // gondola audio
	local long show_gondola_ride_05 = pup_play_show("pup_sp01_gondola_ride_05");
	sleep_until (not pup_is_playing(show_gondola_ride_05) or volume_test_players(tv_spire01_int_enter), 1);
	thread(f_audio_gondola_moving_stop()); // gondola audio
	sleep_s(1);
	
	game_save_no_timeout();
	
	f_blip_flag( flg_sp01_end, "recon" );
	
	thread(f_sp01_door_exit());
	
	sleep_until(volume_test_players(tv_spire01_int_enter) or volume_test_players(tv_sp01_int_to_ext), 1);
	
	f_unblip_flag(flg_sp01_end);
	f_spire_state_set ( DEF_SPIRE_01, DEF_SPIRE_STATE_COMPLETE());
	game_save();
	
	//xxxx fx_distortion
	dprint("ENABLE EFFECT DISTORTIONS");
	effects_distortion_enabled = TRUE;
	
	sleep_until(volume_test_players(tv_sp01_int_to_ext), 1);

end

script static void stop_gondala_ride_1_helper(long gondola_show_index)
	sleep_until (not pup_is_playing(gondola_show_index), 1);

	thread(f_audio_gondola_moving_stop()); // gondola audio
end

//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//SPLIT SCRIPTS
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
script static void f_spire_02_end_path_button_first()
	f_unblip_flag( flg_sp01_tw02_switch );
	
	b_sp01_tower_2_spawn_exit = TRUE;
	
	local long show_tower_02 = pup_play_show("pup_sp01_tw02_switch");
	sleep_until (not pup_is_playing(show_tower_02), 1);
	
	game_save_no_timeout();
	
	sleep_s (1);

	// GONDOLA RIDE 4
	thread(f_sp01_gondola_player_effects());
	thread(f_audio_gondola_moving_start()); // gondola audio
	
	local long show_gondola_ride_04 = pup_play_show("pup_sp01_gondola_ride_04");
	sleep_until (not pup_is_playing(show_gondola_ride_04) , 1);
	thread(f_audio_gondola_moving_stop()); // gondola audio
	
	local long show_button_reset_02 = pup_play_show("pup_sp01_gondola_switch_reset");
	sleep_until (not pup_is_playing(show_button_reset_02) , 1);
	
	game_save_no_timeout();
	
	sleep_s(0.75);
	
	// :: SPIRE_01_SHEILD_LOCK
	dprint("SPIRE_01_SHEILD_LOCK");
	
	wake(f_nar_spire_gondola_carrier_wave_generator);
	//wake(f_sp01_main_objective_beam);
	
	sleep_until(b_sp01_deactivated, 1);
	thread(f_sp01_int_levers());
	thread(f_sp01_beams_effects_disable());
	
	game_save_no_timeout();
	
	f_unblip_flag(flg_sp01_shield_lock);
	
	// :: SPIRE_01_GONDOLA_END
	dprint("SPIRE_01_GONDOLA_END");
	sleep_until(b_sp01_bishop_attack, 1);
	sleep_s(5);
	f_blip_flag( flg_sp01_gondola_switch_03,"activate");
	f_gondola_button();
	f_unblip_flag( flg_sp01_gondola_switch_03 );
	
	local long show_button_gondola_03 = pup_play_show("pup_sp01_gondola_switch_03");
	sleep_until (not pup_is_playing(show_button_gondola_03) , 1);
end

//===============================================================================
//===============================================================================
script static void f_spire_02_end_path_generator_first()
	dprint("f_spire_02_end_path_generator_first");
	wake(f_nar_spire_gondola_carrier_wave_generator);
	
	sleep_until(device_get_position(dc_spire01_tower_02) != 0, 1);	
	f_unblip_flag( flg_sp01_tw02_switch );
	
	b_sp01_tower_2_spawn_exit = TRUE;
	
	local long show_tower_02 = pup_play_show("pup_sp01_tw02_switch");
	sleep_until (not pup_is_playing(show_tower_02), 1);
	
	game_save_no_timeout();
	
	sleep_s (1);

	// GONDOLA RIDE 4
	thread(f_sp01_gondola_player_effects());
	thread(f_audio_gondola_moving_start()); // gondola audio
	local long show_gondola_ride_04 = pup_play_show("pup_sp01_gondola_ride_04");
	sleep_until (not pup_is_playing(show_gondola_ride_04) , 1);
	thread(f_audio_gondola_moving_stop()); // gondola audio
	
	local long show_button_reset_02 = pup_play_show("pup_sp01_gondola_switch_reset");
	sleep_until (not pup_is_playing(show_button_reset_02) , 1);
	
	game_save_no_timeout();
	
	sleep_s(0.75);
		
	sleep_until(b_sp01_deactivated, 1);
	
	thread(f_sp01_int_levers());
	
	game_save_no_timeout();
	
	sleep_s(1);
	
	f_blip_flag( flg_sp01_gondola_switch_03,"activate");
	f_gondola_button();
	f_unblip_flag( flg_sp01_gondola_switch_03 );
	
	local long show_button_gondola_03 = pup_play_show("pup_sp01_gondola_switch_03");
	sleep_until (not pup_is_playing(show_button_gondola_03) , 1);
end
	
	
	//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
script dormant f_spire_01_setup()
	f_spire_01_tower_01_device_machines();
	f_spire_01_tower_02_device_machines();
	wake(f_spire_01_gondola_weapon_racks);
end

script dormant f_spire_01_gondola_weapon_racks()
	dprint("f_spire_01_gondola_weapon_racks");
	objects_physically_attach(dm_sp01_gondola, "m_crate_01", cr_sp01_wr_gondola_01, "" );
	objects_physically_attach(dm_sp01_gondola, "m_crate_02", cr_sp01_wr_gondola_02, "" );
	objects_physically_attach(dm_sp01_gondola, "m_crate_03", cr_sp01_wr_gondola_03, "" );
	objects_physically_attach(dm_sp01_gondola, "m_crate_04", cr_sp01_wr_gondola_04, "" );
	objects_physically_attach(dm_sp01_gondola, "m_crate_05", cr_sp01_wr_gondola_05, "" );
	objects_physically_attach(dm_sp01_gondola, "m_crate_06", cr_sp01_wr_gondola_06, "" );
end

script static void f_spire_01_tower_01_device_machines()
	thread(dm_sp01_tw1_bridge->f_activate( 1, 8, 4, 2.25));
	thread(dm_sp01_tw1_shield_right->f_activate( 1, 8, 4, 2.25));
	thread(dm_sp01_tw1_shield_left->f_activate( 1, 8, 4, 2.25));

end

script static void f_spire_01_tower_02_device_machines()
	thread(dm_sp01_tw2_bridge->f_activate( 1, 8, 4, 2.25));
	thread(dm_sp01_tw2_shield_right->f_activate( 1, 8, 4, 2.25));
	thread(dm_sp01_tw2_shield_left->f_activate( 1, 8, 4, 2.25));

end


script dormant f_sp01_gondola_squad_nudge()
	if not volume_test_players(tv_spire01_gondola) then
		f_blip_flag(flg_sp01_gondola_secure,  "recon");
		sleep_until(volume_test_players(tv_spire01_gondola), 1);
		f_unblip_flag(flg_sp01_gondola_secure);
	end
	sleep_s(25);
	if ai_living_count(sq_tw1_exit_knight) > 0 then
		thread(f_blip_ai_until_dead(sq_tw1_exit_knight));
		//thread(f_blip_ai_until_dead(sq_tw1_exit_pawn_01));
		//thread(f_blip_ai_until_dead(sq_tw1_exit_pawn_02));
	end
end
//==========================================================
//SPIRE 01 GONDOLA
//==========================================================

script static void f_gondola_button()
	device_set_power(dc_spire01_gondola_switch, 1);
	device_set_position_immediate(dc_spire01_gondola_switch, 0);
	sleep_until(device_get_position(dc_spire01_gondola_switch) != 0, 1);
	device_set_position_immediate(dc_spire01_gondola_switch, 0);
	device_set_power(dc_spire01_gondola_switch, 0);
end

script static void f_sp01_tower_01_button()
	device_set_power(dc_spire01_tower_01, 1);
	sleep_until(device_get_position(dc_spire01_tower_01) != 0, 1);
	device_set_power(dc_spire01_tower_01, 0);
end

script static void f_sp01_tower_02_button()
	device_set_power(dc_spire01_tower_02, 1);
	sleep_until(device_get_position(dc_spire01_tower_02) != 0, 1);
	device_set_power(dc_spire01_tower_02, 0);
end

//tv_tower_01_area
//tv_tower_02_area

//STUPID_CATCHER
script static void f_sp01_gondola_return_01()
	repeat
		if not volume_test_players(tv_tower_01_area) then
			dprint("DUM DUM JUMPED OFF BRING GONDOLA BACK");
			device_set_position_track(dm_sp01_gondola, "any:idle", 0.35);
			dprint("set animation");
			device_animate_position(dm_sp01_gondola, 0.35, 0, 0.1, 0.1, TRUE );
			dprint("set position");
			sleep(5);
			device_animate_position(dm_sp01_gondola, 0.02, 15, 0.1, 0.1, TRUE );
			dprint("animate back");
			sleep_until(device_get_position(dm_sp01_gondola) == 0.02 and volume_test_players(tv_spire01_gondola), 1);
			dprint("back and player on");
			sleep_s(1);
			device_animate_position(dm_sp01_gondola, 0.35, 25, 0.1, 0.1, TRUE );
			dprint("go forwadr");
			sleep_until(device_get_position(dm_sp01_gondola) == 0.35, 1);	
			dprint("done");
		end
	until(volume_test_players(tv_tower_01_area), 1);
end
//234 == 0.4875
//401 == 0.83541667

//==========================================================
//SPIRE 01 DOORS
//==========================================================

//INT DOORS
script static void f_sp01_door_enter()
	dprint("f_sp01_door_enter");
	sleep_until(volume_test_players(tv_sp01_hallway_teleport), 1);
	
	sleep(1);
	
	sleep_until(not volume_test_players(tv_dm_sp01_int_door_01), 1);
	
	device_set_power(dm_sp01_int_door_01, 0);
	
	sleep_until(device_get_position(dm_sp01_int_door_01) == 0, 1);
	
	if game_is_cooperative() then
		volume_teleport_players_not_inside(tv_sp01_hallway_check, flg_sp01_hallway_teleport);
		sleep(15);
	end
	
	zoneset_prepare_and_load( DEF_S_ZONESET_SPIRE_01_INT_A );


	device_set_power(dm_sp01_int_door_03, 1);
	
	game_save();	
	
	sleep_until(volume_test_players(tv_spire01_gondola), 1);
	
	sleep_until(1);
	
	sleep_until(not volume_test_players(tv_dm_sp01_int_door_03), 1);
	
	device_set_power(dm_sp01_int_door_03, 0);
	
	sleep_until(device_get_position(dm_sp01_int_door_03) == 0, 1);
				
	volume_teleport_players_inside(tv_sp01_hallway_check, flg_teleport_start);

end

//flip dis function.
script static void f_sp01_door_exit()

	device_set_power(dm_sp01_int_door_03, 1);
	
	sleep_until(volume_test_players(tv_sp01_hallway_teleport), 1);
	
	sleep(1);
	
	sleep_until(not volume_test_players(tv_dm_sp01_int_door_03), 1);
	
	device_set_power(dm_sp01_int_door_03, 0);
	
	sleep_until(device_get_position(dm_sp01_int_door_03) == 0, 1);
	
	if game_is_cooperative() then
		volume_teleport_players_not_inside(tv_sp01_hallway_check, flg_spire01_exit_teleport);
		sleep_s(1);
	end

	zoneset_prepare_and_load( DEF_S_ZONESET_SPIRE_01_EXT );
	
	
	device_set_power(dm_sp01_int_door_01, 1);
	
	game_save();
	
	thread(f_spire01_exit());
		
	sleep_until(vehicle_test_players(), 1);
	
	sleep(1);
	
	sleep_until(not volume_test_players(tv_dm_sp01_int_door_01), 1);
	
	device_set_power(dm_sp01_int_door_01, 0);
	
	sleep_until(device_get_position(dm_sp01_int_door_01) == 0, 1);
		
	volume_teleport_players_inside(tv_sp01_hallway_check, flg_spire01_exterior_teleport);
	
end

//==========================================================
//SPIRE 01 POWER SOURCE
//==========================================================

//STUN SHIELD
script dormant f_sp01_main_objective_beam()
	dprint("f_sp01_main_objective_beam");
	thread(f_sp01_shield_emp_disable( player0));
	thread(f_sp01_shield_emp_disable( player1));
	thread(f_sp01_shield_emp_disable( player2));
	thread(f_sp01_shield_emp_disable( player3));
end

script static void f_sp01_shield_emp_disable(player player_num)
	local real r_player_shield_current = object_get_shield(player_num);
	repeat 
	sleep_until(volume_test_object(tv_spire01_final_shieldbreak, player_num), 1);
	screen_effect_new( environments\solo\m70_liftoff\fx\energy\parts\spire_beam_walkin_screen.area_screen_effect, fx_08_spirebeam_big);
	thread(f_camera_shake_emp_hit(player_num));
	sleep_s(0.5);
	
	if volume_test_object(tv_spire01_final_shieldbreak, player_num) then

		thread(f_camera_shake_emp_hit(player_num));
		sleep_s(1);
		
		if volume_test_object(tv_spire01_final_shieldbreak, player_num) then
				if not b_sp01_deactivated then
					b_sp01_deactivated = TRUE;
					//xxx
					//disable beam effect for player
					effect_new( environments\solo\m70_liftoff\fx\energy\spire_beam_walkin_burst.effect, fx_08_spirebeam_big); 
					effect_delete_from_flag(environments\solo\m70_liftoff\fx\energy\spire_beam_walkin.effect, fx_08_spirebeam_big);
					thread(f_sp01_beams_effects_disable());
					
					thread(f_sp01_emp_shield_pop());
				end
		end
		screen_effect_delete ( environments\solo\m70_liftoff\fx\energy\parts\spire_beam_walkin_screen.area_screen_effect, fx_08_spirebeam_big);
	end
	until(b_sp01_deactivated, 1);
end

script static void f_sp01_emp_shield_pop()
	f_stun_player_shield( player0, 7);
	f_stun_player_shield( player1, 7);
	f_stun_player_shield( player2, 7);
	f_stun_player_shield( player3, 7);
end

script static void f_stun_player_shield( player player_number, real stun_time)
	object_set_shield(unit(player_number), 0.0);
	object_set_shield_stun(unit(player_number), stun_time);
	thread(f_camera_shake_emp_pop(player_number));
end

script static void f_sp01_destroy_beam(object_name beam)
	if object_valid(beam) then
		object_destroy(beam);
	end
end

	// SPIRE_01_EXIT
script static void f_spire01_exit()
	dprint("f_spire01_exit");
	sleep_until((current_zone_set_fully_active() == DEF_S_ZONESET_SPIRE_01_EXT), 1);
	game_save_no_timeout();
	
	if f_check_first_spire(DEF_SPIRE_01) then 
		s_flight_state = S_DEF_FLIGHT_STATE_SECOND();
	else
		s_flight_state = S_DEF_FLIGHT_STATE_THIRD();
	end
	sleep(15);
	
	f_spires_exit_clear_pelican();
	object_create(flight_pelican_sp01);
	thread(f_pelican_disable_extra_seats( flight_pelican_sp01, flight_pelican_sp01));
	sleep(5);
	thread(f_spire_exit_respawn_pelican( flight_pelican_sp01, flight_pelican_sp01, tv_sp01_pelican));
	sleep_s(4);
	thread(f_sp01_blip_pelican());
end

script static void f_sp01_gondola_player_effects()
dprint("camera_shake");
	sleep_until(sp01_gondola_moving, 1);
	
	//thread(f_rumble_gondola(player0));
//	thread(f_rumble_gondola(player1));
	//thread(f_rumble_gondola(player2));
	//thread(f_rumble_gondola(player3));
	
	repeat
	
		if volume_test_object(tv_gondola_path, player0) then
			thread(f_camera_shake_gondola(player0));
			player_effect_set_max_rumble_for_player(player0(), 0.1, 0.1);
		else
			player_effect_set_max_rumble_for_player(player0(), 0, 0);
		end
		
		if volume_test_object(tv_gondola_path, player1) then
			thread(f_camera_shake_gondola(player1));
			player_effect_set_max_rumble_for_player(player1(), 0.1, 0.1);
		else
			player_effect_set_max_rumble_for_player(player1(), 0, 0);
		end
		
		if volume_test_object(tv_gondola_path, player2) then
			thread(f_camera_shake_gondola(player2));
			player_effect_set_max_rumble_for_player(player2(), 0.1, 0.1);
		else
			player_effect_set_max_rumble_for_player(player2(), 0, 0);
		end
		
		if volume_test_object(tv_gondola_path, player3) then
			thread(f_camera_shake_gondola(player3));
			player_effect_set_max_rumble_for_player(player3(), 0.1, 0.1);
		else
			player_effect_set_max_rumble_for_player(player3(), 0, 0);
		end
		sleep(10);
	
	until(not sp01_gondola_moving, 1);
	player_effect_set_max_rumble_for_player(player0(), 0, 0);
	player_effect_set_max_rumble_for_player(player1(), 0, 0);
	player_effect_set_max_rumble_for_player(player2(), 0, 0);
	player_effect_set_max_rumble_for_player(player3(), 0, 0);
end

//Gondola
//xxx teleport
script static void f_sp01_start_left_behind()
	if not volume_test_players_all(tv_tower_01_area) then
		volume_teleport_players_not_inside(tv_tower_01_area, flg_teleport_tower_01 );
	end
end

script static void f_sp01_tower_01_left_behind()
	if not volume_test_players_all(tv_gondola_path) then
		volume_teleport_players_inside(tv_tower_01_area, flg_teleport_mid );
	end
end

script static void f_sp01_end_left_behind()
	if not volume_test_players_all(tv_gondola_path) then
		volume_teleport_players_inside(tv_tower_02_area, flg_teleport_end);
	end

end
//xxx
script static void f_sp01_end_left_behind_01()
	if not volume_test_players_all(tv_gondola_path) then
		volume_teleport_players_inside(tv_tower_01_area, flg_teleport_start);
		volume_teleport_players_inside(tv_tower_02_area, flg_teleport_start);
	end
	
end

script static void f_sp01_beam_effects_init()
	dprint("f_sp01_beam_effects_init");
	effect_new(environments\solo\m70_liftoff\fx\energy\spire_beam_cryptum.effect, fx_08_spirebeam_1);
	effect_new(environments\solo\m70_liftoff\fx\energy\spire_beam_cryptum.effect, fx_08_spirebeam_2);
	effect_new(environments\solo\m70_liftoff\fx\energy\spire_beam_cryptum.effect, fx_08_spirebeam_3);
	effect_new(environments\solo\m70_liftoff\fx\energy\spire_beam_cryptum.effect, fx_08_spirebeam_4);
	effect_new(environments\solo\m70_liftoff\fx\energy\spire_beam_cryptum.effect, fx_08_spirebeam_5);
	effect_new(environments\solo\m70_liftoff\fx\energy\spire_beam_cryptum.effect, fx_08_spirebeam_6);
	//big beam
	effect_new(environments\solo\m70_liftoff\fx\energy\spire_beam_walkin.effect, fx_08_spirebeam_big);
	effect_new(environments\solo\m70_liftoff\fx\energy\spire_beam_walkin_top.effect, fx_08_spirebeam_bigtop);

end

script static void f_sp01_beams_effects_disable()
	dprint("f_sp01_beams_effects_disable");
	effect_delete_from_flag(environments\solo\m70_liftoff\fx\energy\spire_beam_walkin_top.effect, fx_08_spirebeam_bigtop);
	sleep_s(2);
	effect_delete_from_flag(environments\solo\m70_liftoff\fx\energy\spire_beam_cryptum.effect, fx_08_spirebeam_6);
	sleep_s(1.5);
	effect_delete_from_flag(environments\solo\m70_liftoff\fx\energy\spire_beam_cryptum.effect, fx_08_spirebeam_5);
	sleep_s(1.25);
	effect_delete_from_flag(environments\solo\m70_liftoff\fx\energy\spire_beam_cryptum.effect, fx_08_spirebeam_4);
	sleep_s(1);
	effect_delete_from_flag(environments\solo\m70_liftoff\fx\energy\spire_beam_cryptum.effect, fx_08_spirebeam_3);
	sleep_s(0.5);
	effect_delete_from_flag(environments\solo\m70_liftoff\fx\energy\spire_beam_cryptum.effect, fx_08_spirebeam_2);
	sleep_s(0.25);
	effect_delete_from_flag(environments\solo\m70_liftoff\fx\energy\spire_beam_cryptum.effect, fx_08_spirebeam_1);

end

//XXX
global real r_lever_crouch = 0;

script static void f_sp01_int_levers()
	dprint("f_sp01_int_levers");
	if game_difficulty_get() >= "legendary" then
		thread(f_sp01_int_levers_test(player0));
		thread(	f_sp01_int_levers_test(player1));
		thread(f_sp01_int_levers_test(player2));
		thread(f_sp01_int_levers_test(player3));
		sleep_until(r_lever_crouch == 343 or volume_test_players(tv_spire01_int_enter), 1);
		sleep_s(0.25);
		if r_lever_crouch == 343 then
			dprint("you win funtime");
			object_create(ee_gh_01);
			object_create(ee_gh_02);
			object_create(ee_gh_03);
			object_create(ee_gh_04);
		end
	end
end


script static void f_sp01_int_levers_test(player p_player)
	repeat
		sleep_s(0.25);
		unit_action_test_reset(p_player);
		sleep_until(unit_action_test_cancel (p_player), 1);
		if volume_test_players(tv_spire01_final_shieldbreak) then
		r_lever_crouch = r_lever_crouch + 1;
		end
	until(r_lever_crouch == 343 or volume_test_players(tv_spire01_int_enter), 1);
end

/*
script static void f_sp01_null_blips()
	ai_place(sq_blip_null);
	sleep_s(1.25);
	ai_place(sq_blip_null);

end
*/

script command_script f_sp01_cs_null_blips()
	sleep(random_range(25, 30));
	ai_erase(ai_current_actor);
end


script static void f_sp01_checkpoint_combat(ai ai_group)
	local real save_on_squad_kill  = (ai_living_count(ai_group) * 0.65);
	sleep_until(ai_living_count(ai_group) <= save_on_squad_kill, 1);
	checkpoint_no_timeout( TRUE, "SPIRE 1 TOWER COMBAT CHECKPOINT" );
end


// --- End m70_spire_01.hsc ---

// --- Begin m70_spire_01_ai.hsc ---
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343
//
// Mission: 					m70
// 
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343

// =================================================================================================
// =================================================================================================
// spire_01_INT_AI
// =================================================================================================
// =================================================================================================
// variables
global boolean b_tw1_spawn_snipers     = false;
global boolean b_tw1_spawn_start       = false;
global boolean b_gondola_spawn_knights = false;
global boolean b_tw2_spawn_start 			 = false;
global boolean b_sp01_bishop_attack = FALSE;
//clean out old
global boolean B_obj_con_bridge = FALSE;
global boolean b_player_is_on_tower = FALSE;
global boolean b_player_is_on_tower_2 = FALSE;
global boolean b_ranger_be_at_switch = FALSE;
global boolean b_ranger_be_at_tower = FALSE;
global boolean b_ranger_be_at_start = TRUE;
global boolean b_airspace_invaded_tower_1 = FALSE;


// functions
// === f_spire_01_INT_AI_init::: Initialize
script dormant f_spire_01_AI_init()
	dprint( "::: f_spire_01_INT_AI_init :::" );

	// initialize modules
	sleep_until(f_spire_01_INT_Zone_Active(), 1);
	// initialize sub modules
	wake(f_spire_01_INT_ai_main);
	//wake( f_spire_01_INT_AI_CCC_init );

end

// === f_spire_01_INT_AI_deinit::: Deinitialize
script dormant f_spire_01_AI_deinit()
	dprint( "::: f_spire_01_INT_AI_deinit :::" );
	// kill functions
	sleep_forever( f_spire_01_AI_init );
end


//SPIRE 01
script dormant f_spire_01_INT_ai_main()

	sleep_until (volume_test_players (tv_sp01_tw1_start_sniper) or b_tw1_spawn_snipers, 1);	
	
	wake(f_spire01_nar_gondola_fire);
	
	wake(f_tower_1_spawn_controller);
	
	
	
	sleep_until(b_sp01_tower_1_spawn_exit == TRUE);
	
	wake(f_tower_1_spawn_exit);
	
	//sleep_until(volume_test_players (tv_gondola_spawn_knights) or b_gondola_spawn_knights, 1 );
	sleep_until(b_gondola_spawn_knights, 1 );
	
	ai_erase (sg_tower_1_starter);
	ai_erase (sg_tower_1_c);
	ai_erase (sg_tower_1_exit);
	
	
	wake(f_sp01_gondola_01);
	sleep_s(1.5);
	wake(f_sp01_tower_2_ranger);
	sleep_until(volume_test_players(tv_sp01_tw2_start) or b_tw2_spawn_start, 1 );
	//xxx
	//tower2
	wake(f_tower_2_spawn_controller);
	wake(f_sp01_bishop_controller);
	
	sleep_until(b_sp01_tower_2_spawn_exit, 1 );
	
	wake(f_sp01_tw02_spawn_exit);	
	//sleep_until(B_GONDOLA_ACTIVE, 1 );
	//wake(f_sp01_tw01_spawn_end_main);
	
end

script dormant f_sp01_bishop_controller()
	dprint("f_sp01_bishop_controller");
	sleep_until(b_sp01_bishop_attack, 1 );
	
	if not b_sp01_deactivated then
		ai_place(sq_end_bishop_01);
		ai_place(sq_end_bishop_02);
	else
		dprint("blah blah why is this spawning");
		ai_place(sq_end_bishop_01);
		ai_place(sq_end_bishop_02);
		ai_place(sq_end_bishop_04);
	end
	
end


//sg_sp01_exit_bishops
script dormant f_spawning_bridge_control

		sleep_until (ai_living_count (sg_tower_1_starter) <= 19);
		sleep_until (not volume_test_players (tv_bridge_safe_to_spawn), 1);
		ai_place (sq_tower_1_c_1);
		
		sleep_until (ai_living_count (sg_tower_1_starter) <= 18);
		sleep_until (not volume_test_players (tv_bridge_safe_to_spawn), 1);
		ai_place (sq_tower_1_c_2);		
		
		sleep_until (ai_living_count (sg_tower_1_starter) <= 16);
		sleep_until (not volume_test_players (tv_bridge_safe_to_spawn), 1);
		ai_place (sq_tower_1_c_3);
		
		sleep_until ((ai_living_count (sg_tower_1_starter ) +  ai_living_count (sg_tower_1_switch )) <= 19);
		sleep_until (not volume_test_players (tv_bridge_safe_to_spawn), 1);
		ai_place (sq_tower_1_jackal_re);
		
end

script dormant f_tower_1_spawn_controller()
	sleep_s (2);
	//ai_place (sq_tower_1_turrets);
	ai_place(sq_tower_1_sniper_1);
	ai_place(sq_tower_1_sniper_2);
	ai_place(sq_tower_1_sniper_3);
	sleep_until(ai_living_count(sg_tower_1_snipers) < 3 or volume_test_players (tv_spawn_tower_1_start) or b_tw1_spawn_start, 1);
	if ai_living_count(sg_tower_1_snipers) < 3 then
		ai_place(sq_tower_1_sniper_4);
	end
	sleep_until (volume_test_players (tv_spawn_tower_1_start) or b_tw1_spawn_start, 1);	
	ai_place (sg_tower_1_a);
	ai_place (sg_tower_1_b);
	ai_place (sg_tower_1_switch);
	//ai_place (sg_tower_1_snipers);
	//xxx combat checkpoint
	thread(f_sp01_checkpoint_combat(sg_sp01_tw01));
	
	wake (f_spawning_bridge_control);
	wake (f_player_tower_1_checker);
	wake (f_airspace_tower_1_checker);
	wake (f_spawning_bridge_control);
end

script dormant f_player_tower_1_checker

	sleep_until (volume_test_players (tv_player_tower_1), 1);
	b_player_is_on_tower = true;

end

script dormant f_player_tower_2_checker

	sleep_until (volume_test_players (tv_player_on_tower_2), 1);
	b_player_is_on_tower_2 = true;

end

script dormant f_airspace_tower_1_checker
	
	sleep_until (volume_test_players (tv_airspace_tower_1), 1);
	b_airspace_invaded_tower_1 = true;
	
end

script dormant f_tower_1_spawn_exit()
	dprint ("spawn exit");
	sleep_s(0.75);
	//ai_place (sg_tower_1_exit);
	ai_place_in_limbo (sq_tw1_exit_knights_01);
	ai_place_in_limbo (sq_tw1_exit_knights_02);
	ai_place_in_limbo (sq_tw1_exit_knight);
		ai_allow_resurrect(sq_tw1_exit_knight, false);
	if ( ai_living_count(sg_tower_1_starter) + ai_living_count(sg_tower_1_exit) ) <= 14 then
		ai_place(sq_tw1_exit_pawn_03);
	end
end

script static void f_sp01_pup_gondola_ride_02()
	pup_play_show(pup_sp01_gondola_ride_02);
end

script static void f_sp01_tower_1_exit_pawns_pup_1()
	pup_play_show(pup_sp01_gondola_pawns_01);
end

script static void f_sp01_tower_1_exit_pawns_pup_2()	
	pup_play_show(pup_sp01_gondola_pawns_02);
end

script dormant f_spire01_nar_gondola_fire()
	if f_check_first_spire(DEF_SPIRE_01) then
		sleep_until( ai_is_shooting(sg_sp01_tw01),1);
		sleep_s(0.5);
		wake(f_dlg_spire_01_gondola_taking_fire);
	end
end

//=====================================================
//SPAWN TOWER 01
//=====================================================


//SWITCH KNIGHT
script static void f_switch_knight( ai knight, ai elite)
	ai_enter_limbo(knight); 
	repeat
		if ai_living_count(elite) < 1 then
			sleep_s(1.25);
			cs_queue_command_script(knight, cs_phase_in_on_spawn);
			ai_exit_limbo(knight);
		end
		sleep_s(3);
	until(b_sp01_tower_1_spawn_exit == TRUE or ai_in_limbo_count(knight) < 1); 
	if ai_in_limbo_count(knight) > 1 then
		ai_erase(knight); //kill knight if he is in limbo
	end
end

//EXIT
script dormant f_sp01_tw01_spawn_exit()
	dprint("f_sp01_tw01_spawn_exit");
	ai_place(sg_sp01_tw01_exit);
end

script command_script cs_turret

	sleep (3);
	AutomatedTurretActivate(ai_vehicle_get_from_spawn_point (sq_tower_1_turrets.turret_1));
	AutomatedTurretActivate(ai_vehicle_get_from_spawn_point (sq_tower_1_turrets.turret_2));

end

script command_script cs_turret_2

	sleep (3);
	AutomatedTurretActivate(ai_vehicle_get_from_spawn_point (sq_tower_2_turrets.turret_1));
	AutomatedTurretActivate(ai_vehicle_get_from_spawn_point (sq_tower_2_turrets.turret_2));

end

//=====================================================
//SPAWN GONDOLA TRANSITION FIGHT
//=====================================================
script dormant f_sp01_gondola_01()
dprint("f_sp01_gondola_01");

	ai_place_in_limbo(sq_gondola_knight_01);
	ai_allow_resurrect(sq_gondola_knight_01, false);
	sleep_s(0.75);
	if (ai_living_count(sq_tw1_exit_knight) + ai_living_count(sq_gondola_knight_01)) <= 1 then 
		ai_place_in_limbo(sq_gondola_knight_02);
		ai_allow_resurrect(sq_gondola_knight_02, false);
	end
	game_save_no_timeout();
end

script static boolean f_tower_2_ranger_valid()
 ai_living_count(sq_gondola_knight_01) + ai_living_count(sq_gondola_knight_02) + ai_living_count(sq_tw1_exit_knight) == 0;
end

// TOWER 2 ranger
script dormant f_sp01_tower_2_ranger()
	sleep_until(f_tower_2_ranger_valid() or b_tw2_spawn_start, 1);
	sleep_s(0.25);
	ai_place_in_limbo(sq_tower_2_ranger);
end



//=====================================================
//SPAWN TOWER 2
//=====================================================
script dormant f_tower_2_spawn_controller()
	dprint("Tower 2 Spawn");
	//ai_place(sg_tower_2_starter);
	ai_place(sq_tower_2_a_1);
	ai_place(sq_tower_2_a_2);
	ai_place_in_limbo(sq_tower_2_battlewagon);
	ai_place(sq_tower_2_bishop_01);
	ai_place(sq_tower_2_bishop_02);
	ai_place_with_shards(sq_tower_2_d_1);
	
	//xxx combat checkpoint
	thread(f_sp01_checkpoint_combat(sg_sp01_tw02));

	wake (f_spawning_bridge_control_2);
	wake (f_ranger_phase_to);
	wake (f_ranger_shooting);
	wake (f_tw2_bishop_spawn);
end



//ai_cannot_die (object_get_ai (pup_current_puppet), TRUE);
script dormant f_spawning_bridge_control_2()
//not volume_test_players (tv_bridge_safe_to_spawn_2)
		sleep_until (ai_living_count (sg_tower_2_starter) <= 16, 1);
		ai_place_with_shards(sq_tower_2_b_1);
		ai_place_with_shards(sq_tower_2_b_2);
		ai_place(sq_tower_2_bishop_03);	
		sleep_until (ai_living_count (sg_tower_2_starter) <= 16, 1);
		ai_place_with_shards (sq_tower_2_c_1);
		ai_place_with_shards (sq_tower_2_c_2);
		
end

script dormant f_tw2_bishop_spawn()
	sleep_until(ai_living_count(sq_tower_2_bishop_01) + ai_living_count(sq_tower_2_bishop_02) < 2, 1);
	ai_place(sq_tower_2_bishop_03);
end

script dormant f_ranger_re

		sleep (30 * 2);
		//sleep_until (ai_living_count (sq_tower_2_ranger) < 1);
		sleep_until ( not sp01_gondola_moving, 1);
		//if b_ranger_be_at_start == true then
		
			sleep(30 * 2);
			ai_place_in_limbo (sq_tower_2_ranger_re);
			b_ranger_be_at_start = false;
			b_ranger_be_at_tower = true;	
			
			sleep_until (volume_test_players (tv_ranger_move), 1);

			sleep (30 * 5);
			cs_phase_to_point (sq_tower_2_ranger_re, true, ps_ranger.switch);
			b_ranger_be_at_tower = false;
			b_ranger_be_at_switch = true;
		//end 
		
		
end


script dormant f_sp01_tw02_spawn_exit()
	dprint("f_sp01_tw02_spawn_exit");
	sleep_s(3);
	sleep_until(volume_test_players_lookat(tv_spire01_tw02_see_gondola, 16, 16), 1);
	ai_place_in_limbo(sq_tw2_knight);
	ai_allow_resurrect(sq_tw2_knight, false);
	ai_place_in_limbo(sq_tw2_exit_commander);
	ai_allow_resurrect(sq_tw2_exit_commander, false);
	//ai_place(sg_sp01_tw02_exit);
end

script dormant f_sp01_tw01_spawn_end_main()
	dprint("f_sp01_tw01_spawn_end_main");
	ai_place(sg_sp01_end_main);
	ai_set_active_camo(sg_sp01_end_main, TRUE);
end

//Command Scripts Turrets
script command_script cs_unstealth()
	ai_set_active_camo(sg_sp01_end_main, FALSE);
	ai_berserk(ai_current_actor, TRUE);
end


script dormant f_ranger_shooting()
	sleep_until(ai_is_shooting(sq_tower_2_ranger), 1);
	thread(f_dialog_m70_callout_look_out());
end

script dormant f_ranger_phase_to
	if game_difficulty_get() == "legendary" then
		wake (f_ranger_re);
	end
	sleep_until (volume_test_players (tv_player_on_tower_2), 1);
	b_ranger_be_at_start = false;
	b_ranger_be_at_tower = true;	
	
	cs_phase_to_point (sq_tower_2_ranger, true, ps_ranger.other_tower);
	sleep_until (volume_test_players (tv_ranger_move), 1);
	sleep (30 * 5);
	cs_phase_to_point (sq_tower_2_ranger, true, ps_ranger.switch);
	b_ranger_be_at_tower = false;
	b_ranger_be_at_switch = true;

end

script command_script cs_berserk()
	ai_berserk(ai_current_actor, TRUE);
end


script command_script cs_sp01_bishop_end_01()
	cs_move_towards_point(ps_end_bishop.p0, 1);	
end

script command_script cs_sp01_bishop_end_02()
	cs_move_towards_point(ps_end_bishop.p1, 1);	
end

script command_script cs_sp01_bishop_end_03()
	cs_move_towards_point(ps_end_bishop.p2, 1);
end

script command_script cs_sp01_bishop_end_04()
	cs_move_towards_point(ps_end_bishop.p3, 1);
end

script command_script cs_sp01_bishop_end_05()
	cs_move_towards_point(ps_end_bishop.p4, 1);
end

script command_script cs_sp01_bishop_end_06()
	cs_move_towards_point(ps_end_bishop.p5, 1);
end

script command_script cs_sp01_bishop_end_07()
	cs_move_towards_point(ps_end_bishop.p6, 1);
end

script command_script cs_just_phase_in

	cs_phase_in_blocking();
	
end




// --- End m70_spire_01_ai.hsc ---

// --- Begin m70_spire_01_audio.hsc ---
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343
//
// Mission: 					m70
//
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343

// =================================================================================================
// =================================================================================================
// spire_01_INT_audio
// =================================================================================================
// =================================================================================================
// variables

// functions
// === f_spire_01_INT_audio_init::: Initialize
script dormant f_spire_01_audio_init()
	dprint( "::: f_spire_01_INT_audio_init :::" );

	// initialize modules
	wake(f_spire_01_encounter_audio);
	// initialize sub modules
	//wake( f_spire_01_INT_audio_CCC_init );

end

// === f_spire_01_INT_audio_deinit::: Deinitialize
script dormant f_spire_01_audio_deinit()
	dprint( "::: f_spire_01_INT_audio_deinit :::" );

	// kill functions
	sleep_forever( f_spire_01_audio_init );
	sleep_forever(f_spire_01_encounter_audio);
	// deinitialize modules

	// deinitialize sub modules
	//wake( f_spire_01_INT_audio_CCC_deinit );

end


script dormant f_spire_01_encounter_audio()
	dprint("f_spire_01_encounter_audio");
	sleep_until(object_valid(dm_sp01_gondola), 1);
	sleep_s(1);
	sleep_until( sp01_gondola_moving, 1 );
	thread(f_mus_m70_e02_begin());
	//xxx need to update volume
	sleep_until(volume_test_players(tv_sp01_int_to_ext), 1);
	
	thread(f_mus_m70_e03_finish());
end
// --- End m70_spire_01_audio.hsc ---

// --- Begin m70_spire_01_fx.hsc ---
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343
//
// Mission: 					m70
//
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343

// =================================================================================================
// =================================================================================================
// spire_01_INT_FX
// =================================================================================================
// =================================================================================================
// variables

// functions
// === f_spire_01_INT_FX_init::: Initialize
script dormant f_spire_01_FX_init()
	dprint( "::: f_spire_01_INT_FX_init :::" );

	// initialize modules

	// initialize sub modules
	//wake( f_spire_01_INT_FX_CCC_init );

end

// === f_spire_01_INT_FX_deinit::: Deinitialize
script dormant f_spire_01_FX_deinit()
	dprint( "::: f_spire_01_INT_FX_deinit :::" );

	// kill functions
	sleep_forever( f_spire_01_FX_init );

	// deinitialize modules

	// deinitialize sub modules
	//wake( f_spire_01_INT_FX_CCC_deinit );

end


/*
// -------------------------------------------------------------------------------------------------
// spire_01_INT_FX: CCC
// -------------------------------------------------------------------------------------------------
// variables
//global boolean <t>_spire_01_INT_FX_<NAME> = <VALUE>;

// functions
// === f_spire_01_INT_FX_CCC_init::: Initialize spire_01_INT_FX: CCC sub module
script dormant f_spire_01_INT_FX_CCC_cleanup()
	dprint( "::: f_spire_01_INT_FX_CCC_cleanup :::" );

	// XXX_TODO

end

// === f_spire_01_INT_FX_CCC_deinit::: Initialize spire_01_INT_FX: CCC sub module
script dormant f_spire_01_INT_FX_CCC_deinit()
	dprint( "::: f_spire_01_INT_FX_CCC_deinit :::" );

	// XXX_TODO

end
*/




// -------------------------------------------------------------------------------------------------
//  Gondola Tether FX Start
// -------------------------------------------------------------------------------------------------
script static void fx_gondola_tether_start()

    // start beam
    effect_new(environments\solo\m70_liftoff\fx\energy\gondola_tether.effect, fx_tether_start);
    effect_new_between_points(environments\solo\m70_liftoff\fx\energy\gondola_tether_beam.effect, fx_tether_start, fx_tether_end);

    effect_new(environments\solo\m70_liftoff\fx\energy\gondola_tether_chargeup.effect, fx_tether_start_chargeup);
    effect_new(environments\solo\m70_liftoff\fx\energy\gondola_tether_chargeup.effect, fx_tether_end_chargeup);

    // start beam intersection glows
    effect_new(environments\solo\m70_liftoff\fx\energy\gondola_tether_glow.effect, fx_tether_start);
    effect_new(environments\solo\m70_liftoff\fx\energy\gondola_tether_glow.effect, fx_tether_end);
 
 		if not object_valid ( gondola_light_beam ) then
		object_create ( gondola_light_beam ); //TURN ON GONDOLA LIGHT BEAM AUDIO
		end
    // start beam intersection glows on gondola
    //effect_new_on_object_marker( environments\solo\m70_liftoff\fx\energy\gondola_tether_glow.effect, GONDOLA_NAME, fx_gondola_beam_front);
    //effect_new_on_object_marker( environments\solo\m70_liftoff\fx\energy\gondola_tether_glow.effect, GONDOLA_NAME, fx_gondola_beam_back);


end

// -------------------------------------------------------------------------------------------------
//  Gondola Tether FX Stop
// -------------------------------------------------------------------------------------------------
script static void fx_gondola_tether_stop()

    // stop beam
    effect_delete_from_flag(environments\solo\m70_liftoff\fx\energy\gondola_tether.effect, fx_tether_start);
    effect_delete_from_flag(environments\solo\m70_liftoff\fx\energy\gondola_tether_beam.effect, fx_tether_start);
    effect_delete_from_flag(environments\solo\m70_liftoff\fx\energy\gondola_tether_chargeup.effect, fx_tether_start_chargeup);
    effect_delete_from_flag(environments\solo\m70_liftoff\fx\energy\gondola_tether_chargeup.effect, fx_tether_end_chargeup);

    // stop beam intersection glows
    effect_delete_from_flag(environments\solo\m70_liftoff\fx\energy\gondola_tether_glow.effect, fx_tether_start);
    effect_delete_from_flag(environments\solo\m70_liftoff\fx\energy\gondola_tether_glow.effect, fx_tether_end);

		object_destroy ( gondola_light_beam ); //TURN OFF GONDOLA LIGHT BEAM AUDIO
    // stop beam intersection glows on gondola
    //effect_stop_object_marker( environments\solo\m70_liftoff\fx\energy\gondola_tether_glow.effect, GONDOLA_NAME, fx_gondola_beam_front);
    //effect_stop_object_marker( environments\solo\m70_liftoff\fx\energy\gondola_tether_glow.effect, GONDOLA_NAME, fx_gondola_beam_back);

end



// --- End m70_spire_01_fx.hsc ---

// --- Begin m70_spire_02.hsc ---
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343
//
// Mission: 					m70
//
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343

// =================================================================================================
// =================================================================================================
// SPIRE_02
// =================================================================================================
// =================================================================================================
//SPIRE_02_FUNCTION_INDEX
// SPIRE_02_VARIABLES
// SPIRE_02_FUNCTIONS
// :: SPIRE_02_CLEANUP
// :: SPIRE_02_ZONE_ACTIVE
// SPIRE_02_MAIN
// SPIRE_02_CHECKPOINTS
// SPIRE_02_OBJECTIVE_BLIPS
// SPIRE_02_CORES
// SPIRE_02_CORE_CHECKS
// SP02_CORE_DEVICE_FUNCTIONS
// SPIRE_02_CORE_DESTROYED_ORDER
// SPIRE_02_CORE_DYNAMIC_COVER
// SPIRE_02_EXIT
// SPIRE_02_DOORS
// =========================
// SPIRE_02_VARIABLES
// =========================

global short S_SP02_OBJ_CON														= 0;
global short S_SP02_FIRST_CORE												= 0;
global short S_SP02_SECOND_CORE												= 0;
global short S_SP02_CORES_ACTIVE											= 0;
global short S_SP02_CORES_DESTROYED										= 0;

script static short S_DEF_OBJ_CON_SP02_START()			1; end
script static short S_DEF_OBJ_CON_SP02_TWO_CORE()		2; end
script static short S_DEF_OBJ_CON_SP02_ONE_CORE()		3; end
script static short S_DEF_OBJ_CON_SP02_ZERO_CORE()	4; end
script static short S_DEF_OBJ_CON_SP02_COMPLETE()		5; end

script static short DEF_SP02_CORE_01()			1; end
script static short DEF_SP02_CORE_02()			2; end
script static short DEF_SP02_CORE_03()			3; end


global boolean b_spire_02_button_active = FALSE;

//=============================
// SPIRE_02_FUNCTIONS
//=============================

script dormant f_spire_02_init()
	dprint( "::: f_spire_02_init :::" );
	wake(f_spire_02_cleanup);

	sleep_until( f_spire_02_Zone_Active() and (not f_spire_state_complete(DEF_SPIRE_02)) and f_spire_state_active(DEF_SPIRE_02), 1 );

	wake(f_spire_02_main);
end


// :: SPIRE_02_CLEANUP
script dormant f_spire_02_Cleanup()
	sleep_until( f_spire_state_complete(DEF_SPIRE_02) and (f_spire_state_active(DEF_SPIRE_02)), 1 );
	dprint( "::: f_spire_02_Cleanup :::" );

	sleep_forever( f_spire_02_main );

	wake(f_spire_02_AI_deinit);
end

// :: SPIRE_02_ZONE_ACTIVE
script static boolean f_spire_02_INT_Zone_Active()
	( current_zone_set_fully_active() >= DEF_S_ZONESET_SPIRE_02_INT_A ) and ( current_zone_set_fully_active() <= DEF_S_ZONESET_SPIRE_02_INT_B );
end

script static boolean f_spire_02_Zone_Active()
	(current_zone_set_fully_active() == DEF_S_ZONESET_SPIRE_02_EXT) or  f_spire_02_INT_Zone_Active();
end



// =======================
// SPIRE_02_MAIN
// =======================

script dormant f_spire_02_main()
	dprint("f_spire_02_INT_main_init");
	
	
//TODO: MAKE A CHECK FOR SPIRE CONDITIONS FIRST AND SECOND STAGING
//f_check_first_spire() 
//S_SPIRE_FIRST = S_SPIRE_TWO;
	thread(f_sp02_door_enter());
	sleep_until(f_spire_02_INT_Zone_Active(), 1);

	if f_check_first_spire(DEF_SPIRE_01) then 
		s_flight_state = S_DEF_FLIGHT_STATE_SECOND_COMPLETE();
			dprint("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx");
			dprint("game insertion point unlock 4");
			dprint("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx");
		game_insertion_point_unlock(4);
	else
		s_flight_state = S_DEF_FLIGHT_STATE_START_COMPLETE();
		dprint("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx");
		dprint("game insertion point unlock 3");
		dprint("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx");
		game_insertion_point_unlock(3);
	end
	data_mine_set_mission_segment ("m70_spire_02"); 
	player_set_profile( profile_coop_respawn );
	garbage_collect_now();
	
	wake( spire_02_doors );
	wake(f_spire_02_checkpoints);
	wake(f_spire_02_AI_init);

	
	game_save();
	f_spire_02_core_button();

	//objectives_show_up_to(2);
/*
	if f_check_first_spire(DEF_SPIRE_02) then
			objectives_show_up_to(2);
	elseif f_check_first_spire(DEF_SPIRE_01) then
			objectives_show_up_to(3);
	end
*/
	sleep_s(0.25);
	wake(f_sp02_core_start);
	wake(f_sp02_blip_cores);
	wake(f_core_destroyed_order);
	
	thread(f_sp02_checkpoint_combat());
	
	S_SP02_OBJ_CON = S_DEF_OBJ_CON_SP02_START();
	
	sleep_until(S_SP02_CORES_DESTROYED >= 1, 1);

	S_SP02_OBJ_CON = S_DEF_OBJ_CON_SP02_TWO_CORE();
	
	sleep_until(S_SP02_CORES_DESTROYED >= 2, 1);
	
	S_SP02_OBJ_CON = S_DEF_OBJ_CON_SP02_ONE_CORE();
	
	sleep_until(S_SP02_CORES_DESTROYED >= 3, 1);
	
	S_SP02_OBJ_CON = S_DEF_OBJ_CON_SP02_ZERO_CORE();
	
	wake(f_sp02_blip_exit);
	
	if f_check_first_spire(DEF_SPIRE_02) then
			objectives_finish(2);
	elseif f_check_first_spire(DEF_SPIRE_01) then
			objectives_finish(3);
	end
	
	thread(f_sp02_door_exit());
	thread(f_checkpoint_comander());
	
	if game_difficulty_get() >= "Legendary" then
		thread(f_knight_attack_check());
	end
	
	sleep_until(volume_test_players(tv_sp02_int_to_ext), 1);

	S_SP02_OBJ_CON = S_DEF_OBJ_CON_SP02_COMPLETE();
	
	f_spire_state_set ( DEF_SPIRE_02, DEF_SPIRE_STATE_COMPLETE());
	
	sleep(15);
	
end



script static void f_spire_02_core_button()
	sleep_until(b_spire_02_button_active and object_valid(dc_sp02_core_control), 1);
	dprint("f_spire_02_core_button");
	
	device_group_set_immediate ( dg_sp02_core_control, 1);
	device_set_position_immediate(dc_sp02_core_control, 0);
	
	sleep_until(device_get_position( dc_sp02_core_control ) != 0, 1);
	
	device_group_set_immediate ( dg_sp02_core_control, 0);
	f_unblip_flag (flg_spire02_switch);
	local long show_sp02_switch = pup_play_show("pup_sp02_switch");
	sleep_until(not pup_is_playing (show_sp02_switch), 1);
	game_save_no_timeout();
end


//===============================
// SPIRE_02_CHECKPOINTS
//===============================

script dormant f_spire_02_checkpoints()
	
	dprint("Spire_03_checkpoints");
	//checkpoint_no_timeout( TRUE, "SPIRE_02_START" );
	game_save_no_timeout();
	sleep_until(S_SP02_OBJ_CON == S_DEF_OBJ_CON_SP02_TWO_CORE(), 1);
	
	//checkpoint_no_timeout( TRUE, "SPIRE_02_FIRST_CORE_DESTROYED" );
	game_save_no_timeout();
	sleep_until(S_SP02_OBJ_CON == S_DEF_OBJ_CON_SP02_ONE_CORE(), 1);
	
	//checkpoint_no_timeout( TRUE, "SPIRE_02_SECOND_CORE_DESTROYED" );
	game_save_no_timeout();
	sleep_until(S_SP02_OBJ_CON == S_DEF_OBJ_CON_SP02_ZERO_CORE(), 1);
	
	//checkpoint_no_timeout( TRUE, "SPIRE_02_LAST_CORE_GONE" );
	game_save_no_timeout();
	sleep_until(S_SP02_OBJ_CON == S_DEF_OBJ_CON_SP02_COMPLETE(), 1);
	game_save_no_timeout();
	//checkpoint_no_timeout( TRUE, "SPIRE_02_SPIRE_02_COMPLETE" );
end

//===============================
// SPIRE_02_OBJECTIVE_BLIPS
//===============================

script dormant f_sp02_blip_cores()
	dprint("f_sp02_blip_cores");
	thread(f_sp02_core_blip( DEF_SP02_CORE_01(), cr_sp02_core_01) );
	thread(f_sp02_core_blip( DEF_SP02_CORE_02(), cr_sp02_core_02) );
	thread(f_sp02_core_blip( DEF_SP02_CORE_03(), cr_sp02_core_03) );
	wake(f_sp02_core_nudge);
end

script static void f_sp02_core_blip( short core_number, object_name obj_core )
	sleep_until(f_sp02_core_valid(core_number), 1);
	sleep(30);
	sleep_until(volume_test_players(f_core_trigger(core_number)) or S_SP02_OBJ_CON >= S_DEF_OBJ_CON_SP02_ONE_CORE(), 1);
	
	if S_SP02_OBJ_CON >= S_DEF_OBJ_CON_SP02_ONE_CORE() then
		sleep_s(4);
	end
	
	sleep_s(3);
	if f_sp02_core_valid(core_number) then
		if core_number ==  DEF_SP02_CORE_01() then
			f_blip_object(obj_core, "destroy");
		elseif core_number ==  DEF_SP02_CORE_02() then
			f_blip_object(obj_core, "destroy");
		elseif core_number ==  DEF_SP02_CORE_03() then
			f_blip_object(obj_core, "destroy");
		end
	end	
end

script dormant f_sp02_core_nudge()
	dprint("START NUDGE");
	sleep_until(object_valid(cr_sp02_core_01) and object_valid(cr_sp02_core_02) and object_valid(cr_sp02_core_03), 1);
	sleep_s(45);
	if S_SP02_CORES_ACTIVE == 0 then
		f_blip_object(cr_sp02_core_02, "destroy");
	end
	sleep_until(S_SP02_CORES_DESTROYED >= 1, 1);
	sleep_s(45);	
	if S_SP02_CORES_ACTIVE < 2 then
		if object_valid(cr_sp02_core_02) then
			f_blip_object(cr_sp02_core_02, "destroy");
		elseif object_valid(cr_sp02_core_03) then
			f_blip_object(cr_sp02_core_03, "destroy");
		elseif object_valid(cr_sp02_core_01) then
			f_blip_object(cr_sp02_core_01, "destroy");
		end
	end
end

script dormant f_sp02_blip_exit()
	sleep_s(3);
	f_blip_flag(flg_sp02_exit, "recon");
	sleep_until( volume_test_players(tv_spire02_objective_start) or volume_test_players(tv_sp02_hallway_check), 1) ;
	f_unblip_flag(flg_sp02_exit);
end

//=======================================
// SPIRE_02_CORES
//=======================================

script dormant f_sp02_core_start()
	dprint("f_sp02_core_start");
	wake(f_nar_knight_callouts);
	thread(f_sp02_core(DEF_SP02_CORE_02(), sg_core_02_knights));
	sleep_s(real_random_range(0.5, 1));
	thread(f_sp02_core(DEF_SP02_CORE_03(), sg_core_03_knights));
	sleep_s(real_random_range(0.5, 1));
	thread(f_sp02_core(DEF_SP02_CORE_01(), sg_core_01_knights ));
	//wake(f_sp02_core_01_start);
	sleep_s(1.5);
	wake(f_sp02_create_core_effect);
	
end

script dormant f_sp02_core_01_start()
	sleep_until(volume_test_players(tv_spire02_core_01) or volume_test_players_lookat( tv_spire02_core_01, 20, 20) or S_SP02_CORES_DESTROYED > 0, 1);
	thread(f_sp02_core(DEF_SP02_CORE_01(), sg_core_01_knights ));
end

script static void f_sp02_core(short core_number, ai core_gaurd)
	dprint("f_sp02_core");
	
	f_sp02_core_activate(core_number); //ACTIVATE CORE
	
	sleep_until(f_sp02_core_valid(core_number), 1);
	
	sleep_s(2);
	
	sleep_until(volume_test_players(f_core_trigger(core_number)) or not f_sp02_core_valid(core_number), 1);
	
		if f_sp02_core_valid(core_number) then 
			S_SP02_CORES_ACTIVE = S_SP02_CORES_ACTIVE + 1;
		end
	
	sleep_s(2);
	
	sleep_until( f_sp02_core_open_check( core_number, core_gaurd ) or not f_sp02_core_valid(core_number), 1);
	
		if f_sp02_core_valid(core_number) then 
			sleep_s(2);
			f_sp02_core_open( core_number ); //REVEAL CORE
		end	
		
	sleep_until (not f_sp02_core_valid(core_number), 1);
	thread(f_sp02_remove_core_effect());
	sleep(15);	
	thread(f_sp02_core_destroy( core_number)); //DESTROY CORE
	dprint("A CORE HAS BEEN DEFEATED");
	S_SP02_CORES_DESTROYED = (S_SP02_CORES_DESTROYED + 1); //INCREASE CORE DEATH COUNT
end


script dormant f_sp02_create_core_effect()
	dprint("f_sp02_add_core_effect");
	sleep_until(f_sp02_core_valid(DEF_SP02_CORE_01()), 1);
	effect_new(environments\solo\m70_liftoff\fx\energy\spire_beam_cryptum.effect, fx_11_spirebeam_center);

	sleep_until(f_sp02_core_valid(DEF_SP02_CORE_02()), 1);
	effect_new(environments\solo\m70_liftoff\fx\energy\spire_beam_cryptum.effect, fx_11_spirebeam_left);

	sleep_until(f_sp02_core_valid(DEF_SP02_CORE_03()), 1);
	effect_new(environments\solo\m70_liftoff\fx\energy\spire_beam_cryptum.effect, fx_11_spirebeam_right);

end

script static void f_sp02_remove_core_effect()
	if not f_sp02_core_valid(DEF_SP02_CORE_01()) then
		effect_delete_from_flag(environments\solo\m70_liftoff\fx\energy\spire_beam_cryptum.effect, fx_11_spirebeam_center);
	elseif not f_sp02_core_valid(DEF_SP02_CORE_02()) then
  	effect_delete_from_flag(environments\solo\m70_liftoff\fx\energy\spire_beam_cryptum.effect, fx_11_spirebeam_left);
	elseif not f_sp02_core_valid(DEF_SP02_CORE_03()) then
		effect_delete_from_flag(environments\solo\m70_liftoff\fx\energy\spire_beam_cryptum.effect, fx_11_spirebeam_right);

	end
end

   

//=============================================
// SPIRE_02_CORE_CHECKS
//=============================================

script static boolean f_sp02_core_open_check( short core_number, ai core_gaurd)
	volume_test_players(f_core_trigger(core_number)) and
	ai_living_count(core_gaurd) <= 0 and
	f_sp02_core_valid(core_number);
end


script static boolean f_sp02_core_valid(short core_number)
	if core_number == DEF_SP02_CORE_01() then
		object_valid(cr_sp02_core_01);
	elseif core_number == DEF_SP02_CORE_02() then
		object_valid(cr_sp02_core_02);
	elseif core_number == DEF_SP02_CORE_03() then
		object_valid(cr_sp02_core_03);
	end
end



//============================================
// SP02_CORE_DEVICE_FUNCTIONS
//============================================

script static void f_sp02_core_activate(short core_number)
	if core_number == DEF_SP02_CORE_01() then
		m70_spire2_core_01->f_sp02_cores_activate( cr_sp02_core_01, flg_sp02_core_01_up );	
	elseif core_number == DEF_SP02_CORE_02() then
		m70_spire2_core_02->f_sp02_cores_activate( cr_sp02_core_02, flg_sp02_core_02_up );
	elseif core_number == DEF_SP02_CORE_03() then
		m70_spire2_core_03->f_sp02_cores_activate( cr_sp02_core_03, flg_sp02_core_03_up );
	end
end

script static void f_sp02_core_open(short core_number)
	if core_number == DEF_SP02_CORE_01() then
		m70_spire2_core_01->f_sp02_cores_open( cr_sp02_core_01 );
	elseif core_number == DEF_SP02_CORE_02() then
		m70_spire2_core_02->f_sp02_cores_open(  cr_sp02_core_02 );
	elseif core_number == DEF_SP02_CORE_03() then
		m70_spire2_core_03->f_sp02_cores_open( cr_sp02_core_03 );
	end
end

script static void f_sp02_core_destroy(short core_number)
	if core_number == DEF_SP02_CORE_01() then
		f_sp02_core_close_core_01();
	elseif core_number == DEF_SP02_CORE_02() then
		f_sp02_core_close_core_02();
	elseif core_number == DEF_SP02_CORE_03() then
		f_sp02_core_close_core_03();
	end
end

script static void f_sp02_core_close_core_01()
	repeat
		sleep_until(not volume_test_players(tv_spire02_core_01_pstuck), 1);
		m70_spire2_core_01->f_sp02_cores_close();
		sleep_until(m70_spire2_core_01->f_sp02_core_check_close(), 1);
		sleep_s(0.5);
		if not volume_test_players(tv_spire02_core_01_pstuck) then
			m70_spire2_core_01->f_sp02_cores_deactivate();
			sleep_until(m70_spire2_core_01->f_sp02_core_check_destroyed(), 1);
		else
			m70_spire2_core_01->f_sp02_cores_reopen();
			sleep_until(m70_spire2_core_01->f_sp02_core_check_open(), 1);
		end
	until(m70_spire2_core_01->f_sp02_core_check_destroyed(), 1);
end

script static void f_sp02_core_close_core_02()
	repeat
		sleep_until(not volume_test_players(tv_spire02_core_02_pstuck), 1);
		m70_spire2_core_02->f_sp02_cores_close();
		sleep_until(m70_spire2_core_02->f_sp02_core_check_close(), 1);
		sleep_s(0.5);
		if not volume_test_players(tv_spire02_core_02_pstuck) then
			m70_spire2_core_02->f_sp02_cores_deactivate();
			sleep_until(m70_spire2_core_02->f_sp02_core_check_destroyed(), 1);
		else
			m70_spire2_core_02->f_sp02_cores_reopen();
			sleep_until(m70_spire2_core_02->f_sp02_core_check_open(), 1);
		end
	until(m70_spire2_core_02->f_sp02_core_check_destroyed(), 1);
end

script static void f_sp02_core_close_core_03()
	repeat
		sleep_until(not volume_test_players(tv_spire02_core_03_pstuck), 1);
		m70_spire2_core_03->f_sp02_cores_close();
		sleep_until(m70_spire2_core_03->f_sp02_core_check_close(), 1);
		sleep_s(0.5);
		if not volume_test_players(tv_spire02_core_03_pstuck) then
			m70_spire2_core_03->f_sp02_cores_deactivate();
			sleep_until(m70_spire2_core_03->f_sp02_core_check_destroyed(), 1);
		else
			m70_spire2_core_03->f_sp02_cores_reopen();
			sleep_until(m70_spire2_core_03->f_sp02_core_check_open(), 1);
		end
	until(m70_spire2_core_03->f_sp02_core_check_destroyed(), 1);
end

script static boolean f_core_device_check_open( short core_number)
	if core_number == DEF_SP02_CORE_01() then
		m70_spire2_core_01->f_sp02_core_check_open();
	elseif core_number == DEF_SP02_CORE_02() then 
		m70_spire2_core_02->f_sp02_core_check_open();
	elseif core_number == DEF_SP02_CORE_03() then
		m70_spire2_core_03->f_sp02_core_check_open();
	end
end

script static boolean f_core_device_check_close( short core_number)
	if core_number == DEF_SP02_CORE_01() then
		m70_spire2_core_01->f_sp02_core_check_close();
	elseif core_number == DEF_SP02_CORE_02() then 
		m70_spire2_core_02->f_sp02_core_check_close();
	elseif core_number == DEF_SP02_CORE_03() then
		m70_spire2_core_03->f_sp02_core_check_close();
	end
end

script static trigger_volume f_core_trigger(short core_number)
	if core_number == DEF_SP02_CORE_01() then
		tv_spire02_core_01;
	elseif core_number == DEF_SP02_CORE_02() then 
		tv_spire02_core_02;
	elseif core_number == DEF_SP02_CORE_03() then
		tv_spire02_core_03;
	end
end


//=============================================
// SPIRE_02_CORE_DESTROYED_ORDER
//=============================================

script dormant f_core_destroyed_order()
	dprint("f_core_destroyed_order");
	wake(f_sp02_core_first_destroyed_check);
	wake(f_sp02_core_second_destroyed_check);
end

script dormant f_sp02_core_first_destroyed_check()
	dprint("f_sp02_core_first_destroyed_check");
	sleep_until(S_SP02_OBJ_CON >= S_DEF_OBJ_CON_SP02_TWO_CORE(), 1);
	
	if not f_sp02_core_valid( DEF_SP02_CORE_01() ) then
	
		S_SP02_FIRST_CORE = DEF_SP02_CORE_01();
		
	elseif not f_sp02_core_valid( DEF_SP02_CORE_02() ) then
	
		S_SP02_FIRST_CORE = DEF_SP02_CORE_02();
		
	elseif not f_sp02_core_valid( DEF_SP02_CORE_03() ) then
	
		S_SP02_FIRST_CORE = DEF_SP02_CORE_03();
		
	end
end

script dormant f_sp02_core_second_destroyed_check()
	dprint("f_sp02_core_second_destroyed_check");
	sleep_until(S_SP02_OBJ_CON >= S_DEF_OBJ_CON_SP02_ONE_CORE(), 1);
	
	if not f_sp02_core_valid( DEF_SP02_CORE_01() ) and S_SP02_FIRST_CORE != DEF_SP02_CORE_01() then
	
		S_SP02_SECOND_CORE = DEF_SP02_CORE_01();
		
	elseif not f_sp02_core_valid( DEF_SP02_CORE_02() ) and S_SP02_FIRST_CORE != DEF_SP02_CORE_02() then
	
		S_SP02_SECOND_CORE = DEF_SP02_CORE_02();
		
	elseif not f_sp02_core_valid( DEF_SP02_CORE_03() ) and S_SP02_FIRST_CORE != DEF_SP02_CORE_03() then
	
		S_SP02_SECOND_CORE = DEF_SP02_CORE_03();
		
	end

end




//==========================
// SPIRE_02_EXIT
//==========================
//object_active_for_script(door_to_airlock_two_scene_maya)

script static void f_spire_02_exit()
	dprint("f_spire02_exit");
	sleep_until((current_zone_set_fully_active() == DEF_S_ZONESET_SPIRE_02_EXT), 1);
	
	if f_check_first_spire(DEF_SPIRE_02) then 
		s_flight_state = S_DEF_FLIGHT_STATE_SECOND();
	else
		s_flight_state = S_DEF_FLIGHT_STATE_THIRD();
	end
	sleep(15);
	
	f_spires_exit_clear_pelican();
	object_create(flight_pelican_sp02);
	thread(f_pelican_disable_extra_seats( flight_pelican_sp02, flight_pelican_sp02));
	sleep(15);
	thread(f_spire_exit_respawn_pelican( flight_pelican_sp02, flight_pelican_sp02, tv_sp02_pelican));
	sleep_s(4);
	thread(f_sp02_blip_pelican());
end


//===============================
// SPIRE_02_DOORS
//===============================

script dormant spire_02_doors()
	dprint("f_sp02_door_enter");
	//wake(f_sp02_int_door_03_auto);
	//sleep_until(volume_test_players(tv_sp02_int_door_enter), 1);
	//thread(f_sp02_int_door_04_auto());	
end



script static void f_sp02_door_enter()
	dprint("f_sp02_door_enter");
	sleep_until(volume_test_players(tv_sp02_halway_teleport), 1);
	
	sleep(1);
	sleep_until(not volume_test_players(tv_dm_sp02_int_door_01), 1);
	
	device_set_power(dm_sp02_int_door_01, 0);
	
	sleep_until(device_get_position(dm_sp02_int_door_01) == 0, 1);
	
	if game_is_cooperative() then
		volume_teleport_players_not_inside(tv_sp02_hallway_check, flag_sp02_hallway);
		sleep(15);
	end
	
	zoneset_prepare_and_load( DEF_S_ZONESET_SPIRE_02_INT_B );
	
	game_save();
	
	device_set_power(dm_sp02_int_door_03, 1);
	
	sleep_until(device_get_position( dc_sp02_core_control ) != 0, 1);
	
	sleep(1);
	sleep_until(not volume_test_players(tv_dm_sp02_int_door_03), 1);
	
	device_set_power(dm_sp02_int_door_03, 0);
	
	sleep_until(device_get_position(dm_sp02_int_door_03) == 0, 1);
	
	volume_teleport_players_inside(tv_sp02_hallway_check, flag_spire02_enter_teleport);
	
end



script static void f_sp02_door_exit()
	dprint("f_sp02_door_exit");
	
	device_set_power(dm_sp02_int_door_03, 1);

	sleep_until(volume_test_players(tv_sp02_halway_teleport), 1);
	sleep(1);
	sleep_until(not volume_test_players(tv_dm_sp02_int_door_03), 1);
	
	device_set_power(dm_sp02_int_door_03, 0);
	
	sleep_until(device_get_position(dm_sp02_int_door_03) == 0, 1);
	
	if game_is_cooperative() then
		volume_teleport_players_not_inside(tv_sp02_hallway_check, flag_sp02_hallway);
	end
	
	zoneset_prepare_and_load( DEF_S_ZONESET_SPIRE_02_EXT );
	
	game_save();
	
	thread( f_spire_02_exit() );

	device_set_power(dm_sp02_int_door_01, 1);
	
	sleep_until(vehicle_test_players(), 1);	
	sleep(1);
	sleep_until(not volume_test_players(tv_dm_sp02_int_door_01), 1);
	
	device_set_power(dm_sp02_int_door_01, 0);
	
	sleep_until(device_get_position(dm_sp02_int_door_01) == 0, 1);
			
	volume_teleport_players_inside(tv_sp02_hallway_check, flag_pelican_exit_spire02);
	f_unblip_flag(flg_sp02_exit);
end

//knight attack
//if game_difficulty_get() >= "legendary" then
global boolean b_knight_attack = FALSE;

script static boolean f_knight_attack_gate()
	volume_test_players(tv_ka_01) and volume_test_players(tv_ka_02);
end

script static void f_knight_attack_check()
		sleep_until(ai_living_count(sg_sp02_all) <= 0);
		sleep_s(1);
		sleep_until(f_knight_attack_gate() or volume_test_players(tv_spire02_objective_start), 1);
			sleep_s(5);
			if f_knight_attack_gate() then
				thread(f_knight_attack());
			end
end

script static void f_knight_attack()
	dprint("f_knight_attack");
	
	thread(f_knight_attack_l());
	thread(f_knight_attack_r());
	sleep_s(2);
	sleep_until(ai_living_count(sg_knight_attack) == 0 or volume_test_players(tv_spire02_commander), 1);
	
	if ai_living_count(sg_knight_attack) <= 0  then
		object_create(sp02_ee_01);
		object_create(sp02_ee_02);
		object_create(sp02_ee_03);
		object_create(sp02_ee_04);
		object_create(sp02_ee_05);
		object_create(sp02_ee_06);
		object_create(sp02_ee_07);
		object_create(sp02_ee_08);
		object_create(sp02_ee_09);
		object_create(sp02_ee_10);
		object_create(sp02_ee_11);
		object_create(sp02_ee_12);
	else
		ai_kill(sg_knight_attack);
	end
end

script static void f_knight_attack_r()
	ai_place_in_limbo(sq_ka_r_knight_01);
	sleep_s(0.75);
	ai_place_in_limbo(sq_ka_r_knight_02);
	sleep_s(0.5);
	ai_place_in_limbo(sq_ka_r_rang);
	sleep_s(0.25);
	ai_place_in_limbo(sq_ka_r_com);
end

script static void f_knight_attack_l()
	ai_place_in_limbo(sq_ka_l_knight_01);
	sleep_s(0.75);
	ai_place_in_limbo(sq_ka_l_knight_02);
	sleep_s(0.5);
	ai_place_in_limbo(sq_ka_l_rang);
	sleep_s(0.25);
	ai_place_in_limbo(sq_ka_l_com);
end


script dormant f_nar_knight_callouts()
	sleep_until(ai_living_count(sg_core_01_knights) > 0 or ai_living_count(sg_core_02_knights) > 0 or ai_living_count(sg_core_03_knights) > 0, 1);
	sleep_s(0.3);
	sound_impulse_start(sound\dialog\mission\global\global_chatter_00164,"none", 1 );
	sleep_until(ai_is_shooting(sq_sp02_core_01_knight_02) or ai_is_shooting(sq_sp02_core_02_knight_02) or ai_is_shooting(sq_sp02_core_03_knight_02), 1);
	sleep_s(0.25);
	sound_impulse_start(sound\dialog\mission\global\global_chatter_00157,"none", 1 );
end
/*
script dormant f_sp02_phantom_blip()
	dprint("f_sp02_phantom_blip");
	if not f_sp02_core_valid(DEF_SP02_CORE_01()) then
		ai_place(sq_sp02_core_01_blip);
		sleep_s(1.25);
		ai_place(sq_sp02_core_01_blip);
	elseif not f_sp02_core_valid(DEF_SP02_CORE_02()) then
		ai_place(sq_sp02_core_02_blip);
		sleep_s(1.25);
		ai_place(sq_sp02_core_02_blip);
	elseif not f_sp02_core_valid(DEF_SP02_CORE_03()) then
		ai_place(sq_sp02_core_03_blip);
		sleep_s(1.25);
		ai_place(sq_sp02_core_03_blip);
	end
end
*/


script static void f_sp02_checkpoint_combat()
	sleep_until(S_SP02_CORES_DESTROYED > 0, 1);
	sleep_s(7);
	local real save_on_squad_kill  = (ai_living_count(sg_sp02_all) * 0.65);
	sleep_until(ai_living_count(sg_sp02_all) <= save_on_squad_kill, 1);
	checkpoint_no_timeout( TRUE, "CORE COMBAT CHECKPOINT" );
	sleep_until(S_SP02_CORES_DESTROYED > 1, 1);
	sleep_s(7);
	save_on_squad_kill  = (ai_living_count(sg_sp02_all) * 0.65);
	sleep_until(ai_living_count(sg_sp02_all) <= save_on_squad_kill, 1);
	checkpoint_no_timeout( TRUE, "CORE COMBAT CHECKPOINT" );
end

script static void f_checkpoint_comander()
	sleep_until(volume_test_players(tv_spire02_objective_start), 1);
	checkpoint_no_timeout( TRUE, "COMMANDER CHECKPOINT" );

end
/*
//xxxx

// =================================================================================================
// =================================================================================================
// *** DIDACT WARNINGS and RAMPENCY BLIPS ***
// =================================================================================================
// =================================================================================================
static boolean b_rampancy_blip_active = FALSE;

script static void f_spire_02_rampancy_blip_random( real r_time_min, real r_time_max, short s_select_min, short s_select_max, short s_range_min, short s_range_max )
static boolean b_flag_blip_01 = FALSE;
static boolean b_flag_blip_02 = FALSE;
static boolean b_flag_blip_03 = FALSE;
static boolean b_flag_blip_04 = FALSE;
static boolean b_flag_blip_05 = FALSE;
static boolean b_flag_blip_06 = FALSE;
static boolean b_flag_blip_07 = FALSE;
static boolean b_flag_blip_08 = FALSE;
static boolean b_flag_blip_09 = FALSE;
static boolean b_flag_blip_10 = FALSE;
static boolean b_flag_blip_11 = FALSE;
static boolean b_flag_blip_12 = FALSE;
static boolean b_flag_blip_13 = FALSE;
static boolean b_flag_blip_14 = FALSE;
static boolean b_flag_blip_15 = FALSE;
static boolean b_flag_blip_16 = FALSE;
static boolean b_flag_blip_17 = FALSE;
static boolean b_flag_blip_18 = FALSE;
static boolean b_flag_blip_19 = FALSE;
static boolean b_flag_blip_20 = FALSE;
//static boolean b_flag_blip_21 = FALSE;
//static boolean b_flag_blip_22 = FALSE;
//static boolean b_flag_blip_23 = FALSE;
//static boolean b_flag_blip_24 = FALSE;
//static boolean b_flag_blip_25 = FALSE;
//static boolean b_flag_blip_26 = FALSE;
//static boolean b_flag_blip_27 = FALSE;
//static boolean b_flag_blip_28 = FALSE;
//static boolean b_flag_blip_29 = FALSE;
//static boolean b_flag_blip_30 = FALSE;

local boolean b_shutdown = FALSE;
local short s_random_min = 0;
local short s_random_max = 0;
local long l_timer = 0;

//dprint( "f_spire_02_rampancy_blip_random: START" );

	repeat
	
		sleep_until( (l_timer <= game_tick_get()) or (not b_rampancy_blip_active), 1 );
			
		b_shutdown = not b_rampancy_blip_active;
		s_random_min = random_range( s_select_min, s_select_max );
		s_random_max = s_random_min + random_range( s_range_min, s_range_max );
		
		dprint( "----------" );
		inspect( s_random_min );
		inspect( s_random_max );
		
	
		b_flag_blip_01 = f_rampancy_blip_flag( sp02_flag_rampancy_01, b_flag_blip_01, 1, s_random_min, s_random_max );
		b_flag_blip_02 = f_rampancy_blip_flag( sp02_flag_rampancy_02, b_flag_blip_02, 2, s_random_min, s_random_max );
		b_flag_blip_03 = f_rampancy_blip_flag( sp02_flag_rampancy_03, b_flag_blip_03, 3, s_random_min, s_random_max );
		b_flag_blip_04 = f_rampancy_blip_flag( sp02_flag_rampancy_04, b_flag_blip_04, 4, s_random_min, s_random_max );
		b_flag_blip_05 = f_rampancy_blip_flag( sp02_flag_rampancy_05, b_flag_blip_05, 5, s_random_min, s_random_max );
		b_flag_blip_06 = f_rampancy_blip_flag( sp02_flag_rampancy_06, b_flag_blip_06, 6, s_random_min, s_random_max );
		b_flag_blip_07 = f_rampancy_blip_flag( sp02_flag_rampancy_07, b_flag_blip_07, 7, s_random_min, s_random_max );
		b_flag_blip_08 = f_rampancy_blip_flag( sp02_flag_rampancy_08, b_flag_blip_08, 8, s_random_min, s_random_max );
		b_flag_blip_09 = f_rampancy_blip_flag( sp02_flag_rampancy_09, b_flag_blip_09, 9, s_random_min, s_random_max );
		b_flag_blip_10 = f_rampancy_blip_flag( sp02_flag_rampancy_10, b_flag_blip_10, 10, s_random_min, s_random_max );
		b_flag_blip_11 = f_rampancy_blip_flag( sp02_flag_rampancy_11, b_flag_blip_11, 11, s_random_min, s_random_max );
		b_flag_blip_12 = f_rampancy_blip_flag( sp02_flag_rampancy_12, b_flag_blip_12, 12, s_random_min, s_random_max );
		b_flag_blip_13 = f_rampancy_blip_flag( sp02_flag_rampancy_13, b_flag_blip_13, 13, s_random_min, s_random_max );
		b_flag_blip_14 = f_rampancy_blip_flag( sp02_flag_rampancy_14, b_flag_blip_14, 14, s_random_min, s_random_max );
		b_flag_blip_15 = f_rampancy_blip_flag( sp02_flag_rampancy_15, b_flag_blip_15, 15, s_random_min, s_random_max );
		b_flag_blip_16 = f_rampancy_blip_flag( sp02_flag_rampancy_16, b_flag_blip_16, 16, s_random_min, s_random_max );
		b_flag_blip_17 = f_rampancy_blip_flag( sp02_flag_rampancy_17, b_flag_blip_17, 17, s_random_min, s_random_max );
		b_flag_blip_18 = f_rampancy_blip_flag( sp02_flag_rampancy_18, b_flag_blip_18, 18, s_random_min, s_random_max );
		b_flag_blip_19 = f_rampancy_blip_flag( sp02_flag_rampancy_19, b_flag_blip_19, 19, s_random_min, s_random_max );
		b_flag_blip_20 = f_rampancy_blip_flag( sp02_flag_rampancy_20, b_flag_blip_20, 20, s_random_min, s_random_max );


		l_timer = game_tick_get() + seconds_to_frames( real_random_range(r_time_min,r_time_max) );
	
	until( b_shutdown, 1 );

//dprint( "f_spire_02_rampancy_blip_random: END" );

end

script static boolean f_rampancy_blip_flag( cutscene_flag flg_flag, boolean b_blip_state, short s_index, short s_selection_min, short s_selection_max )

	if ( ((s_index >= s_selection_min) and (s_index <= s_selection_max)) or (not b_rampancy_blip_active) ) then
	
		if ( (not b_blip_state) and (b_rampancy_blip_active) ) then
			f_blip_flag( flg_flag, default );
			//dprint( "BLIP" );
			b_blip_state = TRUE;
		elseif ( b_blip_state ) then
			f_unblip_flag( flg_flag );
			//dprint( "UNBLIP" );
			b_blip_state = FALSE;
		end
	
	end	

	// RETURN
	b_blip_state;
end

script dormant f_sp02_rampancy_blips_start()
  sleep_s( 1 );
  b_rampancy_blip_active = TRUE;

	effect_attached_to_camera_new (fx\library\characters\cortana\rampancy\rampancy_glitch.effect );
	thread( f_spire_02_rampancy_blip_random(0.25, 1.0, 1, 5, 1, 3) );
	sleep_s( 0.5 );

	thread( f_spire_02_rampancy_blip_random(0.125, 1.0, 1, 7, 2, 3) );
	thread( f_spire_02_rampancy_blip_random(0.25, 0.75, 1, 10, 2, 3) );
	sleep_s( 2 );

	effect_attached_to_camera_new (fx\library\characters\cortana\rampancy\rampancy_glitch.effect );
	thread( f_spire_02_rampancy_blip_random(0.125, 0.5, 1, 15, 3, 5) );
	thread( f_spire_02_rampancy_blip_random(0.125, 0.5, 1, 15, 3, 5) );
	thread( f_spire_02_rampancy_blip_random(0.25, 0.75, 1, 20, 3, 5) );
	sleep_s( 1 );

	effect_attached_to_camera_new (fx\library\characters\cortana\rampancy\rampancy_glitch.effect );
	thread( f_spire_02_rampancy_blip_random(0.125, 0.5, 1, 20, 3, 7) );
	thread( f_spire_02_rampancy_blip_random(0.125, 0.5, 1, 20, 3, 7) );
	thread( f_spire_02_rampancy_blip_random(0.25, 0.75, 1, 25, 3, 7) );
	thread( f_spire_02_rampancy_blip_random(0.25, 0.75, 1, 25, 3, 7) );
	sleep_s( 0.5 );

	effect_attached_to_camera_new (fx\library\characters\cortana\rampancy\rampancy_glitch.effect );
	thread( f_spire_02_rampancy_blip_random(0.125, 0.5, 1, 25, 3, 7) );
	thread( f_spire_02_rampancy_blip_random(0.125, 0.5, 1, 25, 3, 7) );
	thread( f_spire_02_rampancy_blip_random(0.25, 0.75, 1, 30, 3, 7) );
	thread( f_spire_02_rampancy_blip_random(0.25, 0.75, 1, 30, 3, 10) );
	thread( f_spire_02_rampancy_blip_random(0.25, 0.75, 1, 30, 3, 10) );
	sleep_s( 0.25 );
	effect_attached_to_camera_new (fx\library\characters\cortana\rampancy\rampancy_glitch.effect );

	b_rampancy_blip_active = FALSE;
		
	f_cortana_rampancy_01();
end

script dormant f_sp02_rampancy_02()
	effect_attached_to_camera_new (fx\library\characters\cortana\rampancy\rampancy_glitch.effect );
	sound_impulse_start(sound\storm\characters\knight\vo\npc_storm_knight_vo_combat_any_go_berserk, player_get(0), 1 ); 
	sleep_s(0.75);
	effect_attached_to_camera_new (fx\library\characters\cortana\rampancy\rampancy_glitch.effect );	
	f_cortana_rampancy_02();
end

//Knight Scream all around the player =============================================================
script static void f_rampancy_scream()
  
	dprint( ":::scream:::" );
end

//Cortana comments on the blips01 =================================================================
script static void f_cortana_rampancy_01()
  sleep_s( 2 );
  storyblurb_display (ch_spire02_04, 5, FALSE, TRUE );
end


//Cortana comments on the blips02 =================================================================
script static void f_cortana_rampancy_02()
  sleep_s( 2 );
  storyblurb_display (ch_spire02_05, 5, FALSE, TRUE );
end


//Play Didact Scan FX =============================================================================
script static void f_sp02_rampancy_scan01()
  sleep_s( 2 );
	effect_new (environments\solo\m10_crash\fx\scan\didact_scan.effect, flag_didact01_scan );
	effect_new (environments\solo\m10_crash\fx\scan\didact_scan.effect, flag_didact02_scan );
end

// --- End m70_spire_02.hsc ---

// --- Begin m70_spire_02_ai.hsc ---
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343
//
// Mission: 					m70
//
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343
// =================================================================================================
// =================================================================================================
// spire_02_AI
// =================================================================================================
// =================================================================================================


//==================================
// SPIRE_02_AI_FUNCTIONS
//==================================

script dormant f_spire_02_AI_init()
	dprint( "::: f_spire_02_INT_AI_init :::" );
	// initialize modules
	sleep_until(f_spire_02_INT_Zone_Active(), 1);
	
	// initialize sub modules
	wake(f_spire_02_ai_main);

end

script dormant f_spire_02_AI_deinit()
	dprint( "::: f_spire_02_INT_AI_deinit :::" );

	sleep_forever( f_spire_02_AI_init );
	sleep_forever( f_spire_02_ai_main );


end

script dormant f_spire_02_ai_main()
	dprint("f_spire_02_ai_main");	
	if f_spire_state_complete(DEF_SPIRE_01) then
		wake(f_sp02_second_spire_spawn);
	end

	sleep_until( current_zone_set_fully_active() == DEF_S_ZONESET_SPIRE_02_INT_B, 1);
	sleep_s(1);
	ai_place(sq_sp02_bishop_switch);
	
	wake(f_sp02_ai_core_01);
	wake(f_sp02_ai_core_02);
	wake(f_sp02_ai_core_03);
	
	sleep_until(S_SP02_OBJ_CON >= S_DEF_OBJ_CON_SP02_TWO_CORE());
	
	wake(f_transition_01_02);
	wake(f_transition_01_03);
	wake(f_transition_02_03);
	
	sleep_until(S_SP02_OBJ_CON >= S_DEF_OBJ_CON_SP02_ZERO_CORE() and volume_test_players(tv_spire02_commander), 1);
	wake(f_sp02_ai_exit_spawn);

end



//==================================
// SPIRE_02_AI_CORE_SPAWN
//==================================

/////////////////
//core 01
/////////////////

script dormant f_sp02_ai_core_01()

	ai_place(sq_sp02_core_01_bishop_01);
	sleep_until(volume_test_players(tv_spire02_objective_start), 1);
	ai_place_with_shards(sq_sp02_core_01_pawn_01);
	ai_place_with_shards(sq_sp02_core_01_pawn_02);

	sleep_until(S_SP02_OBJ_CON >= S_DEF_OBJ_CON_SP02_START(), 1);

	ai_place_with_shards(sq_sp02_core_01_pawn_03);

	sleep_until(volume_test_players(tv_spire02_core_01) or S_SP02_CORES_ACTIVE == 2, 1);

	
	thread(f_sp02_ai_core_01_knight_guard());

	if ai_living_count(sq_sp02_core_01_pawn_01) == 0 then
		ai_place_with_shards(sq_sp02_core_01_pawn_01);
		sleep_s(0.5);
	end
	
	if ai_living_count(sq_sp02_core_01_pawn_02) == 0 then
		ai_place_with_shards(sq_sp02_core_01_pawn_02);
		sleep_s(0.5);
	end
/*
	if ai_living_count(sg_core_01_bishops) == 1 then 
		ai_place(sq_sp02_core_01_bishop_02);
		sleep_s(2);
	end
	*/
	//check if antoher core is active
	sleep_until(S_SP02_CORES_ACTIVE == 2, 1);
	
	if ai_living_count(sq_sp02_core_01_pawn_03) == 0 and f_sp02_core_valid(DEF_SP02_CORE_01()) then
		ai_place_with_shards(sq_sp02_core_01_pawn_03);
		sleep_s(0.5);
	end

	sleep_until(S_SP02_CORES_ACTIVE == 3, 1);
	sleep_s(1);
	if f_sp02_core_valid(DEF_SP02_CORE_01()) then
	dprint("KNIGHT_02");
		ai_place_in_limbo(sq_sp02_core_01_knight_02);
		
	end

end

script static void f_sp02_ai_core_01_knight_guard()
	dprint("f_sp02_ai_core_knight_guard");
	repeat
	
	if volume_test_players_lookat(tv_spire02_core_01_core, 15, 15) then
		ai_place_in_limbo(sq_sp02_core_01_knight_01.spawn_points_0);
	elseif volume_test_players_lookat(tv_spire02_core_01_back, 20, 20) then
		ai_place_in_limbo(sq_sp02_core_01_knight_01.spawn_points_1);
	end
	
	until(ai_living_count(sg_core_01_knights) > 0, 1);
	
end

////////////////////////
//core 02
////////////////////////

script static void f_sp02_ai_core_pawn_spawn(ai squad)
		dprint("f_sp02_ai_core_pawn_spawn");
		if ai_living_count(squad) < 1 then
			ai_place_with_shards(squad);
			sleep_s(0.5);
		end
end


script dormant f_sp02_ai_core_02()

	ai_place(sq_sp02_core_02_bishop_01);
	sleep_until(volume_test_players(tv_spire02_objective_start), 1);
	ai_place_with_shards(sq_sp02_core_02_pawn_01);
	ai_place_with_shards(sq_sp02_core_02_pawn_02);

	sleep_until(S_SP02_OBJ_CON >= S_DEF_OBJ_CON_SP02_START(), 1);

	ai_place_with_shards(sq_sp02_core_02_pawn_03);

	sleep_until(volume_test_players(tv_spire02_core_02) or S_SP02_CORES_ACTIVE == 2, 1);

	
	thread(f_sp02_ai_core_02_knight_guard());

//replenish if empty
	if ai_living_count(sq_sp02_core_02_pawn_01) == 0 then
		ai_place_with_shards(sq_sp02_core_02_pawn_01);
		sleep_s(0.5);
	end
	
	if ai_living_count(sq_sp02_core_02_pawn_02) == 0 then
		ai_place_with_shards(sq_sp02_core_02_pawn_02);
		sleep_s(0.5);
	end
/*
	if ai_living_count(sg_core_02_bishops) < 1 then 
		ai_place(sq_sp02_core_02_bishop_02);
		sleep_s(2);
	end
	*/
	//check if antoher core is active
	sleep_until(S_SP02_CORES_ACTIVE == 2, 1);
	
	if ai_living_count(sq_sp02_core_02_pawn_03) == 0 and f_sp02_core_valid(DEF_SP02_CORE_02()) then
		ai_place_with_shards(sq_sp02_core_02_pawn_03);
		sleep_s(0.5);
	end

	sleep_until(S_SP02_CORES_ACTIVE == 3, 1);
	sleep_s(1);
	if f_sp02_core_valid(DEF_SP02_CORE_02()) then
		dprint("KNIGHT_02");
		ai_place_in_limbo(sq_sp02_core_02_knight_02);
	end

end

script static void f_sp02_ai_core_02_knight_guard()
	dprint("f_sp02_ai_core_knight_guard");
	//local boolean knight_spawn = FALSE
	repeat
		if volume_test_players_lookat(tv_spire02_core_02_core, 15, 15) then
			ai_place_in_limbo(sq_sp02_core_02_knight_01.spawn_points_0);
		elseif volume_test_players_lookat(tv_spire02_core_02_back, 20, 20) then
			ai_place_in_limbo(sq_sp02_core_02_knight_01.spawn_points_1);
		end
	until(ai_living_count(sg_core_02_knights) > 0, 1);
	
end

/////////////////
//core 03
/////////////////

script dormant f_sp02_ai_core_03()

	ai_place(sq_sp02_core_03_bishop_01);
	sleep_until(volume_test_players(tv_spire02_objective_start), 1);
	ai_place_with_shards(sq_sp02_core_03_pawn_01);
	ai_place_with_shards(sq_sp02_core_03_pawn_02);

	sleep_until(S_SP02_OBJ_CON >= S_DEF_OBJ_CON_SP02_START(), 1);

	ai_place_with_shards(sq_sp02_core_03_pawn_03);

	sleep_until(volume_test_players(tv_spire02_core_03) or S_SP02_CORES_ACTIVE == 2, 1);

	
	thread(f_sp02_ai_core_03_knight_guard());

	if ai_living_count(sq_sp02_core_03_pawn_01) == 0 then
		ai_place_with_shards(sq_sp02_core_03_pawn_01);
		sleep_s(0.5);
	end
	
	if ai_living_count(sq_sp02_core_03_pawn_02) == 0 then
		sleep_s(1);
		ai_place_with_shards(sq_sp02_core_03_pawn_02);
		sleep_s(0.5);
	end

/*
	if ai_living_count(sg_core_03_bishops) < 1 then 
		ai_place(sq_sp02_core_03_bishop_02);
		sleep_s(2);
	end
*/	
	//check if antoher core is active
	sleep_until(S_SP02_CORES_ACTIVE == 2, 1);
	
	if ai_living_count(sq_sp02_core_03_pawn_03) == 0 and f_sp02_core_valid(DEF_SP02_CORE_03()) then
		ai_place_with_shards(sq_sp02_core_03_pawn_03);
		sleep_s(0.5);
	end

	sleep_until(S_SP02_CORES_ACTIVE == 3, 1);
	
	if f_sp02_core_valid(DEF_SP02_CORE_03()) then
		dprint("sq_sp02_core_03_knight_02");
		ai_place_in_limbo(sq_sp02_core_03_knight_02);
	end

end

script static void f_sp02_ai_core_03_knight_guard()
	dprint("f_sp02_ai_core_knight_guard");
	//local boolean knight_spawn = FALSE
	repeat
	
	if volume_test_players_lookat(tv_spire02_core_03_core, 15, 15) then
		ai_place_in_limbo(sq_sp02_core_03_knight_01.spawn_points_0);
	elseif volume_test_players_lookat(tv_spire02_core_03_back, 20, 20) then
		ai_place_in_limbo(sq_sp02_core_03_knight_01.spawn_points_1);
	end
	
	until(ai_living_count(sg_core_03_knights) > 0, 1);
	
end

//START
script dormant f_sp02_second_spire_spawn()
	sleep_until(volume_test_players(tv_sp02_spawn_pawn_enter), 1);
	dprint("f_sp02_second_spire_spawn");
		ai_place(sq_sp02_hall_bishop);	
		ai_place(sq_sp02_hall_pawns_01);
		ai_place(sq_sp02_hall_pawns_02);
	sleep_until(volume_test_players_all_lookat(tv_sp02_int_door_enter ,10, 10), 1);
		sleep_s(1);
		ai_place_with_shards(sq_sp02_hall_pawns_03);
end

//EXIT
script dormant f_sp02_ai_exit_spawn()
	dprint("f_sp02_ai_exit_spawn");
	sleep_s(1);
	ai_place_in_limbo(sq_sp02_hall_commander);
	ai_place(sq_sp02_hall_pawns_01);
	//ai_place(sq_end_pawns_02);
end

script dormant f_transition_01_02()
sleep_until(not f_sp02_core_valid(DEF_SP02_CORE_02()) or not f_sp02_core_valid(DEF_SP02_CORE_01()), 1);
		
		if not f_sp02_core_valid(DEF_SP02_CORE_02()) then
			ai_place(sq_sp02_01_02_pawns_core_01);
		elseif not f_sp02_core_valid(DEF_SP02_CORE_01()) then
			ai_place(sq_sp02_01_02_pawns_core_02);
		end
	
	wake(f_transition_01_02_knight);
	sleep_s(2.5);
	ai_place(sq_sp02_01_02_bishop);
	sleep_s(1);
	sleep_until( ai_living_count(sq_sp02_01_02_bishop) > 0 or ai_living_count(sq_sp02_01_02_knight) <= 0, 1);
	if S_SP02_OBJ_CON >= S_DEF_OBJ_CON_SP02_ONE_CORE() then
		ai_place_with_shards(sq_sp02_01_02_turret);
	else
		ai_place_with_shards(sq_sp02_01_02_pawns);
	end
	
end

script dormant f_transition_01_03()
sleep_until(not f_sp02_core_valid(DEF_SP02_CORE_03()) or not f_sp02_core_valid(DEF_SP02_CORE_01()), 1);
		
		if not f_sp02_core_valid(DEF_SP02_CORE_03()) then
			ai_place(sq_sp02_01_03_pawns_core_01);
		elseif not f_sp02_core_valid(DEF_SP02_CORE_01()) then
			ai_place(sq_sp02_01_03_pawns_core_03);
		end
	
	wake(f_transition_01_03_knight);

	sleep_s(3);
	ai_place(sq_sp02_01_03_bishop);
	sleep_s(1.5);
	sleep_until( ai_living_count(sq_sp02_01_03_bishop) > 0 or ai_living_count(sq_sp02_01_03_knight) <= 0, 1);
	if S_SP02_OBJ_CON >= S_DEF_OBJ_CON_SP02_ONE_CORE() then
		ai_place_with_shards(sq_sp02_01_03_turret);
		//sleep_s(1);
		//AutomatedTurretActivate(ai_vehicle_get (sq_sp02_01_03_turret.spawn_points_0) );
	else
		ai_place_with_shards(sq_sp02_01_03_pawns);
	end
	
end


script dormant f_transition_02_03()
sleep_until(not f_sp02_core_valid(DEF_SP02_CORE_02()) or not f_sp02_core_valid(DEF_SP02_CORE_03()), 1);

		if not f_sp02_core_valid(DEF_SP02_CORE_02()) then
			ai_place(sq_sp02_02_03_pawns_core_03);
		elseif not f_sp02_core_valid(DEF_SP02_CORE_03()) then
			ai_place(sq_sp02_02_03_pawns_core_02);
		end
	
	
	wake(f_transition_02_03_knight);

	sleep_s(3);
	ai_place(sq_sp02_02_03_bishop);
	sleep_s(1.25);
	sleep_until( ai_living_count(sq_sp02_02_03_bishop) > 0 or ai_living_count(sq_sp02_02_03_knight) <= 0, 1);
	if S_SP02_OBJ_CON >= S_DEF_OBJ_CON_SP02_ONE_CORE() then
		ai_place_with_shards(sq_sp02_02_03_turret);
		//sleep_s(1);
		//AutomatedTurretActivate(ai_vehicle_get (sq_sp02_02_03_turret.spawn_points_0) );
		//RequestAutomatedTurretActivation(ai_vehicle_get (sq_sp02_02_03_turret.spawn_points_0) );
	end
	
end


//KNIGHTS
script dormant f_transition_01_02_knight()
	if not f_sp02_core_valid(DEF_SP02_CORE_02()) then
		sleep_until(volume_test_players_lookat( tv_spire02_trans_core_02_knight_left,10 ,10) or volume_test_players_lookat( tv_spire02_trans_core_02_knight_lower,10, 10), 1);
		sleep_s(1);
		ai_place_in_limbo(sq_sp02_01_02_knight.spawn_points_0);
		sleep_s(2);
		cs_phase_to_point(sq_sp02_01_02_knight, true, ps_sp02_transition_phase.p0);
		
	elseif not f_sp02_core_valid(DEF_SP02_CORE_01()) then
		sleep_until(volume_test_players_lookat( tv_spire02_trans_core_01_knight_left,15 ,15) or volume_test_players_lookat( tv_spire02_trans_core_01_knight_right,15, 15), 1);
		sleep_s(0.25);
		ai_place_in_limbo(sq_sp02_01_02_knight.spawn_points_1);
		sleep_s(2);
		cs_phase_to_point(sq_sp02_01_02_knight, true, ps_sp02_transition_phase.p1);
	end
end

script dormant f_transition_01_03_knight()
	if not f_sp02_core_valid(DEF_SP02_CORE_03()) then
		sleep_until(volume_test_players_lookat( tv_spire02_trans_core_03_knight_right,10 ,10) or volume_test_players_lookat( tv_spire02_trans_core_03_knight_lower,10, 10), 1);
		sleep_s(1);
		ai_place_in_limbo(sq_sp02_01_03_knight.spawn_points_0);
		sleep_s(4.5);
		cs_phase_to_point(sq_sp02_01_03_knight, true, ps_sp02_transition_phase.p2);
		
	elseif not f_sp02_core_valid(DEF_SP02_CORE_01()) then
		sleep_until(volume_test_players_lookat( tv_spire02_trans_core_01_knight_left,15 ,15) or volume_test_players_lookat( tv_spire02_trans_core_01_knight_right,15, 15), 1);
		sleep_s(0.25);
		ai_place_in_limbo(sq_sp02_01_03_knight.spawn_points_1);
		sleep_s(2);
		cs_phase_to_point(sq_sp02_01_03_knight, true, ps_sp02_transition_phase.p3);
	end

end

script dormant f_transition_02_03_knight()
	if not f_sp02_core_valid(DEF_SP02_CORE_03()) then
		sleep_until(volume_test_players_lookat( tv_spire02_trans_core_03_knight_right,10 ,10) or volume_test_players_lookat( tv_spire02_trans_core_03_knight_lower,10, 10), 1);
		sleep_s(1.25);
		ai_place_in_limbo(sq_sp02_02_03_knight.core_03);
		sleep_s(4.5);
		cs_phase_to_point(sq_sp02_02_03_knight, true, ps_sp02_transition_phase.p4);
		
	elseif not f_sp02_core_valid(DEF_SP02_CORE_02()) then
		sleep_until(volume_test_players_lookat( tv_spire02_trans_core_02_knight_left,15 ,15) or volume_test_players_lookat( tv_spire02_trans_core_02_knight_lower,15, 15), 1);
		sleep_s(1.25);
		ai_place_in_limbo(sq_sp02_02_03_knight.core_02);
		sleep_s(4.5);
		cs_phase_to_point(sq_sp02_02_03_knight, true, ps_sp02_transition_phase.p4);
	end

end

//transistion gates
script static boolean f_sp02_ai_transition_01_03_valid()
	S_SP02_FIRST_CORE == DEF_SP02_CORE_01() or
	S_SP02_FIRST_CORE == DEF_SP02_CORE_03() or
	S_SP02_OBJ_CON >= S_DEF_OBJ_CON_SP02_ONE_CORE();
end

script static boolean f_sp02_ai_transition_01_02_valid()
	S_SP02_FIRST_CORE == DEF_SP02_CORE_01() or
	S_SP02_FIRST_CORE == DEF_SP02_CORE_02() or
	S_SP02_OBJ_CON >= S_DEF_OBJ_CON_SP02_ONE_CORE();
end

script static boolean f_sp02_ai_transition_02_03_valid()
	S_SP02_FIRST_CORE == DEF_SP02_CORE_02() or
	S_SP02_FIRST_CORE == DEF_SP02_CORE_03() or
	S_SP02_OBJ_CON >= S_DEF_OBJ_CON_SP02_ONE_CORE();
end

//===============================
//SPIRE_02_COMMAND_SCRITPS
//===============================

script command_script cs_bishop_spawn()
	print("bishop sleeping");
	ai_enter_limbo(ai_current_actor);
	CreateDynamicTask(TT_SPAWN, FT_BIRTHER, ai_get_object(ai_current_actor), OnCompleteProtoSpawn_m70, 0);
end

script static void OnCompleteProtoSpawn_m70()
	dprint("general protospawn script");
end

script command_script cs_phase_in_on_spawn()
	//cs_phase_in();
	cs_phase_in_blocking();
end


// --- End m70_spire_02_ai.hsc ---

// --- Begin m70_spire_02_audio.hsc ---
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343
//
// Mission: 					m70
//
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343

// =================================================================================================
// =================================================================================================
// spire_02_audio
// =================================================================================================
// =================================================================================================
// variables

script dormant f_spire_02_audio_INT_init()
	dprint( "::: f_spire_02_audio_EXT_init :::" );

	// initialize modules
	wake(f_spire_02_encounter);
	// initialize sub modules
	//wake( f_spire_02_audio_CCC_init );

end


// === f_spire_02_audio_deinit::: Deinitialize
script dormant f_spire_02_audio_INT_deinit()
	dprint( "::: f_spire_02_audio_deinit :::" );

	// kill functions
	sleep_forever( f_spire_02_audio_INT_init );

	// deinitialize modules

	// deinitialize sub modules
	//wake( f_spire_02_audio_CCC_deinit );

end


script dormant f_spire_02_encounter()
	dprint("f_spire_02_encounter");
	sleep_until(S_SP02_OBJ_CON == S_DEF_OBJ_CON_SP02_START(), 1 );
	
	thread(f_mus_m70_e04_begin());

	sleep_until(S_SP02_OBJ_CON == S_DEF_OBJ_CON_SP02_ZERO_CORE(), 1 );
	
	thread(f_mus_m70_e04_finish());


end
// --- End m70_spire_02_audio.hsc ---

// --- Begin m70_spire_02_fx.hsc ---
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343
//
// Mission: 					m70
//
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343

// =================================================================================================
// =================================================================================================
// spire_02_FX
// =================================================================================================
// =================================================================================================
// variables
/*
// functions
// === f_spire_02_INT_FX_init::: Initialize
script dormant f_spire_02_EXT_FX_init()
	dprint( "::: f_spire_02_FX_init :::" );

	// initialize modules

	// initialize sub modules
	//wake( f_spire_02_FX_CCC_init );

end

// === f_spire_02_FX_deinit::: Deinitialize
script dormant f_spire_02_EXT_FX_deinit()
	dprint( "::: f_spire_02_FX_deinit :::" );

	// kill functions
	sleep_forever( f_spire_02_EXT_FX_init );

	// deinitialize modules

	// deinitialize sub modules
	//wake( f_spire_02_FX_CCC_deinit );

end




/*
// -------------------------------------------------------------------------------------------------
// spire_02_FX: CCC
// -------------------------------------------------------------------------------------------------
// variables
//global boolean <t>_spire_02_FX_<NAME> = <VALUE>;

// functions
// === f_spire_02_FX_CCC_init::: Initialize spire_02_FX: CCC sub module
script dormant f_spire_02_FX_CCC_cleanup()
	dprint( "::: f_spire_02_FX_CCC_cleanup :::" );

	// XXX_TODO

end

// === f_spire_02_FX_CCC_deinit::: Initialize spire_02_FX: CCC sub module
script dormant f_spire_02_FX_CCC_deinit()
	dprint( "::: f_spire_02_FX_CCC_deinit :::" );

	// XXX_TODO

end
*/
// --- End m70_spire_02_fx.hsc ---

// --- Begin m70_spire_03.hsc ---
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343
//
// Mission: 					m70
//
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343

// =================================================================================================
// =================================================================================================
// spire_03
// =================================================================================================
// =================================================================================================
// variables
global boolean b_cortana_removed = FALSE;
// functions

// SPIRE_03
script dormant f_spire_03_init()
	dprint( "::: f_spire_03_init :::" );
	wake( f_spire_03_deinit );
	kill_volume_disable(kill_sp03_bot);
	kill_volume_disable(kill_soft_sp03_top);
	kill_volume_disable(kill_sp03_top);
	kill_volume_disable(kill_soft_sp03_high);
	kill_volume_disable(kill_sp03_high);
	
	sleep_until(volume_test_players(tv_spire_03_enter) or f_spire_03_INT_Zone_Active(), 1);
	
	thread(f_sp03_door_enter());

	
	sleep_until( f_spire_03_INT_Zone_Active() and (not f_spire_state_complete(DEF_SPIRE_03)), 1 );
	s_flight_state = S_DEF_FLIGHT_STATE_THIRD_COMPLETE();
	dprint("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx");
	dprint("game insertion point unlock 5");
	dprint("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx");
	game_insertion_point_unlock(5);
	//objectives_show_up_to(3);
	data_mine_set_mission_segment ("m70_spire_03"); 
	player_set_profile( profile_coop_respawn );
	
	wake(f_spire_03_main);
	// initialize modules
	wake( f_spire_03_AI_init );
	wake( f_spire_03_FX_init );
	wake( f_spire_03_audio_init );
//	wake( f_spire_03_narrative_init );

	// initialize sub modules
	end

// === f_spire_03_INT_Deinit::: Deinitialize
script dormant f_spire_03_deinit()
	dprint( "::: f_spire_03_INT_Deinit :::" );
	sleep_until( f_spire_state_complete(DEF_SPIRE_03) and (not f_spire_03_INT_Zone_Active()), 1 );
	// deinitialize sub modules
	sleep_forever( f_spire_03_init );
	sleep_forever(f_spire_03_main);
	sleep_forever(f_spire_03_objectives);
	//sleep_forever(f_spire_03_INT_control_room_init);
	//sleep_forever(f_spire_03_INT_control_room_switch_init);
	sleep_forever(f_spire_03_didact_attack);
	
	// deinitialize modules
	wake( f_spire_03_AI_deinit );
	wake( f_spire_03_FX_deinit );
	wake( f_spire_03_audio_deinit );
//	wake( f_spire_03_narrative_deinit );

end

// === f_spire_03_INT_Zone_Active::: Checks if the current zone set is for this area
script static boolean f_spire_03_INT_Zone_Active()
	( current_zone_set_fully_active() >= DEF_S_ZONESET_SPIRE_03_INT_A ) and ( current_zone_set_fully_active() <= DEF_S_ZONESET_SPIRE_03_EXIT );
end

 script dormant f_spire_03_main()
	//xxx start grav_lift_01
	//effect_new_between_points(environments\solo\m70_liftoff\fx\energy\gravlift_tube.effect, fx_14_gravlift_1_start, fx_14_gravlift_1_end);
	//objectives_show_up_to(4);
	thread(f_sp03_fx_grav_lift_01());
	thread(f_sp03_teleport_not_in_gravlift(tv_sp03_grav_01_teleport, flg_sp03_gravlift_01));
	//xxx
	wake(f_spire_03_objectives);
	wake(f_spire_03_checkpoints);
	wake(f_sp03_bottom_kill_volumes);
	wake(f_sp03_top_kill_volumes);
	thread(f_sp03_zone_loads_top());
	thread(f_sp03_end_hallway_doors());
	sleep_until(volume_test_players(tv_spire_03_bottom_start), 1);
	
	
	//xxx start grav_lift_02
	thread(f_sp03_fx_grav_lift_02());
	thread(f_sp03_teleport_not_in_gravlift(tv_sp03_grav_02_teleport, flg_sp03_gravlift_02));
	//effect_new_between_points(environments\solo\m70_liftoff\fx\energy\gravlift_tube.effect, fx_14_gravlift_2_start, fx_14_gravlift_2_end);
	//xxx
	wake( f_spire_03_top_object_cleanup);
	//xxx
	garbage_collect_unsafe();
	wake(f_spire_03_bridge_bottom);
	wake(f_spire_03_didact_attack);
	
	wake(f_spire_03_bottom_object_cleanup);
	wake(f_spire_03_top_object_spawn);
	sleep_until(volume_test_players(tv_spire_03_top_start), 1);

	wake( f_spire_03_INT_control_room_init );	

end

script static void f_sp03_zone_loads_top()
	sleep_until(volume_test_players(tv_spire_03_top_start) and not volume_test_players(tv_sp03_grav_lift_02), 1);
	sleep_s(3);
	
	zoneset_prepare_and_load( DEF_S_ZONESET_SPIRE_03_INT_C );	
end

script static void f_sp03_teleport_not_in_gravlift(trigger_volume tv_gravlift, cutscene_flag flg_gravlift)
	sleep_until(volume_test_players(tv_gravlift), 1);
	sleep_s(2);
	volume_teleport_players_not_inside(tv_gravlift, flg_gravlift);
end

script dormant f_spire_03_objectives()

	f_spire_state_set ( DEF_SPIRE_03, DEF_R_OBJECTIVE_SPIRE_03_ENTER());
	f_objective_set( DEF_R_OBJECTIVE_SPIRE_03_START(), FALSE, TRUE, FALSE, TRUE );
	
	sleep_until(volume_test_players(tv_spire_03_bottom_start), 1);
	
	f_spire_state_set ( DEF_SPIRE_03, DEF_SPIRE_STATE_INTERIOR_START());
	f_objective_set( DEF_R_OBJECTIVE_SPIRE_03_BOTTOM_FLOOR(), FALSE, TRUE, FALSE, TRUE );
	
	sleep_until(volume_test_players(tv_spire_03_top_start), 1);
	
	f_objective_set( DEF_R_OBJECTIVE_SPIRE_03_TOP_FLOOR(), FALSE, TRUE, FALSE, TRUE );
	
	sleep_until(volume_test_players(tv_sp03_hallway_teleport), 1);
	
	f_objective_set( DEF_R_OBJECTIVE_SPIRE_03_CONTROL_ROOM_ENTER(), FALSE, TRUE, FALSE, TRUE );
	render_default_lighting = 0;
end

script dormant f_spire_03_didact_attack()
	sleep_until(volume_test_players(tv_spire_03_bottom_start) or volume_test_players(tv_sp03_bridge_fall_02), 1);
	sleep_s(1);
	pup_play_show(pup_bridge_fall_01);
	sleep_until(volume_test_players(tv_sp03_bridge_fall_02) or volume_test_players(tv_sp03_bridge_fall_03), 1);
	pup_play_show(pup_bridge_fall_02);
	sleep_until(volume_test_players(tv_sp03_bridge_fall_03) or not volume_test_players(tv_sp03_bridge_fall_04), 1);
	pup_play_show(pup_bridge_fall_03);
	sleep_until(not volume_test_players(tv_sp03_bridge_fall_04), 1);
	sleep_s(0.25);
	if game_is_cooperative() or game_difficulty_get_real() == "easy" then 
	sleep_s(0.25);		
	end
	pup_play_show(pup_bridge_fall_04);
	
end

// -------------------------------------------------------------------------------------------------
// spire_03_INT: Control Room
// -------------------------------------------------------------------------------------------------
// variables

// functions
// === f_spire_03_INT_control_room_init::: Init
script dormant f_spire_03_INT_control_room_init()
	sleep_until(( current_zone_set_fully_active() >= DEF_S_ZONESET_SPIRE_03_INT_D ), 1);
	dprint( "::: f_spire_03_INT_control_room_init :::" );
	objectives_finish(4);
	// initialize sub modules
	wake( f_spire_03_INT_control_room_switch_init );
	wake( f_spire_03_INT_control_room_floor_init );

	// this music trigger should fire when you insert cortana into the plinth and start the sequence of her going rampant
	pup_play_show(cortana_fail_spires);

end

// -------------------------------------------------------------------------------------------------
// spire_03_INT: Control Room: Switch
// -------------------------------------------------------------------------------------------------
// variables
//global boolean <t>_spire_03_INT_<NAME> = <VALUE>;
global boolean b_fail_pick_up_cortana = FALSE;

script dormant f_spire_03_INT_control_room_switch_init()
	local long l_pup_fail_id = 0;
	//local long l_pup_id = 0;
	dprint( "::: f_spire_03_INT_control_room_switch_start :::" );
	// create the switch
  object_create(  top_spire_switch_01 );
  object_create(  top_spire_switch_02 );
  sleep_until(object_valid(top_spire_switch_01) and object_valid(top_spire_switch_02), 1);
  device_set_position(top_spire_switch_01, 0);
  device_set_position(top_spire_switch_02, 0);
  device_set_power ( top_spire_switch_01, 1 );
  device_set_power ( top_spire_switch_02, 0 );
  f_objective_set( DEF_R_OBJECTIVE_SPIRE_03_CONTROL_ROOM_ENTER(), FALSE, TRUE, FALSE, TRUE );
  thread(f_m70_objective_complete(ct_obj_spire_03));
  // set the objective
  f_blip_object( top_spire_switch_01, "recon");
  
  sleep_until( (device_get_position(top_spire_switch_01) > 0.0), 1 );
	f_unblip_object( top_spire_switch_01 );
	l_pup_fail_id = pup_play_show(pup_cortana_fail_test);
	pup_play_show(pup_spire_ships);
	
  device_set_power ( top_spire_switch_01, 0 );
	
	sleep_until(b_fail_pick_up_cortana , 1);
	
	device_set_power ( top_spire_switch_02, 1 );
	f_blip_object( top_spire_switch_02, "recon");
	
	sleep_until( (device_get_position(top_spire_switch_02) > 0.0), 1 );
	
	f_unblip_object( top_spire_switch_02 );
	
	pup_play_show(pup_fail_plinth_remove);
	
	sleep_until(b_cortana_removed, 1);
  
  device_set_power ( top_spire_switch_02, 0.0 );
  
	object_destroy( top_spire_switch_01 );
  object_destroy( top_spire_switch_02 );

  wake( f_dlg_spire_03_take_charge );

	// wait for the right dialog moment
	sleep_until( dialog_id_played_check(L_dlg_spire_03_take_charge) and (not pup_is_playing(l_pup_fail_id)), 1 );
	game_save();
	thread(f_m70_objective_set(ct_obj_lich));
	// set spire state complete
	f_spire_state_set( DEF_SPIRE_03, DEF_SPIRE_STATE_COMPLETE() );
	
end

script static void f_spawn_orb
	// HACK: for some reason the particle effect gets culled from the zoneset and the bitmap is not loaded in the zoneset
	// maybe because of a leak in the seamps. so here we force the bitmap to always be loaded
	local any_tag hack = "fx\bitmaps\2d\tech\tell_ring_reticule_02.bitmap";
	sleep(26);
	effect_new("objects\characters\storm_cortana\fx\orb\cor_orb_persistant_ramp",cortana_orb_flag);
	b_fail_pick_up_cortana = TRUE;
end

// -------------------------------------------------------------------------------------------------
// spire_03_INT: Control Room: FLOOR
// -------------------------------------------------------------------------------------------------

// functions
// === f_spire_03_INT_control_room_floor_init::: Init
script dormant f_spire_03_INT_control_room_floor_init()

	sleep_until( object_valid(dm_sp03_control_room_floor), 1 );
	dprint( "::: f_spire_03_INT_control_room_floor_init :::" );
	device_set_position_track( dm_sp03_control_room_floor, 'any:idle', 0.0 );
	
	sleep_until( object_active_for_script(dm_sp03_control_room_floor), 1 );
	dm_sp03_control_room_floor->speed_set_open( 10.0 );
	dm_sp03_control_room_floor->speed_set_close( 7.5 );
	
	
	// setup trigger
	wake ( f_spire_03_INT_control_room_floor_trigger );
	
end

// === f_spire_03_INT_control_room_floor_trigger::: Trigger
script dormant f_spire_03_INT_control_room_floor_trigger()
	sleep_until( f_spire_state_complete(DEF_SPIRE_03), 1 );
	dprint( "::: f_spire_03_INT_control_room_floor_trigger :::" );

	wake( f_spire_03_INT_control_room_floor_action );

end

// === f_spire_03_INT_control_room_floor_action::: Open
script dormant f_spire_03_INT_control_room_floor_action()
	sleep_until( object_valid(dm_sp03_control_room_floor) and object_active_for_script(dm_sp03_control_room_floor), 1 );
	dprint( "::: f_spire_03_INT_control_room_floor_action :::" );

	sleep_s( 0.125 );
	// open the floor
	//sound_impulse_start('sound\environments\solo\m070\amb_m70_final\amb_m70_machines\machine_m70_spire3_end_elevator', dm_sp03_control_room_floor, 1); // play audio for lowering floor
	dm_sp03_control_room_floor->open();
	
	// setup auto close
	dm_sp03_control_room_floor->auto_trigger_close( tv_sp03_control_room_floor_area, TRUE, FALSE, TRUE );
	
end



//================================================
// SPIRE_03_DOORS
//================================================
// :: SPIRE_03_DOORS_MAIN

script static void f_sp03_door_enter()
	dprint("f_sp03_door_enter");
	sleep_until(volume_test_players(tv_sp03_hallway_teleport), 1);
	sleep(1);
	sleep_until(not volume_test_players(tv_dm_sp03_int_door_01), 1);
	
	device_set_power(dm_sp03_int_door_01, 0);
	
	sleep_until(device_get_position(dm_sp03_int_door_01) == 0, 1);
	
	thread(f_flight_blip_clear_all());
	if game_is_cooperative() then
		volume_teleport_players_not_inside(tv_sp03_hallway_check, flag_sp03_hallway_teleport);
		sleep(15);
	end
	
	zoneset_prepare_and_load( DEF_S_ZONESET_SPIRE_03_INT_A );
	
	game_save();
	
	device_set_power(dm_sp03_int_door_02, 1);
	thread(f_flight_blip_clear_all());
end


script static void f_sp03_end_hallway_doors()
	sleep_until(volume_test_players(tv_sp03_hallway_end_teleport), 1);
	sleep(1);
	sleep_until(not volume_test_players(tv_dm_sp03_int_door_03), 1);
	
	device_set_power(dm_sp03_int_door_03, 0);
	
	sleep_until(device_get_position(dm_sp03_int_door_03) == 0, 1);
	
	if game_is_cooperative() then
		volume_teleport_players_not_inside(tv_sp03_hallway_end_check, flag_sp03_end_hallway_teleport);
		sleep(15);
	end
	
	ai_erase_all();

	zoneset_prepare_and_load( DEF_S_ZONESET_SPIRE_03_INT_D );
	
	game_save();
	
	device_set_power(dm_sp03_int_door_04, 1);

	sleep_until(g_activate_spires, 1);
	
	device_set_power(dm_sp03_int_door_04, 0);
		
	sleep_until(device_get_position(dm_sp03_int_door_04) == 0, 1);
		
	volume_teleport_players_not_inside(tv_sp03_control_room_floor_area, flag_sp03_end_control_room_teleport);
end

// ===============================================
// SPIRE_03_LIGHT_BRIDGES
// ===============================================

// :: BOTTOM_BRIDGES
script dormant f_spire_03_bridge_bottom()
	dprint("f_spire_03_light_bridge_bottom");
	
	//xxx
	//wake(f_bridge_destroy_temp);
	sleep_s(2);
	wake(f_spire_03_bot_bridge_01);
	wake(f_spire_03_bot_bridge_02);
	wake(f_spire_03_bot_bridge_03);
	wake(f_spire_03_bot_bridge_04);
	wake(f_spire_03_bot_bridge_05);
	wake(f_spire_03_bot_bridge_06);
	wake(f_spire_03_bot_bridge_07);
end


script dormant f_sp03_set_transition_blocker()
	sleep_until(object_valid(dm_path_blocker_01), 1);
	
	device_set_position_track(dm_path_blocker_01, "any:idle", 0);
	sleep_until(volume_test_players(tv_spire_03_top_start), 1);
	sleep_s(2);
	sleep_until(not volume_test_players(tv_sp03_grav_lift_02), 1);
	
	sleep_s(2);
	
	device_animate_position(dm_path_blocker_01, 1, 4, 0.1, 0.1, TRUE );
	
end
// :: TOP_BRIDGES
script static void f_spire_03_light_bridge_top()
	dprint("f_spire_03_light_bridge_top");
//	thread(f_spire_03_create_light_bridge(ps_sp03_bridge_top.bridge_08_a, ps_sp03_bridge_top.bridge_08_b, cr_sp03_bridge_08));
//	thread(f_spire_03_create_light_bridge(ps_sp03_bridge_top.bridge_09_a, ps_sp03_bridge_top.bridge_09_b, cr_sp03_bridge_09));
//	thread(f_spire_03_create_light_bridge(ps_sp03_bridge_top.bridge_10_a, ps_sp03_bridge_top.bridge_10_b, cr_sp03_bridge_10));
//	thread(f_spire_03_create_light_bridge(ps_sp03_bridge_top.bridge_11_a, ps_sp03_bridge_top.bridge_11_b, cr_sp03_bridge_11));
//	thread(f_spire_03_create_light_bridge(ps_sp03_bridge_top.bridge_12_a, ps_sp03_bridge_top.bridge_12_b, cr_sp03_bridge_12));
//	thread(f_spire_03_create_light_bridge(ps_sp03_bridge_top.bridge_13_a, ps_sp03_bridge_top.bridge_13_b, cr_sp03_bridge_13));
//	thread(f_spire_03_create_light_bridge(ps_sp03_bridge_top.bridge_14_a, ps_sp03_bridge_top.bridge_14_b, cr_sp03_bridge_14));
end

//xxx
script dormant f_bridge_destroy_temp()
object_destroy(sc_sp03_bot_bridge_01);
object_destroy(sc_sp03_bot_bridge_02);
object_destroy(sc_sp03_bot_bridge_03);
object_destroy(sc_sp03_bot_bridge_04);
object_destroy(sc_sp03_bot_bridge_05);
object_destroy(sc_sp03_bot_bridge_06);
object_destroy(sc_sp03_bot_bridge_07);
end

// :: SPIRE_03_CREATE_BRIDGES
script dormant f_spire_03_bot_bridge_01()
	//sleep_until(volume_test_players(tv_sp03_bot_bridge_01) or object_valid(sc_sp03_bot_bridge_01), 1);
	f_sp03_create_bridge(sc_sp03_bot_bridge_01);
end

script dormant f_spire_03_bot_bridge_02()
//	sleep_until(volume_test_players(tv_sp03_bot_bridge_02) or object_valid(sc_sp03_bot_bridge_02) or f_sp03_bot_bridge_02_ai_gate(), 1);
	f_sp03_create_bridge(sc_sp03_bot_bridge_02);
end

script dormant f_spire_03_bot_bridge_03()
	//sleep_until(volume_test_players(tv_sp03_bot_bridge_03) or object_valid(sc_sp03_bot_bridge_03) or f_sp03_bot_bridge_03_ai_gate(), 1);
	f_sp03_create_bridge(sc_sp03_bot_bridge_03);
end

script dormant f_spire_03_bot_bridge_04()
	//sleep_until(volume_test_players(tv_sp03_bot_bridge_04) or object_valid(sc_sp03_bot_bridge_04) or f_sp03_bot_bridge_04_ai_gate(), 1);
	f_sp03_create_bridge(sc_sp03_bot_bridge_04);
end

script dormant f_spire_03_bot_bridge_05()
//	sleep_until(volume_test_players(tv_sp03_bot_bridge_05) or object_valid(sc_sp03_bot_bridge_05) or f_sp03_bot_bridge_05_ai_gate(), 1);
	f_sp03_create_bridge(sc_sp03_bot_bridge_05);
end

script dormant f_spire_03_bot_bridge_06()
//	sleep_until(volume_test_players(tv_sp03_bot_bridge_06) or object_valid(sc_sp03_bot_bridge_06), 1);
	f_sp03_create_bridge(sc_sp03_bot_bridge_06);
end

script dormant f_spire_03_bot_bridge_07()
	//sleep_until(volume_test_players(tv_sp03_bot_bridge_07) or object_valid(sc_sp03_bot_bridge_07) or f_sp03_bot_bridge_07_ai_gate(), 1);
	f_sp03_create_bridge(sc_sp03_bot_bridge_07);
end

script static void f_sp03_create_bridge(object_name bridge)
	if not object_valid(bridge) then
		object_create(bridge);
	end
end
/*
// :: SPIRE_03_BRIDGE_GATES
script static boolean f_sp03_bot_bridge_02_ai_gate()
	//ai_task_count(obj_sp03_bottom.fallback) != 0 and
	//ai_living_count(sg_sp03_bot_front) != 0;
	sleep(0);
end

script static boolean f_sp03_bot_bridge_03_ai_gate()
sleep_s(0);
	//ai_task_count(obj_sp03_bottom.gate_mid_right) == 0 and
	 //ai_living_count(sg_sp03_bot_right) != 0;
end

script static boolean f_sp03_bot_bridge_04_ai_gate()
sleep_s(0);
//	ai_task_count(obj_sp03_bottom.gate_mid_left) == 0 and
// ai_living_count(sg_sp03_bot_left) != 0;
end

script static boolean f_sp03_bot_bridge_05_ai_gate()
sleep_s(0);
	//ai_task_count(obj_sp03_bottom.gate_reinforcements) != 0 and
	// ai_living_count(sg_sp03_bot_back_left) != 0;
end

script static boolean f_sp03_bot_bridge_07_ai_gate() 
	ai_living_count(sg_sp03_bot_hunter) != 0;
end


*/
// ======================================
// SPIRE_03_GRAV_LIFTS
// ======================================

// :: SPIRE_03_GRAV_LIFT_01
script static void f_spire_03_gravlift_01()
	dprint("f_spire_03_gravlift_01");
	thread(f_spire_03_remove_velocity(tv_sp03_grav_lift_01, player0));
	thread(f_spire_03_remove_velocity(tv_sp03_grav_lift_01, player1));
	thread(f_spire_03_remove_velocity(tv_sp03_grav_lift_01, player2));
	thread(f_spire_03_remove_velocity(tv_sp03_grav_lift_01, player3));
end

// :: SPIRE_03_GRAV_LIFT_01
script static void f_spire_03_gravlift_02()
	dprint("f_spire_03_gravlift_02");
	thread(f_spire_03_remove_velocity(tv_sp03_grav_lift_02, player0));
	thread(f_spire_03_remove_velocity(tv_sp03_grav_lift_02, player1));
	thread(f_spire_03_remove_velocity(tv_sp03_grav_lift_02, player2));
	thread(f_spire_03_remove_velocity(tv_sp03_grav_lift_02, player3));
end

// :: SPIRE_03_REMOVE_VELOCITY
script static void f_spire_03_remove_velocity(trigger_volume tv_gravlift, player p_player)
	dprint("f_spire_03_gravlift_killvelocity");
	sleep_until(volume_test_object(tv_gravlift, p_player), 1);
	repeat
	
	if not volume_test_object(tv_gravlift, p_player) then
		object_set_velocity (p_player, 0 );
	end
	
	until(not volume_test_object(tv_gravlift, p_player));
end

// -------------------------------------------------------------------------------------------------
// spire_03_INT: CHECKPOINTS
// -------------------------------------------------------------------------------------------------

script dormant f_spire_03_checkpoints()
	dprint("Spire_03_checkpoints");
	game_save_no_timeout();
	wake(f_spire_03_checkpoints_bottom);
	sleep_s(10);
	wake(f_spire_03_checkpoints_top);
end

script dormant f_spire_03_checkpoints_bottom()
	dprint("f_spire_03_checkpoints_bottom");
	thread(f_spire_03_checkpoints_no_timeout(tv_spire_03_bottom_start, "checkpoint_spire03_start"));
	thread(f_spire_03_checkpoints_no_timeout(tv_spire_03_bottom_mid, "checkpoint_spire03_mid"));
	thread(f_spire_03_checkpoints_no_timeout(tv_spire_03_bottom_back, "checkpoint_spire03_back"));
	thread(f_spire_03_checkpoints_no_timeout(tv_sp03_bottom_tw06, "checkpoint_spire03_hunter"));
end

script dormant f_spire_03_checkpoints_top()
	dprint("f_spire_03_checkpoints_top");
	sleep_until(volume_test_players(tv_spire_03_top_start), 1);
	game_save_no_timeout();
	sleep_until(volume_test_players(tv_sp03_top_front), 1);
	game_save_no_timeout();
	sleep_until(volume_test_players(tv_sp03_top_mid), 1);
	game_save_no_timeout();
	sleep_until(volume_test_players(tv_sp03_top_back), 1);
	repeat
		sleep_s(15);
		game_save_no_timeout();
	until(volume_test_players(tv_sp03_hallway_teleport), 1);
	game_save_no_timeout();
end

script static void f_spire_03_checkpoints_no_timeout(trigger_volume tv_save, string str_debug)
	sleep_until(volume_test_players(tv_save), 1);
	//game_save_no_timeout();
	checkpoint_no_timeout( TRUE, "str_debug" );
end



script dormant f_spire_03_top_object_spawn()
	dprint("f_spire_03_crate_spawn");
	sleep_until( volume_test_players(tv_sp03_bot_cleanup),1);
	object_create_folder(spire_03_top_cover_crates);
	object_create_folder(spire_03_top_weapon_crates);
	object_create_folder(spire_03_top_mc_crates);
	object_create(v_sp03_bansh_player_01);
	object_create(v_sp03_bansh_01);
	object_create(v_sp03_bansh_player_02);
	object_create(v_sp03_shade_mid_right);
	object_create(v_sp03_shade_mid_left);
	object_wake_physics(v_sp03_bansh_player_01);
	object_wake_physics(v_sp03_bansh_01);
	object_wake_physics(v_sp03_bansh_player_02);
end

script dormant f_spire_03_top_object_cleanup()
	dprint("f_spire_03_crate_spawn");
	
	object_destroy_folder(spire_03_top_cover_crates);
	object_destroy_folder(spire_03_top_weapon_crates);
	object_destroy_folder(spire_03_top_mc_crates);
	
end

script dormant f_spire_03_bottom_object_cleanup()
	dprint("f_spire_03_crate_spawn");
	sleep_until( volume_test_players(tv_sp03_bot_cleanup),1);
	object_destroy_folder(spire_03_bot_cover_crates);
	object_destroy_folder(spire_03_bot_weapon_crates);
	object_destroy_folder(spire_03_bot_mc_crates);
	ai_erase(sg_sp03_bot_all);
	garbage_collect_now();
end


//xxx
//cheevo
script dormant f_m70_cheevo()
	if game_difficulty_get_real() >= heroic then
		sleep_until(volume_test_object(tv_explore_the_floor, ai_get_object(sq_sp03_bot_hunter_01) ) or volume_test_object(tv_explore_the_floor, ai_get_object(sq_sp03_bot_hunter_02) ), 1);
		submit_incident_with_cause_player ( "achieve_m70_special" ,player0);
		submit_incident_with_cause_player ( "achieve_m70_special" ,player1);
		submit_incident_with_cause_player ( "achieve_m70_special" ,player2);
		submit_incident_with_cause_player ( "achieve_m70_special" ,player3);
		
		//achievement_grant_to_all_players("m70_special");
	else
		dprint("difficulty to low");
	end
end

script dormant f_sp03_bottom_kill_volumes()
sleep_until(volume_test_players(tv_spire_03_bottom_start), 1);
sleep_s(1);
sleep_until(not volume_test_players(tv_sp03_grav_lift_01), 1);
kill_volume_enable(kill_sp03_bot);
end

script dormant f_sp03_top_kill_volumes()
sleep_until(volume_test_players(tv_spire_03_top_start), 1);
sleep_s(1);
sleep_until(not volume_test_players(tv_sp03_grav_lift_02), 1);
kill_volume_enable(kill_soft_sp03_high);
kill_volume_enable(kill_sp03_high);
kill_volume_enable(kill_soft_sp03_top);
kill_volume_enable(kill_sp03_top);

end

script static void f_grav_lift_02_gaze_correct()
	if player_valid(player0()) then
		f_grav_lift_gaze_lock(tv_grav_lift_02_gaze_lock, ps_grav_gaze.p0, player0());
	end
	
	if player_valid(player1()) then
		f_grav_lift_gaze_lock(tv_grav_lift_02_gaze_lock, ps_grav_gaze.p0, player1());
	end

	if player_valid(player2()) then
		f_grav_lift_gaze_lock(tv_grav_lift_02_gaze_lock, ps_grav_gaze.p0, player2());
	end

	if player_valid(player3()) then
		f_grav_lift_gaze_lock(tv_grav_lift_02_gaze_lock, ps_grav_gaze.p0, player3());
	end

end

script static void f_grav_lift_01_gaze_correct()
	if player_valid(player0()) then
		f_grav_lift_gaze_lock(tv_grav_lift_01_gaze_lock, ps_grav_gaze.p1, player0());
	end
	
	if player_valid(player1()) then
		f_grav_lift_gaze_lock(tv_grav_lift_01_gaze_lock, ps_grav_gaze.p1, player1());
	end

	if player_valid(player2()) then
		f_grav_lift_gaze_lock(tv_grav_lift_01_gaze_lock, ps_grav_gaze.p1, player2());
	end

	if player_valid(player3()) then
		f_grav_lift_gaze_lock(tv_grav_lift_01_gaze_lock, ps_grav_gaze.p1, player3());
	end

end

script static void f_grav_lift_gaze_lock(trigger_volume tv_lift, point_reference p_point, player p_player)
	dprint("start test");
	//player_control_clamp_gaze(player0(),ps_grav_gaze.p0, 25 );
	sleep_until(volume_test_object(tv_lift, p_player) or object_get_health(p_player) <= 0, 1);
	
	if object_get_health(p_player) > 0 then
		player_control_lock_gaze (p_player, p_point, 150);
		sleep(40);
		player_control_unlock_gaze(p_player);
	end
	
	
end



script static void test1()
dprint("TEST");
	//player_control_clamp_gaze(player0(),ps_grav_gaze.p0, 25 );
	sleep_until(volume_test_object(tv_grav_lift_02_gaze_lock, player0()), 1);
	player_control_lock_gaze (player0(), ps_grav_gaze.p0, 100);
	sleep(40);
	player_control_unlock_gaze(player0());
end
// --- End m70_spire_03.hsc ---

// --- Begin m70_spire_03_ai.hsc ---
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343
//
// Mission: 					m70
//
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343
//===================================
// SPIRE_03_AI
//===================================
//FUNCTION INDEX
//===================================
// SPIRE_03_AI_VARIABLES
// :: SPIRE_03_AI_DEFINES
// SPIRE_03_AI_FUNCTIONS
// :: SPIRE_03_AI_INIT
// :: SPIRE_03_AI_DEINIT
// :: SPIRE_03_AI_OBJCON
// SPIRE_03_AI_BOTTOM
// :: SPIRE_03_AI_BOTTOM_TURRETS
// :: SPIRE_03_AI_BOTTOM_FALLBACK
// SPIRE_03_AI_TOP
// SPIRE_03_AI_TOP_COMMAND_SCRIPTS


//====================================
// SPIRE_03_AI_VARIABLES
//====================================
global short S_sp03_bot_p_side = 0;
global short S_OBJ_CON_SPIRE_03 = 0;

global boolean B_sp03_top_staging 				= TRUE;
global boolean B_sp03_top_sniper_fallback = FALSE;


// :: SPIRE_03_AI_DEFINES
script static short S_DEF_OBJ_CON_SPIRE_03_BOTTOM_START()				1; end
script static short S_DEF_OBJ_CON_SPIRE_03_BOTTOM_MID()					2; end
script static short S_DEF_OBJ_CON_SPIRE_03_BOTTOM_BACK()				3; end
script static short S_DEF_OBJ_CON_SPIRE_03_BOTTOM_HUNTER()			4; end
script static short S_DEF_OBJ_CON_SPIRE_03_TOP_START()					5; end
script static short S_DEF_OBJ_CON_SPIRE_03_TOP_MID()						6; end
script static short S_DEF_OBJ_CON_SPIRE_03_TOP_BACK()						7; end
script static short S_DEF_OBJ_CON_SPIRE_03_TOP_BRIDGE()					8; end

//====================================
// SPIRE_03_AI_FUNCTIONS
//====================================

// :: SPIRE_03_AI_INIT
script dormant f_spire_03_AI_init()
	dprint( "::: f_spire_03_INT_AI_init :::" );

	// initialize sub modules
	sleep_until(volume_test_players(tv_spire_03_bottom_start), 1);
	
	checkpoint_no_timeout( TRUE, "SPIRE_03_START_BOTTOM_ENCOUNTER" );

	wake( f_sp03_ai_bottom );
	wake(f_sp03_ai_objcon_bottom);
	
	sleep_until(volume_test_players(tv_spire_03_top_start), 1);
	ai_erase(sg_sp03_bot_all);
	checkpoint_no_timeout( TRUE, "SPIRE_03_START_TOP_ENCOUNTER" );

	wake(f_sp03_ai_top);
	
end

script static void test_bottom()
	dprint("f_sp03_ai_bottom");
	ai_place(sq_sp03_bot_front_01);
	ai_place(sq_sp03_bot_front_02);
	ai_place(sq_sp03_bot_mid_right_01);
	ai_place(sq_sp03_bot_mid_right_02);
	ai_place(sq_sp03_bot_mid_right_03);
	ai_place(sq_sp03_bot_mid_left_01);
	ai_place(sq_sp03_bot_mid_left_02);
	ai_place(sq_sp03_bot_back_02);
	
	sleep_until(volume_test_players(tv_spire_03_bottom_mid), 1);
	wake(f_sp03_ai_objecon_bottom_check_side);
	S_OBJ_CON_SPIRE_03 = S_DEF_OBJ_CON_SPIRE_03_BOTTOM_MID();
	ai_place(sq_sp03_bot_back_01);
	ai_place(sq_sp03_bot_back_right);
	ai_place(sq_sp03_bot_back_left);
end

// :: SPIRE_03_AI_DEINIT
script dormant f_spire_03_AI_deinit()
	dprint( "::: f_spire_03_AI_deinit :::" );

	// kill functions
	sleep_forever( f_spire_03_AI_init );
	sleep_forever( f_sp03_ai_bottom );
	sleep_forever( f_sp03_ai_top );


end

// :: SPIRE_03_AI_OBJCON
script dormant f_sp03_ai_objcon_bottom()
	S_OBJ_CON_SPIRE_03 = S_DEF_OBJ_CON_SPIRE_03_BOTTOM_START();
	f_blip_flag(flg_sp03_elevator_bottom, "recon");
	sleep_until(volume_test_players(tv_spire_03_bottom_mid), 1);
	S_OBJ_CON_SPIRE_03 = S_DEF_OBJ_CON_SPIRE_03_BOTTOM_MID();
	wake(f_sp03_ai_objecon_bottom_check_side);
	sleep_until(volume_test_players(tv_spire_03_bottom_back), 1);
	S_OBJ_CON_SPIRE_03 = S_DEF_OBJ_CON_SPIRE_03_BOTTOM_BACK();
	sleep_until(volume_test_players(tv_spire_03_bottom_hunter), 1);
	S_OBJ_CON_SPIRE_03 = S_DEF_OBJ_CON_SPIRE_03_BOTTOM_HUNTER();
	sleep_until(volume_test_players(tv_grav_lift_02_start), 1);
	f_unblip_flag(flg_sp03_elevator_bottom);
end	

script dormant f_sp03_ai_objecon_bottom_check_side()
	if volume_test_players(tv_sp03_bottom_mid_left) then
		S_sp03_bot_p_side = 1;
	elseif volume_test_players(tv_sp03_bottom_mid_right) then
		S_sp03_bot_p_side = 2;
	end
end

//========================================
// SPIRE_03_AI_BOTTOM
//========================================

script dormant f_sp03_ai_bottom()
	dprint("f_sp03_ai_bottom");
	ai_place(sq_sp03_bot_front_01);
	ai_place(sq_sp03_bot_front_02);
	ai_place(sq_sp03_bot_mid_right_01);
	ai_place(sq_sp03_bot_mid_right_02);
	ai_place(sq_sp03_bot_mid_right_03);
	ai_place(sq_sp03_bot_mid_left_01);
	ai_place(sq_sp03_bot_mid_left_02);
	ai_place(sq_sp03_bot_back_02);
	
	sleep_until(volume_test_players(tv_spire_03_bottom_mid), 1);
	wake(f_sp03_ai_objecon_bottom_check_side);
	S_OBJ_CON_SPIRE_03 = S_DEF_OBJ_CON_SPIRE_03_BOTTOM_MID();
	ai_place(sq_sp03_bot_back_01);
	ai_place(sq_sp03_bot_back_right);
	ai_place(sq_sp03_bot_back_left);
	
	wake(f_sp03_ai_bottom_spawn_hunter);
end

script dormant f_sp03_ai_bottom_spawn_hunter()
	dprint("f_sp03_ai_bottom_spawn_hunter");
	if object_valid(sp03_bottom_hunter_elevator) then
		object_destroy(sp03_bottom_hunter_elevator);
	end
	
	if object_valid(sp03_bottom_elevator_02) then 
		object_destroy(sp03_bottom_elevator_02);
	end
	
	sleep_until(volume_test_players(tv_spire_03_bottom_hunter), 1);
	wake(f_m70_cheevo);
	ai_place(sq_sp03_bot_hunter_01);
	sleep_s(2);
	object_destroy(sp03_bottom_hunter_elevator);
	sleep_s(1);
	object_create(sp03_bottom_hunter_elevator);
	sleep_s(1);
	ai_place(sq_sp03_bot_hunter_02);
	sleep_s(2.5);
	object_destroy(sp03_bottom_hunter_elevator);
	f_sp03_fx_grav_lift_disable();


	sleep_until( (ai_living_count(sq_sp03_bot_hunter_01) + ai_living_count(sq_sp03_bot_hunter_02)) == 0, 1);

	sleep_s(0.25);
	game_save_no_timeout();
	
	sleep_s(3);
	
	f_sp03_fx_grav_lift_enable();
	
	object_create(sp03_bottom_elevator_02);
	
	wake(f_sp03_set_transition_blocker);
end

script command_script cs_sp03_hunter_sidestep()
	cs_move_in_direction( 0.0, 3.0, 0.0);
end

script command_script cs_sp03_hunter_sidestep_2()
	cs_move_in_direction( 1.0, 0.0, 0.0);
end

script command_script cs_phantom_01_fly()
	object_set_scale (ai_vehicle_get(ai_current_actor), 0, 0);
	object_set_scale (ai_vehicle_get(ai_current_actor), 1, 30);
	f_load_phantom( ai_current_actor, "right", sq_sp03_bot_front_01, sq_sp03_bot_front_02, none, none );
	cs_fly_to_and_face(ps_bottom_phantom.p0, ps_bottom_phantom.p1);
	//cs_fly_to( ps_bottom_phantom.p0 );
	//cs_fly_to( ps_bottom_phantom.p2 );

	f_unload_phantom( ai_current_actor, "right" );
	
	cs_fly_to( ps_bottom_phantom.p4 );
	cs_fly_to( ps_bottom_phantom.p7 );
	cs_fly_to( ps_bottom_phantom.p6 );
//	ai_erase(sq_sp03_bot_phantom_01);
end

script command_script cs_phantom_02_fly()
	//f_load_phantom( ai_current_actor, "left", sq_sp03_bot_front_01, sq_sp03_bot_front_02, none, none );
	//cs_fly_to( ps_bottom_phantom.p0 );
	//cs_fly_to( ps_bottom_phantom.p2 );
	//cs_fly_to( ps_bottom_phantom.p4 );
	//cs_fly_to( ps_bottom_phantom.p3 );
	//cs_fly_to_and_face(ps_bottom_phantom.p2, ps_bottom_phantom.p5);
	//f_unload_phantom( ai_current_actor, "left" );
	cs_fly_to( ps_bottom_phantom.p5 );
	cs_fly_to( ps_bottom_phantom.p6 );
//	ai_erase(sq_sp03_bot_phantom_02);
end

// :: SPIRE_03_AI_BOTTOM_TURRETS
script static boolean f_sp03_bottom_turret_right_valid()
	ai_in_vehicle_count(sq_sp03_bot_mid_right_02) < 1 and
	ai_living_count(sq_sp03_bot_mid_right_02) != 0 and
	not volume_test_players(tv_sp03_bottom_mid_right);
end

script static boolean f_sp03_bottom_turret_left_valid()
	ai_in_vehicle_count(sq_sp03_bot_mid_left_02) < 1 and
	ai_living_count(sq_sp03_bot_mid_left_02) != 0 and
	not volume_test_players(tv_sp03_bottom_mid_left);
end

script dormant f_sp03_ai_bottom_turrets_right()
	
	local short s_random = 0;
	local short s_turret_count = 0;


	repeat 
		if f_sp03_bottom_turret_right_valid() and (s_turret_count < 2) then		
	
			if ai_living_count(sq_sp03_bot_mid_right_02.spawn_points_0) != 0 then	
				//cs_go_to_vehicle(sq_sp03_bot_mid_right_02.spawn_points_0, true, v_spire03_turret_plasma_01);
				s_turret_count = (s_turret_count + 1);
		
			elseif ai_living_count(sq_sp03_bot_mid_right_02.spawn_points_1) != 0 then 
				//cs_go_to_vehicle(sq_sp03_bot_mid_right_02.spawn_points_1, true, v_spire03_turret_plasma_01);
				s_turret_count = (s_turret_count + 1);
			end
		end	
		
		sleep_s(real_random_range(0.5,2.25));
		
	until(S_OBJ_CON_SPIRE_03 >= S_DEF_OBJ_CON_SPIRE_03_BOTTOM_MID() or s_turret_count == 2, 1);

end

script dormant f_sp03_ai_bottom_turrets_left()
	
	local short s_random = 0;
	local short s_turret_count = 0;

	repeat 
		if f_sp03_bottom_turret_right_valid() and (s_turret_count < 2) then		
	
			if ai_living_count(sq_sp03_bot_mid_left_02.spawn_points_0) != 0 then	
//				cs_go_to_vehicle(sq_sp03_bot_mid_left_02.spawn_points_0, true, v_spire03_turret_plasma_02);
				s_turret_count = (s_turret_count + 1);
		
			elseif ai_living_count(sq_sp03_bot_mid_left_02.spawn_points_1) != 0 then 
				//cs_go_to_vehicle(sq_sp03_bot_mid_left_02.spawn_points_1, true, v_spire03_turret_plasma_02);
				s_turret_count = (s_turret_count + 1);
			end	
		end
		sleep_s(real_random_range(0.5,2.25));
		
	until(S_OBJ_CON_SPIRE_03 >= S_DEF_OBJ_CON_SPIRE_03_BOTTOM_MID() or s_turret_count == 2);
	
end


// :: SPIRE_03_AI_BOTTOM_FALLBACK

script dormant f_sp03_ai_bottom_fallback()
sleep_until(S_OBJ_CON_SPIRE_03 == S_DEF_OBJ_CON_SPIRE_03_BOTTOM_MID(), 1);

	if not volume_test_players(tv_sp03_bottom_mid_left) then
		ai_set_task_condition(obj_sp03_bottom.gate_mid_left, false);
		
	elseif not volume_test_players(tv_sp03_bottom_mid_right) then
		ai_set_task_condition(obj_sp03_bottom.gate_mid_right, false);
		
	elseif volume_test_players(tv_sp03_bottom_mid_right) and volume_test_players(tv_sp03_bottom_mid_left) then
		dprint("add back push front for coop");
//		ai_set_task_condition(obj_sp03_bottom.gate_reinforcements, false);
	end
	
end


//========================================
// SPIRE_03_AI_TOP
//========================================

script dormant f_sp03_ai_top()
	dprint("f_sp03_ai_top");
	wake(f_sp03_objcon_top);
	wake(f_sp03_ai_top_start);

end

script dormant f_sp03_objcon_top()
dprint("f_sp03_objcon_top");
 S_OBJ_CON_SPIRE_03 = S_DEF_OBJ_CON_SPIRE_03_TOP_START();		
 
 sleep_until(volume_test_players(tv_sp03_top_front), 1);	
 dprint("S_OBJ_CON_SPIRE_03 = S_DEF_OBJ_CON_SPIRE_03_TOP_MID()");
 S_OBJ_CON_SPIRE_03 = S_DEF_OBJ_CON_SPIRE_03_TOP_MID();		
 
 sleep_until(volume_test_players(tv_sp03_top_mid), 1);	
 dprint("S_OBJ_CON_SPIRE_03 = S_DEF_OBJ_CON_SPIRE_03_TOP_BACK()");
 S_OBJ_CON_SPIRE_03 = S_DEF_OBJ_CON_SPIRE_03_TOP_BACK();
 
 sleep_until(volume_test_players(tv_sp03_top_back), 1);
 dprint("S_OBJ_CON_SPIRE_03 = S_DEF_OBJ_CON_SPIRE_03_TOP_BRIDGE()");
 S_OBJ_CON_SPIRE_03 = S_DEF_OBJ_CON_SPIRE_03_TOP_BRIDGE();
 
end
//wake(f_sp03_ai_top_start)
script dormant f_sp03_ai_top_start()
	ai_lod_full_detail_actors(25);
	dprint("f_sp03_ai_top_start");
	//air 
	ai_place(sq_sp03_top_bansh_front);
	ai_place(sq_sp03_top_bansh_start_01);	
	ai_place(sq_sp03_top_bansh_start_02);
	//inf front
	ai_place(sq_sp03_top_front_left_elite);
	//ai_place(sq_sp03_top_front_right_sniper);
	ai_place(sq_sp03_top_turret_front);
	ai_place(sq_sp03_top_turret_bridge_02);
	//inf mid
	ai_place(sq_sp03_top_mid);
	ai_place(sq_sp03_top_mid_right);
	ai_place(sq_sp03_top_mid_left);
	//inf back
	wake(f_sp03_ai_top_inf_back);
	

	//turrets
	wake(f_sp03_top_ai_mid_right_turret);
	wake(f_sp03_top_ai_mid_left_turret);
	ai_place(sq_sp03_top_turret_back);
	ai_place(sq_sp03_top_turret_bridge);
	
	//inf bridge
	//ai_place(sq_sp03_top_bridge_hunter_01);
	//ai_place(sq_sp03_top_bridge_hunter_02);	
	ai_place(sg_sp03_top_bridge);
	
	wake(f_sp03_ai_top_inf_reinforce);
	
	
end

script dormant f_sp03_ai_top_inf_back()
	dprint("f_sp03_ai_top_inf_back");
	sleep_until(S_OBJ_CON_SPIRE_03 >= S_DEF_OBJ_CON_SPIRE_03_TOP_BACK() and not volume_test_players_lookat (tv_sp03_back_spawn_lookat, 24, 24), 1);
	ai_place(sq_sp03_top_back);

end

script dormant f_sp03_ai_top_inf_reinforce()
	dprint("f_sp03_ai_top_inf_reinforce");
	sleep_until(ai_living_count(sg_sp_03_top_all) <= 18, 1);
		thread(f_sp03_ai_top_inf_reinforcements());
		sleep_s(5);
	sleep_until(ai_living_count(sg_sp_03_top_all) <= 18, 1);
		if vehicle_test_players() or game_is_cooperative() then
		thread(f_sp03_ai_top_inf_reinforcements());
		sleep_s(5);
		end
	sleep_until(ai_living_count(sg_sp_03_top_all) <= 18, 1);
		if vehicle_test_players() or game_is_cooperative() then
		thread(f_sp03_ai_top_inf_reinforcements());
		sleep_s(5);
		end
	sleep_until(ai_living_count(sg_sp_03_top_all) <= 18, 1);
		if game_is_cooperative() then
		thread(f_sp03_ai_top_inf_reinforcements());
		sleep_s(5);
		end


end

script static void f_sp03_ai_top_inf_reinforcements()
	dprint("f_sp03_ai_top_inf_reinforcements");
	if ai_living_count(sq_sp03_top_reinforce_aa_01) == 0 and vehicle_test_players() then
		sleep_until( not volume_test_players_lookat (tv_sp03_left_spawn_lookat, 24, 24) and not volume_test_players(tv_sp03_top_plat_back_left), 1);
		ai_place(sq_sp03_top_reinforce_aa_01);
	elseif ai_living_count(sq_sp03_top_reinforce_inf_01) == 0 then
	sleep_until( not volume_test_players_lookat (tv_sp03_right_spawn_lookat, 24, 24)and not volume_test_players(tv_sp03_top_plat_back_right), 1);
		ai_place(sq_sp03_top_reinforce_inf_01);
	elseif ai_living_count(sq_sp03_top_reinforce_aa_02) == 0 and vehicle_test_players() then
	sleep_until( not volume_test_players_lookat (tv_sp03_back_spawn_lookat, 24, 24) and not volume_test_players(tv_sp03_plat_back), 1);
		ai_place(sq_sp03_top_reinforce_aa_02);
	elseif ai_living_count(sq_sp03_top_reinforce_inf_02) == 0 then
	sleep_until( not volume_test_players_lookat (tv_sp03_bridge_spawn_lookat, 24, 24) and not volume_test_players(tv_sp03_bridge), 1);
		ai_place(sq_sp03_top_reinforce_inf_02);
	end

end

script dormant f_sp03_ai_top_air_reinforce()
	sleep_until(ai_living_count(sg_sp03_top_air) < 3 and vehicle_test_players(), 1);
	f_sp03_top_ai_place( sq_sp03_top_bansh_reinforce_01, 20);
	sleep_s(2);
	//xxx add co-op 4th banshee
end

script static void f_sp03_top_ai_place( ai squad, short living_count)
	dprint("squad in queued");
	sleep_until(ai_living_count(sg_sp_03_top_all) < living_count, 1);
	dprint("placing a squad");
	ai_place(squad);
end

//turrets
script static boolean f_sp03_top_ai_mid_right_shade_valid()
	object_get_health(v_sp03_shade_mid_right) > 0 and
	object_valid(v_sp03_shade_mid_right) and
	ai_living_count(sq_sp03_top_mid_right) != 0 and
	ai_in_vehicle_count(sq_sp03_top_mid_right) < 1;
end

script static boolean f_sp03_top_ai_mid_left_shade_valid()
	object_get_health(v_sp03_shade_mid_left) > 0 and
	object_valid(v_sp03_shade_mid_left) and
	ai_living_count(sq_sp03_top_mid_left) != 0;
	ai_in_vehicle_count(sq_sp03_top_mid_left) < 1;
end

script dormant f_sp03_top_ai_mid_right_turret()
	local short s_random_count = random_range(2,3);
	local short s_turret_count = 0;
	inspect(s_random_count);
	repeat 
	
		if f_sp03_top_ai_mid_right_shade_valid() and s_turret_count < s_random_count then		

			if ai_living_count(sq_sp03_top_mid_right.spawn_points_0) != 0 then	
				cs_go_to_vehicle(sq_sp03_top_mid_right.spawn_points_0, true, v_sp03_shade_mid_right);
				s_turret_count = (s_turret_count + 1);
			
			elseif ai_living_count(sq_sp03_top_mid_right.spawn_points_1) != 0 then	
				cs_go_to_vehicle(sq_sp03_top_mid_right.spawn_points_1, true, v_sp03_shade_mid_right);
				s_turret_count = (s_turret_count + 1);

			elseif ai_living_count(sq_sp03_top_mid_right.spawn_points_2) != 0 then	
				cs_go_to_vehicle(sq_sp03_top_mid_right.spawn_points_2, true, v_sp03_shade_mid_right);
				s_turret_count = (s_turret_count + 1);
			elseif ai_living_count(sq_sp03_top_mid_right.spawn_points_3) != 0 then
				s_turret_count = (s_turret_count + 1);
				
			end	
			
		end	
		sleep_s(real_random_range(3,7));

	until( ai_living_count(sq_sp03_top_mid_right) == 0 or s_turret_count == s_random_count, 1);

end

script dormant f_sp03_top_ai_mid_left_turret()
	local short s_random_count = random_range(2,3);
	local short s_turret_count = 0;

repeat 
		if f_sp03_top_ai_mid_left_shade_valid() and s_turret_count < s_random_count then		
	
			if ai_living_count(sq_sp03_top_mid_left.spawn_points_0) != 0 then	
				cs_go_to_vehicle(sq_sp03_top_mid_left.spawn_points_0, true, v_sp03_shade_mid_left);
				s_turret_count = (s_turret_count + 1);
			
			elseif ai_living_count(sq_sp03_top_mid_left.spawn_points_1) != 0 then	
				cs_go_to_vehicle(sq_sp03_top_mid_left.spawn_points_1, true, v_sp03_shade_mid_left);
				s_turret_count = (s_turret_count + 1);

			elseif ai_living_count(sq_sp03_top_mid_left.spawn_points_2) != 0 then	
				cs_go_to_vehicle(sq_sp03_top_mid_left.spawn_points_2, true, v_sp03_shade_mid_left);
				s_turret_count = (s_turret_count + 1);
			elseif ai_living_count(sq_sp03_top_mid_left.spawn_points_3) != 0 then
				s_turret_count = (s_turret_count + 1);
				
			end	
			
		end	
		
		sleep_s(real_random_range(3,7));
		
	until( ai_living_count(sq_sp03_top_mid_left) == 0 or s_turret_count == s_random_count, 1);
	
end





//========================================
// SPIRE_03_AI_TOP_COMMAND_SCRIPTS
//========================================
script command_script cs_sp03_top_bridge_berserk()
	ai_berserk(ai_current_actor, TRUE);
end

script command_script cs_sp03_go_to_banshee_01()
	dprint("banshee enter");
	cs_vehicle_speed(0.1);
	sleep_s(4);
	cs_vehicle_speed(1);
	sleep_s(1);
	//cs_go_to_vehicle( v_sp03_bansh_01 );
end

script command_script cs_sp03_go_to_banshee_02()
	dprint("banshee enter");
//	sleep_s(1);
//	cs_go_to_vehicle( v_sp03_bansh_02 );
end

script command_script cs_sp03_go_to_banshee_03()
	dprint("banshee enter");
	//cs_go_to_vehicle( v_sp03_bansh_03 );
end

// --- End m70_spire_03_ai.hsc ---

// --- Begin m70_spire_03_audio.hsc ---
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343
//
// Mission: 					m70
//
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343

// =================================================================================================
// =================================================================================================
// spire_03_INT_audio
// =================================================================================================
// =================================================================================================
// variables

// functions
// === f_spire_03_INT_audio_init::: Initialize
script dormant f_spire_03_audio_init()
	dprint( "::: f_spire_03_INT_audio_init :::" );
	//sleep_until()
	
	wake(f_spire_03_encounter_audio);
	// initialize modules

	// initialize sub modules
	//wake( f_spire_03_INT_audio_CCC_init );

end

// === f_spire_03_INT_audio_deinit::: Deinitialize
script dormant f_spire_03_audio_deinit()
	dprint( "::: f_spire_03_INT_audio_deinit :::" );

	// kill functions
	sleep_forever( f_spire_03_audio_init );

	// deinitialize modules

	// deinitialize sub modules
	//wake( f_spire_03_INT_audio_CCC_deinit );

end


script dormant f_spire_03_encounter_audio()
	dprint("f_spire_03_encounter_audio");

end

// --- End m70_spire_03_audio.hsc ---

// --- Begin m70_spire_03_fx.hsc ---
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343
//
// Mission: 					m70
//
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343

// =================================================================================================
// =================================================================================================
// spire_03_INT_FX
// =================================================================================================
// =================================================================================================
// variables

// functions
// === f_spire_03_INT_FX_init::: Initialize
script dormant f_spire_03_FX_init()
	dprint( "::: f_spire_03_INT_FX_init :::" );

	// initialize modules

	// initialize sub modules
	//wake( f_spire_03_INT_FX_CCC_init );

end

// === f_spire_03_INT_FX_deinit::: Deinitialize
script dormant f_spire_03_FX_deinit()
	dprint( "::: f_spire_03_INT_FX_deinit :::" );

	// kill functions
	sleep_forever( f_spire_03_FX_init );

	// deinitialize modules

	// deinitialize sub modules
	//wake( f_spire_03_INT_FX_CCC_deinit );

end


// Placeholder for the spire collision debris effects. The effect tag may change, once it does we can just move this into the puppeteer.
script static void fx_debris(point_reference fxPoint)
	dprint("-------------------------fx_debris()");
	effect_new_at_ai_point(environments\solo\m70_liftoff\fx\dust\dust_backdraft_large_goingright.effect, fxPoint);
end


script static void f_sp03_fx_grav_lift_01()
	dprint("f_sp03_fx_grav_lift_01");
	effect_new_between_points(environments\solo\m70_liftoff\fx\energy\gravlift_tube.effect, fx_14_gravlift_1_start, fx_14_gravlift_1_end);
	sleep_until(volume_test_players(tv_sp03_grav_lift_01), 1);
	thread(f_grav_lift_01_gaze_correct());
	thread(f_grav_lift_effect_on_player(tv_sp03_grav_lift_01, player0));
	thread(f_grav_lift_effect_on_player(tv_sp03_grav_lift_01, player1));
	thread(f_grav_lift_effect_on_player(tv_sp03_grav_lift_01, player2));
	thread(f_grav_lift_effect_on_player(tv_sp03_grav_lift_01, player3));

end

script static void f_sp03_fx_grav_lift_disable()
	dprint("f_sp03_fx_grav_lift_disable");
	effect_kill_from_flag(environments\solo\m70_liftoff\fx\energy\gravlift_base.effect, fx_14_gravlift_2_start);
end

script static void f_sp03_fx_grav_lift_enable()
	dprint("f_sp03_fx_grav_lift_enable");
	effect_new( environments\solo\m70_liftoff\fx\energy\gravlift_base.effect, fx_14_gravlift_2_start);
end
//effect_kill_from_flag(effect , flag);
script static void f_sp03_fx_grav_lift_02()
		effect_new_between_points(environments\solo\m70_liftoff\fx\energy\gravlift_tube.effect, fx_14_gravlift_2_start, fx_14_gravlift_2_end);
		sleep_until(volume_test_players(tv_sp03_grav_lift_02), 1);
		thread(f_grav_lift_02_gaze_correct());
		
		thread(f_grav_lift_effect_on_player(tv_grav_lift_02_loop_effect, player0));
		thread(f_grav_lift_effect_on_player(tv_grav_lift_02_loop_effect, player1));
		thread(f_grav_lift_effect_on_player(tv_grav_lift_02_loop_effect, player2));
		thread(f_grav_lift_effect_on_player(tv_grav_lift_02_loop_effect, player3));
end

script static void f_grav_lift_effect_on_player(trigger_volume tv_gravlift, player p_player)
	sleep_until(volume_test_object(tv_gravlift, p_player), 1);
	sleep_s(0.25);
	dprint("f_sp03_fx_grav_lift_01");
	effect_new_on_object_marker(environments\solo\m70_liftoff\fx\energy\gravlift_inside.effect, p_player, "fx_shield_core");
	sleep_until(not volume_test_object(tv_gravlift, p_player), 1);
	effect_kill_object_marker(environments\solo\m70_liftoff\fx\energy\gravlift_inside.effect, p_player, "fx_shield_core ");
end
//	effect_new_on_object_marker_loop <effect> <object> <string_id>
// effect_new_on_object_marker(environments\solo\m70_liftoff\fx\energy\gravlift_inside.effect, player0, "fx_shield_core");
//	effect_new_on_object_marker_loop(environments\solo\m70_liftoff\fx\energy\gravlift_inside.effect, player0, "fx_shield_core ");
//	effect_stop_object_marker(environments\solo\m70_liftoff\fx\energy\gravlift_inside.effect, player0, "fx_shield_core ");
//effect_kill_object_marker(environments\solo\m70_liftoff\fx\energy\gravlift_inside.effect, player0, "fx_shield_core ");


//vehicle_set_player_interaction(flight_pelican_sp01, "" TRUE, TRUE);
//vehicle_test_seat(flight_pelican_sp01, "pelican_d");
//vehicle_test_seat_unit(flight_pelican_sp01, "pelican_d", player0)
// --- End m70_spire_03_fx.hsc ---

