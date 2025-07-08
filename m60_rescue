// --- Begin m60_dialog.hsc ---

// =================================================================================================
// =================================================================================================
// DIALOGUE SCRIPTING M60
// =================================================================================================
// =================================================================================================


// =================================================================================================
// *** GLOBALS ***

global long l_dlg_m60_plinth_call = DEF_DIALOG_ID_NONE();
global long l_dlg_m60_infinityberth_tocauseway = DEF_DIALOG_ID_NONE();
global long l_dlg_infinityouterdeck_mac_ready = DEF_DIALOG_ID_NONE();
global long L_dlg_1st_fof_ping = DEF_DIALOG_ID_NONE();
	
// =================================================================================================

///////////////////////////////////////////////////////////////////////////////////
// MAIN
///////////////////////////////////////////////////////////////////////////////////
script startup M60_dialogue_main()
	
	if (game_insertion_point_get() < 22) then
	
	print ("::: M60 Dialogue Start :::");
	


	end

end

//3434343434343434343434343434343434343434343434343434343434343434343434343434

////////////////////////////////////DIALOGUE SCRIPTS////////////////////////////

//3434343434343434343434343434343434343434343434343434343434343434343434343434



script dormant f_dialog_m60_1st_fof_ping()
dprint("f_dialog_m60_1st_fof_ping");

					L_dlg_1st_fof_ping = dialog_start_foreground( "M60_1AT_FOF_PING", L_dlg_1st_fof_ping, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
						dialog_line_cortana( L_dlg_1st_fof_ping, 0, TRUE, 'sound\dialog\mission\m60\1st_fof_ping_00100', FALSE, NONE, 0.0, "", "Cortana : I'm seeing numerous IFF tags below the tree line.  Painting the closest one on your HUD." );
				 L_dlg_1st_fof_ping = dialog_end( L_dlg_1st_fof_ping, TRUE, TRUE, "" );
				 //f_blip_object (crumb_dogtag_01, "recon");
				 dprint("f_dialog_m60_1st_fof_ping end");
end

script dormant f_dialog_m60_the_view()
dprint("f_dialog_m60_the_view");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M60_THE_VIEW", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
						dialog_line_chief( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m60\peak_vo_theview_00100', FALSE, NONE, 0.0, "", "Master Chief : That scan's the same one we saw on the Dawn." );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
				 wake(f_dialog_m60_the_view_02);
end
script dormant f_dialog_m60_the_view_02()
dprint("f_dialog_m60_the_view");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M60_THE_VIEW_02", l_dialog_id, TRUE, DEF_DIALOG_STYLE_SKIP(), TRUE, "", 0.25 );    
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m60\peak_vo_theview_00200', TRUE, NONE, 0.0, "", "Cortana : Except now, the Didact's free to handle it personally." );						
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end



script dormant f_dialog_m60_vo_trail_transmission()
dprint("f_dialog_m60_vo_trail_transmission");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M60_VO_TRAIL_TRANSMISSION", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), TRUE, "", 0.25 );    						
						dialog_line_chief( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m60\peak_vo_trail_transmission_00400', TRUE, NONE, 0.0, "", "Master Chief : Hail Infinity and let them know about the Didact." );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end

script dormant f_dialog_m60_vo_trail_transmission_02()
dprint("f_dialog_m60_vo_trail_transmission");
					
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_background( "M60_VO_TRAIL_TRANSMISSION-02", l_dialog_id, TRUE, DEF_DIALOG_STYLE_PLAY(), FALSE, "", 0.0 );    						
						start_radio_transmission( "delrio_transmission_name" );
						dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m60\peak_vo_trail_transmission_00200', FALSE, NONE, 0.0, "", "Del Rio : Infinity to Commander Lasky.  We've lost contact with your Pelicans!  Report in!", TRUE);
						end_radio_transmission();
						//dialog_line_cortana( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m60\peak_vo_trail_transmission_00500', FALSE, NONE, 0.0, "", "Cortana : I�m trying but their comms must be malfunctioning." );
				//		dialog_line_chief( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m60\peak_vo_trail_transmission_00300', FALSE, NONE, 0.0, "", "Master Chief : They must not have received his distress call." );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
				 wake(f_dialog_m60_vo_trail_transmission_02B);
end

script dormant f_dialog_m60_vo_trail_transmission_02B()
dprint("f_dialog_m60_vo_trail_transmission_02B");
					
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_background( "M60_VO_TRAIL_TRANSMISSION_02B", l_dialog_id, TRUE, DEF_DIALOG_STYLE_PLAY(), FALSE, "", 0.0 );    						
						dialog_line_chief( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m60\peak_vo_trail_transmission_00300', FALSE, NONE, 0.0, "", "Master Chief : They must not have received his distress call." );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end

script static void f_dialog_m60_vignette_ambush_01()
dprint("f_dialog_m60_vignette_ambush_01");
static long l_dialog_id = DEF_DIALOG_ID_NONE();

                        l_dialog_id = dialog_start_background( "M60_VIGNETTE_AMBUSH_01", l_dialog_id, TRUE, DEF_DIALOG_STYLE_PLAY(), TRUE, "", 0.0 );
														dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m60\audio_vignette_ambush_00101_soundstory_live', FALSE, ambush_attachment, 0.0, "", "Ambush Marine 1 : Now they're be--AAAA!!", TRUE);
                        l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
									//wake(f_dialog_m60_vignette_ambush_03);
end




script dormant f_dialog_m60_vignette_ambush_03()
dprint("f_dialog_m60_vignette_ambush_03");
	//sleep_until(volume_test_players(peak_prometheans_appear_cortana), 1);
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M60_VIGNETTE_AMBUSH_02", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
			//			dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\global\global_chatter_00119', FALSE, NONE, 0.0, "", "Cortana : Hostiles!" );
		//				sleep_s(1);
						dialog_line_chief( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m60\peak_prometheans_appear_00400', FALSE, NONE, 0.0, "", "Master Chief : Lasky?" );
						dialog_line_cortana( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m60\peak_prometheans_appear_00500', FALSE, NONE, 0.0, "", "Cortana : One of them�s an officer." );
						dialog_line_cortana( l_dialog_id, 3, TRUE, 'sound\dialog\mission\m60\peak_prometheans_appear_00600', FALSE, NONE, 0.0, "", "Cortana : Check his IFF tag." );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end


script static void f_dialog_m60_vignette_ambush_04()
	dprint("f_dialog_m60_vignette_ambush_04");
	static long l_dialog_id = DEF_DIALOG_ID_NONE();
         
    l_dialog_id = dialog_start_foreground( "M60_VIGNETTE_AMBUSH_04", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), TRUE, "", 0.0 );
	dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m60\peak_after_iff_00100', FALSE, NONE, 0.0, "", "Cortana : The tag ID�s him as Jiminez, Paolo J." );
	dialog_line_chief( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m60\peak_after_iff_00200', FALSE, NONE, 0.0, "", "Master Chief : Then Lasky�s still out there somewhere." );

	wake(f_blip_trail_passage_breadcrumbs);
	//sound_impulse_start( 'sound\storm\vo\ui_pip_squelch_in_01', iff_1_attachment, 1 );
//	hud_play_pip_from_tag( "bink\Campaign\M60_A_60" );   										

	thread(m60_vignette_ambush_04_subtitles());
	dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m60\audio_vignette_ambush_00101_soundstory_recording', FALSE, iff_1_attachment, 0.0, "", "Ambush Marine 2 : I mean, c'mon Sarge.  Who sends recon downrange in the middle of a firefight?", TRUE);
	l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );		
			
	sleep_s(21);
//	sound_impulse_start( 'sound\storm\vo\ui_pip_squelch_out_01', iff_1_attachment, 1 );
end

script static void m60_vignette_ambush_04_subtitles()
	sleep(30);
	dialog_play_subtitle('sound\dialog\mission\m60\audio_vignette_ambush_00101');
	sleep(70);
	dialog_play_subtitle('sound\dialog\mission\m60\audio_vignette_ambush_00102');
	sleep(120);
	dialog_play_subtitle('sound\dialog\mission\m60\audio_vignette_ambush_00103');
	sleep(120);
	dialog_play_subtitle('sound\dialog\mission\m60\audio_vignette_ambush_00104');
end

script dormant f_dialog_m60_vignette_ambush_05()
dprint("f_dialog_m60_vignette_ambush_05");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M60_VIGNETTE_AMBUSH_05", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
						
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end

script dormant f_dialog_m60_sniper_backscatter()
dprint("f_dialog_m60_sniper_backscatter");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M60_SNIPER_BACKSCATTER", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
						//dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m60\trails1_sniper_00101', FALSE, NONE, 0.0, "", "Cortana : Sniper!" );
						//dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m60\trails1_sniper_00102', FALSE, NONE, 0.0, "", "Cortana : Backscatter, refracting off the mist." );
						//dialog_line_cortana( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m60\trails1_sniper_00103', FALSE, NONE, 0.0, "", "Cortana : It could indicate they�re using an alternate weapon sighting." );
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m60\trails1_sniper_00107', FALSE, NONE, 0.0, "", "Cortana : Stay sharp." );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end

script dormant f_dialog_m60_trails_knight_vignette()
dprint("f_dialog_m60_trails_knight_vignette");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M60_KNIGHT_VIGNETTE", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
				 dialog_line_npc(l_dialog_id, 0, TRUE, 'sound\dialog\mission\m60\m60_soundstory_00117_soundstory', FALSE, trails_knight_vignette, 0.0, "", "Swamp Marine: Hostiles in the fog!", TRUE);
		
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
			
end

script dormant f_dialog_m60_trails_iffcallout()
dprint("f_dialog_m60_trails_iffcallout");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M60_TRAILS_IFFCALLOUT", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m60\trails_iffcallout_00100', FALSE, NONE, 0.0, "", "Cortana : We�ve got another IFF on the far side of this thicket." );
				
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
				 f_blip_object (crumb_dogtag_02, "recon");
end


script dormant f_dialog_m60_xray_intro()
dprint("f_dialog_m60_xray_intro");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M60_XRAY_INTRO", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
						dialog_line_cortana( l_dialog_id, 0, (b_xray_pickedup == FALSE), 'sound\dialog\mission\m60\xray_intro_00100', FALSE, NONE, 0.0, "", "Cortana : Hold up; what was that he dropped on the ground over there?" );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end

script dormant f_dialog_m60_xray_intro_2()
	sleep_until(volume_test_players(m60_xray_intro_02), 1);
dprint("f_dialog_m60_xray_intro_2");
local long l_dialog_id = DEF_DIALOG_ID_NONE();

					l_dialog_id = dialog_start_foreground( "M60_XRAY_INTRO_2", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
						//dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m60\xray_intro_00200', FALSE, NONE, 0.0, "", "Cortana : Very clever. It's a quantum imager." );
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m60\xray_intro_00300', FALSE, NONE, 0.0, "", "Cortana : This is what they've been using to see through the fog." );
						//dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m60\xray_intro_00400', FALSE, NONE, 0.0, "", "Cortana : More Prometheans down in the mist." );
					//	dialog_line_cortana( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m60\xray_intro_00500', FALSE, NONE, 0.0, "", "Cortana : Try using the Imager to target them." );
						//dialog_line_cortana( l_dialog_id, 4, TRUE, 'sound\dialog\mission\m60\xray_intro_00600', FALSE, NONE, 0.0, "", "Cortana : Let's see if we can use their own tech against them." );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );

				 
end

script dormant f_dialog_m60_crumb_dogtag_scan2()
	dprint("f_dialog_m60_crumb_dogtag_scan2");
	local long l_dialog_id = DEF_DIALOG_ID_NONE();
					
		f_unblip_object (crumb_dogtag_02);
		l_dialog_id = dialog_start_foreground( "M60_DOGTAG_SCAN2", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );  
		
		hud_play_pip_from_tag( "bink\Campaign\M60_B_60" );
		thread(m60_crumb_dogtag_scan2_subtitles());
			
		sound_impulse_start( 'sound\storm\vo\ui_pip_squelch_in_01', iff_2_attachment, 1 );  
		dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m60\crumb_dogtag_scan2_00100_soundstory', FALSE, iff_2_attachment, 0.0, "", "Lasky : We should get eyes out there looking for the others.", TRUE);
		sound_impulse_start( 'sound\storm\vo\ui_pip_squelch_out_01', iff_2_attachment, 1 );
		//	dialog_line_npc( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m60\crumb_dogtag_scan2_00101', FALSE, iff_2_attachment, 0.0, "", "Palmer : Peters, you heard Commander Lasky.", TRUE);
	//		dialog_line_npc( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m60\crumb_dogtag_scan2_00102', FALSE, iff_2_attachment, 0.0, "", "CPO Peters : CFB, ma�am. Bulldogs! On me! We're going for a walk!", TRUE);
	//		hud_play_pip_from_tag( "" );
	
			dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m60\xray_after_iff_00100', FALSE, NONE, 0.0, "", "Cortana : Lasky�s been through here, recently by the timestamp." );
	 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end

script static void m60_crumb_dogtag_scan2_subtitles()
	sleep(60);
	dialog_play_subtitle('sound\dialog\mission\m60\crumb_dogtag_scan2_00100');
	sleep(10);
	dialog_play_subtitle('sound\dialog\mission\m60\crumb_dogtag_scan2_00101');
	sleep(10);
	dialog_play_subtitle('sound\dialog\mission\m60\crumb_dogtag_scan2_00102');
end

script dormant f_dialog_audio_vignette_pre_explosion()
dprint("f_dialog_audio_vignette_pre_explosion");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M60_AUDIO_VIGNETTE_PRE_EXPLOSION", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 ); 
						start_radio_transmission( "raptorleader_transmission_name" );   
						dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m60\audio_vignette_pre_explosion_00100', FALSE, NONE, 0.0, "", "Raptor Leader : Team 4, this is team leader.", TRUE);
						dialog_line_npc( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m60\audio_vignette_pre_explosion_00101', FALSE, NONE, 0.0, "", "Raptor Leader : Deploy to southwest flank.", TRUE);
						dialog_line_npc( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m60\audio_vignette_pre_explosion_00102', FALSE, NONE, 0.0, "", "Raptor Leader : Secure the wire.", TRUE);
						dialog_line_npc( l_dialog_id, 3, TRUE, 'sound\dialog\mission\m60\audio_vignette_pre_explosion_00103', FALSE, NONE, 0.0, "", "Raptor Leader : Team 3, move to reinforce.", TRUE);
						dialog_line_npc( l_dialog_id, 4, TRUE, 'sound\dialog\mission\m60\audio_vignette_pre_explosion_00104', FALSE, NONE, 0.0, "", "Raptor Leader : Team 2, report in.", TRUE);
						dialog_line_npc( l_dialog_id, 5, TRUE, 'sound\dialog\mission\m60\audio_vignette_pre_explosion_00105', FALSE, NONE, 0.0, "", "Raptor Leader : Team 2? Briggs, if you read this, we�ve got EC�s in the open south of Position Bravo.", TRUE);
						dialog_line_npc( l_dialog_id, 6, TRUE, 'sound\dialog\mission\m60\audio_vignette_pre_explosion_00106', FALSE, NONE, 0.0, "", "Raptor Leader : Team 4 is relocating with intent to suppress, so watch your fire.", TRUE);
						dialog_line_npc( l_dialog_id, 7, TRUE, 'sound\dialog\mission\m60\audio_vignette_delrio_explosion_00100', FALSE, NONE, 0.0, "", "Del Rio : Del Rio to Raptor Leader! What the hell is going on out there?!?", TRUE);
						end_radio_transmission();
						
						start_radio_transmission( "raptorleader_transmission_name" );
						dialog_line_npc( l_dialog_id, 8, TRUE, 'sound\dialog\mission\m60\audio_vignette_delrio_explosion_00101', FALSE, NONE, 0.0, "", "Raptor Leader : Sir, ground forces cannot reach battle position!", TRUE);
						dialog_line_npc( l_dialog_id, 9, TRUE, 'sound\dialog\mission\m60\audio_vignette_delrio_explosion_00102', FALSE, NONE, 0.0, "", "Raptor Leader : That sphere is deploying hostile elements across --", TRUE);
						end_radio_transmission();
						
						start_radio_transmission( "delrio_transmission_name" );
						dialog_line_npc( l_dialog_id, 10, TRUE, 'sound\dialog\mission\m60\audio_vignette_delrio_explosion_00103', FALSE, NONE, 0.0, "", "Del Rio : Shore up that perimeter NOW, Lieutenant!", TRUE);
						end_radio_transmission();
						
						start_radio_transmission( "raptorleader_transmission_name" );
						dialog_line_npc( l_dialog_id, 11, TRUE, 'sound\dialog\mission\m60\audio_vignette_delrio_explosion_00104', FALSE, NONE, 0.0, "", "Raptor Leader : Aye sir, we're doing--Corporal, what's that--", TRUE);
						end_radio_transmission();
						
						start_radio_transmission( "infinitymarine_transmission_name" );
						dialog_line_npc( l_dialog_id, 12, TRUE, 'sound\dialog\mission\m60\audio_vignette_delrio_explosion_00105', FALSE, NONE, 0.0, "", "Marine Voice : Incoming!", TRUE);
						thread (story_blurb_add("other", "SOUND OF EXPLOSION OVER THE RADIO.."));
						end_radio_transmission();
						
						start_radio_transmission( "delrio_transmission_name" );
						dialog_line_npc( l_dialog_id, 13, TRUE, 'sound\dialog\mission\m60\audio_vignette_delrio_explosion_00106', FALSE, NONE, 0.0, "", "Del Rio : Raptor? Raptor Leader, respond!", TRUE);
						dialog_line_npc( l_dialog_id, 14, TRUE, 'sound\dialog\mission\m60\audio_vignette_delrio_explosion_00107', FALSE, NONE, 0.0, "", "Del Rio : Comm, get them back on the line!", TRUE);
						end_radio_transmission();
						
						dialog_line_cortana( l_dialog_id, 15, TRUE, 'sound\dialog\mission\m60\audio_vignette_post_explosion_00100', FALSE, NONE, 0.0, "", "Cortana : For someone who just woke up, this Didact�s not wasting any time." );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end


script dormant f_dialog_m60_last_fof_ping()
dprint("f_dialog_m60_last_fof_ping");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M60_LAST_FOF_PING", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m60\last_fof_ping_00100', FALSE, NONE, 0.0, "", "Cortana : I've got another IFF tag, but as far as I can tell we're moving into a choke point.  This may end up as a dead end." );
						f_blip_flag (crumb_locflag_last, "recon");
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end

script dormant f_dialog_m60_last_fof_ping_2()
dprint("f_dialog_m60_last_fof_ping_2");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M60_LAST_FOF_PING_2", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m60\last_fof_ping_00101', FALSE, NONE, 0.0, "", "Cortana : The transponder is above us, in the trees. Look for a way up." );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end


script dormant f_dialog_m60_last_fof_ping_3()
dprint("f_dialog_m60_last_fof_ping_2");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M60_LAST_FOF_PING_3", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m60\last_fof_ping_00102', FALSE, NONE, 0.0, "", "Cortana : Thermal imaging indicates recent activity through here, leading up into the trees." );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end

script dormant f_dialog_m60_last_fof_callout()
dprint("f_dialog_m60_last_fof_ping_2");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M60_LAST_FOF_PING_2", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m60\last_fof_callout_00100', FALSE, NONE, 0.0, "", "Cortana : That�s the Friend-Or-Foe tag, but where�s whoever it belongs to?" );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end

script dormant f_dialog_m60_dogtag_scan_last()
	dprint("f_dialog_m60_dogtag_scan_last");
	
	local long l_dialog_id = DEF_DIALOG_ID_NONE();
	l_dialog_id = dialog_start_foreground( "M60_DOGTAG_SCAN_LAST", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
	
	hud_play_pip_from_tag( "bink\Campaign\M60_C_60" );
	thread(m60_dogtag_scan_last_subtitles());
	
	sound_impulse_start( 'sound\storm\vo\ui_pip_squelch_in_01', iff_3_attachment, 1 );
	dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m60\crumb_dogtag_scan_last_00100_soundstory', FALSE, iff_3_attachment, 0.0, "", "Radio Marine : XO! We got it!", TRUE);
	sound_impulse_start( 'sound\storm\vo\ui_pip_squelch_out_01', iff_3_attachment, 1 );

	l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
	hud_play_pip_from_tag( "" );

	wake(m60_last_fof_reveal);
end

script static void m60_dogtag_scan_last_subtitles()
	sleep(30);
	dialog_play_subtitle('sound\dialog\mission\m60\crumb_dogtag_scan_last_00100');
	dialog_play_subtitle('sound\dialog\mission\m60\crumb_dogtag_scan_last_00101');
	dialog_play_subtitle('sound\dialog\mission\m60\crumb_dogtag_scan_last_00102');
	dialog_play_subtitle('sound\dialog\mission\m60\crumb_dogtag_scan_last_00103');
	dialog_play_subtitle('sound\dialog\mission\m60\crumb_dogtag_scan_last_00104');
	dialog_play_subtitle('sound\dialog\mission\m60\crumb_dogtag_scan_last_00105');
end

script dormant f_dialog_m60_last_fof_reveal()
dprint("f_dialog_m60_last_fof_reveal");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M60_LAST_FOF_PING_2", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m60\last_fof_reveal_00101', FALSE, NONE, 0.0, "", "Cortana : Chief, they�re friendlies!" );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end



script static void f_dialog_m60_marines_bunker_01()
dprint("f_dialog_m60_marines_bunker_01");
static long l_dialog_id = DEF_DIALOG_ID_NONE();

            if ( not dialog_background_id_active_check(l_dialog_id) ) then
            
                        l_dialog_id = dialog_start_background( "MARINES_BUNKER_01", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE_ALL(), TRUE, "", 0.0 );
														dialog_line_npc( l_dialog_id, 0, not ai_allegiance_broken(player, human), 'sound\dialog\mission\m60\bunker_exit_marines_00100', FALSE, sq_trail3_hum.spawn_points_2, 0.0, "", "Bunker Marine 4 : Holy crap.", TRUE);
														dialog_line_npc( l_dialog_id, 1, not ai_allegiance_broken(player, human), 'sound\dialog\mission\m60\bunker_exit_marines_00101', FALSE, sq_trail3_hum.spawn_points_3, 0.0, "", "Bunker Marine 5 : Sir? Are you really �Him�?", TRUE);
                        l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
                        
            end
end




script static void f_dialog_m60_marines_bunker_02()
dprint("f_dialog_m60_marines_bunker_02");
static long l_dialog_id = DEF_DIALOG_ID_NONE();

            if ( not dialog_background_id_active_check(l_dialog_id) ) then
            
                        l_dialog_id = dialog_start_background( "MARINES_BUNKER_02", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE_ALL(), TRUE, "", 0.0 );
														dialog_line_npc( l_dialog_id, 0, not ai_allegiance_broken(player, human), 'sound\dialog\mission\m60\bunker_exit_marines_00102', FALSE, NONE, 0.0, "", "Bunker Marine 1 : I didn�t think I believed in ghosts...", TRUE);
														dialog_line_npc( l_dialog_id, 1, not ai_allegiance_broken(player, human), 'sound\dialog\mission\m60\bunker_exit_marines_00103', FALSE, NONE, 0.0, "", "Bunker Marine 3 : Yeah, well, if this means I�m dead, my wife is gonna kill me.", TRUE);
														dialog_line_npc( l_dialog_id, 2, not ai_allegiance_broken(player, human), 'sound\dialog\mission\m60\bunker_exit_marines_00104', FALSE, NONE, 0.0, "", "Bunker Marine 2 : You thought HE was one of the Fours?", TRUE);
                        l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
                        
            end
end


 
script dormant f_dialog_m60_spartan_armor_comment()
dprint("f_dialog_m60_spartan_armor_comment");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M60_SPARTAN_ARMOR_COMMENT", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );   
				 /*hud_rampancy_players_set( 0.25 ); 					
				 sleep_s(1);
				 hud_rampancy_players_set( 0.0 );	*/
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m60\spartan_armor_comment_00104', FALSE, NONE, 0.0, "", "Cortana : A topographical scan of the area shows a break in the foliage NORTH of here." );
						dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m60\spartan_armor_comment_00105', FALSE, NONE, 0.0, "", "Cortana : Should be big enough to bring in a dropship for evac." );
						//dialog_line_cortana( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m60\spartan_armor_comment_00106', FALSE, NONE, 0.0, "", "Cortana : Of course, I don�t know how many SPARTANS they can fit on there..." );
						//dialog_line_chief( l_dialog_id, 3, TRUE, 'sound\dialog\mission\m60\spartan_armor_comment_00107', FALSE, NONE, 0.0, "", "Master Chief : You noticed that too, huh?" );
				//		dialog_line_cortana( l_dialog_id, 4, TRUE, 'sound\dialog\mission\m60\spartan_armor_comment_00108', FALSE, NONE, 0.0, "", "Cortana : Apparently we were easier to replace than to rescue." );
					
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end




script static void f_dialog_m60_boulders_marines_holedup()
dprint("f_dialog_m60_boulders_marines_holedup");
static long l_dialog_id = DEF_DIALOG_ID_NONE();

            if ( not dialog_background_id_active_check(l_dialog_id) ) then
            
                        l_dialog_id = dialog_start_background( "BOULDERS_MARINES_HOLDUP", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE_ALL(), TRUE, "", 0.0 );
														dialog_line_npc( l_dialog_id, 0, not ai_allegiance_broken(player, human), 'sound\dialog\mission\m60\boulders_marines_holedup_00102', FALSE, sq_marine_bou_a_1.talker2, 0.0, "", "Bunker Marine 5 : I thought he was dead.", TRUE);
														dialog_line_npc( l_dialog_id, 1, not ai_allegiance_broken(player, human), 'sound\dialog\mission\m60\boulders_marines_holedup_00103', FALSE, sq_marine_bou_a_1.talker3, 0.0, "", "Bunker Marine 2 : Holy mother of", TRUE);
                        l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
                        
            end
end

script static void f_dialog_m60_boulders_marines_holedup2()
dprint("f_dialog_m60_boulders_marines_holedup2");
static long l_dialog_id = DEF_DIALOG_ID_NONE();

            if ( not dialog_background_id_active_check(l_dialog_id) ) then
            
                        l_dialog_id = dialog_start_background( "BOULDERS_MARINES_HOLDUP2", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE_ALL(), TRUE, "", 0.0 );
                            dialog_line_npc( l_dialog_id, 0, not ai_allegiance_broken(player, human), 'sound\dialog\mission\m60\boulders_marines_holedup_00100', FALSE, sq_marine_bou_a_1.talker, 0.0, "", "Bunker Marine 1 : Who's that?", TRUE);
														dialog_line_npc( l_dialog_id, 1, not ai_allegiance_broken(player, human), 'sound\dialog\mission\m60\boulders_marines_holedup_00101', FALSE, sq_marine_bou_a_1.talker1, 0.0, "", "Bunker Marine 4 : What. The. What?", TRUE);
                        l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
                        
            end
end
script static void f_dialog_m60_boulders_marines_holedup_cortana()
dprint("f_dialog_m60_boulders_marines_holedup_cortana");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M60_HOLEDUP_CORTANA", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
						//dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m60\boulders_marines_holedup_00108', FALSE, NONE, 0.0, "", "Cortana : Hold firm, marines. We've got your back." );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end





script dormant f_dialog_m60_preboulders_radio()
dprint("f_dialog_m60_preboulders_radio");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M60_PREBOULDERS_RADIO", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );  
				//	start_radio_transmission( "marine_transmission_name" );  
						dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m60\preboulders_radio_00100_soundstory', FALSE, infinity_overrun_radio, 0.0, "", "[Infantry Marine 1] Pull back! Infinity�s being overrun! [Infantry Marine 2] Ship�s as big as a city, how the hell�s it being overrun?", TRUE);
				//		dialog_line_npc( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m60\preboulders_radio_00101', FALSE, infinity_overrun_radio, 0.0, "", "Infantry Marine 1 : Infinity�s being overrun!", TRUE);
						//dialog_line_npc( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m60\preboulders_radio_00102', FALSE, infinity_overrun_radio, 0.0, "", "Infantry Marine 2 : Ship�s as big as a city, how the hell�s it being overrun?", TRUE);
			//		end_radio_transmission();	
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end


script dormant f_dialog_m60_boulders_uphigh()
dprint("f_dialog_m60_boulders_uphigh");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M60_BOULDERS_UPHIGH", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m60\boulders_uphigh_00100', FALSE, NONE, 0.0, "", "Cortana : Tango! Up high!" );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end

script dormant f_dialog_m60_boulders_assistmarines()
dprint("f_dialog_m60_boulders_assistmarines");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					
					l_dialog_id = dialog_start_foreground( "M60_BOULDERS_ASSISTMARINES", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
					hud_play_pip_from_tag( "bink\Campaign\M60_D_60" );
					start_radio_transmission( "lasky_transmission_name" );
					dialog_play_subtitle('sound\dialog\mission\m60\boulders_assistmarines_00100');
						//dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m60\boulders_assistmarines_00100', FALSE, NONE, 0.0, "", "Lasky : Chief, Lasky.  We're getting reports of friendlies pinned down near your position.  Can you assist?", TRUE);
						//sleep_s(5);
					end_radio_transmission();	
					//hud_play_pip_from_tag( "" );
					
						dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m60\boulders_assistmarines_00200', FALSE, NONE, 0.0, "", "Cortana : Commander, this is Cortana.  We're on our way." );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
				 
end


script dormant f_dialog_m60_boulders_uphigh_callout()
dprint("f_dialog_m60_boulders_uphigh");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M60_BOULDERS_UPHIGH", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m60\plinth_callout_00100', FALSE, NONE, 0.0, "", "Cortana : Emplacements, top of the hill!" );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end


script dormant f_dialog_m60_plinth_callout()
sleep_until( volume_test_players(cortana_emplacements), 1);

dprint("f_dialog_m60_plinth_callout");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M60_PLINTH_CALLOUT", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    						
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m60\plinth_callout_00101', FALSE, NONE, 0.0, "", "Cortana : The marines got trapped trying to get through these doors. Look for an interface" );
						
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end

script dormant f_dialog_m60_plinth_callout_02()
dprint("f_dialog_m60_plinth_callout");
local long l_dlg_m60_plinth_call = DEF_DIALOG_ID_NONE();
					l_dlg_m60_plinth_call = dialog_start_foreground( "M60_PLINTH_CALLOUT", l_dlg_m60_plinth_call, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    						
						dialog_line_cortana( l_dlg_m60_plinth_call, 0, TRUE, 'sound\dialog\mission\m60\plinth_callout_00103', FALSE, NONE, 0.0, "", "Cortana : Chief - terminal, by the door. Jack me into it." );
				 l_dlg_m60_plinth_call = dialog_end( l_dlg_m60_plinth_call, TRUE, TRUE, "" );
end


script dormant f_dialog_m60_plinth_ambush()
dprint("f_dialog_m60_plinth_ambush");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M60_PLINTH_AMBUSH", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    						
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m60\m60_holdthehillprompt_00101', FALSE, boulders_plinth, 0.0, "", "Cortana : Giving up this location�s not an option, Chief. Lock it down!" );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end



script dormant f_dialog_m60_plinth_progress()
dprint("f_dialog_m60_plinth_progress");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M60_PLINTH_PROGRESS", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    						
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m60\plinth_progress_00101', FALSE, boulders_plinth, 0.0, "", "Cortana : These doors open into a cave system with a space large enough for an LZ." );
						dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m60\plinth_progress_00102', FALSE, boulders_plinth, 0.0, "", "Cortana : Hold them off long enough for me to open them up." );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end




script dormant f_dialog_m60_plinth_progress_03()
dprint("f_dialog_m60_plinth_progress_03");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M60_PLINTH_PROGRESS_03", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    						
					   dialog_line_chief( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m60\plinth_progress_00105', FALSE, NONE, 0.0, "", "Master Chief : Cortana? How close are we?" );
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m60\plinth_progress_00106', FALSE, boulders_plinth, 0.0, "", "Cortana : YOU DO YOUR JOB AND I�LL DO MINE, OK?!?" );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end


script dormant f_dialog_m60_plinth_complete()
dprint("f_dialog_m60_plinth_complete");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M60_PLINTH_PROGRESS_02", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    						
					    dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m60\plinth_progress_00107', FALSE, boulders_plinth, 0.0, "", "Cortana: Got it! Passageway's unlocked - come and get me!" );
					  	
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end

script dormant f_dialog_m60_rampancy_hall()
dprint("f_dialog_m60_rampancy_hall");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M60_RAMPANCY_HALL", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    											    
					
					hud_play_pip_from_tag( "bink\Campaign\M60_E_60" );
					hud_rampancy_players_set( 0.50 );
					thread(f_dialog_play_pip_m60_e_subtitles());
					
					sleep_s(4);

					hud_rampancy_players_set( 0.0 );		
					
					//	dialog_line_npc( l_dialog_id, 4, TRUE, 'sound\dialog\mission\m60\rampancy_hall_00104', FALSE, NONE, 0.0, "", "Dr. Halsey : -you�re patterned off of me, Cortana; of course you�ll take care of him-", TRUE);
					//	hud_play_pip_from_tag( "" );
					//	dialog_line_cortana( l_dialog_id, 5, TRUE, 'sound\dialog\mission\m60\rampancy_hall_00105a', FALSE, NONE, 0.0, "", "Cortana : You said you wanted to see Dr. Halsey�" );
					//	dialog_line_cortana( l_dialog_id, 6, TRUE, 'sound\dialog\mission\m60\rampancy_hall_00106', FALSE, NONE, 0.0, "", "Cortana : Does that seem alright to you?" );
					//	dialog_line_chief( l_dialog_id, 7, TRUE, 'sound\dialog\mission\m60\rampancy_hall_00107', FALSE, NONE, 0.0, "", "Master Chief : Cortana�" );
					//	dialog_line_cortana( l_dialog_id, 8, TRUE, 'sound\dialog\mission\m60\rampancy_hall_00108', FALSE, NONE, 0.0, "", "Cortana : Don�t worry." );
				//		dialog_line_cortana( l_dialog_id, 9, TRUE, 'sound\dialog\mission\m60\rampancy_hall_00109', FALSE, NONE, 0.0, "", "Cortana : I�m taking care of it." );
					//	dialog_line_cortana( l_dialog_id, 10, TRUE, 'sound\dialog\mission\m60\rampancy_hall_00110', FALSE, NONE, 0.0, "", "Cortana : It�s Ok." );
					
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end

script static void f_dialog_play_pip_m60_e_subtitles()
	sleep(64);
	dialog_play_subtitle('sound\dialog\mission\m60\rampancy_hall_00100');
	dialog_play_subtitle('sound\dialog\mission\m60\rampancy_hall_00101');
	sleep(37);
	dialog_play_subtitle('sound\dialog\mission\m60\rampancy_hall_00102');
	sleep(30);
	dialog_play_subtitle('sound\dialog\mission\m60\rampancy_hall_00103');
end

script dormant f_dialog_m60_covenant_forerun_coop()
dprint("f_dialog_m60_covenant_forerun_coop");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M60_COVENANT_FORERUN_COOP", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    												
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m60\rampancy_hall_00112', FALSE, NONE, 0.0, "", "Cortana : Knight! Wait - what's he doing?" );
						dialog_line_chief( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m60\rampancy_hall_00114', FALSE, NONE, 0.0, "", "Master Chief : Covenant?" );
						sleep_s(2);
						dialog_line_cortana( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m60\rampancy_hall_00115', FALSE, NONE, 0.0, "", "Cortana : They�re working with the Prometheans!" );
						//dialog_line_cortana( l_dialog_id, 3, TRUE, 'sound\dialog\mission\m60\rampancy_hall_00116', FALSE, NONE, 0.0, "", "Cortana : Just what we needed." );					  
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end
  


script dormant f_dialog_m60_covenant_forerun_coop_02()
dprint("f_dialog_m60_plinth_progress");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M60_PLINTH_PROGRESS", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    						
					   dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m60\cave_combat_00100', FALSE, NONE, 0.0, "", "Cortana : I�m shocked how quickly the Didact has unified these Covenant!" );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end



script dormant f_dialog_m60_pelican_approach_lasky()
dprint("f_dialog_m60_pelican_approach_lasky");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M60_PELICAN_APPROACH_LASKY", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    											  
						//dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m60\cave_cleared_00100', FALSE, NONE, 0.0, "", "Cortana : Cortana to Lasky. LZ is secured." );
							
						start_radio_transmission( "lasky_transmission_name" );
						hud_play_pip_from_tag( "bink\Campaign\M60_F_60" );
						thread(f_dialog_play_pip_m60_f_subtitles());

						sleep_s(31);
						end_radio_transmission();
						
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end

script static void f_dialog_play_pip_m60_f_subtitles()
	dialog_play_subtitle('sound\dialog\mission\m60\cave_cleared_00100');
	dialog_play_subtitle('sound\dialog\mission\m60\pelican_approach_lasky_00100');
	dialog_play_subtitle('sound\dialog\mission\m60\pelican_approach_lasky_00101');
	sleep(3);
	dialog_play_subtitle('sound\dialog\mission\m60\pelican_approach_lasky_00102');
	sleep(36);
	dialog_play_subtitle('sound\dialog\mission\m60\pelican_approach_lasky_00103');
	sleep(1);
	dialog_play_subtitle('sound\dialog\mission\m60\pelican_approach_lasky_00104');
	sleep(4);
	dialog_play_subtitle('sound\dialog\mission\m60\pelican_approach_lasky_00105');
	sleep(34);
	dialog_play_subtitle('sound\dialog\mission\m60\pelican_approach_lasky_00106');
	sleep(31);
	dialog_play_subtitle('sound\dialog\mission\m60\pelican_approach_lasky_00107');
	sleep(15);
	dialog_play_subtitle('sound\dialog\mission\m60\pelican_approach_lasky_00108');
	sleep(30);
	dialog_play_subtitle('sound\dialog\mission\m60\pelican_approach_lasky_00109');
end

script dormant f_dialog_m60_pelican_chief_welcome()
dprint("f_dialog_m60_pelican_chief_welcome");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M60_PELICAN_CHIEF_WELCOME", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    					
						start_radio_transmission( "pelican595_transmission_name" );	
					   dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m60\pelican_chief_welcome_00100', FALSE, NONE, 0.0, "", "Pelican Pilot : This is Pelican 595. We have the Chief on board and are outbound for Rally Point Alpha Sierra Foxtrot.", TRUE);
					  end_radio_transmission();
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end


/*script dormant f_dialog_m60_rally_pelican()
dprint("f_dialog_m60_rally_pelican");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
		hud_play_pip_from_tag( "bink\Campaign\M60_G_60" );
					l_dialog_id = dialog_start_foreground( "M60_RALLY_PELICAN", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    						
						start_radio_transmission( "lasky_transmission_name" );
							dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m60\rally_pelican_00100', FALSE, NONE, 0.0, "", "Lasky : Lasky to 117.", TRUE);
							dialog_line_npc( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m60\rally_pelican_00101', FALSE, NONE, 0.0, "", "Lasky : We�re dusting off now, en route to Rally Point.", TRUE);
							dialog_line_npc( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m60\rally_pelican_00102', FALSE, NONE, 0.0, "", "Lasky : What�s your status?", TRUE);
							dialog_line_chief( l_dialog_id, 3, TRUE, 'sound\dialog\mission\m60\rally_pelican_00103', FALSE, NONE, 0.0, "", "Master Chief : The Rally Point�s under attack, Commander." );
							dialog_line_chief( l_dialog_id, 4, TRUE, 'sound\dialog\mission\m60\rally_pelican_00104', FALSE, NONE, 0.0, "", "Master Chief : I�d suggest diverting if I were you." );
							dialog_line_npc( l_dialog_id, 5, TRUE, 'sound\dialog\mission\m60\rally_pelican_00105', FALSE, NONE, 0.0, "", "Lasky : 10-4, Master Chief.", TRUE);
							dialog_line_npc( l_dialog_id, 6, TRUE, 'sound\dialog\mission\m60\rally_pelican_00106', FALSE, NONE, 0.0, "", "Lasky : Correcting our approach and will rendezvous at Infinity.", TRUE);
							dialog_line_npc( l_dialog_id, 7, TRUE, 'sound\dialog\mission\m60\rally_pelican_00107', FALSE, NONE, 0.0, "", "Lasky : Lasky out.", TRUE);
						 end_radio_transmission();
						 hud_play_pip_from_tag( "" );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end*/

script dormant f_dialog_m60_rally_chief_onme()
dprint("f_dialog_m60_rally_chief_onme");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M60_RALLY_CHIEF_ONME", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    						
					  dialog_line_npc( l_dialog_id, 0, not ai_allegiance_broken(player, human), 'sound\dialog\mission\m60\rally_chief_onme_00100', FALSE, sq_hum_rally_infantry.p0, 0.0, "", "Spartan IV - A : Crimson team!  Sierra 117 is on the ground.  Form up on him!", TRUE);
						dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m60\rally_chief_onme_00101', FALSE, NONE, 0.0, "", "Cortana : Weapons free, Chief!" );
						dialog_line_cortana( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m60\rally_chief_onme_00102', FALSE, NONE, 0.0, "", "Cortana : Let �em have it!" );
						//dialog_line_npc( l_dialog_id, 3, TRUE, 'sound\dialog\mission\m60\rally_chief_onme_00103', FALSE, NONE, 0.0, "", "Spartan IV - A : Dash tens - on the Chief.", TRUE);
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end

script dormant f_dialog_m60_rally_spartans()
dprint("f_dialog_m60_rally_spartans");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M60_RALLY_SPARTANS", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    						
					 // dialog_line_npc( l_dialog_id, 0, not ai_allegiance_broken(player, human), 'sound\dialog\mission\m60\m60_soundstory_00123', FALSE, sq_hum_rally_infantry.p1, 0.0, "", "Spartan 1 : It's on now!", TRUE);
						//dialog_line_npc( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m60\m60_soundstory_00124', FALSE, NONE, 0.0, "", "Spartan 2 : Everybody gear up!", TRUE);
					//	dialog_line_npc( l_dialog_id, 1, not ai_allegiance_broken(player, human), 'sound\dialog\mission\m60\m60_soundstory_00126', FALSE, sq_hum_rally_infantry.p2, 0.0, "", "Spartan 2 : Remember your training, people!", TRUE);
					//	dialog_line_npc( l_dialog_id, 2, not ai_allegiance_broken(player, human), 'sound\dialog\mission\m60\m60_soundstory_00127', FALSE, sq_hum_rally_infantry.p3, 0.0, "", "Marine 2 : ROE suspended -- weapons free!", TRUE);
						dialog_line_npc( l_dialog_id, 0, not ai_allegiance_broken(player, human), 'sound\dialog\mission\m60\m60_spartanchatter_00106', FALSE, sq_hum_rally_infantry.p0, 0.0, "", "Spartan IV-C : Ground teams, be advised. The Master Chief is on the field. Advancing.", TRUE);
				//		dialog_line_npc( l_dialog_id, 6, TRUE, 'sound\dialog\mission\m60\m60_spartanchatter_00101', FALSE, NONE, 0.0, "", "Spartan IV-B : Master Chief, Crimson Team�s at your disposal. Lead the way.", TRUE);
				//		dialog_line_npc( l_dialog_id, 7, TRUE, 'sound\dialog\mission\m60\m60_spartanchatter_00102', FALSE, NONE, 0.0, "", "Spartan IV-C : Where do you want us, sir?", TRUE);
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end
			



script dormant f_dialog_m60_scorpionenter()
dprint("f_dialog_m60_scorpionenter");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M60_SCORPIONENTER", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    						
					 		dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m60\m60_scorpionenter_00103', FALSE, NONE, 0.0, "", "Cortana : We're good to go, Chief. Let�s show these Spartans how it's done." );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
				 wake(f_dialog_m60_rally_spartans);
end	



script dormant f_dialog_m60_infinityrun()
dprint("f_dialog_m60_infinityrun");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M60_INFINITYRUN", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    						
				start_radio_transmission( "lasky_transmission_name" );	
					dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m60\infinityrun_00100', FALSE, NONE, 0.0, "", "Lasky: 117, Lasky. We're touching down just north of your position. Proceed to Starboard Hanger 2-19 and we'll link up with you there.", TRUE);
				end_radio_transmission();
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end

script dormant f_dialog_m60_infinityrun_02()
dprint("f_dialog_m60_infinityrun_02");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M60_INFINITYRUN_02", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    						
					dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m60\infinity_ext_00100', FALSE, NONE, 0.0, "", "Cortana : Commander, the hangar bay doors are sealed tight." );
					start_radio_transmission( "lasky_transmission_name" );
					dialog_line_npc( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m60\infinity_ext_00101a', FALSE, NONE, 0.0, "", "Lasky : Roger, Cortana. We'll find a way inside and free up one of the mooring platforms. XO out.", TRUE);
					//dialog_line_npc( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m60\infinity_ext_00101', FALSE, NONE, 0.0, "", "Lasky : They must have initiated quarantine protocols.", TRUE);
				//	dialog_line_npc( l_dialog_id, 3, TRUE, 'sound\dialog\mission\m60\infinity_ext_00102', FALSE, NONE, 0.0, "", "Lasky : We�ll find a way inside and open them up for you.", TRUE);
					//dialog_line_npc( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m60\infinity_ext_00103', FALSE, NONE, 0.0, "", "Lasky : XO out.", TRUE);
					end_radio_transmission();
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end


script dormant f_dialog_m60_infinity_ext()
dprint("f_dialog_m60_infinity_ext");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M60_INFINITY_EXT", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    					
					start_radio_transmission( "lasky_transmission_name" );	
							dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m60\infinity_ext_00104', FALSE, NONE, 0.0, "", "Lasky : Chief, Lasky.", TRUE);
							dialog_line_npc( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m60\infinity_ext_00105', FALSE, NONE, 0.0, "", "Lasky : We�re inside!", TRUE);
							dialog_line_npc( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m60\lasky_clear_berth_00100', FALSE, NONE, 0.0, "", "Lasky : Clear out the area and we'll open her up for you.", TRUE);
					end_radio_transmission();
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end


script dormant f_dialog_m60_infinity_ext_cleared()
dprint("f_dialog_m60_infinity_ext_cleared");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M60_INFINITY_EXT_CLEARED", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    						
						start_radio_transmission( "lasky_transmission_name" );
							dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m60\m60_infinity_ext_00105b', FALSE, NONE, 0.0, "", "Lasky : Opening the bay doors now!", TRUE);
						end_radio_transmission();
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end
						

script dormant f_dialog_m60_infinity_ext_02()
dprint("f_dialog_m60_infinity_ext_02");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M60_INFINITY_EXT_02", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 ); 
					start_radio_transmission( "lasky_transmission_name" );   						
							dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m60\lasky_clear_berth_00101', FALSE, NONE, 0.0, "", "Lasky : Secure the bay from those Covenant, and I�ll release the lockdown into the ship.", TRUE);
					end_radio_transmission();
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end


script dormant f_dialog_m60_infinityberth_tocauseway()
dprint("f_dialog_m60_infinityberth_tocauseway");
local long l_dlg_m60_infinityberth_tocauseway = DEF_DIALOG_ID_NONE();
					l_dlg_m60_infinityberth_tocauseway = dialog_start_foreground( "M60_INFINITYBERTH_TOCAUSEWAY", l_dlg_m60_infinityberth_tocauseway, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    						
					
			  		hud_play_pip_from_tag( "bink\Campaign\M60_H_60" );
					thread(f_dialog_play_pip_m60_h_subtitles());
					
			  		start_radio_transmission( "delrio_transmission_name" );

					sleep_s(35);
					
					end_radio_transmission();
					hud_play_pip_from_tag( "" );
					
				 l_dlg_m60_infinityberth_tocauseway = dialog_end( l_dlg_m60_infinityberth_tocauseway, TRUE, TRUE, "" );
				 thread (inifinityberth_mechdata());
end

script static void f_dialog_play_pip_m60_h_subtitles()
	sleep(25);
	dialog_play_subtitle('sound\dialog\mission\m60\infinityberth_tocauseway_00100');
	sleep(5);
	dialog_play_subtitle('sound\dialog\mission\m60\infinityberth_tocauseway_00101');
	sleep(30);
	dialog_play_subtitle('sound\dialog\mission\m60\infinityberth_tocauseway_00102');
	sleep(5);
	dialog_play_subtitle('sound\dialog\mission\m60\infinityberth_tocauseway_00103');
	sleep(20);
	dialog_play_subtitle('sound\dialog\mission\m60\infinityberth_tocauseway_00104');
	sleep(20);
	dialog_play_subtitle('sound\dialog\mission\m60\infinityberth_tocauseway_00105');
	sleep(5);
	dialog_play_subtitle('sound\dialog\mission\m60\infinityberth_tocauseway_00106');
	sleep(25);
	dialog_play_subtitle('sound\dialog\mission\m60\infinityberth_tocauseway_00107');
end

script dormant f_dialog_m60_inifinityberth_mechdata()
dprint("f_dialog_m60_inifinityberth_mechdata");

					l_dlg_inifinityberth_mechdata = dialog_start_foreground( "M60_INFINITYBERTH_MECHDATA", l_dlg_inifinityberth_mechdata, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    						
							dialog_line_cortana( l_dlg_inifinityberth_mechdata, 0, TRUE, 'sound\dialog\mission\m60\infinityberth_premech_00100', FALSE, NONE, 0.0, "", "Cortana : That deployment console should open the Mantis bay." );
				 l_dlg_inifinityberth_mechdata = dialog_end ( l_dlg_inifinityberth_mechdata, TRUE, TRUE, "" );
end

script dormant f_dialog_m60_inifinityberth_system_mech()
dprint("f_dialog_m60_inifinityberth_system_mech");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M60_INFINITYBERTH_SYSTEM_MECH", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    						
							dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m60\m60_secondary_00108', FALSE, NONE, 0.0, "", "Infinity System Voice : Warning. Operation of Mantis Armored Defense System prohibited without prior approval.", TRUE);
							//dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m60\infinityberth_mechdata_00101', FALSE, NONE, 0.0, "", "Cortana : Just how you like them: big, ugly, and overflowing with machine guns and rocket launchers." );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end




script dormant f_dialog_m60_inifinityberth_enter_mech()
dprint("f_dialog_m60_inifinityberth_mechdata");
		dialog_end_interrupt(l_dlg_inifinityberth_mechdata);
		sleep_forever(f_dialog_m60_inifinityberth_mechdata);
		kill_script(f_dialog_m60_inifinityberth_mechdata);
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M60_INFINITYBERTH_ENTER_MECH", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    						
							dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m60\infinityberth_mechdata_00102', FALSE, NONE, 0.0, "", "Cortana : The hatch to the maintenance causeway is jammed." );
							dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m60\infinityberth_mechdata_00104', FALSE, NONE, 0.0, "", "Cortana : Let�s do something about it." );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end





script dormant f_dialog_m60_inifinityberth_try_to_leave()
dprint("f_dialog_m60_inifinityberth_mechdata");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M60_INFINITYBERTH_MECHDATA", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    						
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m60\infinityberth_mechdata_00105', FALSE, NONE, 0.0, "", "Cortana : The captain promised you firepower." );
						dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m60\infinityberth_mechdata_00106', FALSE, NONE, 0.0, "", "Cortana : This sure seems like an appropriate use for it." );
						dialog_line_cortana( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m60\infinityberth_mechdata_00107', FALSE, NONE, 0.0, "", "Cortana : Look for the Mantis controls." );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end

script dormant f_dialog_m60_infinitycauseway_stomp()
dprint("f_dialog_m60_infinitycauseway_stomp");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M60_INFINITYCAUSEWAY_STOMP", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    						
							dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m60\infinitycauseway_stomp_00100', FALSE, NONE, 0.0, "", "Cortana : You know, if shooting doesn�t work, you can always try stepping on them." );
							dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m60\infinitycauseway_stomp_00101', FALSE, NONE, 0.0, "", "Cortana : You ARE bigger than they are, after all." );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end

script dormant f_dialog_m60_inifinitycauseway_broadswordassault_end()
dprint("f_dialog_m60_inifinitycauseway_broadswordassault_end");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M60_INFINITYCAUSEWAY_BROADSWORDASSAULT_END", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    						
							dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m60\inifinitycauseway_broadswordassault_end_00700', FALSE, NONE, 0.0, "", "Cortana : There's a cargo elevator at the far end of the causeway. That'll take us out to the deck." );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end

script dormant f_dialog_m60_infinity_elevator()
dprint("f_dialog_m60_infinity_elevator");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M60_INFINITY_ELEVATOR", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    													
					    start_radio_transmission( "lasky_transmission_name" );
								dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m60\infinity_elevator_00100', FALSE, NONE, 0.0, "", "Lasky : Chief, it's Lasky.  Come in!", TRUE);
								dialog_line_chief( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m60\infinity_elevator_00101', FALSE, NONE, 0.0, "", "Master Chief : Go, commander." );
								dialog_line_npc( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m60\infinity_elevator_00102', FALSE, NONE, 0.0, "", "Lasky : Chief, we�ve identified several Covenant jamming devices on the outer hull.", TRUE);
								dialog_line_cortana( l_dialog_id, 3, TRUE, 'sound\dialog\mission\m60\infinity_elevator_00103', FALSE, NONE, 0.0, "", "Cortana : That might be how they�re blocking the Infinity�s defenses." );
								dialog_line_npc( l_dialog_id, 4, TRUE, 'sound\dialog\mission\m60\infinity_elevator_00104', FALSE, NONE, 0.0, "", "Lasky : Exactly what we were thinking. ", TRUE);
								dialog_line_npc( l_dialog_id, 5, TRUE, 'sound\dialog\mission\m60\infinity_elevator_00105', FALSE, NONE, 0.0, "", "Lasky : Neutralize them so we can get our guns back online and show them that satellite we�re more than just a big paperweight.", TRUE);
							end_radio_transmission();
								dialog_line_cortana( l_dialog_id, 6, TRUE, 'sound\dialog\mission\m60\infinity_elevator_00106', FALSE, NONE, 0.0, "", "Cortana : We're on it, Commander.  Cortana out." );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end

script dormant f_dialog_m60_berth_exit_grunts()
//dprint("f_dialog_m60_berth_exit_grunts");
local long l_dlg_m60_berth_exit_grunts = DEF_DIALOG_ID_NONE();
					
            l_dlg_m60_berth_exit_grunts = dialog_start_background( "ATRIUM_RETURN_COVENANT_02", l_dlg_m60_berth_exit_grunts, TRUE, DEF_DIALOG_STYLE_QUEUE(), TRUE, "", 0.25 );                       								
								dialog_line_npc( l_dlg_m60_berth_exit_grunts, 1, TRUE, 'sound\dialog\mission\m80\m80_atrium_hallway_00109', FALSE, NONE, 0.0, "", "Multiple Grunts : DIDACT DIDACT DIDACT!!!", TRUE);
            l_dlg_m60_berth_exit_grunts = dialog_end( l_dlg_m60_berth_exit_grunts, TRUE, TRUE, "" );
           // thread( f_berth_narrative_distance_trigger(inf_cause_gr_kami.spawn_points_0) );
				
end


script dormant f_dialog_m60_berth_exit_grunts_02()
//dprint("f_dialog_m60_berth_exit_grunts");
local long l_dlg_m60_berth_exit_grunts = DEF_DIALOG_ID_NONE();
					
            l_dlg_m60_berth_exit_grunts = dialog_start_background( "ATRIUM_RETURN_COVENANT_02", l_dlg_m60_berth_exit_grunts, TRUE, DEF_DIALOG_STYLE_QUEUE(), TRUE, "", 0.25 );                       								
					 			dialog_line_npc( l_dlg_m60_berth_exit_grunts, 0, TRUE, 'sound\dialog\mission\m80\m80_atrium_hallway_00106', FALSE, inf_cause_gr_kami.spawn_points_1, 0.0, "", "Grunt 1 : COM-PO-SER!!!", TRUE);
            l_dlg_m60_berth_exit_grunts = dialog_end( l_dlg_m60_berth_exit_grunts, TRUE, TRUE, "" );
           // thread( f_berth_narrative_distance_trigger(inf_cause_gr_kami.spawn_points_0) );
				
end
script dormant f_dialog_m60_jammer_01()
dprint("f_dialog_m60_jammer_01");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M60_JAMMER_01", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    						
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m60\infinityouterdeck_start_00100', FALSE, NONE, 0.0, "", "Cortana : I see the jammers. Three of them. Shoot them down." );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end

script dormant f_dialog_m60_jammer_02()
dprint("f_dialog_m60_jammer_02");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M60_JAMMER_02", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    						
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m60\infinityouterdeck_start_00101', FALSE, NONE, 0.0, "", "Cortana : First jammer disabled!" );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end


script dormant f_dialog_m60_jammer_03()
dprint("f_dialog_m60_jammer_03");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M60_JAMMER_03", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    						
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m60\infinityouterdeck_start_00102', FALSE, NONE, 0.0, "", "Cortana : That�s two!" );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end


script dormant f_dialog_m60_jammer_04()
dprint("f_dialog_m60_jammer_04");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M60_JAMMER_04", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    						
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m60\infinityouterdeck_start_00103', FALSE, NONE, 0.0, "", "Cortana : That�s it - jammers neutralized." );
						//dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m60\infinityouterdeck_start_00104', FALSE, NONE, 0.0, "", "Cortana : Hold off the Covenant while the gun batteries cycle up." );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end



script dormant f_dialog_m60_gunsprompt()
dprint("f_dialog_m60_gunsprompt");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M60_GUNSPROMPT", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    						
							dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m60\m60_gunsprompt_00103', FALSE, NONE, 0.0, "", "Cortana : Hold firm, Chief! Don�t give them an inch!" );
							dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m60\m60_gunsprompt_00104', FALSE, NONE, 0.0, "", "Cortana : Elements targeting the guns! Push them back!" );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end



script dormant f_dialog_m60_delrio_warning()
dprint("f_dialog_m60_delrio_warning");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M60_DELRIO_WARNING", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    										
					start_radio_transmission( "delrio_transmission_name" );									
						dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m60\infinityouterdeck_delrio_warning_00100', FALSE, NONE, 0.0, "", "Del Rio : Del Rio to Master Chief. The rate that satellite�s searching our systems just doubled! I think it knows what we�re up to.", TRUE);						
						//dialog_line_npc( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m60\infinityouterdeck_delrio_warning_00102', FALSE, NONE, 0.0, "", "Del Rio : I think it knows what we�re up to.", TRUE);
					end_radio_transmission();
						dialog_line_cortana( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m60\infinityouterdeck_delrio_warning_00103', FALSE, NONE, 0.0, "", "Cortana : The Didact�s not letting go without a fight." );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end


script dormant f_dialog_m60_infinityouterdeck_gunsonline()
dprint("f_dialog_m60_infinityouterdeck_gunsonline");
//local long l_dialog_id = DEF_DIALOG_ID_NONE();
			//		l_dialog_id = dialog_start_foreground( "M60_INFINITYCAUSEWAY_GUNSONLINE", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    													
				//		dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m60\infinityouterdeck_gunsonline_00100', FALSE, NONE, 0.0, "", "Cortana : Gun battery one, online and cleared to fire!" );
				//		dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m60\infinityouterdeck_gunsonline_00101', FALSE, NONE, 0.0, "", "Cortana : Keep your eyes peeled." );
			//	 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end


script dormant f_dialog_m60_inifinitycauseway_second_gun()
dprint("f_dialog_m60_inifinitycauseway_second_gun");

//local long l_dialog_id = DEF_DIALOG_ID_NONE();
			/*		l_dialog_id = dialog_start_foreground( "M60_INFINITYCAUSEWAY_SECOND_GUN", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    						
							dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m60\infinityouterdeck_gunsonline_00102', FALSE, NONE, 0.0, "", "Cortana : Second gun�s hot!" );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );*/
end

script dormant f_dialog_m60_infinityouterdeck_mac_warmup()
dprint("f_dialog_m60_infinityouterdeck_mac_warmup");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M60_INFINITYOUTERDECK_MAC_WARMUP", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    													
							//dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m60\infinityouterdeck_mac_warmup_00104', FALSE, NONE, 0.0, "", "Cortana : Chief, take out the rest of the Covenant." );

				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end



script dormant f_dialog_m60_infinityouterdeck_mac_ready()
dprint("f_dialog_m60_infinityouterdeck_mac_ready");
local long l_dlg_infinityouterdeck_mac_ready = DEF_DIALOG_ID_NONE();
					l_dlg_infinityouterdeck_mac_ready = dialog_start_foreground( "M60_INFINITYOUTERDECK_MAC_READY", l_dlg_infinityouterdeck_mac_ready, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    													
						start_radio_transmission( "delrio_transmission_name" );
							dialog_line_npc( l_dlg_infinityouterdeck_mac_ready, 0, TRUE, 'sound\dialog\mission\m60\infinityouterdeck_mac_ready_00100', FALSE, NONE, 0.0, "", "Del Rio : Captain Del Rio to Sierra 117.", TRUE);
							dialog_line_npc( l_dlg_infinityouterdeck_mac_ready, 1, TRUE, 'sound\dialog\mission\m60\infinityouterdeck_mac_ready_00101', FALSE, NONE, 0.0, "", "Del Rio : The MAC network�s reading operational but our EM relays are malfunctioning.  You�ll have to reinitiate the link manually.", TRUE);
							//dialog_line_cortana( l_dlg_infinityouterdeck_mac_ready, 2, TRUE, 'sound\dialog\mission\m60\infinityouterdeck_mac_ready_00103', FALSE, NONE, 0.0, "", "Cortana : The auxilliary firing controls are at the top of the center platform." );
							//dialog_line_npc( l_dlg_infinityouterdeck_mac_ready, 2, TRUE, 'sound\dialog\mission\m60\infinityouterdeck_mac_ready_00101a', FALSE, NONE, 0.0, "", "Del Rio : The Mass Driver network's reading operational, but our EM relays are malfunctioning.", TRUE);
							//dialog_line_npc( l_dlg_infinityouterdeck_mac_ready, 2, TRUE, 'sound\dialog\mission\m60\infinityouterdeck_mac_ready_00102', FALSE, NONE, 0.0, "", "Del Rio : You�ll have to reinitiate the link manually.", TRUE);
						end_radio_transmission();	
				 l_dlg_infinityouterdeck_mac_ready = dialog_end( l_dlg_infinityouterdeck_mac_ready, TRUE, TRUE, "" );
end

script dormant f_dialog_m60_infinityouterdeck_success()
dprint("f_dialog_m60_infinityouterdeck_success");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M60_INFINITYOUTERDECK_SUCCESS", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    		
					dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m60\infinityouterdeck_success_00099', FALSE, NONE, 0.0, "", "Cortana : That's it. MAC controls restored!" );
					  start_radio_transmission( "delrio_transmission_name" ); 											
							dialog_line_npc( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m60\infinityouterdeck_success_00100', FALSE, NONE, 0.0, "", "Del Rio : Forward MAC controls - get that damn orb away from my ship.", TRUE);
							dialog_line_npc( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m60\infinityouterdeck_success_00101', FALSE, NONE, 0.0, "", "Del Rio : All cannons.", TRUE);
							dialog_line_npc( l_dialog_id, 3, TRUE, 'sound\dialog\mission\m60\infinityouterdeck_success_00102', FALSE, NONE, 0.0, "", "Del Rio : Fire at will.", TRUE);
							sleep_s(3);
							dialog_line_cortana( l_dialog_id, 4, TRUE, 'sound\dialog\mission\m60\infinityouterdeck_success_00103', FALSE, NONE, 0.0, "", "Cortana : It's working." );
							dialog_line_cortana( l_dialog_id, 5, TRUE, 'sound\dialog\mission\m60\infinityouterdeck_success_00104', FALSE, NONE, 0.0, "", "Cortana : The Didact's retreating!" );
							dialog_line_npc( l_dialog_id, 6, TRUE, 'sound\dialog\mission\m60\infinityouterdeck_success_00105', FALSE, NONE, 0.0, "", "Del Rio : Del Rio to Infinity All Hands.", TRUE);
							dialog_line_npc( l_dialog_id, 7, TRUE, 'sound\dialog\mission\m60\infinityouterdeck_success_00106', FALSE, NONE, 0.0, "", "Del Rio : We are Condition Yellow.", TRUE);
							dialog_line_npc( l_dialog_id, 8, TRUE, 'sound\dialog\mission\m60\infinityouterdeck_success_00107', FALSE, NONE, 0.0, "", "Del Rio : Stand down.", TRUE);
							dialog_line_npc( l_dialog_id, 9, TRUE, 'sound\dialog\mission\m60\infinityouterdeck_success_00108', FALSE, NONE, 0.0, "", "Del Rio : Section heads report in, begin damage assessment.", TRUE);
						end_radio_transmission();	
							//dialog_line_cortana( l_dialog_id, 9, TRUE, 'sound\dialog\mission\m60\infinityouterdeck_success_00109', FALSE, NONE, 0.0, "", "Cortana : We better get inside." );
						//	dialog_line_cortana( l_dialog_id, 10, TRUE, 'sound\dialog\mission\m60\infinityouterdeck_success_00110', FALSE, NONE, 0.0, "", "Cortana : They�re bound to have questions." );
							//dialog_line_chief( l_dialog_id, 11, TRUE, 'sound\dialog\mission\m60\infinityouterdeck_success_00111', FALSE, NONE, 0.0, "", "Master Chief : They�re not the only ones." );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end


script dormant f_dialog_n60_callout_banshees()
dprint("f_dialog_callout_banshees");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "BANSHEES", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\global\global_chatter_00126', FALSE, NONE, 0.0, "", "Cortana : Banshees!" );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end


// =================================================================================================
// =================================================================================================
// NUDGES
// =================================================================================================
// =================================================================================================

script static void f_dialog_m60_nudge_1()
dprint("f_dialog_m60_nudge_1");
static long l_dialog_id = DEF_DIALOG_ID_NONE();
		if ( (not dialog_foreground_id_active_check(l_dialog_id)) and  (not b_objective_1_complete)) then
					l_dialog_id = dialog_start_foreground( "NUDGE_1", l_dialog_id,  (not b_objective_1_complete), DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 ); 
								dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m60\m60_laskyprompt_00100', FALSE, NONE, 0.0, "", "Cortana : If Lasky�s transmission was any indication, his people need our help. We�ve got to find them ASAP." );
				 l_dialog_id = dialog_end( l_dialog_id, b_objective_1_complete, b_objective_1_complete, "" );
		end
end

script static void f_dialog_m60_nudge_2()
dprint("f_dialog_m60_nudge_2");
static long l_dialog_id = DEF_DIALOG_ID_NONE();
		if ( (not dialog_foreground_id_active_check(l_dialog_id)) and  (not b_objective_2_complete)) then
					l_dialog_id = dialog_start_foreground( "NUDGE_2", l_dialog_id,  (not b_objective_2_complete), DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 ); 
								dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m60\m60_lzprompt_00101', FALSE, NONE, 0.0, "", "Cortana : These teams won�t last for long out here. Finding an LZ should be our top priority." );
				 l_dialog_id = dialog_end( l_dialog_id, b_objective_2_complete, b_objective_2_complete, "" );
		end
end



script static void f_dialog_m60_nudge_3()
dprint("f_dialog_m60_nudge_3");
static long l_dialog_id = DEF_DIALOG_ID_NONE();
		if ( (not dialog_foreground_id_active_check(l_dialog_id)) and  (not b_objective_3_complete)) then
					l_dialog_id = dialog_start_foreground( "NUDGE_3", l_dialog_id,  (not b_objective_3_complete), DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 ); 
								dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m60\m60_holdthehillprompt_00101', FALSE, NONE, 0.0, "", "Cortana : Giving up this location�s not an option, Chief. Lock it down!" );
				 l_dialog_id = dialog_end( l_dialog_id, b_objective_3_complete, b_objective_3_complete, "" );
		end
end

script static void f_dialog_m60_nudge_4()
dprint("f_dialog_m60_nudge_4");
/*static long l_dialog_id = DEF_DIALOG_ID_NONE();
		if ( (not dialog_foreground_id_active_check(l_dialog_id)) and  (not b_objective_4_complete)) then
					l_dialog_id = dialog_start_foreground( "NUDGE_4", l_dialog_id,  (not b_objective_4_complete), DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 ); 							
								//dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m60\m60_infinityprompt_00100', FALSE, NONE, 0.0, "", "Cortana : Chief, I�m reading all sorts of chatter from Infinity! We�ve got to get up there!" );
				 l_dialog_id = dialog_end( l_dialog_id, b_objective_4_complete, b_objective_4_complete, "" );
		end*/
end


script static void f_dialog_m60_nudge_5()
local short s_random = 0;
	local long l_dialog_id = DEF_DIALOG_ID_NONE();

	s_random = random_range(1, 5);
	
		if ( (not dialog_foreground_id_active_check(l_dialog_id)) and  (not b_objective_5_complete)) then
				if s_random == 1 then
					l_dialog_id = dialog_start_foreground( "NUDGE_5", l_dialog_id,  (not b_objective_5_complete), DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 ); 
							dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m60\m60_outerdeckprompt_00100', FALSE, NONE, 0.0, "", "Cortana : Infinity TAC-COM is reporting additional contacts on the outer deck! Pick it up, Chief!" );
				 l_dialog_id = dialog_end( l_dialog_id, b_objective_5_complete, b_objective_5_complete, "" );
				elseif s_random == 2 then
				l_dialog_id = dialog_start_foreground( "NUDGE_5", l_dialog_id,  (not b_objective_5_complete), DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 ); 
							dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m60\m60_outerdeckprompt_00101', FALSE, NONE, 0.0, "", "Cortana : Cortana : Chief, we can�t let the Didact get access to Infinity�s data stores! Let�s get topside!" );
				 l_dialog_id = dialog_end( l_dialog_id, b_objective_5_complete, b_objective_5_complete, "" );
				elseif s_random == 3 then
					l_dialog_id = dialog_start_foreground( "NUDGE_5", l_dialog_id,  (not b_objective_5_complete), DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 ); 
							dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m60\m60_outerdeckprompt_00102', FALSE, NONE, 0.0, "", "Cortana : We�re not doing Infinity any good down here if the Didact�s linked in from the outer hull." );
				 l_dialog_id = dialog_end( l_dialog_id, b_objective_5_complete, b_objective_5_complete, "" );
				
				elseif s_random == 4 then
					l_dialog_id = dialog_start_foreground( "NUDGE_5", l_dialog_id,  (not b_objective_5_complete), DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 ); 
							dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m60\m60_outerdeckprompt_00103', FALSE, NONE, 0.0, "", "Cortana : The Captain said the Didact�s linked in from the outer deck. That�s where we want to be." );
				 l_dialog_id = dialog_end( l_dialog_id, b_objective_5_complete, b_objective_5_complete, "" );
					
				
				end
		end
end

script static void f_dialog_m60_nudge_6()
dprint("f_dialog_m60_nudge_6");
static long l_dialog_id = DEF_DIALOG_ID_NONE();
		if ( (not dialog_foreground_id_active_check(l_dialog_id)) and  (not b_objective_6_complete)) then
					l_dialog_id = dialog_start_foreground( "NUDGE_6", l_dialog_id,  (not b_objective_6_complete), DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 ); 
							dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m60\m60_gunsprompt_00102', FALSE, NONE, 0.0, "", "Cortana : We just need to hold them off until the defenses are back online." );
				 l_dialog_id = dialog_end( l_dialog_id, b_objective_6_complete, b_objective_6_complete, "" );
		end
end





// =================================================================================================
// =================================================================================================
// SOUND STORY
// =================================================================================================
// =================================================================================================



script dormant f_dialog_m60_swamp_marine_1()
dprint("f_dialog_m60_swamp_marine_1");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_background( "M60_SWAMP_MARINE_1", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
						dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m60\m60_soundstory_00100_soundstory', FALSE, swamp_marine_1, 0.0, "", "Swamp Marine 1: What the hell are these things?!?", TRUE);
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end


script dormant f_dialog_m60_swamp_marine_2()
dprint("f_dialog_m60_swamp_marine_2");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M60_SWAMP_MARINE_2", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
						dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m60\m60_soundstory_00103_soundstory', FALSE, swamp_marine_2, 0.0, "", "Swamp Marine 4 : What happened to Lasky?", TRUE);

				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end



script dormant f_dialog_m60_swamp_marine_3()
dprint("f_dialog_m60_swamp_marine_3");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M60_SWAMP_MARINE_3", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
						dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m60\m60_soundstory_00107_soundstory', FALSE, swamp_marine_3, 0.0, "", "[Swamp Marine 3] Covenant? [Swamp Marine 4] Something else! [Swamp Marine 5] They look Forerunner!", TRUE);
						
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end


script dormant f_dialog_m60_swamp_marine_4()
dprint("f_dialog_m60_swamp_marine_4");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M60_SWAMP_MARINE_4", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
						dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m60\m60_soundstory_00113_soundstory', FALSE, swamp_marine_4, 0.0, "", "[Swamp Marine 4] Multiple contacts! [Swamp Marine 5] 12 o'clock! 4 o'clock! 9 o'clock! [Swamp Marine 1] These things are everywhere!", TRUE);
						
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end

script dormant f_dialog_m60_swamp_marine_5()
dprint("f_dialog_m60_swamp_marine_5");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M60_SWAMP_MARINE_5", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
						dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m60\m60_soundstory_00119_soundstory', FALSE, swamp_marine_5, 0.0, "", "Somebody woke up the locals!", TRUE);
						
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end



script static void f_dialog_m60_rally_point_01
dprint( "f_dialog_m60_rally_point_01" );
	
	local long l_dialog_id = DEF_DIALOG_ID_NONE();

	
		l_dialog_id = dialog_start_foreground( "f_dialog_m60_rally_point_01", l_dialog_id, TRUE, DEF_DIALOG_STYLE_SKIP(), TRUE, "", 0.0 );
			dialog_line_npc( l_dialog_id, 0, not ai_allegiance_broken(player, human), 'sound\dialog\mission\m60\m60_spartanchatter_00103', FALSE, sq_hum_rally_infantry.p3, 0.0, "", "Spartan IV-D : I've got the Chief�s back.", TRUE);
		l_dialog_id = dialog_end( l_dialog_id, TRUE, FALSE, "" );

		



end



script static void f_dialog_m60_rally_point_02
dprint( "f_dialog_m60_rally_point_02" );
	
	local long l_dialog_id = DEF_DIALOG_ID_NONE();

		l_dialog_id = dialog_start_foreground( "f_dialog_m60_rally_point_02", l_dialog_id, TRUE, DEF_DIALOG_STYLE_SKIP(), TRUE, "", 0.0 );
			dialog_line_npc( l_dialog_id, 0, not ai_allegiance_broken(player, human), 'sound\dialog\mission\m60\m60_spartanchatter_00104', FALSE, sq_hum_rally_infantry.p0, 0.0, "", "Spartan IV-A : Covering fire.", TRUE);
		l_dialog_id = dialog_end( l_dialog_id, TRUE, FALSE, "" );


end

script static void f_dialog_m60_rally_point_03
dprint( "f_dialog_m60_rally_point_03" );
	
	local long l_dialog_id = DEF_DIALOG_ID_NONE();

		l_dialog_id = dialog_start_foreground( "f_dialog_m60_rally_point_03", l_dialog_id, TRUE, DEF_DIALOG_STYLE_SKIP(), TRUE, "", 0.0 );
			dialog_line_npc( l_dialog_id, 0, not ai_allegiance_broken(player, human), 'sound\dialog\mission\m60\m60_spartanchatter_00105', FALSE, sq_hum_rally_infantry.p1, 0.0, "", "Spartan IV-B : Suppressing fire.", TRUE);
		l_dialog_id = dialog_end( l_dialog_id, TRUE, FALSE, "" );



end

script static void f_dialog_m60_rally_point_04
dprint( "f_dialog_m60_rally_point_04" );
	
	local long l_dialog_id = DEF_DIALOG_ID_NONE();


		l_dialog_id = dialog_start_foreground( "f_dialog_m60_rally_point_04", l_dialog_id, TRUE, DEF_DIALOG_STYLE_SKIP(), TRUE, "", 0.0 );
			dialog_line_npc( l_dialog_id, 0, not ai_allegiance_broken(player, human), 'sound\dialog\mission\m60\m60_spartanchatter_00107', FALSE, sq_hum_rally_infantry.p3, 0.0, "", "Spartan IV-D : Bravo zulu, 117.", TRUE);
		l_dialog_id = dialog_end( l_dialog_id, TRUE, FALSE, "" );


end

script dormant f_dialog_m60_infinity_ship_pa_01()
dprint("f_dialog_m60_infinity_ship_pa_01");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_background( "M60_SHIP_PA_01", l_dialog_id, TRUE, DEF_DIALOG_STYLE_PLAY(), FALSE, "", 0.25 );    						
							dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m60\infinity_shippa_00100', FALSE, audio_infinitypa1, 0.0, "", "Ship PA : ALERT. HULL BREACH ON DECKS 13 SECTOR 5, DECK 25 SECTOR 12, DECK 131 SECTOR 7, DECK 270, DECK 895", TRUE);
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end


script dormant f_dialog_m60_infinity_ship_pa_02()
dprint("f_dialog_m60_infinity_ship_pa_02");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_background( "M60_SHIP_PA_02", l_dialog_id, TRUE, DEF_DIALOG_STYLE_PLAY(), FALSE, "", 0.25 );    						
							dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m60\infinity_shippa_00102', FALSE, audio_infinitypa2, 0.0, "", "Ship PA : INTRUSION ALERT. INTRUSION ALERT. SECURITY REQUESTED IN FORWARD WEAPON BATTERY, DECK 2, SECTOR 15.", TRUE);
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end


script dormant f_dialog_m60_infinity_ship_pa_03()
dprint("f_dialog_m60_infinity_ship_pa_03");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_background( "M60_SHIP_PA_03", l_dialog_id, TRUE, DEF_DIALOG_STYLE_PLAY(), FALSE, "", 0.25 );    						
							dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m60\infinity_shippa_00103', FALSE, audio_infinitypa4, 0.0, "", "Ship PA : MEDICAL EMERGENCY. ANY AVAILABLE MEDICAL STAFF TO REPORT TO SOUTH PROMENADE, MAIN KIOSK.", TRUE);
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end

script dormant f_dialog_m60_infinity_ship_pa_04()
dprint("f_dialog_m60_infinity_ship_pa_04");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_background( "M60_SHIP_PA_04", l_dialog_id, TRUE, DEF_DIALOG_STYLE_PLAY(), FALSE, "", 0.25 );    						
							dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m60\infinity_shippa_00104', FALSE, audio_infinitypa3, 0.0, "", "Ship PA : FIRE SUPPRESSION SYSTEMS FAILURE. MANUAL INTERVENTION REQUIRED. PLEASE CONTACT FIRE SAFETY WARDEN FOR YOUR SECTOR IMMEDIATELY.", TRUE);
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end


script dormant f_dialog_m60_infinity_ship_pa_05()
dprint("f_dialog_m60_inifinitycauseway_second_gun");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_background( "M60_SHIP_PA_05", l_dialog_id, TRUE, DEF_DIALOG_STYLE_PLAY(), FALSE, "", 0.25 );    						
					dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m60\infinity_shippa_00105', FALSE, audio_infinitypa5, 0.0, "", "Ship PA : WARNING - UNSC INFINITY HAS DESCENDED BELOW MINIMUM SAFE ALTITUDE. INTERNAL ATMOSPHERIC PRESSURE UNSTABLE.", TRUE);
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end

script dormant f_dialog_m60_infinity_ship_pa_06()
dprint("f_dialog_m60_infinity_ship_pa_06");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_background( "M60_SHIP_PA_06", l_dialog_id, TRUE, DEF_DIALOG_STYLE_PLAY(), FALSE, "", 0.25 );    						
					dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m60\infinity_shippa_00106', FALSE, audio_infinitypa6, 0.0, "", "Ship PA : ATTENTION, MASS DEPLOYMENT BAY VESSELS. EMERGENCY MOORING PROCEDURE INITIATED. BAY DOORS WILL NOT RESPOND TO TRAFFIC CONTROL REQUESTS.", TRUE);
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end


script dormant f_dialog_m60_infinity_ship_pa_07()
dprint("f_dialog_m60_infinity_ship_pa_07");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_background( "M60_SHIP_PA_07", l_dialog_id, TRUE, DEF_DIALOG_STYLE_PLAY(), FALSE, "", 0.25 );    						
					dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m60\infinity_shippa_00101', FALSE, audio_infinitypa7, 0.0, "", "Ship PA : CONDITION RED. ALL PERSONNEL TO EMERGENCY STATIONS. CONDITION RED -- ALL PERSONNEL TO EMERGENCY STATIONS.", TRUE);
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end

// =================================================================================================
// =================================================================================================
// SECONDARY ELEMENTS
// =================================================================================================
// =================================================================================================



script static void f_dialog_m60_infinity_secondary_01()
dprint("f_dialog_m60_infinity_secondary_01");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M60_INFINITY_SECONDARY_01", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    						
						dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m60\m60_secondary_00100', FALSE, audio_infinity_secondary_pa01, 0.0, "", "Infinity System Voice : Access denied. Huragok population reserve accepts absolutely no personnel during category three emergency states and higher.", TRUE);
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
				 object_create(infinity_secondary_01);
				 thread(m60_infinity_secondary_01());
				 
end

script static void f_dialog_m60_infinity_secondary_02()
dprint("f_dialog_m60_infinity_secondary_02");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M60_INFINITY_SECONDARY_02", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    						
						dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m60\m60_secondary_00101', FALSE, audio_infinity_secondary_pa02, 0.0, "", "Infinity System Voice : Sub-vessel deployment bay is currently off limits to unauthorized personnel. Please see the local Deck Officer for further assistance.", TRUE);
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
				 
				 object_create(infinity_secondary_02);
				 thread(m60_infinity_secondary_02());
end


script static void f_dialog_m60_infinity_secondary_03()
dprint("f_dialog_m60_infinity_secondary_03");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M60_INFINITY_SECONDARY_03", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    						
						dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m60\m60_secondary_00102', FALSE, audio_infinity_secondary_pa03, 0.0, "", "Infinity System Voice : Maintenance requests concerning the Mark Ten Macedon Z-PROTOTYPE Forerunner engine cannot be processed at this time.", TRUE);
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
				 
				 object_create(infinity_secondary_03);
				 thread(m60_infinity_secondary_03());
end


script static void f_dialog_m60_infinity_secondary_04()
dprint("f_dialog_m60_infinity_secondary_04");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M60_INFINITY_SECONDARY_04", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    						
						dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m60\m60_secondary_00103', FALSE, audio_infinity_secondary_pa04, 0.0, "", "Infinity System Voice : Welcome to the Infinty Shipwide Waypoint Network. For information concerning--- I�m sorry. We are currently having difficulties processing your request due to the high volume of ---", TRUE);
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
				 
				 object_create(infinity_secondary_04);
				 thread(m60_infinity_secondary_04());
				 
end

script static void f_dialog_m60_infinity_secondary_05()
dprint("f_dialog_m60_infinity_secondary_05");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M60_INFINITY_SECONDARY_05", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    						
						dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m60\m60_secondary_00104', FALSE, audio_infinity_secondary_pa05, 0.0, "", "Infinity System Voice : Infinity Shipwide Waypoint Network currently offline.", TRUE);
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
				 object_create(infinity_secondary_05);
				 thread(m60_infinity_secondary_05());
end

script static void f_dialog_m60_infinity_secondary_06()
dprint("f_dialog_m60_infinity_secondary_06");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M60_INFINITY_SECONDARY_06", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    						
						dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m60\m60_secondary_00105', FALSE, audio_infinity_secondary_pa06, 0.0, "", "Infinity System Voice : All S-deck access is restricted until shipwide quarantine has been lifted.", TRUE);
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
				 
				 object_create(infinity_secondary_06);
				 thread(m60_infinity_secondary_06());
end

script static void f_dialog_m60_infinity_secondary_07()
dprint("f_dialog_m60_infinity_secondary_07");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M60_INFINITY_SECONDARY_07", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    						
						dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m60\m60_secondary_00106', FALSE, audio_infinity_secondary_pa07, 0.0, "", "Infinity System Voice : Cargo Unit, Lot 225. Destination: Ivanoff Station. Please consult the Manifest Director if you require immediate access.", TRUE);
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );

				 object_create(infinity_secondary_07);
				 thread(m60_infinity_secondary_07());
end


// =================================================================================================
// =================================================================================================
// CORTANA GLOBALS
// =================================================================================================
// =================================================================================================

script dormant f_dialog_m60_watchers_callout()
dprint("f_dialog_m60_watchers_callout");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M60_WATCHERS_CALLOUT", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    						
							dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\global\global_chatter_00162', FALSE, NONE, 0.0, "", "Cortana : Watchers!" );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end

script dormant f_dialog_m60_turrets_callout()
dprint("f_dialog_m60_turrets_callout");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M60_TURRETS_CALLOUT", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    						
							dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\global\global_chatter_00177', FALSE, NONE, 0.0, "", "Cortana : Turrets!" );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end

script dormant f_dialog_m60_find_some_cover()
dprint("f_dialog_m60_find_some_cover");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "M60_FIND_SOME_COVER", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    						
							dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\global\global_chatter_00132', FALSE, NONE, 0.0, "", "Cortana : Find some cover!" );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end



script dormant f_dialog_m60_callout_additional_forerunners()
dprint("f_dialog_m60_callout_additional_forerunners");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "ADDITIONAL_FORERUNNERS", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\global\global_chatter_00170', FALSE, NONE, 0.0, "", "Cortana : Additional Forerunners inbound!" );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end


script dormant f_dialog_m60_callout_on_top_of_us()
dprint("f_dialog_m60_callout_on_top_of_us");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "ADDITIONAL_FORERUNNERS", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\global\global_chatter_00153', FALSE, NONE, 0.0, "", "Cortana :	They�re almost on top of us!" );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end

script dormant f_dialog_m60_callout_last_of_them()
dprint("f_dialog_m60_callout_last_of_them");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "LAST_OF_THEM", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\global\global_chatter_00182', FALSE, NONE, 0.0, "", "Cortana : That's the last of them." );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end

script dormant f_dialog_m60_clean_em_up()
dprint("f_dialog_m60_callout_last_of_them");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "LAST_OF_THEM", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\global\global_chatter_00182', FALSE, NONE, 0.0, "", "Cortana : Clean �em up." );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end

script dormant f_dialog_m60_callout_ghosts()
dprint("f_dialog_callout_ghosts");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "GHOSTS", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\global\global_chatter_00127', FALSE, NONE, 0.0, "", "Cortana : Ghosts!" );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end

script dormant f_dialog_m60_callout_wraith()
dprint("f_dialog_callout_wraith");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "WRAITH", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\global\global_chatter_00125', FALSE, NONE, 0.0, "", "Cortana : Wraith!" );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end

script dormant f_dialog_m60_callout_inbound()
dprint("f_dialog_callout_inbound");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "INBOUND", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\global\global_chatter_00128', FALSE, NONE, 0.0, "", "Cortana : Inbound!" );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end


script dormant f_dialog_m60_callout_were_almost_there()
dprint("f_dialog_callout_were_almost_there");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "WERE_ALMOST_THERE", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\global\global_chatter_00151', FALSE, NONE, 0.0, "", "Cortana : We're almost there!" );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end

script dormant f_dialog_m60_callout_finish_them_off()
dprint("f_dialog_callout_finish_them_off");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "FINISH_THEM_OFF", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\global\global_chatter_00248', FALSE, NONE, 0.0, "", "Cortana : Finish them off." );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end

script dormant f_dialog_m60_callout_how_its_done()
dprint("f_dialog_callout_finish_them_off");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "HOW_ITS_DONE", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\global\global_chatter_00239', FALSE, NONE, 0.0, "", "Cortana : That�s how it�s done." );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end


script dormant f_dialog_m60_callout_combined_squads()
dprint("f_dialog_callout_combined_squads");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "COMBINED_SQUADS", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\global\global_chatter_00172', FALSE, NONE, 0.0, "", "Cortana : Combined squads!" );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end


script dormant f_dialog_m60_callout_knights()
dprint("f_dialog_callout_knights");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "KNIGHTS", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\global\global_chatter_00156', FALSE, NONE, 0.0, "", "Cortana : Knights!" );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end

script dormant f_dialog_m60_callout_turrets()
dprint("f_dialog_callout_turrets");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "TURRETS", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\global\global_chatter_00177', FALSE, NONE, 0.0, "", "Cortana : Turrets!" );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end

script dormant f_dialog_m60_callout_heads_up()
dprint("f_dialog_callout_heads_up");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "HEADS_UP", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\global\global_chatter_00115', FALSE, NONE, 0.0, "", "Cortana : Heads up!" );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end

script dormant f_dialog_m60_callout_banshees()
dprint("f_dialog_callout_banshees");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "BANSHEES", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\global\global_chatter_00126', FALSE, NONE, 0.0, "", "Cortana : Banshees!" );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end

script dormant f_dialog_m60_callout_hold_them_off()
dprint("f_dialog_callout_hold_them_off");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "HOLD_THEM_OFF", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\global\global_chatter_00147', FALSE, NONE, 0.0, "", "Cortana : Hold them off!" );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end

script dormant f_dialog_m60_callout_more_time()
dprint("f_dialog_callout_more_time");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "MORE_TIME", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\global\global_chatter_00148', FALSE, NONE, 0.0, "", "Cortana : Just a few more minutes!" );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end



script dormant f_dialog_m60_still_seeing_targets()
dprint("f_dialog_still_seeing_targets");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "STILL_SEEING_TARGETS", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\global\global_chatter_00247', FALSE, NONE, 0.0, "", "Cortana : I'm still seeing targets." );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end

script dormant f_dialog_m60_go_to_terminal()
dprint("f_dialog_go_to_terminal");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "GO_TO_TERMINAL", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\global\global_chatter_00222', FALSE, NONE, 0.0, "", "Cortana : Go to the terminal." );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end

script dormant f_dialog_m60_were_all_clear()
dprint("f_dialog_were_all_clear");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "WERE_ALL_CLEAR", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\global\global_chatter_00183', FALSE, NONE, 0.0, "", "Cortana : OK, we're clear." );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end

// --- End m60_dialog.hsc ---

// --- Begin m60_e4all.hsc ---
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343
//
// 	Mission: 					m60_rescue (E3 DEMO!)
//	Insertion Points:	(or ice3)	- Beginning
//										
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343

/*script dormant f_e3_demo

	sleep_until (volume_test_players (e3_air_spawn), 1);
	
	print (":  : Spawn Ambient Air :  :");
	
	ai_place (sq_e3_amb_air);
	
	wake (f_e3_elite);
	
end

script dormant f_e3_elite

		sleep_until (volume_test_players (e3_elite_spawn), 1);
		
		cinematic_show_letterbox (FALSE);
		player_disable_movement (TRUE);
		
		ai_place (sq_e3_elite);
		
		wake (f_e3_pawn);
		
end

script dormant f_e3_pawn

	sleep_until (volume_test_players (e3_pawn_spawn), 1);
	thread (e3_pawn_thread());
	
//	ai_place (sq_e3_pawn_1.p4);
//	ai_place (sq_e3_pawn_1.p5);

//	wake (f_e3_knight_2);

end

script static void e3_pawn_thread()

	thread (e3_pawn_1());
	sleep (30);
	thread (e3_pawn_2());
	thread (e3_pawn_3());

	wake (f_e3_knight_2);

end

script static void e3_pawn_1()

	object_create (e3_pawn_1);
	object_move_to_point (e3_pawn_1, 1, e3_pawn_1.p0);
	object_move_to_point (e3_pawn_1, .5, e3_pawn_1.p1);
	object_move_to_point (e3_pawn_1, .5, e3_pawn_1.p2);
	sleep (30 * 2);
	object_move_to_point (e3_pawn_1, .5, e3_pawn_1.p3);
	object_move_to_point (e3_pawn_1, .5, e3_pawn_1.p4);
	object_move_to_point (e3_pawn_1, 1, e3_pawn_1.p5);
	//object_rotate_to_point (e3_pawn_1, 1, 1, 1, e3_pawn_1.p5);
	object_destroy (e3_pawn_1);
	//ai_place (sq_e3_pawn_1.p1);
	object_create (e3_fr_rifle);

end

script static void e3_pawn_2()

	object_create (e3_pawn_2);
	object_move_to_point (e3_pawn_2, 2, e3_pawn_2.p0);
	object_move_to_point (e3_pawn_2, 1, e3_pawn_2.p1);
	object_move_to_point (e3_pawn_2, 1, e3_pawn_2.p2);
	object_move_to_point (e3_pawn_2, 1, e3_pawn_2.p5);
	//object_rotate_to_point (e3_pawn_1, 1, 1, 1, e3_pawn_1.p5);
	object_destroy (e3_pawn_2);
	//ai_place (sq_e3_pawn_1.p3);

end

script static void e3_pawn_3()
	
	object_move_to_point (e3_pawn_3, 1, e3_pawn_3.p0);
	object_move_to_point (e3_pawn_3, 1, e3_pawn_3.p1);
	object_move_to_point (e3_pawn_3, .5, e3_pawn_3.p2);
	object_destroy (e3_pawn_3);
//	ai_place (sq_e3_pawn_1.p2);
	
end

script dormant f_e3_knight_2

	sleep_until (volume_test_players (e3_knight_2_spawn), 1);
	ai_place (sq_e3_knight_2);
	sleep_until (ai_living_count (sq_e3_knight_2) < 1);
//	cs_go_to (sq_e3_bishop_1, TRUE, e3_bishop_escape.p0);
	
	wake (f_e3_knight_3);
	
end

script dormant f_e3_knight_3

	sleep_until (volume_test_players (e3_knight_3_spawn), 1);
	
	sleep (30 * 2);
	
	ai_place (sq_e3_knight_3.p1);
	sleep (30);
	ai_place (sq_e3_knight_3.p2);
	
	sleep_until (ai_living_count (sq_e3_knight_3.p1) < 1);
	
	ai_place (sq_e3_bishop_2);

	wake (f_e3_vignette);

end

script dormant f_e3_vignette

	sleep_until (volume_test_players (trig_trail_vig), 1);
	ai_place (sq_enc_2_vig_fore);
	ai_place (sq_enc_2_vig_marine);
	sleep (30 * 5);
	effect_new_at_ai_point ("fx\reach\test\chad\explosions\gritty_explosion.effect", ps_vig_pt.p0);
	ai_kill (sq_enc_2_vig_fore);
	ai_kill (sq_enc_2_vig_marine);
	object_create (xray_drop);

	sleep_until ((object_get_health (xray_drop)) == 0);
	
	sleep (30 * 6);
	
	ai_place (sq_e3_xray_spook.p1);
	
	sleep (30 * 2);
	
	ai_place (sq_e3_xray_spook.p2);
	ai_place (sq_e3_vig_pawn);
	
	sleep (30);
	
	ai_place (sq_e3_xray_spook.p3);
	
	sleep (15);
	
	ai_place (sq_e3_xray_spook.p4);
	
	sleep (5);
	
	ai_place (sq_e3_xray_spook.p5);
	
	sleep (30 * 10);
	
	fade_out (0, 0, 0, 120);
	
end	


;==================================================================================================
; COMMAND SCRIPTS
;==================================================================================================

script command_script e3_banshee_1

	ai_disregard (player0, TRUE);
	cs_vehicle_boost (TRUE);
	cs_fly_to (e3_banshee_1.p0);
	cs_fly_to (e3_banshee_1.p1);
	cs_vehicle_boost (FALSE);
	cs_fly_to (e3_banshee_1.p2);
	ai_erase (ai_current_actor);

end

script command_script e3_banshee_2

	ai_disregard (player0, TRUE);
	cs_vehicle_boost (TRUE);
	cs_fly_to (e3_banshee_2.p0);
	cs_fly_to (e3_banshee_2.p1);
	cs_vehicle_boost (FALSE);
	cs_fly_to (e3_banshee_2.p2);
	ai_erase (ai_current_actor);

end

script command_script e3_phantom

	ai_disregard (player0, TRUE);
	cs_vehicle_boost (TRUE);
	cs_vehicle_speed (1.5);
	thread (e3_phantom_shake());
	cs_fly_to (e3_phantom.p0);
	cs_fly_to (e3_phantom.p1);
	cs_vehicle_boost (FALSE);
	cs_fly_to (e3_phantom.p2);
	ai_erase (ai_current_actor);

end

script command_script e3_phantom_2

	ai_disregard (player0, TRUE);
	cs_vehicle_boost (TRUE);
	cs_vehicle_speed (1.5);
	cs_fly_to (e3_phantom_2.p0);
	cs_fly_to (e3_phantom_2.p1);
	cs_vehicle_boost (FALSE);
	cs_fly_to (e3_phantom_2.p2);
	ai_erase (ai_current_actor);

end

script command_script e3_phantom_3

	ai_disregard (player0, TRUE);
	cs_vehicle_boost (TRUE);
	cs_vehicle_speed (1.5);
	cs_fly_to (e3_phantom_3.p0);
	cs_fly_to (e3_phantom_3.p1);
	cs_vehicle_boost (FALSE);
	cs_fly_to (e3_phantom_3.p2);
	ai_erase (ai_current_actor);

end

script static void e3_phantom_shake()

	sleep (30 * 7);
	camera_shake_player (player0, 1, 1, 1, 3);

end

script command_script e3_elite

	cs_custom_animation(objects\characters\storm_elite_ai\storm_elite_ai.model_animation_graph, "combat:sword:point", TRUE );
	cs_custom_animation(objects\characters\storm_elite_ai\storm_elite_ai.model_animation_graph, "combat:sword:go_berserk", TRUE );
	ai_place (sq_e3_knight_1);
	print (":  : Placing Knight 1 :  :");
	cs_custom_animation(objects\characters\storm_elite_ai\storm_elite_ai.model_animation_graph, "combat:sword:melee:var3", TRUE );
//	cs_custom_animation(objects\characters\storm_elite_ai\storm_elite_ai.model_animation_graph, "combat:sword:melee:var4", TRUE );
	
end

script command_script e3_knight_1

	cs_phase_in();
	sleep (30 * 2);
	print (":  : Shooting Elite :  :");
	cs_shoot (TRUE, (ai_get_object(sq_e3_knight_1)));
	sleep (30);
	print (":  : Stop Shooting :  :");
	cs_shoot (FALSE, (ai_get_object(sq_e3_knight_1)));
	ai_kill (sq_e3_elite);
	sleep (30 * 2);
	cs_custom_animation (objects\characters\storm_knight\storm_knight.model_animation_graph, "combat:any:go_berserk", FALSE);
	sleep (30 * 2);
	cs_phase_to_point (e3_phase_1.p0);
	player_disable_movement (FALSE);
	cinematic_show_letterbox (FALSE);
	ai_erase (ai_current_actor);
	
end

script command_script e3_knight_2

	cs_phase_in();
	sleep (30 * 2);
//	cs_custom_animation (objects\characters\storm_knight\storm_knight.model_animation_graph, "combat:any:go_berserk", TRUE);
	ai_place (sq_e3_bishop_1);
//	cs_shoot_point (TRUE, e3_knight_shoot.p0);
//	print (":  : Shooting One :  :");
//	sleep (30 * 3);
//	cs_custom_animation (objects\characters\storm_knight\storm_knight.model_animation_graph, "combat:any:go_berserk", FALSE);
//	cs_shoot_point (TRUE, e3_knight_shoot.p1);
//	print (":  : Shooting Two :  :");
//	sleep (30 * 3);
//	cs_custom_animation (objects\characters\storm_knight\storm_knight.model_animation_graph, "combat:any:go_berserk", FALSE);
//	sleep (30 * 10);
//	ai_kill (ai_current_actor);
	
end

script command_script e3_knight_spook_1

	cs_phase_in();
	sleep (30);
	cs_custom_animation (objects\characters\storm_knight\storm_knight.model_animation_graph, "combat:any:go_berserk", TRUE);

end

script command_script e3_knight_spook_2

	cs_phase_in();
	sleep (30);
	cs_custom_animation (objects\characters\storm_knight\storm_knight.model_animation_graph, "combat:any:sword_flick", TRUE);

end

script command_script e3_pawn_spook_1

	cs_go_to (e3_pawn_spook.p0);
	
end

script command_script e3_pawn_spook_2

	cs_go_to (e3_pawn_spook.p1);
	
end

script command_script e3_pawn_spook_3

	cs_go_to (e3_pawn_spook.p2);
	
end

script command_script e3_pawn_spook_4

	cs_go_to (e3_pawn_spook.p3);
	
end

*/
// --- End m60_e4all.hsc ---

// --- Begin m60_narrative.hsc ---

// =================================================================================================
// =================================================================================================
// NARRATIVE SCRIPTING M60
// =================================================================================================
// =================================================================================================


// =================================================================================================
// *** GLOBALS ***

 		global boolean b_objective_1_complete = FALSE;
		global boolean b_objective_2_complete = FALSE;
		global boolean b_objective_3_complete = FALSE;
		global boolean b_objective_4_complete = FALSE;
		global boolean b_objective_5_complete = FALSE;
		global boolean b_objective_6_complete = FALSE;
		global boolean b_xray_pickedup = FALSE;
		global long l_dlg_inifinityberth_mechdata = DEF_DIALOG_ID_NONE();
		global boolean b_mantis_engaged = FALSE;

// =================================================================================================

///////////////////////////////////////////////////////////////////////////////////
// MAIN
///////////////////////////////////////////////////////////////////////////////////
script startup M60_narrative_main()
	
	if (game_insertion_point_get() < 22) then
	
	print ("::: M60 Narrative Start :::");

//	thread (m60_1st_fof_ping());
	thread (peak_vo_theview());
	thread (peak_vo_trail_transmission());
	
	wake (audio_vignette_ambush_01);
	//wake (audio_vignette_delrio_explosion);
	wake (crumb_dogtag_scan_01);
	wake (m60_3rd_fof_ping);
	wake (m60_last_fof_ping);
	
	wake (crumb_dogtag_scan_last);
	//wake (boulders_marines_yabro_01);
	wake (boulders_marines_uphigh_01);
	wake (trail_boulders_vo_assistmarines); 
	//wake (lasky_clear_berth);
	wake (boulders_marines_holedup);
	wake (m60_crumb_dogtag_scan2);
	thread (m60_infinity_run_02());
	thread (m60_infinity_run_01());
	thread (m60_trails1_sniper());
  wake(m60_try_to_leave_mechbay);
  wake(m60_infinityberth_enter_mantis);
  wake(m60_rampancy_hall);
  wake(m60_last_fof_proximity);
  thread(m60_hallway_exit());
  wake(covenant_forerun_coop);
  wake(infinityouterdeck_start_alt);
	wake(rally_chief_onme);
	//wake(boulders_tango_uphigh_01);
	wake(m60_xray_post);
/*	wake(swamp_marine_chatter_01);
	wake(swamp_marine_chatter_02);
	wake(swamp_marine_chatter_03);
	wake(swamp_marine_chatter_04);
	wake(swamp_marine_chatter_05);*/
	   thread(m60_infinity_secondary_01());
     thread(m60_infinity_secondary_02());
     thread(m60_infinity_secondary_03());
     thread(m60_infinity_secondary_04());
     thread(m60_infinity_secondary_05());
     thread(m60_infinity_secondary_06());
     thread(m60_infinity_secondary_07());
     wake(infinity_ship_pa_01);
			wake(infinity_ship_pa_02);
			wake(infinity_ship_pa_04);
			wake(infinity_ship_pa_05);
			wake(infinity_ship_pa_06);
			wake(infinity_ship_pa_07);
			wake(m60_waypoint_terminal);
			wake(m60_trails_knight_vignette_pre);
			thread( m60_berth_exit_grunts(inf_cause_gr_kami.spawn_points_0) );
			thread( m60_berth_exit_grunts_02(inf_cause_gr_kami.spawn_points_1) );
	end

end

//3434343434343434343434343434343434343434343434343434343434343434343434343434

////////////////////////////////////NARRATIVE SCRIPTS////////////////////////////

//3434343434343434343434343434343434343434343434343434343434343434343434343434


script static void m60_1st_fof_ping()
	dprint ("doing stuff");
	// some rampancy, then the first IFF waypoint
	//sleep_until (object_valid (crumb_dogtag_01), 1);		
	//objects_attach (crumb_tag_marine_01, "head", crumb_dogtag_01, "");
	
  sleep_until( volume_test_players(m60_1st_fof_ping), 1);
 
		wake(f_dialog_m60_1st_fof_ping);
	
  
    
end

/*script dormant m60_test_vo_wait()
	
		sleep_until(dialog_id_played_check(L_dlg_1st_fof_ping), 1);
 thread (story_blurb_add("other", "SUCCESS!."));
	dprint("SUCCESS!");

end*/

script static void peak_vo_theview()
	//when the player moves to the edge of the cliff Cortana makes a comment about the Didact scanning the INFINITY.
  
  sleep_until( volume_test_players(m60peak_001_vo_theview), 1);
     

		wake(f_dialog_m60_the_view);

end


script static void peak_vo_trail_transmission()
	//triggers when the player walk through the trail at the start of the level.
	
  sleep_until (volume_test_players(peak_vo_trail_transmission), 1);
dprint("VO TRAIL TRANSMISSION");	
	//wake(f_dialog_m60_vo_trail_transmission);
	sleep_s(2);
	wake(f_dialog_m60_vo_trail_transmission_02);
	thread(m60_objective_1_nudge());
		                   
end


script dormant audio_vignette_ambush_01()
	//triggers when nearing early ambush site
	
	sleep_until (volume_test_players(audio_vignette_ambush_01), 1);
	
	// this activates first set of dog tag scripts
	device_set_power (crumb_dogtag_01, 1.0);
	//device_set_power (extra_dogtag_01, 1.0);
	
	
	//thread (story_blurb_add("cutscene", "SOUNDS of an ambush."));
	sleep_s (1.0);
	
	//thread (story_blurb_add("other", "Knight SCREAMS!"));
	sleep_s (2.0);
	
		//thread(f_dialog_m60_vignette_ambush_01());
		
			
	//thread (story_blurb_add("cutscene", "SOUNDS of Marine gunfire giving way to Knight gunfire."));
	wake(Peak_Prometheans_appear_cortana);
	
	
	
end


script dormant Peak_Prometheans_appear_cortana()
	//fires when the prometheans disappear at the end of peak.
  
//  thread (story_blurb_add("other", "(RADIO) DEL RIO: Keep an eye out for hostiles.  We may not be alone here."));
//  sleep_s (5.1);
		sleep_until (volume_test_players (Peak_Prometheans_appear_cortana), 1);
		
		
  
end

script dormant Peak_Prometheans_appear()
   dprint("d");
end


script dormant crumb_dogtag_scan_01()
	//fires when you scan either of first bread crumb dog tags
	sleep_until (object_valid (crumb_dogtag_01), 1);	
	sleep_until (device_get_position(crumb_dogtag_01) > 0.0, 1 );
	
	
	device_set_power (crumb_dogtag_01, 0.0);
	
	wake(m60_peak_after_iff);
	
	f_unblip_object (crumb_dogtag_01);
			thread(f_dialog_m60_vignette_ambush_04());

end

script dormant m60_peak_after_iff()
	sleep_until ((volume_test_players (peak_after_iff) or volume_test_players(peak_prometheans_appear_cortana)), 1);
	
	dprint ("no longer playin' dat pip, son! fixing dem bugs, stoppin' dem pips... it's how we roll halo 4");		
	//hud_play_pip_from_tag( "" );
	
end

/*script dormant dt1_unblip
	sleep_until (volume_test_players (tv_dt1_unblip), 1);
	f_unblip_object (crumb_dogtag_01);
end
*/
script static void m60_trails1_sniper()

	sleep_until (volume_test_players(swamp_marine_chatter_01), 1);
	f_unblip_object (crumb_dogtag_01);
		//wake(f_dialog_m60_sniper_backscatter);
			
			

end

script dormant m60_3rd_fof_ping()
	//fires to activate 3rd marine fof ping
	sleep_until (volume_test_players(m60_3rd_fof_ping), 1);
	
	f_unblip_flag (crumb_locflag_02);
	
		wake(f_dialog_m60_trails_iffcallout);

	
	

end



script dormant m60_trails_knight_vignette_pre()
sleep_until (volume_test_players(knight_vignette_pre), 1);
	wake(f_dialog_m60_trails_knight_vignette);
end

script dormant m60_xray_intro()
	//fired after X-ray scene Knight is killed
	
	
	//f_unblip_flag (crumb_locflag_03);
	
  //thread (story_blurb_add("cutscene", "MARINE/KNIGHT VIGNETTE - KNIGHT DROPS AA"));

   if not (unit_has_equipment (player0, "objects\equipment\storm_forerunner_vision\storm_forerunner_vision.equipment")) then

		wake(f_dialog_m60_xray_intro);
		
	end		
end

script dormant m60_xray_post()	
//	sleep_until (object_valid (x_ray_placeholder), 1);	

//	sleep_until ((device_get_position(x_ray_placeholder) > 0.0), 1);
	
	//device_set_power (x_ray_placeholder, 0.0);
	sleep_until (volume_test_players(m60_xray_intro), 1);
		sleep_until ( 
		unit_has_equipment (player0, "objects\equipment\storm_forerunner_vision\storm_forerunner_vision_pve.equipment")
		or unit_has_equipment (player1, "objects\equipment\storm_forerunner_vision\storm_forerunner_vision_pve.equipment")
		or unit_has_equipment (player2, "objects\equipment\storm_forerunner_vision\storm_forerunner_vision_pve.equipment")
		or unit_has_equipment (player3, "objects\equipment\storm_forerunner_vision\storm_forerunner_vision_pve.equipment")
	, 1);		
				//Hud_play_pip("TEMP_PIP");
				wake(f_dialog_m60_xray_intro_2);
				b_xray_pickedup = TRUE;
			//Hud_play_pip("");
			if IsNarrativeFlagSetOnAnyPlayer(49) == FALSE then
					SetNarrativeFlagOnLocalPlayers( 49, TRUE );
					dprint("Forerunner Vision acquired");
					
			end
end	


script dormant m60_crumb_dogtag_scan2()

	sleep_until (object_valid (crumb_dogtag_02), 1);	
	sleep_until (device_get_position(crumb_dogtag_02) > 0.0, 1 );

	device_set_power (crumb_dogtag_02, 0.0);
	
	f_unblip_flag (crumb_locflag_iff_02);
		wake(f_dialog_m60_crumb_dogtag_scan2);
		
end



script dormant audio_vignette_delrio_explosion()
	//triggers after X-ray drop, hear explosion over radio, then in real time
	
	sleep_until (volume_test_players(audio_vignette_delrio_explosion), 1);

		wake(f_dialog_audio_vignette_pre_explosion);

end


script dormant m60_last_fof_ping()
	//fires to activate last marine fof ping
	sleep_until (volume_test_players(m60_last_fof_ping), 1);
	
	f_unblip_flag (crumb_locflag_last); 
	wake(f_dialog_m60_last_fof_ping);
	
	

	
end


script dormant last_fof_callout()
	//Cortana calls out the last dog tag
	sleep_until (volume_test_players(last_fof_callout), 1);
		wake(f_dialog_m60_last_fof_ping);
		thread(m60_lost_player_loop());
end

script static void m60_lost_player_loop()
	sleep_s(300);
	thread(m60_lost_player_fof_callout_01());
end


script static void m60_lost_player_fof_callout_01()
	//Call out for lost player
	
		wake(f_dialog_m60_last_fof_ping_2);
		sleep_s(300);
		thread(m60_lost_player_fof_callout_02());
end

script static void m60_lost_player_fof_callout_02()
	//Call out for lost player

		wake(f_dialog_m60_last_fof_ping_3);
		sleep_s(300);
		thread(m60_lost_player_fof_callout_01());
end

script dormant m60_last_fof_proximity()
	//In proximity of last fof
	sleep_until (volume_test_players(m60_last_fof_proximity), 1);
	
		wake(f_dialog_m60_last_fof_callout);
		kill_script(m60_lost_player_loop);
		kill_script(m60_lost_player_fof_callout_01);
		kill_script(m60_lost_player_fof_callout_02);
end

global zone_set cinZS = "trail_c_to_cinematic";
script dormant crumb_dogtag_scan_last()
	//fires when you scan last bread crumb dog tag
	sleep_until (object_valid (crumb_dogtag_last), 1);
	sleep_until (device_get_position(crumb_dogtag_last) > 0.0, 1 );
	device_set_power (crumb_dogtag_last, 0.0);
	
	prepare_to_switch_to_zone_set(cinZS);
	
	f_unblip_flag (crumb_locflag_last);
	
//	thread (story_blurb_add("other", "PIP: SSgt. Sullivan, Brendan K.  - 2557-07-22 12:42:11."));
	
		wake(f_dialog_m60_dogtag_scan_last);
	
	
end

script dormant m60_last_fof_reveal()
	 wake(f_dialog_m60_last_fof_reveal);
	//group of IFF blips appear in front of Chief
	f_blip_object (sq_vig_s4.s5, "recon");
	sleep_s (0.75);
	f_blip_object (sq_vig_s4.s1, "recon");
	sleep_s (0.5);
	f_blip_object (sq_vig_s4.s2, "recon");
	sleep_s (0.25);
	f_blip_object (sq_vig_s4.s3, "recon");
	sleep_s (0.1);
	f_blip_object (sq_vig_s4.s4, "recon");
	
	kill_script(m60_objective_1_nudge);
	b_objective_1_complete = TRUE;
	
	sleep_s (2.0);
	player_action_test_reset();

	// M62_introductions Cutscene

	if (b_cinematics and (not b_editor) or (b_editor_cinematics)) then
		
		cinematic_enter ("cin_m062_introductions", TRUE);
		
		switch_zone_set (cin_m62_bunker);
		sleep ( 1 );
		sleep_until (current_zone_set_fully_active() == zs_cin_m062, 1);
		sleep ( 1 );

		cinematic_suppress_bsp_object_creation(TRUE);

		f_load_cin_m62_trail();
		f_start_mission ("cin_m062_introductions");
		
		cinematic_suppress_bsp_object_creation(FALSE);
		
		cinematic_exit_no_fade(cin_m062_introductions, TRUE); 
		
		print ("Cinematic exited!"); 
		
	end
  
  wake (f_laskytemp);
	
	f_unblip_flag (lasky_ping_01);
	f_unblip_flag (lasky_ping_02);
	f_unblip_flag (lasky_ping_03);
	f_unblip_flag (lasky_ping_04);
	f_unblip_flag (lasky_ping_05);
	wake(m60_landing_marine_vo);

end

script dormant m60_landing_marine_vo()
		sleep_until (volume_test_players(landing_marine_vo), 1);
		//thread(f_dialog_m60_bunker_exit_marines());
		
	//	thread(f_dialog_m60_marines_bunker_01());
		//thread(f_dialog_m60_marines_bunker_02());
		
		
end


script static void m60_hallway_exit()
		sleep_until (volume_test_players(landing_marine_vo), 1);
		//thread(f_dialog_m60_bunker_exit_marines());
		wake(f_dialog_m60_spartan_armor_comment);
	//	thread(f_dialog_m60_marines_bunker_01());
		
		thread(m60_objective_2_nudge());
		
end

script dormant boulders_marines_yabro_01()
	//would be good idea to script this so it can be fired by any close, living marine
	sleep_until (volume_test_players(boulders_marines_yabro_01), 1);
	
/*	thread (story_blurb_add("domain", "MARINE #1: Wow. I didn't think I believed in ghosts..."));
	sleep_s (5.1);
	
	thread (story_blurb_add("vo", "MARINE #2: Yeah, well, if this means I'm dead, my wife is gonna kill me."));	*/
	
	//worried that we won't have room for following line
	//thread (story_blurb_add("domain", "CORTANA: Chief, its hard to get a reading under this canopy, but I think there's a clearing big enough for a dropship due east of here."));	

end


script dormant boulders_marines_yabro_02()
	//fires when first boulders squad is dead
	//would be good idea to script this so it can be fired by any close, living marine
	
	dprint("d");
	
end


script dormant boulders_marines_uphigh_01()
	//fires as you turn corner after ramps near start of boulders
	sleep_until (volume_test_players(m60_preboulders_radio), 1);
//	object_hide( cortana_temp_plinth, TRUE );
		wake(f_dialog_m60_preboulders_radio);
			
end

script dormant boulders_tango_uphigh_01()
	//fires as you see knight on the rock
	sleep_until (volume_test_players(boulders_marines_uphigh_01), 1);
			
			wake(f_dialog_m60_boulders_uphigh);

end

script dormant trail_boulders_vo_assistmarines()
	//fires as you come upon Marines on the hill
  sleep_until( volume_test_players(m60trail_boulders_016_vo_assistmarines), 1);
      wake(f_dialog_m60_boulders_assistmarines);

end

script dormant boulders_marines_holedup()

	sleep_until( volume_test_players(boulders_marines_holedup), 1);

	thread(f_dialog_m60_boulders_marines_holedup());
	thread(f_dialog_m60_boulders_marines_holedup2());
	//sleep_s(2);
	//thread(f_dialog_m60_boulders_marines_holedup_cortana());

end




script dormant cortana_plinth_callout()
	//fires when last wave guarding hill is dead
     
  kill_script(m60_objective_2_nudge);
  sleep_forever(m60_objective_2_nudge);
  b_objective_2_complete = TRUE;
  
	wake(f_dialog_m60_plinth_callout);
		

end



script static void m60_objective_3_nudge()
		sleep_until( volume_test_players(cortana_emplacements), 1);
			if b_objective_3_complete == FALSE then
						thread(f_dialog_m60_nudge_3());
			end
			sleep_s(15);
				if b_objective_3_complete == FALSE then
					thread( m60_objective_3_nudge());
			end
end


script static void cortana_plinth_callout_2()
	//If player delays
    sleep_s(90);
	 wake(f_dialog_m60_plinth_callout_02);
		
         
end

script dormant cortana_plinth_appear()

	sleep_until (device_get_position (lightbridge_active) != 0);
	sleep_s(5);
		wake(f_dialog_m60_plinth_progress);
//		object_create(cortana_temp_plinth);
	  dprint("plinth appear fire");
//		object_hide( cortana_temp_plinth, FALSE );
	
//		object_hide( cortana_temp_plinth, TRUE );

end

script dormant cortana_plinth_rampant_01()
	//fires after 1st of 4 enemy waves is dead
		dprint("D");	
	//	wake(f_dialog_m60_plinth_ambush);
end

script dormant cortana_plinth_rampant_01a()		
	//fires after first wave
			
		dprint("d");
end


script dormant cortana_plinth_rampant_02()
	//fires after 2nd of 4 enemy waves is dead
		//sleep_s(3);
		//wake(f_dialog_m60_plinth_progress_02);
		dprint("d");
  
end
	

script dormant cortana_plinth_rampant_03()
	//fires after 3rd of 4 enemy waves is dead
	
	wake(f_dialog_m60_plinth_progress_03);
	
end


script dormant boulders_plinth_finished()
	//fires when Cortana has finished with the plinth
	     

		wake(f_dialog_m60_plinth_complete);
	kill_script(m60_objective_3_nudge);
  b_objective_3_complete = TRUE;

end

script dormant m60_rampancy_hall()
		sleep_until( volume_test_players(rampancy_hall), 1);
		
		wake(f_dialog_m60_rampancy_hall);

end


script dormant covenant_forerun_coop()
	// this should probably fire when the first wave in the cave is dead
	sleep_until( volume_test_players(covenant_forerun_coop), 1);
	wake(f_dialog_m60_covenant_forerun_coop);
	
end

script dormant covenant_forerun_coop_2()

	wake(f_dialog_m60_covenant_forerun_coop_02);

end

script dormant cortana_cave_cleared()
	// Cortana VO for when the LZ is cleared and the Pelican can come in
		wake(f_dialog_m60_pelican_approach_lasky);
		
	
end



script dormant pelican_chief_welcome()
	// Fires as you board the Pelican
	dprint("d");
	 wake(f_dialog_m60_pelican_chief_welcome);
		
end	


script dormant m60_on_pelican_vo()
 dprint("d");
	//wake(f_dialog_m60_rally_pelican);
	
end

script dormant rally_chief_onme()
	// fires when Chief is dropped off by Pelican
	sleep_until (volume_test_players(chief_pelican_touch_down), 1);
			wake(f_dialog_m60_rally_chief_onme);
  
  wake(m60_scorpionenter);
/*	wake(marine_rally_chatter_01);
	wake(marine_rally_chatter_02);
	wake(marine_rally_chatter_03);
	wake(marine_rally_chatter_04);*/

end

script dormant m60_scorpionenter()
		sleep_until (player_in_vehicle (ve_rally_scorpion), 1);
		
			wake(f_dialog_m60_scorpionenter);


end




script static void m60_infinity_run_01()
			sleep_until (volume_test_players(rally_chief_onme), 1);
		wake(f_dialog_m60_infinityrun);
		wake(f_blip_rally_breadcrumbs);

end

script static void m60_infinity_run_02()
			sleep_until (volume_test_players(m60_infinity_run_02), 1);
			wake(f_dialog_m60_infinityrun_02);
end


script static void m60_infinity_ext_cleared()
dprint("d");
		//wake(f_dialog_m60_infinity_ext_cleared);
end


script static void m60_infinity_run_03()
		sleep_s(7);
		wake(f_dialog_m60_infinity_ext_02);

end





script dormant lasky_clear_berth()
	//fires as you approach berth
	sleep_until (volume_test_players(lasky_clear_berth), 1);
	

	//  wake(f_dialog_m60_infinity_ext);
		
end



script static void inifinityberth_tocauseway()
  //fire when berth, inside and out, is clear
     wake(f_dialog_m60_infinityberth_tocauseway);

     kill_script(m60_objective_4_nudge);
     sleep_forever(m60_objective_4_nudge);
  		b_objective_4_complete = TRUE;
      
end




script static void inifinityberth_mechdata()
     sleep_until( volume_test_players(m60infinity_berth_030_pip_mechdata), 1);
     sleep_s(30); 
     if b_mantis_engaged == FALSE then
		 	thread(infinitybirth_VO_trigger());
     end
end

script static void infinitybirth_VO_trigger()
		wake(f_dialog_m60_inifinityberth_mechdata);

end

script dormant m60_infinityberth_enter_mantis()
     //Fires if you push the mech button
     	sleep_until (object_valid (mech_switch), 1);
			sleep_until (device_get_position(mech_switch) > 0.0, 1 );
		wake(f_dialog_m60_inifinityberth_system_mech);
		thread(m60_objective_5_nudge()); 
		b_mantis_engaged = TRUE;
		sleep_forever(inifinityberth_mechdata);
		kill_script(inifinityberth_mechdata);
		
				object_create(infinity_secondary_01);
		object_create(infinity_secondary_04);
		object_create(infinity_secondary_05);
     
end



script dormant m60_try_to_leave_mechbay()
     sleep_until( volume_test_players(m60_try_to_leave_mechbay), 1);
     
			wake(f_dialog_m60_inifinityberth_try_to_leave);

end




script dormant trail_xray_pickup()
//fires when the player picks up the x-ray ability for the first time.
	
		dprint("d");

end


script dormant trail_xray_use()
//fires when the player uses the xray ability for the first time.
		dprint("d");
	//thread (story_blurb_add("vo", "CORTANA: Comments on how the device works and what Chief should do next."));
			
end


script static void inifinitycauseway_broadswordassault()
   // fires upon entering the Mantis
		kill_script(m60_try_to_leave_mechbay);
		wake(f_dialog_m60_inifinityberth_enter_mech);
		
     
end

global real R_berth_narrative_conversation_trigger_see_dist = 	7.5;
global real R_berth_narrative_conversation_trigger_near_dist = 5.0;

script static boolean f_berth_narrative_distance_trigger( object obj_character, real r_distance_see, real r_distance_near )
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
	( not ai_allegiance_broken(player, human) );
end

script  static void m60_berth_exit_grunts(ai ai_character)
static boolean b_triggered = FALSE;

	// wait for the character to be valid
	sleep_until( ai_living_count(ai_character) > 0, 1 );
 
	// wait for player to be w/i distance
	sleep_until( b_triggered or (ai_living_count(ai_character) <= 0) or f_berth_narrative_distance_trigger(ai_get_object(ai_character), R_berth_narrative_conversation_trigger_see_dist, R_berth_narrative_conversation_trigger_near_dist), 1 );

	// trigger the dialog
	if ( (not b_triggered) and (ai_living_count(ai_character) > 0) and (not ai_allegiance_broken(player, human)) ) then
		b_triggered = TRUE;
		wake(f_dialog_m60_berth_exit_grunts);
	end

end
     

script  static void m60_berth_exit_grunts_02 (ai ai_character)
static boolean b_triggered = FALSE;

	// wait for the character to be valid
	sleep_until( ai_living_count(ai_character) > 0, 1 );
 
	// wait for player to be w/i distance
	sleep_until( b_triggered or (ai_living_count(ai_character) <= 0) or f_berth_narrative_distance_trigger(ai_get_object(ai_character), R_berth_narrative_conversation_trigger_see_dist, R_berth_narrative_conversation_trigger_near_dist), 1 );

	// trigger the dialog
	if ( (not b_triggered) and (ai_living_count(ai_character) > 0) and (not ai_allegiance_broken(player, human)) ) then
		b_triggered = TRUE;
		wake(f_dialog_m60_berth_exit_grunts_02);
	end

end
     

script static void inifinitycauseway_broadswordassault_end()
	//this should fire at the beginning of the Broadsword vignette
     
	dprint("d");
		
  
end

script dormant m60_infinitycauseway_stomp()
	  sleep_until( volume_test_players(m60_infinitycauseway_stomp), 1);
     
	//wake(f_dialog_m60_infinitycauseway_stomp);
		
  
end



script static void inifinitycauseway_defendthedeck()
	//this should fire at beginning of elevator to deck
    kill_script(m60_objective_5_nudge);
		sleep_forever(m60_objective_5_nudge); 
	  wake(f_dialog_m60_infinity_elevator);

end


script static void inifinityouterdeck_gun1()

dprint("");
end

script static void inifinityouterdeck_gun2()
dprint("");

end

script dormant infinityouterdeck_start()
	// fires upon reaching the outer deck
	dprint("d");
	
end


script dormant infinityouterdeck_start_alt()
	// fires upon reaching the outer deck
			sleep_until( volume_test_players(infinityouterdeck_start), 1);
		wake(f_dialog_m60_jammer_01);
		kill_script(m60_objective_5_nudge);
		sleep_forever(m60_objective_5_nudge);
  		b_objective_5_complete = TRUE;
  thread(m60_objective_6_nudge()); 


	
end

script dormant m60_infinityouterdeck_first_jammer()
	// fires upon taking out first jammer
			
		wake(f_dialog_m60_jammer_02);


end


script dormant m60_infinityouterdeck_second_jammer()
	// fires upon taking out second jammer
			

		wake(f_dialog_m60_jammer_03);
		
end


script dormant m60_infinityouterdeck_third_jammer()
	// fires upon taking out third jammer
			
	wake(f_dialog_m60_jammer_04);
end

script dormant m60_infinityouterdeck_guns_begin()
	// fires when the guns first begin to warm
			
			wake(f_dialog_m60_delrio_warning);
end



script dormant m60_infinityouterdeck_first_gun_online()
	// fires when first gun online
			
			wake(f_dialog_m60_infinityouterdeck_gunsonline);

end
script dormant m60_infinityouterdeck_second_gun_online()
	// fires when second gun online
			
			
		wake(f_dialog_m60_inifinitycauseway_second_gun);

end




script dormant m60_infinityouterdeck_firing_controls()
	// fires before final action of player to initiate controls

			wake(f_dialog_m60_infinityouterdeck_mac_ready);

end




script static void inifinityouterdeck_gun3()
  // fire when 3rd gun online
     dprint("d");
	wake(f_dialog_m60_infinityouterdeck_success);
		kill_script(f_dialog_m60_nudge_6);
  		b_objective_6_complete = TRUE;

end

script dormant m60_waypoint_terminal()
	//fires when you click the terminal in vale
	f_narrative_domain_terminal_setup( 2, domain_terminal, domain_terminal_button );
//	sleep_until (object_valid (terminal_button), 1);
//	sleep_until (device_get_position(terminal_button) > 0.0, 1 );
//	device_set_power (terminal_button, 0.0);
//		if (IsNarrativeFlagSetOnAnyPlayer(0) == FALSE) and (IsNarrativeFlagSetOnAnyPlayer(1) == FALSE) and (IsNarrativeFlagSetOnAnyPlayer(2) == FALSE) and (IsNarrativeFlagSetOnAnyPlayer(3) == FALSE) and (IsNarrativeFlagSetOnAnyPlayer(4) == FALSE) and (IsNarrativeFlagSetOnAnyPlayer(5) == FALSE) and (IsNarrativeFlagSetOnAnyPlayer(6) == FALSE)then
//			wake(f_dialog_global_my_first_domain); 
//		end
//		SetNarrativeFlagWithFanfareMessageForAllPlayers( 2, TRUE );
end

// =================================================================================================
// =================================================================================================
// NUDGES
// =================================================================================================
// =================================================================================================


script static void m60_objective_1_nudge()
			dprint("Nudge fired");
			sleep_s(900);
			if b_objective_1_complete == FALSE then
						thread(f_dialog_m60_nudge_1());
			end
				if b_objective_1_complete == FALSE then
					thread( m60_objective_1_nudge());
			end
end

script static void m60_objective_2_nudge()
			dprint("Nudge fired");
			sleep_s(300);
			if b_objective_2_complete == FALSE then
						thread(f_dialog_m60_nudge_2());
			end
				if b_objective_2_complete == FALSE then
					thread( m60_objective_2_nudge());
			end
end



script static void m60_objective_4_nudge()
			dprint("Nudge fired");
			sleep_s(300);
			if b_objective_4_complete == FALSE then
						thread(f_dialog_m60_nudge_4());
			end
				if b_objective_4_complete == FALSE then
					thread( m60_objective_4_nudge());
			end
end



script static void m60_objective_5_nudge()
			dprint("Nudge fired");
			sleep_s(120);
			if b_objective_5_complete == FALSE then
						thread(f_dialog_m60_nudge_5());
			end
				if b_objective_5_complete == FALSE then
					thread( m60_objective_5_nudge());
			end
end


script static void m60_objective_6_nudge()
			dprint("Nudge fired");
			sleep_s(600);
			if b_objective_6_complete == FALSE then
						thread(f_dialog_m60_nudge_6());
			end
				if b_objective_6_complete == FALSE then
					thread( m60_objective_6_nudge());
			end
end



// =================================================================================================
// =================================================================================================
// SOUND STORY	
// =================================================================================================
// =================================================================================================



script dormant swamp_marine_chatter_01()
	//Plays a random swamp marine chatter
	sleep_until (volume_test_players(swamp_marine_chatter_01), 1);
	

	  wake(f_dialog_m60_swamp_marine_1);
		
end

script dormant swamp_marine_chatter_02()
	//Plays a random swamp marine chatter
	sleep_until (volume_test_players(swamp_marine_chatter_02), 1);
	

	  wake(f_dialog_m60_swamp_marine_2);
		
end


script dormant swamp_marine_chatter_03()
	//Plays a random swamp marine chatter
	sleep_until (volume_test_players(swamp_marine_chatter_03), 1);
	

	  wake(f_dialog_m60_swamp_marine_3);
		
end


script dormant swamp_marine_chatter_04()
	//Plays a random swamp marine chatter
	sleep_until (volume_test_players(swamp_marine_chatter_04), 1);
	

	  wake(f_dialog_m60_swamp_marine_4);
		
end


script dormant swamp_marine_chatter_05()
	//Plays a random swamp marine chatter
	sleep_until (volume_test_players(swamp_marine_chatter_05), 1);
	

	 wake(f_dialog_m60_swamp_marine_5);
		
end

/*

script dormant marine_rally_chatter_01()
	//Plays a random swamp marine chatter
	sleep_until (volume_test_players(marine_rally_chatter_01), 1);

			thread(f_dialog_m60_rally_point_01());

		
end

script dormant marine_rally_chatter_02()
	//Plays a random swamp marine chatter
	sleep_until (volume_test_players(marine_rally_chatter_02), 1);
	

	 thread(f_dialog_m60_rally_point_02());
		
end


script dormant marine_rally_chatter_03()
	//Plays a random swamp marine chatter
	sleep_until (volume_test_players(marine_rally_chatter_03), 1);
	

	 thread(f_dialog_m60_rally_point_03());
		
end


script dormant marine_rally_chatter_04()
	//Plays a random swamp marine chatter
	sleep_until (volume_test_players(marine_rally_chatter_04), 1);
	

	 thread(f_dialog_m60_rally_point_04());
		
end*/



script dormant infinity_ship_pa_01()
	
	sleep_until (volume_test_players(infinity_ship_pa_01), 1);
	

		wake(f_dialog_m60_infinity_ship_pa_01);
		
end



script dormant infinity_ship_pa_02()
	
	sleep_until (volume_test_players(infinity_ship_pa_02), 1);
	

	 wake(f_dialog_m60_infinity_ship_pa_02);
		
end


script dormant infinity_ship_pa_03()
	
	sleep_until (volume_test_players(infinity_ship_pa_04), 1);
	

	 wake(f_dialog_m60_infinity_ship_pa_03);
		
end


script dormant infinity_ship_pa_04()
	
	sleep_until (volume_test_players(infinity_ship_pa_03), 1);
	

	 wake(f_dialog_m60_infinity_ship_pa_04);
		
end

script dormant infinity_ship_pa_05()
	
	sleep_until (volume_test_players(infinity_ship_pa_05), 1);
	

	 wake(f_dialog_m60_infinity_ship_pa_05);
		
end


script dormant infinity_ship_pa_06()
	//Plays a random swamp marine chatter
	sleep_until (volume_test_players(infinity_ship_pa_06), 1);
	

	 wake(f_dialog_m60_infinity_ship_pa_06);
		
end


script dormant infinity_ship_pa_07()
	
	sleep_until (volume_test_players(infinity_ship_pa_07), 1);
	

		wake(f_dialog_m60_infinity_ship_pa_07);
		
end

script static void m60_infinity_secondary_01()

	sleep_until (object_valid (infinity_secondary_01), 1);	
	sleep_until (device_get_position(infinity_secondary_01) > 0.0, 1 );
	object_destroy( infinity_secondary_01 );
	
	
		thread(f_dialog_m60_infinity_secondary_01());
		
end


script static void m60_infinity_secondary_02()

	sleep_until (object_valid (infinity_secondary_02), 1);	
	sleep_until (device_get_position(infinity_secondary_02) > 0.0, 1 );
	object_destroy( infinity_secondary_02 );
	
	
	
		thread(f_dialog_m60_infinity_secondary_02());
		
end

script static void m60_infinity_secondary_03()

	sleep_until (object_valid (infinity_secondary_03), 1);	
	sleep_until (device_get_position(infinity_secondary_03) > 0.0, 1 );
	object_destroy( infinity_secondary_03 );
	
	
		thread(f_dialog_m60_infinity_secondary_03());
		
end

script static void m60_infinity_secondary_04()

	sleep_until (object_valid (infinity_secondary_04), 1);	
	sleep_until (device_get_position(infinity_secondary_04) > 0.0, 1 );
	object_destroy( infinity_secondary_04 );
	
	
	
		thread(f_dialog_m60_infinity_secondary_04());
		
end

script static void m60_infinity_secondary_05()

	sleep_until (object_valid (infinity_secondary_05), 1);	
	sleep_until (device_get_position(infinity_secondary_05) > 0.0, 1 );
	object_destroy( infinity_secondary_05 );
	
	
	
		thread(f_dialog_m60_infinity_secondary_05());
		
end


script static void m60_infinity_secondary_06()

	sleep_until (object_valid (infinity_secondary_06), 1);	
	sleep_until (device_get_position(infinity_secondary_06) > 0.0, 1 );
	object_destroy( infinity_secondary_06 );
	
	
		thread(f_dialog_m60_infinity_secondary_06());
		
end

script static void m60_infinity_secondary_07()

	sleep_until (object_valid (infinity_secondary_07), 1);	
	sleep_until (device_get_position(infinity_secondary_07) > 0.0, 1 );
	object_destroy( infinity_secondary_07 );
	
	
		thread(f_dialog_m60_infinity_secondary_07());
		
end


// =================================================================================================
// =================================================================================================
// Armor Abilities
// =================================================================================================
// =================================================================================================


script static void f_waypoint_equipment_unlock()

		wake(f_waypoint_global_equipment_unlock);
end

// --- End m60_narrative.hsc ---

// --- Begin m60_rescue_audio.hsc ---
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343
//
// Mission: 					m60_rescue_audio
//										
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343

// =================================================================================================
// =================================================================================================
// *** GLOBALS ***
// =================================================================================================
// =================================================================================================

global sound phantom_camera_shake = 'sound\environments\solo\m060\amb_m60_final\amb_m60_screen_shakes\m60_phantom_camera_shake';

// =================================================================================================
// =================================================================================================
// *** START-UP ***
// =================================================================================================
// =================================================================================================

script startup m60_rescue_audio()

	if b_debug then 
		print ("::: M60 - AUDIO :::");
	end
	
	thread(test_audio());
	
	wake(f_music);

end

script static void test_audio()
	print ("::: test FX :::");
	//effect_new( cinematics\cin_verticalslice\fx\rig_spark_pipe.effect, test_fx );
end

; =================================================================================================
; *** MUSIC ***
; =================================================================================================

; =================================================================================================
; ENCOUNTERS - MUSIC
; =================================================================================================
script static void f_mus_m60_e01_begin()
	dprint("f_mus_m60_e01");
	music_set_state('Play_mus_m60_e01_trails_1');
end

script static void f_mus_m60_e02_begin()
	dprint("f_mus_m60_e02");
	music_set_state('Play_mus_m60_e03_trails_2');
end

script static void f_mus_m60_e03_begin()
	dprint("f_mus_m60_e03");
	music_set_state('Play_mus_m60_e05_trails_3');
end

script static void f_mus_m60_e04_begin()
	dprint("f_mus_m60_e04");
	music_set_state('Play_mus_m60_e07_boulders');
end

script static void f_mus_m60_e05_begin()
	dprint("f_mus_m60_e05");
	music_set_state('Play_mus_m60_e09_cave');
end

script static void f_mus_m60_e06_begin()
	dprint("f_mus_m60_e06");
	music_set_state('Play_mus_m60_e11_rally');
end

script static void f_mus_m60_e07_begin()
	dprint("f_mus_m60_e07");
	music_set_state('Play_mus_m60_e13_infinity_mech_run');
end

script static void f_mus_m60_e08_begin()
	dprint("f_mus_m60_e08");
	music_set_state('Play_mus_m60_e15_outer_deck');
end

script static void f_mus_m60_e09_begin()
	dprint("f_mus_m60_e09");
end

script static void f_mus_m60_e10_begin()
	dprint("f_mus_m60_e10");
end

script static void f_mus_m60_e11_begin()
	dprint("f_mus_m60_e11");
end

script static void f_mus_m60_e12_begin()
	dprint("f_mus_m60_e12");
end

script static void f_mus_m60_e13_begin()
	dprint("f_mus_m60_e13");
end

script static void f_mus_m60_e14_begin()
	dprint("f_mus_m60_e14");
end

script static void f_mus_m60_e15_begin()
	dprint("f_mus_m60_e15");
end

script static void f_mus_m60_e16_begin()
	dprint("f_mus_m60_e16");
end

script static void f_mus_m60_e01_finish()
	dprint("f_mus_m60_e01");
	music_set_state('Play_mus_m60_e02_trails_1_end');
end

script static void f_mus_m60_e02_finish()
	dprint("f_mus_m60_e02");
	music_set_state('Play_mus_m60_e04_trails_2_end');
end

script static void f_mus_m60_e03_finish()
	dprint("f_mus_m60_e03");
	music_set_state('Play_mus_m60_e06_trails_3_end');
end

script static void f_mus_m60_e04_finish()
	dprint("f_mus_m60_e04");
	music_set_state('Play_mus_m60_e08_boulders_end');
end

script static void f_mus_m60_e05_finish()
	dprint("f_mus_m60_e05");
	music_set_state('Play_mus_m60_e10_cave_end');
end

script static void f_mus_m60_e06_finish()
	dprint("f_mus_m60_e06");
	music_set_state('Play_mus_m60_e12_rally_end');
end

script static void f_mus_m60_e07_finish()
	dprint("f_mus_m60_e07");
	music_set_state('Play_mus_m60_e14_infinity_mech_run_end');
end

script static void f_mus_m60_e08_finish()
	dprint("f_mus_m60_e08");
	music_set_state('Play_mus_m60_e16_outer_deck_end');
end

script static void f_mus_m60_e09_finish()
	dprint("f_mus_m60_e09");
end

script static void f_mus_m60_e10_finish()
	dprint("f_mus_m60_e10");
end

script static void f_mus_m60_e11_finish()
	dprint("f_mus_m60_e11");
end

script static void f_mus_m60_e12_finish()
	dprint("f_mus_m60_e12");
end

script static void f_mus_m60_e13_finish()
	dprint("f_mus_m60_e13");
end

script static void f_mus_m60_e14_finish()
	dprint("f_mus_m60_e14");
end

script static void f_mus_m60_e15_finish()
	dprint("f_mus_m60_e15");
end

script static void f_mus_m60_e16_finish()
	dprint("f_mus_m60_e16");
end

script static void f_music_m60_tweak01()
	dprint("f_music_m60_tweak01");
	music_set_state('Play_mus_m60_t01_tweak');
end

script static void f_music_m60_tweak02()
	dprint("f_music_m60_tweak02");
	music_set_state('Play_mus_m60_t02_tweak');
end

script static void f_music_m60_tweak03()
	dprint("f_music_m60_tweak03");
	music_set_state('Play_mus_m60_t03_tweak');
end

script static void f_music_m60_tweak04()
	dprint("f_music_m60_tweak04");
	music_set_state('Play_mus_m60_t04_tweak');
end

script static void f_music_m60_tweak05()
	dprint("f_music_m60_tweak05");
	music_set_state('Play_mus_m60_t05_tweak');
end

script static void f_music_m60_tweak06()
	dprint("f_music_m60_tweak06");
	music_set_state('Play_mus_m60_t06_tweak');
end

script static void f_music_m60_tweak07()
	dprint("f_music_m60_tweak07");
	music_set_state('Play_mus_m60_t07_tweak');
end

script static void f_music_m60_tweak08()
	dprint("f_music_m60_tweak08");
	music_set_state('Play_mus_m60_t08_tweak');
end

script static void f_music_m60_tweak09()
	dprint("f_music_m60_tweak09");
	music_set_state('Play_mus_m60_t09_tweak');
end

script static void f_music_m60_tweak10()
	dprint("f_music_m60_tweak10");
	music_set_state('Play_mus_m60_t10_tweak');
end

//====================================================
// MUSIC HOOKS - ZONE SETS
//====================================================
// this will always be 0 unless an insertion point is used
// in that case, it is used to skip past the trigger volumes that precede the selected insertion point
global short b_m60_music_progression = 0;

script static void load_music_for_zone_set()

	// wait for first zoneset after the cinematic to load
	sleep_until(b_m60_music_progression > 0 or current_zone_set_fully_active() == zs_peak, 1);
	
	music_start('Play_mus_m60');

	sleep_until(b_m60_music_progression > 10 or volume_test_players (tv_music_r01_peak), 1);
	if b_m60_music_progression <= 10 then		
		sound_set_state('Set_State_M60_peak');
		music_set_state('Play_mus_m60_r01_peak');	
	end
	
	sleep_until(b_m60_music_progression > 20 or volume_test_players (tv_music_r18_trail_a), 1);
	if b_m60_music_progression <= 20 then			
		sound_set_state('Set_State_M60_trail_a');
		music_set_state('Play_mus_m60_r18_trail_a');
	end
	
	sleep_until(b_m60_music_progression > 30 or volume_test_players (tv_music_r02_trail), 1);
	if b_m60_music_progression <= 30 then			
		sound_set_state('Set_State_M60_trail');
		music_set_state('Play_mus_m60_r02_trail');
	end
	
	sleep_until(b_m60_music_progression > 40 or volume_test_players (tv_music_r20_trail_c), 1);
	if b_m60_music_progression <= 40 then			
		sound_set_state('Set_State_M60_trail_c');
		music_set_state('Play_mus_m60_r20_trail_c');
	end
	
	// RALLY POINT BRAVO
	sleep_until(b_m60_music_progression > 50 or volume_test_players (tv_music_r03_trail_boulders), 1);
	if b_m60_music_progression <= 50 then			
		music_set_state('Play_mus_m60_r03_trail_boulders');
		sound_set_state('Set_State_M60_trail_boulders');
	end
	
	sleep_until(b_m60_music_progression > 60 or volume_test_players (tv_music_r04_boulders), 1);
	if b_m60_music_progression <= 60 then	
		music_set_state('Play_mus_m60_r04_boulders');
		sound_set_state('Set_State_M60_boulders');
	end
	
	// tv_music_m60_cave_in is already at a good place
	// sleep_until(volume_test_players (tv_music_r05_boulders_caves), 1);
	//	music_set_state('Play_mus_m60_r05_boulders_caves');

	sleep_until(b_m60_music_progression > 70 or volume_test_players (tv_music_r06_caves), 1);
	if b_m60_music_progression <= 70 then		
		music_set_state('Play_mus_m60_r06_caves');
		sound_set_state('Set_State_M60_caves');
	end
	
	// RALLY POINT CHARLIE
	sleep_until(b_m60_music_progression > 80 or volume_test_players (tv_music_r07_caves_rally), 1);
	if b_m60_music_progression <= 80 then			
		music_set_state('Play_mus_m60_r07_caves_rally');
		sound_set_state('Set_State_M60_caves_rally');
	end
	
	sleep_until(b_m60_music_progression > 90 or volume_test_players (tv_music_r08_rally_point), 1);
	if b_m60_music_progression <= 90 then			
		music_set_state('Play_mus_m60_r08_rally_point');
		sound_set_state('Set_State_M60_rally_point');
	end
	
	sleep_until(b_m60_music_progression > 100 or volume_test_players (tv_music_r09_rally_point_infinity_berth), 1);
	if b_m60_music_progression <= 100 then			
		music_set_state('Play_mus_m60_r09_rally_point_infinity_berth');
		sound_set_state('Set_State_M60_to_infinity_berth');
	end
	
	sleep_until(b_m60_music_progression > 110 or volume_test_players (tv_music_r10_infinity_berth), 1);
	if b_m60_music_progression <= 110 then			
		music_set_state('Play_mus_m60_r10_infinity_berth');
		sound_set_state('Set_State_M60_infinity_berth');
	end
	
	sleep_until(b_m60_music_progression > 120 or volume_test_players (tv_music_r11_infinity_berth_infinity_causeway), 1);
	if b_m60_music_progression <= 120 then			
		music_set_state('Play_mus_m60_r11_infinity_berth_infinity_causeway');
		sound_set_state('Set_State_M60_to_infinity_causeway');
	end
	
	sleep_until(b_m60_music_progression > 130 or volume_test_players (tv_music_r12_infinity_causeway), 1);
	if b_m60_music_progression <= 130 then			
		music_set_state('Play_mus_m60_r12_infinity_causeway');
		sound_set_state('Set_State_M60_infinity_causeway');
	end
		
	sleep_until(b_m60_music_progression > 140 or volume_test_players (tv_music_r13_infinity_causeway_facilities_elevator), 1);
	if b_m60_music_progression <= 140 then			
		music_set_state('Play_mus_m60_r13_infinity_causeway_facilities_elevator');
		sound_set_state('Set_State_M60_to_facilities_elevator');
	end
	
	sleep_until(b_m60_music_progression > 150 or volume_test_players (tv_music_r14_facilities_elevator), 1);
	if b_m60_music_progression <= 150 then	
		music_set_state('Play_mus_m60_r14_facilities_elevator');
		sound_set_state('Set_State_M60_facilities_elevator');
	end
	
	sleep_until(b_m60_music_progression > 160 or volume_test_players (tv_music_r15_facilities_elevator_infinity_outer_deck), 1);
	if b_m60_music_progression <= 160 then					
		music_set_state('Play_mus_m60_r15_facilities_elevator_infinity_outer_deck');
		sound_set_state('Set_State_M60_infinity_outer_deck');
	end
	
	// wait for end cinematic to start
	sleep_until(current_zone_set_fully_active() == zs_cin_m065, 1);
		music_stop('Stop_mus_m60');
end

script dormant f_music()
	if b_debug then
		print ("::: M60 - f_music :::");
	end
	
	sleep_until (current_zone_set_fully_active() == zs_peak, 1);
	// Wwise isn't ready when the zoneset is, wait a second
	// Terry will fix this bug soon
	sleep(30 * 1);
	thread (load_music_for_zone_set());
	
	wake (f_m60_music_first_structure);
end

script dormant f_m60_music_first_structure()
	sleep_until (volume_test_players (tv_music_m60_structure), 1);
	thread (f_m60_music_nothing()); // end swamp01 music
	
	wake (f_m60_music_cave_entrance);
end

script dormant f_m60_music_cave_entrance()
	sleep_until (volume_test_players (tv_music_m60_cave_in), 1);
	thread (f_m60_music_tunnel());
	
	wake (f_m60_music_cave_exit);
end

script dormant f_m60_music_cave_exit()
	sleep_until (volume_test_players (tv_music_m60_cave_out), 1);
	thread (f_m60_music_nothing()); // end tunnel music
end

script dormant f_m60_music_tank_start()
	sleep_until (player_in_vehicle (ve_rally_scorpion), 1);
	thread (f_m60_music_tank());
	// tank music fades out in inf_berth
	
	wake (f_m60_music_mechsuit);
end

script dormant f_m60_music_mechsuit()
	sleep_until (device_get_position (mech_switch) != 0);
	
	thread (f_m60_music_mech());
	// mech music fades out in teleport_elevator
end

script static void f_m60_music_start()
	sound_looping_start("sound\environments\solo\m060\music\m_m60_music", NONE, 1.0);
end

script static void f_m60_music_stop()
	sound_looping_stop("sound\environments\solo\m060\music\m_m60_music");
end

script static void f_m60_music_nothing()
	dprint("m60_music - nothing");
	sound_impulse_start("sound\environments\solo\m060\music\events\m_m60_music_pf00_nothing", NONE, 1.0);
end

script static void f_m60_music_beginning()
	dprint("m60_music - beginning");
	sound_impulse_start("sound\environments\solo\m060\music\events\m_m60_music_pf01_beginning", NONE, 1.0);
end

script static void f_m60_music_swamp01()
	dprint("m60_music - swamp01");
	sound_impulse_start("sound\environments\solo\m060\music\events\m_m60_music_pf02_swamp01", NONE, 1.0);
end

script static void f_m60_music_swamp02()
	dprint("m60_music - swamp02");
	sound_impulse_start("sound\environments\solo\m060\music\events\m_m60_music_pf04_swamp02", NONE, 1.0);
end

script static void f_m60_music_swamp03()
	dprint("m60_music - swamp03");
	sound_impulse_start("sound\environments\solo\m060\music\events\m_m60_music_pf05_swamp03", NONE, 1.0);
end

script static void f_m60_music_tunnel()
	dprint("m60_music - tunnel");
	sound_impulse_start("sound\environments\solo\m060\music\events\m_m60_music_pf06_tunnel", NONE, 1.0);
end

script static void f_m60_music_swamp04()
	dprint("m60_music - swamp04");
	sound_impulse_start("sound\environments\solo\m060\music\events\m_m60_music_pf07_swamp04", NONE, 1.0);
end

script static void f_m60_music_tank()
	dprint("m60_music - tank");
	sound_impulse_start("sound\environments\solo\m060\music\events\m_m60_music_pf08_tank", NONE, 1.0);
end

script static void f_m60_music_mech()
	dprint("m60_music - mech");
	sound_impulse_start("sound\environments\solo\m060\music\events\m_m60_music_pf09_mech", NONE, 1.0);
end

// see deckdoor() in m60_rescue_mission.hsc
// ends in mac_fire() in m60_rescue_mission.hsc
script static void f_m60_music_deck()
	dprint("m60_music - deck");
	sound_impulse_start("sound\environments\solo\m060\music\events\m_m60_music_pf10_deck", NONE, 1.0);
end

; =================================================================================================
; *** AMBIENCES ***
; =================================================================================================
script static void f_trigger_ambience(trigger_volume tv, looping_sound amb_tag, string debug_text)
	sleep_until(volume_test_players(tv), 1);
	dprint(debug_text);
	sound_looping_start(amb_tag, NONE, 1.0);
	sleep_until(volume_test_players(tv) == 0, 1);
	sound_looping_stop(amb_tag);
end

// tv_amb_m60_peak																		amb_m60_area_1_01
// tv_amb_m60_peak_bridge 														amb_m60_area_2
// tv_amb_m60_peak_a_ship 														3
// tv_amb_m60_trail_a																	4
// tv_amb_m60_trail_a_2																5_a
// tv_amb_m60_trail_b																	5_b

// tv_amb_m60_trail_b_cliff 													6
// tv_amb_m60_trail_c_bog															7
// tv_amb_m60_trail_c_hills														8
// tv_amb_m60_trail_c_rocky 													9
// tv_amb_m60_trail_c_stairs 			 										10
// tv_amb_m60_trail_c_stairs_ledge 										11
// tv_amb_m60_trail_c_fort														12
// tv_amb_m60_trail_c_ship														13
// tv_amb_m60_trail_c_treefort_entrance 							14
// tv_amb_m60_trail_c_treefort												15
// tv_amb_m60_trail_c_treefort_exit										16
// tv_amb_m60_boulders_hideaway												17
// tv_amb_m60_boulders_entrance												18
// tv_amb_m60_caves_entrance													19
// tv_amb_m60_caves																		20
// tv_amb_m60_tunnel_to_bog														21_a
// tv_amb_m60_stairs_to_bog														21_b
// tv_amb_m60_bog_path																22
// tv_amb_m60_bog_fort																23
// tv_amb_m60_bog_1																		24
// tv_amb_m60_bog_2																		25
// tv_amb_m60_rally_point_1														26
// tv_amb_m60_rally_point_2														27
// tv_amb_m60_rally_point_3														28
// tv_amb_m60_rally_point_4														29
// tv_amb_m60_infinity_vehicle_bay										30
// tv_amb_m60_infinity_entrance_middle_room						31
// tv_amb_m60_infinity_hanger													32
// tv_amb_m60_infinity_air_lock												33
// tv_amb_m60_infinity_causeway												34
// tv_amb_m60_infinity_causeway_hangar								35
// tv_amb_m60_infinity_causeway_hallway_to_elevator		36
// tv_amb_m60_infinity_elevator												37
// tv_amb_m60_infinity_room_to_outer_deck							38
// tv_amb_m60_infinity_outer_deck_upper								39
// tv_amb_m60_infinity_outer_deck_lower 							40

script continuous f_amb_m60_peak()
  f_trigger_ambience(tv_amb_m60_peak, 
  	"sound\environments\solo\m060\ambience\amb_m60_area_1_01", 
  	"tv_amb_m60_peak - amb_m60_area_1_01");
end

script continuous f_amb_m60_peak_bridge()
  f_trigger_ambience(tv_amb_m60_peak_bridge, 
  	"sound\environments\solo\m060\ambience\amb_m60_area_2", 
  	"tv_amb_m60_peak - amb_m60_area_2");
end

script continuous f_amb_m60_peak_a_ship()
  f_trigger_ambience(tv_amb_m60_peak_a_ship, 
  	"sound\environments\solo\m060\ambience\amb_m60_area_3", 
  	"tv_amb_m60_peak_a_ship - amb_m60_area_3");
end

script continuous f_amb_m60_trail_a()
  f_trigger_ambience(tv_amb_m60_trail_a, 
  	"sound\environments\solo\m060\ambience\amb_m60_area_4", 
  	"tv_amb_m60_trail_a - amb_m60_area_4");
end

script continuous f_amb_m60_trail_a_2()
  f_trigger_ambience(tv_amb_m60_trail_a_2, 
  	"sound\environments\solo\m060\ambience\amb_m60_area_5a", 
  	"tv_amb_m60_trail_a_2 - amb_m60_area_5a");
end

script continuous f_amb_m60_trail_b()
  f_trigger_ambience(tv_amb_m60_trail_b, 
  	"sound\environments\solo\m060\ambience\amb_m60_area_5b", 
  	"tv_amb_m60_trail_b - amb_m60_area_5b");
end

script continuous f_amb_m60_trail_b_cliff()
  f_trigger_ambience(tv_amb_m60_trail_b_cliff, 
  	"sound\environments\solo\m060\ambience\amb_m60_area_6", 
  	"tv_amb_m60_trail_b - amb_m60_area_6");
end

script continuous f_amb_m60_trail_c_bog()
  f_trigger_ambience(tv_amb_m60_trail_c_bog, 
  	"sound\environments\solo\m060\ambience\amb_m60_area_7", 
  	"tv_amb_m60_trail_c - amb_m60_area_7");
end

script continuous f_amb_m60_trail_c_hills()
  f_trigger_ambience(tv_amb_m60_trail_c_hills, 
  	"sound\environments\solo\m060\ambience\amb_m60_area_8", 
  	"tv_amb_m60_trail_c_ship - amb_m60_area_8");
end

script continuous f_amb_m60_trail_c_rocky()
  f_trigger_ambience(tv_amb_m60_trail_c_rocky, 
  	"sound\environments\solo\m060\ambience\amb_m60_area_9", 
  	"tv_amb_m60_trail_c_ship - amb_m60_area_9");
end

script continuous f_amb_m60_trail_c_stairs()
  f_trigger_ambience(tv_amb_m60_trail_c_stairs, 
  	"sound\environments\solo\m060\ambience\amb_m60_area_10", 
  	"tv_amb_m60_trail_c_stairs - amb_m60_area_10");
end

script continuous f_amb_m60_trail_c_stairs_ledge()
  f_trigger_ambience(tv_amb_m60_trail_c_stairs_ledge, 
  	"sound\environments\solo\m060\ambience\amb_m60_area_11", 
  	"tv_amb_m60_trail_c_stairs_ledge - amb_m60_area_11");
end

script continuous f_amb_m60_trail_c_fort()
  f_trigger_ambience(tv_amb_m60_trail_c_fort, 
  	"sound\environments\solo\m060\ambience\amb_m60_area_12", 
  	"tv_amb_m60_trail_c_fort - amb_m60_area_12");
end

script continuous f_amb_m60_trail_c_ship()
  f_trigger_ambience(tv_amb_m60_trail_c_fort, 
  	"sound\environments\solo\m060\ambience\amb_m60_area_13", 
  	"tv_amb_m60_trail_c_ship - amb_m60_area_13");
end

script continuous f_amb_m60_trail_c_treefort_entrance()
  f_trigger_ambience(tv_amb_m60_trail_c_treefort_entrance, 
  	"sound\environments\solo\m060\ambience\amb_m60_area_14", 
  	"tv_amb_m60_trail_c_treefort_entrance - amb_m60_area_14");
end

script continuous f_amb_m60_trail_c_treefort()
  f_trigger_ambience(tv_amb_m60_trail_c_treefort, 
  	"sound\environments\solo\m060\ambience\amb_m60_area_15", 
  	"tv_amb_m60_trail_c_treefort - amb_m60_area_15");
end

script continuous f_amb_m60_trail_c_treefort_exit()
  f_trigger_ambience(tv_amb_m60_trail_c_treefort_exit, 
  	"sound\environments\solo\m060\ambience\amb_m60_area_16", 
  	"tv_amb_m60_trail_c_treefort_exit - amb_m60_area_16");
end

script continuous f_amb_m60_boulders_hideaway()
  f_trigger_ambience(tv_amb_m60_boulders_hideaway, 
  	"sound\environments\solo\m060\ambience\amb_m60_area_17", 
  	"tv_amb_m60_boulders_hideaway - amb_m60_area_17");
end

script continuous f_amb_m60_boulders_entrance()
  f_trigger_ambience(tv_amb_m60_boulders_hideaway, 
  	"sound\environments\solo\m060\ambience\amb_m60_area_18", 
  	"tv_amb_m60_boulders_entrance - amb_m60_area_18");
end

script continuous f_amb_m60_caves_entrance()
  f_trigger_ambience(tv_amb_m60_caves_entrance, 
  	"sound\environments\solo\m060\ambience\amb_m60_area_19", 
  	"tv_amb_m60_caves_entrance - amb_m60_area_19");
end

script continuous f_amb_m60_caves()
  f_trigger_ambience(tv_amb_m60_caves, 
  	"sound\environments\solo\m060\ambience\amb_m60_area_20", 
  	"tv_amb_m60_caves - amb_m60_area_20");
end

script continuous f_amb_m60_caves_tunnel_to_bog()
  f_trigger_ambience(tv_amb_m60_caves_tunnel_to_bog, 
  	"sound\environments\solo\m060\ambience\amb_m60_area_21a", 
  	"tv_amb_m60_caves_tunnel_to_bog - amb_m60_area_21a");
end

script continuous f_amb_m60_caves_stairs_to_bog()
  f_trigger_ambience(tv_amb_m60_caves_stairs_to_bog, 
  	"sound\environments\solo\m060\ambience\amb_m60_area_21b", 
  	"tv_amb_m60_caves_stairs_to_bog - amb_m60_area_21b");
end

script continuous f_amb_m60_bog_path()
  f_trigger_ambience(tv_amb_m60_bog_path, 
  	"sound\environments\solo\m060\ambience\amb_m60_area_22", 
  	"tv_amb_m60_bog_path - amb_m60_area_22");
end

script continuous f_amb_m60_bog_fort()
  f_trigger_ambience(tv_amb_m60_bog_fort, 
  	"sound\environments\solo\m060\ambience\amb_m60_area_23", 
  	"tv_amb_m60_bog_fort - amb_m60_area_23");
end

script continuous f_amb_m60_bog_1()
  f_trigger_ambience(tv_amb_m60_bog_1, 
  	"sound\environments\solo\m060\ambience\amb_m60_area_24", 
  	"tv_amb_m60_bog_1 - amb_m60_area_24");
end

script continuous f_amb_m60_bog_2()
  f_trigger_ambience(tv_amb_m60_bog_2, 
  	"sound\environments\solo\m060\ambience\amb_m60_area_25", 
  	"tv_amb_m60_bog_2 - amb_m60_area_25");
end

script continuous f_amb_m60_rally_point_1()
  f_trigger_ambience(tv_amb_m60_rally_point_1, 
  	"sound\environments\solo\m060\ambience\amb_m60_area_26", 
  	"tv_amb_m60_rally_point_1 - amb_m60_area_26");
end

script continuous f_amb_m60_rally_point_2()
  f_trigger_ambience(tv_amb_m60_rally_point_2, 
  	"sound\environments\solo\m060\ambience\amb_m60_area_27", 
  	"tv_amb_m60_rally_point_2 - amb_m60_area_27");
end

script continuous f_amb_m60_rally_point_3()
  f_trigger_ambience(tv_amb_m60_rally_point_3, 
  	"sound\environments\solo\m060\ambience\amb_m60_area_28", 
  	"tv_amb_m60_rally_point_3 - amb_m60_area_28");
end

script continuous f_amb_m60_rally_point_4()
  f_trigger_ambience(tv_amb_m60_rally_point_4, 
  	"sound\environments\solo\m060\ambience\amb_m60_area_29", 
  	"tv_amb_m60_rally_point_4 - amb_m60_area_29");
end

script continuous f_amb_m60_infinity_vehicle_bay()
  f_trigger_ambience(tv_amb_m60_infinity_vehicle_bay, 
  	"sound\environments\solo\m060\ambience\amb_m60_area_30", 
  	"tv_amb_m60_infinity_vehicle_bay - amb_m60_area_30");
end

script continuous f_amb_m60_infinity_entrance_middle_room()
  f_trigger_ambience(tv_amb_m60_infinity_entrance_middle_room, 
  	"sound\environments\solo\m060\ambience\amb_m60_area_31", 
  	"tv_amb_m60_infinity_entrance_middle_room - amb_m60_area_31");
end

script continuous f_amb_m60_infinity_hanger()
  f_trigger_ambience(tv_amb_m60_infinity_hanger, 
  	"sound\environments\solo\m060\ambience\amb_m60_area_32", 
  	"tv_amb_m60_infinity_hanger - amb_m60_area_32");
end

// tv_amb_m60_infinity_causeway_hangar								35
// tv_amb_m60_infinity_causeway_hallway_to_elevator		36
// tv_amb_m60_infinity_elevator												37
// tv_amb_m60_infinity_room_to_outer_deck							38

script continuous f_amb_m60_infinity_air_lock()
  f_trigger_ambience(tv_amb_m60_infinity_air_lock, 
  	"sound\environments\solo\m060\ambience\amb_m60_area_33", 
  	"tv_amb_m60_infinity_air_lock - amb_m60_area_33");
end

script continuous f_amb_m60_infinity_causeway()
  f_trigger_ambience(tv_amb_m60_infinity_causeway, 
  	"sound\environments\solo\m060\ambience\amb_m60_area_34", 
  	"tv_amb_m60_infinity_causeway_1 - amb_m60_area_34");
end

script continuous f_amb_m60_infinity_causeway_hanger()
  f_trigger_ambience(tv_amb_m60_infinity_causeway_hanger, 
  	"sound\environments\solo\m060\ambience\amb_m60_area_35", 
  	"tv_amb_m60_infinity_causeway_hanger - amb_m60_area_35");
end

script continuous f_amb_m60_infinity_causeway_hallway_to_elevator()
  f_trigger_ambience(tv_amb_m60_infinity_causeway_hallway_to_elevator, 
  	"sound\environments\solo\m060\ambience\amb_m60_area_36", 
  	"tv_amb_m60_infinity_causeway_hallway_to_elevator - amb_m60_area_36");
end

script continuous f_amb_m60_infinity_elevator()
  f_trigger_ambience(tv_amb_m60_infinity_elevator, 
  	"sound\environments\solo\m060\ambience\amb_m60_area_37", 
  	"tv_amb_m60_infinity_elevator - amb_m60_area_37");
end

// tv_amb_m60_infinity_outer_deck_upper								39
// tv_amb_m60_infinity_outer_deck_lower 							40

script continuous f_amb_m60_infinity_room_to_outer_deck()
  f_trigger_ambience(tv_amb_m60_infinity_room_to_outer_deck, 
  	"sound\environments\solo\m060\ambience\amb_m60_area_38", 
  	"tv_amb_m60_infinity_room_to_outer_deck - amb_m60_area_38");
end

script continuous f_amb_m60_infinity_outer_deck_upper()
  f_trigger_ambience(tv_amb_m60_infinity_outer_deck_upper, 
  	"sound\environments\solo\m060\ambience\amb_m60_area_39", 
  	"tv_amb_m60_infinity_outer_deck_upper - amb_m60_area_39");
end

script continuous f_amb_m60_infinity_outer_deck_lower()
  f_trigger_ambience(tv_amb_m60_infinity_outer_deck_lower, 
  	"sound\environments\solo\m060\ambience\amb_m60_area_39", 
  	"tv_amb_m60_infinity_outer_deck_upper - amb_m60_area_39");
end

script continuous f_amb_m60_infinity_outer_deck_sky()
  f_trigger_ambience(tv_amb_m60_infinity_outer_deck_sky, 
  	"sound\environments\solo\m060\ambience\amb_m60_area_40", 
  	"tv_amb_m60_infinity_outer_deck_upper - amb_m60_area_40");
end

// --- End m60_rescue_audio.hsc ---

// --- Begin m60_rescue_fx.hsc ---
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343
//
// Mission: 					m60_rescue_fx
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


// The script is played by the "mech_reveal" puppeteer in the m60_rescue_3d scenario layer
script static void mech_reveal_effects()
	dprint("Mech door effects.");
	
	// Mech door
	effect_new_on_object_marker(environments\solo\m60_rescue\fx\sparks\sparks_mech_rising_door_opening.effect, mech_platform, fx_door_opening_crack);
	effect_new_on_object_marker(environments\solo\m60_rescue\fx\steam\steam_mech_rising_door_opening.effect, mech_platform, fx_door_opening_crack);
	effect_new_on_object_marker(environments\solo\m60_rescue\fx\steam\dry_ice_mech_rising_platform.effect, mech_platform, fx_center_rising_platform);
	
	// Mech
	effect_new_on_object_marker(environments\solo\m60_rescue\fx\steam\dry_ice_mech_rising_from_mech.effect, mechsuit_1, fx_l_shoulder );
	effect_new_on_object_marker(environments\solo\m60_rescue\fx\steam\dry_ice_mech_rising_from_mech.effect, mechsuit_1, fx_r_shoulder );
	
end

/*script startup m60_rescue_fx()

	if b_debug then 
		print ("::: M60 - FX :::");
	end
	
	thread(test_fx());
end

script static void test_fx()
	print ("::: test FX :::");
	//effect_new( cinematics\cin_verticalslice\fx\rig_spark_pipe.effect, test_fx );
end



// === fx_zoneset_13_rally_point::: Startup and cleanup area FX
script static void fx_zoneset_13_rally_point( short s_zoneset_loading_index, short s_zoneset_unloading_index )
	if ( current_zone_set_fully_active() == S_zoneset_13_rally_point ) then
		effect_attached_to_camera_new ( environments\solo\m60_rescue\fx\embers\embers_ambient_floating.effect );
	elseif ( s_zoneset_unloading_index == s_rally_ins_idx ) then
		dprint( "fx_zoneset_13_rally_point: CLEANUP" );
	end
end
// === fx_zoneset_14_rally_point::: Startup and cleanup area FX
script static void fx_zoneset_14_rally_point( short s_zoneset_loading_index, short s_zoneset_unloading_index )
	if ( current_zone_set_fully_active() == s_rally_bowl_ins_idx ) then
		effect_attached_to_camera_new ( environments\solo\m60_rescue\fx\embers\embers_ambient_floating.effect );
	elseif ( s_zoneset_unloading_index == S_zoneset_14_rally_point ) then
		dprint( "fx_zoneset_14_rally_point: CLEANUP" );
	end
end
// === fx_zoneset_15_rally_point::: Startup and cleanup area FX
script static void fx_zoneset_15_rally_point( short s_zoneset_loading_index, short s_zoneset_unloading_index )
	if ( current_zone_set_fully_active() == S_zoneset_15_rally_point ) then
		effect_attached_to_camera_new( environments\solo\m60_rescue\fx\embers\embers_ambient_floating.effect );
	elseif ( s_zoneset_unloading_index == S_zoneset_15_rally_point ) then
		dprint( "fx_zoneset_15_rally_point: CLEANUP" );
	end
end
// === fx_zoneset_16_rally_point::: Startup and cleanup area FX
script static void fx_zoneset_16_rally_point( short s_zoneset_loading_index, short s_zoneset_unloading_index )
	if ( current_zone_set_fully_active() == S_zoneset_16_rally_point ) then
		effect_attached_to_camera_new( environments\solo\m60_rescue\fx\embers\embers_ambient_floating.effect );
	elseif ( s_zoneset_unloading_index == S_zoneset_16_rally_point ) then
		dprint( "fx_zoneset_16_rally_point: CLEANUP" );
	end
end
// === fx_zoneset_17_air_lock::: Startup and cleanup area FX
script static void fx_zoneset_17_air_lock( short s_zoneset_loading_index, short s_zoneset_unloading_index )
	if ( current_zone_set_fully_active() == S_zoneset_17_air_lock ) then
		effect_attached_to_camera_new( NONE );
	elseif ( s_zoneset_unloading_index == S_zoneset_17_air_lock ) then
		dprint( "fx_zoneset_17_air_lock: CLEANUP" );
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
*/
// --- End m60_rescue_fx.hsc ---

// --- Begin m60_rescue_insertion.hsc ---
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
global boolean b_insertion_reset		= TRUE;

; Mission Started
global boolean b_mission_started 		=	FALSE;

; Insertion
global short s_intro_cinematic 				= 0;	;; intro cutscene
global short s_peak_ins_idx 					= 1;	;; default / start
global short s_plains_ins_idx 				= 2;	;; plains / trails 2
global short s_trails_2_ins_idx				= 3;	;; trails 3
global short s_boulders_a_ins_idx 		= 4;	;; boulders
global short s_caves_a_ins_idx   	  	= 5;	;; caves
global short s_rally_ins_idx        	= 6;	;; rally
global short s_infinity_ins_idx     	= 7;	;; infinity berth
global short s_infinity_deck_ins_idx 	= 8;	;; outer deck
global short s_mid_cinematic	 				= 9;	;; middle cutscene
global short s_end_cinematic	 				= 10; ;; end cutscene
global short s_rally_demo_ins_idx			= 11; ;;rally demo

; Zone Sets
global short zs_peak							= 0;
global short zs_trail_c						= 16;
global short zs_trail_boulders		= 2;
global short zs_boulders			= 3;
global short zs_caves							= 4;
global short zs_caves_rally				= 5;
global short zs_infinity_berth		= 8;
global short zs_infinity_ele			= 11;
global short zs_outer_deck				= 13;
global short zs_cin_m060					= 17;
global short zs_trail_a						= 18;
global short zs_cin_m062					= 19;
global short zs_cin_m065					= 20;
global short zs_rally_demo				= 7;
global short zs_inf_airlock				= 14;
global short zs_cin_m062_trail			= 25;

script static void f_insertion_index_load( short s_insertion )
local boolean b_started = FALSE;
 //dprint( "::: f_insertion_index_load :::" );
 inspect( s_insertion );
 
 
 if (s_insertion == s_intro_cinematic and not b_game_emulate and editor_mode()) then
 	b_started = TRUE;
  ins_cliff();
 end
 
 if (s_insertion == s_intro_cinematic) then
 	b_started = TRUE;
  ins_cine();
 end
 if (s_insertion == s_peak_ins_idx) then
  b_started = TRUE;
  ins_cliff();
 end
 if (s_insertion == s_plains_ins_idx) then
  b_started = TRUE;
  ins_plains();
 end
 if (s_insertion == s_trails_2_ins_idx) then
  b_started = TRUE;
  ins_trails_2();
 end
 if (s_insertion == s_boulders_a_ins_idx) then
  b_started = TRUE;
  ins_boulders_a();
 end
 if (s_insertion == s_caves_a_ins_idx) then
  b_started = TRUE;
  ins_caves_a();
 end
 if (s_insertion == s_rally_ins_idx) then
  b_started = TRUE;
  ins_rally();
 end
 if (s_insertion == s_infinity_ins_idx) then
  b_started = TRUE;
  ins_infinity();
 end 
 if (s_insertion == s_infinity_deck_ins_idx) then
  b_started = TRUE;
  ins_infinity_deck();
 end 
 if (s_insertion == s_rally_demo_ins_idx) then
  b_started = TRUE;
  ins_rally_demo();
 end 


 if ( not b_started ) then
  dprint( "f_insertion_index_load: ERROR: Failed to find insertion point index to load" );
  inspect( s_insertion );
 end

end

script static zone_set f_zoneset_get( short s_index )
local zone_set zs_return = "peak"; 

 if ( s_index == zs_cin_m060 ) then
  zs_return = "cin_m60_peak";
 end
 if ( s_index == zs_peak ) then
  zs_return = "peak";
 end
 if ( s_index == zs_trail_c ) then
  zs_return = "trail_c";
 end
 if ( s_index == zs_trail_boulders ) then
  zs_return = "trail_boulders";
 end
 if ( s_index == zs_caves ) then
  zs_return = "caves";
 end
 if ( s_index == zs_caves_rally ) then
  zs_return = "caves_rally";
 end
 if ( s_index == zs_infinity_berth ) then
  zs_return = "infinity_berth";
 end
 if ( s_index == zs_outer_deck ) then
  zs_return = "infinity_outer_deck";
 end
 if ( s_index == zs_rally_demo ) then
  zs_return = "rally_point_infinity_berth";
 end
 // return
 zs_return;
end

; =================================================================================================
; =================================================================================================
; *** INSERTIONS ***
; =================================================================================================
; =================================================================================================

; =================================================================================================
; INTRO CINEMATIC
; =================================================================================================


script static void icc()
	f_insertion_reset( s_intro_cinematic );
end

script static void ins_cine()

	f_insertion_begin( "CINEMATIC" );
	
	cinematic_enter( cin_m060_infinityrescue, TRUE );
	cinematic_suppress_bsp_object_creation( TRUE );
	f_insertion_zoneload( zs_cin_m060, FALSE );
	cinematic_suppress_bsp_object_creation( FALSE );
	
	hud_play_global_animtion (screen_fade_out);
	hud_stop_global_animtion (screen_fade_out);
		
	f_start_mission( cin_m060_infinityrescue );
	cinematic_exit_no_fade( cin_m060_infinityrescue, TRUE ); 
	dprint( "Cinematic exited!" );

	// start the cliff insertion point
	ins_cliff();

end

; =================================================================================================
; PEAK
; =================================================================================================

/*script static void icl()
	ins_cliff();
end

script static void ins_cliff()
	if b_debug then
		print ("*** INSERTION POINT: CLIFF ***");
	end

	s_insertion_index = s_peak_ins_idx;

	// Play the intro cinematics here when we get one
	if (b_cinematics and (not b_editor) or (b_editor_cinematics)) then
			print ("*** CINEMATIC PLACEHOLDER ***");
			print ("*** CINEMATIC PLACEHOLDER ***");
	end
	
	// Switch to correct zone set unless "set_all" is loaded 
	
	switch_zone_set ("peak");
	sleep (1);
	
	if b_debug then
		print ("::: INSERTION: Waiting for (peak) to fully load...");
	end
		
	sleep_until (current_zone_set_fully_active() == s_peak_ins_idx, 1);
	
//	object_teleport_to_ai_point (player0(), ps_insertion_cliff.p0);
//	object_teleport_to_ai_point (player1(), ps_insertion_cliff.p1);
//	object_teleport_to_ai_point (player2(), ps_insertion_cliff.p2);
//	object_teleport_to_ai_point (player3(), ps_insertion_cliff.p3);
	
	if b_debug then 
		print ("::: INSERTION: Finished loading (peak)");
	end
	
	sleep (1);

	// HAX: look for a better way to return to gameplay
	
	hud_play_global_animtion (screen_fade_out);

	insertion_fade_to_gameplay();
	
	sleep (30);
	
	cinematic_show_letterbox (TRUE);
	
	hud_stop_global_animtion (screen_fade_out);

	b_mission_started = TRUE;
	
	sleep (30);
	
	cinematic_set_title (peakletterbox);
	
	sleep (30 * 13);
	
	cinematic_show_letterbox (FALSE);
	
	hud_play_global_animtion (screen_fade_in);
	
	hud_stop_global_animtion (screen_fade_in);
	
	thread(m60_1st_fof_ping());
	
end
*/

script static void icl()
	f_insertion_reset( s_peak_ins_idx );
end

script static void ins_cliff()

	soft_ceiling_enable ("softwall_blocker_peak_a", FALSE);
	soft_ceiling_enable ("softwall_blocker_trail_c", FALSE);

	f_insertion_begin( "PEAK" );
	f_insertion_zoneload( zs_peak, FALSE );
	f_insertion_playerwait();
	f_insertion_teleport( ps_insertion_cliff.p0, ps_insertion_cliff.p1, ps_insertion_cliff.p2,ps_insertion_cliff.p3 );
	f_insertion_playerprofile( default_coop, FALSE );
	dprint ("default player profile set");
	f_insertion_end();
	
	hud_play_global_animtion (screen_fade_out);

	object_create (intro_cryptum);
	wake (cryptum_fx_peak);
	
	insertion_fade_to_gameplay();
	
	wake (f_cliff_main);
	wake (f_thicket_main);
	
  hud_play_global_animtion (screen_fade_out);
  cinematic_show_letterbox (TRUE);
  sleep_s (1.5);
  cinematic_set_title (peakletterbox);
  thread(m60_1st_fof_ping());
  hud_stop_global_animtion (screen_fade_out);
  sleep_s (3.5);     
  hud_play_global_animtion (screen_fade_in);
  hud_stop_global_animtion (screen_fade_in);
  cinematic_show_letterbox (FALSE);
	
	sleep (30 * 5);
	
	cui_hud_set_new_objective (chtitleintro);
	
	f_blip_object (crumb_dogtag_01, "recon");
	
	ai_allegiance(player, human);

	effects_distortion_enabled = 0;

end

; =================================================================================================
; PLAINS
; =================================================================================================

/*script static void ipa()
	ins_plains();
end

script static void ins_plains()
	if b_debug then
		print ("*** INSERTION POINT: PLAINS ***");
	end

	s_insertion_index = s_plains_ins_idx;

	// Play the intro cinematics here when we get one
	if (b_cinematics and (not b_editor) or (b_editor_cinematics)) then
			print ("*** CINEMATIC PLACEHOLDER ***");
			print ("*** CINEMATIC PLACEHOLDER ***");
	end
	
	// Switch to correct zone set unless "set_all" is loaded 
	
	switch_zone_set ("trail_c");
	sleep (1);
	
	if b_debug then
		print ("::: INSERTION: Waiting for (trail_c) to fully load...");
	end
		
	sleep_until (current_zone_set_fully_active() == s_plains_ins_idx, 1);
	
	if b_debug then 
		print ("::: INSERTION: Finished loading (trail_c)");
	end
	
	sleep (1);

	// Teleport
	object_teleport_to_ai_point (player0(), ps_insertion_plains.p0);
	object_teleport_to_ai_point (player1(), ps_insertion_plains.p1);
	object_teleport_to_ai_point (player2(), ps_insertion_plains.p2);
	object_teleport_to_ai_point (player3(), ps_insertion_plains.p3);

	b_mission_started = TRUE;
	
	wake (f_trailstwo_main);
	
end
*/

script static void ipa()
	f_insertion_reset( s_plains_ins_idx );
end

script static void ins_plains()

	wake (f_plains);

	wake (f_trailstwo_main);

	ai_allegiance(player, human);

	f_insertion_begin( "PLAINS" );
	f_insertion_zoneload( zs_trail_c, FALSE );
	f_insertion_playerwait();
	f_insertion_teleport( ps_insertion_plains.p0, ps_insertion_plains.p1,ps_insertion_plains.p2,ps_insertion_plains.p3 );
	f_insertion_playerprofile( default_coop, FALSE );
	dprint ("default player profile set");
	f_insertion_end();

	music_start('Play_mus_m60');
	b_m60_music_progression = 10;
	effects_distortion_enabled = 0;

end

; =================================================================================================
; TRAILS 2
; =================================================================================================

/*script static void it2()
	ins_trails_2();
end

script static void ins_trails_2()
	if b_debug then
		print ("*** INSERTION POINT: TRAILS 2 ***");
	end

	s_insertion_index = s_boulders_a_ins_idx;

	// Play the intro cinematics here when we get one
	if (b_cinematics and (not b_editor) or (b_editor_cinematics)) then
			print ("*** CINEMATIC PLACEHOLDER ***");
			print ("*** CINEMATIC PLACEHOLDER ***");
	end
	
	// Switch to correct zone set unless "set_all" is loaded 
	
	switch_zone_set ("trail_boulders");
	sleep (1);
	
	if b_debug then
		print ("::: INSERTION: Waiting for (trail_boulders) to fully load...");
	end
		
	sleep_until (current_zone_set_fully_active() == s_boulders_a_ins_idx, 1);
	
	if b_debug then 
		print ("::: INSERTION: Finished loading (trail_boulders)");
	end
	
	sleep (1);

	// Teleport
	object_teleport_to_ai_point (player0(), ps_insertion_t2.p0);
	object_teleport_to_ai_point (player1(), ps_insertion_t2.p1);
	object_teleport_to_ai_point (player2(), ps_insertion_t2.p2);
	object_teleport_to_ai_point (player3(), ps_insertion_t2.p3);

	wake (trail_2);

	b_mission_started = TRUE;
end
*/

script static void it2()
	f_insertion_reset( s_trails_2_ins_idx );
end

// RALLY POINT BRAVO
script static void ins_trails_2()

//	device_set_power (door_treehouse_exit, 0);

	wake (f_laskytemp);

	ai_allegiance(player, human);

	f_insertion_begin( "TRAILS 3" );
	f_insertion_zoneload( zs_trail_boulders, FALSE );
	f_insertion_playerwait();
	f_insertion_teleport( ps_insertion_t2.p0, ps_insertion_t2.p1,ps_insertion_t2.p2,ps_insertion_t2.p3 );
	f_insertion_playerprofile( default_coop, FALSE );
	dprint ("default player profile set");
	f_insertion_end();

//	device_set_power (door_treehouse_exit, 0);

	music_start('Play_mus_m60');	
	b_m60_music_progression = 50;
	effects_distortion_enabled = 0;
	
end

; =================================================================================================
; BOULDERS_A
; =================================================================================================

/*script static void iba()
	ins_boulders_a();
end

script static void ins_boulders_a()
	if b_debug then
		print ("*** INSERTION POINT: BOULDERS A ***");
	end

	s_insertion_index = s_boulders_a_ins_idx;

	// Play the intro cinematics here when we get one
	if (b_cinematics and (not b_editor) or (b_editor_cinematics)) then
			print ("*** CINEMATIC PLACEHOLDER ***");
			print ("*** CINEMATIC PLACEHOLDER ***");
	end
	
	// Switch to correct zone set unless "set_all" is loaded 
	
	switch_zone_set ("trail_boulders");
	sleep (1);
	
	if b_debug then
		print ("::: INSERTION: Waiting for (trail_boulders) to fully load...");
	end
		
	sleep_until (current_zone_set_fully_active() == s_boulders_a_ins_idx, 1);
	
	if b_debug then 
		print ("::: INSERTION: Finished loading (trail_boulders)");
	end
	
	sleep (1);

	// Teleport
	object_teleport_to_ai_point (player0(), ps_insertion_boulder_a.p0);
	object_teleport_to_ai_point (player1(), ps_insertion_boulder_a.p1);
	object_teleport_to_ai_point (player2(), ps_insertion_boulder_a.p2);
	object_teleport_to_ai_point (player3(), ps_insertion_boulder_a.p3);

	b_mission_started = TRUE;
end

*/

script static void iba()
	f_insertion_reset( s_boulders_a_ins_idx );
end

script static void ins_boulders_a()

	wake (d_start);

	ai_allegiance(player, human);

	f_insertion_begin( "BOULDER" );
	f_insertion_zoneload( zs_trail_boulders, FALSE );
	f_insertion_playerwait();
	f_insertion_teleport( ps_insertion_boulder_a.p0, ps_insertion_boulder_a.p1,ps_insertion_boulder_a.p2,ps_insertion_boulder_a.p3 );
	f_insertion_playerprofile( default_coop, FALSE );
	dprint ("default player profile set");
	f_insertion_end();

	music_start('Play_mus_m60');
	b_m60_music_progression = 60;
	effects_distortion_enabled = 0;

end


; =================================================================================================
; CAVES_A
; =================================================================================================

/*script static void ica()
	ins_caves_a();
end

script static void ins_caves_a()
	if b_debug then
		print ("*** INSERTION POINT: CAVES A ***");
	end

	s_insertion_index = s_caves_a_ins_idx;

	// Play the intro cinematics here when we get one
	if (b_cinematics and (not b_editor) or (b_editor_cinematics)) then
			print ("*** CINEMATIC PLACEHOLDER ***");
			print ("*** CINEMATIC PLACEHOLDER ***");
	end
	
	// Switch to correct zone set unless "set_all" is loaded 
	
	switch_zone_set ("caves");
	sleep (1);
	wake (f_caves_main);
	
	if b_debug then
		print ("::: INSERTION: Waiting for (boulders_caves) to fully load...");
	end
		
	sleep_until (current_zone_set_fully_active() == s_caves_a_ins_idx, 1);
	
	if b_debug then 
		print ("::: INSERTION: Finished loading (boulders_caves)");
	end
	
	sleep (1);

	// Teleport
	object_teleport_to_ai_point (player0(), ps_insertion_caves_a.p0);
	object_teleport_to_ai_point (player1(), ps_insertion_caves_a.p1);
	object_teleport_to_ai_point (player2(), ps_insertion_caves_a.p2);
	object_teleport_to_ai_point (player3(), ps_insertion_caves_a.p3);

	b_mission_started = TRUE;
end
*/

script static void ica()
	f_insertion_reset( s_caves_a_ins_idx );
end

script static void ins_caves_a()

	wake (f_caves_main);

	ai_allegiance(player, human);

	f_insertion_begin( "CAVES" );
	f_insertion_zoneload( zs_caves, FALSE );
	f_insertion_playerwait();
	f_insertion_teleport( ps_insertion_caves_a.p0, ps_insertion_caves_a.p1,ps_insertion_caves_a.p2,ps_insertion_caves_a.p3 );
	f_insertion_playerprofile( default_coop, FALSE );
	dprint ("default player profile set");
	f_insertion_end();

	effects_distortion_enabled = 0;
	
	music_start('Play_mus_m60');
	b_m60_music_progression = 70;
	effect_attached_to_camera_stop(environments\solo\m60_rescue\fx\ambient_life\forest_player_gnats.effect);

end


; =================================================================================================
; RALLY POINT
; =================================================================================================

/*script static void irp()
	ins_rally();
end

script static void ins_rally()
	if b_debug then
		print ("*** INSERTION POINT: RALLY POINT ***");
	end

	s_insertion_index = s_rally_ins_idx;

	// Play the intro cinematics here when we get one
	if (b_cinematics and (not b_editor) or (b_editor_cinematics)) then
			print ("*** CINEMATIC PLACEHOLDER ***");
			print ("*** CINEMATIC PLACEHOLDER ***");
	end
	
	// Switch to correct zone set unless "set_all" is loaded 
	
	switch_zone_set ("caves_rally");
	sleep (1);
	
	if b_debug then
		print ("::: INSERTION: Waiting for (rally_point) to fully load...");
	end
		
	sleep_until (current_zone_set_fully_active() == s_rally_ins_idx, 1);
	
	if b_debug then 
		print ("::: INSERTION: Finished loading (rally_point)");
	end
	
	sleep (1);

	// Teleport
	
	//render_atmosphere_fog (0);
	
	effect_attached_to_camera_new ( environments\solo\m60_rescue\fx\embers\embers_ambient_floating );

	unit_add_equipment (player0, rally_profile, TRUE, FALSE);

	object_teleport_to_ai_point (player0(), ps_insertion_rally.p0);
	object_teleport_to_ai_point (player1(), ps_insertion_rally.p1);
	object_teleport_to_ai_point (player2(), ps_insertion_rally.p2);
	object_teleport_to_ai_point (player3(), ps_insertion_rally.p3);

	b_mission_started = TRUE;

	ai_place (sq_rally_pel_2);
	
	vehicle_load_magic ((ai_vehicle_get_from_spawn_point (sq_rally_pel_2.driver)), "mongoose_d", player0);
	
	sleep_until (vehicle_test_seat (ai_vehicle_get_from_spawn_point (sq_rally_pel_2.driver), "mongoose_d"), 1);
	
	wake (f_rally_main);
	
	fade_in (0, 0, 0, 90);
	
	data_mine_set_mission_segment("m60_rally");

	sleep (30 * 3);

	hud_play_global_animtion (screen_fade_out);
	
	sleep (15);
	
	cinematic_show_letterbox (TRUE);
	
	hud_stop_global_animtion (screen_fade_out);
	
	effect_attached_to_camera_new ( environments\solo\m60_rescue\fx\embers\embers_ambient_floating );
	
	wake (f_rally_main);
	
	sleep (30 * 3);
	
	cinematic_set_title (rallyletterbox);
	
	sleep (30 * 10);

	cinematic_show_letterbox (false);

	hud_play_global_animtion (screen_fade_in);
	
	hud_stop_global_animtion (screen_fade_in);
	
end

*/

script static void irp()
	f_insertion_reset( s_rally_ins_idx );
end

// RALLY POINT CHARLIE
script static void ins_rally()

	fade_out (0, 0, 0, 0);

	f_insertion_begin( "RALLY" );
	f_insertion_zoneload( zs_caves_rally, FALSE );
	f_insertion_playerwait();
	
	f_insertion_teleport( ps_insertion_rally.p0, ps_insertion_rally.p1,ps_insertion_rally.p2,ps_insertion_rally.p3 );
	f_insertion_playerprofile( rally_profile, FALSE );
	dprint ("default player profile set");
	f_insertion_end();

	ai_allegiance(player, human);

	effects_distortion_enabled = 0;
	music_start('Play_mus_m60');
	b_m60_music_progression = 80;
	effect_attached_to_camera_stop(environments\solo\m60_rescue\fx\ambient_life\forest_player_gnats.effect);

/*	ai_place (sq_rally_pel_2);
	
	vehicle_load_magic ((ai_vehicle_get_from_spawn_point (sq_rally_pel_2.driver)), "pelican_p_l05", player0);
	vehicle_load_magic ((ai_vehicle_get_from_spawn_point (sq_rally_pel_2.driver)), "pelican_p_l04", player1);
	vehicle_load_magic ((ai_vehicle_get_from_spawn_point (sq_rally_pel_2.driver)), "pelican_p_r05", player2);
	vehicle_load_magic ((ai_vehicle_get_from_spawn_point (sq_rally_pel_2.driver)), "pelican_p_r04", player3);

	sleep_until (player_in_vehicle (ai_vehicle_get_from_spawn_point (sq_rally_pel_2.driver)), 1);

*/

	wake (f_rally_main);

/*	fade_in (0, 0, 0, 120);
	
//	vehicle_set_player_interaction (ai_vehicle_get_from_spawn_point (sq_rally_pel_2.driver), "pelican_p_l05", 0, 0);
	
//	ai_vehicle_reserve (ai_vehicle_get_from_spawn_point (sq_rally_pel_2.driver), TRUE);
	
	data_mine_set_mission_segment("m60_rally");

	hud_play_global_animtion (screen_fade_out);
	
	sleep (15);
	
	cinematic_show_letterbox (TRUE);
	
	hud_stop_global_animtion (screen_fade_out);
	
//	wake (f_rally_main);
	
	sleep (30 * 3);
	
	cinematic_set_title (rallyletterbox);
	
	sleep (30 * 10);

	cinematic_show_letterbox (false);

	hud_play_global_animtion (screen_fade_in);
	
	hud_stop_global_animtion (screen_fade_in);
*/
end

; =================================================================================================
; INFINITY
; =================================================================================================

/*script static void ipi()
	ins_infinity();
end

script static void ins_infinity()
	if b_debug then
		print ("*** INSERTION POINT: INFINITY ***");
	end

	s_insertion_index = s_infinity_ins_idx;

	// Play the intro cinematics here when we get one
	if (b_cinematics and (not b_editor) or (b_editor_cinematics)) then
			print ("*** CINEMATIC PLACEHOLDER ***");
			print ("*** CINEMATIC PLACEHOLDER ***");
	end
	
	// Switch to correct zone set unless "set_all" is loaded 
	
	switch_zone_set ("infinity_berth_infinity_causeway");
	sleep (1);
	
	if b_debug then
		print ("::: INSERTION: Waiting for (infinity_berth_infinity_causeway) to fully load...");
	end
	
	render_atmosphere_fog (FALSE); 	
	wake (inf_cause);	
	sleep_until (current_zone_set_fully_active() == s_infinity_ins_idx, 1);
	
	
	if b_debug then 
		print ("::: INSERTION: Finished loading (rally_point_infinity_berth)");
	end
	
	sleep (1);

	// Teleport
	object_teleport_to_ai_point (player0(), ps_insertion_infinity.p0);
	object_teleport_to_ai_point (player1(), ps_insertion_infinity.p1);
	object_teleport_to_ai_point (player2(), ps_insertion_infinity.p2);
	object_teleport_to_ai_point (player3(), ps_insertion_infinity.p3);

	b_mission_started = TRUE;
end

*/

script static void ipi()
	f_insertion_reset( s_infinity_ins_idx );
end

script static void ins_infinity()

	//render_atmosphere_fog (FALSE); 	
	wake (inf_cause);	

	f_insertion_begin( "INFINITY" );
	f_insertion_zoneload( zs_inf_airlock, FALSE );
	f_insertion_playerwait();
	f_insertion_teleport( ps_insertion_infinity.p0, ps_insertion_infinity.p1,ps_insertion_infinity.p2,ps_insertion_infinity.p3 );
	f_insertion_playerprofile( default_coop, FALSE );
	dprint ("default player profile set");
	f_insertion_end();

	effects_distortion_enabled = 0;
	music_start('Play_mus_m60');
	b_m60_music_progression = 100;
	effect_attached_to_camera_stop(environments\solo\m60_rescue\fx\ambient_life\forest_player_gnats.effect);

end

; =================================================================================================
; INFINITY DECK
; =================================================================================================

/*script static void ipd()
	ins_infinity_deck();
end

script static void ins_infinity_deck()
	if b_debug then
		print ("*** INSERTION POINT: INFINITY DECK***");
	end

	s_insertion_index = s_infinity_deck_ins_idx;

	// Play the intro cinematics here when we get one
	if (b_cinematics and (not b_editor) or (b_editor_cinematics)) then
			print ("*** CINEMATIC PLACEHOLDER ***");
			print ("*** CINEMATIC PLACEHOLDER ***");
	end
	
	// Switch to correct zone set unless "set_all" is loaded 
	
	switch_zone_set ("infinity_outer_deck");
	sleep (1);
	
	if b_debug then
		print ("::: INSERTION: Waiting for (facilities_elevator_infinity_outer_deck) to fully load...");
	end
		
	sleep_until (current_zone_set_fully_active() == s_infinity_deck_ins_idx, 1);
	
	if b_debug then 
		print ("::: INSERTION: Finished loading (facilities_elevator_infinity_outer_deck)");
	end
	
	sleep (1);

	// Teleport
	render_atmosphere_fog (FALSE);
	object_create (decktest);
	wake (outer_deck);
	object_teleport_to_ai_point (player0(), ps_insertion_deck.p0);
	object_teleport_to_ai_point (player1(), ps_insertion_deck.p1);
	object_teleport_to_ai_point (player2(), ps_insertion_deck.p2);
	object_teleport_to_ai_point (player3(), ps_insertion_deck.p3);

	object_create (temp_mech);
	
	thread (act_2_cleanup());
	
	b_mission_started = TRUE;
end
*/

script static void ipd()
	f_insertion_reset( s_infinity_deck_ins_idx );
end

script static void ins_infinity_deck()

//	render_atmosphere_fog (FALSE);
	object_create (decktest);
	wake (outer_deck);

//	object_create (temp_mech);
	
	thread (act_2_cleanup());

	ai_allegiance(player, human);

	f_insertion_begin( "INFINITY" );
	f_insertion_zoneload( zs_outer_deck, FALSE );
	f_insertion_playerwait();
	f_insertion_teleport( ps_insertion_deck.p0, ps_insertion_deck.p1,ps_insertion_deck.p2,ps_insertion_deck.p3 );
	f_insertion_playerprofile( default_coop, FALSE );
	dprint ("default player profile set");
	f_insertion_end();

	effects_distortion_enabled = 0;
	music_start('Play_mus_m60');
	b_m60_music_progression = 160;
	effect_attached_to_camera_stop(environments\solo\m60_rescue\fx\ambient_life\forest_player_gnats.effect);

end

; =================================================================================================
; RALLY DEMO
; =================================================================================================

script static void ird()
	f_insertion_reset(s_rally_demo_ins_idx);
end

script static void ins_rally_demo()
	thread (act_2_cleanup());

	ai_allegiance(player, human);

	f_insertion_begin( "RALLY DEMO" );
	f_insertion_zoneload( zs_rally_demo, FALSE );
	f_insertion_playerwait();
	f_insertion_teleport( ps_insertion_demo.p0, ps_insertion_demo.p1,ps_insertion_demo.p2,ps_insertion_demo.p3);
	effect_attached_to_camera_new ( environments\solo\m60_rescue\fx\embers\embers_ambient_floating );
	effect_attached_to_camera_stop(environments\solo\m60_rescue\fx\ambient_life\forest_player_gnats.effect);
	f_insertion_playerprofile( default_coop, FALSE );
	dprint ("default player profile set");
	f_insertion_end();

	object_create (veh_demo);
	
	wake (f_bowl_setup);
	effects_distortion_enabled = 0;

end

// =================================================================================================
// =================================================================================================
// *** CLEANUP ***
// =================================================================================================
// =================================================================================================

// =================================================================================================
// CLIFF
// =================================================================================================

script static void f_cliff_cleanup()
	sleep_forever (f_cliff_main);
end

// =================================================================================================
// =================================================================================================
// UTILITY
// =================================================================================================
// =================================================================================================

// =================================================================================================
// Loadouts
// =================================================================================================

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

// --- End m60_rescue_insertion.hsc ---

// --- Begin m60_rescue_marsh.hsc ---
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343
//
// 	Mission: 					m60_rescue marsh
//	Insertion Points:	start (or icl)	- Beginning
//										
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343

// =================================================================================================
// =================================================================================================
// *** GLOBALS ***
// =================================================================================================
// =================================================================================================

// =================================================================================================
// =================================================================================================
// *** OBJECTIVES ***
// =================================================================================================
// =================================================================================================

script static void marsh_lz_obj_2()

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
	cinematic_set_title (chtitlemarsh3);

end
// --- End m60_rescue_marsh.hsc ---

// --- Begin m60_rescue_mission.hsc ---
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343
//
// 	Mission: 					m60_rescue
//	Insertion Points:	start (or icl)	- Beginning
//										
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343

// =================================================================================================
// =================================================================================================
// *** GLOBALS ***
// =================================================================================================
// =================================================================================================

global short obj_state = 0;
global short bish_born = 0;
global short cannon_fire = 0;
global short deck_drop = 0;
global short at_infinity = 0;
global short evac_tele = 0;
global short deck_gun_count = 0;
global short deck_gun_1_pos = 0;
global short deck_gun_2_pos = 0;
global short deck_phantom_count = 0;
global short mech_fire_training = 0;

global boolean mech1_fire_on = FALSE;
global boolean mech1_smoke_on = FALSE;
global boolean mech2_fire_on = FALSE;
global boolean mech2_smoke_on = FALSE;
global boolean phantom_deck_mid_b = FALSE;
global boolean phantom_deck_l_b = FALSE;
global boolean phantom_deck_r_b = FALSE;
global boolean vig_knight_aware = FALSE;
global boolean g_shoot_cannon = false;
global boolean m60_achievement_boulders = false;
global boolean m60_achievement_rally = false;
global boolean m60_achievement_berth = false;
global boolean m60_achievement_complete = false;
global boolean m60_tank_rally_debug = false;
global boolean uphill_hack = false;
global boolean cryptum_gone = false;
global boolean bool_ral_14_co_op = false;
global boolean bool_ral_15_co_op = false;

global object g_ics_player = none;
global object g_deck_gun = none;

global long g_cryptum_state = 0;
global long g_pup_cryptum_show = 0;

// =================================================================================================
// =================================================================================================
// *** START-UP ***
// =================================================================================================
// =================================================================================================

//script startup m60_rescue()
//	
//	if b_debug then 
//		print_difficulty(); 
//	end
//	
//	if b_debug then 
//		print ("::: M60 - RESCUE :::");
//	end
//			
//	// put back in during massout
//	//(f_loadout_set "default")
//	
//	if b_encounters then
//		wake (f_cliff_main);
//		wake (teleport_elevator);
//  	wake (d_start);
//  	wake (fore_shadow);
//  	wake (f_caves_main);
//  	wake (f_thicket_main);
//  	wake (trail_2);
//  	wake (f_trailstwo_main);
//  	wake (knight_preview);
//  	wake (f_plains);
//  	
//  end
//
//// ============================================================================================
//// STARTING THE GAME
//// ============================================================================================
//	
//	if (b_game_emulate or ((b_editor != 1) and (player_count() > 0))) then		
//		start();
//		// else just fade in, we're in edit mode
//	elseif b_debug then
//		print (":::  editor mode  :::");
//	end
//end

script startup mission_startup()
	dprint ("::: M60 - RESCUE :::");
	
	fade_out( 0, 0, 0, 1);
	
	if ( b_game_emulate or (not editor_mode()) ) then
	
		// in editor mode make sure the players are there to start
		if ( editor_mode() ) then
			dprint ("::: Editor Mode - Wait for players :::");
			f_insertion_playerwait();
		end

		// run start function
		start();

		sleep_until( b_mission_started, 1 );
	//	effect_attached_to_camera_new(environments\solo\m60_rescue\fx\ambient_life\forest_player_gnats.effect);
	//	effect_new_on_object_marker_loop (	"environments\solo\m60_rescue\fx\didact\cin_m60_cryptum_ambient.effect", intro_cryptum, fx_ambient);
	//	fade_in( 0, 0, 0, (0.50 * 30) );
		
		print (":  : Startup Fade Would Happen Here :  :");
		
		ai_allegiance(player, human);

		effects_distortion_enabled = 0;

	end

	// wait for the game to start
	sleep_until( b_mission_started, 1 );

	objectives_set_string (0, start_obj_1);
	objectives_set_string (1, start_obj_2);
	objectives_set_string (2, start_obj_3);
	objectives_set_string (3, start_obj_4);

	wake(f_disable_trail_b_backtrack);
	
	// display difficulty
	print_difficulty(); 
	
end

// =================================================================================================
// =================================================================================================
// CO-OP KILL VOLUMES
// =================================================================================================
// =================================================================================================

script dormant f_disable_trail_b_backtrack()
	sleep_until(current_zone_set() == zs_trail_c, 1);
	zone_set_trigger_volume_enable("zone_set:trail_b:scripted", FALSE);
	print("Disabled trail_b zone switch volume.");
	
	soft_ceiling_enable ("softwall_blocker_trail_c", TRUE);
	print (":  : Trail C Wall On :  :");
end

script dormant ral_14_co_op
	
	sleep_until (volume_test_players (ral_14_playspace), 1);
	
		repeat
		
			if
				volume_test_players (ral_14_playspace) == TRUE
			then
				if
					volume_test_players (ral_14_co_op_teleport) == TRUE
				then
					print (":  : Rally 14 Teleport :  :");
					volume_teleport_players_not_inside_with_vehicles (ral_14_playspace, flag_ral_14_teleport);
				end
			end
			
		until
		
			(bool_ral_14_co_op == TRUE);
		
	print (":  : Rally 14 Co-Op Done :  :");

end

script dormant ral_15_co_op
	
	sleep_until (volume_test_players (ral_15_playspace), 1);
	
		repeat
		
			if
				volume_test_players (ral_15_playspace) == TRUE
			then
				if
					volume_test_players (ral_15_co_op_teleport) == TRUE
				then
					print (":  : Rally 15 Teleport :  :");
					volume_teleport_players_not_inside_with_vehicles (ral_15_playspace, flag_ral_15_teleport);
				end
			end
			
		until
		
			(bool_ral_15_co_op == TRUE);
		
	print (":  : Rally 14 Co-Op Done :  :");

end


// =================================================================================================
// =================================================================================================
// SOFT WALL BACKTRACKING VOLUMES
// =================================================================================================
// =================================================================================================

script dormant peak_a_soft_wall()
	
	sleep_until (volume_test_players ("begin_zone_set:trail_a:softwall"), 1);
	soft_ceiling_enable ("softwall_blocker_peak_a", TRUE);
	
	print (":  : Peak A Wall On :  :");

end

// =================================================================================================
// =================================================================================================
// START
// =================================================================================================
// =================================================================================================

script static void start()
	dprint( "::: start :::");

	f_insertion_index_load( game_insertion_point_get() );

end


// =================================================================================================
// =================================================================================================
// PEAK
// =================================================================================================
// =================================================================================================

script dormant f_cliff_main()
	
	sleep_until (b_mission_started == TRUE);
	dprint  ("::: cliff start :::");

	effect_attached_to_camera_new(environments\solo\m60_rescue\fx\ambient_life\forest_player_gnats.effect);
	
	object_cinematic_visibility (intro_cryptum, TRUE);
	
	print (":  : Intro Cryptum FX :  :");
		
	wake (fore_shadow);
	wake (knight_preview);
	wake (cryptum_fx_peak);
	
	objectives_show (0);
	
	sleep (30);
	
	pup_play_show (air_show);
//	thread (play_temp_bink_cutscene("060_opening", 60));
	
end

script static void e3_phantom_shake()

sleep (30);

	camera_shake_all_coop_players (0.65, 0.65, 1, 3, phantom_camera_shake);

// Shows leaves falling all around due to the shaking
print("***** LEAVES FALLING *****");
effect_new(environments\solo\m60_rescue\fx\plant\fallingleaf_burst.effect, fx_00_fallingleaves);

sleep (30 * 3);

end

script dormant cryptum_fx_peak()
	print (":  : Peak Scanning :  :");
	effect_new_on_object_marker_loop ("environments\solo\m60_rescue\fx\didact\cin_m60_cryptum_scan_loop.effect", intro_cryptum, fx_new_scan_A);
	effect_new_on_object_marker_loop ("environments\solo\m60_rescue\fx\didact\cin_m60_cryptum_ambient", intro_cryptum, fx_ambient);
end
// =================================================================================================
// =================================================================================================
// TRAIL
// =================================================================================================
// =================================================================================================

//Spooky Forerunner
script dormant fore_shadow
	sleep_until (volume_test_players (vol_fore1), 1);

	data_mine_set_mission_segment("m60_trails_1");

end

script dormant knight_preview
	sleep_until (volume_test_players (trigger_fog), 1);
	wake (knight_aware);
	ai_cannot_die (sq_xray_vig_kn, TRUE);
	soft_ceiling_enable ("softwall_blocker_peak_a", FALSE);
	unit_doesnt_drop_items (ai_actors (sq_xray_vig_kn));
	pup_play_show (dead_marines);
	
	object_wake_physics (dead_marine_01);
	
	wake (peak_a_soft_wall);
	
	print (": Blah :");
end

script dormant knight_aware
	
	print (":  : Vignette Knights unaware :  :");
	
	sleep_until (ai_combat_status (sq_peak_vig_kn) > 1
		or
	volume_test_players (trig_peak_vig_escape)
		or
	volume_test_players_lookat (peak_vig_lookat, 13, 45));
	
	print (" :  : Vignette Knights spooked :  :");
	
	vig_knight_aware = TRUE;
	
end

script command_script knight_vig_phase
	
	cs_walk (1);
	sleep_until (vig_knight_aware == TRUE);
	cs_face_player (1);
	sleep (random_range (15, 30));
//	cs_custom_animation (objects\characters\storm_knight\storm_knight.model_animation_graph, "combat:any:go_berserk", TRUE);
	cs_phase_to_point (trail1_phase.p0);
	ai_erase (ai_current_actor);

end

script command_script knight_phase_trail
	sleep_until (volume_test_players (vol_fore2), 1);
	sleep (random_range (15, 35));
	cs_custom_animation (objects\characters\storm_knight\storm_knight.model_animation_graph, "combat:any:go_berserk", TRUE);
	cs_phase_to_point (trail1_phase.p0);
	sleep (30);
	ai_erase (ai_current_actor);
	wake (Peak_Prometheans_appear);
end

script command_script knight_preview_1
	sleep_until (volume_test_players (vol_fore2), 1);
	thread (xray_fx_play(ai_current_actor));
	sleep (30);
	cs_custom_animation (objects\characters\storm_knight\storm_knight.model_animation_graph, "combat:any:go_berserk", TRUE);
	cs_phase_to_point (trail1_phase.p0);
	sleep (30);
	ai_erase (ai_current_actor);
end

script static void phase_knight_vig( object knight )
	print (":  : Phase Out :  :");
//	sleep (random_range (0, 45));
	cs_phase_to_point(object_get_ai(knight),true,trail1_phase.p0);
	ai_erase(object_get_ai(knight));
end


// =================================================================================================
// =================================================================================================
// HOLLOW
// =================================================================================================
// =================================================================================================

//script dormant hollow_fight
//	wake (plant_device);
//end

// =================================================================================================
// =================================================================================================
// TRAILS 2
// =================================================================================================
// =================================================================================================

script dormant trail_2

	ai_place (trail_3_1);
	
	ai_actor_dialogue_enable (sq_trail3_hum, FALSE);
	
//	device_set_power (door_treehouse_exit, 0);
	
	objectives_show (1);
	
	data_mine_set_mission_segment("m60_trails_3");
	
	game_save_immediate();
	sleep_until (cutscene_over == 1);
	
	game_insertion_point_unlock(3);
	
	print (" :  : Trail 2 :  : ");
	
	print (":  : Placeholder Dialog :  :");

	sleep (30 * 3);

	ai_place (sq_trail3_bishop);	
	
	device_set_power (t2_door, 1);
	
	sleep_until (volume_test_players (objcon_trail3_start), 1);
	
	effect_attached_to_camera_new(environments\solo\m60_rescue\fx\ambient_life\forest_player_gnats.effect);
	
	//Encounter 3 Music Start
	
	thread (f_mus_m60_e03_begin());
	
	//ai_set_objective (sq_trail3_hum, obj_trail3_hum);
	
	//ai_set_task (sq_trail3_hum, obj_trail3_hum, tasks_1_hum_objcon1);
	
	sleep_until (volume_test_players (objcon_trail3_mid), 1);
	ai_actor_dialogue_enable (sq_trail3_hum, TRUE);
	
	ai_place (sq_trail3_bishop_2);
	ai_place (sq_trail3_fore_p_spawn);
	
	print (" :  : Spawning :  : ");
	wake (f_blip_trail3_hill_breadcrumbs);
	
	sleep_until (volume_test_players (objcon_trail3_hill), 1);

	game_save_no_timeout();

	wake (d_start);
	
//	ai_place (th_fore);
	
	sleep_until (volume_test_players (th_intro), 1);
	
	ai_place (th_fore);	
	
	sleep_until (volume_test_players (th_spawn_kn_1), 1);
	
	ai_place_in_limbo (sq_th_fore_k1);
	
	/*sleep_until (
		ai_living_count (sq_th_fore_k1) < 1
			OR
		volume_test_players (th_int)
							);
							
	ai_place (sq_th_fore_k2);
	
	*/
	
	sleep_until (volume_test_players (trig_th_end), 1);

	obj_state = 0;
	
	sleep_until (volume_test_objects (trig_th_end, (ai_actors (sq_trail3_hum))), 1);
	
	print (":  : Moving to Boulders objective :  :");
	
	ai_set_objective (sq_trail3_hum, obj_bou_hum);
	
end



script command_script trail_2_phase
	sleep_until (volume_test_players (objcon_trail3_end)
	or
	ai_living_count (sq_trail3_fore_kn_1) < 1);
	cs_phase_to_point (trail3_kn_phase.p0);
end

script command_script th_phase
	sleep_until (volume_test_players (th_int)
	or
	ai_living_count (sq_th_fore_k1) < 1);
	cs_phase_to_point (th_kn_phase.p0);
end

script command_script trail_2_phase_1
	sleep (30 * 5);
	cs_phase_to_point (trail3_kn_phase.p1);
	sleep (30);
end

script command_script treehouse_phase
	cs_phase_in();
	sleep (30 * 2);
	cs_phase_to_point (th_kn_phase.p0);
end

script dormant f_blip_trail3_hill_breadcrumbs()
	sleep_until (volume_test_players (objcon_trail3_mid), 1);

	f_blip_position_breadcrumbs(-50.82, -51.83, 8.69, "trail3_hill", "default");
	sleep_until(objects_distance_to_position(players(), -50.82, -51.83, 8.69) < 2.0);
	f_unblip_position_breadcrumbs("trail3_hill");
end
// =================================================================================================
// =================================================================================================
// BOULDERS
// =================================================================================================
// =================================================================================================

// Boulders

script static void cortana_turret_callout()

	sleep (30 * 8);
	
	wake (f_dialog_m60_turrets_callout);
	print (" :  : Cortana : Turrets! :  :");
	
	wake (f_dialog_m60_find_some_cover);
	print (":  : Cortana : Find some cover! :  :");
	
end

script static void f_activator_get( object obj_control, unit u_activator )
	g_ics_player = u_activator;
		
		if ( obj_control == domain_terminal_button ) then
		
    f_narrative_domain_terminal_interact( 2, domain_terminal, domain_terminal_button, u_activator, 'pup_domain_terminal' );
    
    end
	
end

script dormant d_start
	data_mine_set_mission_segment("m60_boulders");
	sleep_until (volume_test_players (trigger_d_start), 1);
	
	zone_set_trigger_volume_enable("begin_zone_set:boulders:scripted", FALSE);
	zone_set_trigger_volume_enable("zone_set:boulders:scripted", FALSE);
	
	object_wake_physics (boulders_officer);
	object_wake_physics (bouldertop_dead);
	object_wake_physics (bouldertop_dead_2);
	object_wake_physics (boulders_dead_2);
	
	wake(cortana_plinth_appear);
	game_save();
	obj_state = 0;
	thread (boulderobj());
	print (":  : Headed to D :  :");
	ai_place (sq_marine_bou_a_1);
	ai_place (bou_1);
	
	object_set_physics ((ai_vehicle_get_from_spawn_point (sq_fore_bou_turret_1.turret1)), FALSE);
	object_set_physics ((ai_vehicle_get_from_spawn_point (sq_fore_bou_turret_2.turret1)), FALSE);
	
	sleep_until (volume_test_players (trig_bou_mid), 1);

	print (" :  : Objective State 1 :  : ");
	obj_state = 1;
	ai_place_with_shards (sq_fore_bou_turret_1);
	
	ai_place_with_shards (sq_fore_bou_turret_2);
	game_save_no_timeout();
	garbage_collect_now();	
	
	ai_place (bou_2);
	
	thread (cortana_turret_callout());
	
	ai_place (sq_fore_bou_rear_f);
	
	ai_place_in_limbo (sq_fore_bou_rear_kn_r);
	
	sleep_until (volume_test_players (trig_bou_up)
	
	OR
	
							ai_living_count (bou_2) < 1);
	
	sleep (30 * 2);
	
	ai_place_in_limbo (sq_fore_bou_rear_kn_l);
	
	sleep_until (ai_living_count (bou_2_fore) < 1
	
		AND
							ai_living_count (bou_2) < 1);
	
	garbage_collect_now();	
	
	print ("Uphill Wave = Done");

	//Encounter 3 Music End

	ai_set_objective (sq_marine_bou_a_1, obj_boulder_b_hum);
	
	ai_set_objective (sq_trail3_hum, obj_boulder_b_hum);
	
	thread (f_mus_m60_e03_finish());

	sleep (30 * 3);
	
	wake (Cortana_plinth_callout);

	sleep (30 * 5);

//	sleep_until(dialog_id_played_check(l_dlg_m60_plinth_call), 1);

	wake (uphill);
	
end

script dormant turret_entry_1

	repeat

		sleep_until (player_in_vehicle (boulder_t1) == FALSE
								AND
								unit_in_vehicle (boulder_t1) == FALSE);
		print (":  : Turret 1 Empty :  :");
		ai_vehicle_enter (sq_marine_bou_a_1, boulder_t1);
	
		sleep (30 * 5);
	
	until (0 == 1);
	
end

script dormant turret_entry_2

	repeat

		sleep_until (player_in_vehicle (boulder_t2) == FALSE
								AND
								unit_in_vehicle (boulder_t2) == FALSE);
		print (":  : Turret 2 Empty :  :");
		ai_vehicle_enter (sq_marine_bou_a_1, boulder_t2);
	
		sleep (30 * 5);
	
	until (0 == 1);

end

script dormant turret_entry_3

	repeat

		sleep_until (player_in_vehicle (boulder_t3) == FALSE
								AND
								unit_in_vehicle (boulder_t3) == FALSE);
		print (":  : Turret 3 Empty :  :");
		ai_vehicle_enter (sq_marine_bou_a_1, boulder_t3);
	
		sleep (30 * 5);
	
	until (0 == 1);
	
end

script dormant uphill
	
	object_create (lightbridge_active);
	
	sleep (30 * 2);
	
	// Kick off boulders to load here. We'd rather wait to load until after the entire battle,
	// but by unloading 03_trail we keep perf under control when holding the hill
	wake(f_load_boulders);
	
	f_blip_object (lightbridge_active, "activate");
		
	ai_lod_full_detail_actors (50);
	
	sleep_until (device_get_position (lightbridge_active) != 0);
	
	pup_play_show (boulder_button_insert);
	uphill_hack = true;	
	
	f_unblip_object (lightbridge_active);
	
	sleep (55);
	
	effect_new_on_object_marker ("objects\characters\storm_cortana\fx\orb\orb_spawn.effect", boulders_plinth, "m_top_stand");
	
	sleep (6);
	
	effect_new_on_object_marker_loop ("objects\characters\storm_cortana\fx\orb\cor_orb_persistant.effect", boulders_plinth, "m_top_stand");
	
//	sleep (30* 3);
	
//	pup_play_show (cortana_plinth_on);
	
	object_destroy (lightbridge_active);
	
	game_save_no_timeout();
	
	ai_vehicle_enter (sq_marine_bou_a_1, boulder_t1);
	
	ai_vehicle_enter (sq_marine_bou_a_1, boulder_t2);
	
	ai_vehicle_enter (sq_marine_bou_a_1, boulder_t3);
	
	wake (turret_entry_1);
	wake (turret_entry_2);
	wake (turret_entry_3);
	
	thread (f_mus_m60_e04_begin());
	
	//Encounter 4 Music Start
	
	ai_place_in_limbo (sq_bou_fore_b_p1);
	
	sleep (30 * 6);
	
	thread (boulderdefstring());
	garbage_collect_now();

	sleep (30 * 4);
	
	ai_place_in_limbo (sq_bou_fore_kn_b1.p0);
	
	sleep (random_range (15, 30));
	
	ai_place_in_limbo (sq_bou_fore_kn_b1.p1);
	
	sleep (30 * 3);
	
	wake (Cortana_plinth_rampant_01);

	sleep_until (ai_living_count (sg_bou_kn) < 1);

	garbage_collect_now();

	sleep_until (ai_living_count (sg_bou_pawn) < 3);

	sleep (30 * 3);

	ai_place (sq_bou_fore_bi_b2); //Bishop One
	ai_place (sq_bou_fore_kn_b4); //Hidden Knight

	print (" :  : Wave 1 :  : ");

	ai_place_in_limbo (sq_bou_fore_b_p3);
	
	ai_place (sg_bou_pawn_sp);
	ai_place (sq_bou_fore_b_p2);
	
	wake (Cortana_plinth_rampant_02);	
	
	garbage_collect_now();
	
	print (" :  : Wave 2 :  : ");
	
	sleep (30 * 3);
	
	ai_place_in_limbo (sq_bou_fore_b_p4);

	sleep_until (ai_living_count (sg_bou_pawn) < 3);

	sleep_until (ai_living_count (sg_bou_kn) < 1);

	sleep (30 * 3);

	ai_place_in_limbo (sq_bou_fore_kn_b5);
	
	ai_place_in_limbo (sq_bou_fore_b_p5);
	
	sleep (30 * 3);
	
	sleep_until (ai_living_count (sg_bou_pawn) < 3);
	
	ai_place (sq_bou_fore_b_sharder); //Bishop Three
	ai_place_with_shards (sq_bou_fore_b_shard_1);
	
	print (" :  : Wave 4 :  : ");
	
	//wake (f_dialog_m60_callout_additional_forerunners);
	//print (" :  : Cortana : Additional Forerunners inbound! :  : ");
	
	//wake (f_dialog_m60_callout_on_top_of_us);
	//print (" :  : Cortana : They�re almost on top of us! :  : ");
	
	garbage_collect_now();
	
	sleep_until (ai_living_count (sg_bou_pawn) < 2);
	
	sleep_until (ai_living_count (sg_bou_kn) < 1);
	
	sleep (30 * 4);
	
	ai_place (sq_bou_fore_bi_b2); // Bishop Two

	ai_place_in_limbo (sq_bou_fore_kn_b2);
	
	sleep_until (ai_living_count (sq_bou_fore_kn_b2) < 1);
	
	print (" :  : Wave 5 :  : ");
	
	sleep_until (ai_living_count (sg_bou_kn) < 1);
	
	sleep (30 * 4);
	
	ai_place_in_limbo (sq_bou_fore_kn_b3);
	
	wake (Cortana_plinth_rampant_03);

	sleep_until (ai_strength (sq_bou_fore_kn_b3) < .5);
	
	sleep (30 * 5);

	ai_place_in_limbo (sq_bou_fore_b_p4);
	
	obj_state = 2;
	
	sleep_until (ai_living_count (sg_bou_kn) < 1);

	sleep (30 * 4);

	object_create (lightbridge_active_2);

	wake (Boulders_plinth_finished);		
	
	f_blip_flag (cave_entrance, "activate");
	
	sleep_until (device_get_position (lightbridge_active_2) != 0);
	
	pup_play_show (boulder_button_pull);

	sleep (27);

	effect_new_on_object_marker ("objects\characters\storm_cortana\fx\orb\orb_spawn.effect", boulders_plinth, "m_top_stand");
	
	sleep (6);
	
	effect_stop_object_marker ("objects\characters\storm_cortana\fx\orb\cor_orb_persistant.effect", boulders_plinth, "m_top_stand");

	object_destroy (lightbridge_active_2);

	f_unblip_flag (cave_entrance);

	wake (cavestrings);

	sleep (30 * 4);

	thread (lightbridge_active());
	
	wake (f_caves_main);
	
	sleep_forever (turret_entry_1);
	sleep_forever (turret_entry_2);
	sleep_forever (turret_entry_3);
	
	if 
		(ai_living_count (sq_marine_bou_a_1) == 4)
			AND
		(ai_living_count (sq_trail3_hum) == 2)
			AND
		((game_difficulty_get_real() >= heroic) == TRUE)
	then
			m60_achievement_complete = true;
			print (":  : Achievement Get! :  :");
			submit_incident_with_cause_player (achieve_m60_special, player0);
			submit_incident_with_cause_player (achieve_m60_special, player1);
			submit_incident_with_cause_player (achieve_m60_special, player2);
			submit_incident_with_cause_player (achieve_m60_special, player3);
	else
		print (":  : You didn't save the Marines, or your difficulty is too low. :  :");
	end
	
end

script static void boulderdefstring

	cui_hud_set_new_objective (chtitledefendhilltop);
	sleep (30 * 3);
			
end

script static void lightbridge_active()
	
	zone_set_trigger_volume_enable("begin_zone_set:caves", FALSE);
	
	sleep_until(current_zone_set_fully_active() == zs_boulders, 1);
	device_set_power (boulders_door, 1);
	thread (f_m60_music_nothing()); // end swamp02 music
	
	garbage_collect_now();
	
	sleep_until (volume_test_players (tv_cave_lb), 1);
	
	device_set_power (boulders_door, 0);
	
	print (":  : Door closing :  :");
	
	sleep (45);
	
	zone_set_trigger_volume_enable("begin_zone_set:caves", TRUE);
		
end

//Boulders Turret Activation

script command_script cs_boulder_turret_spawn
	RequestAutomatedTurretActivation(ai_vehicle_get_from_spawn_point (sq_fore_bou_turret_1.turret1));
	RequestAutomatedTurretActivation(ai_vehicle_get_from_spawn_point (sq_fore_bou_turret_2.turret1));
end

script command_script cs_pawn_spawn
	print("pawn sleeping");
	ai_enter_limbo(ai_current_actor);
	CreateDynamicTask(TT_SPAWN, FT_SPAWNER, ai_get_object(ai_current_actor), OnCompleteProtoSpawn2, 1.5);
end

script static void OnCompleteProtoSpawn2
	print ("PAWN DE FLOOR");
end

script command_script boulder_phase_1
	cs_phase_to_point (boulder_phase.p0);
end

script command_script boulder_phase_2
	cs_phase_to_point (boulder_phase.p1);
end

script command_script boulder_phase_3
	sleep_until (volume_test_players (trigger_phase)
	or
	ai_living_count (bou_1) < 10);
	sleep (random_range (30, 60));
	cs_phase_to_point (boulder_phase.p2);
end

script command_script boulder_phase_4
	sleep_until (volume_test_players (trigger_phase)
	or
	ai_living_count (bou_1) < 10);
	sleep (random_range (30, 60));
	cs_phase_to_point (boulder_phase.p3);
end

script command_script boulder_phase_b1
	cs_phase_to_point (boulder_phase.p4);
end

script command_script boulder_phase_b2
	cs_phase_to_point (boulder_phase.p5);
end

script command_script boulder_phase_b3
	cs_phase_to_point (boulder_phase.p6);
end

script command_script boulder_b_intro_1
	cs_abort_on_damage (FALSE);
//	cs_phase_in();
	cs_phase_in_blocking();
	sleep (random_range (30, 90));
	cs_phase_to_point (boulder_b_intro_phase.p0);
	sleep (random_range (0, 10));
	cs_phase_to_point (boulder_b_intro_phase.p3);
	sleep (random_range (0, 10));
	cs_phase_to_point (boulder_b_intro_phase.p4);
end

script command_script boulder_b_intro_2
	cs_abort_on_damage (FALSE);
	//cs_phase_in();
	cs_phase_in_blocking();
	sleep (random_range (30, 90));
	cs_phase_to_point (boulder_b_intro_phase.p1);
	sleep (random_range (0, 10));
	cs_phase_to_point (boulder_b_intro_phase.p2);
	sleep (random_range (0, 10));
	cs_phase_to_point (boulder_b_intro_phase.p5);
end

script static void boulderobj()

	cui_hud_set_objective_complete (obj_complete);
	sleep (30 * 5);
	
	cui_hud_set_new_objective (chtitleboulder1);
		
end

script dormant cavestrings
	
	game_save();
	
	cui_hud_set_objective_complete (obj_complete);
	
	sleep (30 * 6);
	
	cui_hud_set_new_objective (chtitlemarsh2);
	
	
end

// =================================================================================================
// =================================================================================================
// RALLY POINT TELEPORT (TEMP)
// =================================================================================================
// =================================================================================================


script command_script cs_evac

	vehicle_set_player_interaction (ai_vehicle_get_from_spawn_point (sq_cave_evac.driver), "pelican_p_l01", 0, 0);	
	vehicle_set_player_interaction (ai_vehicle_get_from_spawn_point (sq_cave_evac.driver), "pelican_p_l02", 0, 0);
	vehicle_set_player_interaction (ai_vehicle_get_from_spawn_point (sq_cave_evac.driver), "pelican_p_l03", 0, 0);
	vehicle_set_player_interaction (ai_vehicle_get_from_spawn_point (sq_cave_evac.driver), "pelican_p_l04", 0, 0);
	vehicle_set_player_interaction (ai_vehicle_get_from_spawn_point (sq_cave_evac.driver), "pelican_p_l05", 0, 0);
	vehicle_set_player_interaction (ai_vehicle_get_from_spawn_point (sq_cave_evac.driver), "pelican_p_r01", 0, 0);
	vehicle_set_player_interaction (ai_vehicle_get_from_spawn_point (sq_cave_evac.driver), "pelican_p_r02", 0, 0);
	vehicle_set_player_interaction (ai_vehicle_get_from_spawn_point (sq_cave_evac.driver), "pelican_p_r03", 0, 0);
	vehicle_set_player_interaction (ai_vehicle_get_from_spawn_point (sq_cave_evac.driver), "pelican_p_r04", 0, 0);
	vehicle_set_player_interaction (ai_vehicle_get_from_spawn_point (sq_cave_evac.driver), "pelican_p_r05", 0, 0);

	cs_vehicle_speed (.7);
	cs_fly_by (ps_cave_evac.p0);
	cs_fly_by (ps_cave_evac.p1);
	cs_fly_by (ps_cave_evac.p2);
	cs_fly_by (ps_cave_evac.p5);
	cs_vehicle_speed (.3);
	cs_fly_to_and_face (ps_cave_evac.p4, ps_cave_evac.p3);
	sleep (30 * 2);
	cs_vehicle_speed (.1);
	cs_fly_to_and_face (ps_cave_evac.p6, ps_cave_evac.p7);

	cs_vehicle_speed_instantaneous(0);

	f_blip_object (ai_vehicle_get_from_spawn_point (sq_cave_evac.driver), "recon");
//	vehicle_hover (ai_vehicle_get_from_spawn_point (sq_cave_evac.driver), TRUE);
//	object_set_physics (object_at_marker (ai_vehicle_get_from_spawn_point (sq_cave_evac.driver), "interior_attach"), FALSE);
	
	thread (pelican_door_anim());

	vehicle_set_player_interaction (ai_vehicle_get_from_spawn_point (sq_cave_evac.driver), "pelican_p_l01", 1, 0);	
	vehicle_set_player_interaction (ai_vehicle_get_from_spawn_point (sq_cave_evac.driver), "pelican_p_l02", 1, 0);
	vehicle_set_player_interaction (ai_vehicle_get_from_spawn_point (sq_cave_evac.driver), "pelican_p_l03", 1, 0);
	vehicle_set_player_interaction (ai_vehicle_get_from_spawn_point (sq_cave_evac.driver), "pelican_p_l04", 1, 0);
	vehicle_set_player_interaction (ai_vehicle_get_from_spawn_point (sq_cave_evac.driver), "pelican_p_l05", 1, 0);
	vehicle_set_player_interaction (ai_vehicle_get_from_spawn_point (sq_cave_evac.driver), "pelican_p_r01", 1, 0);
	vehicle_set_player_interaction (ai_vehicle_get_from_spawn_point (sq_cave_evac.driver), "pelican_p_r02", 1, 0);
	vehicle_set_player_interaction (ai_vehicle_get_from_spawn_point (sq_cave_evac.driver), "pelican_p_r03", 1, 0);
	vehicle_set_player_interaction (ai_vehicle_get_from_spawn_point (sq_cave_evac.driver), "pelican_p_r04", 1, 0);
	vehicle_set_player_interaction (ai_vehicle_get_from_spawn_point (sq_cave_evac.driver), "pelican_p_r05", 1, 0);

	sleep_until (player_in_vehicle (ai_vehicle_get_from_spawn_point (sq_cave_evac.driver)), 1);

	vehicle_set_player_interaction (ai_vehicle_get_from_spawn_point (sq_cave_evac.driver), "pelican_p_l01", 0, 0);	
	vehicle_set_player_interaction (ai_vehicle_get_from_spawn_point (sq_cave_evac.driver), "pelican_p_l02", 0, 0);
	vehicle_set_player_interaction (ai_vehicle_get_from_spawn_point (sq_cave_evac.driver), "pelican_p_l03", 0, 0);
	vehicle_set_player_interaction (ai_vehicle_get_from_spawn_point (sq_cave_evac.driver), "pelican_p_l04", 0, 0);
	vehicle_set_player_interaction (ai_vehicle_get_from_spawn_point (sq_cave_evac.driver), "pelican_p_l05", 0, 0);
	vehicle_set_player_interaction (ai_vehicle_get_from_spawn_point (sq_cave_evac.driver), "pelican_p_r01", 0, 0);
	vehicle_set_player_interaction (ai_vehicle_get_from_spawn_point (sq_cave_evac.driver), "pelican_p_r02", 0, 0);
	vehicle_set_player_interaction (ai_vehicle_get_from_spawn_point (sq_cave_evac.driver), "pelican_p_r03", 0, 0);
	vehicle_set_player_interaction (ai_vehicle_get_from_spawn_point (sq_cave_evac.driver), "pelican_p_r04", 0, 0);
	vehicle_set_player_interaction (ai_vehicle_get_from_spawn_point (sq_cave_evac.driver), "pelican_p_r05", 0, 0);

//	object_create (m60_pelican_control);
//	object_hide (m60_pelican_control, TRUE);
	
	//sleep_until (device_get_position (m60_pelican_control) == 0);
	
	//print (" :  : In the Pelican :  :");
	
		if
			
			player_valid (player1)
		
		OR
		
			player_valid (player2)
			
		OR
		
			player_valid (player3)
		
		then
			teleport_players_into_vehicle (ai_vehicle_get_from_spawn_point (sq_cave_evac.driver));
			print (":  : Co-Op players are all up in :  :");
		else
			print (":  : Flying solo :  :");
		end
	
	
	f_unblip_object (ai_vehicle_get_from_spawn_point (sq_cave_evac.driver));

//	cs_vehicle_speed (.5);
//	cs_fly_by (ps_cave_evac.p2);
//	cs_fly_by (ps_cave_evac.p1);
	
		evac_tele = 1;

end

script static void pelican_door_anim()
	custom_animation_hold_last_frame (ai_vehicle_get_from_spawn_point (sq_cave_evac.driver), "objects\vehicles\human\storm_pelican\storm_pelican.model_animation_graph", "vehicle:door_open_close", false);
//	sleep_until (volume_test_players (tv_rally_tele_temp), 1);
	sleep (30 * 1);
//	vehicle_load_magic (ai_vehicle_get_from_spawn_point (sq_cave_evac.driver), "pelican_p_l01", player0);
	sleep_until (player_in_vehicle (ai_vehicle_get_from_spawn_point (sq_cave_evac.driver)), 1);
	print (":  : Teleporting into seat :  :");
	sleep (30 * 5);
	unit_stop_custom_animation (ai_vehicle_get_from_spawn_point (sq_cave_evac.driver));
end

script dormant rally_teleport
	sleep (30 * 4);

	local long pup_show_id = 0;

	pup_show_id = pup_play_show (cave_pelican);

	vehicle_set_player_interaction (pelepupp, "pelican_p_l01", 1, 0);	
	vehicle_set_player_interaction (pelepupp, "pelican_p_l02", 1, 0);
	vehicle_set_player_interaction (pelepupp, "pelican_p_l03", 1, 0);
	vehicle_set_player_interaction (pelepupp, "pelican_p_l04", 1, 0);
	vehicle_set_player_interaction (pelepupp, "pelican_p_l05", 1, 0);
	vehicle_set_player_interaction (pelepupp, "pelican_p_r01", 1, 0);
	vehicle_set_player_interaction (pelepupp, "pelican_p_r02", 1, 0);
	vehicle_set_player_interaction (pelepupp, "pelican_p_r03", 1, 0);
	vehicle_set_player_interaction (pelepupp, "pelican_p_r04", 1, 0);
	vehicle_set_player_interaction (pelepupp, "pelican_p_r05", 1, 0);

//	ai_place (sq_cave_evac);
//	ai_cannot_die (sq_cave_evac, TRUE);
//	object_cannot_take_damage ((ai_vehicle_get_from_spawn_point (sq_cave_evac.driver)));
	print (":  : Temp Pelican Teleport :  :");
//	sleep_until (volume_test_players (tv_rally_tele_temp), 1);
//	sleep_until (player_in_vehicle (ai_vehicle_get_from_spawn_point (sq_cave_evac.driver)), 1);
	
	sleep (550);
	
	f_blip_position_breadcrumbs(-180.86, -72.65, 10.12, "pelican_board", "default");
	sleep_until (volume_test_players (tv_cave_pelican_board), 1);
	f_unblip_position_breadcrumbs("pelican_board");

	music_set_state('Play_mus_m60_v08_board_pelican');
	
	vehicle_set_player_interaction (pelepupp, "pelican_p_l01", 0, 0);	
	vehicle_set_player_interaction (pelepupp, "pelican_p_l02", 0, 0);
	vehicle_set_player_interaction (pelepupp, "pelican_p_l03", 0, 0);
	vehicle_set_player_interaction (pelepupp, "pelican_p_l04", 0, 0);
	vehicle_set_player_interaction (pelepupp, "pelican_p_l05", 0, 0);
	vehicle_set_player_interaction (pelepupp, "pelican_p_r01", 0, 0);
	vehicle_set_player_interaction (pelepupp, "pelican_p_r02", 0, 0);
	vehicle_set_player_interaction (pelepupp, "pelican_p_r03", 0, 0);
	vehicle_set_player_interaction (pelepupp, "pelican_p_r04", 0, 0);
	vehicle_set_player_interaction (pelepupp, "pelican_p_r05", 0, 0);
	
	unit_lower_weapon (player0, 45);
	unit_lower_weapon (player1, 45);
	unit_lower_weapon (player2, 45);
	unit_lower_weapon (player3, 45);
	
	sleep (30 * 2);
	wake (pelican_chief_welcome);
	//sleep_until (player_in_vehicle (ai_vehicle_get_from_spawn_point (sq_marine_evac.driver)), 1);
	
	chud_cinematic_fade (0, 60);
	fade_out (0, 0, 0, 60);
	
	//pup_stop_show (pup_show_id);
	
	sleep (30 * 2);
        
        prepare_to_switch_to_zone_set("caves_to_caves_rally");

	sleep (30 * 4);

	unit_exit_vehicle (player0, 0);
	unit_exit_vehicle (player0, 1);	
	unit_exit_vehicle (player0, 2);	
	unit_exit_vehicle (player0, 3);	
	
	//render_atmosphere_fog (FALSE);
	
	garbage_collect_unsafe();
	//ai_erase_all();
	
	object_teleport_to_ai_point (player0, ps_pelican_pupp_out.p0);
	object_teleport_to_ai_point (player1, ps_pelican_pupp_out.p0);
	object_teleport_to_ai_point (player2, ps_pelican_pupp_out.p0);
	object_teleport_to_ai_point (player3, ps_pelican_pupp_out.p0);
	
	switch_zone_set ("caves_rally");
	sleep (1);
	
	if b_debug then
		print ("::: INSERTION: Waiting for (caves_rally) to fully load...");
	end
		
	sleep_until (current_zone_set_fully_active() == zs_caves_rally, 1);
	
	print (" :  : ZONE SET LOADED :  :");
	
	if b_debug then 
		print ("::: INSERTION: Finished loading (caves_rally)");
	end
	
	//vehicle_set_player_interaction (ai_vehicle_get_from_spawn_point (sq_cave_evac.driver), "pelican_p_l01", 0, 1);
	
	sleep (1);
	
	object_teleport_to_ai_point (player0, ps_insertion_rally.p0);
	object_teleport_to_ai_point (player1, ps_insertion_rally.p1);
	object_teleport_to_ai_point (player2, ps_insertion_rally.p2);
	object_teleport_to_ai_point (player3, ps_insertion_rally.p3);

	print (":  : TELEPORTED :  :");

	f_insertion_playerprofile( rally_profile, FALSE );
	
	wake (f_rally_main);
	
	wake (m60_on_pelican_vo);
	
end

script dormant f_blip_rally_breadcrumbs()
	f_blip_position_breadcrumbs(-137.51, 362.15, -41.21, "rally", "default");
	sleep_until (volume_test_players (tv_watchtower_spawn), 1);
	f_unblip_position_breadcrumbs("rally");
end

// =================================================================================================
// =================================================================================================
// INFINITY BERTH
// =================================================================================================
// =================================================================================================

script dormant inf_berth()
	zone_set_trigger_volume_enable("zone_set:infinity_berth_infinity_causeway:*", FALSE);
	zone_set_trigger_volume_enable("begin_zone_set:infinity_berth_infinity_causeway:*", FALSE);
	zone_set_trigger_volume_enable("zone_set:infinity_airlock:*", FALSE);
	data_mine_set_mission_segment("m60_infinty_causeway");
	garbage_collect_now();
	game_save_no_timeout();
	ai_lod_full_detail_actors (30);
	
	sleep_until (current_zone_set_fully_active() == zs_infinity_berth, 1);
	
	// Ensure we immediately load the mech airlock when able.
	wake(inf_berth_load_airlock);
	
	ai_vehicle_reserve (veh_demo, TRUE);
	ai_vehicle_reserve (ve_rally_scorpion, TRUE);
	ai_vehicle_reserve (berth_goose_1, TRUE);
	ai_vehicle_reserve (berth_goose_2, TRUE);
		
	ai_place (inf_berth);
	print (":  : Berth Squad Placed :  :");
	
	ai_set_objective (sq_hum_rally_infantry, obj_inf_berth_hum);
	ai_set_objective (sq_hum_rally_warthog_1, obj_inf_berth_hum);
	ai_set_objective (sq_bowl_hum_mid, obj_inf_berth_hum);
	
	//thread (inf_berth_string());
	//thread (inf_door_1());
	//thread (inf_door_2());
	//thread (inf_door_3());
	//thread (inf_door_4());
	
	effect_attached_to_camera_stop ( environments\solo\m60_rescue\fx\embers\embers_ambient_floating );

	//render_atmosphere_fog (FALSE);

	obj_state = 1;
	print (" :  : Player is inside Berth :  :");
	game_save_no_timeout();
	print (":  : Infinity Berth :  :");
	
	sleep (30 * 4);
	
	ai_vehicle_reserve (veh_demo, FALSE);
	ai_vehicle_reserve (ve_rally_scorpion, FALSE);
	ai_vehicle_reserve (berth_goose_1, FALSE);
	ai_vehicle_reserve (berth_goose_2, FALSE);
	
	sleep_until
	
		(ai_living_count (inf_berth_cov) < 1);
	
	garbage_collect_now();
	
	game_save();
	
	thread (f_m60_music_nothing()); // end tank music
	
	sleep (30);
	
	thread (inf_berth_string());
	
	// Encounter 6 Music End
	
	thread (f_mus_m60_e06_finish());
	
//	sleep_until(dialog_id_played_check(l_dlg_m60_infinityberth_tocauseway), 1);
	
	//wake (Infinityberth_tocauseway);
	
	thread (inifinityberth_tocauseway());

	sleep (30 * 16);

	sleep_until (not bink_is_playing(), 1);

	ai_vehicle_exit (sq_marine_inf_berth_l);
	ai_vehicle_exit (sq_marine_inf_berth_r);
	ai_vehicle_exit (sq_marine_inf_berth_m);
	ai_vehicle_exit (sq_hum_rally_infantry);
	ai_vehicle_exit (sq_hum_rally_warthog_1);
	ai_vehicle_exit (sq_marine_inf_berth_l);
	ai_vehicle_exit (sq_bowl_hum_mid);

	ai_vehicle_reserve (berth_goose_2, TRUE);
	ai_vehicle_reserve (berth_goose_1, TRUE);

	infinity_airlock_door_entry->open_default();
	
		if
			volume_test_players (trig_inf_berth_mid)
		then
			f_blip_flag (flag_airlock, "recon");
		else
			print (":  : Don't blip anything, you're good :  :");
		end
	
	wake (inf_cause);
	
	object_cannot_take_damage (inf_inner_door_temp);
	
end

script dormant inf_berth_load_airlock()
	sleep_until(current_zone_set() == zs_inf_airlock and not PreparingToSwitchZoneSet(), 1);
	zone_set_trigger_volume_enable("zone_set:infinity_airlock:*", TRUE);
end

script static void inf_berth_string()
	
	cui_hud_set_objective_complete (obj_complete);
//	f_blip_object (infinity_airlock_door, "recon");
	sleep (30 * 3);
	
end

script static void mech_reveal
	thread (mech_fx_wait());
	music_set_state('Play_mus_m60_v07_mech_reveal');
	ai_erase_all();
	object_create(mech_platform);
	object_create(mechsuit_1);
	units_set_maximum_vitality (mechsuit_1, 580, 145);
	objects_attach(mech_platform,mech,mechsuit_1,"");
	device_animate_position(mech_platform,0,0,0,0,false);
	device_set_position_track(mech_platform,"vin:m60:reveal:platform",0);
	device_animate_position(mech_platform,1,12,0,0,false);
	SetObjectRealVariable(mechsuit_1,VAR_OBJ_LOCAL_A,0.0001);
	sleep(15);
	objects_detach(mech_platform,mechsuit_1);
	sleep(345);
	SetObjectRealVariable(mechsuit_1,VAR_OBJ_LOCAL_A,1);
	sleep(45);
	dprint("Mech hatch opening effects.");
	effect_new_on_object_marker(environments\solo\m60_rescue\fx\steam\steam_quick_burst_mech_opening.effect, mechsuit_1, top_hatch);
	sleep(55);
	SetObjectRealVariable(mechsuit_1,VAR_OBJ_LOCAL_A,0);
	unit_set_enterable_by_player (mechsuit_1, TRUE);
//	damage_new ("globals\damage_effects\phys_impulse_damage_effect.damage_effect", mech_door_boom_2);
end

script command_script sc_mech_reveal
      repeat
            cs_aim_object(true,invisible_crate);
      until (device_get_position(mech_platform)== 1, 1);
end

script static void mech_fx_wait()

	sleep (46);
	thread (mech_reveal_effects());
	sleep (120);
	damage_new ("globals\damage_effects\phys_impulse_damage_effect.damage_effect", mech_door_boom);
	
end

// =================================================================================================
// =================================================================================================
// UTILITY CAUSEWAY
// =================================================================================================
// =================================================================================================

//Mech Damage (Temp)

 script dormant damage_watcher_mech1()
 
 	repeat
 
	if (unit_get_shield (mechsuit_1) <= 0.5) then
  if (mech1_smoke_on == FALSE) then
  effect_new_on_object_marker ("fx\library\fire\fire_and_smoke_mech\firesmoke_fire_smokeonly.effect", mechsuit_1, "package");                              
  mech1_smoke_on = TRUE;
  end
  else
  effect_stop_object_marker ("fx\library\fire\fire_and_smoke_mech\firesmoke_fire_smokeonly.effect", mechsuit_1, "package");
  mech1_smoke_on = FALSE;
  end
                                
  if (unit_get_shield (mechsuit_1) <= 0.25) then
  	if (mech1_fire_on == FALSE) then
  	effect_new_on_object_marker ("fx\library\fire\fire_and_smoke_mech\firesmoke_fire.effect", mechsuit_1, "package");                                       
  	mech1_fire_on = TRUE;
  end
  else
  	effect_stop_object_marker ("fx\library\fire\fire_and_smoke_mech\firesmoke_fire.effect", mechsuit_1, "package");                           
		mech1_fire_on = FALSE;
  end
  until( 1 == 0, 1 );
 end
 
 script dormant damage_watcher_mech2()
 
 repeat
 
	if (unit_get_shield (mechsuit_2) <= 0.5) then
  if (mech2_smoke_on == FALSE) then
  effect_new_on_object_marker ("fx\library\fire\fire_and_smoke_mech\firesmoke_fire_smokeonly.effect", mechsuit_2, "package");                              
  mech2_smoke_on = TRUE;
  end
  else
  effect_stop_object_marker ("fx\library\fire\fire_and_smoke_mech\firesmoke_fire_smokeonly.effect", mechsuit_2, "package");
  mech2_smoke_on = FALSE;
  end
                                
  if (unit_get_shield (mechsuit_2) <= 0.25) then
  	if (mech2_fire_on == FALSE) then
  	effect_new_on_object_marker ("fx\library\fire\fire_and_smoke_mech\firesmoke_fire.effect", mechsuit_2, "package");                                       
  	mech2_fire_on = TRUE;
  end
  else
  	effect_stop_object_marker ("fx\library\fire\fire_and_smoke_mech\firesmoke_fire.effect", mechsuit_2, "package");                           
		mech2_fire_on = FALSE;
  end
  until( 1 == 0, 1 );                           
end

script dormant inf_cause

	objectives_finish (3);
	
	objectives_show (4);

// Mech Raise

	object_cannot_take_damage (inf_inner_door_temp);

	sleep_until (volume_test_players (trig_inf_cause), 1);
	//f_unblip_object (berth_door_1);

	f_unblip_flag (flag_airlock);

	// Close door and begin streaming as soon as it's fully closed.
	infinity_airlock_door_entry->close_fast();	
	sleep_until(infinity_airlock_door_entry->check_close(),1);
	zone_set_trigger_volume_enable("begin_zone_set:infinity_berth_infinity_causeway:*", TRUE);

	//wake (damage_watcher_mech2);
	
	object_create (mech_switch);
	object_hide (mech_switch, TRUE);
	
	f_blip_object (mech_switch, "activate");
	
	ai_erase_all();
	
	sleep_until (device_get_position (mech_switch) != 0);
	
	pup_play_show (mech_lift_button);
	
	f_unblip_object (mech_switch);
	
	sleep_until (preparingToSwitchZoneSet() == FALSE, 1);
	
	zone_set_trigger_volume_enable ("zone_set:infinity_berth_infinity_causeway:*", TRUE);
	
	//switch_zone_set (infinity_berth_infinity_causeway);

	//sleep_until (current_zone_set_fully_active() == zs_inf_airlock, 1);

	object_cannot_take_damage (inf_inner_door_temp);

	sleep (30);

	thread (mech_reveal());

	/*hud_play_global_animtion (screen_fade_out);
	cinematic_show_letterbox (TRUE);
	sleep_s (1.5);
	cinematic_set_title (mechletterbox);
	hud_stop_global_animtion (screen_fade_out);
	sleep_s (3.5);     
	hud_play_global_animtion (screen_fade_in);
	hud_stop_global_animtion (screen_fade_in);
	cinematic_show_letterbox (FALSE);*/
	
	f_chapter_title (mechletterbox, TRUE);
	
	print (" :  : Here comes mech suits :  : ");
	
	//wake (damage_watcher_mech1);
	
	print (":  : Infinity Causeway :  :");
	
	sleep_until (vehicle_test_seat (mechsuit_1, mantis_d) == 1
	
							OR
							
							object_get_health (mechsuit_1) < .5);
	thread (inifinitycauseway_broadswordassault());
	
	thread (door_destroy_blip());
	
	// Encounter 7 Music Start
	
	thread (f_mus_m60_e07_begin());

	game_save();
	
	sleep (30 * 1);

	thread (doorraise());
	print (" :  : In the vehicle :  : ");
	
	if
	
		game_difficulty_get() <= normal
	
		AND
		
		game_coop_player_count() == 1
	
	then
	
		wake (training_mech_1);
	
	else
	
		print (":  : Too cool for tutorials :  :");
	
	end
	
	sleep (30 * 3);

	wake (cause_1);
	
	effects_perf_armageddon = 1;
	
end

script static void door_destroy_blip()

	sleep (30 * 5);

	f_blip_flag (flag_destroy_door, "neutralize");

	sleep_until (object_get_health (inf_inner_door_temp) == 0);
	
	f_unblip_flag (flag_destroy_door);
	
end	


// =================================================================================================
// =================================================================================================
// UTILITY CAUSEWAY 1
// =================================================================================================
// =================================================================================================

script dormant cause_1

	sleep_until (object_get_health (inf_inner_door_temp) < 1);

	object_create_folder (cause_1);

	if
		game_coop_player_count() > 1
	then
		thread (infinity_airlock_door_tall_right->open_default());
		thread (infinity_airlock_door_tall_left->open_default());
	else
		print (":  : SP so no door opening for you :  :");
	end

	ai_flee_target (sq_inf_cause_1, player0);
	ai_flee_target (sq_inf_cause_1, player1);
	ai_flee_target (sq_inf_cause_1, player2);
	ai_flee_target (sq_inf_cause_1, player3);

	sleep_until (volume_test_players (cause_objcon_1), 1);
	ai_place_in_limbo (sq_inf_cause_3);
	
	wake (cause_2);
	
end	

//	object_wake_physics (ai_vehicle_get_from_spawn_point (sq_inf_cause_t_1.t2));

script dormant cause_2

	wake (damage_cause_1_r);
	wake (damage_cause_2_r);
	
	sleep_until (volume_test_players (trig_cause_spawn), 1);
	garbage_collect_now();
	sleep (60);
	ai_place (cause_2);
	obj_state = 1;
	//thread (didact_fx());

	wake (cause_3);
	
end

//object_set_physics ((ai_vehicle_get_from_spawn_point (sq_cause_fore_ramp_t2)), FALSE);


// =================================================================================================
// =================================================================================================
// UTILITY CAUSEWAY 2
// =================================================================================================
// =================================================================================================

script dormant cause_3

	sleep_until (volume_test_players (trig_cause_spawn_2), 1);
	
	object_create_folder (cause_2);
	
	if
		ai_living_count (cause_1) >= 7
	then
		ai_kill (cause_1);
	end
	
	garbage_collect_now();
	game_save();

	sleep (60);
	print (":  : Placing cause_3 :  :");

	obj_state = 2;
	ai_place (cause_3);

	ai_place_in_limbo (sq_inf_cause_c_1);
	print (":  : Placing cause_2 Knight :  :");

//	sleep_until (volume_test_players (cause_objcon_6), 1);

	print (":  : CAUSE 2 SPAWN :  :");

	ai_flee_target (sq_inf_cause_c_1, player0);
	ai_flee_target (sq_inf_cause_c_1, player1);
	ai_flee_target (sq_inf_cause_c_1, player2);
	ai_flee_target (sq_inf_cause_c_1, player3);

	thread (inifinitycauseway_broadswordassault_end());

	print (":  : Placing Bridge Knights :  :");

	ai_place_in_limbo (sq_inf_cause_c_3);
	ai_place (sq_inf_cause_c_4);

	sleep (30 * 3);

	wake (cause_4);
	
end

// =================================================================================================
// =================================================================================================
// UTILITY CAUSEWAY 3
// =================================================================================================
// =================================================================================================

script dormant cause_4

	sleep_until (volume_test_players (trig_cause_spawn_3), 1);

	wake (blip_elevator_breadcrumbs);

	print (":  : CAUSE 3 SPAWN :  :");

	if
		ai_living_count (cause_1) >= 1
	then
		ai_kill (cause_1);
	end

	if
		ai_living_count (cause_2) >= 10
	then
		ai_kill (cause_2);
	end

	garbage_collect_now();
	
	sleep_until (volume_test_players (trig_cause_spawn_4), 1);
	
	print (":  : CAUSE 4 SPAWN :  :");
	
	ai_place_in_limbo (sq_inf_cause_c_6);
	ai_place (sq_inf_cause_c_7);

	obj_state = 3;

	sleep (60);
	ai_place (cause_4);

	sleep_until (volume_test_players (trig_cause_spawn_5), 1);

	if
		ai_living_count (cause_2) >= 1
	then
		ai_erase (cause_2);
	end

	if
		ai_living_count (cause_3) >= 5
	then
		ai_erase (cause_3);
	end

	ai_place_in_limbo (sq_inf_cause_d_2);

	sleep_until (volume_test_players (trig_cause_spawn_6), 1);

	ai_place (sq_inf_cause_d_3);
	ai_place (sq_inf_cause_d_4);

//	sleep_until (volume_test_players (trig_cause_spawn_7)
	
//	OR`
	
//	ai_living_count (sg_cause_end) < 3);

//	sleep_until (current_zone_set_fully_active() == zs_infinity_ele, 1);

	sleep_until (volume_test_players (trig_cause_spawn_7), 1);

	print (":  : Door Opening :  :");

	print (":  : Zone Set Loaded :  :");

	ai_place (inf_cause_gr_kami);

	ai_grunt_kamikaze (inf_cause_gr_kami);

	sound_impulse_start ( 'sound\environments\solo\m060\amb_m60_final\amb_m60_mach\mach_m60_infinity_elevator_door_open', infinity_elevator_door_entry, 1 ); //AUDIO!
	infinity_elevator_door_entry->open_fast();

	wake (teleport_elevator);

end

// =================================================================================================
// =================================================================================================
// CAUSEWAY THREADS
// =================================================================================================
// =================================================================================================

script static void mechraise1()
		object_move_by_offset (mechsuit_1, 10, 0, 0, 2);
end

script static void mechraise2()
		object_move_by_offset (mechsuit_2, 10, 0, 0, 2);
end

script static void doorraise()
	object_can_take_damage (inf_inner_door_temp);
	sleep_until (object_get_health (inf_inner_door_temp) < 1);
	ai_place (cause_1);
	print (":  : Door destroyed :  :");
	f_unblip_flag (flag_destroy_door);
	//object_move_by_offset (inf_inner_door_temp, 6, 0, 0, 3);
end

script static void didact_fx
	sleep_until (volume_test_players (trig_didact_fx), 1);
	print (":  : Didact Scan :  :");
	effect_new (environments\solo\m60_rescue\fx\scans\didact_scan_infinity_cw.effect, fx_didact_scan); 
end

script static void causeobj

	//f_blip_flag (flag_destroy_door, "destroy");	
	
	cui_hud_set_new_objective (chtitleinfcause);

end

script dormant training_mech_1

	sleep (30 * 3);

	sleep_until (vehicle_test_seat (mechsuit_1, mantis_d) == 1);

	sleep (30 * 3);

	chud_show_screen_training (player0, mech_training_primary_fire);

	player_action_test_reset();
	
	sleep_until (player_action_test_primary_trigger()
	
			OR
			
			vehicle_test_seat (mechsuit_1, mantis_d) == 0);
			
	chud_show_screen_training (player0, "");

	sleep (30 * 3);
	
	mech_fire_training = 1;
	
	wake (training_mech_2);
	
end

script dormant training_mech_2

	sleep_until (mech_fire_training == 1);

	if
		vehicle_test_seat (mechsuit_1, mantis_d) == 1
	then
	
	sleep_until (vehicle_test_seat (mechsuit_1, mantis_d) == 1);
	
	sleep (30 * 2);
	
	chud_show_screen_training (player0, mech_training_secondary_fire);
	
	sleep_until (player_action_test_secondary_trigger()
			OR
			vehicle_test_seat (mechsuit_1, mantis_d) == 0);
			
	player_action_test_reset();
	sleep (30 * 3);		
	chud_show_screen_training (player0, "");
	
	else
	
		print (" :  : Player not in Mantis :  :");

	end
	
	sleep (30 * 3);
	
	mech_fire_training = 2;
	
	wake (training_mech_3);
		
end

script dormant training_mech_3

	sleep_until (mech_fire_training == 2);

	if
		vehicle_test_seat (mechsuit_1, mantis_d) == 1
	then
	
	sleep_until (vehicle_test_seat (mechsuit_1, mantis_d) == 1);
	
	chud_show_screen_training (player0, mech_training_secondary_chamber);
	
	sleep_until (
			player_action_test_secondary_trigger()
		OR
			vehicle_test_seat (mechsuit_1, mantis_d) == 0);
	
	player_action_test_reset();
	sleep (30 * 3);		
	chud_show_screen_training (player0, "");
	
	sleep (30 * 4);
	
	player_action_test_reset();
	sleep (5);

	else
	
		print (" :  : Player not in Mantis :  :");

	end

	mech_fire_training = 3;

	wake (melee_training);

end

script dormant melee_training

	sleep_until (mech_fire_training == 3);

	if
		vehicle_test_seat (mechsuit_1, mantis_d) == 1
	then
	
	sleep_until (vehicle_test_seat (mechsuit_1, mantis_d) == 1);
	
chud_show_screen_training (player0, mech_training_melee);
	
	sleep_until (
				player_action_test_melee()
		OR
				vehicle_test_seat (mechsuit_1, mantis_d) == 0);
	
	player_action_test_reset();
	sleep (30 * 3);		
	chud_show_screen_training (player0, "");

	end

end

script command_script cause_phase_1
	sleep_until (volume_test_players (cause_objcon_1), 1);
	cs_phase_to_point (cause_phase.p0);
end

script command_script cause_phase_2
	sleep_until (volume_test_players (cause_objcon_4), 1);
	sleep (random_range (10, 60));
	cs_phase_to_point (cause_phase.p1);
end

script command_script cause_phase_3
	sleep_until (volume_test_players (cause_objcon_4), 1);
	sleep (random_range (10, 60));
	cs_phase_to_point (cause_phase.p2);
end

script command_script cause_phase_4
	sleep_until (volume_test_players (cause_objcon_4), 1);
	sleep (random_range (10, 60));
	cs_phase_to_point (cause_phase.p3);
end

script command_script cause_phase_6
	sleep_until (volume_test_players (cause_objcon_4), 1);
	sleep (random_range (10, 60));
	cs_phase_to_point (cause_phase.p5);
end

script command_script dumb_turret_1
	sleep (5);
	AutomatedTurretActivate(ai_vehicle_get_from_spawn_point (sq_inf_cause_t_1.t3));
	ai_braindead (ai_current_actor, TRUE);
	sleep_until (volume_test_players (trig_cause_spawn_2)
		OR
	ai_living_count (sq_inf_cause_t_1.t2) < 1);
	ai_braindead (ai_current_actor, FALSE);
end

script command_script dumb_turret_2
	sleep (5);
	AutomatedTurretActivate(ai_vehicle_get_from_spawn_point (sq_inf_cause_c_t_2.t1));
	ai_braindead (ai_current_actor, TRUE);
	sleep_until (volume_test_players (trig_cause_spawn_3), 1);
	ai_braindead (ai_current_actor, FALSE);
end

//CAUSEWAY TURRETS
script command_script cause_t_1
	sleep (5);
	AutomatedTurretActivate(ai_vehicle_get (sq_inf_cause_t_1.t1));
end

script command_script cause_t_2
	sleep (5);
	AutomatedTurretActivate(ai_vehicle_get (sq_inf_cause_t_1.t2));
end

script command_script cause_t_3
	sleep (5);
	AutomatedTurretActivate(ai_vehicle_get (sq_inf_cause_c_t_2.t1));
end

script command_script cause_t_4
	sleep (5);
	AutomatedTurretActivate(ai_vehicle_get(sq_inf_cause_c_t_2.t2));
end

script command_script cause_t_5
	sleep (5);
	AutomatedTurretActivate(ai_vehicle_get (sq_inf_cause_c_t_2.t3));
end

script command_script cause_t_7
	sleep (5);
	AutomatedTurretActivate(ai_vehicle_get (sq_inf_cause_tur_2.t1));
end

script command_script cause_t_8
	sleep (5);
	AutomatedTurretActivate(ai_vehicle_get (sq_inf_cause_tur_2.t2));
end

script dormant damage_cause_1_r()

	sleep_until (object_get_health (cause_bridge_1_r) == 0);
	print (":  : Bridge 1-R destroyed :  :");
	damage_new ("objects\weapons\support_high\storm_rocket_launcher\projectiles\damage_effects\storm_rocket_launcher_rocket_explosion.damage_effect", cause_1_r);
	
end

script dormant damage_cause_2_r()

	sleep_until (object_get_health (cause_bridge_2_r) == 0);
	print (":  : Bridge 2-R destroyed :  :");
	damage_new ("objects\weapons\support_high\storm_rocket_launcher\projectiles\damage_effects\storm_rocket_launcher_rocket_explosion.damage_effect", cause_2_r);
	
end

script dormant blip_elevator_breadcrumbs()
	navpoint_set_next_improved(TRUE);
	f_blip_flag (flag_teleport_elevator_2, "default");
	sleep_until(volume_test_players(trigger_teleport), 1);
	f_unblip_flag (flag_teleport_elevator_2);
end

// =================================================================================================
// =================================================================================================
// FACILITIES
// =================================================================================================
// =================================================================================================



// =================================================================================================
// =================================================================================================
// FACILITIES ELEVATOR
// =================================================================================================
// =================================================================================================

// Fake the elevator ride
script dormant teleport_elevator
	
	effects_perf_armageddon = 0;
	
	//object_set_physics (temp_elevator, FALSE);
	sleep_until (volume_test_players (trigger_teleport), 1);
	
	zone_set_trigger_volume_enable ("zone_set:infinity_causeway:*", FALSE);
	zone_set_trigger_volume_enable ("begin_zone_set:infinity_causeway:*", FALSE);
	
	// Encounter 7 Music End
	
	thread (f_mus_m60_e07_finish());
	
	sound_impulse_start ( 'sound\environments\solo\m060\amb_m60_final\amb_m60_mach\mach_m60_infinity_elevator_door_close', infinity_elevator_door_entry, 1 ); //AUDIO!
	infinity_elevator_door_entry->close_fast();
	
	sleep (30 * 4);

	volume_teleport_players_not_inside_with_vehicles (trig_elevator_int, flag_teleport_elevator_2);
	
	thread (inifinitycauseway_defendthedeck());
	
	//thread (temp_ele());
	
	//device_set_position_track (infinity_elevator, "any:lift", 30);
	thread (infinity_elevator->f_animate());

	dprint ("elevator gooooo");
	
	garbage_collect_now();
	ai_erase_all();

	thread (f_m60_music_nothing()); // fade out mech music
	sleep (30 * 1); // give fade out some time before vo plays
	
	sleep (30 * 15);

	wake (outer_deck);

	sleep_until (volume_test_players (trig_elevator_top), 1);
	
	sleep (30);
	
	sound_impulse_start ( 'sound\environments\solo\m060\amb_m60_final\amb_m60_mach\mach_m60_infinity_elevator_door_open', infinity_elevator_door_exit, 1 ); //AUDIO!
	thread (infinity_elevator_door_exit->open_fast());
	
	thread (elevatorobj());

end

script static void deckobj1

	cui_hud_set_new_objective (chtitleinfdeck1);

end

script static void elevatorobj

	/*hud_play_global_animtion (screen_fade_out);
	cinematic_show_letterbox (TRUE);
	sleep_s (1.5);
	cinematic_set_title (deckletterbox);
	hud_stop_global_animtion (screen_fade_out);
	sleep_s (3.5);     
	hud_play_global_animtion (screen_fade_in);
	hud_stop_global_animtion (screen_fade_in);
	cinematic_show_letterbox (FALSE);*/
	
	f_chapter_title (deckletterbox, TRUE);

end

script static void cryptum_delete()

		sleep_until (object_valid (intro_cryptum) == TRUE);
	
		object_destroy (intro_cryptum);
	
		sleep (5);
		
	end
	
// =================================================================================================
// =================================================================================================
// INFINITY OUTER DECK
// =================================================================================================
// =================================================================================================


script dormant outer_deck
//	sleep_until (current_zone_set_fully_active() == zs_infinity_ele);
	zone_set_trigger_volume_enable ("zone_set:infinity_outer_deck:*", FALSE);
	zone_set_trigger_volume_enable ("begin_zone_set:infinity_outer_deck", FALSE);
	data_mine_set_mission_segment("m60_infinity_deck");
	//ai_lod_full_detail_actors (50);
	game_save_no_timeout();
	flock_create ("flocks_outer_deck_banshee");
	flock_create ("flocks_outer_deck_pelican");
	flock_create ("flocks_outer_deck_phantom");
	sleep (30);
	
	object_create_folder (deck_guns);	
	
	object_create_folder (deck_ships);
	
	sleep (5);
	
	object_create (backup_mech_1);
	object_create (backup_mech_2);
	
	thread (amb_move_group());
	object_cinematic_visibility (cruiser_deck, TRUE);
	object_cinematic_visibility (deck_cruiser_1, TRUE);
	object_cinematic_visibility (deck_cruiser_2, TRUE);
	object_cinematic_visibility (deck_cruiser_3, TRUE);
	object_cinematic_visibility (deck_cruiser_4, TRUE);
	object_cinematic_visibility (deck_cruiser_5, TRUE);
	object_cinematic_visibility (deck_cruiser_6, TRUE);
	object_cinematic_visibility (deck_cruiser_7, TRUE);
	object_cinematic_visibility (deck_cruiser_8, TRUE);
	obj_state = 0;
	//object_set_physics ((ai_vehicle_get_from_spawn_point (sq_flak_deck.t1)), FALSE);
	//object_set_physics ((ai_vehicle_get_from_spawn_point (sq_flak_deck.t2)), FALSE);
	//object_set_physics ((ai_vehicle_get_from_spawn_point (sq_flak_deck.t3)), FALSE);
	//object_set_physics ((ai_vehicle_get_from_spawn_point (sq_flak_deck.t4)), FALSE);
	ai_place (sq_aa_gun_1);
	ai_place (sq_aa_gun_2);
	ai_place (sq_aa_gun_3);
	unit_enter_vehicle_immediate ((ai_get_unit(sq_aa_gun_1.g1)), deck_gun_r, turret_seat);
	unit_enter_vehicle_immediate ((ai_get_unit(sq_aa_gun_1.g2)), deck_gun_m, turret_seat);
	unit_enter_vehicle_immediate ((ai_get_unit(sq_aa_gun_1.g3)), deck_gun_l, turret_seat);
	unit_enter_vehicle_immediate ((ai_get_unit(sq_aa_gun_3.g1)), deck_gun_mac, mac_d);
	object_set_physics (deck_gun_r, FALSE);
	object_set_physics (deck_gun_l, FALSE);
	object_set_physics (deck_gun_m, FALSE);
	//object_set_physics ((ai_vehicle_get_from_spawn_point (sq_aa_gun_2.g1)), FALSE);
	//object_set_physics ((ai_vehicle_get_from_spawn_point (sq_aa_gun_2.g2)), FALSE);
	ai_place (sq_deck_vig_1);
	ai_place (sq_deck_vig_2);
	ai_disregard (ai_actors (sq_flak_deck), TRUE);
	ai_disregard (ai_actors (sq_aa_gun_1), TRUE);
	ai_disregard (ai_actors (sq_aa_gun_3), TRUE);
	ai_disregard (ai_actors (sg_deck_init), TRUE);
	ai_braindead (sq_aa_gun_1, TRUE);
	object_set_scale (deck_gun_l, 1.5, 0);
	object_set_scale (deck_gun_m, 1.5, 0);
	object_set_scale (deck_gun_r, 1.5, 0);
//	object_set_scale ((ai_vehicle_get_from_spawn_point (sq_aa_gun_1.g1)), 1.5, 0);
//	object_set_scale ((ai_vehicle_get_from_spawn_point (sq_aa_gun_1.g2)), 1.5, 0);
//	object_set_scale ((ai_vehicle_get_from_spawn_point (sq_aa_gun_1.g3)), 1.5, 0);
//	object_set_physics (deck_gun_l, FALSE);
//	object_set_physics (deck_gun_m, FALSE);
//	object_set_physics (deck_gun_r, FALSE);
	ai_cannot_die (sq_aa_gun_1, TRUE);
	ai_cannot_die (sq_aa_gun_2, TRUE);
	ai_cannot_die (sq_aa_gun_3, TRUE);
	object_cannot_die (deck_gun_l, TRUE);
	object_cannot_die (deck_gun_m, TRUE);
	object_cannot_die (deck_gun_r, TRUE);
	object_cannot_die ((ai_vehicle_get_from_spawn_point (sq_aa_gun_2.g1)), TRUE);
	object_cannot_die ((ai_vehicle_get_from_spawn_point (sq_aa_gun_2.g2)), TRUE);
	object_cannot_die (deck_gun_mac, TRUE);
	ai_disregard (ai_actors (sq_aa_gun_2.g2), TRUE);
	object_set_scale ((ai_vehicle_get_from_spawn_point (sq_aa_gun_2.g2)), 3, 0);
	ai_disregard (ai_actors (sq_aa_gun_2.g1), TRUE);
	object_set_scale ((ai_vehicle_get_from_spawn_point (sq_aa_gun_2.g1)), 3, 0);
//	object_set_scale ((ai_vehicle_get_from_spawn_point (sq_aa_gun_3.g1)), 3, 0);
	object_set_scale (deck_gun_mac, 3, 0);
	
	sleep (5);
		
	sleep_until (volume_test_players (outer_door_trigger), 1);

	print (":  : Outer Door Trigger, door should close now :  :");

	sound_impulse_start ( 'sound\environments\solo\m060\amb_m60_final\amb_m60_mach\mach_m60_infinity_elevator_door_close', infinity_elevator_door_exit, 1 ); //AUDIO!
	infinity_elevator_door_exit->close_fast();
	
	sleep (30 * 3);
	
	zone_set_trigger_volume_enable ("begin_zone_set:infinity_outer_deck", TRUE);

	sleep_until (preparingToSwitchZoneSet() == FALSE, 1);
	
	zone_set_trigger_volume_enable ("zone_set:infinity_outer_deck:*", TRUE);

//	switch_zone_set ("infinity_outer_deck");
	object_destroy (intro_cryptum);
	sleep (5);

	sleep_until (current_zone_set_fully_active() == zs_outer_deck);

	g_pup_cryptum_show = pup_play_show(cryptum_fight);
	
	effect_new_on_object_marker_loop (	"environments\solo\m60_rescue\fx\didact\cin_m60_cryptum_ambient.effect", cruiser_deck, fx_ambient);
	ai_place (deck_1);

	sound_impulse_start ( 'sound\environments\solo\m060\amb_m60_final\amb_m60_mach\mach_m60_infinity_elevator_door_open', outer_deck_door_entry, 1 ); //AUDIO!
	outer_deck_door_entry->open_fast();

	thread (f_m60_music_deck());

	sleep_until (volume_test_players (trig_deck_vig), 1);
	
	//effect_attached_to_camera_new ( environments\solo\m60_rescue\fx\embers\embers_ambient_floating );
	
	sound_impulse_start ( 'sound\environments\solo\m060\amb_m60_final\amb_m60_mach\mach_m60_infinity_elevator_door_close', infinity_elevator_door_exit, 1 ); //AUDIO!
	infinity_elevator_door_exit->close_fast();
	
	// Encounter 8 Music Start
	
	thread (deck_door_close());
	
	//effect_new_on_object_marker ("environments\solo\m60_rescue\fx\didact\cin_m60_cryptum_scan.effect", cruiser_deck, fx_new_scan_A);
	effect_new_on_object_marker ("environments\solo\m60_rescue\fx\didact\cryptum_scan_with_straight_edge.effect", cruiser_deck, fx_new_scan_A);
	
	thread (f_mus_m60_e08_begin());
	
	wake (infinityouterdeck_start);
	thread (deckobj1());
	sleep (30 * 3);
	//ai_place (sq_deck_vig_banshee);
	
	//ai_disregard (ai_actors(sq_deck_drop_1_a), TRUE);
	//ai_disregard (ai_actors(sq_deck_drop_1_b), TRUE);
	
	game_save_no_timeout();
	
	//WAVE ONE
	
	thread (gunraise_1_1());
	thread (gunraise_1_2());
	thread (gunraise_1_3());
	
	sleep_until (deck_gun_count >= 1);
	
	wake (m60_infinityouterdeck_first_jammer);
	
	sleep (30 * 2);
	
	wake (banshee_deck_flood);
	
//	wake (f_dialog_m60_callout_banshees);
	
	if deck_gun_1_pos == 1
	then
		ai_place (sq_deck_phantom_r_2);
	else
		ai_place (sq_deck_phantom_l_2);
	end
	
	// Phantom Deck Count == 1
	
	sleep_until (deck_gun_count >= 2);
	
	wake (m60_infinityouterdeck_second_jammer);
	
	sleep_until (deck_gun_count >= 3);
	
	wake (m60_infinityouterdeck_third_jammer);
	
	sleep (30 * 5);
	
	//wake (m60_infinityouterdeck_first_gun_online);
	
	thread (chtitledeck2());
	
	wake (deck_wave_2);
	
end

	//GUNS RAISE
	
	//WAVE TWO
	
script dormant deck_wave_2

//	effect_new_on_object_marker ("environments\solo\m60_rescue\fx\didact\cin_m60_cryptum_scan.effect", cruiser_deck, fx_new_scan_A);

	g_cryptum_state = 1;
	
	obj_state = 1;
	
		if
			(volume_test_players (trig_drop_l))
		then
			ai_place (sq_deck_phantom_r);
			print (":  : Placing Right Phantom :  :");
			phantom_deck_r_b = TRUE;
		elseif
			(volume_test_players (trig_drop_r))
		then
			ai_place (sq_deck_phantom_l);
			print (":  : Placing Left Phantom :  :");
			phantom_deck_l_b = TRUE;
		end

//Phantom Deck Count == 2

sleep (30 * 10);
	
		if
			(phantom_deck_r_b == TRUE)
		then
			ai_place (sq_deck_phantom_l);
			print (":  : Placing Left Phantom - 2 :  :");
	//		sleep (30 * 15);
	//		ai_place (sq_deck_phantom_back_mid);
	//		print (":  : Back Mid - 2 :  :");
			phantom_deck_l_b = TRUE;
		elseif
			(phantom_deck_l_b == TRUE)
		then
			ai_place (sq_deck_phantom_r);
			print (":  : Placing Right Phantom - 2 :  :");
	//		sleep (30 * 15);
	//		ai_place (sq_deck_phantom_back_mid);
	//		print (":  : Back Mid - 2 :  :");
			phantom_deck_r_b = TRUE;
		end

//Phantom Deck Count == 3

	wake (banshee_deck_flood_2);
	
	wake (deck_wave_3);
	
	game_save_no_timeout();

end

	//WAVE THREE
	
script dormant deck_wave_3

	sleep_until (deck_phantom_count == 3
	
		OR
							
							ai_living_count (sg_phantom) < 1);

	print (":  : Wave 3 :  :");

//	effect_new_on_object_marker ("environments\solo\m60_rescue\fx\didact\cin_m60_cryptum_scan.effect", cruiser_deck, fx_new_scan_A);

	g_cryptum_state = 2;

	wake (m60_infinityouterdeck_guns_begin);

	if
		(volume_test_players (trig_deck_u_l))
		then
	//		sleep_until (ai_living_count (sg_deck_drop) < 2);
			sleep (30 * 7);
			ai_place (sq_deck_phantom_r_2);
			print (":  : Phantom Lower Right :  :");
			thread (missile_l());
		//	wake (m60_infinityouterdeck_second_gun_online);
//			ai_place (sq_deck_phantom_l);
//			print (":  : Phantom Upper Left :  :");
		elseif
			(volume_test_players (trig_deck_u_r))
		then
	//		sleep_until (ai_living_count (sg_deck_drop) < 2);
			sleep (30 * 7);
			ai_place (sq_deck_phantom_l_2);
			print (":  : Phantom Lower Left :  :");
			thread (missile_l());
		//	wake (m60_infinityouterdeck_second_gun_online);
//			ai_place (sq_deck_phantom_r);
//			print (":  : Phantom Upper Right :  :");
		elseif
			(volume_test_players (trig_deck_l_l))
		then
	//		sleep_until (ai_living_count (sg_deck_drop) < 2);
			sleep (30 * 7);
			ai_place (sq_deck_phantom_l);
			print (":  : Phantom Upper Right :  :");
			thread (missile_l());
//			wake (m60_infinityouterdeck_second_gun_online);
//			ai_place (sq_deck_phantom_r_2);
//			print (":  : Phantom Lower Left :  :");
		elseif
			(volume_test_players (trig_deck_l_r))
		then
//			sleep_until (ai_living_count (sg_deck_drop) < 2);
			sleep (30 * 7);
			ai_place (sq_deck_phantom_r);
			print (":  : Phantom Upper Left :  :");
			thread (missile_l());
//			wake (m60_infinityouterdeck_second_gun_online);
//			ai_place (sq_deck_phantom_l_2);
//			print (":  : Phantom Lower Right :  :");
		else
			ai_place (sq_deck_phantom_r);
			print (":  : Phantom Upper Left :  :");
			thread (missile_r());
			sleep (30 * 4);
	//		sleep_until (ai_living_count (sg_deck_drop) < 2);
			sleep (30 * 4);
			ai_place (sq_deck_phantom_l);
			print (":  : Phantom Upper Right :  :");
			thread (missile_l());
	end
	
	effect_new_on_object_marker ("environments\solo\m60_rescue\fx\didact\cryptum_scan_with_straight_edge.effect", cruiser_deck, fx_new_scan_A);
	
	sleep_until (ai_living_count (sg_phantom) < 2);

	wake (f_dialog_m60_callout_hold_them_off);
	print (":  : Cortana : Hold them off! :  :");
	
	wake (f_dialog_m60_callout_more_time);
	print (":  : Cortana : Just a few more minutes! :  :");

	if
		(volume_test_players (trig_deck_u_l))
		then
			ai_place (sq_deck_phantom_r_2);
			print (":  : Phantom Lower Right :  :");
			thread (missile_r());
			sleep (30 * 4);
	//		sleep_until (ai_living_count (sg_deck_drop) < 2);
			sleep (30 * 4);
			ai_place (sq_deck_phantom_l);
			print (":  : Phantom Upper Right :  :");
		elseif
			(volume_test_players (trig_deck_u_r))
		then
			ai_place (sq_deck_phantom_l_2);
			print (":  : Phantom Lower Right :  :");
			thread (missile_r());
			sleep (30 * 4);
	//		sleep_until (ai_living_count (sg_deck_drop) < 2);
			sleep (30 * 4);
			ai_place (sq_deck_phantom_r_2);
			print (":  : Phantom Lower Left :  :");
		elseif
			(volume_test_players (trig_deck_l_l))
		then
			ai_place (sq_deck_phantom_l);
			print (":  : Phantom Upper Right :  :");
			sleep (30 * 4);
	//		sleep_until (ai_living_count (sg_deck_drop) < 2);
			thread (missile_r());
			sleep (30 * 4);
			ai_place (sq_deck_phantom_r);
			print (":  : Phantom Upper Left :  :");
		elseif
			(volume_test_players (trig_deck_l_r))
		then
			ai_place (sq_deck_phantom_r);
			print (":  : Phantom Upper Left :  :");
			thread (missile_r());
			sleep (30 * 4);
	//		sleep_until (ai_living_count (sg_deck_drop) < 2);
			sleep (30 * 4);
			ai_place (sq_deck_phantom_l);
			print (":  : Phantom Upper Right :  :");
		else
			ai_place (sq_deck_phantom_r);
			print (":  : Phantom Upper Left :  :");
			thread (missile_r());
			sleep (30 * 4);
	//		sleep_until (ai_living_count (sg_deck_drop) < 2);
			sleep (30 * 4);
			ai_place (sq_deck_phantom_l);
			print (":  : Phantom Upper Right :  :");
	end

	effect_new_on_object_marker ("environments\solo\m60_rescue\fx\didact\cryptum_scan_with_straight_edge.effect", cruiser_deck, fx_new_scan_A);

	//Phantom Deck Count == 6

	sleep_until (deck_gun_count >= 5);
	
	print (":  : Gun Count = 5 :  :");

	sleep_until (ai_living_count (sg_phantom) < 1);

	sleep (30 * 5);
	
	deck_gun_count = (deck_gun_count + 1);
	
	//wake (m60_infinityouterdeck_final_wave);
	
	effect_new_on_object_marker ("environments\solo\m60_rescue\fx\didact\cryptum_scan_with_straight_edge.effect", cruiser_deck, fx_new_scan_A);
	
	print (":  : MAC active, Phantoms SHOULDN'T SPAWN ANYMORE :  : ");

	sleep_until (ai_living_count (sg_phantom) < 1);

	cui_hud_set_objective_complete (obj_complete);
	
	//effect_new_on_object_marker ("environments\solo\m60_rescue\fx\didact\cin_m60_cryptum_scan.effect", cruiser_deck, fx_new_scan_A);

	// Encounter 8 Music End
	
	thread (f_mus_m60_e08_finish());

	//sleep_until(dialog_id_played_check(l_dlg_infinityouterdeck_mac_ready), 1);

	//sleep (30 * 16);

	effect_new_on_object_marker ("environments\solo\m60_rescue\fx\didact\cryptum_scan_with_straight_edge.effect", cruiser_deck, fx_new_scan_A);

	if
		ai_living_count (sg_deck_drop) > 3
	then
		wake (f_dialog_m60_still_seeing_targets);
		print (":  : Cortana : I'm still seeing targets. :  :");
		wake (f_dialog_m60_callout_finish_them_off);
		print (":  : Cortana : Finish them off. :  :");
	else
		print (":  : All dead, no prompt needed :  :");
	end
	
	sleep_until (ai_living_count (sg_deck_drop) < 2);

	//wake (f_dialog_m60_callout_last_of_them);
	//print (" :  : Cortana : That's the last of them. :  :");
	
	wake (f_dialog_m60_callout_how_its_done);
	print (" :  : Cortana : That�s how it�s done. :  :");
	
	sleep_forever (banshee_deck_flood_2);

	wake (m60_infinityouterdeck_firing_controls);
	
	sleep (30 * 12);

	thread (chtitledeck3());

	object_create (rg_c_1);

	f_blip_object (rg_c_1, "activate");
	sleep_until (device_get_position (rg_c_1) != 0);
	
	pup_play_show (mac_gun_button);

	f_unblip_object (rg_c_1);

	//thread (missile_l_down());
	//thread (missile_r_down());
	
	//sleep (30 * 6);
	
	//ai_place (amb_deck_flak);
	
	flock_destroy ("flocks_outer_deck_banshee");
	flock_destroy ("flocks_outer_deck_phantom");
	
	thread (inifinityouterdeck_gun2());

	sleep (30 * 6);

	effect_new_on_object_marker ("environments\solo\m60_rescue\fx\didact\cryptum_scan_with_straight_edge.effect", cruiser_deck, fx_new_scan_A);

	wake (deck_wave_4);
	
end

script dormant deck_wave_4
	
	thread (deckobjcomplete());

	g_deck_gun=deck_gun_mac;
	
	g_cryptum_state = 3;
	
	sleep_until(not pup_is_playing(g_pup_cryptum_show),1);
	
	print (":  : Cryptum State = 3 :  :");
	
	pup_play_show(deck_fire);

	print (":  : Deck Show Playing :  :");

	thread (deck_gun_lower());

	thread (inifinityouterdeck_gun3());

	cs_run_command_script (sq_aa_gun_1.g1, cs_shoot_didact);
	cs_run_command_script (sq_aa_gun_1.g2, cs_shoot_didact);
	cs_run_command_script (sq_aa_gun_1.g3, cs_shoot_didact);
	cs_run_command_script (sq_aa_gun_2.g1, cs_shoot_didact);
	cs_run_command_script (sq_aa_gun_2.g2, cs_shoot_didact);
	
	objectives_finish (4);
	
	thread (deck_amb_crash_3());
	thread (deck_amb_crash_4());
	thread (deck_amb_crash_5());
	thread (deck_amb_crash_6());
	
	//cs_shoot (sq_aa_gun_2, TRUE, cruiser_deck);
	
end

// =================================================================================================
// =================================================================================================
// DECK THREADED SCRIPTS
// =================================================================================================
// =================================================================================================

script static void gunraise_1_1()

	print (":  : Waiting on AA_1 :  :");
	
	f_blip_object (comm_l, "neutralize");
	
	//sleep_until (device_get_position (aa_c_1) != 0);

	sleep_until (
		object_get_health (comm_l_1) <= 0
		OR
		object_get_health (comm_l_2) <= 0
		OR
		object_get_health (comm_l_3) <= 0
		OR
		object_get_health (comm_l_4) <= 0
		OR
		object_get_health (comm_l) <= 0
							, 1);

	sleep (30);

	deck_gun_count = (deck_gun_count + 1);
	
	deck_gun_1_pos = 1;

	f_unblip_object (comm_l);

	sleep (30);

	thread (plat_l());
	thread (gun_l());
	
	sleep (30 * 2);
	
	ai_braindead (sq_aa_gun_1.g3, FALSE);
	print ("GUN BARRELLS SPINNING!");

	ai_disregard (ai_actors(sq_deck_drop_1_a), TRUE);
	ai_disregard (ai_actors(sq_deck_drop_1_b), TRUE);
	ai_disregard (ai_actors(sq_deck_drop_2_a), TRUE);
	ai_disregard (ai_actors(sq_deck_drop_2_b), TRUE);
	ai_disregard (ai_actors(sq_deck_drop_3_a), TRUE);
	ai_disregard (ai_actors(sq_deck_drop_3_b), TRUE);
	ai_disregard (ai_actors(sq_deck_drop_4_a), TRUE);
	ai_disregard (ai_actors(sq_deck_drop_4_b), TRUE);
	ai_disregard (ai_actors(sq_deck_drop_5_a), TRUE);
	ai_disregard (ai_actors(sq_deck_drop_5_b), TRUE);
	
//	ai_place (sq_deck_amb_a_left);
	
	sleep (30 * 3);
	
	wake (deck_flak_fx_l);
	
	thread (flak_gun_1_a());
	
	sleep (30 * 3);
	
	thread (flak_gun_1_b());
	
end

script static void gunraise_1_2()
	
	f_blip_object (comm_r, "neutralize");
	
	//sleep_until (device_get_position (aa_c_3) != 0);
	
		sleep_until (
		object_get_health (comm_r_1) <= 0
		OR
		object_get_health (comm_r_2) <= 0
		OR
		object_get_health (comm_r_3) <= 0
		OR
		object_get_health (comm_r_4) <= 0
		OR
		object_get_health (comm_r) <= 0
							, 1);
	
	sleep (30);
	
	deck_gun_count = (deck_gun_count + 1);
	
	sleep (30);
	
	f_unblip_object (comm_r);
	
	thread (plat_r());
	thread (gun_r());
	
	sleep (30 * 2);
	
	ai_braindead (sq_aa_gun_1.g1, FALSE);
	print ("GUN BARRELLS SPINNING!");

	ai_disregard (ai_actors(sq_deck_drop_1_a), TRUE);
	ai_disregard (ai_actors(sq_deck_drop_1_b), TRUE);
	ai_disregard (ai_actors(sq_deck_drop_2_a), TRUE);
	ai_disregard (ai_actors(sq_deck_drop_2_b), TRUE);
	ai_disregard (ai_actors(sq_deck_drop_3_a), TRUE);
	ai_disregard (ai_actors(sq_deck_drop_3_b), TRUE);
	ai_disregard (ai_actors(sq_deck_drop_4_a), TRUE);
	ai_disregard (ai_actors(sq_deck_drop_4_b), TRUE);
	ai_disregard (ai_actors(sq_deck_drop_5_a), TRUE);
	ai_disregard (ai_actors(sq_deck_drop_5_b), TRUE);

//	ai_place (sq_deck_amb_a_right);
	
	sleep (30 * 3);
	
	wake (deck_flak_fx_r);
	
	thread (flak_gun_2_a());
	
	sleep (30 * 3);
	
	thread (flak_gun_2_b());
	
end

script static void gunraise_1_3()
	
	f_blip_object (comm_m, "neutralize");
	
	//sleep_until (device_get_position (aa_c_2) != 0);
	
		sleep_until (
		object_get_health (comm_m_1) <= 0
		OR
		object_get_health (comm_m_2) <= 0
		OR
		object_get_health (comm_m_3) <= 0
		OR
		object_get_health (comm_m_4) <= 0
		OR
		object_get_health (comm_m) <= 0
							, 1);
	
	sleep (30);
	
	deck_gun_count = (deck_gun_count + 1);
	
	sleep (30);
	
	f_unblip_object (comm_m);
	
	thread (plat_m());
	thread (gun_m());
	
	sleep (30 * 2);
	
	ai_braindead (sq_aa_gun_1.g2, FALSE);
	print ("GUN BARRELLS SPINNING!");

	ai_disregard (ai_actors(sq_deck_drop_1_a), TRUE);
	ai_disregard (ai_actors(sq_deck_drop_1_b), TRUE);
	ai_disregard (ai_actors(sq_deck_drop_2_a), TRUE);
	ai_disregard (ai_actors(sq_deck_drop_2_b), TRUE);
	ai_disregard (ai_actors(sq_deck_drop_3_a), TRUE);
	ai_disregard (ai_actors(sq_deck_drop_3_b), TRUE);
	ai_disregard (ai_actors(sq_deck_drop_4_a), TRUE);
	ai_disregard (ai_actors(sq_deck_drop_4_b), TRUE);
	ai_disregard (ai_actors(sq_deck_drop_5_a), TRUE);
	ai_disregard (ai_actors(sq_deck_drop_5_b), TRUE);

//	ai_place (sq_deck_amb_a_mid);

	sleep (30 * 3);
	
	wake (deck_flak_fx_m);

	thread (flak_gun_3_a());
	
	sleep (30 * 3);
	
	thread (flak_gun_3_b());
	
	sleep (30);
	
	thread (flak_gun_3_c());


end

script static void deck_door_close()
	sleep_until (volume_test_players (trig_deck_exit), 1);
	sound_impulse_start ( 'sound\environments\solo\m060\amb_m60_final\amb_m60_mach\mach_m60_infinity_elevator_door_close', outer_deck_door_entry, 1 ); //AUDIO!
	outer_deck_door_entry->close_fast();
	volume_teleport_players_inside_with_vehicles (trig_outer_airlock, flag_teleport_deck);
	
end

script static void missile_l
	
	ai_braindead (sq_aa_gun_2.g2, FALSE);
	print ("MISSILES!");

	sound_impulse_start ( 'sound\environments\solo\m060\amb_m60_final\amb_m60_mach\mach_m60_battery_power_on', (ai_vehicle_get_from_spawn_point (sq_aa_gun_2.g2)), 1 ); 

	deck_gun_2_pos = (deck_gun_2_pos + 1);
	
	deck_gun_count = (deck_gun_count + 1);
	
	sleep (30 * 3);
	
	ai_place (sq_aa_gun_amb_1);
	
end

script static void missile_r
	
	ai_braindead (sq_aa_gun_2.g1, FALSE);
	print ("MISSILES!");
	
	sound_impulse_start ( 'sound\environments\solo\m060\amb_m60_final\amb_m60_mach\mach_m60_battery_power_on', (ai_vehicle_get_from_spawn_point (sq_aa_gun_2.g1)), 1 ); 
	
	deck_gun_count = (deck_gun_count + 1);
	
	sleep (30 * 5);
	
	ai_place (sq_aa_gun_amb_2);
	
end

script dormant banshee_deck_flood
	repeat
			begin_random_count(2)
				
				begin
					sleep_until (ai_living_count (sg_banshee) < 1);
					print (":  : Banshee Flood R :  :");
					ai_place (sq_deck_ban_f_r);
					sleep_until (ai_living_count (sq_deck_ban_f_r) < 1);
					vehicle_set_player_interaction (ai_vehicle_get_from_spawn_point(sq_deck_ban_f_r.p1), banshee_b_d_l, FALSE, FALSE);
					vehicle_set_player_interaction (ai_vehicle_get_from_spawn_point(sq_deck_ban_f_r.p1), banshee_b_d_r, FALSE, FALSE);
					sleep (random_range (150, 210));
				end
				
				begin
					sleep_until (ai_living_count (sg_banshee) < 1);
					ai_place (sq_deck_ban_f_l);
					print (":  : Banshee Flood L :  :");
					sleep_until (ai_living_count (sq_deck_ban_f_l) < 1);
					vehicle_set_player_interaction (ai_vehicle_get_from_spawn_point(sq_deck_ban_f_l.p1), banshee_b_d_l, FALSE, FALSE);
					vehicle_set_player_interaction (ai_vehicle_get_from_spawn_point(sq_deck_ban_f_l.p1), banshee_b_d_r, FALSE, FALSE);
					sleep (random_range (150, 210));
				end
		end
					
	until (deck_gun_count >= 3);
	
print (":  : Done! :  :");

end

script dormant banshee_deck_flood_2

	sleep_forever (banshee_deck_flood);

	sleep_until (ai_living_count (sg_banshee) < 1);

	ai_place (sq_deck_ban_f_l_2);
	ai_place (sq_deck_ban_f_r_2);

	repeat
			begin_random_count(2)
				
				begin
					sleep_until (deck_gun_count < 6);
					sleep_until (ai_living_count (sg_banshee) < 1);
					ai_place (sq_deck_ban_f_r_2);
					print (":  : Banshee Flood R - 2 :  :");
					vehicle_set_player_interaction (ai_vehicle_get_from_spawn_point(sq_deck_ban_f_r_2.p1), banshee_b_d_l, FALSE, FALSE);
					vehicle_set_player_interaction (ai_vehicle_get_from_spawn_point(sq_deck_ban_f_r_2.p1), banshee_b_d_r, FALSE, FALSE);
					sleep (random_range (120, 240));
				end
				
				begin
					sleep_until (deck_gun_count < 6);
					sleep_until (ai_living_count (sg_banshee) < 1);
					ai_place (sq_deck_ban_f_l_2);
					print (":  : Banshee Flood L - 2 :  :");
					vehicle_set_player_interaction (ai_vehicle_get_from_spawn_point(sq_deck_ban_f_l_2.p1), banshee_b_d_l, FALSE, FALSE);
					vehicle_set_player_interaction (ai_vehicle_get_from_spawn_point(sq_deck_ban_f_l_2.p1), banshee_b_d_r, FALSE, FALSE);
					sleep (random_range (120, 240));
				end
		end
					
	until (deck_gun_count >= 6);
	
print (":  : Banshee Flood Done! :  :");

end

script static void banshee_deck_flood_3
	repeat
			sleep_until (ai_living_count (sg_banshee) < 1);
			print (":  : Banshee Flood All :  :");
			ai_place (sq_deck_ban_f_r);
			vehicle_set_player_interaction (ai_vehicle_get_from_spawn_point(sq_deck_ban_f_r.p1), banshee_b_d_l, FALSE, FALSE);
			vehicle_set_player_interaction (ai_vehicle_get_from_spawn_point(sq_deck_ban_f_r.p1), banshee_b_d_r, FALSE, FALSE);
			sleep_until (ai_strength (sg_banshee) < .6);
			sleep (random_range (90, 120));
			print (":  : Banshee Flood All :  :");
			ai_place (sq_deck_ban_f_l);
			vehicle_set_player_interaction (ai_vehicle_get_from_spawn_point(sq_deck_ban_f_l.p1), banshee_b_d_l, FALSE, FALSE);
			vehicle_set_player_interaction (ai_vehicle_get_from_spawn_point(sq_deck_ban_f_l.p1), banshee_b_d_r, FALSE, FALSE);
			sleep_until (ai_strength (sg_banshee) < .4);
			sleep (random_range (30, 90));
			print (":  : Banshee Flood All :  :");
			ai_place (sq_deck_ban_r_mid);
			vehicle_set_player_interaction (ai_vehicle_get_from_spawn_point(sq_deck_ban_r_mid.p1), banshee_b_d_l, FALSE, FALSE);
			vehicle_set_player_interaction (ai_vehicle_get_from_spawn_point(sq_deck_ban_r_mid.p1), banshee_b_d_r, FALSE, FALSE);
	until (deck_gun_count >= 6);
end

script dormant phantom_deck_flood

	repeat
	
		begin_random_count(3)
		
			begin
				sleep_until (deck_gun_count < 5);
				
				print (":  : Phantom Flood 1 :  :");

				sleep_until (ai_living_count (sg_phantom_fodder) < 1);
				
				ai_place (sq_deck_phantom_fodder_l_1);
				
				sleep (30);
				
				sleep_until (ai_living_count (sg_phantom_fodder) < 1);
										
				sleep (random_range (60, 120));
				
			end
			
			begin
				sleep_until (deck_gun_count < 5);
				
				print (":  : Phantom Flood 1 :  :");

				sleep_until (ai_living_count (sg_phantom_fodder) < 1);
				
				ai_place (sq_deck_phantom_fodder_l_2);
				
				sleep (30);
				
				sleep_until (ai_living_count (sg_phantom_fodder) < 1);
										
				sleep (random_range (60, 120));
			end
			
			begin
				sleep_until (deck_gun_count < 5);
				
				print (":  : Phantom Flood 1 :  :");

				sleep_until (ai_living_count (sg_phantom_fodder) < 1);
				
				ai_place (sq_deck_phantom_fodder_l_3);
				
				sleep (30);
				
				sleep_until (ai_living_count (sg_phantom_fodder) < 1);
										
				sleep (random_range (60, 120));
			end
	
		end
	
	until (deck_gun_count >= 6);

	print (":  : Phantom Flood 1 Done! :  :");
	
	sleep_forever (phantom_deck_flood);
	
end

script dormant phantom_deck_flood_2

	repeat
	
		begin_random_count(2)
		
			begin
				sleep_until (deck_gun_count < 6);
				print (":  : Phantom Flood 2 - 1 :  :");
				ai_place (sq_deck_phantom_r_2);
				sleep (30 * 10);
					if
						(ai_living_count (sq_deck_phantom_back_mid) < 1)
					then
						ai_place (sq_deck_phantom_back_mid);
						print (":  : Phantom Flood 2 - 1 :  :");
					else
						ai_place (sq_deck_phantom_l);
						print (":  : Phantom Flood 2 - 1 :  :");
					end
				sleep_until (ai_living_count (sg_phantom) < 2
				AND ai_living_count (sg_deck_drop) < 13);
				sleep (random_range (90, 120));
			end
			
			begin
				sleep_until (deck_gun_count < 6);
				print (":  : Phantom Flood 2 :  :");
				ai_place (sq_deck_phantom_l_2);
				sleep (30 * 10);
					if
						(ai_living_count (sq_deck_phantom_back_mid) < 1)
					then
						ai_place (sq_deck_phantom_back_mid);
						print (":  : Phantom Flood 2 - 2 :  :");
					else
						ai_place (sq_deck_phantom_r);
						print (":  : Phantom Flood 2 - 2 :  :");
					end
				sleep_until (ai_living_count (sg_phantom) < 2
				AND ai_living_count (sg_deck_drop) < 13);
				sleep (random_range (90, 120));
			end
			
		end
	
	until (deck_gun_count >= 6);

	print (":  : Phantom Flood 2 Done! :  :");
	
	sleep_forever (phantom_deck_flood_2);
	
end

script static void plat_l()
	sound_impulse_start ( 'sound\environments\solo\m060\amb_m60_final\amb_m60_mach\mach_m60_gun_turret_small_platform_rise', gun_plat_l, 1 ); //AUDIO!
	object_move_by_offset (gun_plat_l, 3, 0, 0, 4);
end

script static void plat_m()
	sound_impulse_start ( 'sound\environments\solo\m060\amb_m60_final\amb_m60_mach\mach_m60_gun_turret_small_platform_rise', gun_plat_m, 1 ); //AUDIO!
	object_move_by_offset (gun_plat_m, 2, 0, 0, 2);
end

script static void plat_r()
	sound_impulse_start ( 'sound\environments\solo\m060\amb_m60_final\amb_m60_mach\mach_m60_gun_turret_small_platform_rise', gun_plat_r, 1 ); //AUDIO!
	object_move_by_offset (gun_plat_r, 3, 0, 0, 4);
end

script static void gun_l()
	object_move_by_offset (deck_gun_l, 3, 0, 0, 4);
end

script static void gun_r()
	object_move_by_offset (deck_gun_r, 3, 0, 0, 4);
end

script static void gun_m()
	object_move_by_offset (deck_gun_m, 2, 0, 0, 2);
end

script static void plat_l_lower()
	object_move_by_offset (gun_plat_l, 2, 0, 0, -4);
end

script static void plat_m_lower()
	object_move_by_offset (gun_plat_m, 2, 0, 0, -2);
end

script static void plat_r_lower()
	object_move_by_offset (gun_plat_r, 2, 0, 0, -4);
end

script static void gun_l_lower()
	object_move_by_offset (deck_gun_l, 2, 0, 0, -4);
end

script static void gun_r_lower()
	object_move_by_offset (deck_gun_r, 2, 0, 0, -4);
end

script static void gun_m_lower()
	object_move_by_offset (deck_gun_m, 2, 0, 0, -2);
end

script static void deck_gun_lower()
	thread (plat_l_lower());
	thread (plat_m_lower());
	thread (plat_r_lower());
	thread (gun_l_lower());
	thread (gun_r_lower());
	thread (gun_m_lower());
end

script static void mac_raise()

	sleep_until (ai_living_count (sg_phantom) < 1);

	//thread(mac_plat());
	thread(mac_gun());
//	thread(mac_door());
end

script static void mac_gun()
//	ai_place (sq_aa_gun_3);
//	object_move_by_offset ((ai_vehicle_get_from_spawn_point (sq_aa_gun_3.g1)), 14, 0, 0, 17);
	cannon_fire = 2;
end

script static void deck_amb_move_1()
	object_move_to_point (deck_cruiser_1, 100, deck_ps_travel.p0);
end

script static void deck_amb_move_2()
	object_move_to_point (deck_cruiser_2, 125, deck_ps_travel.p2);
end

script static void deck_amb_move_3()
	object_move_to_point (deck_cruiser_3, 60, deck_ps_travel.p4);
end

script static void deck_amb_move_4()
	object_move_to_point (deck_cruiser_5, 80, deck_ps_travel.p1);
end

script static void deck_amb_move_5()
	object_move_to_point (deck_cruiser_6, 100, deck_ps_travel.p3);
end

script static void deck_amb_move_6()
	object_move_to_point (deck_cruiser_7, 150, deck_ps_travel.p5);
end

script static void deck_amb_move_7()
	object_move_to_point (deck_cruiser_8, 125, deck_ps_travel.p6);
end

script static void amb_move_group()
	
	thread (deck_amb_move_1());
	thread (deck_amb_move_2());
	thread (deck_amb_move_3());
	thread (deck_amb_move_4());
	thread (deck_amb_move_5());
	thread (deck_amb_move_6());
	thread (deck_amb_move_7());

end

//CRUISER CRASH ONE

script static void deck_amb_rotate_1()
	object_rotate_to_point (deck_cruiser_1, 30, 30, 30, deck_ps_travel.r1);
end

script static void deck_amb_fall_1()
	thread (deck_amb_fall_1_fx());
	sleep (30 * 2);
	sound_impulse_start('sound\environments\solo\m060\events\amb_m60_railgun_hit_cruiser_1', deck_cruiser_1, 1);
	object_move_to_point (deck_cruiser_1, 0, deck_ps_travel.p0);
//	effect_new_at_ai_point ("environments\solo\m10_crash\fx\explosions\explosion_cov_cruiser.effect", deck_ps_travel.p0);
	object_move_to_point (deck_cruiser_1, 30, deck_ps_travel.f1);
//	effect_new_at_ai_point ("environments\solo\m10_crash\fx\explosions\beac_cruiser_explode_lg_01.effect", deck_ps_travel.f1);
	object_move_to_point (deck_cruiser_1, 120, deck_ps_travel.f15);
end

script static void deck_amb_crash_1
	thread (deck_amb_rotate_1());
	thread (deck_amb_fall_1());
end

script static void deck_amb_fall_1_fx()
	
	effect_new_on_object_marker ("environments\solo\m60_rescue\fx\explosion\cruiser_explode_lg_02.effect", deck_cruiser_1, fx_damage_02);
	print (":  : Boom Cruiser 1-1 :  :");
	sleep (30 * 3);
	effect_new_on_object_marker_loop ("environments\solo\m60_rescue\fx\explosion\cruiser_damage_smoke.effect", deck_cruiser_1, fx_smoke_02);
	print (":  : Boom Cruiser 1-2 :  :");
	sleep (30 * 3);
	effect_new_on_object_marker ("environments\solo\m60_rescue\fx\explosion\cruiser_explosion_mini_covenant.effect", deck_cruiser_1, cruiser_turret_f);
	print (":  : Boom Cruiser 1-3 :  :");
	sleep (30);
	effect_new_on_object_marker ("environments\solo\m60_rescue\fx\explosion\cruiser_explosion_mini_covenant.effect", deck_cruiser_1, cruiser_turret_e);
	print (":  : Boom Cruiser 1-4 :  :");
	sleep (15);
	effect_new_on_object_marker ("environments\solo\m60_rescue\fx\explosion\cruiser_explosion_mini_covenant.effect", deck_cruiser_1, cruiser_turret_d);
	print (":  : Boom Cruiser 1-5 :  :");
	sleep (5);
	effect_new_on_object_marker ("environments\solo\m60_rescue\fx\explosion\cruiser_explosion_mini_covenant.effect", deck_cruiser_1, cruiser_turret_c);
	print (":  : Boom Cruiser 1-6 :  :");
	sleep (30 * 5);
	effect_new_on_object_marker ("environments\solo\m60_rescue\fx\explosion\cruiser_explode_lg_02.effect", deck_cruiser_1, fx_damage_01);
	print (":  : Boom Cruiser 1-7 :  :");
	sleep (30 * 3);
	effect_new_on_object_marker_loop ("environments\solo\m60_rescue\fx\explosion\cruiser_damage_smoke.effect", deck_cruiser_1, fx_smoke_01);
	
end

//CRUISER CRASH TWO

script static void deck_amb_rotate_2()
	object_rotate_to_point (deck_cruiser_2, 40, 40, 40, deck_ps_travel.r2);
end

script static void deck_amb_fall_2()
	thread (deck_amb_fall_2_fx());
	
	sound_impulse_start('sound\environments\solo\m060\events\amb_m60_railgun_hit_cruiser_2', deck_cruiser_2, 1);
	object_move_to_point (deck_cruiser_2, 0, deck_ps_travel.p2);
	sleep (30 * 3);
	object_move_to_point (deck_cruiser_2, 20, deck_ps_travel.f2);
	object_move_to_point (deck_cruiser_2, 90, deck_ps_travel.f25);
end

script static void deck_amb_crash_2
	thread (deck_amb_rotate_2());
	thread (deck_amb_fall_2());
end

script static void deck_amb_fall_2_fx()

	
	effect_new_on_object_marker ("environments\solo\m60_rescue\fx\explosion\cruiser_explode_lg_02.effect", deck_cruiser_2, fx_damage_02);
	print (":  : Boom Cruiser 2-1 :  :");
	sleep (30 * 3);
	effect_new_on_object_marker_loop ("environments\solo\m60_rescue\fx\explosion\cruiser_damage_smoke.effect", deck_cruiser_2, fx_smoke_02);
	print (":  : Boom Cruiser 2-2 :  :");
	sleep (30 * 3);
	effect_new_on_object_marker ("environments\solo\m60_rescue\fx\explosion\cruiser_explosion_mini_covenant.effect", deck_cruiser_2, cruiser_turret_h);
	print (":  : Boom Cruiser 2-3 :  :");
	sleep (30);
	effect_new_on_object_marker ("environments\solo\m60_rescue\fx\explosion\cruiser_explosion_mini_covenant.effect", deck_cruiser_2, cruiser_turret_l);
	print (":  : Boom Cruiser 2-4 :  :");
	sleep (15);
	effect_new_on_object_marker ("environments\solo\m60_rescue\fx\explosion\cruiser_explosion_mini_covenant.effect", deck_cruiser_2, cruiser_turret_k);
	print (":  : Boom Cruiser 2-5 :  :");
	sleep (5);
	effect_new_on_object_marker ("environments\solo\m60_rescue\fx\explosion\cruiser_explosion_mini_covenant.effect", deck_cruiser_2, cruiser_turret_j);
	print (":  : Boom Cruiser 2-6 :  :");
	sleep (30 * 5);
	effect_new_on_object_marker ("environments\solo\m60_rescue\fx\explosion\cruiser_explode_lg_02.effect", deck_cruiser_2, fx_damage_01);
	print (":  : Boom Cruiser 2-7 :  :");
	sleep (30 * 3);
	effect_new_on_object_marker_loop ("environments\solo\m60_rescue\fx\explosion\cruiser_damage_smoke.effect", deck_cruiser_2, fx_smoke_01);
	

end

//CRUISER CRASH THREE

script static void deck_amb_fall_3
	object_move_to_point (deck_cruiser_3, 120, deck_ps_travel.f3);
end

script static void deck_amb_rotate_3()
	object_rotate_to_point (deck_cruiser_3, 60, 60, 60, deck_ps_travel.r3);
end

script static void deck_amb_crash_3()
	thread (deck_amb_rotate_3());
	thread (deck_amb_fall_3());
end

//CRUISER CRASH FOUR

script static void deck_amb_fall_4
	object_move_to_point (deck_cruiser_4, 60, deck_ps_travel.f4);
end

script static void deck_amb_rotate_4()
	object_rotate_to_point (deck_cruiser_4, 20, 20, 20, deck_ps_travel.r4);
end

script static void deck_amb_crash_4()
	thread (deck_amb_rotate_4());
	thread (deck_amb_fall_4());
end

//CRUISER CRASH FIVE

script static void deck_amb_fall_5
	object_move_to_point (deck_cruiser_5, 30, deck_ps_travel.f5);
end

script static void deck_amb_rotate_5()
	object_rotate_to_point (deck_cruiser_5, 20, 20, 20, deck_ps_travel.r5);
end

script static void deck_amb_crash_5()
	thread (deck_amb_rotate_5());
	thread (deck_amb_fall_5());
end

//CRUISER CRASH SIX

script static void deck_amb_fall_6
	object_move_to_point (deck_cruiser_6, 30, deck_ps_travel.f6);
end

script static void deck_amb_rotate_6()
	object_rotate_to_point (deck_cruiser_6, 20, 20, 20, deck_ps_travel.r6);
end

script static void deck_amb_crash_6()
	thread (deck_amb_rotate_6());
	thread (deck_amb_fall_6());
end

script static void chtitledeck2

	cui_hud_set_objective_complete (obj_complete);
	
	sleep (30 * 5);
	
	cui_hud_set_new_objective  (chtitleinfdeck2);
		
end

script static void chtitledeck3

	cui_hud_set_new_objective (chtitleinfdeck3);
		
end

script static void deckobjcomplete
	
	cui_hud_set_objective_complete (obj_complete);
	sleep (30 * 3);

end

// =================================================================================================
// =================================================================================================
// DECK COMMAND SCRIPTS
// =================================================================================================
// =================================================================================================

script command_script deck_drop_1_r
	print (":  : Deck Phantom 1 Right :  :");
	vehicle_ignore_damage_knockback (ai_vehicle_get(ai_current_actor),true);
	//	cs_vehicle_speed (.75);
	f_load_phantom (sq_deck_phantom_r, "dual", sq_deck_drop_1_a, sq_deck_drop_1_b, none, none);
//	ai_disregard ((ai_current_actor), TRUE);
	cs_fly_by (deck_drop_1_r.p0);
	cs_fly_by (deck_drop_1_r.p1);
	sound_impulse_start('sound\environments\solo\m060\events\amb_m60_phantom_swoop_right', sq_deck_phantom_r, 1);
	cs_fly_to_and_face (deck_drop_1_r.p2, deck_drop_1_r.p3);
	sleep (30 * 3);
	f_unload_phantom (sq_deck_phantom_r, "dual");
	sleep_until (unit_in_vehicle (ai_get_unit (sq_deck_drop_1_a)) == FALSE
								AND
							unit_in_vehicle (ai_get_unit (sq_deck_drop_1_b)) == FALSE);
	print (":  : Units Out Of Phantom :  :");
	ai_disregard (ai_actors(sq_deck_drop_1_a), TRUE);
	ai_disregard (ai_actors(sq_deck_drop_1_b), TRUE);
	sleep (30 * 5);
	if
		deck_gun_count >= 5
	then
		sleep (30 * 5);
		//sleep_until ((object_get_health (ai_vehicle_get_from_spawn_point (sq_deck_phantom_r.driver))) < .5);
		cs_vehicle_speed (.3);
		cs_fly_to (deck_drop_1_r.p4);
		deck_phantom_count = (deck_phantom_count + 1);
		cs_fly_to (deck_drop_1_r.p5);
		cs_fly_to (deck_drop_1_r.p6);
		ai_erase (sq_deck_phantom_r);
	else
//	ai_disregard ((ai_current_actor), FALSE);
		cs_fly_to (deck_drop_1_r.p4);
		deck_phantom_count = (deck_phantom_count + 1);
		cs_fly_to (deck_drop_1_r.p5);
		cs_fly_to (deck_drop_1_r.p6);
		ai_erase (sq_deck_phantom_r);
	end
end

script command_script deck_drop_1_l
	print (":  : Deck Phantom 1 Left :  :");
	vehicle_ignore_damage_knockback(ai_vehicle_get(ai_current_actor),true);
	//	cs_vehicle_speed (.75);
	f_load_phantom (sq_deck_phantom_l, "dual", sq_deck_drop_2_a, sq_deck_drop_2_b, none, none);
//	ai_disregard ((ai_current_actor), TRUE);
	cs_fly_by (deck_drop_1_l.p0);
	cs_fly_by (deck_drop_1_l.p1);
	sound_impulse_start('sound\environments\solo\m060\events\amb_m60_phantom_swoop_left', sq_deck_phantom_l, 1);
 	cs_fly_to_and_face (deck_drop_1_l.p3, deck_drop_1_l.p2);
	f_unload_phantom (sq_deck_phantom_l, "dual");
	sleep_until (unit_in_vehicle (ai_get_unit (sq_deck_drop_2_a)) == FALSE
								AND
							unit_in_vehicle (ai_get_unit (sq_deck_drop_2_b)) == FALSE);
	print (":  : Units Out Of Phantom :  :");
	ai_disregard (ai_actors(sq_deck_drop_2_a), TRUE);
	ai_disregard (ai_actors(sq_deck_drop_2_b), TRUE);
	if
		deck_gun_count >= 5
	then
		sleep (30 * 5);
	//	sleep_until ((object_get_health (ai_vehicle_get_from_spawn_point (sq_deck_phantom_l.driver))) < .75);
		cs_vehicle_speed (.3);
		sleep (30 * 3);
		cs_fly_by (deck_drop_1_l.p4);
		deck_phantom_count = (deck_phantom_count + 1);
		cs_fly_by (deck_drop_1_l.p5);
		cs_fly_by (deck_drop_1_l.p6);
		ai_erase (sq_deck_phantom_l);
	else
		sleep (30 * 3);
		cs_fly_by (deck_drop_1_l.p4);
		deck_phantom_count = (deck_phantom_count + 1);
		cs_fly_by (deck_drop_1_l.p5);
		cs_fly_by (deck_drop_1_l.p6);
		ai_erase (sq_deck_phantom_l);
	end
end

script command_script deck_drop_2_l
	vehicle_ignore_damage_knockback(ai_vehicle_get(ai_current_actor),true); 
	f_load_phantom (sq_deck_phantom_l_2, "dual", sq_deck_drop_3_a, sq_deck_drop_3_b, none, none);
	//cs_vehicle_speed (.75);
//	ai_disregard ((ai_current_actor), TRUE);
	//cs_fly_by (deck_drop_2_l.p0);
	cs_fly_by (deck_drop_2_l.p1);
	//cs_fly_by (deck_drop_2_l.p2);
	cs_fly_by (deck_drop_2_l.p3);
	//cs_fly_by (deck_drop_2_l.p4);
	deck_phantom_count = (deck_phantom_count + 1);
	cs_fly_by (deck_drop_2_l.p5);
	sound_impulse_start('sound\environments\solo\m060\events\amb_m60_phantom_swoop_left', sq_deck_phantom_l_2, 1);
	cs_fly_to_and_face (deck_drop_2_l.p6, deck_drop_2_l.p7);
	sleep (30 * 3);
	f_unload_phantom (sq_deck_phantom_l_2, "dual");
	sleep_until (unit_in_vehicle (ai_get_unit (sq_deck_drop_3_a)) == FALSE
								AND
							unit_in_vehicle (ai_get_unit (sq_deck_drop_3_b)) == FALSE);
	print (":  : Units Out Of Phantom :  :");
	ai_disregard (ai_actors(sq_deck_drop_3_a), TRUE);
	ai_disregard (ai_actors(sq_deck_drop_3_b), TRUE);
//	ai_disregard ((ai_current_actor), FALSE);
	sleep (30 * 5);
		if
			deck_gun_count >= 5
		then
			sleep (30 * 5);
	//		sleep_until ((object_get_health (ai_vehicle_get_from_spawn_point (sq_deck_phantom_l_2.driver))) < .75);
			cs_vehicle_speed (.3);
			cs_fly_by (deck_drop_2_l.p4);
			deck_phantom_count = (deck_phantom_count + 1);
			cs_fly_by (deck_drop_2_l.p3);
			cs_fly_by (deck_drop_2_l.p2);
			cs_fly_by (deck_drop_2_l.p1);
			cs_fly_by (deck_drop_2_l.p0);
			ai_erase (sq_deck_phantom_l_2);

		else
			cs_fly_by (deck_drop_2_l.p4);
			deck_phantom_count = (deck_phantom_count + 1);
			cs_fly_by (deck_drop_2_l.p3);
			cs_fly_by (deck_drop_2_l.p2);
			cs_fly_by (deck_drop_2_l.p1);
			cs_fly_by (deck_drop_2_l.p0);
			ai_erase (sq_deck_phantom_l_2);
		end
end

script command_script deck_drop_2_r
	vehicle_ignore_damage_knockback(ai_vehicle_get(ai_current_actor),true); 
	f_load_phantom (sq_deck_phantom_r_2, "dual", sq_deck_drop_4_a, sq_deck_drop_4_b, none, none);
	//cs_vehicle_speed (.75);
//	ai_disregard ((ai_current_actor), TRUE);
	//cs_fly_by (deck_drop_2_r.p0);
	//cs_fly_by (deck_drop_2_r.p1);
	//cs_fly_by (deck_drop_2_r.p2);
	cs_fly_by (deck_drop_2_r.p3);
	cs_fly_by (deck_drop_2_r.p4);
	cs_fly_by (deck_drop_2_r.p5);
	
	sound_impulse_start('sound\environments\solo\m060\events\amb_m60_phantom_swoop_right', sq_deck_phantom_r_2, 1);
	cs_fly_to_and_face (deck_drop_2_r.p6, deck_drop_2_r.p7);
	sleep (30 * 3);
	f_unload_phantom (sq_deck_phantom_r_2, "dual");
	sleep_until (unit_in_vehicle (ai_get_unit (sq_deck_drop_4_a)) == FALSE
								AND
							unit_in_vehicle (ai_get_unit (sq_deck_drop_4_b)) == FALSE);
	print (":  : Units Out Of Phantom :  :");
	ai_disregard (ai_actors(sq_deck_drop_4_a), TRUE);
	ai_disregard (ai_actors(sq_deck_drop_4_b), TRUE);
//	ai_disregard ((ai_current_actor), FALSE);
	sleep (30 * 5);
		if
			deck_gun_count >= 5
		then
			sleep (30 * 5);
		//	sleep_until ((object_get_health (ai_vehicle_get_from_spawn_point (sq_deck_phantom_r_2.driver))) < .75);
			cs_vehicle_speed (.3);
			cs_fly_by (deck_drop_2_r.p5);
			cs_fly_by (deck_drop_2_r.p4);
			deck_phantom_count = (deck_phantom_count + 1);
			cs_fly_by (deck_drop_2_r.p3);
			cs_fly_by (deck_drop_2_r.p2);
			cs_fly_by (deck_drop_2_r.p1);
			cs_fly_by (deck_drop_2_r.p0);
			ai_erase (sq_deck_phantom_r_2);
		else
			cs_fly_by (deck_drop_2_r.p5);
			cs_fly_by (deck_drop_2_r.p4);
			deck_phantom_count = (deck_phantom_count + 1);
			cs_fly_by (deck_drop_2_r.p3);
			cs_fly_by (deck_drop_2_r.p2);
			cs_fly_by (deck_drop_2_r.p1);
			cs_fly_by (deck_drop_2_r.p0);
			ai_erase (sq_deck_phantom_r_2);
		end
end

script command_script deck_drop_mid
	vehicle_ignore_damage_knockback(ai_vehicle_get(ai_current_actor),true); 
	cs_vehicle_speed (1.5);
	f_load_phantom (sq_deck_phantom_back_mid, "dual", sq_deck_drop_5_a, sq_deck_drop_5_b, none, none);
//	ai_disregard ((ai_current_actor), TRUE);
	cs_fly_by (deck_drop_mid.p0);
	//cs_fly_by (deck_drop_mid.p1);
	//cs_fly_by (deck_drop_mid.p8);
	sound_impulse_start('sound\environments\solo\m060\events\amb_m60_phantom_swoop_middle', sq_deck_phantom_back_mid, 1);
	
		if (volume_test_players (trig_deck_mid_drop))
					then
				cs_fly_to_and_face (deck_drop_mid.p1, deck_drop_mid.p9);
					else
				cs_fly_to_and_face (deck_drop_mid.p3, deck_drop_mid.p2);
		end
	sleep (30 * 3);
	f_unload_phantom (sq_deck_phantom_back_mid, "dual");
	sleep_until (unit_in_vehicle (ai_get_unit (sq_deck_drop_5_a)) == FALSE
								AND
							unit_in_vehicle (ai_get_unit (sq_deck_drop_5_b)) == FALSE);
	print (":  : Units Out Of Phantom :  :");
	ai_disregard (ai_actors(sq_deck_drop_5_a), TRUE);
	ai_disregard (ai_actors(sq_deck_drop_5_b), TRUE);
	sleep (30 * 5);
		if
			deck_gun_count >= 5
		then
			sleep (30 * 5);
			//sleep_until ((object_get_health (ai_vehicle_get_from_spawn_point (sq_deck_phantom_back_mid.driver))) < .75);
			cs_vehicle_speed (.3);
//	ai_disregard ((ai_current_actor), FALSE);
			cs_fly_by (deck_drop_mid.p4);
			deck_phantom_count = (deck_phantom_count + 1);
			cs_fly_by (deck_drop_mid.p5);
			ai_erase (sq_deck_phantom_back_mid);
			//cs_fly_by (deck_drop_mid.p6);
			//cs_fly_by (deck_drop_mid.p7);
		else
			cs_fly_by (deck_drop_mid.p4);
			deck_phantom_count = (deck_phantom_count + 1);
			cs_fly_by (deck_drop_mid.p5);
			cs_fly_by (deck_drop_mid.p6);
			cs_fly_by (deck_drop_mid.p7);
			ai_erase (sq_deck_phantom_back_mid);
		end
end

script command_script deck_drop_fodder_r_1
//	cs_vehicle_speed (.75);
	object_cannot_take_damage (ai_actors(ai_current_actor));
	cs_fly_by (deck_drop_fodder_r_1.p3);
	cs_fly_by (deck_drop_fodder_r_1.p4);
	object_can_take_damage (ai_actors(ai_current_actor));
	cs_shoot (sq_aa_gun_2.g1, TRUE, (ai_current_actor));
	cs_fly_by (deck_drop_fodder_r_1.p5);
	cs_fly_by (deck_drop_fodder_r_1.p6);
	sleep_until (object_get_health (ai_vehicle_get_from_spawn_point (sq_deck_phantom_fodder_r_1.driver)) < 1);
	damage_object (ai_vehicle_get_from_spawn_point (sq_deck_phantom_fodder_r_1.driver), hull, 4000);
end

script command_script deck_drop_fodder_l_1
//	cs_vehicle_speed (.75);
	object_cannot_take_damage (ai_actors(ai_current_actor));
	cs_fly_by (deck_drop_fodder_l_1.p3);
	cs_fly_by (deck_drop_fodder_l_1.p4);
	cs_fly_by (deck_drop_fodder_l_1.p5);
	cs_fly_by (deck_drop_fodder_l_1.p6);
	object_can_take_damage (ai_actors(ai_current_actor));
	cs_shoot (sq_aa_gun_2.g2, TRUE, ai_vehicle_get_from_spawn_point (sq_deck_phantom_fodder_l_1.driver));
	sleep_until (object_get_health (ai_vehicle_get_from_spawn_point (sq_deck_phantom_fodder_l_1.driver)) < 1);
	damage_object (ai_vehicle_get_from_spawn_point (sq_deck_phantom_fodder_l_1.driver), hull, 4000);
end

script command_script deck_drop_fodder_l_2
//	cs_vehicle_speed (.75);
	object_cannot_take_damage (ai_actors(ai_current_actor));
	cs_fly_by (deck_drop_fodder_l_1.p3);
	cs_fly_by (deck_drop_fodder_l_1.p1);
	cs_fly_by (deck_drop_fodder_l_1.p2);
	cs_fly_by (deck_drop_fodder_l_1.p8);
	object_can_take_damage (ai_actors(ai_current_actor));
	cs_shoot (sq_aa_gun_2.g2, TRUE, ai_vehicle_get_from_spawn_point (sq_deck_phantom_fodder_l_2.driver));
	sleep_until (object_get_health (ai_vehicle_get_from_spawn_point (sq_deck_phantom_fodder_l_2.driver)) < 1);
	damage_object (ai_vehicle_get_from_spawn_point (sq_deck_phantom_fodder_l_2.driver), hull, 4000);
end

script command_script deck_drop_fodder_l_3
//	cs_vehicle_speed (.75);
	object_cannot_take_damage (ai_actors(ai_current_actor));
	cs_fly_by (deck_drop_fodder_l_1.p3);
	cs_fly_by (deck_drop_fodder_l_1.p9);
	cs_fly_by (deck_drop_fodder_l_1.p10);
	object_can_take_damage (ai_actors(ai_current_actor));
	cs_shoot (sq_aa_gun_2.g2, TRUE, ai_vehicle_get_from_spawn_point (sq_deck_phantom_fodder_l_3.driver));
	sleep_until (object_get_health (ai_vehicle_get_from_spawn_point (sq_deck_phantom_fodder_l_3.driver)) < 1);
	damage_object (ai_vehicle_get_from_spawn_point (sq_deck_phantom_fodder_l_3.driver), hull, 4000);
end

script static void flak_gun_1_a()

	sleep (random_range (90, 150));

	repeat
		effect_new_at_ai_point ("environments\solo\m60_rescue\fx\turrets\dummy_firing_unsc.effect", deck_effect_left_a.a1);
		sleep (random_range (90, 150));
		effect_new_at_ai_point ("environments\solo\m60_rescue\fx\turrets\dummy_firing_unsc.effect", deck_effect_left_a.a3);
		sleep (random_range (90, 150));
		effect_new_at_ai_point ("environments\solo\m60_rescue\fx\turrets\dummy_firing_unsc.effect", deck_effect_left_a.a2);
		sleep (random_range (90, 150));
		effect_new_at_ai_point ("environments\solo\m60_rescue\fx\turrets\dummy_firing_unsc.effect", deck_effect_left_a.a4);
		sleep (random_range (90, 150));
	until (1 == 0);
end

script static void flak_gun_1_b()

	sleep (random_range (90, 150));

	repeat
		effect_new_at_ai_point ("environments\solo\m60_rescue\fx\turrets\dummy_firing_unsc.effect", deck_effect_left_a.b1);
		sleep (random_range (90, 150));
		effect_new_at_ai_point ("environments\solo\m60_rescue\fx\turrets\dummy_firing_unsc.effect", deck_effect_left_a.b3);
		sleep (random_range (90, 150));
		effect_new_at_ai_point ("environments\solo\m60_rescue\fx\turrets\dummy_firing_unsc.effect", deck_effect_left_a.b2);
		sleep (random_range (90, 150));
		effect_new_at_ai_point ("environments\solo\m60_rescue\fx\turrets\dummy_firing_unsc.effect", deck_effect_left_a.b4);
		sleep (random_range (90, 150));
	until (1 == 0);
end

script static void flak_gun_2_a()

	sleep (random_range (90, 150));

	repeat
		effect_new_at_ai_point ("environments\solo\m60_rescue\fx\turrets\dummy_firing_unsc.effect", deck_effect_right_a.a1);
		sleep (random_range (90, 150));
		effect_new_at_ai_point ("environments\solo\m60_rescue\fx\turrets\dummy_firing_unsc.effect", deck_effect_right_a.a3);
		sleep (random_range (90, 150));
		effect_new_at_ai_point ("environments\solo\m60_rescue\fx\turrets\dummy_firing_unsc.effect", deck_effect_right_a.a2);
		sleep (random_range (90, 150));
		effect_new_at_ai_point ("environments\solo\m60_rescue\fx\turrets\dummy_firing_unsc.effect", deck_effect_right_a.a4);
		sleep (random_range (90, 150));
	until (1 == 0);
end

script static void flak_gun_2_b()

	sleep (random_range (90, 150));

	repeat
		effect_new_at_ai_point ("environments\solo\m60_rescue\fx\turrets\dummy_firing_unsc.effect", deck_effect_right_a.b1);
		sleep (random_range (90, 150));
		effect_new_at_ai_point ("environments\solo\m60_rescue\fx\turrets\dummy_firing_unsc.effect", deck_effect_right_a.b3);
		sleep (random_range (90, 150));
		effect_new_at_ai_point ("environments\solo\m60_rescue\fx\turrets\dummy_firing_unsc.effect", deck_effect_right_a.b2);
		sleep (random_range (90, 150));
		effect_new_at_ai_point ("environments\solo\m60_rescue\fx\turrets\dummy_firing_unsc.effect", deck_effect_right_a.b4);
		sleep (random_range (90, 150));
	until (1 == 0);
end

script static void flak_gun_3_a()

	sleep (random_range (90, 150));

	repeat
		effect_new_at_ai_point ("environments\solo\m60_rescue\fx\turrets\dummy_firing_unsc.effect", deck_effect_mid_a.a1);
		sleep (random_range (90, 150));
		effect_new_at_ai_point ("environments\solo\m60_rescue\fx\turrets\dummy_firing_unsc.effect", deck_effect_mid_a.a3);
		sleep (random_range (90, 150));
		effect_new_at_ai_point ("environments\solo\m60_rescue\fx\turrets\dummy_firing_unsc.effect", deck_effect_mid_a.a2);
		sleep (random_range (90, 150));
		effect_new_at_ai_point ("environments\solo\m60_rescue\fx\turrets\dummy_firing_unsc.effect", deck_effect_mid_a.a4);
		sleep (random_range (90, 150));
	until (1 == 0);
end

script static void flak_gun_3_b()

	sleep (random_range (90, 150));

	repeat
		effect_new_at_ai_point ("environments\solo\m60_rescue\fx\turrets\dummy_firing_unsc.effect", deck_effect_mid_a.b1);
		sleep (random_range (90, 150));
		effect_new_at_ai_point ("environments\solo\m60_rescue\fx\turrets\dummy_firing_unsc.effect", deck_effect_mid_a.b3);
		sleep (random_range (90, 150));
		effect_new_at_ai_point ("environments\solo\m60_rescue\fx\turrets\dummy_firing_unsc.effect", deck_effect_mid_a.b2);
		sleep (random_range (90, 150));
		effect_new_at_ai_point ("environments\solo\m60_rescue\fx\turrets\dummy_firing_unsc.effect", deck_effect_mid_a.b4);
		sleep (random_range (90, 150));
	until (1 == 0);
end

script static void flak_gun_3_c()

	sleep (random_range (90, 150));

	repeat
		effect_new_at_ai_point ("environments\solo\m60_rescue\fx\turrets\dummy_firing_unsc.effect", deck_effect_mid_a.c1);
		sleep (random_range (90, 150));
		effect_new_at_ai_point ("environments\solo\m60_rescue\fx\turrets\dummy_firing_unsc.effect", deck_effect_mid_a.c3);
		sleep (random_range (90, 150));
		effect_new_at_ai_point ("environments\solo\m60_rescue\fx\turrets\dummy_firing_unsc.effect", deck_effect_mid_a.c2);
		sleep (random_range (90, 150));
		effect_new_at_ai_point ("environments\solo\m60_rescue\fx\turrets\dummy_firing_unsc.effect", deck_effect_mid_a.c4);
		sleep (random_range (90, 150));
	until (1 == 0);
end

script command_script deck_vig_1
	cs_vehicle_speed (.5);
	sleep_until (volume_test_players (trig_deck_vig), 1);
	cs_fly_by (deck_drop_1.p6);
	cs_fly_by (deck_drop_1.p7);
	cs_fly_by (deck_drop_1.p8);
	cs_fly_by (deck_drop_1.p9);
	ai_erase (sq_deck_vig_2);
end

script command_script deck_vig_2
	cs_vehicle_speed (.5);
	sleep_until (volume_test_players (trig_deck_vig), 1);
	cs_fly_by (deck_drop_2.p6);
	cs_fly_by (deck_drop_2.p7);
	cs_fly_by (deck_drop_2.p8);
	cs_fly_by (deck_drop_2.p9);
	ai_erase (sq_deck_vig_1);
end

script command_script mac_fire
	sleep (30 * 2);
	ai_set_blind (ai_current_actor, TRUE);
	cs_aim (TRUE, mac_aim.p0);
	sleep_until(g_shoot_cannon==true,1);
	ai_braindead (sq_aa_gun_3, FALSE);
	sound_impulse_start ( 'sound\environments\solo\m060\amb_m60_final\amb_m60_mach\mach_m60_battery_power_on', deck_gun_mac, 1 ); 
	sleep(1);
	cs_shoot (TRUE, cruiser_deck);
	sleep (90);
	ai_braindead (sq_aa_gun_3, TRUE);
	print (":  : BIG BADDA BOOM :  :");
	thread (f_m60_music_nothing()); // end deck music
	sleep (30 * 7);
	wake (end_cutscene);
	// M65_atinfinity Cutscene

end

script static void cryptum_impacts()
	
	effect_new_at_ai_point ("environments\solo\m60_rescue\fx\weapon\cryptum_impact.effect", cryptum_impact.p0);
	print (" :  : Cryptum Impact 1 :  : ");
	sleep (30 * 2);
	effect_new_at_ai_point ("environments\solo\m60_rescue\fx\weapon\cryptum_impact.effect", cryptum_impact.p1);
	print (" :  : Cryptum Impact 2 :  : ");
	sleep (30 * 1);
	effect_new_at_ai_point ("environments\solo\m60_rescue\fx\weapon\cryptum_impact.effect", cryptum_impact.p2);
	print (" :  : Cryptum Impact 3 :  : ");
	sleep (30);
	effect_new_at_ai_point ("environments\solo\m60_rescue\fx\weapon\cryptum_impact.effect", cryptum_impact.p3);
	print (" :  : Cryptum Impact 4 :  : ");
	sleep (10);
	effect_new_at_ai_point ("environments\solo\m60_rescue\fx\weapon\cryptum_impact.effect", cryptum_impact.p4);
	print (" :  : Cryptum Impact 5 :  : ");
	sleep (5);
	effect_new_at_ai_point ("environments\solo\m60_rescue\fx\weapon\cryptum_impact.effect", cryptum_impact.p5);
	print (" :  : Cryptum Impact 6 :  : ");

end
	

script command_script cs_amb_gun_1

	object_set_physics ((ai_vehicle_get_from_spawn_point (sq_aa_gun_amb_1.p0)), FALSE);

	print (":  : Shoot the damn thing :  :");
	ai_braindead (sq_aa_gun_amb_1, FALSE);
	sleep(1);
	cs_shoot (TRUE, deck_cruiser_1);
	sleep (30 * 10);
	print (":  : Effect Played? :  :");
//	ai_braindead (sq_aa_gun_amb_1, TRUE);
	sleep (30 * 10);
	thread (deck_amb_crash_1());
	cs_shoot (TRUE, deck_cruiser_1);
	sleep (30 * 10);
	sound_impulse_start ( 'sound\environments\solo\m060\amb_m60_final\amb_m60_mach\mach_m60_battery_power_on', deck_cruiser_1, 1 ); 
	effect_new_on_object_marker ("environments\solo\m60_rescue\fx\explosion\cruiser_explosion_mini.effect", deck_cruiser_1, fx_damage_01);
	
	sleep (random_range (15, 30));
	
	effect_new_on_object_marker ("environments\solo\m60_rescue\fx\explosion\cruiser_explosion_mini.effect", deck_cruiser_1, fx_damage_01);
	
	ai_erase (ai_current_actor);
	
end

script command_script cs_amb_gun_1_a

	object_set_physics ((ai_vehicle_get_from_spawn_point (sq_aa_gun_amb_1.p1)), FALSE);

	sleep(1);
	cs_shoot (TRUE, deck_cruiser_1);
	sleep (30 * 20);

	effect_new_on_object_marker ("environments\solo\m60_rescue\fx\explosion\cruiser_explosion_mini.effect", deck_cruiser_1, fx_damage_01);
	
	sleep (random_range (15, 30));
	
	effect_new_on_object_marker ("environments\solo\m60_rescue\fx\explosion\cruiser_explosion_mini.effect", deck_cruiser_1, fx_damage_01);

	ai_erase (ai_current_actor);

end

script command_script cs_amb_gun_2

	object_set_physics ((ai_vehicle_get_from_spawn_point (sq_aa_gun_amb_2.p0)), FALSE);

	print (":  : Shoot the damn thing :  :");
	ai_braindead (sq_aa_gun_amb_2, FALSE);
	sleep(1);
	cs_shoot (TRUE, deck_cruiser_2);
	sleep (30 * 10);
	print (":  : Effect Played? :  :");
//	ai_braindead (sq_aa_gun_amb_2, TRUE);
	sleep (30 * 10);
	thread (deck_amb_crash_2());
	cs_shoot (TRUE, deck_cruiser_2);
	sleep (30 * 10);

effect_new_on_object_marker ("environments\solo\m60_rescue\fx\explosion\cruiser_explosion_mini.effect", deck_cruiser_2, fx_damage_01);
	
	sleep (random_range (15, 30));
	
	effect_new_on_object_marker ("environments\solo\m60_rescue\fx\explosion\cruiser_explosion_mini.effect", deck_cruiser_2, fx_damage_01);

	ai_erase (ai_current_actor);

end

script command_script cs_amb_gun_2_a

	object_set_physics ((ai_vehicle_get_from_spawn_point (sq_aa_gun_amb_2.p1)), FALSE);

	sleep(1);
	cs_shoot (TRUE, deck_cruiser_2);
	sleep (30 * 20);

	effect_new_on_object_marker ("environments\solo\m60_rescue\fx\explosion\cruiser_explosion_mini.effect", deck_cruiser_2, fx_damage_01);
	
	sleep (random_range (15, 30));
	
	effect_new_on_object_marker ("environments\solo\m60_rescue\fx\explosion\cruiser_explosion_mini.effect", deck_cruiser_2, fx_damage_01);

	ai_erase (ai_current_actor);

end

script command_script cs_amb_miss_1_a

	sleep (random_range (90, 150));

	repeat

		print (":  : Shoot the damn thing :  :");
		ai_braindead (sq_aa_miss_amb_1.a, FALSE);
		sleep(1);
		cs_shoot (TRUE, deck_cruiser_1);
		sleep (random_range (300, 450));
		ai_braindead (sq_aa_miss_amb_1.a, TRUE);

	until (1 == 0);

end

script command_script cs_amb_miss_1_b

	sleep (random_range (90, 150));

	repeat

		print (":  : Shoot the damn thing :  :");
		ai_braindead (sq_aa_miss_amb_1.b, FALSE);
		sleep(1);
		cs_shoot (TRUE, deck_cruiser_1);
		sleep (random_range (300, 450));
		ai_braindead (sq_aa_miss_amb_1.b, TRUE);

	until (1 == 0);

end

script command_script cs_amb_miss_2_a

	sleep (random_range (90, 150));

	repeat

		print (":  : Shoot the damn thing :  :");
		ai_braindead (sq_aa_miss_amb_2.a, FALSE);
		sleep(1);
		cs_shoot (TRUE, deck_cruiser_2);
		sleep (random_range (300, 450));
		ai_braindead (sq_aa_miss_amb_2.a, TRUE);

	until (1 == 0);

end

script command_script cs_amb_miss_2_b

	sleep (random_range (90, 150));

	repeat

		print (":  : Shoot the damn thing :  :");
		ai_braindead (sq_aa_miss_amb_2.b, FALSE);
		sleep(1);
		cs_shoot (TRUE, deck_cruiser_2);
		sleep (random_range (300, 450));
		ai_braindead (sq_aa_miss_amb_2.b, TRUE);

	until (1 == 0);

end

script command_script cs_amb_miss_3_a

	sleep (random_range (90, 150));

	repeat

		print (":  : Shoot the damn thing :  :");
		ai_braindead (sq_aa_miss_amb_3.a, FALSE);
		sleep(1);
		cs_shoot (TRUE, deck_cruiser_1);
		sleep (random_range (300, 450));
		ai_braindead (sq_aa_miss_amb_3.a, TRUE);

	until (1 == 0);

end

script command_script cs_amb_miss_3_b

	sleep (random_range (90, 150));

	repeat

		print (":  : Shoot the damn thing :  :");
		ai_braindead (sq_aa_miss_amb_3.b, FALSE);
		sleep(1);
		cs_shoot (TRUE, deck_cruiser_2);
		sleep (random_range (300, 450));
		ai_braindead (sq_aa_miss_amb_3.b, TRUE);

	until (1 == 0);

end

script command_script cs_shoot_didact

	sleep (random_range (90, 150));
	
	cs_aim_object (TRUE, cruiser_deck);
	
	repeat
		cs_shoot (TRUE, cruiser_deck);
		sleep (random_range (90, 150));
	until (cryptum_gone == TRUE);

end

script dormant deck_flak_fx_l

	repeat

		begin_random_count(8)
	
		begin
			effect_new_at_ai_point ("environments\solo\m60_rescue\fx\explosion\flak_det.effect", flak_point_l.p0);
			sleep (random_range (15, 30));
		end

		begin
			effect_new_at_ai_point ("environments\solo\m60_rescue\fx\explosion\flak_det.effect", flak_point_l.p1);
			sleep (random_range (15, 30));
		end
		
		begin
			effect_new_at_ai_point ("environments\solo\m60_rescue\fx\explosion\flak_det.effect", flak_point_l.p2);
			sleep (random_range (15, 30));
		end
		
		begin
			effect_new_at_ai_point ("environments\solo\m60_rescue\fx\explosion\flak_det.effect", flak_point_l.p3);
			sleep (random_range (15, 30));
		end
		
		begin
			effect_new_at_ai_point ("environments\solo\m60_rescue\fx\explosion\flak_det.effect", flak_point_l.p4);
			sleep (random_range (15, 30));
		end
		
		begin
			effect_new_at_ai_point ("environments\solo\m60_rescue\fx\explosion\flak_det.effect", flak_point_l.p5);
			sleep (random_range (15, 30));
		end
		
		begin
			effect_new_at_ai_point ("environments\solo\m60_rescue\fx\explosion\flak_det.effect", flak_point_l.p6);
			sleep (random_range (15, 30));
		end
		
		begin
			effect_new_at_ai_point ("environments\solo\m60_rescue\fx\explosion\flak_det.effect", flak_point_l.p7);
			sleep (random_range (15, 30));
		end
	
	end
	
	until (1 == 0);

end

script dormant deck_flak_fx_r

repeat

	begin_random_count(8)
	
		begin
			effect_new_at_ai_point ("environments\solo\m60_rescue\fx\explosion\flak_det.effect", flak_point_r.p0);
			sleep (random_range (15, 30));
		end

		begin
			effect_new_at_ai_point ("environments\solo\m60_rescue\fx\explosion\flak_det.effect", flak_point_r.p1);
			sleep (random_range (15, 30));
		end
		
		begin
			effect_new_at_ai_point ("environments\solo\m60_rescue\fx\explosion\flak_det.effect", flak_point_r.p2);
			sleep (random_range (15, 30));
		end
		
		begin
			effect_new_at_ai_point ("environments\solo\m60_rescue\fx\explosion\flak_det.effect", flak_point_r.p3);
			sleep (random_range (15, 30));
		end
		
		begin
			effect_new_at_ai_point ("environments\solo\m60_rescue\fx\explosion\flak_det.effect", flak_point_r.p4);
			sleep (random_range (15, 30));
		end
		
		begin
			effect_new_at_ai_point ("environments\solo\m60_rescue\fx\explosion\flak_det.effect", flak_point_r.p5);
			sleep (random_range (15, 30));
		end
		
		begin
			effect_new_at_ai_point ("environments\solo\m60_rescue\fx\explosion\flak_det.effect", flak_point_r.p6);
			sleep (random_range (15, 30));
		end
		
		begin
			effect_new_at_ai_point ("environments\solo\m60_rescue\fx\explosion\flak_det.effect", flak_point_r.p7);
			sleep (random_range (15, 30));
		end
	
	end
	
until (1 == 0);

end

script dormant deck_flak_fx_m

repeat

	begin_random_count(8)
	
		begin
			effect_new_at_ai_point ("environments\solo\m60_rescue\fx\explosion\flak_det.effect", flak_point_m.p0);
			sleep (random_range (15, 30));
		end

		begin
			effect_new_at_ai_point ("environments\solo\m60_rescue\fx\explosion\flak_det.effect", flak_point_m.p1);
			sleep (random_range (15, 30));
		end
		
		begin
			effect_new_at_ai_point ("environments\solo\m60_rescue\fx\explosion\flak_det.effect", flak_point_m.p2);
			sleep (random_range (15, 30));
		end
		
		begin
			effect_new_at_ai_point ("environments\solo\m60_rescue\fx\explosion\flak_det.effect", flak_point_m.p3);
			sleep (random_range (15, 30));
		end
		
		begin
			effect_new_at_ai_point ("environments\solo\m60_rescue\fx\explosion\flak_det.effect", flak_point_m.p4);
			sleep (random_range (15, 30));
		end
		
		begin
			effect_new_at_ai_point ("environments\solo\m60_rescue\fx\explosion\flak_det.effect", flak_point_m.p5);
			sleep (random_range (15, 30));
		end
		
		begin
			effect_new_at_ai_point ("environments\solo\m60_rescue\fx\explosion\flak_det.effect", flak_point_m.p6);
			sleep (random_range (15, 30));
		end
		
		begin
			effect_new_at_ai_point ("environments\solo\m60_rescue\fx\explosion\flak_det.effect", flak_point_m.p7);
			sleep (random_range (15, 30));
		end
	
	end
	
until (1 == 0);

end

script dormant end_cutscene

	// Load what we can of incoming cinematic
	prepare_to_switch_to_zone_set("outer_deck_to_cin");

	sleep (30 * 10);
	//effect_attached_to_camera_stop ( environments\solo\m60_rescue\fx\embers\embers_ambient_floating );

	if (b_cinematics and (not b_editor) or (b_editor_cinematics)) then
		EnableMidmissionLoadScreenForDVDOnly(true);
		cinematic_enter ("cin_m065_atinfinity", TRUE);
		
		switch_zone_set (cin_m065_atinfinity);
		sleep ( 1 );
		sleep_until (current_zone_set_fully_active() == zs_cin_m065, 1);
		
		cinematic_suppress_bsp_object_creation(TRUE);
		
		f_start_mission ("cin_m065_atinfinity");
		EnableMidmissionLoadScreenForDVDOnly(false);
		
		cinematic_suppress_bsp_object_creation(FALSE);
		
		cinematic_exit_no_fade ("cin_m065_atinfinity", TRUE); 
		
		print ("Cinematic exited!"); 
		
	end
	
	game_won();

end

/*

script static void f_end_cinematic_60 (string_id cinematic_name)

	if (b_cinematic_entered == false) then
		cinematic_enter (cinematic_name, TRUE);
	end
	b_cinematic_entered = false;
	sleep (1);
	
	if (cinematic_skip_start()) then
		if b_debug_cinematic_scripts then
			print ("f_start_mission: playing cinematic...");
		end
		cinematic_run_script_by_name (cinematic_name);
	end
	
	cinematic_skip_stop ();
end
*/
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

; =================================================================================================
; =================================================================================================
; COMMAND SCRIPTS
; =================================================================================================
; =================================================================================================


// --- End m60_rescue_mission.hsc ---

// --- Begin m60_rescue_mission_ch.hsc ---
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343
//
// 	Mission: 					m60_rescue
//	Insertion Points:	start (or icl)	- Beginning
//										
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343

// =================================================================================================
// =================================================================================================
// *** GLOBALS ***
// =================================================================================================
// =================================================================================================

global short obj_follow = 0;
global short obj_thicket = 0;
global short cutscene_over = 0;
global short obj_trails_1 = 0;
global short rally_drop = 0;
global short cave_spot = 0;

global boolean bw_spawn = false;
global boolean puppet_show_tree = false;

// =================================================================================================
// =================================================================================================
// CAVE - C FROM B
// =================================================================================================
// =================================================================================================

script dormant f_caves_main()
	
	//zone_set_trigger_volume_enable ("zone_set:boulders", FALSE);
	//zone_set_trigger_volume_enable ("begin_zone_set:boulders", FALSE);
	
	if
		m60_achievement_complete == true
	then
		print (":  : M60 Achievement Get :  :");
		submit_incident_with_cause_player (m60_special, player0);
		submit_incident_with_cause_player (m60_special, player1);
		submit_incident_with_cause_player (m60_special, player2);
		submit_incident_with_cause_player (m60_special, player3);
	else
		print (":  : Marines Died / Difficulty too low :  :");
	end
	
	effect_attached_to_camera_stop(environments\solo\m60_rescue\fx\ambient_life\forest_player_gnats.effect);

	sleep_until (volume_test_players (tv_cave_lb), 1);
	
	dprint  (" - caves start - ");
	
//	thread (cave_letter());
	
	//Encounter 4 Music End
	
	thread (f_mus_m60_e04_finish());
	
	wake (cave_spawn);
	game_save();
	
end

script dormant cave_spawn
	sleep_until (volume_test_players (tv_cave_spawn), 1);
	print (":  : Cave Spawn :  :");
	ai_place (sg_cave);
	wake (cave_enc);
	
end

script dormant cave_enc
	
	//Encounter 5 Music Start
	
	thread (f_mus_m60_e05_begin());
	
	ai_set_blind (sg_cave, FALSE);
	
	ai_place (sq_fore_cave_b_1);
	
	sleep_until (ai_strength (sg_cave) < .3);
	
	wake (covenant_forerun_coop_2);
	
	ai_place (sq_cave_phantom);
	
	game_save_no_timeout();
	
	sleep (30);
	
	sleep_until (
		
		bw_spawn == true
		
			OR
		
		ai_living_count (sq_cave_phantom) < 1);
	
//	sleep_until (ai_living_count (sq_cave_cov_hunter) < 1);

//	sleep_until (unit_get_shield (player0) == 1);
	
	game_save_no_timeout();

	sleep (30 * 10);

	ai_place_in_limbo (sq_cave_bw_1);

	wake (f_dialog_m60_callout_knights);
	print (" :  : Cortana : Knights! :  :");
	
	sleep_until	(ai_living_count (sq_cave_bw_1) < 1
		AND
	ai_living_count (sg_cave_drop) < 4);
	
	game_save_no_timeout();
	
	sleep_until (ai_living_count (sq_cave_bw_1) < 1
	
		AND
		
							ai_living_count (sg_cave_drop) < 1);
	
	sleep (30 * 3);
	
	wake (Cortana_cave_cleared);

	//Encounter 5 Music End

	thread (f_mus_m60_e05_finish());

	objectives_finish (1);

	sleep (30 * 4);
	
	print (":  : Pelican Inc :  :");
	
	wake (rally_teleport);

	thread (lz_obj_2());
	
end

script static void lz_obj_2()

	cui_hud_set_objective_complete (chtitlemarsh2);
	sleep (30 * 3);

	cui_hud_set_new_objective(chtitlemarshend);

end

script static void cave_letter()

	/*hud_play_global_animtion (screen_fade_out);
	
	sleep (15);
	
	cinematic_show_letterbox (TRUE);
	
	hud_stop_global_animtion (screen_fade_out);
	
	sleep (30 * 2);
	
	cinematic_set_title (caveletterbox);
	
	sleep (30 * 11);
	
	cinematic_show_letterbox (FALSE);

	sleep (15);

	hud_play_global_animtion (screen_fade_in);
	
	hud_stop_global_animtion (screen_fade_in);

	sleep (15);*/

	f_chapter_title (caveletterbox, TRUE);

end	


// =================================================================================================
// =================================================================================================
// CAVE COMMAND SCRIPTS
// =================================================================================================
// =================================================================================================

script command_script cave_phantom

	print (":  : Cave Phantom Inc :  :");
	
	cs_ignore_obstacles (TRUE);
	
	f_load_phantom (sq_cave_phantom, "right", sq_cave_drop_1, none, none, none);
	f_load_phantom (sq_cave_phantom, "left", sq_cave_drop_2, none, none, none);
//	f_load_phantom (sq_cave_phantom, "chute", sq_cave_cov_hunter.h1, sq_cave_cov_hunter.h2, none, none);
	
	cs_vehicle_speed (.75);
	
	cs_fly_by (ps_cave_phantom.p1);
	cs_fly_by (ps_cave_phantom.p2);
	cs_fly_by (ps_cave_phantom.p3);
	
	sleep (45);
	
	cs_vehicle_speed (.25);
	
	cs_fly_to_and_face (ps_cave_phantom.p4, ps_cave_phantom.p5);
	
	sleep (30 * 3);
	
	print (":  : Unloading Side L :  :");
	
	f_unload_phantom (sq_cave_phantom, "left");
	
	sleep (30);
	
	print (":  : Unloading Side R :  :");
	
	f_unload_phantom (sq_cave_phantom, "right");	
	
	sleep (30 * 2);
	
//	f_unload_phantom (sq_cave_phantom, "chute");	
	
	bw_spawn = true;
	
	sleep (30 * 2);
	
	cs_fly_to_and_face (ps_cave_phantom.p3, ps_cave_phantom.p4);
	
	cs_vehicle_speed (.75);
	
	cs_fly_by (ps_cave_phantom.p7);
	cs_fly_by (ps_cave_phantom.p8);
	
	ai_erase (sq_cave_phantom);
end

script command_script cs_soul_fusion()
	cs_phase_in();
end

script command_script cs_bishop_spawn
	print("bishop sleeping");
	ai_enter_limbo(ai_current_actor);
	CreateDynamicTask(TT_SPAWN, FT_BIRTHER, ai_get_object(ai_current_actor), OnCompleteProtoSpawn, 0);
end

script static void OnCompleteProtoSpawn()
	print("I LIVE. RUN COWARD!");
	bish_born = 1;
end


script command_script cs_knight_boss

	cs_abort_on_alert (1);
	cs_abort_on_damage (1);
	
	cs_walk (1);

	cs_force_combat_status (1);
	
	cs_go_to (ps_cave_grunt_1.p0);
	
	sleep (15);
	
	cs_face (TRUE, ps_cave_grunt_1.p3);
	
	sleep (15);
	
	cs_custom_animation (objects\characters\storm_knight\storm_knight.model_animation_graph, "vin_global_solo_give_command", TRUE);

end

script command_script cave_grunt_1
	
	cs_abort_on_alert (1);
	cs_walk (1);
	cs_force_combat_status (1);
	cs_go_to (ps_cave_grunt_1.p1);
	
	sleep (30 * 6);
	
end

script command_script cave_grunt_2

	cs_abort_on_alert (1);
	cs_walk (1);
	cs_force_combat_status (1);
	cs_go_to (ps_cave_grunt_1.p2);

	sleep (30 * 6);

end

script command_script cave_grunt_3

	cs_abort_on_alert (1);
	cs_walk (1);
	cs_force_combat_status (1);
	cs_go_to (ps_cave_grunt_1.p3);

	sleep (30 * 6);

end

script command_script cave_grunt_4

	cs_abort_on_alert (1);
	cs_walk (1);
	cs_force_combat_status (1);
	cs_go_to (ps_cave_grunt_1.p7);

	sleep (30 * 6);

end

script command_script cave_grunt_5

	cs_abort_on_alert (1);
	cs_walk (1);
	cs_force_combat_status (1);
	cs_go_to (ps_cave_grunt_1.p8);

	sleep (30 * 6);

end

script static void test_cave_pup()
	
	object_create (pelepupp);
	ai_place (sq_cave_null_pilot);
	ai_vehicle_enter_immediate (sq_cave_null_pilot, pelepupp, pelican_d);
	
	pup_play_show (cave_pelican);
	
end

script command_script cave_pup_sleep
	cs_vehicle_speed_instantaneous (0);
end

// =================================================================================================
// =================================================================================================
// RALLY - this uses insertion point "irp"
// =================================================================================================
// =================================================================================================

script dormant f_rally_main()
	
	fade_out (0, 0, 0, 0);
	
		effects_distortion_enabled = 0;

	objectives_show (3);

	wake (ral_14_co_op);
	wake (ral_15_co_op);

	ai_lod_full_detail_actors (50);
//	sleep_until (b_mission_started == TRUE);
	dprint  (" - rally start - ");
	gpu_throttle_max_allowed_value = .8;
	wake (f_first_rally_infantry);
	dprint (" - woke the infantry - ");
	wake (f_initial_spawn);
	dprint (" - woke the infantry - ");
	wake (f_bowl_setup);
	//wake (f_ghost_hog);
	wake (obj_follow_start);
	wake (obj_follow_1);
	wake (obj_follow_2);
	wake (obj_follow_3);
	wake (obj_follow_35);
	wake (obj_follow_4);
	wake (obj_follow_5);
	wake (obj_follow_6);
	wake (obj_follow_7);
	wake (obj_follow_8);
	
	if
		m60_tank_rally_debug == TRUE
	then
		thread (b_b_debug_check(player0));
		thread (b_b_debug_check(player1));
		thread (b_b_debug_check(player2));
		thread (b_b_debug_check(player3));
	end
	
	game_insertion_point_unlock(6);
	
	thread (f_do_fire_damage_on_trigger (rally_fire_1));
	thread (f_do_fire_damage_on_trigger (rally_fire_2));
	thread (f_do_fire_damage_on_trigger (rally_fire_3));
	thread (f_do_fire_damage_on_trigger (rally_fire_4));
	thread (f_do_fire_damage_on_trigger (rally_fire_5));
	thread (f_do_fire_damage_on_trigger (rally_fire_6));
	thread (f_do_fire_damage_on_trigger (rally_fire_7));
	thread (f_do_fire_damage_on_trigger (rally_fire_8));
	thread (f_do_fire_damage_on_trigger (rally_fire_9));
	thread (f_do_fire_damage_on_trigger (rally_fire_10));
	thread (f_do_fire_damage_on_trigger (rally_fire_11));
	thread (f_do_fire_damage_on_trigger (rally_fire_12));
	thread (f_do_fire_damage_on_trigger (rally_fire_13));
	thread (f_do_fire_damage_on_trigger (rally_fire_14));
	thread (f_do_fire_damage_on_trigger (rally_fire_15));
	thread (f_do_fire_damage_on_trigger (rally_fire_16));
	thread (f_do_fire_damage_on_trigger (rally_fire_17));
	thread (f_do_fire_damage_on_trigger (rally_fire_18));
	thread (f_do_fire_damage_on_trigger (rally_fire_19));
	thread (f_do_fire_damage_on_trigger (rally_fire_20));
	thread (f_do_fire_damage_on_trigger (rally_fire_21));
	
	effect_attached_to_camera_new ( environments\solo\m60_rescue\fx\embers\embers_ambient_floating );
	
	print ("TELEPORT!");
	
	data_mine_set_mission_segment("m60_rally");

	//ai_place (sq_rally_pel_2);
	
//	vehicle_load_magic ((ai_vehicle_get_from_spawn_point (sq_rally_pel_2.driver)), "pelican_p_l05", player0);
//	vehicle_load_magic ((ai_vehicle_get_from_spawn_point (sq_rally_pel_2.driver)), "pelican_p_l04", player1);
//	vehicle_load_magic ((ai_vehicle_get_from_spawn_point (sq_rally_pel_2.driver)), "pelican_p_r05", player2);
//	vehicle_load_magic ((ai_vehicle_get_from_spawn_point (sq_rally_pel_2.driver)), "pelican_p_r04", player3);
	
//	sleep_until (player_in_vehicle (ai_vehicle_get_from_spawn_point (sq_rally_pel_2.driver)), 1);
	
	//ai_vehicle_reserve (ai_vehicle_get_from_spawn_point (sq_rally_pel_2.driver), TRUE);
		
	//ai_disregard ((ai_actors (sq_rally_pel_2)), TRUE);

	pup_play_show (rally_pelican);

	ai_vehicle_enter_immediate (sq_rally_pel_2, rally_pelepup);

	fade_in (0, 0, 0, 120);
	
	sleep (30 * 3);
	
/*	hud_play_global_animtion (screen_fade_out);
  cinematic_show_letterbox (TRUE);
  sleep_s (1.5);
  cinematic_set_title (rallyletterbox);
  hud_stop_global_animtion (screen_fade_out);
  sleep_s (3.5);     
  hud_play_global_animtion (screen_fade_in);
  hud_stop_global_animtion (screen_fade_in);
  cinematic_show_letterbox (FALSE);*/
  
	f_chapter_title (rallyletterbox, TRUE);
	
	if
		game_coop_player_count() > 2
	then
		object_create (rally_hog);
	end
	
	effect_attached_to_camera_stop(environments\solo\m60_rescue\fx\ambient_life\forest_player_gnats.effect);

end

script static void b_b_debug_check(player p_player)
	
	repeat
	
			sleep_until (vehicle_test_seat_unit (ve_rally_scorpion, "scorpion_d", p_player) == TRUE
			
									OR
									
									vehicle_test_seat_unit (debug_rally_2, "scorpion_d", p_player) == TRUE
									
									OR
									
									vehicle_test_seat_unit (debug_rally_3, "scorpion_d", p_player) == TRUE
									
									OR
									
									vehicle_test_seat_unit (debug_rally_4, "scorpion_d", p_player) == TRUE);
								
			unit_action_test_reset (p_player);
			
			if 
				unit_action_test_primary_trigger (p_player)
			then
				f_play_b_b_1(p_player);
				sleep (120);
			end
			
		until (m60_tank_rally_debug == false);
		
end
		
script static void f_play_b_b_1(player p_player)
	
	print (":  : S1 :  :");
	sound_looping_start ( "sound\vehicles\mongoose\mongoose_horn\mongoose_horn.sound_looping", p_player, 1);
	sleep (10);
	sound_looping_stop ("sound\vehicles\mongoose\mongoose_horn\mongoose_horn.sound_looping");
	print (":  : S2 :  :");
	sound_looping_start ( "sound\vehicles\mongoose\mongoose_horn\mongoose_horn.sound_looping", p_player, 1);
	sleep (45);
	sound_looping_stop ("sound\vehicles\mongoose\mongoose_horn\mongoose_horn.sound_looping");

end

script static void act_2_cleanup()
	repeat
		sleep (30 * 15);
		garbage_collect_now();
		print (" :  : Garbage Collection :  : ");
	until (1 == 0);
end

script static void rally_intro_ghost()
	
	sleep_until (volume_test_players (tv_0), 3);
	sleep_until (ai_living_count (sg_rally_intro) < 8);
							
	print (":  : Rally Ghost Spawn :  :");
	ai_place (sq_cov_rally_intro_gh_2);
	//sleep (30 * 5);
	ai_place (sq_cov_rally_intro_gh_1);
	
end

script static void rally_pelican_hog()

	sleep_until (ai_living_count (sq_cov_rally_intro_ph) < 1 
		OR 
		(ai_living_count (sq_cov_rally_intro_inf) + ai_living_count (sq_cov_rally_intro_pawn) < 3));
	
	ai_place (sq_rally_pel_1);	

end

script dormant f_initial_spawn()
	
	object_create (ve_rally_scorpion);
	
	//ai_lod_full_detail_actors (40);
	sleep_until (current_zone_set_fully_active() == zs_caves_rally, 1);
	
	// Encounter 6 Music Start
	
	thread (f_mus_m60_e06_begin());
	
	ai_place (sg_rally_intro);
	game_save_immediate();
	thread (act_2_cleanup());

	thread (rally_intro_ghost());

	ai_place (sq_cov_rally_intro_ph);
	
	thread (rally_pelican_hog());
	
//	print (":  : Player in Scorpion :  :");
	
	sleep_until (volume_test_players (tv_0)
	
	OR
	
	player_in_vehicle (ai_vehicle_get (sq_hum_rally_warthog_1)) == 1);
		
	if
	
		player_in_vehicle (ve_rally_scorpion) == 0
	
	OR
	
		player_in_vehicle (ai_vehicle_get (sq_hum_rally_warthog_1)) == 1
	
	then
		
		thread (spartan_scorpion_enter());
	
	else

		ai_set_task (sq_hum_rally_infantry, obj_hum_vehicle, start);
	
	end
	
	print (":  : Changing warthog obj :  :");

	thread	(rally_intro_obj_change());

	sleep_until (volume_test_players (tv_1), 1);
	
	game_save_no_timeout();
	
	if
		ai_living_count (sg_rally_intro) >= 8
	then
		ai_erase (sq_cov_rally_intro_inf);
		ai_erase (sq_cov_rally_intro_gh_1);
		ai_erase (sq_cov_rally_intro_gh_2);
	end
	
	if
		ai_living_count (sq_rally_pel_1) == 1
	then
		ai_erase (sq_rally_pel_1);
	end
	
	if
		ai_living_count (sg_intro_bowl_drop) >= 4
	then
		ai_erase (sg_intro_bowl_drop);
	end
	
	if
		ai_living_count (sq_cov_rally_intro_ph) >= 1
	then
		ai_erase (sq_cov_rally_intro_ph);
	end
	
	ai_place (sq_cov_rally_s1_pawn);
	ai_place (sq_cov_rally_bend_turret_1);
	ai_place (sq_cov_rally_turret_def_1);

	//object_create_folder (rally_towers);
	
	thread (rally_tower_move_1());

	game_save();
	
	print (":  : Spawning S1 Pawns :  :");
	
	sleep_until (volume_test_players (tv_drop_pod), 1);

	ai_place (sq_cov_bend_1_gh);
	ai_place (sq_cov_bend_15_gh);
	
	sleep_until (volume_test_players (tv_3), 1);
	
	ai_place (sg_rally_bend_1);
	
	//sleep_until (volume_test_players (tv_marine_doom), 1);
	
	//ai_place (sq_hum_bend_doom);
	
	sleep_until (volume_test_players (tv_rally_bend), 1);
	
	ai_place (sq_cov_bend_wr);
	
	sleep_until (volume_test_players (tv_rally_bend_objcon), 1);
	
	//ai_place (sq_cov_bend_wr_2);
	
	//ai_place (sq_cov_bend_wr_gh_1);
		
	//ai_place (sq_cov_bend_wr_gh_2);
	
	sleep_until (volume_test_players (tv_35), 1);
	
	thread (rally_tower_move_2());

	sleep (5);

	ai_place (sg_rally_s2);
	
	print (":  : Tower Move :  :");
	
	ai_place (sq_cov_rally_s2_pawn);
	
	sleep_until (volume_test_players (tv_turret_wall_spawn), 1);
	
	ai_place (sq_cov_rally_gh_s3);
	
	print (":  : Ghost S3 :  :");
	
	sleep_until (volume_test_players (tv_ghost_jump), 1);
	
	ai_place (sg_rally_s3);
	
	if
		ai_living_count (sg_rally_bend_1) >= 10
	then
		ai_erase (sg_rally_bend_1);
	end

	if
		ai_living_count (sq_cov_rally_s1_pawn) >= 3
	then
		ai_erase (sq_cov_rally_s1_pawn);
	end
	
	if
		ai_living_count (sq_cov_rally_s2_pawn) >= 3
	then
		ai_erase (sq_cov_rally_s1_pawn);
	end
			
end

script static void rally_tower_move_1()

	object_move_to_point (pod_1, 0, tower_pod.p0);

	object_rotate_to_point (pod_1, 0, 0, 0, tower_pod.p0);

	object_move_to_point (pod_2, 0, tower_pod.p1);

	object_rotate_to_point (pod_2, 0, 0, 0, tower_pod.p1);

	object_move_to_point (pod_3, 0, tower_pod.p2);
	
	object_rotate_to_point (pod_3, 0, 0, 0, tower_pod.p2);

	object_move_to_point (pod_4, 0, tower_pod.p3);

	object_rotate_to_point (pod_4, 0, 0, 0, tower_pod.p3);

	object_move_to_point (pod_5, 0, tower_pod.p4);

	object_rotate_to_point (pod_5, 0, 0, 0, tower_pod.p4);

end

script static void rally_tower_move_2()

	object_move_to_point (pod_6, 0, tower_pod.p5);
	
	object_rotate_to_point (pod_6, 0, 0, 0, tower_pod.p5);
	
	object_move_to_point (pod_7, 0, tower_pod.p6);

	object_rotate_to_point (pod_7, 0, 0, 0, tower_pod.p6);

end

script static void spartan_scorpion_enter()

	print (":  : Spartans Entering Scorpion :  :");
		
		repeat
		
			ai_vehicle_enter (sq_hum_rally_infantry, ve_rally_scorpion);
		
		until
		
		(vehicle_test_seat (ve_rally_scorpion, "scorpion_d") == TRUE);
		
		sleep (30 * 5);
	
		ai_set_task (sq_hum_rally_infantry, obj_hum_vehicle, start);

end

script static void rally_intro_obj_change()

//	sleep_until (ai_living_count (sq_hum_rally_warthog_1) > 1);
	
	sleep_until (volume_test_players (tv_0), 1);
	
	ai_set_objective (sq_hum_rally_warthog_1, obj_hum_vehicle);
	ai_set_objective (sq_hum_rally_infantry, obj_hum_vehicle);
	print (" :  : Warthog Idiots Should Be In Main Vehicle Objective! IDIOTS! :  :");

end

script dormant f_first_rally_infantry()
	sleep_until (volume_test_players (tv_1st_rally_infantry), 1);
	ai_place (sq_phantom_destroy);
	ai_disregard ((ai_actors (sq_phantom_destroy)), TRUE);
	print (":  : Phantom Drop :  :");
	garbage_collect_now();
end

script dormant f_bowl_setup()
	sleep_until (volume_test_players (tv_bowl_start), 1);
	print ("Bowl Encounter Spawning");
	
	garbage_collect_now();
	
	ai_place (sg_bowl_all);
	ai_place (sq_bowl_hum_mid);
	
	//sleep_until (current_zone_set_fully_active() == s_infinity_ins_idx, 1);
	
	wake (f_door_open);
	
	zone_set_trigger_volume_enable ("zone_set:infinity_berth:*", FALSE);
	zone_set_trigger_volume_enable ("begin_zone_set:infinity_berth:*", FALSE);
	
	sleep (30 * 2);
	
	print (":  : Inf Berth Awake :  :");
		
	garbage_collect_now();
	
end

script dormant f_door_open()

//	thread (m60_infinity_ext_cleared());

	sleep (30 * 2);
	
	f_blip_flag (infinity_door_right, "recon");
	
	sleep_until (volume_test_players (tv_berth_enter), 1);

	infinity_rock_fall->f_animate();

	sleep (30 * 5);

	zone_set_trigger_volume_enable ("begin_zone_set:infinity_berth:*", TRUE);
	
	if (not editor_mode()) then
		sleep_until(current_zone_set() == zs_infinity_berth, 1); // Wait a tick until the volume becomes triggered.
	end
	
	print (" :  : Begin zone set enabled :  :");

//	switch_zone_set (infinity_berth);
	
	print (":  : Temp Berth Teleport :  :");
	
	f_unblip_flag (infinity_door_right);
	
	sleep_until (preparingToSwitchZoneSet() == FALSE, 1);
	
	print (" :  : Trigger volume enabled :  :");
	
	zone_set_trigger_volume_enable ("zone_set:infinity_berth:*", TRUE);
	
	infinity_tank_lift->f_animate();
	
	volume_teleport_players_not_inside_with_vehicles (tv_berth_enter, tank_lift_teleport);
	
	wake (inf_berth);
	
		if
			(ai_living_count (sq_hum_rally_infantry) == 4)
		AND
			(ai_living_count (sq_hum_rally_warthog_1) == 2)
		then
			print (":  : Rally Marines Are Alive :  :");
			m60_achievement_rally = true;
		else
			print (":  : Rally Marines Are Dead! You Monster! :  :");
		end
	
	thread (m60_infinity_run_03());
	
	sleep (30 * 10);
	
	volume_teleport_players_not_inside (trig_inf_berth_mid, f_teleport_berth_safety);
	
end

script dormant f_rally_obj()
	cui_hud_set_new_objective (chtitlerally);
end	

// =================================================================================================
// =================================================================================================
// RALLY MARINE AI
// =================================================================================================
// =================================================================================================

script dormant rally_overturned()
	
	repeat
		
		if
			vehicle_overturned (ai_vehicle_get_from_spawn_point (sq_hum_rally_warthog_1.p0)) == TRUE
		then		
			print (":  : Rally Warthog Tipped!! :  :");
			
			sleep_until (ai_in_vehicle_count (sq_hum_rally_warthog_1) == 0);
			ai_vehicle_enter (sq_hum_rally_warthog_1, (ai_vehicle_get_from_spawn_point (sq_hum_rally_warthog_1.p0)));
			
		end
		
	until (1 == 0);
	
end
	
script dormant obj_follow_start()
	sleep_until (volume_test_players (tv_0), 1);
	obj_follow = 1;
	print ("obj_follow 1 - marines moving up");
end

script dormant obj_follow_1()
	sleep_until (volume_test_players (tv_1), 1);
	obj_follow = 5;
	print ("obj_follow 5 - marines moving up");
end

script dormant obj_follow_2()
	sleep_until (volume_test_players (tv_2), 1);
	obj_follow = 10; 
	print ("obj_follow 10 - marines moving up");
end

script dormant obj_follow_3()
	sleep_until (volume_test_players (tv_3), 1);
	obj_follow = 15; 
	print ("obj_follow 15 - marines moving up");
end

script dormant obj_follow_35()
	sleep_until (volume_test_players (tv_35), 1);
	obj_follow = 32;
	print ("obj_follow 40 - marines moving up"); 
end

script dormant obj_follow_4()
	sleep_until (volume_test_players (tv_4), 1);
	obj_follow = 20;
	print ("obj_follow 20 - marines moving up"); 
end

script dormant obj_follow_5()
	sleep_until (volume_test_players (tv_5), 1);
	obj_follow = 25;
	print ("obj_follow 25 - marines moving up"); 
	game_save_no_timeout();
end

script dormant obj_follow_6()
	sleep_until (volume_test_players (tv_6), 1);
	obj_follow = 30; 
	print ("obj_follow 30 - marines moving up");
end

script dormant obj_follow_7()
	sleep_until (volume_test_players (tv_7), 1);
	obj_follow = 35;
	print ("obj_follow 35 - marines moving up");
end

script dormant obj_follow_8()
	sleep_until (volume_test_players (tv_8), 1);
	obj_follow = 40;
	print ("obj_follow 40 - marines moving up"); 
end

/*
script command_script gausshog_go_1()
	cs_enable_targeting (TRUE);
	cs_enable_looking (TRUE);
	cs_enable_moving (TRUE);
	
	sleep_until (volume_test_players (tv_1));
	print ("tv_1 hit, moving gausshog");
	cs_go_to (ps_gausshog.p0);
	cs_go_to (ps_gausshog.p1);
	cs_go_to (ps_gausshog.p2);
	cs_go_to (ps_gausshog.p3);
//	cs_go_to_and_face (ps_gausshog.p2, ps_gausshog.p3);
//	cs_go_to_and_face (ps_gausshog.p3, ps_gausshog.p4);
	
	print ("test");
	sleep_until (volume_test_players (tv_2));
	print ("tv_2 hit, moving gausshog");
	cs_go_to (ps_gausshog.p4);
	cs_go_to_and_face (ps_gausshog.p5, ps_gausshog.p6);
	cs_go_to_and_face (ps_gausshog.p6, ps_gausshog.p7);
	cs_go_to_and_face (ps_gausshog.p8, ps_gausshog.p9);
	
	sleep_until (volume_test_players (tv_3));
	print ("tv_3 hit, moving gausshog");
	cs_go_to (ps_gausshog.p9);
	cs_go_to_and_face (ps_gausshog.p10, ps_gausshog.p11);
end	
*/

// =================================================================================================
// =================================================================================================
// RALLY COMMAND SCRIPTS
// =================================================================================================
// =================================================================================================

script command_script cs_rally_intro_phantom

	f_load_phantom (sq_cov_rally_intro_ph, "left", sq_cov_rally_intro_drop_l, none, none, none);
	f_load_phantom (sq_cov_rally_intro_ph, "right", sq_cov_rally_intro_drop_r, none, none, none);

	ai_braindead ((ai_get_turret_ai(ai_current_actor, 0)), TRUE);

	cs_fly_by (ps_phantom_ral_1.p6);
	cs_fly_by (ps_phantom_ral_1.p5);
	cs_fly_by (ps_phantom_ral_1.p0);
	cs_fly_by (ps_phantom_ral_1.p1);
	//ai_braindead ((ai_get_turret_ai(ai_current_actor, 0)), FALSE);
	cs_vehicle_speed (.75);
	cs_fly_by (ps_phantom_ral_1.p8);
	cs_fly_to_and_face (ps_phantom_ral_1.p2, ps_phantom_ral_1.p3);
	sleep (30 * 2);
	f_unload_phantom (sq_cov_rally_intro_ph, "right");
	f_unload_phantom (sq_cov_rally_intro_ph, "left");
	sleep (30 * 2);
	cs_fly_by (ps_phantom_ral_1.p4);
	cs_fly_by (ps_phantom_ral_1.p8);
	//ai_braindead ((ai_get_turret_ai(ai_current_actor, 0)), TRUE);
	cs_fly_by (ps_phantom_ral_1.p1);
	cs_fly_by (ps_phantom_ral_1.p0);
	cs_fly_by (ps_phantom_ral_1.p5);
	cs_fly_by (ps_phantom_ral_1.p6);
	cs_fly_by (ps_phantom_ral_1.p7);
	ai_erase (sq_cov_rally_intro_ph);

end

script command_script cs_rally_pelican_1

	print ("HEY");
	//cs_ignore_obstacles (TRUE);
	ai_place (sq_hum_rally_warthog_1);
	vehicle_load_magic (ai_vehicle_get_from_spawn_point (sq_rally_pel_1.driver), "pelican_lc", (ai_vehicle_get_from_spawn_point (sq_hum_rally_warthog_1.p0))); 
	cs_vehicle_speed (.75);
	cs_fly_by (ral_pel_1.p0);
	cs_fly_by (ral_pel_1.p5);
	cs_vehicle_speed (.5);
	cs_fly_to_and_face (ral_pel_1.p4, ral_pel_1.p3);
	sleep (30 * 2);
	sleep_until 
	(
	 (volume_test_players (tv_ral_pel_drop) == 0)
	AND
	 (
	  (ai_living_count (sq_hum_rally_infantry) == 0)
	   OR 
	  (volume_test_objects_all (tv_ral_pel_drop, (ai_actors (sq_hum_rally_infantry))) == FALSE)
	 )
	);
	
	vehicle_unload	((ai_vehicle_get_from_spawn_point (sq_rally_pel_1.driver)), "pelican_lc");
	sleep (30 * 2);
	cs_vehicle_speed (.3);
	cs_fly_by (ral_pel_1.p6);
	cs_vehicle_speed (1);
	object_set_scale ((ai_vehicle_get_from_spawn_point (sq_rally_pel_1.driver)), .01, 210);
	cs_fly_by (ral_pel_1.p7);
	ai_erase (sq_rally_pel_1);
	
end

script command_script cs_rally_flyin

	vehicle_set_player_interaction (ai_vehicle_get (ai_current_actor), "pelican_p_l01", 1, 0);	
	vehicle_set_player_interaction (ai_vehicle_get (ai_current_actor), "pelican_p_l02", 1, 0);
	vehicle_set_player_interaction (ai_vehicle_get (ai_current_actor), "pelican_p_l03", 1, 0);
	vehicle_set_player_interaction (ai_vehicle_get (ai_current_actor), "pelican_p_l04", 1, 0);
	vehicle_set_player_interaction (ai_vehicle_get (ai_current_actor), "pelican_p_l05", 1, 0);
	vehicle_set_player_interaction (ai_vehicle_get (ai_current_actor), "pelican_p_r01", 1, 0);
	vehicle_set_player_interaction (ai_vehicle_get (ai_current_actor), "pelican_p_r02", 1, 0);
	vehicle_set_player_interaction (ai_vehicle_get (ai_current_actor), "pelican_p_r03", 1, 0);
	vehicle_set_player_interaction (ai_vehicle_get (ai_current_actor), "pelican_p_r04", 1, 0);
	vehicle_set_player_interaction (ai_vehicle_get (ai_current_actor), "pelican_p_r05", 1, 0);

	ai_disregard (ai_vehicle_get_from_spawn_point (sq_rally_pel_2), TRUE);

	sleep (30 * 3);
	
	unit_exit_vehicle (player0, 0);
	unit_exit_vehicle (player1, 0);
	unit_exit_vehicle (player2, 0);
	unit_exit_vehicle (player3, 0);

	sleep_until (player_in_vehicle (ai_vehicle_get (ai_current_actor)) == 0);

	//thread (pelican_door_anim_rally());
	
	print (":  : Pelican Exited :  :");
	
	//cs_vehicle_speed (.5);
	
	//sleep (30 * 2);

	ai_disregard (ai_vehicle_get_from_spawn_point (sq_rally_pel_2), FALSE);
	
	//sleep (10);

	//cs_vehicle_speed (.3);

	//sleep (10);
	
	//object_set_scale (ai_vehicle_get_from_spawn_point (sq_rally_pel_2.driver), .5, 150);
		

end

script static void pelican_door_anim_rally()
	custom_animation_hold_last_frame (ai_vehicle_get_from_spawn_point (sq_rally_pel_2.driver), "objects\vehicles\human\storm_pelican\storm_pelican.model_animation_graph", "vehicle:door_open_close", false);
//	sleep_until (volume_test_players (tv_pelican_out), 1);
	sleep (30 * 5);
	unit_stop_custom_animation (ai_vehicle_get_from_spawn_point (sq_rally_pel_2.driver));
end

script command_script wraith_shoot
	cs_shoot (TRUE, player0);
	sleep (30 * 10);
end

script command_script f_rally_ghost_jump()
	cs_abort_on_damage (TRUE);
	cs_vehicle_boost (TRUE);
	cs_enable_targeting (TRUE);
	cs_move_towards_point (ps_ghost_jump.p0, 0.25);
	cs_move_towards_point (ps_ghost_jump.p1, .25);
	cs_vehicle_boost (FALSE);
	cs_move_towards_point (ps_ghost_jump.p2, 25);
end	

script command_script bowl_ghost_surprise()
	cs_abort_on_damage (TRUE);
	cs_vehicle_boost (TRUE);
	cs_move_towards_point (ps_bowl_ghosts.p0, 0.5);
	cs_move_towards_point (ps_bowl_ghosts.p1, 0.5);
end

script command_script bowl_ghost_surprise_2()
	cs_abort_on_damage (TRUE);
	cs_vehicle_boost (TRUE);
	cs_move_towards_point (ps_bowl_ghosts_2.p0, 0.5);
	cs_move_towards_point (ps_bowl_ghosts_2.p1, 0.5);
	cs_face (TRUE, ps_bowl_ghosts_2.p2);
	cs_vehicle_boost (FALSE);
	cs_move_towards_point (ps_bowl_ghosts_2.p2, 0.5);
	cs_face (FALSE, ps_bowl_ghosts_2.p2);
	cs_face (TRUE, ps_bowl_ghosts_2.p3);
	cs_move_towards_point (ps_bowl_ghosts_2.p3, 0.5);
end

script command_script rally_ghost_3_a
	cs_vehicle_boost (TRUE);
	cs_ignore_obstacles (TRUE);
	cs_move_towards_point (ps_ghost_attack_1.p0, 0.5);
end

script command_script rally_ghost_3_b
	cs_vehicle_boost (TRUE);
	//cs_ignore_obstacles (TRUE);
	cs_move_towards_point (ps_rally_ghost_boost.p0, 0.5);
end

script command_script bowl_rear_wraith()
	cs_abort_on_damage (TRUE);
	cs_move_towards_point (ps_rear_wraith.p0, 1);
	cs_face (TRUE, ps_rear_wraith.p2);
	cs_move_towards_point (ps_rear_wraith.p1, 1);
end

script command_script phantom_destroy()
	print ("place ghost 1");
	ai_place (sq_cov_rally_2);
	print ("place ghost 2");
	ai_place (sq_cov_rally_3);
	vehicle_load_magic (ai_vehicle_get_from_spawn_point (sq_phantom_destroy.driver), "phantom_sc02", ai_vehicle_get_from_starting_location (sq_cov_rally_2.driver));
	print ("load ghost 1");
	vehicle_load_magic (ai_vehicle_get_from_spawn_point (sq_phantom_destroy.driver), "phantom_sc01", ai_vehicle_get_from_starting_location (sq_cov_rally_3.driver));
	print ("load ghost 2");
	cs_vehicle_speed (2);
	cs_fly_by (ps_phantom_destroy.p4);
	cs_fly_by (ps_phantom_destroy.p8);
	cs_fly_to_and_face (ps_phantom_destroy.p6, ps_phantom_destroy.p7);
	sleep (30 * 2);
			vehicle_unload	((ai_vehicle_get_from_spawn_point (sq_phantom_destroy.driver)), "phantom_sc02");
			print ("unload ghost 1");
	cs_fly_to_and_face (ps_phantom_destroy.p5, ps_phantom_destroy.p1);
	sleep (30 * 2);
			vehicle_unload	((ai_vehicle_get_from_spawn_point (sq_phantom_destroy.driver)), "phantom_sc01");
			print ("unload ghost 2");
	sleep (30 * 2);
		cs_vehicle_speed (.5);
	//cs_fly_by (ps_phantom_destroy.p2);
	cs_fly_by (ps_phantom_destroy.p3);
	ai_erase (sq_phantom_destroy);
	
end

script dormant phantom_garbage_collect()
	sleep_until (ai_living_count (sq_phantom_destroy) == 0) or (volume_test_players (tv_watchtower_spawn));
	garbage_collect_now();
end

script command_script startup_attack_infinity_1()
cs_abort_on_damage (TRUE);
repeat 
cs_shoot_point (true, ps_infinity_points.p0);
until (volume_test_players (tv_abort_shooting_infinity), 1);
end

script command_script startup_attack_infinity_2()
cs_abort_on_damage (TRUE);
repeat 
cs_shoot_point (true, ps_infinity_points.p1);
until (volume_test_players (tv_abort_shooting_infinity), 1);
end

// =================================================================================================
// =================================================================================================
// RALLY PAWN INTRO
// =================================================================================================
// =================================================================================================

script command_script cs_rally_pawn_1

	cs_abort_on_damage (TRUE);
	cs_go_to (ps_rally_pawn.p0);
	cs_go_to (ps_rally_pawn.p1);
	cs_go_to (ps_rally_pawn.p2);
	cs_go_to (ps_rally_pawn.p3);
	
end

script command_script cs_rally_pawn_2

	cs_abort_on_damage (TRUE);
	cs_go_to (ps_rally_pawn.p7);
	cs_go_to (ps_rally_pawn.p8);
	cs_go_to (ps_rally_pawn.p9);
	
end

script command_script cs_rally_pawn_3

	cs_abort_on_damage (TRUE);
	cs_go_to (ps_rally_pawn.p4);
	cs_go_to (ps_rally_pawn.p5);
	cs_go_to (ps_rally_pawn.p6);
	
end

// =================================================================================================
// =================================================================================================
// TRAILS
// =================================================================================================
// =================================================================================================

script dormant f_thicket_main()

	sleep_until (b_mission_started == TRUE);
	dprint  (" - trails start - ");
	wake (f_thicket_tv_check_1);
	wake (f_thicket_tv_check_2);
	wake (f_thicket_tv_check_3);
	wake (f_thicket_tv_check_4);
	wake (f_thicket_tv_check_5);
	wake (f_chtitletrails);
	wake (f_trails_1_enc_1);
	wake (f_trails_1_enc_2);
	//wake (f_spawn_intro_knights);
	
end


script dormant f_thicket_tv_check_1()
	sleep_until (volume_test_players (tv_spawn_2), 1);
	print ("obj_thicket = 1");
	obj_thicket = 1;
	game_save_no_timeout();
	garbage_collect_now();
end

script dormant f_thicket_tv_check_2()
	sleep_until (volume_test_players (tv_spawn_3), 1);
	print ("obj_thicket = 2");
	obj_thicket = 2;
	game_save_no_timeout();
	garbage_collect_now();
end

script dormant f_thicket_tv_check_3()
	sleep_until (volume_test_players (tv_spawn_4), 1);
	print ("obj_thicket = 3");
	obj_thicket = 3;
	game_save();
	game_save_no_timeout();
	garbage_collect_now();
end

script dormant f_thicket_tv_check_4()
	sleep_until (volume_test_players (tv_spawn_5), 1);
	print ("obj_thicket = 4");
	obj_thicket = 4;
	game_save_no_timeout();
	garbage_collect_now();
end

script dormant f_thicket_tv_check_5()
	sleep_until (volume_test_players (tv_spawn_6), 1);
	print ("obj_thicket = 5");
	obj_thicket = 5;
	game_save_no_timeout();
end

script dormant f_blip_trail_passage_breadcrumbs()
	f_blip_position_breadcrumbs(41.25, -80.00, -1.15, "passage", "default");
	sleep_until (volume_test_players (trig_snack_fb), 1);
	f_unblip_position_breadcrumbs("passage");
end

script dormant f_chtitletrails()
	sleep_until (volume_test_players (tv_chtitletrails), 1);
	
	//cui_hud_set_new_objective (chtitletrails);
	
	//wake (f_chtitletrails_end);
	
	garbage_collect_now();
end
	
script dormant f_chtitletrails_end()	
	cui_hud_set_objective_complete (obj_complete);
	sleep (30 * 3);
	garbage_collect_now();
end

script dormant f_laskytemp()

	fade_out (0, 0, 0, 0);

	objectives_finish (0);
	
	switch_zone_set (trail_boulders);
	sleep_until (current_zone_set_fully_active() == zs_trail_boulders, 2);
	object_teleport_to_ai_point (player0, ps_laskytemp.p0);
	object_teleport_to_ai_point (player1, ps_laskytemp.p1);
	object_teleport_to_ai_point (player2, ps_laskytemp.p2);
	object_teleport_to_ai_point (player3, ps_laskytemp.p3);
	cutscene_over = 1;
	thread (trails3lb());
	
	hud_play_global_animtion (screen_fade_out);
	
	sleep (15);
	
	cinematic_show_letterbox (TRUE);
	
	hud_stop_global_animtion (screen_fade_out);
	
	fade_in (0, 0, 0, 90);
	game_save_immediate();
	
	wake (trail_2);
	
end


script static void trails3lb()

	hud_play_global_animtion (screen_fade_out);
	cinematic_show_letterbox (TRUE);
	sleep_s (1.5);
	cinematic_set_title (t3letterbox);
	hud_stop_global_animtion (screen_fade_out);
	sleep_s (3.5);     
	hud_play_global_animtion (screen_fade_in);
	hud_stop_global_animtion (screen_fade_in);
	cinematic_show_letterbox (FALSE);
	
	cui_hud_set_new_objective (chtitleintro);
	
	garbage_collect_now();
	
end

script static void f_delrio_speaks()
	// 204 : This is Del Rio of the Infinity. I'm transmitting on an open frequency! Infinity is under attack! All ground forces are ordered to return to Infinity immediately! Anyone reading this, respond to Comm on... what frequency? (doesn�t get an answer) What frequency, damnit?!? (gets his answer) 1
	//sound_impulse_start ('sound\environments\solo\m060\vo\M_M60_Del_Rio03300', NONE, 1);
	//	sleep (30 * 20);
	// 405 : Transmitting on an open frequency! Infinity is under attack!
	sound_impulse_start ('sound\environments\solo\m060\vo\m_m60_del_rio_03100', NONE, 1);
	sleep (30 * 6.507);

end

////////----------------------///////
// KNIGHT BIRTHING BISHOP //
////////----------------------///////

script command_script cs_bishop_spawn1()
        print("bishop sleeping");
        ai_enter_limbo(ai_current_actor);
        CreateDynamicTask(TT_SPAWN, FT_BIRTHER, ai_get_object(ai_current_actor), OnCompleteProtoSpawn1, 0);
end

script static void OnCompleteProtoSpawn1()
print("I LIVE. RUN COWARD!");
end

////////----------------------///////
// ENCOUNTER 1 //
////////----------------------///////

script static void rock_pawn_sound()

	sleep (110);
	if
		ai_living_count (sq_e3_rock_pawn) == 1
	then
		sound_impulse_start (sound\storm\characters\pawn\vo\npc_pawn_any_beserk_vox_temp, sq_e3_rock_pawn, 1 );
		print("bark sound");
	else
		print (":  : Rock Pawn's Dead :  :");
	end
	
end

script dormant f_trails_1_enc_1()

	sleep_until (volume_test_players (tv_spawn_enc_1), 1);
	
	object_wake_physics (trail_a_dead_1);
	object_wake_physics (trail_a_dead_2);
	object_wake_physics (trail_a_dead_3);
	object_wake_physics (trail_a_dead_5);
	object_wake_physics (trail_a_dead_6);
	object_wake_physics (trail_a_dead_7);
	
	//First Encounter Music Start
	thread(f_mus_m60_e01_begin());
	
	print ("spawning first encounter");
	ai_lod_full_detail_actors (9);
	ai_place (sg_enc_1);
	//pup_play_show (rock_pawn_early);
	sleep_until (volume_test_players (tv_birth_babby), 1);
	print (":  : Pawn Hero XP! :  :");
	//ai_place (sq_enc_1_knight_1);
	game_save_no_timeout();
	pup_play_show (hero_pawn_xp);
	sleep_until (volume_test_players (trig_pawn_obj), 1);
	pup_play_show (wall_pawn);
	wake (pup_tree_kill);
	garbage_collect_now();
	sleep_until (volume_test_players (tv_pawn_rock), 1);
	pup_play_show (rock_pawn);
	thread (rock_pawn_sound());
	sleep_until (volume_test_players (trig_trail1_spawn2), 1);
	sleep_until (current_zone_set_fully_active() == zs_trail_a, 1);
	print (":  : Spawn Trail 1-B :  :");
	ai_place (sg_enc_1_b);
	sleep_until (volume_test_players (trig_trail1_knight_surprise), 1);
	ai_place (sq_enc_1_bi);
	unit_doesnt_drop_items (ai_actors (sq_enc_1_bi));
	ai_place (sq_enc_1_pawn_2_d);
end

script dormant pup_tree_kill
	
	sleep_until (puppet_show_tree == TRUE);
	
	sleep_until(volume_test_players_lookat(trig_trails_vig_lookat, 40, 40) == FALSE);
	print (" :  : Not looking at puppet :  :");
	ai_erase (sq_pawn_wall_animated);

end


/*script dormant f_spawn_intro_knights

	sleep_until (volume_test_players (spawn_intro_knights_1), 1);
	ai_place (sq_knight_intro_1);
	ai_place (sq_knight_intro_4);
	ai_place (sq_knight_intro_5);
	object_wake_physics (dm_thicket_1);
	object_wake_physics (dm_thicket_2);
	object_wake_physics (dm_thicket_3);
	object_wake_physics (dm_thicket_4);

end*/

script command_script cs_knight_enc_1_phase_1()
	sleep_until (volume_test_players (tv_birth_babby), 1);
	cs_phase_to_point(ps_enc_1_knight_phase.p0);
end

script command_script cs_trail_1_kn_phase
	cs_phase_to_point(ps_enc_1_knight_phase.p2);
end

script command_script cs_trail_1_kn_phase_2
	cs_phase_to_point(ps_enc_1_knight_phase.p3);
end

/////====================///////////
//// KNIGHT INTRO PHASING ////
////=====================/////////

script static void xray_fx_play(ai the_guy)
	effect_new_on_object_marker ("objects\equipment\storm_forerunner_vision\fx\storm_forerunner_vision.effect", the_guy, "fx_head");
	print ("played xray fx");
end

script static void xray_fx_stop(ai the_guy)
	effect_stop_object_marker ("objects\equipment\storm_forerunner_vision\fx\storm_forerunner_vision.effect", the_guy, "fx_head");
	print ("stopped xray fx");
end

script command_script cs_knight_intro_phase_1()
sleep_until 
(
	volume_test_players (tv_intro_phase_1)
	OR
	ai_strength (ai_current_actor) < 1
);
thread (xray_fx_play(ai_current_actor));
sleep (30 * 2);
cs_phase_to_point(ps_enc_1_knight_phase.p1);
ai_erase (sq_knight_intro_1);
end

script command_script cs_knight_intro_phase_4()
sleep_until 
(
	volume_test_players (tv_intro_phase_4)
	OR
	ai_strength (ai_current_actor) < 1
);
thread (xray_fx_play(ai_current_actor));
sleep (30 * 2);
cs_phase_to_point(ps_enc_1_knight_phase.p1);
ai_erase (sq_knight_intro_4);
end

script command_script cs_knight_intro_phase_5()
sleep_until 
(
	volume_test_players (tv_intro_phase_5)
	OR
	ai_strength (ai_current_actor) < 1
);
thread (xray_fx_play(ai_current_actor));
sleep (30 * 2);
cs_phase_to_point(ps_enc_1_knight_phase.p1);
ai_erase (sq_knight_intro_5);
end

script command_script knight_intro_anim_1
	
	cs_custom_animation (objects\characters\storm_knight\storm_knight.model_animation_graph, "Vin_e3_sync_knight_overwhelm_bw1", FALSE);
	sleep (60);
	cs_custom_animation (objects\characters\storm_knight\storm_knight.model_animation_graph, "Vin_e3_sync_knight_overwhelm_ranger1", FALSE);
	sleep (60);
	cs_custom_animation (objects\characters\storm_knight\storm_knight.model_animation_graph, "Vin_e3_sync_knight_overwhelm_ranger2", FALSE);
	sleep (60);
	cs_custom_animation (objects\characters\storm_knight\storm_knight.model_animation_graph, "Vin_e3_sync_knight_overwhelm_ranger3", FALSE);
//	sleep (60);
//	cs_custom_animation (objects\characters\storm_knight\storm_knight.model_animation_graph, "Vin_e3_sync_knight_overwhelm_ranger4", FALSE);
end

/////====================///////////
//// ENCOUNTER 2 ////
////=====================/////////

script dormant f_trails_1_enc_2

	sleep_until (volume_test_players (tv_spawn_enc_2), 1);
	
	object_wake_physics (trail_a_dead_4);
	object_wake_physics (trail_a_dead_2);
	object_wake_physics (trail_a_dead_3);
	
	ai_place (sg_enc_2);
	//wake (f_dialog_m60_watchers_callout);
	//print (" :  : Cortana: Watchers! :  :");
	sleep_until (volume_test_players (trig_enc_2_int), 1);
	ai_place_with_shards (sq_enc_2_pawn_2);
	ai_place (sq_enc_2_pawn_snack_1_a);
	ai_place (sq_enc_2_pawn_snack_2_a);
	ai_place (sq_enc_2_pawn_snipe);
	//sleep_until (volume_test_players (trig_trail_vig), 1);
	
	sleep_until (current_zone_set_fully_active() == 15);
	
	ai_place (sq_xray_vig_ma);
	ai_disregard (ai_actors(sq_xray_vig_ma), TRUE);
	
	//First Encounter Music Stop
	thread (f_mus_m60_e01_finish());

	wake (f_t2_ledge);

end

script dormant xray_training
	
sleep_until 
		(unit_has_equipment (player0, objects\equipment\storm_forerunner_vision\storm_forerunner_vision_pve.equipment)
	OR
		unit_has_equipment (player1, objects\equipment\storm_forerunner_vision\storm_forerunner_vision_pve.equipment)
	OR
		unit_has_equipment (player2, objects\equipment\storm_forerunner_vision\storm_forerunner_vision_pve.equipment)
	OR
		unit_has_equipment (player3, objects\equipment\storm_forerunner_vision\storm_forerunner_vision_pve.equipment)
		);
		
	if
	
		(unit_has_equipment (player0, objects\equipment\storm_forerunner_vision\storm_forerunner_vision_pve.equipment)) == TRUE
	
	then
		
		chud_show_screen_training (player0, training_promethean);
		
		player_action_test_reset();
	
		sleep_until (player_action_test_equipment()
		
			OR
			
								volume_test_players (trig_xray_int));
		
		chud_show_screen_training (player0, "");
		
	elseif
		(unit_has_equipment (player1, objects\equipment\storm_forerunner_vision\storm_forerunner_vision_pve.equipment)) == TRUE
	then
		chud_show_screen_training (player1, training_promethean);
		
		player_action_test_reset();
	
		sleep_until (player_action_test_equipment()
		
			OR
			
								volume_test_players (trig_xray_int));
		
		chud_show_screen_training (player1, "");
		
	elseif
		(unit_has_equipment (player2, objects\equipment\storm_forerunner_vision\storm_forerunner_vision_pve.equipment)) == TRUE
	then
		chud_show_screen_training (player2, training_promethean);
		
		player_action_test_reset();
	
		sleep_until (player_action_test_equipment()
		
			OR
			
								volume_test_players (trig_xray_int));
		
		chud_show_screen_training (player2, "");
		
	elseif
		(unit_has_equipment (player3, objects\equipment\storm_forerunner_vision\storm_forerunner_vision_pve.equipment)) == TRUE
	then
		chud_show_screen_training (player3, training_promethean);
		player_action_test_reset();
	
		sleep_until (player_action_test_equipment()
		
			OR
			
								volume_test_players (trig_xray_int));
		
		chud_show_screen_training (player3, "");
	end

end	
		
script dormant f_t2_ledge

	thread (pit_aware());
	
	sleep_until (volume_test_players_lookat (trig_trails_lookat, 35, 35)
							
							or
							
							ai_strength (sq_xray_vig_ma) < 1
						
							or
							
							volume_test_players (trig_trail_vig), 1);
	
	print (":  : PLAYING SHOW CUZ YOU LOOKED AT THE THING :  :");

	object_wake_physics (trail_b_dead_1);
	object_wake_physics (trail_b_dead_2);
	
	ai_place (sg_t2_ledge);
	
	pup_play_show (suicide);
	
	soft_ceiling_enable ("softwall_blocker_trail_c", FALSE);

	sleep (30);
	
	ai_disregard ((ai_actors (sq_xray_vig_kn)), TRUE);
	ai_disregard ((ai_actors (sq_xray_vig_ma)), TRUE);
		
	sleep (30 * 8);
	
	wake (m60_xray_intro);
	
	f_unblip_object (crumb_dogtag_02);
	
	wake (xray_training);
	
	thread (xray_unblip());
	
	wake (f_trailstwo_main);

	sleep_until (volume_test_players (tv_xray_vo_1), 1);

	wake (f_fog_passage_blip_breadcrumbs);

	pup_play_show (head_fake);
	
//	pup_play_show (pawn_over);
	
	sleep_until (volume_test_players (tv_fog_6), 1);
	
	ai_place (sq_kn_xr_exit_p);
	
	ai_place_in_limbo (sq_kn_xr_exit_k);
	
	sleep_until (volume_test_players (tv_t2_rockies), 1);
	
	object_wake_physics (dead_marine_2);
	
end

script static void pit_aware()

	print (":  : Shark Pit's Dumb! :  :");

	ai_set_blind (sg_t2_ledge, TRUE);
	ai_set_deaf (sg_t2_ledge, TRUE);
	
	sleep_until (volume_test_players (tv_t2_ledge), 1);
	
	ai_set_deaf (sg_t2_ledge, FALSE);
	
	sleep_until (ai_living_count (sg_t2_ledge) < 10
								OR
							ai_combat_status (sg_t2_ledge) > 1
								OR
							volume_test_players (trig_xray_int));
	
	print (":  : Not dumb! :  :");
	
	ai_set_blind (sg_t2_ledge, FALSE);

end

script static void xray_unblip()

	sleep (30 * 2);
	
	f_blip_object (xray_drop, "navpoint_xray");

	sleep_until 
		(unit_has_equipment (player0, objects\equipment\storm_forerunner_vision\storm_forerunner_vision_pve.equipment)
	OR
		unit_has_equipment (player1, objects\equipment\storm_forerunner_vision\storm_forerunner_vision_pve.equipment)
	OR
		unit_has_equipment (player2, objects\equipment\storm_forerunner_vision\storm_forerunner_vision_pve.equipment)
	OR
		unit_has_equipment (player3, objects\equipment\storm_forerunner_vision\storm_forerunner_vision_pve.equipment)
	OR
		volume_test_players (tv_fog_pit)
		);
	
	f_unblip_object (xray_drop);

end

script dormant f_fog_passage_blip_breadcrumbs()
	sleep_until (volume_test_players (tv_fog_pit), 1);
	f_blip_position_breadcrumbs(44.38, -110.97, -4.44, "fog_exit", "default");
	sleep_until(objects_distance_to_position(players(), 44.38, -110.97, -4.44) < 1.5);
	f_unblip_position_breadcrumbs("fog_exit");
end

// =================================================================================================
// =================================================================================================
// TRAILS COMMAND SCRIPTS
// =================================================================================================
// =================================================================================================

//X-Ray Vignette

script command_script cs_vig_mar
	cs_custom_animation_loop (objects\characters\storm_marine\storm_marine.model_animation_graph, "global_injured:unarmed:gut_lyingdown:var1", true);
	sleep (30 * 10);
end

script command_script cs_vig_fore
	cs_custom_animation (objects\characters\storm_knight\storm_knight.model_animation_graph, "combat:any:go_berserk", false);
	cs_melee_direction (0);
end

//Jumping Pawns



// --- End m60_rescue_mission_ch.hsc ---

// --- Begin m60_rescue_mission_tt.hsc ---
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343
//
// 	Mission: 					m60_rescue
//	Insertion Points:	start (or icl)	- Beginning
//										
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343

// =================================================================================================
// =================================================================================================
// *** GLOBALS ***
// =================================================================================================
// =================================================================================================

script dormant f_trailstwo_main()
	sleep_until (b_mission_started == TRUE);
	dprint  (" - trails two - ");

	// TEMP REMOVE - WHEN DONE

	wake (f_rockies);
	wake (f_tree);
	wake (f_save_pre_rockies);
end


//----------------- X RAY



//----------------- Rockies
	
script dormant f_rockies()
	sleep_until (volume_test_players (tv_t2_rockies), 1);
	sleep_until (volume_test_players (tv_t2_rockies2), 1);
	f_unblip_object (crumb_dogtag_02);
	
	object_wake_physics (plains_dead_marine);
	object_wake_physics (bb_dead_marine);
	
	ai_place (sg_plain_preview);
	wake (f_plains);
end

//------------------Plains 

script dormant f_plains()
	sleep_until (volume_test_players (trig_plains_spawn), 1);
//	device_set_power (door_treehouse_entrance, 0);
	
	//Start Encounter Music 2
	thread (f_mus_m60_e02_begin());
	
	ai_place (sq_plain_k1);
	ai_place (sq_plain_b1);
	ai_place (sq_plain_p1_l);
	ai_place (sq_plain_p1_r);
	ai_place (sg_plain_wall);
	print ("plains placed");
	game_save_no_timeout();
	ai_place (sq_plain_p2);
	print ("Spawning Pawns");
	ai_place (sq_plain_p_sp);
end

//------------------Tree

script dormant f_tree()
	sleep_until (volume_test_players (tv_t2_tree), 1);
	ai_place (sg_t2_tree);
	
	cs_suppress_dialogue_global (sq_vig_s4, TRUE);
	ai_actor_dialogue_enable (sq_vig_s4, FALSE);
	
	print ("sniper 2 placed");
	sleep_until (volume_test_players (th_vig), 1);

	effect_attached_to_camera_stop(environments\solo\m60_rescue\fx\ambient_life\forest_player_gnats.effect);
	
	//Encounter 2 Music End
	
	sleep_until (device_get_position(crumb_dogtag_last) > 0.0, 1 );
	
	pup_play_show (s4_door);
	
	sleep (30 * 2);
	
	if
		game_difficulty_get_real() == legendary
	then
		object_create (generic_b_b);
		thread (b_b_debug());
	else
		print (" :  : Not Legendary :  :");
	end
	
	thread (f_mus_m60_e02_finish());
	
end

script dormant f_save_pre_rockies()
	sleep_until (volume_test_players (tv_save_pre_rockies), 1);
	game_save();
	print ("save now");
end

script static void b_b_debug()
	print (":  : B B :  :");
	sleep_until (device_get_position(generic_b_b) > 0.0, 1 );
	m60_tank_rally_debug = true;
	print (":  : S1 :  :");
	sound_looping_start ( "sound\vehicles\mongoose\mongoose_horn\mongoose_horn.sound_looping", none, 1);
	sleep (10);
	sound_looping_stop ("sound\vehicles\mongoose\mongoose_horn\mongoose_horn.sound_looping");
	print (":  : S2 :  :");
	sound_looping_start ( "sound\vehicles\mongoose\mongoose_horn\mongoose_horn.sound_looping", none, 1);
	sleep (45);
	sound_looping_stop ("sound\vehicles\mongoose\mongoose_horn\mongoose_horn.sound_looping");
end

// =================================================================================================
// =================================================================================================
// TRAILS COMMAND SCRIPTS
// =================================================================================================
// =================================================================================================

script command_script plains_phase
	cs_phase_to_point (ps_plains_phase.p0);
end

script command_script treehouse_shoot_1
	cs_abort_on_alert (TRUE);
	cs_shoot_point (TRUE, ps_th_shoot.p0);
end
	
script command_script treehouse_shoot_2
	cs_abort_on_alert (TRUE);
	cs_shoot_point (TRUE, ps_th_shoot.p1);
end

script command_script treehouse_shoot_3
	cs_abort_on_alert (TRUE);
	cs_shoot_point (TRUE, ps_th_shoot.p2);
end
// --- End m60_rescue_mission_tt.hsc ---

// --- Begin m60_streaming.hsc ---
// Scripts aiding tricky streaming areas.

// CALLBACK from cin_m062_introductions cinematic
global zone_set cinOutroZS = "cin_m62_trail_dz";
script static void f_load_cin_m62_trail()
	prepare_to_switch_to_zone_set(cinOutroZS);
	// Don't bother committing the switch. We just want to avoid hitching much when loading back into gameplay
end

script dormant f_load_boulders()
	zone_set_trigger_volume_enable("begin_zone_set:boulders:scripted", TRUE);
	sleep_until(not PreparingToSwitchZoneSet(), 1);
	zone_set_trigger_volume_enable("zone_set:boulders:scripted", TRUE);
end
// --- End m60_streaming.hsc ---

