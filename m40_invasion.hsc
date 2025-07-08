// --- Begin m40_dialog.hsc ---
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343
//
// Mission: 					m40_dialog
//										
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343

// -------------------------------------------------------------------------------------------------
// DIALOG
// -------------------------------------------------------------------------------------------------
// DEFINES


// VARIABLES


// dialog ID variables






// --- END
/*

script static void  f_dialog_m40_landing_marine_chatter()
dprint("f_dialog_m40_landing_marine_chatter");
static long l_dialog_id = DEF_DIALOG_ID_NONE();

            if ( not dialog_background_id_active_check(l_dialog_id) ) then
            
                        l_dialog_id = dialog_start_background( "LANDING_MARINE_CHATTER", l_dialog_id, TRUE, DEF_DIALOG_STYLE_PLAY(), TRUE, "", 0.0 );
																			dialog_line_npc( l_dialog_id, 0, not ai_allegiance_broken(player, human), 'sound\dialog\mission\m40\m40_arrival_00103', FALSE, marines_misc_sq.bill, 0.0, "", "Marine 1 : Welcome back to the fight, Chief.", TRUE);
                        l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
                        
            end

end*/



script dormant f_dialog_m40_lasky_radio_contact()
dprint("f_dialog_m40_lasky_radio_contact");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					
            l_dialog_id = dialog_start_foreground( "LASKY_RADIO_CONTACT", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );                       
							//dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_arrival_00100', FALSE, NONE, 0.0, "", "Lasky : Chief, Lasky. We've had a bit of a complication.", TRUE);
							//dialog_line_npc( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m40\m40_arrival_00101a', FALSE, NONE, 0.0, "", "Lasky : Link up with Cmdr. Palmer and I in the Mammoth, A-SAP.", TRUE);
								
							start_radio_transmission( "palmer_transmission_name" );
							dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_palmer_ver_00100', FALSE, NONE, 0.0, "", "Palmer : Chief. Spartan Sarah Palmer in Infinity CIC. Commander Lasky's waiting for you on the Mammoth.", TRUE);
							dialog_line_chief( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m40\m40_arrival_00102', FALSE, NONE, 0.0, "", "Master Chief : On our way." );
							end_radio_transmission();
            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
					

end

script dormant f_dialog_m40_cortana_hall()
dprint("f_dialog_m40_cortana_hall");
local long l_dialog_id = DEF_DIALOG_ID_NONE();

            l_dialog_id = dialog_start_foreground( "CORTANA_HALL", l_dialog_id, TRUE, DEF_DIALOG_STYLE_INTERRUPT(), FALSE, "", 0.25 );              					
							//dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_arrival_00104', FALSE, NONE, 0.0, "", "Cortana : You realize they don't see you as any more real than those Prometheans.");
						//	dialog_line_chief( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m40\m40_arrival_00105', FALSE, NONE, 0.0, "", "Master Chief : What do you mean?");
							//dialog_line_cortana( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m40\m40_arrival_00106', FALSE, NONE, 0.0, "", "Cortana : We're artificial to them. Assets.");
							//dialog_line_chief( l_dialog_id, 3, TRUE, 'sound\dialog\mission\m40\m40_arrival_00108', FALSE, NONE, 0.0, "", "Master Chief : I don't follow." );
							//dialog_line_cortana( l_dialog_id, 4, TRUE, 'sound\dialog\mission\m40\m40_arrival_00109', FALSE, NONE, 0.0, "", "Cortana : Never mind. Let's just finish this and get out of here.");
            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );

end

script dormant f_dialog_m40_cortana_mammoth()
dprint("f_dialog_m40_cortana_mammoth");
local long l_dialog_id = DEF_DIALOG_ID_NONE();

            l_dialog_id = dialog_start_foreground( "CORTANA_MAMMOTH", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );                       
            
							dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_rollout_00100', FALSE, NONE, 0.0, "", "Cortana : Well. SOMEONE's overcompensating." );	
						
							start_radio_transmission( "gypsyone_transmission_name" );
							//sound_impulse_start( 'sound\storm\vo\play_1_99_01_in_squelch', NONE, 1 );
								
							dialog_line_npc( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m40\m40_intheair_00100a', FALSE, NONE, 0.0, "", "Pilot 1 : Papa Foxtrot Seven Six Six to Spartan Palmer, we�re finally in the air.", TRUE);
							end_radio_transmission();
							//sound_impulse_start( 'sound\storm\vo\play_1_99_02_out_squelch', NONE, 1 );
            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );


end

//script dormant f_dialog_m40_marine_nudge_inner()
//	dprint("f_dialog_m40_marine_nudge_inner");
/*local long L_dlg_marine_nudge_inner_01 = DEF_DIALOG_ID_NONE();

            L_dlg_marine_nudge_inner_01 = dialog_start_background("MARINE_NUDGE_INNER", L_dlg_marine_nudge_inner_01, TRUE, DEF_DIALOG_STYLE_PLAY(), TRUE, "", 0.25 );         
								dialog_line_npc( L_dlg_marine_nudge_inner_01, 0, not ai_allegiance_broken(player, human), 'sound\dialog\mission\m40\m40_mammoth_int_00100', FALSE, tort_marines.scott, 0.0, "", "Marine 2 : Master Chief, sir! The XO is looking for you up on the action deck.", TRUE);
            L_dlg_marine_nudge_inner_01 = dialog_end( L_dlg_marine_nudge_inner_01, TRUE, TRUE, "" );*/
				
		
		
//end


script dormant f_dialog_m40_marine_nudge_outer()
dprint("f_dialog_m40_marine_nudge_outer");
local long L_dlg_m40_marine_nudge_outer = DEF_DIALOG_ID_NONE();

            L_dlg_m40_marine_nudge_outer = dialog_start_background("MARINE_NUDGE_OUTER", L_dlg_m40_marine_nudge_outer, TRUE, DEF_DIALOG_STYLE_PLAY(), TRUE, "", 0.25 );         
            		dialog_line_npc( L_dlg_m40_marine_nudge_outer, 0, not ai_allegiance_broken(player, human), 'sound\dialog\mission\m40\m40_mammoth_int_00100', FALSE, marines_main_hog_01b_sq.hog_01_gunner, 0.0, "", "Stacker: Chief! Commander Lasky's looking for you up in the Mammoth.", TRUE);
            L_dlg_m40_marine_nudge_outer = dialog_end( L_dlg_m40_marine_nudge_outer, TRUE, TRUE, "" );


end

script static void f_dialog_m40_gun_in_mammoth( short s_index )


	local long l_dialog_id = DEF_DIALOG_ID_NONE();
	if ( s_index == 1 ) then
		 l_dialog_id = dialog_start_background("GUN_IN_MAMMOTH_a", l_dialog_id, TRUE, DEF_DIALOG_STYLE_PLAY(), TRUE, "", 0.25 );         
			dialog_line_npc( l_dialog_id, 0, not ai_allegiance_broken(player, human), 'sound\dialog\mission\m40\m40_mammoth_int_00200', FALSE, tort_marines.aaron, 0.0, "", "Mammoth Marine 1 : Hey Chief - 'no fighting in the war room' or however that goes.", TRUE);
		l_dialog_id = dialog_end( l_dialog_id, TRUE, FALSE, "" );
	end
	if ( s_index == 2 ) then
		 l_dialog_id = dialog_start_background("GUN_IN_MAMMOTH_b", l_dialog_id, TRUE, DEF_DIALOG_STYLE_PLAY(), TRUE, "", 0.25 );         
			dialog_line_npc( l_dialog_id, 0, not ai_allegiance_broken(player, human), 'sound\dialog\mission\m40\m40_mammoth_int_00201', FALSE, tort_marines.randall, 0.0, "", "Mammoth Marine 2 : Check your fire!", TRUE);
		l_dialog_id = dialog_end( l_dialog_id, TRUE, FALSE, "" );
	end
	if ( s_index == 3 ) then
		 l_dialog_id = dialog_start_background("GUN_IN_MAMMOTH_c", l_dialog_id, TRUE, DEF_DIALOG_STYLE_PLAY(), TRUE, "", 0.25 );         
			dialog_line_npc( l_dialog_id, 0, not ai_allegiance_broken(player, human), 'sound\dialog\mission\m40\m40_mammoth_int_00202', FALSE, tort_marines.brandon, 0.0, "", "Mammoth Marine 3 : Hey! They call it a safety for a reason!", TRUE);
		l_dialog_id = dialog_end( l_dialog_id, TRUE, FALSE, "" );
	end
	if ( s_index == 4 ) then
		 l_dialog_id = dialog_start_background("GUN_IN_MAMMOTH_d", l_dialog_id, TRUE, DEF_DIALOG_STYLE_PLAY(), TRUE, "", 0.25 );         
			dialog_line_npc( l_dialog_id, 0, not ai_allegiance_broken(player, human), 'sound\dialog\mission\m40\m40_mammoth_int_00203', FALSE,tort_marines.whitman, 0.0, "", "Mammoth Marine 1 : Not everyone's got armor, man!", TRUE);
		l_dialog_id = dialog_end( l_dialog_id, TRUE, FALSE, "" );
		
		static short gun_in_mammoth_state = 0;
	end


end


script static void f_dialog_m40_mammoth_button_1()
dprint( "f_dialog_m40_mammoth_button_1" );

	local long l_dialog_id = DEF_DIALOG_ID_NONE();



	if m40_map_area_01 == TRUE then
		l_dialog_id = dialog_start_background("MAMMOTH_BUTTON_1_A", l_dialog_id, TRUE, DEF_DIALOG_STYLE_PLAY(), TRUE, "", 0.0 );         
			dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_mammoth_button_one_00100', FALSE, tort_button_01_attachment, 0.0, "", "Mammoth System Voice : TACREP, six-digit grid November Uniform Seven Four Two, Four Five Four. Gypsy Company, Forward Operation Base. Enclosed rocky valley, bounded on four sides. Visibilty, poor. Encampment suitablity, good.", TRUE);
		l_dialog_id = dialog_end( l_dialog_id, TRUE, FALSE, "" );
	elseif m40_map_area_02 == TRUE then
		l_dialog_id = dialog_start_background("MAMMOTH_BUTTON_1_B", l_dialog_id, TRUE, DEF_DIALOG_STYLE_PLAY(), TRUE, "", 0.0 );         
			dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_mammoth_button_one_00101', FALSE, tort_button_01_attachment, 0.0, "", "Mammoth System Voice : TACREP, six-digit grid November Uniform Seven Two Two, Four Nine Seven. Battle Position Alpha, cliffside Area of Operations with line of sight to Enemy Artillary. Enemy encampments on site. Visability, good. Mobility potential, fair - terrain bisected by chemical river, impassible by smaller vehicles.", TRUE);
		l_dialog_id = dialog_end( l_dialog_id, TRUE, FALSE, "" );
	elseif m40_map_area_03 == TRUE then
		l_dialog_id = dialog_start_background("MAMMOTH_BUTTON_1_C", l_dialog_id, TRUE, DEF_DIALOG_STYLE_PLAY(), TRUE, "", 0.0 );         
			dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_mammoth_button_one_00102', FALSE, tort_button_01_attachment, 0.0, "", "Mammoth System Voice : TACREP, six-digit grid November Uniform Seven Two Two, Three Zero Five. Canyon pass en route to Battle Position Baker. Limited avenues of approach. High ground prevalent. Visibility, fair. Defensibility, poor.", TRUE);
		l_dialog_id = dialog_end( l_dialog_id, TRUE, FALSE, "" );
	
	elseif m40_map_area_04 == TRUE then
		l_dialog_id = dialog_start_background("MAMMOTH_BUTTON_1_D", l_dialog_id, TRUE, DEF_DIALOG_STYLE_PLAY(), TRUE, "", 0.0 );         
			dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_mammoth_button_one_00103', FALSE, tort_button_01_attachment, 0.0, "", "Mammoth System Voice : TACREP, six-digit grid November Uniform Seven One Two, Three Two Nine. Battle Position Baker, northwest of central Mesa with line of sight to Enemy Artillary. Heavy enemy resistance. Mobility potential, high. Defensibility, fair.", TRUE);
		l_dialog_id = dialog_end( l_dialog_id, TRUE, FALSE, "" );

	elseif m40_map_area_05 == TRUE then
		l_dialog_id = dialog_start_background("MAMMOTH_BUTTON_1_E", l_dialog_id, TRUE, DEF_DIALOG_STYLE_PLAY(), TRUE, "", 0.0 );         
			dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_mammoth_button_one_00104', FALSE, tort_button_01_attachment, 0.0, "", "Mammoth System Voice : TACREP, six-digit grid November Uniform Seven Zero Two, Four Eight Six. Multiple tributary waterfalls en route to Battle Position Corona. Mobility, poor. Area impassible for all ground forces save Mammoth. Visibilty, high.", TRUE);
		l_dialog_id = dialog_end( l_dialog_id, TRUE, FALSE, "" );
	end
	object_create (tortoise_device_button_01);
		objects_attach (main_mammoth,  "device_button_03", tortoise_device_button_01, "");
	thread(tort_button_01());

	
end


script static void f_dialog_m40_mammoth_button_2()
dprint( "f_dialog_m40_mammoth_button_2" );

	local long l_dialog_id = DEF_DIALOG_ID_NONE();



	if m40_map_area_01 == TRUE then
		l_dialog_id = dialog_start_background("MAMMOTH_BUTTON_2_A", l_dialog_id, TRUE, DEF_DIALOG_STYLE_PLAY(), TRUE, "", 0.0 );   
			dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_mammoth_button_two_00100', FALSE, tort_button_02_attachment, 0.0, "", "Mammoth System Voice : Intel assessment - Mammoth F.O.B. Nearest location to particle cannon network accessible by air. Numerous rock slides have created a natural defensive position.", TRUE);
		l_dialog_id = dialog_end( l_dialog_id, TRUE, FALSE, "" );
	elseif m40_map_area_02 == TRUE then
		l_dialog_id = dialog_start_background("MAMMOTH_BUTTON_2_B", l_dialog_id, TRUE, DEF_DIALOG_STYLE_PLAY(), TRUE, "", 0.0 );   
			dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_mammoth_button_two_00101', FALSE, tort_button_02_attachment, 0.0, "", "Mammoth System Voice : Intel assessment - Battle Position Alpha. Mammoth has encountered an artificial river of unknown origin. Preliminary analysis reveals toxic levels of Glutaraldehyde and Strontium 90. Industrial application likely. All personnel are advised to avoid contact with the substance until further notice.", TRUE);
		l_dialog_id = dialog_end( l_dialog_id, TRUE, FALSE, "" );
	elseif m40_map_area_03 == TRUE then
		l_dialog_id = dialog_start_background("MAMMOTH_BUTTON_2_C", l_dialog_id, TRUE, DEF_DIALOG_STYLE_PLAY(), TRUE, "", 0.0 );   
			dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_mammoth_button_two_00102', FALSE, tort_button_02_attachment, 0.0, "", "Mammoth System Voice : Intel assessment - Observation Grid 6. Gypsy Company has encountered Covenant shield blockade along the Mammoth�s avenue of approach. The blockade�s design contains previously unseen properties consistent with recently discovered Forerunner technologies.", TRUE);
		l_dialog_id = dialog_end( l_dialog_id, TRUE, FALSE, "" );
	
	elseif m40_map_area_04 == TRUE then
		l_dialog_id = dialog_start_background("MAMMOTH_BUTTON_2_D", l_dialog_id, TRUE, DEF_DIALOG_STYLE_PLAY(), TRUE, "", 0.0 );   
			dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_mammoth_button_two_00103', FALSE, tort_button_02_attachment, 0.0, "", "Mammoth System Voice : Intel assessment - Battle Position Baker. Mammoth has encountered new Covenant CTV, provisionally referred to as a Lich. The ship appears to be a heavily-armed mobile deployment platform - Mammoth sensor data has been cataloged and transmitted to Infinity for further analysis.", TRUE);
		l_dialog_id = dialog_end( l_dialog_id, TRUE, FALSE, "" );
	elseif m40_map_area_05 == TRUE then
		l_dialog_id = dialog_start_background("MAMMOTH_BUTTON_2_E", l_dialog_id, TRUE, DEF_DIALOG_STYLE_PLAY(), TRUE, "", 0.0 );   
			dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_mammoth_button_two_00104', FALSE, tort_button_02_attachment, 0.0, "", "Mammoth System Voice : Intel assessment - Observation Grid 8. Forward sensors have detected enemy command post responsible for the particle cannon network. High neutrino concentration suggests the installation is utilizing a form of slipspace communication to coordinate the weapons.", TRUE);
		l_dialog_id = dialog_end( l_dialog_id, TRUE, FALSE, "" );
	end
		object_create (tortoise_device_button_02);
			objects_attach (main_mammoth,  "device_button_04", tortoise_device_button_02, "");
					thread(tort_button_02());
		
end


script static void f_dialog_m40_mammoth_button_3()
dprint( "f_dialog_m40_mammoth_button_3" );

	local long l_dialog_id = DEF_DIALOG_ID_NONE();


	if m40_map_area_01 == TRUE then
		l_dialog_id = dialog_start_background("MAMMOTH_BUTTON_3_A", l_dialog_id, TRUE, DEF_DIALOG_STYLE_PLAY(), TRUE, "", 0.0 );   
			dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_mammoth_button_three_00100', FALSE, tort_button_03_attachment, 0.0, "", "Mammoth System Voice : Mammoth Forward Operating Base. In order to neutralize the Forerunner Gravity Well, Gypsy Company will disable the weapon�s defense network; a system of anti-air particle cannnons controlled from a central command post.", TRUE);
		l_dialog_id = dialog_end( l_dialog_id, TRUE, FALSE, "" );
	elseif m40_map_area_02 == TRUE  then
		l_dialog_id = dialog_start_background("MAMMOTH_BUTTON_3_B", l_dialog_id, TRUE, DEF_DIALOG_STYLE_PLAY(), TRUE, "", 0.0 );   
			dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_mammoth_button_three_00101', FALSE, tort_button_03_attachment, 0.0, "", "Mammoth System Voice : Objective Alpha. Forerunner Mobile Particle Cannon. Positioned roughly 150 meters off the deck, enemy artillary emits a phased charge capable of sustained force of undetermined strength.", TRUE);
		l_dialog_id = dialog_end( l_dialog_id, TRUE, FALSE, "" );
	elseif m40_map_area_03 == TRUE then
		l_dialog_id = dialog_start_background("MAMMOTH_BUTTON_3_C", l_dialog_id, TRUE, DEF_DIALOG_STYLE_PLAY(), TRUE, "", 0.0 );   
			dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_mammoth_button_three_00102', FALSE, tort_button_03_attachment, 0.0, "", "Mammoth System Voice : Mammoth Mission Status Report. Neutralizing the first particle cannon has yielded additional intel on other nodes in the defense system. Cannon network extends wider than previously thought, and data implies that its orientation may be configurable, capable of deploying resources across great distances.", TRUE);
		l_dialog_id = dialog_end( l_dialog_id, TRUE, FALSE, "" );
	elseif m40_map_area_04 == TRUE then
		l_dialog_id = dialog_start_background("MAMMOTH_BUTTON_3_D", l_dialog_id, TRUE, DEF_DIALOG_STYLE_PLAY(), TRUE, "", 0.0 );   
			dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_mammoth_button_three_00103', FALSE, tort_button_03_attachment, 0.0, "", "Mammoth System Voice : Objective Bravo. Increased proximity to gravity well has yielded new data around its operation. The gravimetric effects of the main generator are seemingly being multiplied by particles within the planet�s atmosphere. This would seem to reinforce Infinity�s observations as to the Gravity Well�s range of operations extending far beyond line of sight.", TRUE);
		l_dialog_id = dialog_end( l_dialog_id, TRUE, FALSE, "" );
	elseif m40_map_area_05 == TRUE then
		l_dialog_id = dialog_start_background("MAMMOTH_BUTTON_3_E", l_dialog_id, TRUE, DEF_DIALOG_STYLE_PLAY(), TRUE, "", 0.0 );   
			dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_mammoth_button_three_00104', FALSE, tort_button_03_attachment, 0.0, "", "Mammoth System Voice : Mammoth Mission Status Report. With air access greatly expanded, Shadow and Castle Companies have been deployed to broaden the battlespace, drawing attention away from Gypsy Company. Both Shadow and Castle have been augmented with Spartan IV fireteams, increasing their overall strength by 30%.", TRUE);
		l_dialog_id = dialog_end( l_dialog_id, TRUE, FALSE, "" );
	end
		object_create (tortoise_device_button_03);
		objects_attach (main_mammoth,  "device_button_05", tortoise_device_button_03, "");
		thread(tort_button_03());
end

script static void f_dialog_m40_mammoth_button_4( short s_index )
dprint( "f_dialog_m40_mammoth_button_4" );

	local long l_dialog_id = DEF_DIALOG_ID_NONE();



		if ( s_index == 1 ) then
		l_dialog_id = dialog_start_background("MAMMOTH_BUTTON_4_A", l_dialog_id, TRUE, DEF_DIALOG_STYLE_PLAY(), TRUE, "", 0.0 );   
			dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_mammoth_button_four_00100', FALSE, tort_button_04_attachment, 0.0, "", "Mammoth System Voice : Lasky, Thomas J. Commander, UNSC Infinity. Service Number 77698-41073-TL. Acting Ground Commander, Gypsy Company, Requiem.", TRUE);
		l_dialog_id = dialog_end( l_dialog_id, TRUE, FALSE, "" );
			
	object_create (tortoise_device_button_04);
	objects_attach (main_mammoth,  "device_button_06", tortoise_device_button_04, "");
	thread(tort_button_04());
		elseif ( s_index == 2 ) then
		l_dialog_id = dialog_start_background("MAMMOTH_BUTTON_4_B", l_dialog_id, TRUE, DEF_DIALOG_STYLE_PLAY(), TRUE, "", 0.0 );   
			dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_mammoth_button_four_00101', FALSE, tort_button_04_attachment, 0.0, "", "Mammoth System Voice : Palmer, Sarah E. Spartan Commander, deployment, UNSC Infinity. Service Number Redacted, Grade 2 or above. Acting Tactical Lead, Gypsy Company, Requiem.", TRUE);
		l_dialog_id = dialog_end( l_dialog_id, TRUE, FALSE, "" );
		elseif ( s_index == 3 ) then
		l_dialog_id = dialog_start_background("MAMMOTH_BUTTON_4_C", l_dialog_id, TRUE, DEF_DIALOG_STYLE_PLAY(), TRUE, "", 0.0 );   
			dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_mammoth_button_four_00102', FALSE, tort_button_04_attachment, 0.0, "", "Mammoth System Voice : Stacker, Marcus P. Master Sergeant, UNSC Marine Corp, deployment - UNSC Infinity. Service Number 41009-31545-MS. Mammoth Infantry Lead, Gypsy Company, Requiem.", TRUE);
		l_dialog_id = dialog_end( l_dialog_id, TRUE, FALSE, "" );
	elseif ( s_index == 4 ) then
		l_dialog_id = dialog_start_background("MAMMOTH_BUTTON_4_D", l_dialog_id, TRUE, DEF_DIALOG_STYLE_PLAY(), TRUE, "", 0.0 );   
			dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_mammoth_button_four_00103', FALSE, tort_button_04_attachment, 0.0, "", "Mammoth System Voice : Bobrov, Elena K. Staff Sergeant, UNSC Marine Corp, deployment - UNSC Infinity. Service number 91532-11116-EB. Mammoth Driver, Gypsy Company, Requiem.", TRUE);
		l_dialog_id = dialog_end( l_dialog_id, TRUE, FALSE, "" );
	elseif ( s_index == 5 ) then
		l_dialog_id = dialog_start_background("MAMMOTH_BUTTON_4_E", l_dialog_id, TRUE, DEF_DIALOG_STYLE_PLAY(), TRUE, "", 0.0 );   
			dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_mammoth_button_four_00104', FALSE, tort_button_04_attachment, 0.0, "", "Mammoth System Voice : Scudieri, Carlo M. Sergeant, UNSC Marine Corp, deployment - UNSC Infinity. Service number 93071-28339-CS. Mammoth Navigator, Gypsy Company, Requiem.", TRUE);
		l_dialog_id = dialog_end( l_dialog_id, TRUE, FALSE, "" );
		mammoth_button_4_short = 0;
		
	end
	
	object_create (tortoise_device_button_04);
	objects_attach (main_mammoth,  "device_button_06", tortoise_device_button_04, "");
	thread(tort_button_04());
end

script dormant f_dialog_m40_marine_warthog()
dprint("f_dialog_m40_marine_warthog");
local long l_dialog_id = DEF_DIALOG_ID_NONE();

            l_dialog_id = dialog_start_background("MARINE_WARTHOG", l_dialog_id, TRUE, DEF_DIALOG_STYLE_PLAY(), TRUE, "", 0.25 );         
            		dialog_line_npc( l_dialog_id, 0, not ai_allegiance_broken(player, human), 'sound\dialog\mission\m40\m40_mammoth_int_00101', FALSE, tort_marines.whitman, 0.0, "", "Marine 4 : Sorry, sir. Vehicles are to remain on the Mammoth until further notice. [We've got] Orders.", TRUE);
            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );


end


script static void f_dialog_m40_marine_warthog_gun( short s_index )
		dprint("WARTHOG GUN IN MAMMOTH 2");
	local short s_random = 0;
	local long l_dialog_id = DEF_DIALOG_ID_NONE();

	s_random = random_range(1, 4);
	;
	if ( s_index == 1 ) then
			dprint("WARTHOG GUN IN MAMMOTH 3");
		l_dialog_id = dialog_start_background( "WARTHOG_GUN_01", l_dialog_id, TRUE, DEF_DIALOG_STYLE_PLAY(), TRUE, "", 0.0 );
			dialog_line_npc( l_dialog_id, 0, not ai_allegiance_broken(player, human), 'sound\dialog\mission\m40\m40_mammoth_int_00207', FALSE, tort_marines.whitman, 0.0, "", "Marine 4 : Somebody get him off of there!", TRUE);
		l_dialog_id = dialog_end( l_dialog_id, TRUE, FALSE, "" );
	end
	if ( s_index == 2 ) then
		l_dialog_id = dialog_start_background( "WARTHOG_GUN_02", l_dialog_id, TRUE, DEF_DIALOG_STYLE_PLAY(), TRUE, "", 0.0 );
			dialog_line_npc( l_dialog_id, 0, not ai_allegiance_broken(player, human), 'sound\dialog\mission\m40\m40_mammoth_int_00205', FALSE, tort_marines.randall, 0.0, "", "Mammoth Marine 2 : I get it! You never met a trigger you didn't like! Point taken!", TRUE);
		l_dialog_id = dialog_end( l_dialog_id, TRUE, FALSE, "" );
	end
	if ( s_index == 3 ) then
		l_dialog_id = dialog_start_background( "WARTHOG_GUN_03", l_dialog_id, TRUE, DEF_DIALOG_STYLE_PLAY(), TRUE, "", 0.0 );
			dialog_line_npc( l_dialog_id, 0, not ai_allegiance_broken(player, human), 'sound\dialog\mission\m40\m40_mammoth_int_00206', FALSE, tort_marines.randall, 0.0, "", "Mammoth Marine 2 : How long were you in cryo sleep again!??", TRUE);
		l_dialog_id = dialog_end( l_dialog_id, TRUE, FALSE, "" );
		static short marine_warthog_gun_state = 0;
	end


end




/*script dormant f_dialog_m40_lasky_vignette()
dprint("f_dialog_m40_lasky_vignette");
local long l_dialog_id = DEF_DIALOG_ID_NONE();

            l_dialog_id = dialog_start_foreground( "LASKY_VIGNETTE", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );                       
								dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_mammoth_int_00102', FALSE, Marines_lasky.lasky, 0.0, "", "Lasky : Chief.  Unfortunately for us, we've got to bring down a couple of the particle cannons manually before we can get to the command post.", TRUE);
								//dialog_line_npc( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m40\m40_mammoth_int_00103', FALSE, NONE, 0.0, "", "Lasky : Grab one of the target designators from below.", TRUE);
								//dialog_line_npc( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m40\m40_mammoth_int_00104', FALSE, NONE, 0.0, "", "Lasky : Once we're in range, we'll deploy Gypsy Company to provide cover while you ID firing solutions for the MiniMAC.", TRUE);
								//dialog_line_npc( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m40\m40_mammoth_int_00105', FALSE, NONE, 0.0, "", "Palmer : And Chief? I'd pick up a jet pack if I were you.", TRUE);
								//dialog_line_npc( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m40\m40_mammoth_int_00106', FALSE, NONE, 0.0, "", "Palmer : Having seen the terrain, you're gonna need it.", TRUE);
            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );


end*/

script dormant f_dialog_m40_jetpack_callout()
dprint("f_dialog_m40_jetpack_callout");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
						sleep_s(10);
            l_dialog_id = dialog_start_foreground( "JETPACK_CALLOUT", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );         
            start_radio_transmission( "palmer_transmission_name" );      
            
            
								dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_palmer_ver_00102', FALSE, NONE, 0.0, "", "Palmer : Chief, Palmer again. The Mammoth�s got jetpacks onboard. If I were down there, I�d want one.", TRUE);
								end_radio_transmission();
							//								sound_impulse_start( 'sound\dialog\mission\m10\play_1_99_02_out_squelch', NONE, 1 );
            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
						

end



script dormant f_dialog_m40_del_rio_radio()
dprint("f_dialog_m40_del_rio_radio");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
  		
            l_dialog_id = dialog_start_foreground( "DEL_RIO_RADIO", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );  
            		//sound_impulse_start( 'sound\dialog\mission\m10\play_1_99_01_in_squelch', NONE, 1 );
								
								start_radio_transmission( "delrio_transmission_name" );
								hud_play_pip_from_tag( bink\Campaign\M40_A_60 );
								thread(f_dialog_play_pip_m40_a_subtitles());
								
								sleep_s(15);
				//				dialog_line_npc( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m40\m40_mammoth_int_00109', FALSE, NONE, 0.0, "", "Del Rio : Gypsy Company, this is Captain Del Rio.", TRUE);
								end_radio_transmission();
								//sound_impulse_start( 'sound\dialog\mission\m10\play_1_99_02_out_squelch', NONE, 1 );
            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
  			wake(f_dialog_m40_lasky_initiate);
end

script static void f_dialog_play_pip_m40_a_subtitles()
	sleep_s(0.02);
	dialog_play_subtitle('sound\dialog\mission\m40\m40_mammoth_int_00109');
	sleep_s(0.04);
	dialog_play_subtitle('sound\dialog\mission\m40\m40_mammoth_int_00110');
	sleep_s(2.21);
	dialog_play_subtitle('sound\dialog\mission\m40\m40_mammoth_int_00111');
end

script dormant f_dialog_m40_lasky_initiate()
dprint("f_dialog_m40_lasky_initiate");
local long l_dialog_id = DEF_DIALOG_ID_NONE();

            l_dialog_id = dialog_start_foreground( "LASKY_INITIATE", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );                       
            //sound_impulse_start( 'sound\dialog\mission\m10\play_1_99_01_in_squelch', NONE, 1 );
								
            					start_radio_transmission( "lasky_transmission_name" );
            				//	hud_rampancy_players_set( 0.15 );
            					dialog_line_npc( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m40\m40_mammoth_int_00112', FALSE, Marines_lasky.lasky, 0.0, "", "Lasky : OK, Gypsy - time to work for it.  Let's shake some dirt.", TRUE);
            				//	sleep_s(2);
									//		dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_mammoth_int_00210', FALSE, NONE, 0.0, "", "Lasky : Chief, that's our cue. We could use you on one of the deck guns - who knows what we're going into.", TRUE);
											end_radio_transmission();
										//	hud_rampancy_players_set( 0.0 );
											b_mammoth_going = TRUE;
																		//sound_impulse_start( 'sound\dialog\mission\m10\play_1_99_02_out_squelch', NONE, 1 );
            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );

end



script dormant f_dialog_m40_cannon_reveal()
dprint("f_dialog_m40_cannon_reveal");
local long l_dialog_id = DEF_DIALOG_ID_NONE();

            l_dialog_id = dialog_start_foreground( "CANNON_REVEAL", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );   
            //sound_impulse_start( 'sound\dialog\mission\m10\play_1_99_01_in_squelch', NONE, 1 );
								
              start_radio_transmission( "lasky_transmission_name" );                    												
							dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_gun_vista_00100', FALSE, Marines_lasky.lasky, 0.0, "", "Lasky : Lasky to Infinity.", TRUE);
							dialog_line_npc( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m40\m40_gun_vista_00101', FALSE, Marines_lasky.lasky, 0.0, "", "Lasky : We have visual on the first target.", TRUE);
							end_radio_transmission();
							dialog_line_cortana( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m40\m40_gun_vista_00102', FALSE, NONE, 0.0, "", "Cortana : The Forerunners certainly don't do things halfway, do they?" );
            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end


script dormant f_dialog_m40_pelican_vignette()
dprint("f_dialog_m40_pelican_vignette");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
//			sleep_until(b_mammoth_going == TRUE);
            l_dialog_id = dialog_start_foreground( "PELICAN_VIGNETTE", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );                       
								//dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_pelican_00100', FALSE, NONE, 0.0, "", "Pelican Pilot : This is Papa Foxtrot Seven Six Six on low approach.", TRUE);
								//dialog_line_npc( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m40\m40_pelican_00101', FALSE, NONE, 0.0, "", "Pelican Pilot : Target in sight.", TRUE);
								//dialog_line_npc( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m40\m40_pelican_00102', FALSE, NONE, 0.0, "", "Lasky : Pelican, clear out!", TRUE);
								//dialog_line_npc( l_dialog_id, 3, TRUE, 'sound\dialog\mission\m40\m40_pelican_00103', FALSE, NONE, 0.0, "", "Lasky : First cannon is still hot! REPEAT - FIRST CANNON--", TRUE);								
								//sound_impulse_start( 'sound\dialog\mission\m10\play_1_99_01_in_squelch', NONE, 1 );
								
								start_radio_transmission( "palmer_transmission_name" );
								dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_palmer_ver_00103', FALSE, NONE, 0.0, "", "Palmer : Captain Del Rio, targeting Pelicans are in position near the particle cannons, waiting for the Mammoth�s mini-MAC to take them out.", TRUE);
								dialog_line_npc( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m40\m40_palmer_ver_00105', FALSE, NONE, 0.0, "", "Palmer : Seven Six Six, lose some altitude. You�re inside the kill box!", TRUE);
								end_radio_transmission();
								start_radio_transmission( "gypsyone_transmission_name" );
								dialog_line_npc( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m40\m40_intheair_00101', FALSE, NONE, 0.0, "", "Pilot 1 : Almost got target lock. Just a little more�", TRUE);
								end_radio_transmission();
								start_radio_transmission( "palmer_transmission_name" );
								dialog_line_npc( l_dialog_id, 3, TRUE, 'sound\dialog\mission\m40\m40_palmer_ver_00107', FALSE, NONE, 0.0, "", "Palmer : Pelican! Fall back!", TRUE);
								end_radio_transmission();
								start_radio_transmission( "gypsyone_transmission_name" );
								print ("PELICAN DEATH SCREAM 1");
								dialog_line_npc( l_dialog_id, 4, TRUE, 'sound\dialog\mission\m40\m40_intheair_00102', FALSE, NONE, 0.0, "", "Pilot 1 : [scream]", TRUE);
								print ("PELICAN DEATH SCREAM 2");
								dialog_line_npc( l_dialog_id, 5, TRUE, 'sound\dialog\mission\m40\m40_pelicandrama_00104', FALSE, Marines_lasky.lasky, 0.0, "", "Lasky: Infinty! Pelicans down!", TRUE);
								dialog_line_npc( l_dialog_id, 6, TRUE, 'sound\dialog\mission\m40\m40_pelicandrama_00105', FALSE, NONE, 0.0, "", "Del Rio: Get to the crash site and retrieve that target designator, Gypsy. You've got no chance of clearing those guns without it.", TRUE);
								//dialog_line_npc( l_dialog_id, 7, TRUE, 'sound\dialog\mission\m40\m40_palmer_ver_00108', FALSE, NONE, 0.0, "", "Palmer : Gypsy-Seven�s crew IFF tags all still read green. Hopefully the target designator�s still in one piece too.", TRUE);
								end_radio_transmission();
            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
            sleep_s(2);
            wake(m40_cannon_fodder);
		

end




								


script dormant f_dialog_M40_cannon_fodder()
dprint("f_dialog_M40_cannon_fodder");
local long l_dialog_id = DEF_DIALOG_ID_NONE();

            l_dialog_id = dialog_start_foreground( "CANNON_FODDER", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
            //sound_impulse_start( 'sound\dialog\mission\m10\play_1_99_01_in_squelch', NONE, 1 );
								
            		start_radio_transmission( "lasky_transmission_name" );                  											
							dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_cannon_fodder_00100', FALSE, NONE, 0.0, "", "Palmer : All teams - we've got Covenant squads, digging in on the ridgeline.", TRUE);
								dialog_line_npc( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m40\m40_cannon_fodder_00101', FALSE, NONE, 0.0, "", "Palmer : Weapons free, people!", TRUE);
								//dialog_line_npc( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m40\m40_cannon_fodder_00103', FALSE, NONE, 0.0, "", "Lasky : I think your Forerunner friend knows we're gunning for his gravity well.", TRUE);
								end_radio_transmission();
            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );


end


script dormant f_dialog_M40_mammoth_in_range()
dprint("f_dialog_M40_mammoth_in_range");
local long l_dialog_id = DEF_DIALOG_ID_NONE();

            l_dialog_id = dialog_start_foreground( "MAMMOTH_IN_RANGE", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );              
            //sound_impulse_start( 'sound\dialog\mission\m10\play_1_99_01_in_squelch', NONE, 1 );
								         																		
            start_radio_transmission( "lasky_transmission_name" );
							dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_mammoth_int_00211', FALSE, Marines_lasky.lasky, 0.0, "", "Lasky : Alright, Chief, Mammoth's just about in range.", TRUE);
							//dialog_line_npc( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m40\m40_mammoth_int_00212', FALSE, NONE, 0.0, "", "Lasky : Once we're in position, it's up to you to site the gun up with the target designator.", TRUE);
							end_radio_transmission();
            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
						sleep_s(3);
						wake(f_dialog_m40_pelican_contact);
end


script static void f_dialog_M40_mammoth_in_range_02()
		wake(f_dialog_m40_mammoth_in_range_marine_04);
		

end


script dormant f_dialog_m40_mammoth_in_range_marine_01()
dprint("f_dialog_m40_mammoth_in_range_marine_01");
local long l_dialog_id = DEF_DIALOG_ID_NONE();

            l_dialog_id = dialog_start_background("MAMMOTH_IN_RANGE_02", l_dialog_id, TRUE, DEF_DIALOG_STYLE_PLAY(), TRUE, "", 0.25 );         
            		dialog_line_npc( l_dialog_id, 0, not ai_allegiance_broken(player, human), 'sound\dialog\mission\m40\m40_mammoth_int_00213', FALSE, tort_marines.brandon, 0.0, "", "Mammoth Marine 3 : Bailey's open!", TRUE);
            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );


end

script dormant f_dialog_m40_mammoth_in_range_marine_02()
dprint("f_dialog_m40_mammoth_in_range_marine_02");
local long l_dialog_id = DEF_DIALOG_ID_NONE();

            l_dialog_id = dialog_start_background("MAMMOTH_IN_RANGE_02", l_dialog_id, TRUE, DEF_DIALOG_STYLE_PLAY(), TRUE, "", 0.25 );         
            		dialog_line_npc( l_dialog_id, 0, not ai_allegiance_broken(player, human), 'sound\dialog\mission\m40\m40_mammoth_int_00214', FALSE, tort_marines.whitman, 0.0, "", "Mammoth Marine 4 : Bailey's open!", TRUE);
            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );


end

script dormant f_dialog_m40_mammoth_in_range_marine_03()
dprint("f_dialog_m40_mammoth_in_range_marine_03");
local long l_dialog_id = DEF_DIALOG_ID_NONE();

            l_dialog_id = dialog_start_background("MAMMOTH_IN_RANGE_03", l_dialog_id, TRUE, DEF_DIALOG_STYLE_PLAY(), TRUE, "", 0.25 );         
            		dialog_line_npc( l_dialog_id, 0, not ai_allegiance_broken(player, human), 'sound\dialog\mission\m40\m40_mammoth_int_00215', FALSE, tortoise_jetpacker_01.billy, 0.0, "", "Mammoth Spartan IV-A : Bailey's open.", TRUE);
            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );


end

script dormant f_dialog_m40_mammoth_in_range_marine_04()
dprint("f_dialog_m40_mammoth_in_range_marine_04");
local long l_dialog_id = DEF_DIALOG_ID_NONE();

            l_dialog_id = dialog_start_background("MAMMOTH_IN_RANGE_03", l_dialog_id, TRUE, DEF_DIALOG_STYLE_PLAY(), TRUE, "", 0.25 );         
            		if lakeside_warthog_deploy == true then
															dialog_line_npc( l_dialog_id, 3, not ai_allegiance_broken(player, human), 'sound\dialog\mission\m40\m40_mammoth_int_00216', FALSE, tortoise_jetpacker_01.billy, 0.0, "", "Mammoth Spartan IV-A : Warthogs free!", TRUE);
								end
            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );


end

script dormant f_dialog_m40_mammoth_in_range_marine_05()
dprint("f_dialog_m40_mammoth_in_range_marine_05");
local long l_dialog_id = DEF_DIALOG_ID_NONE();

            l_dialog_id = dialog_start_background("MAMMOTH_IN_RANGE_03", l_dialog_id, TRUE, DEF_DIALOG_STYLE_PLAY(), TRUE, "", 0.25 );         
            		if lakeside_warthog_deploy == true then
															dialog_line_npc( l_dialog_id, 4, not ai_allegiance_broken(player, human), 'sound\dialog\mission\m40\m40_mammoth_int_00217', FALSE, tortoise_jetpacker_02.cliff, 0.0, "", "Mammoth Spartan IV-B : Mongooses free!", TRUE);
								end
            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );


end


script dormant f_dialog_m40_pelican_contact()
dprint("f_dialog_m40_pelican_contact");
local long l_dialog_id = DEF_DIALOG_ID_NONE();

l_dialog_id = dialog_start_foreground( "PELICAN_CONTACT", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 ); 
//dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_cannon_fodder_00104', FALSE, NONE, 0.0, "", "Pelican Pilot : This is... Papa Foxtrot Seven Six... Six.", TRUE);
//dialog_line_npc( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m40\m40_cannon_fodder_00105', FALSE, NONE, 0.0, "", "Pelican Pilot : Does... anyone... read?", TRUE);
//dialog_line_cortana( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m40\m40_cannon_fodder_00106', FALSE, NONE, 0.0, "", "Cortana : It's the Pelican team!" );
//	dialog_line_npc( l_dialog_id, 3, TRUE, 'sound\dialog\mission\m40\m40_cannon_fodder_00200', FALSE, NONE, 0.0, "", "Lasky : Gypsy Company - we�ve got wounded out there. Chief, give me a perimeter around that crash site.", TRUE);
//sound_impulse_start( 'sound\dialog\mission\m10\play_1_99_01_in_squelch', NONE, 1 );

start_radio_transmission( "palmer_transmission_name" );
dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_palmer_ver_00110', FALSE, NONE, 0.0, "", "Palmer : There's Gypsy-Seven's Pelican, out in the muck. Anyone still alive?", TRUE);
end_radio_transmission();
start_radio_transmission( "gypsyone_transmission_name" );
dialog_line_npc( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m40\m40_pilot2_ver_00101', FALSE, NONE, 0.0, "", "Pilot #2: We're here! We're alive! We've got the target designator.", TRUE);
end_radio_transmission();
dialog_line_chief( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m40\m40_ver_mc_00101', FALSE, NONE, 0.0, "", "Master Chief : I'll get to them and retrieve the designator." );
l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );

//blipping the target designator for jacob
f_blip_object (m40_lakeside_target_laser, "recon");
wake (lakeside_objective_prompt);

end




								

script dormant f_dialog_m40_warthog_forget()
dprint("f_dialog_m40_warthog_forget");
local long l_dialog_id = DEF_DIALOG_ID_NONE();

            l_dialog_id = dialog_start_foreground( "WARTHOG_FORGET", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );                       
								dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_cannon_fodder_00107', FALSE, NONE, 0.0, "", "Cortana : With that many fast movers out there, you�re probably going to want to grab something with wheels." );
            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );

end


script dormant f_dialog_m40_lakeside_end_nudge()
dprint("f_dialog_m40_lakeside_end_nudge");
local long l_dialog_id = DEF_DIALOG_ID_NONE();

            l_dialog_id = dialog_start_foreground( "LAKESIDE_END_NUDGE", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );                       
								dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_objective_nudge_lakeside_00111', FALSE, NONE, 0.0, "", "Cortana : All teams are moving back to the Mammoth. Let's go." );
            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );

end


script dormant f_dialog_m40_del_rio_ping()
dprint("f_dialog_m40_del_rio_ping");
local long l_dialog_id = DEF_DIALOG_ID_NONE();

            l_dialog_id = dialog_start_foreground( "DEL_RIO_PING", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );                       
					//		dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_lakeside_00119', FALSE, NONE, 0.0, "", "Del Rio : Lasky, this is Del Rio. What's the hold up?", TRUE);
					//		dialog_line_npc( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m40\m40_lakeside_00120', FALSE, NONE, 0.0, "", "Lasky : Infinity, we�ve located Pelican Seven Six Six�s crash site. Sending in ground forces to secure survivors.", TRUE);
					//		dialog_line_npc( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m40\m40_lakeside_00121', FALSE, NONE, 0.0, "", "Del Rio : We don�t have time for this, Commander. Wrap it up. Del Rio out.", TRUE);
					//		dialog_line_cortana( l_dialog_id, 3, TRUE, 'sound\dialog\mission\m40\m40_lakeside_00102', FALSE, NONE, 0.0, "", "Cortana : Somebody want to tell that guy he's not the only one who wants to get home?!?");
            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );

end

					
/*script dormant f_dialog_M40_lake_reaction()
dprint("f_dialog_M40_lake_reaction");
local long l_dialog_id = DEF_DIALOG_ID_NONE();

            l_dialog_id = dialog_start_foreground( "LAKE_REACTION", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );                       											
								dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_lakeside_00202', FALSE, NONE, 0.0, "", "Cortana : Chief, stop! That liquid's corrosive!" );
            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );


end*/

script dormant f_dialog_m40_marine_rescue()
dprint("f_dialog_m40_marine_rescue");
local long l_dialog_id = DEF_DIALOG_ID_NONE();

            l_dialog_id = dialog_start_foreground( "MARINE_RESCUE", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );                       																		
            	start_radio_transmission( "gypsyone_transmission_name" );
							dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_lakeside_00103', FALSE, pelican_marines.guy1, 0.0, "", "Pelican Pilot : I didn't think anyone would hear me.", TRUE);
							dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m40\m40_lakeside_00104', FALSE, NONE, 0.0, "", "Master Chief : Sit tight, marine. We'll get you out of here." );
							dialog_line_npc( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m40\m40_lakeside_00203', FALSE, pelican_marines.guy1, 0.0, "", "Pelican Pilot : Thanks, Master Chief. We owe you one.", TRUE);
							end_radio_transmission();
            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
						

end

script dormant f_dialog_m40_fodder_dropship_appear()
dprint("f_dialog_m40_fodder_dropship_appear");
local long l_dialog_id = DEF_DIALOG_ID_NONE();

            l_dialog_id = dialog_start_foreground( "DROPSHIP_APPEAR", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );  
            //sound_impulse_start( 'sound\dialog\mission\m10\play_1_99_01_in_squelch', NONE, 1 );
								         
            			start_radio_transmission( "lasky_transmission_name" );  
									dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_lakeside_00105', FALSE, Marines_lasky.lasky, 0.0, "", "Lasky : Eyes up, Gypsy! Dropships, on approach.", TRUE);
									end_radio_transmission();
            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );


end
						

						
script dormant f_dialog_M40_lakeside_all_clear()
dprint("f_dialog_M40_lakeside_all_clear");
local long l_dialog_id = DEF_DIALOG_ID_NONE();

            l_dialog_id = dialog_start_foreground( "LAKESIDE_ALL_CLEAR_DIALOGUE", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );  
            //sound_impulse_start( 'sound\dialog\mission\m10\play_1_99_01_in_squelch', NONE, 1 );
								
            		start_radio_transmission( "lasky_transmission_name" );                     
								dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_lakeside_00200', FALSE, Marines_lasky.lasky, 0.0, "", "Lasky : Alright, Master Chief. We're clear. Mini-MAC's at your disposal - take out that particle cannon.", TRUE);
								end_radio_transmission();
            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );


end						



script dormant f_dialog_m40_tutorial_1()
dprint("f_dialog_m40_tutorial_1");
local long l_dialog_id = DEF_DIALOG_ID_NONE();

            l_dialog_id = dialog_start_foreground( "TUTORIAL_1", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );   
            //sound_impulse_start( 'sound\dialog\mission\m10\play_1_99_01_in_squelch', NONE, 1 );
								
            	start_radio_transmission( "lasky_transmission_name" );                    
							dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_lakeside_00109', FALSE, Marines_lasky.lasky, 0.0, "", "Lasky : Chief, you've got the designator - we're on your clock here.", TRUE);
							end_radio_transmission();
            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );


end

script dormant f_dialog_m40_tutorial_miss()
dprint("f_dialog_m40_tutorial_miss");
local long l_dialog_id = DEF_DIALOG_ID_NONE();

            l_dialog_id = dialog_start_foreground( "TUTORIAL_MISS", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );       
            //sound_impulse_start( 'sound\dialog\mission\m10\play_1_99_01_in_squelch', NONE, 1 );
								    
            	start_radio_transmission( "palmer_transmission_name" );            
							dialog_line_npc( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m40\m40_lakeside_00110', FALSE, NONE, 0.0, "", "Palmer : Shot wide. Correct and fire for effect.", TRUE);
							end_radio_transmission();
            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );


end



script dormant f_dialog_m40_tutorial_2()
dprint("f_dialog_m40_tutorial_2");
local long l_dialog_id = DEF_DIALOG_ID_NONE();

            l_dialog_id = dialog_start_foreground( "TUTORIAL_2", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );        
            //sound_impulse_start( 'sound\dialog\mission\m10\play_1_99_01_in_squelch', NONE, 1 );
								       
            start_radio_transmission( "lasky_transmission_name" );        													
									dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_lakeside_00111', FALSE, Marines_lasky.lasky, 0.0, "", "Lasky : Target intact! Reloading - give it another round, Chief.", TRUE);
						end_radio_transmission();			
            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );

end


script dormant f_dialog_m40_tutorial_3()
dprint("f_dialog_m40_tutorial_2");
local long l_dialog_id = DEF_DIALOG_ID_NONE();

            l_dialog_id = dialog_start_foreground( "TUTORIAL_2", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );        
            //sound_impulse_start( 'sound\dialog\mission\m10\play_1_99_01_in_squelch', NONE, 1 );
								               													
            start_radio_transmission( "lasky_transmission_name" );        		
									dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_lakeside_00112', FALSE, Marines_lasky.lasky, 0.0, "", "Lasky : Target suppressed. Nicely done, Chief.", TRUE);
						end_radio_transmission();			
            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );


end


script dormant f_dialog_m40_rollout()
dprint("f_dialog_m40_rollout");
local long l_dialog_id = DEF_DIALOG_ID_NONE();

            l_dialog_id = dialog_start_foreground( "ROLLOUT", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );                       													
            
								
            start_radio_transmission( "lasky_transmission_name" );
								dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_lakeside_00114', FALSE, Marines_lasky.lasky, 0.0, "", "Lasky : Gypsy Company. This stream ahead'll be toxic for anything other than the Mammoth.", TRUE);
								dialog_line_npc( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m40\m40_lakeside_00113', FALSE, Marines_lasky.lasky, 0.0, "", "Lasky : Suggest you roll up behind us and use the Bailey to pass through.", TRUE);
								end_radio_transmission();			
            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );


end

script dormant f_dialog_m40_post_stream()
dprint("f_dialog_m40_tutorial_post_stream");
local long l_dialog_id = DEF_DIALOG_ID_NONE();

            l_dialog_id = dialog_start_foreground( "POST_STREAM", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );                       
            
            		start_radio_transmission( "lasky_transmission_name" );
								dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_lakeside_00115', FALSE, Marines_lasky.lasky, 0.0, "", "Lasky : Lasky to Infinity, first contact cleared but no joy on additional targets.", TRUE);
								dialog_line_npc( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m40\m40_lakeside_00116', FALSE, Marines_lasky.lasky, 0.0, "", "Lasky : Gypsy moving on to secondary battle position but requesting evac for casualties.", TRUE);
								end_radio_transmission();
								start_radio_transmission( "palmer_transmission_name" );
								dialog_line_npc( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m40\m40_palmer_ver_00112', FALSE, NONE, 0.0, "", "Palmer : I�m on it, Commander. Palmer out.", TRUE);
								end_radio_transmission();
								//dialog_line_npc( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m40\m40_lakeside_00117', FALSE, NONE, 0.0, "", "Del Rio : Affirmative, Mr. Lasky.", TRUE);
								//dialog_line_npc( l_dialog_id, 3, TRUE, 'sound\dialog\mission\m40\m40_lakeside_00118', FALSE, NONE, 0.0, "", "Del Rio : We'll get an extract down there pronto. Infinity out.", TRUE);
								//dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_lakeside_pelican_00100', FALSE, NONE, 0.0, "", "Pelican Pilot 2 : Papa Foxtrot Seven Six Six, this is Papa Foxtrot One Three Five. Inbound on your position for immediate evac.", TRUE);
            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
						

end



script dormant f_dialog_M40_lakeside_tort_assault_dialogue()
dprint("f_dialog_M40_lakeside_tort_assault_dialogue");
local long l_dialog_id = DEF_DIALOG_ID_NONE();

            l_dialog_id = dialog_start_foreground( "LAKESIDE_TORT_ASSAULT_DIALOGUE", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );       			
							start_radio_transmission( "lasky_transmission_name" );                
							dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_cliffside_00100', FALSE, Marines_lasky.lasky, 0.0, "", "Lasky : Covenant boarding party inbound!", TRUE);
							dialog_line_npc( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m40\m40_cliffside_00101', FALSE, Marines_lasky.lasky, 0.0, "", "Lasky : Fireteams, all boots on deck!", TRUE);
							dialog_line_npc( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m40\m40_cliffside_00102', FALSE, Marines_lasky.lasky, 0.0, "", "Lasky : Do not let them into the Mammoth!", TRUE);
							end_radio_transmission();
            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );


end			


script dormant f_dialog_m40_boarding_party()
dprint("f_dialog_m40_boarding_party");
local long l_dialog_id = DEF_DIALOG_ID_NONE();

            l_dialog_id = dialog_start_foreground( "BOARDING_PARTY", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );
            
								                       
            		start_radio_transmission( "lasky_transmission_name" );
								dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_cliffside_00103', FALSE, Marines_lasky.lasky, 0.0, "", "Lasky : Gypsy company! We�ve got incoming, trying to block the Mammoth!", TRUE);
								end_radio_transmission();
            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );


end

script dormant f_dialog_m40_pre_chopper_01()
dprint("f_dialog_m40_pre_chopper_01");
local long l_dialog_id = DEF_DIALOG_ID_NONE();

            l_dialog_id = dialog_start_foreground( "PRE_CHOPPER_01", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );                       
            
								dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_forcefield_00100', FALSE, NONE, 0.0, "", "Cortana : Force field!  Barricading the far side of this canyon.");
								dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m40\m40_forcefield_00103', FALSE, NONE, 0.0, "", "Cortana : I'm seeing three power sources. Shut them down so the Mammoth can move through.");
						
            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
		
		
end

script dormant f_dialog_m40_pre_chopper_one_down()
dprint("f_dialog_m40_pre_chopper_one_down");
local long l_dialog_id = DEF_DIALOG_ID_NONE();

            l_dialog_id = dialog_start_foreground( "PRE_CHOPPER_ONE_DOWN", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );                       
            
								dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_forcefield_00104', FALSE, NONE, 0.0, "", "Cortana : Good. Two more.");
						
            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
		
		
end

script dormant f_dialog_m40_pre_chopper_two_down()
dprint("f_dialog_m40_pre_chopper_one_down");
local long l_dialog_id = DEF_DIALOG_ID_NONE();

            l_dialog_id = dialog_start_foreground( "PRE_CHOPPER_ONE_DOWN", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );                       
            
								dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_forcefield_00106', FALSE, NONE, 0.0, "", "Cortana : Two for two. Finish 'em off.");
						
            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
		
		
end

script dormant f_dialog_m40_pre_chopper_all_down()
dprint("f_dialog_m40_pre_chopper_one_down");
local long l_dialog_id = DEF_DIALOG_ID_NONE();

            l_dialog_id = dialog_start_foreground( "PRE_CHOPPER_ONE_DOWN", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );                       
            
								dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_forcefield_00108', FALSE, NONE, 0.0, "", "Cortana : Shield disabled. Mammoth, the path is clear.");
						
            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
		
		
end

script dormant f_dialog_m40_prechopper_waiting()
dprint("f_dialog_m40_prechopper_waiting");
local long l_dialog_id = DEF_DIALOG_ID_NONE();

            l_dialog_id = dialog_start_foreground( "PRECHOPPER_WAITING", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );                       
            
								
            		start_radio_transmission( "lasky_transmission_name" );
								dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_pre_chopper_00105', FALSE, Marines_lasky.lasky, 0.0, "", "Lasky : Mammoth holding position.", TRUE);
								dialog_line_npc( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m40\m40_pre_chopper_00106', FALSE, Marines_lasky.lasky, 0.0, "", "Lasky : Whenever you're ready to proceed, Chief.", TRUE);
								end_radio_transmission();
            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );


end

script dormant f_dialog_m40_prechopper_done()
dprint("f_dialog_m40_prechopper_done");
local long l_dialog_id = DEF_DIALOG_ID_NONE();

            l_dialog_id = dialog_start_foreground( "PRECHOPPER_DONE", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );           
            start_radio_transmission( "lasky_transmission_name" );            
								dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_pre_chopper_00108', FALSE, Marines_lasky.lasky, 0.0, "", "Lasky : Gypsy Company, moving out.", TRUE);
						end_radio_transmission();
            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );


end



script dormant f_dialog_m40_second_cannon_approach()
dprint("f_dialog_m40_second_cannon_approach");
local long l_dialog_id = DEF_DIALOG_ID_NONE();

            l_dialog_id = dialog_start_foreground( "SECOND_CANNON_APPROACH", l_dialog_id, (chopper_cannon_alive == TRUE ), DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );                       
								//dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_chopper_bowl_00100', FALSE, NONE, 0.0, "", "Cortana : Lasky, Cortana. " );
							//	dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m40\m40_chopper_bowl_00101', FALSE, NONE, 0.0, "", "Cortana : There's a lot of buzz on the battlenet." );
							//	dialog_line_cortana( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m40\m40_chopper_bowl_00102', FALSE, NONE, 0.0, "", "Cortana : Apparently the Covenant weren't expecting us to get this close to the gravity well." );
							
								
								start_radio_transmission( "lasky_transmission_name" );
							//	dialog_line_npc( l_dialog_id, 4, TRUE, 'sound\dialog\mission\m40\m40_chopper_bowl_00103', FALSE, NONE, 0.0, "", "Lasky : Let's not look a gift horse in the mouth.", TRUE);
							
								dialog_line_npc( l_dialog_id, 0, (chopper_cannon_alive == TRUE ), 'sound\dialog\mission\m40\m40_chopper_bowl_00104', FALSE, Marines_lasky.lasky, 0.0, "", "Lasky : Chief, get us a firing solution on that particle cannon before the Covenant get their act together.", TRUE);
								end_radio_transmission();
            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );


end


script dormant f_dialog_m40_second_cannon_fire_one()
dprint("f_dialog_m40_second_cannon_fire_one");
local long l_dialog_id = DEF_DIALOG_ID_NONE();

            l_dialog_id = dialog_start_foreground( "CANNON_FIRE_ONE", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );                       	
            
								
            start_radio_transmission( "lasky_transmission_name" );
								dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_chopper_bowl_00105', FALSE, Marines_lasky.lasky, 0.0, "", "Lasky : Solid hit. Finish her off.", TRUE);
						end_radio_transmission();
            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );


end

script dormant f_dialog_m40_second_cannon_fire_two()
dprint("f_dialog_m40_second_cannon_fire_two");
local long l_dialog_id = DEF_DIALOG_ID_NONE();

            l_dialog_id = dialog_start_foreground( "SECOND_CANNON_APPROACH", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );  
            
								
            start_radio_transmission( "lasky_transmission_name" );                     
							dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_chopper_bowl_00106', FALSE, Marines_lasky.lasky, 0.0, "", "Lasky : Shot's good.", TRUE);
							sleep_s(3);
							//dialog_line_npc( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m40\m40_chopper_bowl_00107', FALSE, NONE, 0.0, "", "Lasky : Target is down.", TRUE);
							//dialog_line_npc( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m40\m40_chopper_bowl_00108', FALSE, NONE, 0.0, "", "Lasky : Infinity, second cannon has been-", TRUE);
							//dialog_line_npc( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m40\m40_chopper_bowl_00109', FALSE, NONE, 0.0, "", "Lasky : (-)what??", TRUE);
							dialog_line_npc( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m40\m40_chopper_bowl_00110', FALSE, Marines_lasky.lasky, 0.0, "", "Lasky : All units! Unidentified Covenant vehicle incoming!", TRUE);
							//dialog_line_npc( l_dialog_id, 3, TRUE, 'sound\dialog\mission\m40\m40_chopper_bowl_00111', FALSE, NONE, 0.0, "", "Lasky : Keep a hard posture, people - this sucker casts a hell of a shadow!", TRUE);
							//dialog_line_cortana( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m40\m40_chopper_bowl_00112', FALSE, NONE, 0.0, "", "Cortana : Commander, what is it?");
							//dialog_line_npc( l_dialog_id, 3, TRUE, 'sound\dialog\mission\m40\m40_chopper_bowl_00113', FALSE, NONE, 0.0, "", "Lasky : Unknown! Craft is some new type of CTV we haven't seen before!", TRUE);
							sleep_s(8);
							dialog_line_npc( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m40\m40_chopper_bowl_00114', FALSE, Marines_lasky.lasky, 0.0, "", "Lasky : Mammoth's hit! Forward traction offline! Primary power controls offline!", TRUE);
						end_radio_transmission();
            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );


end


script dormant f_dialog_m40_lich_plan()
dprint("f_dialog_m40_lich_plan");
local long l_dialog_id = DEF_DIALOG_ID_NONE();

            l_dialog_id = dialog_start_foreground( "LICH_PLAN", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );                       								
							dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_chopper_bowl_00115', FALSE, NONE, 0.0, "", "Cortana : The Mammoth won't last long out in the open like that." );
							//dialog_line_chief( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m40\m40_chopper_bowl_00117', FALSE, NONE, 0.0, "", "Master Chief : The designator?" );
							//dialog_line_cortana( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m40\m40_chopper_bowl_00118', FALSE, NONE, 0.0, "", "Cortana : I doubt it. The MiniMAC took the brunt of the attack." );
            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end

script dormant f_dialog_m40_broken_gun()
dprint("f_dialog_m40_broken_gun");
local long l_dialog_id = DEF_DIALOG_ID_NONE();

            l_dialog_id = dialog_start_foreground( "BROKEN_GUN", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );                       								
							dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_chopper_bowl_00119', FALSE, NONE, 0.0, "", "Cortana : Negative response." );
							dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m40\m40_chopper_bowl_00120', FALSE, NONE, 0.0, "", "Cortana : The barrage must have damaged the MAC controls." );
							dialog_line_cortana( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m40\m40_chopper_bowl_00121', FALSE, NONE, 0.0, "", "Cortana : Without that gun, the only way to bring the ship down will be from the inside." );
            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end

script dormant f_dialog_m40_hold_the_hill()
dprint("f_dialog_m40_hold_the_hill");
local long l_dialog_id = DEF_DIALOG_ID_NONE();

            l_dialog_id = dialog_start_foreground( "HOLD_THE_HILL", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );                       								
							dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\global\global_chatter_00149', FALSE, NONE, 0.0, "", "Cortana : Reinforcements! " );
							dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\global\global_chatter_00147', FALSE, NONE, 0.0, "", "Cortana : Hold them off!" );

            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end



script dormant f_dialog_m40_lich_pass()
dprint("f_dialog_m40_lich_pass");
local long l_dialog_id = DEF_DIALOG_ID_NONE();

            l_dialog_id = dialog_start_foreground( "LICH_PASS", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );        
            
								
            start_radio_transmission( "lasky_transmission_name" );               	
							dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_chopper_bowl_00122', FALSE, Marines_lasky.lasky, 0.0, "", "Lasky : Chief, watch your six - you've got aggressor vehicles heading your way.", TRUE);
						end_radio_transmission();
							dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m40\m40_chopper_bowl_00123', FALSE, NONE, 0.0, "", "Cortana : She's coming around for another pass! Watch it!" );
            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );


end

script dormant f_dialog_m40_lich_stops()
dprint("f_dialog_m40_lich_stops");
local long l_dialog_id = DEF_DIALOG_ID_NONE();

            l_dialog_id = dialog_start_foreground( "LICH_STOPS", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );                       	
								dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_chopper_bowl_00124', FALSE, NONE, 0.0, "", "Cortana : The ship's settling in over the mesa." );
								dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m40\m40_chopper_bowl_00125', FALSE, NONE, 0.0, "", "Cortana : There's a grav lift into the belly of that ship. Time it right, and we should be able to ride it inside." );
								//dialog_line_cortana( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m40\m40_chopper_bowl_00126', FALSE, NONE, 0.0, "", "Cortana : Time it right, and we should be able to ride it inside." );
            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
					thread(f_dialog_m40_lich_stops_jetpack());
end





script static void f_dialog_m40_lich_stops_jetpack()
dprint("f_dialog_m40_lich_stops_jetpack");
                                sleep_until (volume_test_players (tv_chopper_hilltop), 1);                        
                sleep_s(30);
											 if ((player_in_lich == false) and (lich_alive_state == true)) then
local long l_dialog_id = DEF_DIALOG_ID_NONE();

            l_dialog_id = dialog_start_foreground( "LICH_STOPS_JETPACK", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );                               
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_chopper_bowl_00200', FALSE, NONE, 0.0, "", "Cortana : This is taking too long. Maybe try using the jetpack to get up there." );
            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
           	f_blip_flag (jetpack_help_flag, "recon");
						sleep_until (volume_test_players (tv_jetpack_help)
						or
						volume_test_players (tv_lich_bottom)						
						or
						volume_test_players (tv_lich_middle_01)
						or
						volume_test_players (tv_lich_middle_01)
						, 1);  
						f_unblip_flag (jetpack_help_flag);
						f_blip_flag (jetpack_help_flag_lich, "recon");
						sleep_until (volume_test_players (tv_lich_bottom)
						or
						volume_test_players (tv_lich_middle_01)
						or
						volume_test_players (tv_lich_middle_01)
						, 1);  						
						f_unblip_flag (jetpack_help_flag_lich);
						f_unblip_flag (jetpack_help_flag);
                                                else
                                                                print ("player in lich, dialogue not playing");
                                                end

end


script dormant f_dialog_m40_lich_boarding()
dprint("f_dialog_m40_lich_boarding");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
						kill_script(f_dialog_m40_lich_stops_jetpack);
            l_dialog_id = dialog_start_foreground( "LICH_BOARDING", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );                       	
								dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_lich_boarding_00100', FALSE, NONE, 0.0, "", "Cortana : Alright, now let's bring her down." );
								dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m40\m40_lich_boarding_00101', FALSE, NONE, 0.0, "", "Cortana : There's bound to be a weak point around here somewhere. Have a look." );
            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );


end

script dormant f_dialog_m40_lich_head_out()
dprint("f_dialog_m40_lich_head_out");
local long l_dialog_id = DEF_DIALOG_ID_NONE();

            l_dialog_id = dialog_start_foreground( "LICH_HEAD_OUT", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );                       	
								dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_lich_boarding_00102', FALSE, NONE, 0.0, "", "Cortana : That did it! Time to make an exit!" );
            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );


end

script dormant f_dialog_m40_lich_going_to_blow()
dprint("f_dialog_m40_lich_going_to_blow");
local long l_dialog_id = DEF_DIALOG_ID_NONE();

            l_dialog_id = dialog_start_foreground( "LICH_GOING_TO_BLOW", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );                       	
								dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_lich_boarding_00103', FALSE, NONE, 0.0, "", "Cortana : Abandon ship, Chief! It's going to blow!" );
            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );


end

script dormant f_dialog_m40_descent_on_mesa()
dprint("f_dialog_m40_descent_on_mesa");
local long l_dialog_id = DEF_DIALOG_ID_NONE();

            l_dialog_id = dialog_start_foreground( "DESCENT_ON_MESA", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
            
								
                start_radio_transmission( "lasky_transmission_name" );               
								dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_post_chopper_00100', FALSE, Marines_lasky.lasky, 0.0, "", "Lasky : Thanks, Chief. It was getting a bit dicey there for a minute.", TRUE);
								dialog_line_npc( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m40\m40_post_chopper_00101', FALSE, Marines_lasky.lasky, 0.0, "", "Lasky : All hands, form up on us.", TRUE);
								end_radio_transmission();
								start_radio_transmission( "delrio_transmission_name" );
								dialog_line_npc( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m40\m40_post_chopper_00102', FALSE, NONE, 0.0, "", "Del Rio : Lasky, this is Infinity. Status.", TRUE);
								end_radio_transmission();
								start_radio_transmission( "lasky_transmission_name" );
								dialog_line_npc( l_dialog_id, 3, TRUE, 'sound\dialog\mission\m40\m40_post_chopper_00103', FALSE, Marines_lasky.lasky, 0.0, "", "Lasky : Mammoth's in pretty bad shape.", TRUE);
								dialog_line_npc( l_dialog_id, 4, TRUE, 'sound\dialog\mission\m40\m40_post_chopper_00104', FALSE, Marines_lasky.lasky, 0.0, "", "Lasky : She'll make it to the objective as long as nobody starts throwing rocks at us.", TRUE);
								end_radio_transmission();
								start_radio_transmission( "delrio_transmission_name" );
								dialog_line_npc( l_dialog_id, 5, TRUE, 'sound\dialog\mission\m40\m40_post_chopper_00105', FALSE, NONE, 0.0, "", "Del Rio : Not a chance we can take.", TRUE);
								dialog_line_npc( l_dialog_id, 6, TRUE, 'sound\dialog\mission\m40\m40_post_chopper_00106', FALSE, NONE, 0.0, "", "Del Rio : I'm sending teams out pull some of their fire off you so you can make it to the gravity well.", TRUE);
								end_radio_transmission();
								start_radio_transmission( "lasky_transmission_name" );
								dialog_line_npc( l_dialog_id, 7, TRUE, 'sound\dialog\mission\m40\m40_post_chopper_00107', FALSE, Marines_lasky.lasky, 0.0, "", "Lasky : Roger that, sir. Gypsy, let's move.", TRUE);
								end_radio_transmission();
		            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
						sleep_s(1);
						wake(f_dialog_m40_chopper_cleared_background);

end						


script dormant f_dialog_m40_chopper_cleared_background()
dprint("f_dialog_m40_chopper_cleared_background");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
								
					l_dialog_id = dialog_start_background( "DESCENT_ON_MESA", l_dialog_id, TRUE, DEF_DIALOG_STYLE_PLAY(), FALSE, "", 0.25 );    
								dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_post_chopper_00108', FALSE, NONE, 0.0, "", "Del Rio : Shadow Company, Castle Company.", TRUE);
								dialog_line_npc( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m40\m40_post_chopper_00109', FALSE, NONE, 0.0, "", "Del Rio : Put some pressure on those other particle cannons.", TRUE);
								dialog_line_npc( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m40\m40_post_chopper_00111_soundstory', FALSE, NONE, 0.0, "", "Shadow Leader : Lima Charlie, Captain. Approaching primary objective.", TRUE);
	
            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );


end


script dormant f_dialog_m40_stream_crossing()
dprint("f_dialog_m40_stream_crossing");
local long l_dialog_id = DEF_DIALOG_ID_NONE();

            l_dialog_id = dialog_start_foreground( "STREAM_CROSSING", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );   
            
								
            		start_radio_transmission( "lasky_transmission_name" );                    
								dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_waterfall_00100', FALSE, Marines_lasky.lasky, 0.0, "", "Lasky : OK, folks. Terrain's too rough around these tributaries", TRUE);
								//dialog_line_npc( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m40\m40_waterfall_00101', FALSE, NONE, 0.0, "", "Lasky : Terrain's too rough around these tributaries.", TRUE);
								//dialog_line_npc( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m40\m40_waterfall_00102', FALSE, NONE, 0.0, "", "Lasky : Assault force, return to the Mammoth. ", TRUE);
								dialog_line_npc( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m40\m40_waterfall_00103', FALSE, Marines_lasky.lasky, 0.0, "", "Lasky : Anyone not aboard is getting left.", TRUE);
								end_radio_transmission();
            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );


end

script dormant f_dialog_m40_stream_crossing_2()
dprint("f_dialog_m40_stream_crossing_2");
local long l_dialog_id = DEF_DIALOG_ID_NONE();

            l_dialog_id = dialog_start_foreground( "STREAM_CROSSING_2", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );  
            
								
            start_radio_transmission( "lasky_transmission_name" );                     
								dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_waterfall_00104', FALSE, Marines_lasky.lasky, 0.0, "", "Lasky : OK, sealing her up.", TRUE);
								dialog_line_npc( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m40\m40_waterfall_00105', FALSE, Marines_lasky.lasky, 0.0, "", "Lasky : Mammoth is mobile.", TRUE);								
								//dialog_line_npc( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m40\m40_waterfall_00105a', FALSE, NONE, 0.0, "", "Lasky : Master Chief, is everything alright?", TRUE);
								//dialog_line_npc( l_dialog_id, 3, TRUE, 'sound\dialog\mission\m40\m40_waterfall_00105b', FALSE, NONE, 0.0, "", "Lasky : You go flying off when you�ve got a nice, cushy ride, people�ll start to take it personally.", TRUE);
						end_radio_transmission();
            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
						
end



script dormant f_dialog_m40_canyon_rampancy()
dprint("f_dialog_m40_canyon_rampancy");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
						
            l_dialog_id = dialog_start_foreground( "STREAM_CROSSING_2", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );                       

								hud_rampancy_players_set(0.75);
								dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m90_rampancy_00180_ANGRY', FALSE, NONE, 0.0, "", "Cortana : They don't care about you - they replaced you!" );
								dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m40\m40_waterfall_00112', FALSE, NONE, 0.0, "", "Cortana : Blast it!" );
								hud_rampancy_players_set(0.0);
								dialog_line_chief( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m40\m40_waterfall_00113', FALSE, NONE, 0.0, "", "Master Chief : It's OK." );

								hud_play_pip_from_tag( bink\Campaign\M40_B_60 );
								thread(f_dialog_play_pip_m40_b_subtitles());

            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
	    rampancy_pip_over = TRUE;
end
						

script static void f_dialog_play_pip_m40_b_subtitles()
	sleep_s(0.5);
	dialog_play_subtitle('sound\dialog\mission\m40\m40_waterfall_00114');
	sleep_s(2.30);
	dialog_play_subtitle('sound\dialog\mission\m40\m40_waterfall_00116');
	sleep_s(0.30);
	dialog_play_subtitle('sound\dialog\mission\m40\m40_waterfall_00117');
	sleep_s(1.30);
	dialog_play_subtitle('sound\dialog\mission\m40\m40_waterfall_00118');
	sleep_s(1.20);
	dialog_play_subtitle('sound\dialog\mission\m40\m40_waterfall_00119');
	sleep_s(1.35);
	dialog_play_subtitle('sound\dialog\mission\m40\m40_waterfall_00120');
	sleep_s(1.45);
	dialog_play_subtitle('sound\dialog\mission\m40\m40_waterfall_00121');
end

script dormant f_dialog_m40_citadel_investigate()
dprint("f_dialog_m40_citadel_investigate");
local long l_dialog_id = DEF_DIALOG_ID_NONE();

            l_dialog_id = dialog_start_foreground( "CITADEL_INVESTIGATE", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );   
            
								                    
            start_radio_transmission( "lasky_transmission_name" );
							dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_pre_citadel_00100', FALSE, Marines_lasky.lasky, 0.0, "", "Lasky : One One Seven, Lasky.", TRUE);
							dialog_line_chief( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m40\m40_pre_citadel_00101', FALSE, NONE, 0.0, "", "Master Chief : Go, Commander." );
							dialog_line_npc( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m40\m40_sniper_alley_00200', FALSE, Marines_lasky.lasky, 0.0, "", "Lasky : Chief. We've got significant blockage up ahead. Think this is about it for the Mammoth.", TRUE);
/*							wake(f_dialog_m40_marine_sniper_line_01);
							
						//	dialog_line_cortana( l_dialog_id, 3, TRUE, 'sound\dialog\mission\m40\m40_sniper_alley_00201a', FALSE, NONE, 0.0, "", "Cortana : More snipers." );
							wake(f_dialog_m40_marine_sniper_line_02);
							wake(f_dialog_m40_marine_sniper_line_03);*/
							dialog_line_cortana( l_dialog_id, 3, TRUE, 'sound\dialog\mission\m40\m40_sniper_alley_00204', FALSE, NONE, 0.0, "", "Cortana : The command post for the particle cannons is through that trench." );
							dialog_line_chief( l_dialog_id, 4, TRUE, 'sound\dialog\mission\m40\m40_sniper_alley_00205', FALSE, NONE, 0.0, "", "Master Chief : Sir, I can move faster alone." );
							dialog_line_cortana( l_dialog_id, 5, TRUE, 'sound\dialog\mission\m40\m40_sniper_alley_00207', FALSE, NONE, 0.0, "", "Cortana : We'll see you back on Infinity, Commander." );
							dialog_line_npc( l_dialog_id, 6, TRUE, 'sound\dialog\mission\m40\m40_lasky_new_targetdesignator_00109', FALSE, Marines_lasky.lasky, 0.0, "", "Lasky : Lasky out.", TRUE);
						end_radio_transmission();	
            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
						

end

script dormant f_dialog_m40_marine_sniper_line_01()
	//dprint("f_dialog_m40_marine_sniper_line_01");
					
            L_dlg_marine_sniper_line_01 = dialog_start_background("MARINE_SNIPER_01", L_dlg_marine_sniper_line_01, TRUE, DEF_DIALOG_STYLE_PLAY(), TRUE, "", 0.25 );         
								dialog_line_npc( L_dlg_marine_sniper_line_01, 0, TRUE, 'sound\dialog\mission\m40\m40_sniper_alley_00201', FALSE, NONE, 0.0, "", "Mammoth Marine 1 : Snipers!", TRUE);
            L_dlg_marine_sniper_line_01 = dialog_end( L_dlg_marine_sniper_line_01, TRUE, TRUE, "" );

			
end

script dormant f_dialog_m40_marine_sniper_line_02()
	//dprint("f_dialog_m40_marine_sniper_line_02");
					
            L_dlg_marine_sniper_line_02 = dialog_start_background("MARINE_SNIPER_02", L_dlg_marine_sniper_line_02, TRUE, DEF_DIALOG_STYLE_PLAY(), TRUE, "", 0.25 );         
								dialog_line_npc( L_dlg_marine_sniper_line_02, 0, not ai_allegiance_broken(player, human), 'sound\dialog\mission\m40\m40_sniper_alley_00202', FALSE, NONE, 0.0, "", "Mammoth Marine 2 : In the rocks.", TRUE);
            L_dlg_marine_sniper_line_02 = dialog_end( L_dlg_marine_sniper_line_02, TRUE, TRUE, "" );
				
		
		
end

script dormant f_dialog_m40_marine_sniper_line_03()
	//dprint("f_dialog_m40_marine_sniper_line_03");
					
            L_dlg_marine_sniper_line_03 = dialog_start_background("MARINE_SNIPER_03", L_dlg_marine_sniper_line_03, TRUE, DEF_DIALOG_STYLE_PLAY(), TRUE, "", 0.25 );         
								dialog_line_npc( L_dlg_marine_sniper_line_03, 0, not ai_allegiance_broken(player, human), 'sound\dialog\mission\m40\m40_sniper_alley_00203', FALSE, NONE, 0.0, "", "Mammoth Marine 3 : We're boxed in!", TRUE);
            L_dlg_marine_sniper_line_03 = dialog_end( L_dlg_marine_sniper_line_03, TRUE, TRUE, "" );
				
		
		
end


script dormant f_dialog_m40_sniper_shot()
dprint("f_dialog_m40_get_sniper_shot");
local long l_dialog_id = DEF_DIALOG_ID_NONE();

            l_dialog_id = dialog_start_foreground( "SNIPER_SHOT", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );                       
								dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_sniper_alley_00209', FALSE, NONE, 0.0, "", "Cortana : Nice. You bought the Mammoth some time. Let's get to that command post before reinforcements show." );
								dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m40\m40_sniper_alley_00209a', FALSE, NONE, 0.0, "", "Cortana : Careful. There may be more in here." );
            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );

end

script dormant f_dialog_m40_get_sniper_rifle()
dprint("f_dialog_m40_get_sniper_rifle");
local long l_dialog_id = DEF_DIALOG_ID_NONE();

            l_dialog_id = dialog_start_foreground( "SNIPER_RIFLE", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );                       
								dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_pre_citadel_00106', FALSE, NONE, 0.0, "", "Cortana : Who knows what's hiding up in those rocks." );
								dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m40\m40_pre_citadel_00107', FALSE, NONE, 0.0, "", "Cortana : You might want to grab a sniper rifle before we go in there." );
            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );


end




/*script dormant f_dialog_m40_sniper_in_the_rocks()
dprint("f_dialog_m40_stream_crossing");
local long l_dialog_id = DEF_DIALOG_ID_NONE();

            l_dialog_id = dialog_start_foreground( "SNIPER_CROSSING", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );                       
												dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_sniper_alley_00100', FALSE, NONE, 0.0, "", "Cortana : Snipers, in the rocks." );
            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );


end



script dormant f_dialog_m40_sniper_in_the_rocks_alt()
dprint("f_dialog_m40_sniper_in_the_rocks_alt");
local long l_dialog_id = DEF_DIALOG_ID_NONE();

            l_dialog_id = dialog_start_foreground( "SNIPER_CROSSING_ALT", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );                       
							dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_sniper_alley_00101', FALSE, NONE, 0.0, "", "Cortana : Shooters, in the rocks." );
            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );

*/
//end


script dormant f_dialog_m40_covenant_and_promethean()
dprint("f_dialog_m40_covenant_and_promethean");
local long l_dialog_id = DEF_DIALOG_ID_NONE();

// NOTE: You can use f_valley_ai_orders_player_saw() [boolean] to check if the player actually saw the event, if not the dialog should probably change - TWF
//				In the script this function will get triggered as soon as the player starts seeing it or after the event is over


            l_dialog_id = dialog_start_foreground( "COVENANT_PROMETHEAN", l_dialog_id, TRUE, DEF_DIALOG_STYLE_INTERRUPT(), FALSE, "", 0.25 );                       
								dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\global\global_chatter_00115', FALSE, NONE, 0.0, "", "Cortana : Heads up!" );
			
            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );


end


script dormant f_dialog_m40_a_team()
dprint("f_dialog_m40_a_team");
local long l_dialog_id = DEF_DIALOG_ID_NONE();


            l_dialog_id = dialog_start_foreground( "A_TEAM", l_dialog_id, TRUE, DEF_DIALOG_STYLE_INTERRUPT(), FALSE, "", 0.25 );                       
								//dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m40\m40_sniper_alley_00103', FALSE, NONE, 0.0, "", "Cortana : Didact must really not want us to leave if he's sending in his A-Team to stop us." );
            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );


end

script dormant f_dialog_m40_cit_door_airlock()
dprint("m40_dialog_cit_door_airlock");
local long l_dialog_id = DEF_DIALOG_ID_NONE();

            l_dialog_id = dialog_start_foreground( "CIT_DOOR_AIRLOCK", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );                       
								dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_citadel_lobby_00100', FALSE, NONE, 0.0, "", "Cortana : Cortana to Infinity. We're entering the Forerunner structure." );
								
								
								start_radio_transmission( "delrio_transmission_name" );
								dialog_line_npc( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m40\m40_citadel_lobby_00101', FALSE, NONE, 0.0, "", "Del Rio : ... Del Rio... --ansmitting coordinates for...defense grid's power source... --opy?", TRUE);
								end_radio_transmission();
								dialog_line_cortana( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m40\m40_citadel_lobby_00102', FALSE, NONE, 0.0, "", "Cortana : Breaking up but coordinates received, Infinity." );
            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );

end

script dormant f_dialog_m40_confusion_citadel()
dprint("m40_dialog_confusion_citadel");
local long l_dialog_id = DEF_DIALOG_ID_NONE();

//            l_dialog_id = dialog_start_foreground( "CONFUSION_CITADEL", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );                       
//								//dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_citadel_doors_00100', FALSE, NONE, 0.0, "", "Cortana : These passages seem to run all through the structure." );
//								//dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_citadel_doors_00101', FALSE, NONE, 0.0, "", "Cortana : Well that was rude." );
//								sleep_s(5);
//								//dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m40\m40_citadel_doors_00102', FALSE, NONE, 0.0, "", "Cortana : I don't suppose they offer turndown service as well." );
///*								dialog_line_chief( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_citadel_doors_00103', FALSE, NONE, 0.0, "", "Master Chief : This could be a trap." );
//								dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m40\m40_citadel_doors_00104', FALSE, NONE, 0.0, "", "Cortana : You say that like there's a second possibility." );*/
//            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );

end

/*script dormant f_dialog_m40_sentinel_color()
dprint("f_dialog_m40_sentinel_color");
local long l_dialog_id = DEF_DIALOG_ID_NONE();

            l_dialog_id = dialog_start_foreground( "SENTINEL_COLOR", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );                       
								dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_citadel_doors_00106', FALSE, NONE, 0.0, "", "Cortana : Chief, hold up." );
								dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m40\m40_citadel_doors_00107', FALSE, NONE, 0.0, "", "Cortana : Those sentinels are still the same blue color as the ones we saw earlier, before the Didact took control of the Prometheans." );
            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );

end

script dormant f_dialog_m40_sentinel_color_2()
dprint("f_dialog_m40_sentinel_color_2");
local long l_dialog_id = DEF_DIALOG_ID_NONE();

            l_dialog_id = dialog_start_foreground( "SENTINEL_COLOR_2", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );                       
								dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_citadel_doors_00106a', FALSE, NONE, 0.0, "", "Cortana : Chief, don't shoot." );
								dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m40\m40_citadel_doors_00107', FALSE, NONE, 0.0, "", "Cortana : Those sentinels are still the same blue color as the ones we saw earlier, before the Didact took control of the Prometheans." );
            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );

end*/




script dormant f_dialog_m40_cortana_elevator_confusion()
dprint("f_dialog_m40_cortana_elevator_confusion");
local long l_dialog_id = DEF_DIALOG_ID_NONE();

            l_dialog_id = dialog_start_foreground( "ELEVATOR_CONFUSION", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );                       
								//	dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_citadel_elevator_00100', FALSE, NONE, 0.0, "", "Cortana : OK, so this is a new one." );
								dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_citadel_elevator_00101', FALSE, NONE, 0.0, "", "Cortana : This elevator should take us directly to the coordinates Infinity provided. Almost like those Sentinels WANTED us to get the guns offline." );
								dialog_line_chief( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m40\m40_citadel_doors_00103', FALSE, NONE, 0.0, "", "Master Chief : This could be a trap." );
								dialog_line_cortana( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m40\m40_citadel_doors_00104', FALSE, NONE, 0.0, "", "Cortana : You say that like there's a second possibility." );
												
            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );


end

script dormant f_dialog_m40_battery_reveal()
dprint("f_dialog_m40_battery_reveal");
local long l_dialog_id = DEF_DIALOG_ID_NONE();

            l_dialog_id = dialog_start_foreground( "BATTERY_REVEAL", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );                       
									dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_citadel_battery_00100', FALSE, NONE, 0.0, "", "Cortana : We've reached the coordinates. This looks like the place." );
									//dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m40\m40_citadel_battery_00102', FALSE, NONE, 0.0, "", "Cortana : The particle cannon network uses these arrays for targeting and guidance." );								
            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );


end


script static void f_dialog_m40_battery_console()
sleep_s(300);
dprint("f_dialog_m40_battery_console");
				if cortana_inserted == FALSE then
local long l_dialog_id = DEF_DIALOG_ID_NONE();
	
            l_dialog_id = dialog_start_foreground( "BATTERY_CONSOLE", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );                       
									dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_citadel_battery_00101', FALSE, NONE, 0.0, "", "Cortana : That console's active - let me at it." );
            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
			end

end



script dormant f_dialog_m40_cortana_powercave_plinth_dialogue()
dprint("f_dialog_m40_cortana_powercave_plinth_dialogue");
	cortana_inserted = TRUE;
local long l_dialog_id = DEF_DIALOG_ID_NONE();

            l_dialog_id = dialog_start_foreground( "PLINTH_DIALOG", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );                       																	
								
								dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_vale_citadel_00107', FALSE, NONE, 0.0, "", "Cortana : Hm. I didn't expect something this dangerous to be unencrypted." );
								//dialog_line_cortana( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m40\m40_citadel_battery_00104', FALSE, NONE, 0.0, "", "Cortana : ...TECHNICALLY." );
								object_hide(missile_hologram, TRUE);
								dialog_line_cortana( l_dialog_id, 3, TRUE, 'sound\dialog\mission\m40\m40_citadel_battery_00105', FALSE, NONE, 0.0, "", "Cortana : Cortana to Infinity. The generators are offline. How's it look from up there?" );
								dialog_line_cortana( l_dialog_id, 4, TRUE, 'sound\dialog\mission\m40\m40_citadel_battery_00106', FALSE, NONE, 0.0, "", "Cortana : Infinity??" );
								dialog_line_chief( l_dialog_id, 5, TRUE, 'sound\dialog\mission\m40\m40_citadel_battery_00108', FALSE, NONE, 0.0, "", "Master Chief : Cortana-" );
								dialog_line_cortana( l_dialog_id, 5, TRUE, 'sound\dialog\mission\m40\m40_citadel_battery_00109', FALSE, NONE, 0.0, "", "Cortana : Something's in here-" );
								dialog_line_chief( l_dialog_id, 6, TRUE, 'sound\dialog\mission\m40\m40_citadel_battery_00110a', FALSE, NONE, 0.0, "", "Cortana : CHIEF!" );
								
											
            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );


end

script dormant f_dialog_m40_chief_cortana_gone()
dprint("f_dialog_m40_chief_cortana_gone");
local long l_dialog_id = DEF_DIALOG_ID_NONE();

            l_dialog_id = dialog_start_foreground( "CHIEF_CORTANA_GONE", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );					  
								dialog_line_chief( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_citadel_battery_00111', FALSE, NONE, 0.0, "", "Master Chief : Cortana? Cortana!" );
            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
            
end

script dormant f_dialog_m40_cortana_to_chief()
dprint("f_dialog_m40_cortana_to_chief");
local long l_dialog_id = DEF_DIALOG_ID_NONE();

            l_dialog_id = dialog_start_foreground( "CORTANA_TO_CHIEF", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );					  
								dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\M40_global_chatter_00154', FALSE, falsetana, 0.0, "", "Cortana: Chief!" );
								//dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\M40_global_chatter_00214', FALSE, NONE, 0.0, "", "Cortana: Get me out of here!" );
            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
            
end


script dormant f_dialog_m40_librarian_to_chief()
dprint("f_dialog_librarian_to_chief");
local long l_dialog_id = DEF_DIALOG_ID_NONE();

            l_dialog_id = dialog_start_foreground( "LIBRARIAN_TO_CHIEF", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );					  
								dialog_line_chief( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_librarian_room_00100', FALSE, NONE, 0.0, "", "Master Chief : Cortana?!?" );
								dialog_line_npc( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m40\m40_librarian_room_00101', FALSE, NONE, 0.0, "", "Librarian : Your ancilla is safe, Reclaimer.", TRUE);
								dialog_line_npc( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m40\m40_librarian_room_00102', FALSE, NONE, 0.0, "", "Librarian : Use of your armor's neural link is required for this simulation, and so separating you was a necessity.", TRUE);
            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
            
end



script dormant f_dialog_m40_cortana_chief_reunite()
dprint("f_dialog_cortana_chief_reunite");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
						
						sleep_s(6);
						sound_impulse_start_marker('sound\dialog\mission\m40\m40_librarian_room_00103', lib_cortana_2, fx_head, 1);
           /* l_dialog_id = dialog_start_foreground( "CORTANA_CHIEF_REUNITE", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );			
            dprint("Chief! Up here!");		  
								dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_librarian_room_00103', FALSE, lib_cortana_2, 0.0, "", "Cortana : Chief! Up here!" );

            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );*/
            
					thread(f_dialog_m40_cortana_chief_reunite_02());
					
end

script static void f_dialog_m40_cortana_chief_reunite_02()
dprint("f_dialog_m40_cortana_chief_reunite_02");
	sleep_s(15);
	
			if b_cortana_retrieved == FALSE then
			sound_impulse_start_marker('sound\dialog\mission\m40\m40_librarian_room_00106', lib_cortana_2, fx_head, 1);
/*						local long l_dialog_id = DEF_DIALOG_ID_NONE();

            l_dialog_id = dialog_start_foreground( "CORTANA_CHIEF_REUNITE_02", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );					  


											dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_librarian_room_00106', FALSE, lib_cortana_2, 0.0, "", "Cortana : Pick me up, Chief." );

            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );*/
       end
end



script dormant f_dialog_m40_retrieved_cortana()
dprint("f_dialog_m40_retrieved_cortana");
local long l_dialog_id = DEF_DIALOG_ID_NONE();

            l_dialog_id = dialog_start_foreground( "RETRIEVED_CORTANA", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );				
							dialog_line_chief( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_librarian_room_00111', FALSE, NONE, 0.0, "", "Master Chief : How do we get out of here?" );
							dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m40\m40_librarian_room_00112', FALSE, NONE, 0.0, "", "Cortana : Elevator - back of the chamber." );
            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end


script dormant f_dialog_m40_leave_without_cortana_1()
dprint("f_dialog_m40_leave_without_cortana");
if b_plinth_line_active == FALSE then
	b_plinth_line_active = TRUE;
	sound_impulse_start_marker('sound\dialog\mission\m40\m40_librarian_room_00107', lib_cortana_2, fx_head, 1);
	sleep (sound_impulse_time('sound\dialog\mission\m40\m40_librarian_room_00107'));
	b_plinth_line_active = FALSE;
	end
/*local long l_dialog_id = DEF_DIALOG_ID_NONE();

            l_dialog_id = dialog_start_foreground( "LEAVE_WITHOUT_CORTANA", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );					  
							 dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_librarian_room_00107', FALSE, lib_cortana_2, 0.0, "", "Cortana : Any time you're ready." );
            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );*/
end


script dormant f_dialog_m40_retrieve_cortana()
dprint("f_dialog_m40_leave_without_cortana");
	if b_plinth_line_active == FALSE then
	b_plinth_line_active = TRUE;
	sound_impulse_start_marker('sound\dialog\mission\m40\m40_librarian_room_00108', lib_cortana_2, fx_head, 1);
		sleep (sound_impulse_time('sound\dialog\mission\m40\m40_librarian_room_00108'));
		b_plinth_line_active = FALSE;
		  end
/*local long l_dialog_id = DEF_DIALOG_ID_NONE();

            l_dialog_id = dialog_start_foreground( "LEAVE_WITHOUT_CORTANA", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );					   
							dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_librarian_room_00108', FALSE, lib_cortana_2, 0.0, "", "Cortana : Good work. Now come get me and let's get out of here." );
            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );*/
  
end

script dormant f_dialog_m40_leave_without_cortana_2()
dprint("f_dialog_m40_leave_without_cortana_2");
	if b_plinth_line_active == FALSE then
	b_plinth_line_active = TRUE;
	sound_impulse_start_marker('sound\dialog\mission\m40\m40_librarian_room_00109', lib_cortana_2, fx_head, 1);
		sleep (sound_impulse_time('sound\dialog\mission\m40\m40_librarian_room_00109'));
		b_plinth_line_active = FALSE;
		  end
		
/*	
local long l_dialog_id = DEF_DIALOG_ID_NONE();

            l_dialog_id = dialog_start_foreground( "LEAVE_WITHOUT_CORTANA_2", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );					  
							  dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_librarian_room_00109', FALSE, lib_cortana_2, 0.0, "", "Cortana : Um, are we forgetting something?" );
            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );*/
end

script dormant f_dialog_m40_leave_without_cortana_3()
	dprint("f_dialog_m40_leave_without_cortana_3");
		if b_plinth_line_active == FALSE then
	b_plinth_line_active = TRUE;
	sound_impulse_start_marker('sound\dialog\mission\m40\m40_librarian_room_00110', lib_cortana_2, fx_head, 1);
		sleep (sound_impulse_time('sound\dialog\mission\m40\m40_librarian_room_00110'));
		b_plinth_line_active = FALSE;
		  end
	
/*	local long l_dialog_id = DEF_DIALOG_ID_NONE();

            l_dialog_id = dialog_start_foreground( "LEAVE_WITHOUT_CORTANA_3", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );					  
						   dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_librarian_room_00110', FALSE, lib_cortana_2, 0.0, "", "Cortana : How about NOT leaving the little blue girl behind?" );
            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );*/
end


script dormant f_dialog_elevator_delrio()
	dprint("f_dialog_elevator_delrio");
	local long l_dialog_id = DEF_DIALOG_ID_NONE();
						
	hud_play_pip_from_tag( bink\Campaign\M40_C_60 );
	thread(f_dialog_play_pip_m40_c_subtitles());

	sleep_s(10);
	hud_rampancy_players_set( 0.4 );
	sleep_s(2);
	hud_rampancy_players_set( 0.0 );
            
end

script static void f_dialog_play_pip_m40_c_subtitles()
	sleep_s(0.07);
	dialog_play_subtitle('sound\dialog\mission\m40\m40_portal_elevator_00100');
	dialog_play_subtitle('sound\dialog\mission\m40\m40_portal_elevator_00101');
	dialog_play_subtitle('sound\dialog\mission\m40\m40_portal_elevator_00102');
	dialog_play_subtitle('sound\dialog\mission\m40\m40_portal_elevator_00103');
end

script dormant f_dialog_m40_landing_in_battle()

dprint("f_dialog_m40_landing_in_battle");
local long l_dialog_id = DEF_DIALOG_ID_NONE();

            l_dialog_id = dialog_start_foreground( "LANDING_IN_BATTLE", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );
								dialog_line_chief( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_epic_bowl_00100', FALSE, NONE, 0.0, "", "Master Chief : Sierra 117 to Infinity, what's our status?" );
								
								
								start_radio_transmission( "delrio_transmission_name" );
								dialog_line_npc( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m40\m40_epic_bowl_00102', FALSE, NONE, 0.0, "", "Del Rio : We're taking a beating up here.", TRUE);
								dialog_line_chief( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m40\m40_epic_bowl_00103', FALSE, NONE, 0.0, "", "Master Chief : Does Infinity have a shot on the gravity well?" );
								dialog_line_npc( l_dialog_id, 3, TRUE, 'sound\dialog\mission\m40\m40_epic_bowl_00104', FALSE, NONE, 0.0, "", "Del Rio : Negative. We can get there, but we'll never be able to get a target lock with all the air traffic we're seeing.", TRUE);
								dialog_line_cortana( l_dialog_id, 4, TRUE, 'sound\dialog\mission\m40\m40_epic_bowl_00200', FALSE, NONE, 0.0, "", "Cortana : Captain, what if we can spot the target for you with the laser designator?");
								dialog_line_npc( l_dialog_id, 5, TRUE, 'sound\dialog\mission\m40\m40_epic_bowl_00201', FALSE, NONE, 0.0, "", "Del Rio : Yes! TAC-COM, find the Chief coordinates for somewhere with line of sight!", TRUE);
								end_radio_transmission();
            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end

script dormant f_dialog_m40_epic_palmer_order()
dprint("f_dialog_m40_epic_palmer_order");
local long l_dialog_id = DEF_DIALOG_ID_NONE();

            l_dialog_id = dialog_start_foreground( "PALMER_ORDER", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );
            start_radio_transmission( "delrio_transmission_name" );
            			dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_epic_bowl_00204', FALSE, NONE, 0.0, "", "Del Rio : Move your ass, Spartan!", TRUE);
            end_radio_transmission();
            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end

script dormant f_dialog_m40_target_gravity_well()
dprint("f_dialog_m40_target_gravity_well");
local long l_dialog_id = DEF_DIALOG_ID_NONE();

            l_dialog_id = dialog_start_foreground( "TARGET_GRAVITY_WELL", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );
            start_radio_transmission( "delrio_transmission_name" );
            		dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_epic_bowl_00202', FALSE, NONE, 0.0, "", "Del Rio : Get up that hill, Spartan!", TRUE);
            end_radio_transmission();
            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end

script dormant f_dialog_m40_target_gravity_well_2()
dprint("f_dialog_m40_target_gravity_well");
local long l_dialog_id = DEF_DIALOG_ID_NONE();

            l_dialog_id = dialog_start_foreground( "TARGET_GRAVITY_WELL", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );
            start_radio_transmission( "delrio_transmission_name" );
            		dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_epic_bowl_00203', FALSE, NONE, 0.0, "", "Del Rio : One One Seven, status!", TRUE);
            end_radio_transmission();
            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end


script dormant f_dialog_m40_target_gravity_well_3()
dprint("f_dialog_m40_target_gravity_well");
local long l_dialog_id = DEF_DIALOG_ID_NONE();

            l_dialog_id = dialog_start_foreground( "TARGET_GRAVITY_WELL", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );
            start_radio_transmission( "delrio_transmission_name" );
            		dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_epic_bowl_00204', FALSE, NONE, 0.0, "", "Move your ass, Spartan!", TRUE);
            end_radio_transmission();		
            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end

script dormant f_dialog_m40_cortana_shield_ahead()
dprint("f_dialog_m40_cortana_clearing_ravine");
local long l_dialog_id = DEF_DIALOG_ID_NONE();

            l_dialog_id = dialog_start_foreground( "CORTANA_SHIELD_AHEAD", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );						
            	dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_forcefield_00109', FALSE, NONE, 0.0, "", "Cortana : Looks like we're blocked! Chief, head down and find a way to destroy that shield!" );
            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end

script dormant f_dialog_m40_cortana_shield_destroyed_one()
dprint("f_dialog_m40_cortana_clearing_ravine");
local long l_dialog_id = DEF_DIALOG_ID_NONE();

            l_dialog_id = dialog_start_foreground( "CORTANA_SHIELD_DESTROYED_ONE", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );						
            	dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_forcefield_00110', FALSE, NONE, 0.0, "", "Cortana : Shield's weakening! Keep it up!" );
            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end


script dormant f_dialog_m40_cortana_clearing_ravine()
dprint("f_dialog_m40_cortana_clearing_ravine");
local long l_dialog_id = DEF_DIALOG_ID_NONE();

            l_dialog_id = dialog_start_foreground( "CORTANA_CLEARING_RAVINE", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );						
            	dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_epic_bowl_00108', FALSE, NONE, 0.0, "", "Cortana : There's a clearing just past this ravine." );
							dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m40\m40_epic_bowl_00109', FALSE, NONE, 0.0, "", "Cortana : We can get eyes on the gravity well up there!" );
            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end





script dormant f_dialog_m40_clear_out_the_bowl()
dprint("f_dialog_m40_clear_out_the_bowl");
local long l_dialog_id = DEF_DIALOG_ID_NONE();

            l_dialog_id = dialog_start_foreground( "CLEAR_OUT_THE_BOWL", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );
            				
								
            start_radio_transmission( "delrio_transmission_name" );
								dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_epic_bowl_00110', FALSE, NONE, 0.0, "", "Del Rio : Del Rio to Gypsy.", TRUE);
								dialog_line_npc( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m40\m40_epic_bowl_00111', FALSE, NONE, 0.0, "", "Del Rio : Stop screwing around down there.", TRUE);
								dialog_line_npc( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m40\m40_epic_bowl_00112', FALSE, NONE, 0.0, "", "Del Rio : Infinity can't take much more of this abuse.", TRUE);
						end_radio_transmission();
            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end


script dormant f_dialog_m40_epic_end()
dprint("f_dialog_m40_epic_end");
local long l_dialog_id = DEF_DIALOG_ID_NONE();

            l_dialog_id = dialog_start_foreground( "EPIC_END", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );
            
            		//dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_tractor_beam_00102a', FALSE, NONE, 0.0, "", "Cortana : OK, this is going to be tricky. Once you line up the shot, it�ll be up to you to guide the ordnance all the way down to the target." );
								dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_tractor_beam_00100', FALSE, NONE, 0.0, "", "Cortana : Infinity, we're at the gravity well!" );						
								start_radio_transmission( "delrio_transmission_name" );
								hud_play_pip_from_tag( bink\Campaign\M40_D_60 );
							dialog_line_npc( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m40\m40_tractor_beam_00101', FALSE, NONE, 0.0, "", "Del Rio : Then paint that damn target so we can get out of here!", TRUE);
								end_radio_transmission();
								dialog_line_cortana( l_dialog_id, 2, TRUE, 'sound\dialog\mission\m40\m40_tractor_beam_00102', FALSE, NONE, 0.0, "", "Cortana : You heard him, Chief - line up the shot!" );
            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end



script dormant f_dialog_m40_epic_end_nudge()
dprint("f_dialog_m40_epic_end_nudge");
local long l_dialog_id = DEF_DIALOG_ID_NONE();

            l_dialog_id = dialog_start_foreground( "EPIC_END_NUDGE", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );
								dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_tractor_beam_00102c', FALSE, NONE, 0.0, "", "Cortana : Do it! Use the target designator!" );
            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end



script dormant f_dialog_m40_epic_end_fired()
dprint("f_dialog_m40_epic_end_fired");
local long l_dialog_id = DEF_DIALOG_ID_NONE();

            l_dialog_id = dialog_start_foreground( "EPIC_END_FIRED", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );
            				
								
            start_radio_transmission( "delrio_transmission_name" );
								dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_tractor_beam_00103', FALSE, NONE, 0.0, "", "Del Rio : Target locked! Firing for effect!", TRUE);
						end_radio_transmission();
            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end



script dormant f_dialog_m40_epic_end_hit()
dprint("f_dialog_m40_epic_end_hit");
local long l_dialog_id = DEF_DIALOG_ID_NONE();

            l_dialog_id = dialog_start_foreground( "EPIC_END_HIT", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );
								dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_tractor_beam_00104', FALSE, NONE, 0.0, "", "Cortana : Infinity, the shield is down!" );
								dialog_line_cortana( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m40\m40_tractor_beam_00105', FALSE, NONE, 0.0, "", "Cortana : The gravity well is all yours." );
            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end

script dormant f_dialog_m40_stacker_01()
dprint("f_dialog_m40_stacker_01");
local long l_dialog_id = DEF_DIALOG_ID_NONE();

            l_dialog_id = dialog_start_foreground( "STACKER_01", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );
            				
								
             start_radio_transmission( "stacker_transmission_name" );
								dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_sgtstacker_00108', FALSE, NONE, 0.0, "", "Sgt. Stacker : I�m reading Sierra One One Seven on-sensor.", TRUE);
								dialog_line_npc( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m40\m40_sgtstacker_00109', FALSE, NONE, 0.0, "", "Sgt. Stacker : Everyone form up on the Chief!", TRUE);
								end_radio_transmission();
            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end

script dormant f_dialog_m40_stacker_02()
dprint("f_dialog_m40_stacker_02");
local long l_dialog_id = DEF_DIALOG_ID_NONE();

            l_dialog_id = dialog_start_foreground( "STACKER_02", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );
            				
								
            start_radio_transmission( "stacker_transmission_name" );
							dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_sgtstacker_00110', FALSE, NONE, 0.0, "", "Sgt. Stacker : Clear this area. Push up the hill, marines!", TRUE);	
							dialog_line_npc( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m40\m40_sgtstacker_00116', FALSE, NONE, 0.0, "", "Sgt. Stacker : You WILL prosecute these Covenant with extreme prejudice, soldier!", TRUE);
							end_radio_transmission();
            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end

script dormant f_dialog_m40_stacker_03()
dprint("f_dialog_m40_stacker_03");
local long l_dialog_id = DEF_DIALOG_ID_NONE();

            l_dialog_id = dialog_start_foreground( "STACKER_03", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );
            				
								
            start_radio_transmission( "stacker_transmission_name" );
							dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_sgtstacker_00111', FALSE, NONE, 0.0, "", "Sgt. Stacker : First line clear, check it off. Push forward!", TRUE);
							dialog_line_npc( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m40\m40_sgtstacker_00112', FALSE, NONE, 0.0, "", "Sgt. Stacker : All eyes on the Chief, he�s lead dog!", TRUE);
							end_radio_transmission();
            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end

script dormant f_dialog_m40_stacker_04()
dprint("f_dialog_m40_stacker_04");
local long l_dialog_id = DEF_DIALOG_ID_NONE();

            l_dialog_id = dialog_start_foreground( "STACKER_04", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );
            				
								
            start_radio_transmission( "stacker_transmission_name" );
								dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_sgtstacker_00113', FALSE, NONE, 0.0, "", "Sgt. Stacker : Second line clear, this ain't a picnic. Let's move up!", TRUE);
						end_radio_transmission();		
            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end

script dormant f_dialog_m40_stacker_05()
dprint("f_dialog_m40_stacker_05");
local long l_dialog_id = DEF_DIALOG_ID_NONE();

            l_dialog_id = dialog_start_foreground( "STACKER_05", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );
            				
            start_radio_transmission( "stacker_transmission_name" );
								dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_sgtstacker_00114', FALSE, NONE, 0.0, "", "Sgt. Stacker : All right, that�s the last of 'em. No dessert, huh? Nothing left? Well done, marines.", TRUE);
								dialog_line_npc( l_dialog_id, 1, TRUE, 'sound\dialog\mission\m40\m40_sgtstacker_00115', FALSE, NONE, 0.0, "", "Sgt. Stacker : Chief, we�ll cover you from here.", TRUE);
						end_radio_transmission();
            l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end







// =================================================================================================
// =================================================================================================
// NUDGES
// =================================================================================================
// =================================================================================================

script static void f_dialog_m40_nudge_1()
dprint("f_dialog_m40_nudge_1");
static long l_dialog_id = DEF_DIALOG_ID_NONE();
		if ( (not dialog_foreground_id_active_check(l_dialog_id)) and  (not b_objective_1_complete)) then
					l_dialog_id = dialog_start_foreground( "NUDGE_1", l_dialog_id,  (not b_objective_1_complete), DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 ); 
								
				 l_dialog_id = dialog_end( l_dialog_id, b_objective_1_complete, b_objective_1_complete, "" );
		end
end

script static void f_dialog_m40_nudge_2()
dprint("f_dialog_m40_nudge_2");
static long l_dialog_id = DEF_DIALOG_ID_NONE();
		if ( (not dialog_foreground_id_active_check(l_dialog_id)) and  (not b_objective_1_complete)) then
					l_dialog_id = dialog_start_foreground( "NUDGE_2", l_dialog_id,  (not b_objective_1_complete), DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 ); 
								
				 l_dialog_id = dialog_end( l_dialog_id, b_objective_1_complete, b_objective_1_complete, "" );
		end
end



script static void f_dialog_m40_nudge_3()
dprint("f_dialog_m40_nudge_3");
static long l_dialog_id = DEF_DIALOG_ID_NONE();
		if ( (not dialog_foreground_id_active_check(l_dialog_id)) and  (not b_objective_1_complete)) then
					l_dialog_id = dialog_start_foreground( "NUDGE_3", l_dialog_id,  (not b_objective_1_complete), DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 ); 
								
				 l_dialog_id = dialog_end( l_dialog_id, b_objective_1_complete, b_objective_1_complete, "" );
		end
end

script static void f_dialog_m40_nudge_4()
dprint("f_dialog_m40_nudge_4");
static long l_dialog_id = DEF_DIALOG_ID_NONE();
		if ( (not dialog_foreground_id_active_check(l_dialog_id)) and  (not b_objective_1_complete)) then
					l_dialog_id = dialog_start_foreground( "NUDGE_4", l_dialog_id,  (not b_objective_1_complete), DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 ); 
								
				 l_dialog_id = dialog_end( l_dialog_id, b_objective_1_complete, b_objective_1_complete, "" );
		end
end



script static void f_dialog_m40_nudge_5()
dprint("f_dialog_m40_nudge_5");
static long l_dialog_id = DEF_DIALOG_ID_NONE();
		if ( (not dialog_foreground_id_active_check(l_dialog_id)) and  (not b_objective_1_complete)) then
					l_dialog_id = dialog_start_foreground( "NUDGE_5", l_dialog_id,  (not b_objective_1_complete), DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 ); 
								
				 l_dialog_id = dialog_end( l_dialog_id, b_objective_1_complete, b_objective_1_complete, "" );
		end
end

script static void f_dialog_m40_nudge_6()
dprint("f_dialog_m40_nudge_6");
static long l_dialog_id = DEF_DIALOG_ID_NONE();
		if ( (not dialog_foreground_id_active_check(l_dialog_id)) and  (not b_objective_1_complete)) then
					l_dialog_id = dialog_start_foreground( "NUDGE_6", l_dialog_id,  (not b_objective_1_complete), DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 ); 
								
				 l_dialog_id = dialog_end( l_dialog_id, b_objective_1_complete, b_objective_1_complete, "" );
		end
end



script static void f_dialog_m40_nudge_7()
dprint("f_dialog_m40_nudge_7");
static long l_dialog_id = DEF_DIALOG_ID_NONE();
		if ( (not dialog_foreground_id_active_check(l_dialog_id)) and  (not b_objective_1_complete)) then
					l_dialog_id = dialog_start_foreground( "NUDGE_7", l_dialog_id,  (not b_objective_1_complete), DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 ); 
								
				 l_dialog_id = dialog_end( l_dialog_id, b_objective_1_complete, b_objective_1_complete, "" );
		end
end



script static void f_dialog_m40_nudge_8()
dprint("f_dialog_m40_nudge_8");
static long l_dialog_id = DEF_DIALOG_ID_NONE();
		if ( (not dialog_foreground_id_active_check(l_dialog_id)) and  (not b_objective_1_complete)) then
					l_dialog_id = dialog_start_foreground( "NUDGE_8", l_dialog_id,  (not b_objective_1_complete), DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 ); 
								
				 l_dialog_id = dialog_end( l_dialog_id, b_objective_1_complete, b_objective_1_complete, "" );
		end
end



script static void f_dialog_m40_nudge_9()
dprint("f_dialog_m40_nudge_9");
static long l_dialog_id = DEF_DIALOG_ID_NONE();
		if ( (not dialog_foreground_id_active_check(l_dialog_id)) and  (not b_objective_1_complete)) then
					l_dialog_id = dialog_start_foreground( "NUDGE_9", l_dialog_id,  (not b_objective_1_complete), DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 ); 
								
				 l_dialog_id = dialog_end( l_dialog_id, b_objective_1_complete, b_objective_1_complete, "" );
		end
end



script static void f_dialog_m40_nudge_10()
dprint("f_dialog_m40_nudge_10");
static long l_dialog_id = DEF_DIALOG_ID_NONE();
		if ( (not dialog_foreground_id_active_check(l_dialog_id)) and  (not b_objective_1_complete)) then
					l_dialog_id = dialog_start_foreground( "NUDGE_10", l_dialog_id,  (not b_objective_1_complete), DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 ); 
								
				 l_dialog_id = dialog_end( l_dialog_id, b_objective_1_complete, b_objective_1_complete, "" );
		end
end



script static void f_dialog_m40_nudge_11()
dprint("f_dialog_m40_nudge_11");
static long l_dialog_id = DEF_DIALOG_ID_NONE();
		if ( (not dialog_foreground_id_active_check(l_dialog_id)) and  (not b_objective_1_complete)) then
					l_dialog_id = dialog_start_foreground( "NUDGE_11", l_dialog_id,  (not b_objective_1_complete), DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 ); 
								
				 l_dialog_id = dialog_end( l_dialog_id, b_objective_1_complete, b_objective_1_complete, "" );
		end
end



script static void f_dialog_m40_nudge_12()
dprint("f_dialog_m40_nudge_12");
static long l_dialog_id = DEF_DIALOG_ID_NONE();
		if ( (not dialog_foreground_id_active_check(l_dialog_id)) and  (not b_objective_1_complete)) then
					l_dialog_id = dialog_start_foreground( "NUDGE_12", l_dialog_id,  (not b_objective_1_complete), DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 ); 
								
				 l_dialog_id = dialog_end( l_dialog_id, b_objective_1_complete, b_objective_1_complete, "" );
		end
end



script static void f_dialog_m40_nudge_13()
dprint("f_dialog_m40_nudge_13");
static long l_dialog_id = DEF_DIALOG_ID_NONE();
		if ( (not dialog_foreground_id_active_check(l_dialog_id)) and  (not b_objective_1_complete)) then
					l_dialog_id = dialog_start_foreground( "NUDGE_13", l_dialog_id,  (not b_objective_1_complete), DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 ); 
								
				 l_dialog_id = dialog_end( l_dialog_id, b_objective_1_complete, b_objective_1_complete, "" );
		end
end



script static void f_dialog_m40_nudge_14()
dprint("f_dialog_m40_nudge_14");
static long l_dialog_id = DEF_DIALOG_ID_NONE();
		if ( (not dialog_foreground_id_active_check(l_dialog_id)) and  (not b_objective_1_complete)) then
					l_dialog_id = dialog_start_foreground( "NUDGE_14", l_dialog_id,  (not b_objective_1_complete), DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 ); 
								
				 l_dialog_id = dialog_end( l_dialog_id, b_objective_1_complete, b_objective_1_complete, "" );
		end
end


script static void f_dialog_m40_nudge_15()
dprint("f_dialog_m40_nudge_15");
static long l_dialog_id = DEF_DIALOG_ID_NONE();
		if ( (not dialog_foreground_id_active_check(l_dialog_id)) and  (not b_objective_1_complete)) then
					l_dialog_id = dialog_start_foreground( "NUDGE_15", l_dialog_id,  (not b_objective_1_complete), DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.0 ); 
								
				 l_dialog_id = dialog_end( l_dialog_id, b_objective_1_complete, b_objective_1_complete, "" );
		end
end


// =================================================================================================
// =================================================================================================
// NUDGES
// =================================================================================================
// =================================================================================================
   	  
   	  
script static void f_dialog_m40_palmer_off_map_01()
	dprint("f_dialog_m40_palmer_off_map_01");
	local long l_dialog_id = DEF_DIALOG_ID_NONE();
  	  
   	  l_dialog_id = dialog_start_background( "M60_VIGNETTE_AMBUSH_01", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE_ALL(), TRUE, "", 0.0 );
   	  				
						dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_palmer_nudges_00100', FALSE, NONE, 0.0, "", "Palmer : Fight's not over yet, Spartan. Head back to the battle.", TRUE);
			l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );

end   
                     
script static void f_dialog_m40_palmer_off_map_02()
	dprint("f_dialog_m40_palmer_off_map_02");
	local long l_dialog_id = DEF_DIALOG_ID_NONE();
  	  
   	  l_dialog_id = dialog_start_background( "M60_VIGNETTE_AMBUSH_01", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE_ALL(), TRUE, "", 0.0 );

						dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_palmer_nudges_00101', FALSE, NONE, 0.0, "", "Palmer : Is something wrong, Master Chief?", TRUE);
			l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );

end       

script static void f_dialog_m40_palmer_off_map_03()
	dprint("f_dialog_m40_palmer_off_map_03");
	local long l_dialog_id = DEF_DIALOG_ID_NONE();
  	  
   	  l_dialog_id = dialog_start_background( "M60_VIGNETTE_AMBUSH_01", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE_ALL(), TRUE, "", 0.0 );

						dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_palmer_nudges_00102', FALSE, NONE, 0.0, "", "Palmer : This is Palmer, the Mammoth's undefended! All boots, back in the fight.", TRUE);
			l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );

end                               

script static void f_dialog_m40_palmer_off_map_04()
	dprint("f_dialog_m40_palmer_off_map_04");
	local long l_dialog_id = DEF_DIALOG_ID_NONE();
  	  
   	  l_dialog_id = dialog_start_background( "M60_VIGNETTE_AMBUSH_01", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE_ALL(), TRUE, "", 0.0 );

						dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_palmer_nudges_00103', FALSE, NONE, 0.0, "", "Palmer : You're picking a helluva time to go for a walk. Get back there!", TRUE);
			l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );

end   

script static void f_dialog_m40_palmer_off_map_05()
	dprint("f_dialog_m40_palmer_off_map_05");
	local long l_dialog_id = DEF_DIALOG_ID_NONE();
  	  
   	  l_dialog_id = dialog_start_background( "M60_VIGNETTE_AMBUSH_01", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE_ALL(), TRUE, "", 0.0 );

						dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_palmer_nudges_00104', FALSE, NONE, 0.0, "", "Palmer : Return to the battle perimeter, soldier.", TRUE);
			l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );

end   

script static void f_dialog_m40_palmer_off_map_06()
	dprint("f_dialog_m40_palmer_off_map_06");
	local long l_dialog_id = DEF_DIALOG_ID_NONE();
  	  
   	  l_dialog_id = dialog_start_background( "M60_VIGNETTE_AMBUSH_01", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE_ALL(), TRUE, "", 0.0 );

						dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_palmer_nudges_00105', FALSE, NONE, 0.0, "", "Palmer : Chief, you need to hold that battle position!", TRUE);
			l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );

end   

script static void f_dialog_m40_palmer_off_map_07()
	dprint("f_dialog_m40_palmer_off_map_07");
	local long l_dialog_id = DEF_DIALOG_ID_NONE();
  	  
   	  l_dialog_id = dialog_start_background( "M60_VIGNETTE_AMBUSH_01", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE_ALL(), TRUE, "", 0.0 );

						dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_palmer_nudges_00106', FALSE, NONE, 0.0, "", "Palmer : Back to the action, One One Seven.", TRUE);
			l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );

end  

script static void f_dialog_m40_palmer_off_map_08()
	dprint("f_dialog_m40_palmer_off_map_08");
	local long l_dialog_id = DEF_DIALOG_ID_NONE();
  	  
   	  l_dialog_id = dialog_start_background( "M60_VIGNETTE_AMBUSH_01", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE_ALL(), TRUE, "", 0.0 );

						dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_palmer_nudges_00107', FALSE, NONE, 0.0, "", "Palmer : The fun's the other way, Master Chief. Turn it around.", TRUE);
			l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );

end  

// =================================================================================================
// =================================================================================================
// NUDGES
// =================================================================================================
// =================================================================================================


script static void f_dialog_m40_target_missed()
sleep_until (b_target_missed == TRUE);
	dprint("f_dialog_m40_target_missed");
	local long l_dialog_id = DEF_DIALOG_ID_NONE();
  local short s_random = 0;
  	  
	s_random = random_range(1, 2);

	if s_random == 1 then
   	  l_dialog_id = dialog_start_background( "M40_TARGET_MISSED", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE_ALL(), TRUE, "", 0.0 );

   	   	  start_radio_transmission( "lasky_transmission_name" );
						dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_global_lasky_00102', FALSE, Marines_lasky.lasky, 0.0, "", "Lasky : Target missed!", TRUE);
			l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
	elseif s_random == 2 then
			 l_dialog_id = dialog_start_background( "M40_TARGET_MISSED", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE_ALL(), TRUE, "", 0.0 );
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_global_Cortana_00103', FALSE, NONE, 0.0, "", "Cortana: Target wide!");
			l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
	end
sleep_s(2);
thread(f_dialog_m40_target_missed());

end  

script static void f_dialog_m40_target_acquired()
sleep_until (b_target_acquired == TRUE);
	dprint("f_dialog_m40_target_acquired");
	
	local long l_dialog_id = DEF_DIALOG_ID_NONE();
  local short s_random = 0;
  	  
	s_random = random_range(1, 2);

	if s_random == 1 then 
   	  l_dialog_id = dialog_start_background( "M40_TARGET_MISSED", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE_ALL(), TRUE, "", 0.0 );

   	   	  start_radio_transmission( "lasky_transmission_name" );
						dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_global_lasky_00101', FALSE, Marines_lasky.lasky, 0.0, "", "Lasky : Target acquired!", TRUE);
						end_radio_transmission();
			l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
	elseif s_random == 2 then 
   	  l_dialog_id = dialog_start_background( "M40_TARGET_MISSED", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE_ALL(), TRUE, "", 0.0 );
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_global_Cortana_00102', FALSE, NONE, 0.0, "", "Cortana : Target acquired!");
						
			l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
	end
	thread(f_dialog_m40_target_acquired());
end  


script static void f_dialog_m40_no_line_of_sight()
	sleep_until (b_no_line_of_sight == TRUE);
	dprint("f_dialog_m40_no_line_of_sight");
	local long l_dialog_id = DEF_DIALOG_ID_NONE();
  local short s_random = 0;
  	  
	s_random = random_range(1, 2);

	if s_random == 1 then 
   	  l_dialog_id = dialog_start_background( "M40_NO_LINE_OF_SIGHT", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE_ALL(), TRUE, "", 0.0 );

   	   	  start_radio_transmission( "lasky_transmission_name" );
						dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_global_lasky_00103', FALSE, Marines_lasky.lasky, 0.0, "", "Lasky : No line of sight on target!", TRUE);
			l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
			end_radio_transmission();
	elseif s_random == 2 then
	  l_dialog_id = dialog_start_background( "M40_NO_LINE_OF_SIGHT", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE_ALL(), TRUE, "", 0.0 );
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_global_Cortana_00104', FALSE, NONE, 0.0, "", "Cortana : No line of sight on target!");
			l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
	
	end
	thread(f_dialog_m40_no_line_of_sight());
end  

script static void f_dialog_m40_target_destroyed()
	sleep_until (b_target_destroyed == TRUE);
	dprint("f_dialog_m40_target_destroyed");
	
	local long l_dialog_id = DEF_DIALOG_ID_NONE();
  local short s_random = 0;
  	  
	s_random = random_range(1, 2);

	if s_random == 1 then   
   	  l_dialog_id = dialog_start_background( "M40_TARGET_DESTROYED", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE_ALL(), TRUE, "", 0.0 );

   	   	  start_radio_transmission( "lasky_transmission_name" );
						dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_global_lasky_00104', FALSE, Marines_lasky.lasky, 0.0, "", "Lasky : Target destroyed!", TRUE);
									end_radio_transmission();
			l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
	elseif s_random == 2 then
   	  l_dialog_id = dialog_start_background( "M40_TARGET_DESTROYED", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE_ALL(), TRUE, "", 0.0 );
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_global_Cortana_00105', FALSE, NONE, 0.0, "", "Cortana : Target destroyed!");
			l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );	
	end
	thread(f_dialog_m40_target_destroyed());
end  

script static void f_dialog_m40_rail_gun_reloading()
	sleep_until (b_rail_gun_reloading == TRUE);
	dprint("f_dialog_m40_rail_gun_reloading");
	local long l_dialog_id = DEF_DIALOG_ID_NONE();
  local short s_random = 0;
  	  
	s_random = random_range(1, 2);

	if s_random == 1 then   
   	  l_dialog_id = dialog_start_background( "M40_TARGET_DESTROYED", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE_ALL(), TRUE, "", 0.0 );
   	
   	   	  start_radio_transmission( "lasky_transmission_name" );
						dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_global_lasky_00105', FALSE, Marines_lasky.lasky, 0.0, "", "Lasky : Rail gun reloading!", TRUE);
									end_radio_transmission();
			l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
	elseif s_random == 2 then
			l_dialog_id = dialog_start_background( "M40_TARGET_DESTROYED", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE_ALL(), TRUE, "", 0.0 );
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_global_Cortana_00106', FALSE, NONE, 0.0, "", "Cortana: Rail gun reloading!");
			l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
	end
	thread(f_dialog_m40_rail_gun_reloading());
end  

script static void f_dialog_m40_rail_gun_ready()
sleep_until (b_rail_gun_ready == TRUE);
	dprint("f_dialog_m40_rail_gun_ready");
	local long l_dialog_id = DEF_DIALOG_ID_NONE();
  local short s_random = 0;
  	  
	s_random = random_range(1, 2);

	if s_random == 1 then   
   	  l_dialog_id = dialog_start_background( "M40_RAIL_GUN_READY", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE_ALL(), TRUE, "", 0.0 );

   	   	  start_radio_transmission( "lasky_transmission_name" );
						dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_global_lasky_00106', FALSE, Marines_lasky.lasky, 0.0, "", "Lasky : Rail gun ready to fire!", TRUE);
									end_radio_transmission();
			l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
	elseif s_random == 2 then
			l_dialog_id = dialog_start_background( "M40_RAIL_GUN_READY", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE_ALL(), TRUE, "", 0.0 );
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_global_Cortana_00107', FALSE, NONE, 0.0, "", "Cortana: Rail gun ready to fire!");
			l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
		end
		thread(f_dialog_m40_rail_gun_ready());
end  


script static void f_dialog_m40_rail_gun_available()
	sleep_until (b_rail_gun_available == TRUE);
	dprint("f_dialog_m40_rail_gun_available");
	local long l_dialog_id = DEF_DIALOG_ID_NONE();
  local short s_random = 0;
  	  
	s_random = random_range(1, 2);

	if s_random == 1 then   
   	  l_dialog_id = dialog_start_background( "M40_RAIL_GUN_AVAILABLE", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE_ALL(), TRUE, "", 0.0 );

   	   	  start_radio_transmission( "lasky_transmission_name" );
						dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_global_lasky_00107', FALSE, Marines_lasky.lasky, 0.0, "", "Lasky : Rail gun available!", TRUE);
									end_radio_transmission();
			l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
	elseif s_random == 2 then
   	  l_dialog_id = dialog_start_background( "M40_RAIL_GUN_AVAILABLE", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE_ALL(), TRUE, "", 0.0 );
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_global_Cortana_00108', FALSE, NONE, 0.0, "", "Cortana: Rail gun available!");
			l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );

	end
	thread(f_dialog_m40_rail_gun_available());
	
end  


script dormant f_dialog_40_good_job()
	dprint("f_dialog_40_good_job");
	local long l_dialog_id = DEF_DIALOG_ID_NONE();
  	  
   	  l_dialog_id = dialog_start_background( "M40_GOOD_JOB", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE_ALL(), TRUE, "", 0.0 );
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_forcefield_00107', FALSE, NONE, 0.0, "", "Cortana : Good job, Chief." );
			l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );

end  

script dormant f_dialog_40_wraith()
	dprint("f_dialog_40_wraith");
	local long l_dialog_id = DEF_DIALOG_ID_NONE();
  	  
   	  l_dialog_id = dialog_start_background( "M40_WRAITH", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE_ALL(), TRUE, "", 0.0 );
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\global\global_chatter_00125', FALSE, NONE, 0.0, "", "Cortana: Wraith!" );
			l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );

end  


script dormant f_dialog_40_target_those_phantoms()
	dprint("f_dialog_40_target_those_phantoms");
	local long l_dialog_id = DEF_DIALOG_ID_NONE();
  	  
   	  l_dialog_id = dialog_start_background( "M40_TARGET_THOSE_PHANTOMS", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE_ALL(), TRUE, "", 0.0 );
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_global_Cortana_00101', FALSE, NONE, 0.0, "", "Cortana: Target those Phantoms for the Rail Gun to shoot down!" );
			l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );

end  

script dormant f_dialog_40_heavy_gear()
	dprint("f_dialog_40_heavy_gear");
	local long l_dialog_id = DEF_DIALOG_ID_NONE();
  	  start_radio_transmission( "delrio_transmission_name" );
   	  l_dialog_id = dialog_start_background( "M40_HEAVY_GEAR", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE_ALL(), TRUE, "", 0.0 );
						dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_gauss_00100', FALSE, NONE, 0.0, "", "Del Rio: Gypsy, local air space secure. I'm sending down some heavy gear.", TRUE);
			l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
			end_radio_transmission();
end  
script dormant f_dialog_40_gauss_hog_01()
	dprint("f_dialog_40_heavy_gear");
	local long l_dialog_id = DEF_DIALOG_ID_NONE();
  	  
   	  l_dialog_id = dialog_start_background( "M40_TARGET_GAUSS_HOG_01", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE_ALL(), TRUE, "", 0.0 );
						dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_gauss_00101', FALSE, tort_marines.aaron, 0.0, "", "Marine 1: Gauss Hog, ready to roll!", TRUE);
			l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );

end  

script dormant f_dialog_40_gauss_hog_02()
	dprint("f_dialog_40_heavy_gear");
	local long l_dialog_id = DEF_DIALOG_ID_NONE();
  	  
   	  l_dialog_id = dialog_start_background( "M40_TARGET_GAUSS_HOG_02", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE_ALL(), TRUE, "", 0.0 );
						dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_gauss_00102', FALSE, tort_marines.randall, 0.0, "", "Marine 2: Gauss Hog available, sir.", TRUE);
			l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );

end  

script dormant f_dialog_40_light_em_up()
	dprint("f_dialog_40_light_em_up");
	local long l_dialog_id = DEF_DIALOG_ID_NONE();
  	  
   	  l_dialog_id = dialog_start_background( "M40_LIGHT_EM_UP", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE_ALL(), TRUE, "", 0.0 );

   	   	  start_radio_transmission( "lasky_transmission_name" );
						dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_global_lasky_00119', FALSE, Marines_lasky.lasky, 0.0, "", "Lasky : Covenant, dug in on the left! Light 'em up!", TRUE);
									end_radio_transmission();
			l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end  

script dormant f_dialog_40_banshees_left()
	dprint("f_dialog_40_banshees_left");
	local long l_dialog_id = DEF_DIALOG_ID_NONE();
  	  
   	  l_dialog_id = dialog_start_background( "M40_BANSHEES_LEFT", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE_ALL(), TRUE, "", 0.0 );

   	   	  start_radio_transmission( "lasky_transmission_name" );
						dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_global_lasky_00120', FALSE, Marines_lasky.lasky, 0.0, "", "Lasky : Banshees, left of the Mammoth!", TRUE);
									end_radio_transmission();
			l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end  

script dormant f_dialog_40_take_out_banshees()
	dprint("f_dialog_40_take_out_banshees");
	local long l_dialog_id = DEF_DIALOG_ID_NONE();
  	  
   	  l_dialog_id = dialog_start_background( "M40_take_out_banshees", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE_ALL(), TRUE, "", 0.0 );
   	   	  
						dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_global_marine_00100', FALSE, tort_marines.randall, 0.0, "", "Marine 2: Someone take out those Banshees!", TRUE);
					
			l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end  

script dormant f_dialog_40_clear_out_those()
	dprint("f_dialog_40_clear_out_those");
	local long l_dialog_id = DEF_DIALOG_ID_NONE();
  	  
   	  l_dialog_id = dialog_start_background( "M40_CLEAR_OUT_THOSE", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE_ALL(), TRUE, "", 0.0 );
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_global_Cortana_00109', FALSE, NONE, 0.0, "", "Cortana: Clear out these enemies!" );
			l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );

end  

script dormant f_dialog_40_target_forerunner()
	dprint("f_dialog_40_clear_out_those");
	local long l_dialog_id = DEF_DIALOG_ID_NONE();
  	  
   	  l_dialog_id = dialog_start_background( "M40_CLEAR_OUT_THOSE", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE_ALL(), TRUE, "", 0.0 );
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_global_Cortana_00110', FALSE, NONE, 0.0, "", "Cortana: Chief, target that Forerunner cannon." );
			l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );

end  


script dormant f_dialog_40_use_the_designator()
	dprint("f_dialog_40_use_the_designator");
	
	local long l_dialog_id = DEF_DIALOG_ID_NONE();
  local short s_random = 0;
  	  
	s_random = random_range(1, 2);

	if s_random == 1 then   
   	     	  l_dialog_id = dialog_start_background( "M40_USE_THE_DESIGNATOR", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE_ALL(), TRUE, "", 0.0 );

						dialog_line_npc( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_global_lasky_00110', FALSE, Marines_lasky.lasky, 0.0, "", "Lasky: Use the designator on the cannon!", TRUE);
			l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
	elseif s_random == 2 then
   	  l_dialog_id = dialog_start_background( "M40_USE_THE_DESIGNATOR", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE_ALL(), TRUE, "", 0.0 );
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_global_Cortana_00111', FALSE, NONE, 0.0, "", "Cortana: Use the designator on the cannon!" );
			l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
	end

end  

script dormant f_dialog_40_marker_on_hud()
	dprint("f_dialog_40_marker_on_hud");
	local long l_dialog_id = DEF_DIALOG_ID_NONE();
  	  
   	  l_dialog_id = dialog_start_background( "M40_MARKER_ON_HUD", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE_ALL(), TRUE, "", 0.0 );
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_global_Cortana_00113', FALSE, NONE, 0.0, "", "Cortana: Get to the marker on your HUD, Chief." );
			l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );

end  

script dormant f_dialog_40_marker_on_hud_02()
	dprint("f_dialog_40_marker_on_hud_02");
	local long l_dialog_id = DEF_DIALOG_ID_NONE();
  	  
   	  l_dialog_id = dialog_start_background( "M40_MARKER_ON_HUD_02", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE_ALL(), TRUE, "", 0.0 );
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\m40\m40_global_Cortana_00114', FALSE, NONE, 0.0, "", "Cortana: Chief, we need to take out that target marked on your HUD." );
			l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );

end  


script dormant f_dialog_40_phantom_on_approah()
	dprint("f_dialog_40_phantom_on_approah");
	local long l_dialog_id = DEF_DIALOG_ID_NONE();
  	  
   	  l_dialog_id = dialog_start_background( "M40_PHANTOM_ON_APPROACH", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE_ALL(), TRUE, "", 0.0 );
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\global\global_chatter_00107', FALSE, NONE, 0.0, "", "Cortana: Phantom on approach!" );
			l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );

end  

script dormant f_dialog_m40_more_covenant()
dprint("f_dialog_callout_more_covenant");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "MORE_COVENANT", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\global\global_chatter_00121', FALSE, NONE, 0.0, "", "Cortana : More Covenant!" );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end

script dormant f_dialog_m40_banshees()
dprint("f_dialog_callout_banshees");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "BANSHEES", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\global\global_chatter_00126', FALSE, NONE, 0.0, "", "Cortana : Banshees!" );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end

script dormant f_dialog_m40_well_done()
dprint("f_dialog_callout_well_done");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "WELL_DONE", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\global\global_chatter_00135', FALSE, NONE, 0.0, "", "Cortana : Well done." );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end

script dormant f_dialog_m40_come_in_handy()
dprint("f_dialog_callout_move_left");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "MOVE_LEFT", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\global\global_chatter_00143', FALSE, NONE, 0.0, "", "Cortana : That could come in handy." );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end

script dormant f_dialog_m40_hold_them_off()
dprint("f_dialog_callout_hold_them_off");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "HOLD_THEM_OFF", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\global\global_chatter_00147', FALSE, NONE, 0.0, "", "Cortana : Hold them off!" );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end

script dormant f_dialog_m40_last_of_them()
dprint("f_dialog_callout_last_of_them");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "LAST_OF_THEM", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\global\global_chatter_00182', FALSE, NONE, 0.0, "", "Cortana : That's the last of them." );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end

script dormant f_dialog_m40_reinforcements_inbound()
dprint("f_dialog_callout_reinforcements_inbound");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "REINFORCEMENTS_INBOUND", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\global\global_chatter_00110', FALSE, NONE, 0.0, "", "Cortana : Reinforcements, Chief. And something tells me they won�t be the last." );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end

script dormant f_dialog_m40_clean_em_up()
dprint("f_dialog_m40_clean_em_up");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "CLEAN_EM_UP", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\global\global_chatter_00245', FALSE, NONE, 0.0, "", "Cortana : Clean 'em up!" );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end

script dormant f_dialog_m40_we_still_got_targets()
dprint("f_dialog_m40_we_still_got_targets");
local long l_dialog_id = DEF_DIALOG_ID_NONE();
					l_dialog_id = dialog_start_foreground( "STILL_GOT_TARGETS", l_dialog_id, TRUE, DEF_DIALOG_STYLE_QUEUE(), FALSE, "", 0.25 );    
						dialog_line_cortana( l_dialog_id, 0, TRUE, 'sound\dialog\mission\global\global_chatter_00244', FALSE, NONE, 0.0, "", "Cortana : We�ve still got targets!" );
				 l_dialog_id = dialog_end( l_dialog_id, TRUE, TRUE, "" );
end

// --- End m40_dialog.hsc ---

// --- Begin m40_invasion_audio.hsc ---
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343
//
// Mission: 					m40_invasion_audio
//										
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343

// =================================================================================================
// =================================================================================================
// *** GLOBALS ***
// =================================================================================================
// =================================================================================================

global sound mammoth_camera_shake_long = 'sound\environments\solo\m040\new_m40_tags\amb_m40_screen_shakes\m40_mammoth_camera_shake_long';
global sound epic_missile_camera_shake = 'sound\environments\solo\m040\new_m40_tags\amb_m40_screen_shakes\m40_epic_missile_camera_shake';
global sound library_camera_shake = 'sound\environments\solo\m040\new_m40_tags\amb_m40_screen_shakes\m40_library_camera_shake';
global sound mammoth_camera_shake_short = 'sound\environments\solo\m040\new_m40_tags\amb_m40_screen_shakes\m40_mammoth_camera_shake_short';
global sound lich_camera_shake = 'sound\environments\solo\m040\new_m40_tags\amb_m40_screen_shakes\m40_lich_camera_shake';
global sound rock_crush_camera_shake = 'sound\environments\solo\m040\new_m40_tags\amb_m40_screen_shakes\m40_rock_crush_camera_shake';
global sound lich_explode_camera_shake = 'sound\environments\solo\m040\new_m40_tags\amb_m40_screen_shakes\m40_lich_explode_camera_shake';
global sound powercave_door_camera_shake = 'sound\environments\solo\m040\new_m40_tags\amb_m40_screen_shakes\m40_powercave_door_camera_shake';
global sound battery_airlock_camera_shake = 'sound\environments\solo\m040\new_m40_tags\amb_m40_screen_shakes\m40_battery_airlock_camera_shake';

// =================================================================================================
// =================================================================================================
// *** START-UP ***
// =================================================================================================
// =================================================================================================

script startup m40_invasion_audio()

	if b_debug then 
		print ("::: M40 - AUDIO :::");
	end
	
	thread(test_audio());

	thread (load_music_for_zone_set());
end

script static void test_audio()
	print ("::: test FX :::");
	//effect_new( cinematics\cin_verticalslice\fx\rig_spark_pipe.effect, test_fx );
end

; =================================================================================================
; *** MUSIC STUBS ***
; =================================================================================================
script static void f_mus_m40_e01_begin()
	//dprint("f_mus_m40_e01");
	music_set_state('Play_mus_m40_e01_cannon_fobber');
end

script static void f_mus_m40_e02_begin()
	//dprint("f_mus_m40_e02");
	music_set_state('Play_mus_m40_e03_lakeside');
end

script static void f_mus_m40_e03_begin()
	//dprint("f_mus_m40_e03");
	music_set_state('Play_mus_m40_e05_cliffside');
end

script static void f_mus_m40_e04_begin()
	//dprint("f_mus_m40_e04");
	music_set_state('Play_mus_m40_e07_pre_chopper');
end

script static void f_mus_m40_e05_begin()
	//dprint("f_mus_m40_e05");
	music_set_state('Play_mus_m40_e09_chopper_bowl');
end

script static void f_mus_m40_e06_begin()
	//dprint("f_mus_m40_e06");
	music_set_state('Play_mus_m40_e11_sniper_alley');
end

script static void f_mus_m40_e07_begin()
	//dprint("f_mus_m40_e07");
	music_set_state('Play_mus_m40_e13_citadel_ext');
end

script static void f_mus_m40_e08_begin()
	//dprint("f_mus_m40_e08");
	music_set_state('Play_mus_m40_e15_librarian_room');
end

script static void f_mus_m40_e09_begin()
	//dprint("f_mus_m40_e09");
	music_set_state('Play_mus_m40_e17_epic_bowl');
end

//script static void f_mus_m40_e10_begin()
	// dprint("f_mus_m40_e10");
//end

//script static void f_mus_m40_e11_begin()
	//dprint("f_mus_m40_e11");
//end

//script static void f_mus_m40_e12_begin()
	//dprint("f_mus_m40_e12");
//end

//script static void f_mus_m40_e13_begin()
	//dprint("f_mus_m40_e13");
//end

//script static void f_mus_m40_e14_begin()
	//dprint("f_mus_m40_e14");
//end

//script static void f_mus_m40_e15_begin()
	//dprint("f_mus_m40_e15");
//end

//script static void f_mus_m40_e16_begin()
	//dprint("f_mus_m40_e16");
//end

//script static void f_mus_m40_e17_begin()
	//dprint("f_mus_m40_e17");
//end

//script static void f_mus_m40_e18_begin()
	//dprint("f_mus_m40_e18");
//end

script static void f_mus_m40_e01_finish()
	//dprint("f_mus_m40_e01");
	music_set_state('Play_mus_m40_e02_cannon_fobber_end');
end

script static void f_mus_m40_e02_finish()
	//dprint("f_mus_m40_e02");
	music_set_state('Play_mus_m40_e04_lakeside_end');
end

script static void f_mus_m40_e03_finish()
	//dprint("f_mus_m40_e03");
	music_set_state('Play_mus_m40_e06_cliffside_end');
end

script static void f_mus_m40_e04_finish()
	//dprint("f_mus_m40_e04");
	music_set_state('Play_mus_m40_e08_pre_chopper_end');
end

script static void f_mus_m40_e05_finish()
	//dprint("f_mus_m40_e05");
	music_set_state('Play_mus_m40_e10_chopper_bowl_end');
end

script static void f_mus_m40_e06_finish()
	//dprint("f_mus_m40_e06");
	music_set_state('Play_mus_m40_e12_sniper_alley_end');
end

script static void f_mus_m40_e07_finish()
	//dprint("f_mus_m40_e07");
	music_set_state('Play_mus_m40_e14_citadel_ext_end');
end

script static void f_mus_m40_e08_finish()
	//dprint("f_mus_m40_e08");
	music_set_state('Play_mus_m40_e16_librarian_room_end');
end

script static void f_mus_m40_e09_finish()
	//dprint("f_mus_m40_e09");
	music_set_state('Play_mus_m40_e18_epic_bowl_end');
end

//script static void f_mus_m40_e10_finish()
	//dprint("f_mus_m40_e10");
//end

//script static void f_mus_m40_e11_finish()
	//dprint("f_mus_m40_e11");
//end

//script static void f_mus_m40_e12_finish()
	//dprint("f_mus_m40_e12");
//end

//script static void f_mus_m40_e13_finish()
	//dprint("f_mus_m40_e13");
//end

//script static void f_mus_m40_e14_finish()
	//dprint("f_mus_m40_e14");
//end

//script static void f_mus_m40_e15_finish()
	//dprint("f_mus_m40_e15");
//end

//script static void f_mus_m40_e16_finish()
	//dprint("f_mus_m40_e16");
//end

//script static void f_mus_m40_e17_finish()
	//dprint("f_mus_m40_e17");
//end

//script static void f_mus_m40_e18_finish()
	//dprint("f_mus_m40_e18");
//end

script static void f_music_m40_tweak01()
	//dprint("f_music_m40_tweak01");
	music_set_state('Play_mus_m40_t01_tweak');
end

script static void f_music_m40_tweak02()
	//dprint("f_music_m40_tweak02");
	music_set_state('Play_mus_m40_t02_tweak');
end

script static void f_music_m40_tweak03()
	//dprint("f_music_m40_tweak03");
	music_set_state('Play_mus_m40_t03_tweak');
end

script static void f_music_m40_tweak04()
	//dprint("f_music_m40_tweak04");
	music_set_state('Play_mus_m40_t04_tweak');
end

script static void f_music_m40_tweak05()
	//dprint("f_music_m40_tweak05");
	music_set_state('Play_mus_m40_t05_tweak');
end

script static void f_music_m40_tweak06()
	//dprint("f_music_m40_tweak06");
	music_set_state('Play_mus_m40_t06_tweak');
end

script static void f_music_m40_tweak07()
	//dprint("f_music_m40_tweak07");
	music_set_state('Play_mus_m40_t07_tweak');
end

script static void f_music_m40_tweak08()
	//dprint("f_music_m40_tweak08");
	music_set_state('Play_mus_m40_t08_tweak');
end

script static void f_music_m40_tweak09()
	//dprint("f_music_m40_tweak09");
	music_set_state('Play_mus_m40_t09_tweak');
end

script static void f_music_m40_tweak10()
	//dprint("f_music_m40_tweak10");
	music_set_state('Play_mus_m40_t10_tweak');
end


script static void f_music_m40_v13_mammoth_start()
	music_set_state('Play_mus_m40_v13_mammoth_start');
end

// ==================== Region-based music triggers ============================
// this will always be 0 unless an insertion point is used
// in that case, it is used to skip past the trigger volumes that precede the selected insertion point
global short b_m40_music_progression = 0;

script static void load_music_for_zone_set()
	sleep_until(b_m40_music_progression > 0 or current_zone_set_fully_active() == DEF_S_ZONESET_CAV(), 1);
		
	music_start('Play_mus_m40');

	sleep_until(b_m40_music_progression > 10 or volume_test_players (tv_music_r01_cave), 1);
	if b_m40_music_progression <= 10 then	
		sound_set_state('Set_State_M40_cav');
		music_set_state('Play_mus_m40_r01_cav');
	end
		
	sleep_until(b_m40_music_progression > 20 or volume_test_players (tv_music_r02_cav_tort_gun), 1);
	if b_m40_music_progression <= 20 then
		sound_set_state('Set_State_M40_cav_tort_gun');
		music_set_state('Play_mus_m40_r02_cav_tort_gun');
	end
	
	sleep_until(b_m40_music_progression > 30 or volume_test_players (tv_music_r03_gun_fodder), 1);
	if b_m40_music_progression <= 30 then
		sound_set_state('Set_State_M40_gun_fodder');
		music_set_state('Play_mus_m40_r03_gun_fodder');
	end
	
	sleep_until(b_m40_music_progression > 40 or volume_test_players (tv_music_r05_fodder_chopper), 1);
	if b_m40_music_progression <= 40 then		
		sound_set_state('Set_State_M40_fodder_chopper');
		music_set_state('Play_mus_m40_r05_fodder_chopper');
	end
	
	sleep_until(b_m40_music_progression > 50 or volume_test_players (tv_music_r22_pre_chop_water), 1);
	if b_m40_music_progression <= 50 then
		sound_set_state('Set_State_M40_pre_chop_water');
		music_set_state('Play_mus_m40_r22_pre_chop_water');
	end
	
	sleep_until(b_m40_music_progression > 60 or volume_test_players (tv_music_r06_chopper_waterfall_pre), 1);
	if b_m40_music_progression <= 60 then
		sound_set_state('Set_State_M40_chopper_waterfall_pre');
		music_set_state('Play_mus_m40_r06_chopper_waterfall_pre');
	end
	
	sleep_until(b_m40_music_progression > 70 or volume_test_players (tv_music_r07_waterfall_pre_vale), 1);
	if b_m40_music_progression <= 70 then
		sound_set_state('Set_State_M40_waterfall_pre_vale');
		music_set_state('Play_mus_m40_r07_waterfall_pre_vale');
	end
	
	sleep_until(b_m40_music_progression > 80 or volume_test_players (tv_music_r08_pre_vale), 1);
	if b_m40_music_progression <= 80 then
		sound_set_state('Set_State_M40_pre_vale');
		music_set_state('Play_mus_m40_r08_pre_vale');
	end
	
	sleep_until(b_m40_music_progression > 90 or volume_test_players (tv_music_r09_vale_vale), 1);
	if b_m40_music_progression <= 90 then
		sound_set_state('Set_State_M40_vale_vale');
		music_set_state('Play_mus_m40_r09_vale_vale');
	end
	
	sleep_until(b_m40_music_progression > 100 or volume_test_players (tv_music_r12_battery), 1);
	if b_m40_music_progression <= 100 then
		sound_set_state('Set_State_M40_battery');
		music_set_state('Play_mus_m40_r12_battery');
	end
	
	sleep_until(b_m40_music_progression > 110 or volume_test_players (tv_music_r13_battery_cavern), 1);
	if b_m40_music_progression <= 110 then
		sound_set_state('Set_State_M40_battery_cavern');
		music_set_state('Play_mus_m40_r13_battery_cavern');
	end
	
	sleep_until(b_m40_music_progression > 120 or volume_test_players (tv_music_r14_cavern_librarian_vale), 1);
	if b_m40_music_progression <= 120 then
		sound_set_state('Set_State_M40_cavern_librarian_vale');
		music_set_state('Play_mus_m40_r14_cavern_librarian_vale');
	end
	
	sleep_until(b_m40_music_progression > 130 or volume_test_players (tv_music_r24_ele_epic), 1);
	if b_m40_music_progression <= 130 then
		sound_set_state('Set_State_M40_ele_epic');
		music_set_state('Play_mus_m40_r24_ele_epic');
	end
	
	sleep_until(b_m40_music_progression > 140 or volume_test_players (tv_music_r19_epic), 1);
	if b_m40_music_progression <= 140 then
		sound_set_state('Set_State_M40_epic');
		music_set_state('Play_mus_m40_r19_epic');
	end
	
	sleep_until(b_m40_music_progression > 150 or volume_test_players (tv_music_r20_epic_exit), 1);
	if b_m40_music_progression <= 150 then
		sound_set_state('Set_State_M40_epic_exit');
		music_set_state('Play_mus_m40_r20_epic_exit');
	end
	
	sleep_until(current_zone_set_fully_active() == DEF_S_ZONESET_CIN_M042_END(), 1);
		music_stop('Stop_mus_m40');
end

; =================================================================================================
; *** MUSIC ***
; =================================================================================================
script dormant f_music()
	dprint ("::: M40 - f_music :::");
	
	sleep_until (LevelEventStatus("Music Drama A Start"), 1);
	dprint ("Started M40 Music - Drama A");
	sound_looping_start ('sound\environments\solo\m040\music\m40_music_drama_a', NONE, 1);
	
	sleep_until (LevelEventStatus("Music Battle A Start"), 1);
	dprint ("Stopped M40 Music - Drama A");
	sound_looping_stop ('sound\environments\solo\m040\music\m40_music_drama_a');
	dprint ("Started M40 Music - Battle A");
	sound_looping_start ('sound\environments\solo\m040\music\m40_music_battle_a', NONE, 1);
	
	sleep_until (LevelEventStatus("Music Battle A Stop"), 1);
	dprint ("Stopped M40 Music - Battle A");
	sound_looping_stop ('sound\environments\solo\m040\music\m40_music_battle_a');
	
	sleep_until (LevelEventStatus("Music Battle A (Part 2) Start"), 1);
	dprint ("Stopped M40 Music - Battle A");
	sound_looping_start ('sound\environments\solo\m040\music\m40_music_battle_a', NONE, 1);
	
	sleep_until (LevelEventStatus("Music Battle B Start"), 1);
	dprint ("Stopped M40 Music - Battle A");
	sound_looping_stop ('sound\environments\solo\m040\music\m40_music_battle_a');
	dprint ("Started M40 Music - Battle B");
	sound_looping_start ('sound\environments\solo\m040\music\m40_music_battle_b', NONE, 1);
	
	sleep_until (LevelEventStatus("Music Battle B Stop"), 1);
	dprint ("Stopped M40 Music - Battle B");
	sound_looping_stop ('sound\environments\solo\m040\music\m40_music_battle_b');
end

script static void f_music_m40_drama_a_start()
	dprint ("Started M40 Music - Drama A");
	sound_looping_start ('sound\environments\solo\m040\music\m40_music_drama_a', NONE, 1);
	f_music_m40_battle_a_stop();
	f_music_m40_battle_b_stop();
end

script static void f_music_m40_drama_a_stop()
	dprint ("Stopped M40 Music - Drama A");
	sound_looping_stop ('sound\environments\solo\m040\music\m40_music_drama_a');
end

script static void f_music_m40_battle_a_start()
	dprint ("Started M40 Music - Battle A");
	sound_looping_start ('sound\environments\solo\m040\music\m40_music_battle_a', NONE, 1);
	f_music_m40_drama_a_stop();
	f_music_m40_battle_b_stop();
end

script static void f_music_m40_battle_a_stop()
	dprint ("Stopped M40 Music - Battle A");
	sound_looping_stop ('sound\environments\solo\m040\music\m40_music_battle_a');
end

script static void f_music_m40_battle_b_start()
	dprint ("Started M40 Music - Battle B");
	sound_looping_start ('sound\environments\solo\m040\music\m40_music_battle_b', NONE, 1);
	f_music_m40_drama_a_stop();
	f_music_m40_battle_a_stop();
end

script static void f_music_m40_battle_b_stop()
	dprint ("Stopped M40 Music - Battle B");
	sound_looping_stop ('sound\environments\solo\m040\music\m40_music_battle_b');
end

; =================================================================================================
; *** AMBIENCES ***
; =================================================================================================
script static void f_trigger_ambience(trigger_volume tv, looping_sound amb_tag, string debug_text)
	sleep_until(volume_test_players(tv), 1);
	sound_looping_start(amb_tag, NONE, 1.0);
	sleep_until(volume_test_players(tv) == 0, 1);
	sound_looping_stop(amb_tag);
end


// --- End m40_invasion_audio.hsc ---

// --- Begin m40_invasion_citadel.hsc ---
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343
//
// 	Mission: 					m40_invasion_mission_cf
//	Insertion Points:	start 	- Beginning
//	ifo		- fodder
//	ija		- jackal alley
//	ici		- citidel exterior
//	iic		- citidel interior
//	ipo		- powercave/ battery room
//	ili		- librarian encounter			
//  ior		- ordnance training					
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343

// ==========================================================================================================================================================
// ==========================================================================================================================================================
// ==========================================================================================================================================================
// *** CITADEL ***
// ==========================================================================================================================================================
// ==========================================================================================================================================================
// ==========================================================================================================================================================

// FUNCTIONS ------------------------------------------------------------------------------------------------------------------------------------------------
// === f_citadel_init::: Initialize
script dormant f_citadel_init()
	dprint( "f_citadel_init" );

	// modules init
	wake( f_valley_init );
	wake( f_citadel_ext_init );
	wake( f_citadel_int_init );
	
	//wake( f_librarian_main );

	// XXX MOVE TO BETTER LOCATION
	// cleanup chopper
	object_destroy( chop_hilltop_crate_01 );
	object_destroy( chop_hilltop_crate_02 );

end

// === f_citadel_deinit::: DeInitialize
script dormant f_citadel_deinit()
	dprint( "f_citadel_deinit" );

	// modules deinit
	wake( f_valley_deinit );
	wake( f_citadel_ext_deinit );
	wake( f_citadel_int_deinit );
	
end

// === f_citadel_cleanup::: Cleanup
script dormant f_citadel_cleanup()
	dprint( "f_citadel_cleanup" );

	// deinit main module
	wake( f_citadel_deinit );
	
end



// XXX OLD REORGANIZE VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

// === el_citadel::: xxx
script dormant el_citadel()

	// call init
	wake( f_citadel_init );

	// XXX OLD REORGANIZE
	wake( f_el_citadel_vo );

end

// XXX these are generic functionality that should be built into the doors
script static void f_redlight_on( object door )
	effect_stop_object_marker ("fx\library\light\light_green\light_green.effect", door, "" );  
	sleep(1 );  
	effect_new_on_object_marker ("fx\library\light\light_red\light_red.effect", door, "" );                               
end

script static void f_greenlight_on( object door )
	effect_stop_object_marker ("fx\library\light\light_red\light_red.effect", door, "" ); 
	sleep(1 );
	effect_new_on_object_marker ("fx\library\light\light_green\light_green.effect", door, "" );                                                  
end

script static void f_doorlight_off( object door )
	effect_stop_object_marker ("fx\library\light\light_green\light_green.effect", door, "" );
	sleep(1 );
	effect_stop_object_marker ("fx\library\light\light_red\light_red.effect", door, "" );                                            
end




// =================================================================================================
// =================================================================================================
// VO 
// =================================================================================================
// =================================================================================================

global boolean b_valley_entrance_vo = FALSE;

script dormant forerunner_int_chapter_title()
	sleep (30 * 2 );
	cinematic_show_letterbox (TRUE );
	sleep (30 * 1 );
//	thread( storyblurb_display(leadin_title_frint, 8, FALSE, FALSE) );
	f_chapter_title_2 (leadin_title_frint);
	sleep (30 * 6 );
	cinematic_show_letterbox (FALSE );
end

script dormant f_el_citadel_vo()
/*
		// 125 : Looks like this is as far as the Longhorn�s going to go. Forerunner objective should be accessible on foot from here - recon the target and if you�re able to locate the source of those cannons, don�t feel like you have to wait on us.
		sound_impulse_start ('sound\dialog\Mission\M40\m_m40_Palmer_04000', NONE, 1 );
		sleep (30 * 11 );
			
		// 126 : Roger that.
		sound_impulse_start ('sound\dialog\Mission\M40\m_m40_MC_04100', NONE, 1 );
		sleep (30 * 1 );
*/
	sleep_until( volume_test_players (tv_spawn_el_citadel), 1 );
		// 10 : We�ll clear out the rubble for the Longhorn to move forward, Chief. You investigate the area to the left.
		//sound_impulse_start ('sound\dialog\Mission\M40\M_M40_Temp_Marine_01100', NONE, 1 );
		
//		storyblurb_display(ch_blurb_sniper_ent_1, 10, FALSE, FALSE );
		//sleep (30 * 5 );
		b_valley_entrance_vo = TRUE;
	sleep_until( volume_test_players (tv_careful_chief), 1 );
		
	sleep_until( b_valley_entrance_vo, 1 );		
		// 127 : Careful, Chief - we�ve got snipers in those rocks.
	//	dprint("Careful, Chief - we�ve got snipers in those rocks." );
	//	sound_impulse_start ('sound\dialog\Mission\M40\m_m40_Cortana_04200', NONE, 1 );
		sleep (30 * 3 );

	sleep_until( volume_test_players (tv_valley_objcon_40) or volume_test_players (tv_cit_entrance_ravine), 1 );	
		// 128 : This installation is deceptively large. It extends deeper into the planet�s surface than I can even detect. Like the tip of a giant pyramid.
		dprint("This installation is deceptively large. It extends deeper into the planet�s surface than I can even detect. Like the tip of a giant pyramid." );
	//	sound_impulse_start ('sound\dialog\Mission\M40\m_m40_Cortana_04300', NONE, 1 );
	//	sleep (30 * 10 );
//		storyblurb_display(ch_blurb_cit_ext_1, 7, FALSE, FALSE );

	//sleep_until( volume_test_players (tv_citent_left_rear) or volume_test_players (tv_citent_right_rear), 1 );			
		
//		storyblurb_display(ch_blurb_citadel_ammo, 8, FALSE, FALSE );
		
end

script dormant f_el_citadel_enter_vo()
	sleep_until( volume_test_players (tv_citadel_ext_airlock_area), 1 );	
		// 129 : Cortana to Infinity. We�ve breached the Forerunner structure and are proceeding inside.
//		sound_impulse_start ('sound\dialog\Mission\M40\m_m40_Cortana_04400', NONE, 1 );
		//wake (forerunner_int_chapter_title );
		wake (M40_second_promethean_encounter );
	//	sleep (30 * 5 );
		
//		storyblurb_display(ch_blurb_cit_entered, 4, FALSE, FALSE );
		// 130 : This is Del Rio.... barely reading you.... --ansmitting coordinates for...defense grid�s power source... --opy?
		//sound_impulse_start ('sound\dialog\Mission\M40\m_m40_Del_Rio_04500', NONE, 1 );
		//sleep (30 * 8 );
		
		// 131 : Confirming receipt of coordinates, Infinity. Proceeding on mission.
		//sound_impulse_start ('sound\dialog\Mission\M40\m_m40_Cortana_04600', NONE, 1 );
		//sleep (30 * 4 );	
		
	sleep_until( volume_test_players (tv_go_through_that_door), 1 );	
		
		// 132 : Chief, that passageway should lead underne--
	//	sound_impulse_start ('sound\dialog\Mission\M40\m_m40_Cortana_04700', NONE, 1 );
	//	sleep (30 * 3 );
		// 133 : Huh?
	//	sound_impulse_start ('sound\dialog\Mission\M40\m_m40_Cortana_04800', NONE, 1 );
	//	sleep (30 * 1 );
		
		// 134 : Did you do that?
	//	sound_impulse_start ('sound\dialog\Mission\M40\m_m40_MC_04900', NONE, 1 );
	//	sleep (30 * 1 );
		
		// 135 : Not me. Very strange.
		//sound_impulse_start ('sound\dialog\Mission\M40\m_m40_Cortana_05000', NONE, 1 );
		//sleep (30 * 3 );
		
		// 136 : Um... well THAT�S a new one.
		//sound_impulse_start ('sound\dialog\Mission\M40\m_m40_Cortana_05100', NONE, 1 );
		//sleep (30 * 4 );
		
		// 137 : And you didn�t do that one either?
		//sound_impulse_start ('sound\dialog\Mission\M40\m_m40_MC_05200', NONE, 1 );
		//sleep (30 * 2 );
		
		// 138 : WHAT ARE YOU ASKING - �AM I LOSING THE ABILITY TO KNOW IF I�M OPENING DOORS?!? WELL???� (recovers) Whoa. OK, this is me shutting up.
		//sound_impulse_start ('sound\dialog\Mission\M40\m_m40_Cortana_05300', NONE, 1 );
		//sleep (30 * 9 );
		
		// 139 : I believe you, Cortana. I�m just used to Forerunner installations trying to keep us out.
		//sound_impulse_start ('sound\dialog\Mission\M40\m_m40_MC_05400', NONE, 1 );
		//sleep (30 * 5 );		

	sleep_until( volume_test_players (tv_elevator_travel_down), 1 );
		// 140 : OK, Chief? This elevator seems to be taking us straight to the coordinates Infinity gave us. Almost like something WANTED us to get those guns offline.
	//	sound_impulse_start ('sound\dialog\Mission\M40\m_m40_Cortana_05500', NONE, 1 );
	//	sleep (30 * 9 );
		
		sleep_until( volume_test_players (tv_battery_setup), 1 );
		// 140 : OK, Chief? This elevator seems to be taking us straight to the coordinates Infinity gave us. Almost like something WANTED us to get those guns offline.
		
		
end
// --- End m40_invasion_citadel.hsc ---

// --- Begin m40_invasion_citadel_ext.hsc ---
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343
//
// 	Mission: 					m40_invasion_mission_cf
//	Insertion Points:	start 	- Beginning
//	ifo		- fodder
//	ija		- jackal alley
//	ici		- citidel exterior
//	iic		- citidel interior
//	ipo		- powercave/ battery room
//	ili		- librarian encounter			
//  ior		- ordnance training					
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343

// ==========================================================================================================================================================
// ==========================================================================================================================================================
// ==========================================================================================================================================================
// *** CITADEL_EXT ***
// ==========================================================================================================================================================
// ==========================================================================================================================================================
// ==========================================================================================================================================================

// FUNCTIONS ------------------------------------------------------------------------------------------------------------------------------------------------
// === f_citadel_ext_init::: Initialize
script dormant f_citadel_ext_init()
	dprint( "f_citadel_ext_init" );
	
	// setup cleanup
	wake( f_citadel_ext_cleanup );

	// init sub modules
	sleep_until( current_zone_set_fully_active() == DEF_S_ZONESET_PRE_VALE()
or
	current_zone_set_fully_active() == DEF_S_ZONESET_VALE_VALE()
	, 1 ); 
	zone_set_trigger_volume_enable("begin_zone_set:zone_set_hall_battery", FALSE);
	wake( f_citadel_ext_ai_init );
	wake( f_citadel_ext_door_init );
	wake( f_citadel_ext_supplies_init );
	//wake( f_citadel_ext_cover_init );

	
	// setup trigger
	wake( f_citadel_ext_trigger );
	
end

// === f_citadel_ext_deinit::: DeInitialize
script dormant f_citadel_ext_deinit()

	// shutdown functions
	kill_script( f_citadel_ext_init );
	kill_script( f_citadel_ext_trigger );
	kill_script( f_citadel_ext_action );

	// deinit sub modules
	wake( f_citadel_ext_ai_deinit );
	//wake( f_citadel_ext_door_deinit );
	wake( f_citadel_ext_supplies_deinit );
	wake( f_citadel_ext_cover_deinit );
	
end

// === f_citadel_ext_cleanup::: Cleanup
script dormant f_citadel_ext_cleanup()
	sleep_until( current_zone_set_fully_active() > DEF_S_ZONESET_VALE_VALE(), 1 );

	// deinit main module
	wake( f_citadel_ext_deinit );
	
end

// === f_citadel_ext_trigger::: Trigger
script dormant f_citadel_ext_trigger()
	sleep_until( S_citadel_ext_ai_objcon >= DEF_CITADEL_EXT_AI_OBJCON_BRIDGE_START, 1 );
	
	wake( f_citadel_ext_action );

	//sleep_until( S_citadel_ext_ai_objcon >= DEF_CITADEL_EXT_AI_OBJCON_BRIDGE_START, 1 );	//  XXX do we need this? If so probably best setup with a trigger volume
	// display chapter
	//wake( f_citadel_ext_chapter );
	
end

// === f_citadel_ext_action::: action
script dormant f_citadel_ext_action()

	data_mine_set_mission_segment ("m40_sniper_alley" );

end

// === f_citadel_ext_blip::: Initialize
script dormant f_citadel_ext_blip()
	f_blip_flag( fg_citadel_main_entrance, "recon" );
	// XXX should probably have a VO associated with this
	
	sleep_until( volume_test_players(tv_citadel_ext_airlock_area), 1 );	
	f_unblip_flag( fg_citadel_main_entrance );
	
end

// === f_citadel_ext_unblip::: Unblips all citadel exterior blips
script dormant f_citadel_ext_unblip()

	f_unblip_flag( valley_entrance_flag );
	f_unblip_flag( citadel_exterior_flag );
	f_unblip_flag( fg_citadel_main_entrance );
	
end



// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// CITADEL_EXT: DOOR
// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// ----------------------------------------------------------------------------------------------------------------------------------------------------------

// FUNCTIONS ------------------------------------------------------------------------------------------------------------------------------------------------

// === f_citadel_ext_door_create::: Initialize
script dormant f_citadel_ext_door_init()
	sleep_until( object_valid(citadel_ent_airlock_01), 1 );

	// setup trigger
	wake( f_citadel_ext_door_trigger );

	// setup lights
	//thread( f_greenlight_on(sn_door_cit_entrance) );
	//thread( f_greenlight_on(sn_door_cit_airlock) );

end

// === f_citadel_ext_door_deinit::: DeInitialize
script dormant f_citadel_ext_door_deinit()
	sleep_until( current_zone_set_fully_active() > DEF_S_ZONESET_VALE_HALL(), 1 );	// This is necessary to let the tasks functions finish before being cleaned up - TWF
	
	// deinit functions
	kill_script( f_citadel_ext_door_init );
	kill_script( f_citadel_ext_door_trigger );
	
end

// === f_citadel_ext_door_trigger::: Manages triggering all the different door states as it airlocks
script dormant f_citadel_ext_door_trigger()

	// setup auto open
	citadel_ent_airlock_01->speed_set_open( 2.5 );
	citadel_ent_airlock_01->auto_trigger_open( tv_citadel_ext_airlock_enterance, FALSE, TRUE, FALSE );
	sleep_until( citadel_ent_airlock_01->check_open(), 1 );
	
	// play the VO
	wake( f_el_citadel_enter_vo );  // XXX function name should be standardized
	
	// close when everyone's inside
	citadel_ent_airlock_01->auto_trigger_close( tv_citadel_ext_airlock_area, FALSE, TRUE, TRUE );
	sleep_until( citadel_ent_airlock_01->check_close(), 1 );

	// start loading DEF_S_ZONESET_VALE_HALL
	volume_teleport_players_not_inside(tv_citadel_ext_airlock_area, fg_vale_hall_tp);

	prepare_to_switch_to_zone_set( f_zoneset_get(DEF_S_ZONESET_VALE_HALL()) );

	// unblip any citadel
	wake( f_citadel_ext_unblip );
	
	// destroy the mammoth for now
	wake( f_valley_supplies_destroy );
	object_destroy( main_mammoth );
	sleep(1);
	sleep_until (not preparingToSwitchZoneSet(), 1); // poll whether async load is complete
	
	// turn on the red lights
	//thread( f_redlight_on(sn_door_cit_entrance) );	// XXX I deleted these old doors.  Need to figure out how to do lights for doors.  Could probably be part of generic door script

	// load vale hall and open the interior doors
	f_insertion_zoneload( DEF_S_ZONESET_VALE_HALL(), TRUE );
	
	citadel_ent_airlock_02->speed_set_open( 2.5 );
	citadel_ent_airlock_02->open();

	// close when everyone's inside
	thread( citadel_ent_airlock_02->auto_trigger_close(tv_citadel_ext_airlock_area, TRUE, FALSE, TRUE) );
	sleep_until( citadel_ent_airlock_02->check_close(), 1 );
	zone_set_trigger_volume_enable("begin_zone_set:zone_set_hall_battery", TRUE);
	// save game
	checkpoint_no_timeout( TRUE, "f_citadel_ext_door_trigger" );
	
end



// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// CITADEL_EXT: AI
// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// ----------------------------------------------------------------------------------------------------------------------------------------------------------

// VARIABLES ------------------------------------------------------------------------------------------------------------------------------------------------
static long L_citadel_ext_ai_bridge_garbage_thread_id = 0;
static long L_citadel_ext_ai_front_garbage_thread_id = 0;
static long L_citadel_ext_ai_mid_garbage_thread_id = 0;

// FUNCTIONS ------------------------------------------------------------------------------------------------------------------------------------------------

// === f_citadel_ext_ai_create::: Initialize
script dormant f_citadel_ext_ai_init()
	
	// human and player are allies		
	ai_allegiance( player, human );	
	ai_allegiance( human, player );
	
	// set alliances		
	ai_allegiance( covenant, forerunner );		
	ai_allegiance( forerunner, covenant );

	// set AI lod	
	//ai_lod_full_detail_actors( 30 );

	// init sub modules
	wake( f_citadel_ext_ai_objcon_init );
	//wake( f_citadel_ext_ai_defenses_init );
	
	// setup trigger
	wake( f_citadel_ext_ai_trigger );

end

// === f_citadel_ext_ai_deinit::: DeInitialize
script dormant f_citadel_ext_ai_deinit()

	// cleanup
	wake( f_citadel_ext_ai_erase );
	
	// deinit functions
	kill_script( f_citadel_ext_ai_init );
	kill_script( f_citadel_ext_ai_trigger );
	
	kill_script( f_citadel_ext_ai_bridge_spawn );
	kill_script( f_citadel_ext_ai_bridge_garbage );

	kill_script( f_citadel_ext_ai_front_spawn );
	kill_script( f_citadel_ext_ai_front_garbage );

	kill_script( f_citadel_ext_ai_mid_spawn );
	kill_script( f_citadel_ext_ai_mid_garbage );
	
	kill_script( f_citadel_ext_ai_rear_low_spawn );
	kill_script( f_citadel_ext_ai_rear_top_spawn );

	// deinit sub modules
	wake( f_citadel_ext_ai_objcon_deinit );
	//wake( f_citadel_ext_ai_defenses_deinit );
	
end

// === f_citadel_ext_ai_trigger::: Trigger
script dormant f_citadel_ext_ai_trigger()

	// for testing purposes check if the objcon has been forced already
	if ( S_citadel_ext_ai_objcon < DEF_CITADEL_EXT_AI_OBJCON_MID_START ) then
	
		sleep_until( S_citadel_ext_ai_objcon >= DEF_CITADEL_EXT_AI_OBJCON_SETUP, 1 );
		wake( f_citadel_ext_ai_bridge_spawn );
	
		sleep_until( S_citadel_ext_ai_objcon >= DEF_CITADEL_EXT_AI_OBJCON_ATTACK, 1 );
		wake( f_citadel_ext_ai_front_spawn );
		
	end

	if ( S_citadel_ext_ai_objcon < DEF_CITADEL_EXT_AI_OBJCON_REAR_TOP_END ) then

		sleep_until( S_citadel_ext_ai_objcon >= DEF_CITADEL_EXT_AI_OBJCON_FRONT_START, 1 );
		wake( f_citadel_ext_ai_mid_spawn );
	
		sleep_until( S_citadel_ext_ai_objcon >= DEF_CITADEL_EXT_AI_OBJCON_MID_START, 1 );
		wake( f_citadel_ext_ai_rear_low_spawn );
	
		sleep_until( S_citadel_ext_ai_objcon >= DEF_CITADEL_EXT_AI_OBJCON_REAR_LOW_ATTACK, 1 );
		wake( f_citadel_ext_ai_rear_top_spawn );

	end

end

script static void f_pawn_counter( ai pawn, short living_count)
	local short  s_pawn_count = 0;
	local short	 s_pawn_limit = 1;

	repeat
	sleep_s(1.5);
		if (ai_living_count(sg_citadel_ext) <= living_count) and (ai_living_count(sg_citadel_ext_rear_top_pawns) <= 2) and (s_pawn_count != s_pawn_limit) then
			ai_place(pawn);
			s_pawn_count = s_pawn_count + 1;
		end
	until(s_pawn_count == s_pawn_limit);

end


// === f_citadel_ext_ai_erase::: Erases all the citadel exterior AI
script dormant f_citadel_ext_ai_erase()
	
	ai_erase( sg_citadel_ext );
	garbage_collect_now();

end

// === f_citadel_ext_ai_bridge_spawn::: Spawns the default bridge ai
script dormant f_citadel_ext_ai_bridge_spawn()
	sleep_until((ai_living_count(sg_valley)) <= 9);
	
	// place ai
	wake(f_citadel_ext_bridge_sniper_spawn);
	ai_place( sg_citadel_ext_bridge_init );
	
	sleep_until(((ai_living_count(sg_citadel_ext_bridge)) <= 10)
								and
								(volume_test_players( tv_citadel_ext_bridge_knight_spawn)));
	ai_place_in_limbo(sq_cit_xt_br_knight);
	
	/*sleep_until(((ai_living_count(sg_citadel_ext_bridge)) <= 9)
								and
								(S_citadel_ext_ai_objcon < DEF_CITADEL_EXT_AI_OBJCON_MID_KNIGHT_START));
	ai_place(sq_cit_xt_br_charge_jackals_re);*/
	
	sleep_until(((ai_living_count(sg_citadel_ext_bridge)) <= 9)
								and
								(S_citadel_ext_ai_objcon < DEF_CITADEL_EXT_AI_OBJCON_MID_KNIGHT_START));
	ai_place(sq_cit_xt_br_re_grunts_1);
	
	sleep_until(((ai_living_count(sg_citadel_ext_bridge)) <= 6)
								and
								(S_citadel_ext_ai_objcon < DEF_CITADEL_EXT_AI_OBJCON_MID_KNIGHT_START));
	ai_place(sq_cit_xt_br_re_grunts_2);
	

	// setup garbage collection
	wake( f_citadel_ext_ai_bridge_garbage );

end

script dormant f_citadel_ext_bridge_sniper_spawn()
	sleep_until(
		( S_citadel_ext_ai_objcon < DEF_CITADEL_EXT_AI_OBJCON_ATTACK )
			or
			(ai_living_count(sg_valley_knight) < 1)
			or
			(ai_living_count(sg_valley_infantry_midrear) <= 1)
		, 1 );
	ai_place(sg_citadel_ext_front_snipers);

end

// === f_citadel_ext_ai_bridge_garbage::: Garbage collection for the default bridge ai
script dormant f_citadel_ext_ai_bridge_garbage()
	sleep_until( S_citadel_ext_ai_objcon >= DEF_CITADEL_EXT_AI_OBJCON_FRONT_END, 1 );

	L_citadel_ext_ai_bridge_garbage_thread_id = f_ai_garbage_kill( sg_citadel_ext_bridge, -1, -1, -1, -1, FALSE );

end

// === f_citadel_ext_ai_front_spawn::: Spawns the default front ai
script dormant f_citadel_ext_ai_front_spawn()
	sleep_until((ai_living_count(sg_valley)) <= 18);

	
	// place ai
	//ai_place( sg_citadel_ext_front );

	// setup garbage collection
	wake( f_citadel_ext_ai_front_garbage );

end

// === f_citadel_ext_ai_front_garbage::: Garbage collection for the default front ai
script dormant f_citadel_ext_ai_front_garbage()
	sleep_until( S_citadel_ext_ai_objcon >= DEF_CITADEL_EXT_AI_OBJCON_FRONT_END, 1 );

	//L_citadel_ext_ai_front_garbage_thread_id = f_ai_garbage_kill( sg_citadel_ext_front, -1, -1, -1, -1, FALSE );

end

// === f_citadel_ext_ai_mid_spawn::: Spawns the default mid ai
script dormant f_citadel_ext_ai_mid_spawn()
	
	// place ai
	ai_place( sg_citadel_ext_mid_turrets );
	ai_place(sq_cit_x_up_rear_jackal_s);
	sleep_until((ai_living_count(sg_citadel_ext)) <= 20);
	wake (f_citadel_ext_ai_ranger_spawn);

	// setup garbage collection
	wake( f_citadel_ext_ai_mid_garbage );

end

// === f_citadel_ext_ai_mid_garbage::: Garbage collection for the default mid ai
script dormant f_citadel_ext_ai_mid_garbage()
	sleep_until( S_citadel_ext_ai_objcon >= DEF_CITADEL_EXT_AI_OBJCON_MID_END, 1 );

	L_citadel_ext_ai_mid_garbage_thread_id = f_ai_garbage_kill( sg_citadel_ext_mid, -1, -1, -1, -1, FALSE );

end

// === f_citadel_ext_ai_rear_low_spawn::: Spawns the default low ai
script dormant f_citadel_ext_ai_rear_low_spawn()
	
	// place ai
	sleep_until((ai_living_count(sg_citadel_ext)) <= 14);
	ai_place( sq_cit_x_low_rear_grunt );
	ai_place( sq_cit_x_low_rear_grunt_2 );
	sleep_until(S_citadel_ext_ai_objcon < DEF_CITADEL_EXT_AI_OBJCON_MID_END );
	ai_place(sq_cit_x_low_rear_pawn_1);
	ai_place(sq_cit_x_low_rear_pawn_2);

	sleep_until( S_citadel_ext_ai_objcon >= DEF_CITADEL_EXT_AI_OBJCON_REAR_LOW_PUSH_BACK, 1 );

end

// === f_citadel_ext_ai_rear_top_spawn::: Spawns the default top ai
script dormant f_citadel_ext_ai_rear_top_spawn()
	
	// place ai
	f_ai_garbage_erase(sg_citadel_ext_bridge, 10, 20, -1, -1, TRUE);
	wake (f_citadel_ext_ai_knight_guard_spawn);
	sleep_until((ai_living_count(sg_citadel_ext)) <= 18);
	ai_place( sg_citadel_ext_rear_top_init );
	sleep_until((ai_living_count(sg_citadel_ext)) <= 17);
	ai_place(sq_cit_x_up_rear_pawn_1);
	ai_place(sq_cit_x_up_rear_pawn_2);
	f_pawn_counter(sq_cit_x_up_rear_pawn_1, 19);
	sleep_s(1);
	f_pawn_counter( sq_cit_x_up_rear_pawn_2, 20);

end

script dormant f_citadel_ext_ai_knight_guard_spawn()
	
	sleep_until(volume_test_players( tv_citadel_ext_rear_knight_1_spawn ), 1);
	sleep_until((ai_living_count(sg_citadel_ext)) <= 19);
	ai_place_in_limbo(sq_cit_x_up_rear_knight);
	
end

script dormant f_citadel_ext_ai_ranger_spawn()

	sleep_until(volume_test_players(tv_citadel_ext_rear_ranger_spawn), 1);
	ai_place(sg_citadel_ext_rear_rangers);

end

// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// CITADEL_EXT: AI: OBJCON
// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// ----------------------------------------------------------------------------------------------------------------------------------------------------------

// DEFINES --------------------------------------------------------------------------------------------------------------------------------------------------
global short DEF_CITADEL_EXT_AI_OBJCON_INIT =         											00;
global short DEF_CITADEL_EXT_AI_OBJCON_SETUP =    													01;

global short DEF_CITADEL_EXT_AI_OBJCON_ATTACK = 														10;

global short DEF_CITADEL_EXT_AI_OBJCON_BRIDGE_START = 											10;
global short DEF_CITADEL_EXT_AI_OBJCON_BRIDGE_FRONT = 											11;
global short DEF_CITADEL_EXT_AI_OBJCON_BRIDGE_KAMIKAZE_ORDER = 							12;
global short DEF_CITADEL_EXT_AI_OBJCON_BRIDGE_KAMIKAZE_ATTACK = 						15;
global short DEF_CITADEL_EXT_AI_OBJCON_BRIDGE_JACKAL_PUSH = 								17;
global short DEF_CITADEL_EXT_AI_OBJCON_BRIDGE_END = 												20;

global short DEF_CITADEL_EXT_AI_OBJCON_FRONT_START = 												20;
global short DEF_CITADEL_EXT_AI_OBJCON_FRONT_DEFEND = 											22;
global short DEF_CITADEL_EXT_AI_OBJCON_FRONT_END = 													30;

global short DEF_CITADEL_EXT_AI_OBJCON_MID_START = 													30;
global short DEF_CITADEL_EXT_AI_OBJCON_MID_KNIGHT_START = 									31;
global short DEF_CITADEL_EXT_AI_OBJCON_MID_PAWN_ATTACK = 										35;
global short DEF_CITADEL_EXT_AI_OBJCON_MID_END = 														39;

global short DEF_CITADEL_EXT_AI_OBJCON_REAR_LOW_START = 										40;
global short DEF_CITADEL_EXT_AI_OBJCON_REAR_LOW_ATTACK = 										41;
global short DEF_CITADEL_EXT_AI_OBJCON_REAR_LOW_PUSH = 											42;
global short DEF_CITADEL_EXT_AI_OBJCON_REAR_LOW_PUSH_BACK = 								43;
global short DEF_CITADEL_EXT_AI_OBJCON_REAR_LOW_BACK_ASSAULT = 							45;
global short DEF_CITADEL_EXT_AI_OBJCON_REAR_LOW_BACK_CAPTURE = 							47;
global short DEF_CITADEL_EXT_AI_OBJCON_REAR_LOW_END = 											49;

global short DEF_CITADEL_EXT_AI_OBJCON_REAR_TOP_START = 										50;
global short DEF_CITADEL_EXT_AI_OBJCON_REAR_TOP_RIGHT_PUSH_01 = 						52;
global short DEF_CITADEL_EXT_AI_OBJCON_REAR_TOP_LEFT_PUSH_01 = 							53;
global short DEF_CITADEL_EXT_AI_OBJCON_REAR_TOP_RIGHT_PUSH_02 = 						54;
global short DEF_CITADEL_EXT_AI_OBJCON_REAR_TOP_RIGHT_FINALE = 							57;
global short DEF_CITADEL_EXT_AI_OBJCON_REAR_TOP_LEFT_FINALE = 							58;
global short DEF_CITADEL_EXT_AI_OBJCON_REAR_TOP_FINALE_PUSH = 							59;
global short DEF_CITADEL_EXT_AI_OBJCON_REAR_TOP_END = 											60;

// VARIABLES ------------------------------------------------------------------------------------------------------------------------------------------------

global short S_citadel_ext_ai_objcon = 																			DEF_CITADEL_EXT_AI_OBJCON_INIT;

// FUNCTIONS ------------------------------------------------------------------------------------------------------------------------------------------------

// === f_citadel_ext_ai_objcon_create::: Initialize
script dormant f_citadel_ext_ai_objcon_init()

	// wake the citadel_ext objcon
	wake( f_citadel_ext_ai_objcon_controller );

end

// === f_citadel_ext_ai_objcon_deinit::: DeInitialize
script dormant f_citadel_ext_ai_objcon_deinit()
	
	// kill functions
	kill_script( f_citadel_ext_ai_objcon_init );
	kill_script( f_citadel_ext_ai_objcon_controller );
	
	kill_script( f_citadel_ext_ai_objcon_control_setup );
	
	kill_script( f_citadel_ext_ai_objcon_control_attack );
	
	kill_script( f_citadel_ext_ai_objcon_control_bridge_start );
	kill_script( f_citadel_ext_ai_objcon_control_bridge_front );
	kill_script( f_citadel_ext_ai_objcon_control_bridge_kamikaze_order );
	kill_script( f_citadel_ext_ai_objcon_control_bridge_jackal_push );
	kill_script( f_citadel_ext_ai_objcon_control_bridge_end );
	
	kill_script( f_citadel_ext_ai_objcon_control_front_start );
	kill_script( f_citadel_ext_ai_objcon_control_front_defend );
	kill_script( f_citadel_ext_ai_objcon_control_front_end );
	
	kill_script( f_citadel_ext_ai_objcon_control_mid_start );
	kill_script( f_citadel_ext_ai_objcon_control_mid_knight_start );
	kill_script( f_citadel_ext_ai_objcon_control_mid_pawn_attack );
	kill_script( f_citadel_ext_ai_objcon_control_mid_end );

	kill_script( f_citadel_ext_ai_objcon_control_rear_start );
	kill_script( f_citadel_ext_ai_objcon_control_rear_attack );
	kill_script( f_citadel_ext_ai_objcon_control_rear_push );
	kill_script( f_citadel_ext_ai_objcon_control_rear_push_back );
	kill_script( f_citadel_ext_ai_objcon_control_rear_low_assault );
	kill_script( f_citadel_ext_ai_objcon_control_rear_low_capture );
	kill_script( f_citadel_ext_ai_objcon_control_rear_low_end );
	
	kill_script( f_citadel_ext_ai_objcon_control_rear_top );
	kill_script( f_citadel_ext_ai_objcon_control_rear_push_right_01 );
	kill_script( f_citadel_ext_ai_objcon_control_rear_push_left_01 );
	kill_script( f_citadel_ext_ai_objcon_control_rear_push_right_02 );
	kill_script( f_citadel_ext_ai_objcon_control_rear_finale_right );
	kill_script( f_citadel_ext_ai_objcon_control_rear_finale_left );
	kill_script( f_citadel_ext_ai_objcon_control_rear_end );
	
end

// === f_citadel_ext_ai_objcon_set::: Sets the objcon value and manages any default practices
script static void f_citadel_ext_ai_objcon_set( short s_val )
static short 	s_checkpoint_objcon = 			DEF_CITADEL_EXT_AI_OBJCON_INIT;
static long 	l_checkpoint_timer = 				0;
local short 	s_checkpoint_objcon_temp = 	0;

static long 	l_garbage_timer = 					0;

	
	if( s_val > S_citadel_ext_ai_objcon ) then
		S_citadel_ext_ai_objcon = s_val;
		inspect( s_val );
		
		// checkpoint
		if ( (s_checkpoint_objcon <= s_val) and (l_checkpoint_timer <= game_tick_get()) ) then

			// figure out what next objcon to check at
			s_checkpoint_objcon_temp = ( s_val / 10 );
			s_checkpoint_objcon = ( s_checkpoint_objcon_temp * 10 ) + 10;
			
//			l_checkpoint_timer = game_tick_get() + seconds_to_frames( 60.0 );
//
//			checkpoint_no_timeout( TRUE, "f_citadel_ext_ai_objcon_set" );

		end

		// collect garbage
		/*if ( l_garbage_timer <= game_tick_get() ) then

			l_garbage_timer = game_tick_get() + seconds_to_frames( 30.0 );
			
			garbage_collect_now();

		end*/
		
	end

end

// === f_citadel_ext_ai_objcon_controller::: Loads the individual objcon controllers
script dormant f_citadel_ext_ai_objcon_controller()

	// sets up all the controllers
	// --- SETUP
	wake( f_citadel_ext_ai_objcon_control_setup );
	
	// --- ATTACK
	wake( f_citadel_ext_ai_objcon_control_attack );
	
	// --- BRIDGE
	sleep_until( S_citadel_ext_ai_objcon >= DEF_CITADEL_EXT_AI_OBJCON_SETUP, 1 );
	wake( f_citadel_ext_ai_objcon_control_bridge_start );
	wake( f_citadel_ext_ai_objcon_control_bridge_front );
	wake( f_citadel_ext_ai_objcon_control_bridge_kamikaze_order );
	wake( f_citadel_ext_ai_objcon_control_bridge_jackal_push );
	wake( f_citadel_ext_ai_objcon_control_bridge_end );
	
	// --- FRONT
	sleep_until( S_citadel_ext_ai_objcon >= DEF_CITADEL_EXT_AI_OBJCON_BRIDGE_START, 1 );
	wake( f_citadel_ext_ai_objcon_control_front_start );
	wake( f_citadel_ext_ai_objcon_control_front_defend );
	wake( f_citadel_ext_ai_objcon_control_front_end );
	
	// --- MID
	sleep_until( S_citadel_ext_ai_objcon >= DEF_CITADEL_EXT_AI_OBJCON_FRONT_START, 1 );
	wake( f_citadel_ext_ai_objcon_control_mid_start );
	wake( f_citadel_ext_ai_objcon_control_mid_knight_start );
	wake( f_citadel_ext_ai_objcon_control_mid_pawn_attack );
	wake( f_citadel_ext_ai_objcon_control_mid_end );

	// --- REAR
	sleep_until( S_citadel_ext_ai_objcon >= DEF_CITADEL_EXT_AI_OBJCON_MID_START, 1 );
	wake( f_citadel_ext_ai_objcon_control_rear_start );
	wake( f_citadel_ext_ai_objcon_control_rear_attack );
	wake( f_citadel_ext_ai_objcon_control_rear_push );
	wake( f_citadel_ext_ai_objcon_control_rear_push_back );
	wake( f_citadel_ext_ai_objcon_control_rear_low_assault );
	wake( f_citadel_ext_ai_objcon_control_rear_low_capture );
	wake( f_citadel_ext_ai_objcon_control_rear_low_end );
	
	sleep_until( S_citadel_ext_ai_objcon >= DEF_CITADEL_EXT_AI_OBJCON_REAR_LOW_START, 1 );
	wake( f_citadel_ext_ai_objcon_control_rear_top );
	wake( f_citadel_ext_ai_objcon_control_rear_push_right_01 );
	wake( f_citadel_ext_ai_objcon_control_rear_push_left_01 );
	wake( f_citadel_ext_ai_objcon_control_rear_push_right_02 );
	wake( f_citadel_ext_ai_objcon_control_rear_finale_right );
	wake( f_citadel_ext_ai_objcon_control_rear_finale_left );
	wake( f_citadel_ext_ai_objcon_control_rear_end );

end

// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// CITADEL_EXT: AI: OBJCON: CONTROL: SETUP
// ----------------------------------------------------------------------------------------------------------------------------------------------------------

// FUNCTIONS ------------------------------------------------------------------------------------------------------------------------------------------------

// === f_citadel_ext_ai_objcon_control_setup::: controls an objcon
script dormant f_citadel_ext_ai_objcon_control_setup()

	sleep_until( 
			( S_citadel_ext_ai_objcon >= DEF_CITADEL_EXT_AI_OBJCON_SETUP )
			or
			volume_test_players( tv_citadel_ext_objcon_01 )
		, 1 );
	f_citadel_ext_ai_objcon_set( DEF_CITADEL_EXT_AI_OBJCON_SETUP );

end

// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// CITADEL_EXT: AI: OBJCON: CONTROL: ATTACK
// ----------------------------------------------------------------------------------------------------------------------------------------------------------

// FUNCTIONS ------------------------------------------------------------------------------------------------------------------------------------------------

// === f_citadel_ext_ai_objcon_control_attack::: controls an objcon
script dormant f_citadel_ext_ai_objcon_control_attack()

	sleep_until( 
			( S_citadel_ext_ai_objcon >= DEF_CITADEL_EXT_AI_OBJCON_ATTACK )
			or
			//f_ai_sees_enemy( sg_citadel_ext_front )
			//( f_ai_killed_cnt(sg_citadel_ext_front) >= 1 )
			f_ai_is_partially_defeated(sg_valley, 3 )
			or
			f_valley_ai_knight_defeated()
		, 1 );
	f_citadel_ext_ai_objcon_set( DEF_CITADEL_EXT_AI_OBJCON_ATTACK );
	thread(f_mus_m40_e07_begin());

end

// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// CITADEL_EXT: AI: OBJCON: CONTROL: BRIDGE
// ----------------------------------------------------------------------------------------------------------------------------------------------------------

// FUNCTIONS ------------------------------------------------------------------------------------------------------------------------------------------------

// === f_citadel_ext_ai_objcon_control_bridge_start::: controls an objcon
script dormant f_citadel_ext_ai_objcon_control_bridge_start()

	sleep_until( 
			( S_citadel_ext_ai_objcon >= DEF_CITADEL_EXT_AI_OBJCON_BRIDGE_START )
			or
			volume_test_players( tv_citadel_ext_objcon_10 )
		, 1 );
	f_citadel_ext_ai_objcon_set( DEF_CITADEL_EXT_AI_OBJCON_BRIDGE_START );

end

// === f_citadel_ext_ai_objcon_control_bridge_front::: controls an objcon
script dormant f_citadel_ext_ai_objcon_control_bridge_front()

	sleep_until( 
			( S_citadel_ext_ai_objcon >= DEF_CITADEL_EXT_AI_OBJCON_BRIDGE_FRONT )
			or
			volume_test_players( tv_citadel_ext_objcon_11 )
		, 1 );
	f_citadel_ext_ai_objcon_set( DEF_CITADEL_EXT_AI_OBJCON_BRIDGE_FRONT );

	// delay and then force KAMIKAZE
	//sleep_until( f_ai_sees_enemy(sg_citadel_ext_front), 1 );
	sleep_s( 10.0 );
	f_citadel_ext_ai_objcon_set( DEF_CITADEL_EXT_AI_OBJCON_BRIDGE_KAMIKAZE_ORDER ); 
	
end

// === f_citadel_ext_ai_objcon_control_bridge_kamikaze_order::: controls an objcon
script dormant f_citadel_ext_ai_objcon_control_bridge_kamikaze_order()

	sleep_until( 
			( S_citadel_ext_ai_objcon >= DEF_CITADEL_EXT_AI_OBJCON_BRIDGE_KAMIKAZE_ORDER )
			or
			volume_test_players( tv_citadel_ext_objcon_12 )
			or
			(
				 ((f_ai_killed_cnt(sg_citadel_ext_bridge) >= 2 ))
				and
				volume_test_players_lookat(tv_citadel_ext_bridge_orders_see, 25.0, 5.0)
			)
		, 1 );
	f_citadel_ext_ai_objcon_set( DEF_CITADEL_EXT_AI_OBJCON_BRIDGE_KAMIKAZE_ORDER );

end

// === f_citadel_ext_ai_objcon_control_bridge_jackal_push::: controls an objcon
script dormant f_citadel_ext_ai_objcon_control_bridge_jackal_push()

	sleep_until( 
			( S_citadel_ext_ai_objcon >= DEF_CITADEL_EXT_AI_OBJCON_BRIDGE_JACKAL_PUSH )
			or
			(
				( S_citadel_ext_ai_objcon >= DEF_CITADEL_EXT_AI_OBJCON_BRIDGE_KAMIKAZE_ORDER )
				and
				(
					( ai_body_count(obj_citadel_ext_front.bridge_grunt_kamikaze) >= 3 )
					or
					( ai_living_count(sg_citadel_ext_bridge_grunts) <= 3 )
				)
			)
		, 1 );
	f_citadel_ext_ai_objcon_set( DEF_CITADEL_EXT_AI_OBJCON_BRIDGE_JACKAL_PUSH );

end

// === f_citadel_ext_ai_objcon_control_bridge_end::: controls an objcon
script dormant f_citadel_ext_ai_objcon_control_bridge_end()

	sleep_until( 
			( S_citadel_ext_ai_objcon >= DEF_CITADEL_EXT_AI_OBJCON_BRIDGE_END )
			or
			f_ai_is_partially_defeated( sg_citadel_ext_bridge, 2 )
		, 1 );
	f_citadel_ext_ai_objcon_set( DEF_CITADEL_EXT_AI_OBJCON_BRIDGE_END );

end

// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// CITADEL_EXT: AI: OBJCON: CONTROL: FRONT
// ----------------------------------------------------------------------------------------------------------------------------------------------------------

// FUNCTIONS ------------------------------------------------------------------------------------------------------------------------------------------------

// === f_citadel_ext_ai_objcon_control_front_start::: controls an objcon
script dormant f_citadel_ext_ai_objcon_control_front_start()

	sleep_until( 
			( S_citadel_ext_ai_objcon >= DEF_CITADEL_EXT_AI_OBJCON_FRONT_START )
			or
			volume_test_players( tv_citadel_ext_objcon_20 )
		, 1 );
	f_citadel_ext_ai_objcon_set( DEF_CITADEL_EXT_AI_OBJCON_FRONT_START );

	// setup cover
	//wake( f_citadel_ext_cover_front_setup );

end

// === f_citadel_ext_ai_objcon_control_front_defend::: controls an objcon
script dormant f_citadel_ext_ai_objcon_control_front_defend()

	sleep_until( 
			( S_citadel_ext_ai_objcon >= DEF_CITADEL_EXT_AI_OBJCON_FRONT_DEFEND )
			or
			volume_test_players( tv_citadel_ext_objcon_22 )
		, 1 );
	f_citadel_ext_ai_objcon_set( DEF_CITADEL_EXT_AI_OBJCON_FRONT_DEFEND );

end

// === f_citadel_ext_ai_objcon_control_front_push::: controls an objcon
script dormant f_citadel_ext_ai_objcon_control_front_end()

	sleep_until( 
			( S_citadel_ext_ai_objcon >= DEF_CITADEL_EXT_AI_OBJCON_FRONT_END ));

	f_citadel_ext_ai_objcon_set( DEF_CITADEL_EXT_AI_OBJCON_FRONT_END );

end

// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// CITADEL_EXT: AI: OBJCON: CONTROL: MID
// ----------------------------------------------------------------------------------------------------------------------------------------------------------

// FUNCTIONS ------------------------------------------------------------------------------------------------------------------------------------------------

// === f_citadel_ext_ai_objcon_control_mid_start::: controls an objcon
script dormant f_citadel_ext_ai_objcon_control_mid_start()

	sleep_until( 
			( S_citadel_ext_ai_objcon >= DEF_CITADEL_EXT_AI_OBJCON_MID_START )
			or
			volume_test_players( tv_citadel_ext_objcon_30 )
		, 1 );
	f_citadel_ext_ai_objcon_set( DEF_CITADEL_EXT_AI_OBJCON_MID_START );

	// setup cover
	wake( f_citadel_ext_cover_mid_setup );

end

// === f_citadel_ext_ai_objcon_control_mid_knight_start::: controls an objcon
script dormant f_citadel_ext_ai_objcon_control_mid_knight_start()

	sleep_until( 
			( S_citadel_ext_ai_objcon >= DEF_CITADEL_EXT_AI_OBJCON_MID_KNIGHT_START )
			or
			volume_test_players( tv_citadel_ext_objcon_31 )
			or
			(
				( S_citadel_ext_ai_objcon == DEF_CITADEL_EXT_AI_OBJCON_MID_START )
				/*and
				( ai_living_count(sq_cit_ext_front_knight_01) <= 0 )*/

				and
				volume_test_players_lookat(tv_citadel_ext_mid_orders_see, 25.0, 5.0)
			)
		, 1 );
	
	if ( not volume_test_players(tv_citadel_ext_objcon_31) ) then
		sleep_s( 1.0 );
	end
	
	f_citadel_ext_ai_objcon_set( DEF_CITADEL_EXT_AI_OBJCON_MID_KNIGHT_START );

	// place the knight
	ai_place_in_limbo( sq_cit_ext_mid_knight_01 );

end

// === f_citadel_ext_ai_objcon_control_mid_pawn_attack::: controls an objcon
script dormant f_citadel_ext_ai_objcon_control_mid_pawn_attack()

	sleep_until( 
			( S_citadel_ext_ai_objcon >= DEF_CITADEL_EXT_AI_OBJCON_MID_PAWN_ATTACK )
		, 1 );
	f_citadel_ext_ai_objcon_set( DEF_CITADEL_EXT_AI_OBJCON_MID_PAWN_ATTACK );

	// spawn in the pawns
	if ( ai_living_count(sq_cit_ext_mid_knight_01) > 0 ) then
		ai_place( sg_citadel_ext_mid_pawns );
	end

	//ai_place( sg_citadel_ext_mid_grunts );

end


// === f_citadel_ext_ai_objcon_control_mid_end::: controls an objcon
script dormant f_citadel_ext_ai_objcon_control_mid_end()

	sleep_until( 
			( S_citadel_ext_ai_objcon >= DEF_CITADEL_EXT_AI_OBJCON_MID_END )
			or
			volume_test_players( tv_citadel_ext_objcon_39 )
		, 1 );
	f_citadel_ext_ai_objcon_set( DEF_CITADEL_EXT_AI_OBJCON_MID_END );

	// blip the citatel enterance	
	wake( f_citadel_ext_blip ); 	// XXX need to figure out if this is the best place to trigger this

end

// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// CITADEL_EXT: AI: OBJCON: CONTROL: REAR
// ----------------------------------------------------------------------------------------------------------------------------------------------------------

// VARIABLES ------------------------------------------------------------------------------------------------------------------------------------------------

static long L_citadel_ext_ai_rear_push_timer = 																0;
static short S_citadel_ext_ai_rear_push_living = 															0;

// FUNCTIONS ------------------------------------------------------------------------------------------------------------------------------------------------

// === f_citadel_ext_ai_objcon_control_rear_start::: controls an objcon
script dormant f_citadel_ext_ai_objcon_control_rear_start()

	sleep_until( 
			( S_citadel_ext_ai_objcon >= DEF_CITADEL_EXT_AI_OBJCON_REAR_LOW_START )
			or
			volume_test_players( tv_citadel_ext_objcon_40 )
			or
			(
				( f_ai_killed_cnt(sg_citadel_ext_rear) > 0 )
				and
				f_ai_sees_enemy( sg_citadel_ext_rear )
			)
			/*
			*/
		, 1 );
	f_citadel_ext_ai_objcon_set( DEF_CITADEL_EXT_AI_OBJCON_REAR_LOW_START );

	// setup cover
	wake( f_citadel_ext_cover_rear_setup );

end

// === f_citadel_ext_ai_objcon_control_rear_attack::: controls an objcon
script dormant f_citadel_ext_ai_objcon_control_rear_attack()

	sleep_until( 
			( S_citadel_ext_ai_objcon >= DEF_CITADEL_EXT_AI_OBJCON_REAR_LOW_ATTACK )
			or
			(
				( S_citadel_ext_ai_objcon >= DEF_CITADEL_EXT_AI_OBJCON_REAR_LOW_START )
				and
				f_ai_sees_enemy( sg_citadel_ext_rear )
			)
		, 1 );
	f_citadel_ext_ai_objcon_set( DEF_CITADEL_EXT_AI_OBJCON_REAR_LOW_ATTACK );
	
	// store living count for push
	S_citadel_ext_ai_rear_push_living = ai_living_count( sg_citadel_ext_rear );

	// start push timer
	L_citadel_ext_ai_rear_push_timer = game_tick_get() + seconds_to_frames( real_random_range(2.0, 3.0) );

end

// === f_citadel_ext_ai_objcon_control_rear_push::: controls an objcon
script dormant f_citadel_ext_ai_objcon_control_rear_push()

	sleep_until( 
			( S_citadel_ext_ai_objcon >= DEF_CITADEL_EXT_AI_OBJCON_REAR_LOW_PUSH )
			or
			(
				( S_citadel_ext_ai_rear_push_living > 0 )
				and
				( ai_living_count(sg_citadel_ext_rear) < S_citadel_ext_ai_rear_push_living )
			)			
			or
			(
				( L_citadel_ext_ai_rear_push_timer != 0 )
				and
				( L_citadel_ext_ai_rear_push_timer <= game_tick_get() )
			)			
		, 1 );
	f_citadel_ext_ai_objcon_set( DEF_CITADEL_EXT_AI_OBJCON_REAR_LOW_PUSH );

end

// === f_citadel_ext_ai_objcon_control_rear_push_back::: controls an objcon
script dormant f_citadel_ext_ai_objcon_control_rear_push_back()

	sleep_until( 
			( S_citadel_ext_ai_objcon >= DEF_CITADEL_EXT_AI_OBJCON_REAR_LOW_PUSH_BACK )
			or
			volume_test_players( tv_citadel_ext_objcon_43 )
		, 1 );
	f_citadel_ext_ai_objcon_set( DEF_CITADEL_EXT_AI_OBJCON_REAR_LOW_PUSH_BACK );

end

// === f_citadel_ext_ai_objcon_control_rear_low_assault::: controls an objcon
script dormant f_citadel_ext_ai_objcon_control_rear_low_assault()

	sleep_until( 
			( S_citadel_ext_ai_objcon >= DEF_CITADEL_EXT_AI_OBJCON_REAR_LOW_BACK_ASSAULT )
			or
			volume_test_players( tv_citadel_ext_objcon_45_a )
			or
			volume_test_players( tv_citadel_ext_objcon_45_b )
			or
			volume_test_players( tv_citadel_ext_objcon_45_c )
		, 1 );
	f_citadel_ext_ai_objcon_set( DEF_CITADEL_EXT_AI_OBJCON_REAR_LOW_BACK_ASSAULT );

end

// === f_citadel_ext_ai_objcon_control_rear_low_capture::: controls an objcon
script dormant f_citadel_ext_ai_objcon_control_rear_low_capture()

	sleep_until( 
			( S_citadel_ext_ai_objcon >= DEF_CITADEL_EXT_AI_OBJCON_REAR_LOW_BACK_CAPTURE )
			or
			volume_test_players( tv_citadel_ext_objcon_47 )
		, 1 );
	f_citadel_ext_ai_objcon_set( DEF_CITADEL_EXT_AI_OBJCON_REAR_LOW_BACK_CAPTURE );

end

// === f_citadel_ext_ai_objcon_control_rear_low_end::: controls an objcon
script dormant f_citadel_ext_ai_objcon_control_rear_low_end()

	sleep_until( 
			( S_citadel_ext_ai_objcon >= DEF_CITADEL_EXT_AI_OBJCON_REAR_LOW_END )
			or
			volume_test_players( tv_citadel_ext_objcon_49_a )
			or
			volume_test_players( tv_citadel_ext_objcon_49_b )
		, 1 );
	f_citadel_ext_ai_objcon_set( DEF_CITADEL_EXT_AI_OBJCON_REAR_LOW_END );
	
	// increment lives of pawns
	f_citadel_ext_pawn_rear_recycle_lives_inc( -1, 2 );

end

// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// CITADEL_EXT: AI: OBJCON: CONTROL: REAR
// ----------------------------------------------------------------------------------------------------------------------------------------------------------

// === f_citadel_ext_ai_objcon_control_rear_top::: controls an objcon
script dormant f_citadel_ext_ai_objcon_control_rear_top()

	sleep_until( 
			( S_citadel_ext_ai_objcon >= DEF_CITADEL_EXT_AI_OBJCON_REAR_TOP_START )
			or
			volume_test_players( tv_citadel_ext_objcon_50 )
		, 1 );
	f_citadel_ext_ai_objcon_set( DEF_CITADEL_EXT_AI_OBJCON_REAR_TOP_START );
	
	// increment lives of pawns
	f_citadel_ext_pawn_rear_recycle_lives_inc( -1, 1 );

end

// === f_citadel_ext_ai_objcon_control_rear_push_right_01::: controls an objcon
script dormant f_citadel_ext_ai_objcon_control_rear_push_right_01()

	sleep_until( 
			( S_citadel_ext_ai_objcon >= DEF_CITADEL_EXT_AI_OBJCON_REAR_TOP_RIGHT_PUSH_01 )
			or
			volume_test_players( tv_citadel_ext_objcon_52 )
		, 1 );
	f_citadel_ext_ai_objcon_set( DEF_CITADEL_EXT_AI_OBJCON_REAR_TOP_RIGHT_PUSH_01 );
	
	// increment lives of pawns
	f_citadel_ext_pawn_rear_recycle_lives_inc( -1, 1 );

end

// === f_citadel_ext_ai_objcon_control_rear_finale::: controls an objcon
script dormant f_citadel_ext_ai_objcon_control_rear_push_left_01()

	sleep_until( 
			( S_citadel_ext_ai_objcon >= DEF_CITADEL_EXT_AI_OBJCON_REAR_TOP_LEFT_PUSH_01 )
			or
			volume_test_players( tv_citadel_ext_objcon_53 )
		, 1 );
	f_citadel_ext_ai_objcon_set( DEF_CITADEL_EXT_AI_OBJCON_REAR_TOP_LEFT_PUSH_01 );
	
	// increment lives of pawns
	f_citadel_ext_pawn_rear_recycle_lives_inc( -1, 1 );

end

// === f_citadel_ext_ai_objcon_control_rear_push_right_02::: controls an objcon
script dormant f_citadel_ext_ai_objcon_control_rear_push_right_02()

	sleep_until( 
			( S_citadel_ext_ai_objcon >= DEF_CITADEL_EXT_AI_OBJCON_REAR_TOP_RIGHT_PUSH_02 )
			or
			volume_test_players( tv_citadel_ext_objcon_54 )
		, 1 );
	f_citadel_ext_ai_objcon_set( DEF_CITADEL_EXT_AI_OBJCON_REAR_TOP_RIGHT_PUSH_02 );
	
	// increment lives of pawns
	f_citadel_ext_pawn_rear_recycle_lives_inc( -1, 1 );

end

// === f_citadel_ext_ai_objcon_control_rear_finale_right::: controls an objcon
script dormant f_citadel_ext_ai_objcon_control_rear_finale_right()

	sleep_until( 
			( S_citadel_ext_ai_objcon >= DEF_CITADEL_EXT_AI_OBJCON_REAR_TOP_RIGHT_FINALE )
			or
			volume_test_players( tv_citadel_ext_objcon_57 )
		, 1 );
	f_citadel_ext_ai_objcon_set( DEF_CITADEL_EXT_AI_OBJCON_REAR_TOP_RIGHT_FINALE );
	
	// increment lives of pawns
	f_citadel_ext_pawn_rear_recycle_lives_inc( -1, 1 );

end

// === f_citadel_ext_ai_objcon_control_rear_finale_left::: controls an objcon
script dormant f_citadel_ext_ai_objcon_control_rear_finale_left()

	sleep_until( 
			( S_citadel_ext_ai_objcon >= DEF_CITADEL_EXT_AI_OBJCON_REAR_TOP_LEFT_FINALE )
			or
			volume_test_players( tv_citadel_ext_objcon_58 )
		, 1 );
	f_citadel_ext_ai_objcon_set( DEF_CITADEL_EXT_AI_OBJCON_REAR_TOP_LEFT_FINALE );
	
	// increment lives of pawns
	f_citadel_ext_pawn_rear_recycle_lives_inc( -1, 1 );

end

// === f_citadel_ext_ai_objcon_control_rear_finale_push::: controls an objcon
script dormant f_citadel_ext_ai_objcon_control_rear_finale_push()

	sleep_until( 
			( S_citadel_ext_ai_objcon >= DEF_CITADEL_EXT_AI_OBJCON_REAR_TOP_FINALE_PUSH )
			or
			volume_test_players( tv_citadel_ext_objcon_59_a )
			or
			volume_test_players( tv_citadel_ext_objcon_59_b )
		, 1 );
	f_citadel_ext_ai_objcon_set( DEF_CITADEL_EXT_AI_OBJCON_REAR_TOP_FINALE_PUSH );

end

// === f_citadel_ext_ai_objcon_control_rear_end::: controls an objcon
script dormant f_citadel_ext_ai_objcon_control_rear_end()

	sleep_until( 
			( S_citadel_ext_ai_objcon >= DEF_CITADEL_EXT_AI_OBJCON_REAR_TOP_END )
			or
			volume_test_players( tv_citadel_ext_objcon_60 )
		, 1 );
	f_citadel_ext_ai_objcon_set( DEF_CITADEL_EXT_AI_OBJCON_REAR_TOP_END );
	thread(f_mus_m40_e07_finish());
	
	// increment lives of pawns
	f_citadel_ext_pawn_rear_recycle_lives_inc( -1, 3 );

end


// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// CITADEL_EXT: AI: GRUNTS
// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// ----------------------------------------------------------------------------------------------------------------------------------------------------------

// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// CITADEL_EXT: AI: GRUNTS: KAMIKAZE
// ----------------------------------------------------------------------------------------------------------------------------------------------------------

// === cs_citadel_ext_grung_bridge_kamikaze::: COMMAND SCRIPT
script command_script cs_citadel_ext_grunt_bridge_kamikaze()

	cs_abort_on_alert( FALSE );
	cs_abort_on_damage( FALSE );
	
	//thread( f_citadel_ext_grung_bridge_kamikaze_trigger(ai_current_actor,real_random_range(12.5,15.0)) );
	
	ai_grunt_kamikaze( ai_current_actor );

end

// === f_citadel_ext_grung_bridge_kamikaze_trigger::: Triggers the kamikaze mode
script static void f_citadel_ext_grung_bridge_kamikaze_trigger( ai ai_grunt, real r_range )
static long l_timer = 0;
static boolean b_triggered = FALSE;

	/*sleep_until( (ai_living_count(ai_grunt) == 0) or b_triggered or (objects_distance_to_object(Players(), ai_grunt) <= 7.5) or ((objects_distance_to_object(Players(), ai_grunt) <= r_range) and objects_can_see_object(Players(), ai_grunt, 15.0)), 1 );
	sleep_until( (ai_living_count(ai_grunt) == 0) or (game_tick_get() >= l_timer) or (objects_distance_to_object(Players(), ai_grunt) <= 7.5), 1 );*/
	
	if ( ai_living_count(ai_grunt) != 0 ) then
	
		/*if ( not b_triggered ) then*/
			b_triggered = TRUE;
			l_timer = game_tick_get() + seconds_to_frames( real_random_range(0.75, 1.0) );
		//end
	
		ai_grunt_kamikaze( ai_grunt );
		
	end

end

// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// CITADEL_EXT: AI: KNIGHT
// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// ----------------------------------------------------------------------------------------------------------------------------------------------------------
	
// VARIABLES ------------------------------------------------------------------------------------------------------------------------------------------------
global object OBJ_citadel_ext_bridge_order =													NONE;

// FUNCTIONS ------------------------------------------------------------------------------------------------------------------------------------------------

// === cs_citadel_ext_front_knight_order_kamikaze::: COMMAND SCRIPT
script command_script cs_citadel_ext_front_knight_order_kamikaze()

	cs_abort_on_alert( FALSE );
	cs_abort_on_damage( FALSE );

	// phase to the point
	cs_phase_to_point( ps_citadel_ext_orders.kamikaze_phase );

	// setup the puppeteer
	thread( f_citadel_ext_front_knight_order_kamikaze(ai_current_actor) );

end

// === f_citadel_ext_front_knight_order_kamikaze::: Handles the knight ordering the Grunt Kamikaze
script static void f_citadel_ext_front_knight_order_kamikaze( object obj_knight )
local long l_pup_id = 0;

	OBJ_citadel_ext_bridge_order = obj_knight;
	
	l_pup_id = pup_play_show( "pup_citadel_ext_bridge_order" );

	sleep_until( not pup_is_playing(l_pup_id), 1 );
	f_citadel_ext_ai_objcon_set( DEF_CITADEL_EXT_AI_OBJCON_BRIDGE_KAMIKAZE_ATTACK );
	
end

// === cs_citadel_ext_mid_knight_place::: COMMAND SCRIPT
script command_script cs_citadel_ext_mid_knight_place()
local long l_pup_id = 0;

	cs_abort_on_alert( FALSE );
	cs_abort_on_damage( FALSE );

	object_hide( ai_current_actor, FALSE );
	cs_phase_in();
	
	l_pup_id = pup_play_show( "pup_citadel_ext_mid_order" );

	sleep_until( not pup_is_playing(l_pup_id), 1 );
	f_citadel_ext_ai_objcon_set( DEF_CITADEL_EXT_AI_OBJCON_MID_PAWN_ATTACK );

end

// === cs_citadel_ext_knight_place_generic::: COMMAND SCRIPT
script command_script cs_citadel_ext_knight_place_generic()
static long l_timer = 0;

	cs_abort_on_alert( FALSE );
	cs_abort_on_damage( FALSE );

	// randomly delay to just give variety
	sleep_until( l_timer <= game_tick_get(), 1 );
	l_timer = game_tick_get() + seconds_to_frames( real_random_range(0.25, 0.50) );
	
	// unhide and phase in
	object_hide( ai_current_actor, FALSE );
	cs_phase_in();

end

// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// CITADEL_EXT: AI: SNIPERS
// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// ----------------------------------------------------------------------------------------------------------------------------------------------------------

// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// CITADEL_EXT: AI: SNIPERS: FRONT
// ----------------------------------------------------------------------------------------------------------------------------------------------------------

// VARIABLES ------------------------------------------------------------------------------------------------------------------------------------------------
global short S_citadel_ext_ai_snipers_front_closed =													0;

// FUNCTIONS ------------------------------------------------------------------------------------------------------------------------------------------------

// === f_citadel_ext_ai_snipers_front_move::: Manages making the front snipers move
script static void f_citadel_ext_ai_snipers_front_move()

	if ( S_citadel_ext_ai_snipers_front_closed == 0 ) then
		S_citadel_ext_ai_snipers_front_closed = -1;
		end

end

// === f_citadel_ext_ai_snipers_front_closed_set::: Sets which gate is closed to the high snipers
script static boolean f_citadel_ext_ai_snipers_front_closed_set( short s_val )
local boolean b_return = FALSE;
	
	if ( S_citadel_ext_ai_snipers_front_closed != s_val ) then
		S_citadel_ext_ai_snipers_front_closed = s_val;
		inspect( s_val );
		b_return = TRUE;
	end

	// return
	b_return;

end

// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// CITADEL_EXT: AI: PAWN
// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// ----------------------------------------------------------------------------------------------------------------------------------------------------------

// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// CITADEL_EXT: AI: PAWN: REAR
// ----------------------------------------------------------------------------------------------------------------------------------------------------------

// VARIABLES ------------------------------------------------------------------------------------------------------------------------------------------------

static long L_citadel_ext_rear_pawn_recycle_thread = 												0;

static boolean B_citadel_ext_rear_pawn_recycle_enabled = 										TRUE;

static short S_citadel_ext_rear_pawn_recycle_units_min = 										7;
static short S_citadel_ext_rear_pawn_recycle_units_max = 										9;

static short S_citadel_ext_rear_pawn_recycle_squad_max = 										3;
static short S_citadel_ext_rear_pawn_recycle_group_max = 										22;

static short S_citadel_ext_rear_pawn_recycle_lives = 												10;
static short S_citadel_ext_rear_pawn_recycle_lives_inc_default = 						5;

static short S_citadel_ext_rear_pawn_recycle_garbage_collect_cnt =					10;

// FUNCTIONS ------------------------------------------------------------------------------------------------------------------------------------------------

// === f_citadel_ext_pawn_rear_recycle::: Manages recycling the pawns to keep them filled in
/*script static void f_citadel_ext_pawn_rear_recycle()
local short s_garbage_cnt = 0;
	dprint( "f_citadel_ext_pawn_rear_recycle" );
	
	// initialize total lives by subtracting the count already spawned
	S_citadel_ext_rear_pawn_recycle_lives = S_citadel_ext_rear_pawn_recycle_lives - ai_spawn_count( sg_citadel_ext_rear_top_pawns );
	
	repeat
	
		// wait for it to be time to recycle
		//	- recycler is enabled
		//	- the current number of pawns is below their min
		//	- the total citadel exterior is below the ai max
		//	- there are free lives
		sleep_until( B_citadel_ext_rear_pawn_recycle_enabled and (S_citadel_ext_rear_pawn_recycle_lives > 0) and (ai_living_count(sg_citadel_ext_rear_top_pawns) <= S_citadel_ext_rear_pawn_recycle_units_min) and (ai_living_count(sg_citadel_ext) < S_citadel_ext_rear_pawn_recycle_group_max), 1 );
		//dprint( "f_citadel_ext_pawn_rear_recycle: START!" );
		
		repeat
			//dprint( "f_citadel_ext_pawn_rear_recycle: UNIT TRY" );

			// try and place a new pawn
			begin_random_count( 1 )
				begin
					if ( ai_living_count(sq_cit_ext_top_pawn_01) < S_citadel_ext_rear_pawn_recycle_squad_max ) then
						//dprint( "f_citadel_ext_pawn_rear_recycle: UNIT SQUAD 01" );
						ai_place( sq_cit_ext_top_pawn_01, 1 );
						S_citadel_ext_rear_pawn_recycle_lives = S_citadel_ext_rear_pawn_recycle_lives - 1;
						s_garbage_cnt = s_garbage_cnt + 1;
					end
				end
				begin
					if ( ai_living_count(sq_cit_ext_top_pawn_02) < S_citadel_ext_rear_pawn_recycle_squad_max ) then
						//dprint( "f_citadel_ext_pawn_rear_recycle: UNIT SQUAD 02" );
						ai_place( sq_cit_ext_top_pawn_02, 1 );
						S_citadel_ext_rear_pawn_recycle_lives = S_citadel_ext_rear_pawn_recycle_lives - 1;
						s_garbage_cnt = s_garbage_cnt + 1;
					end
				end			
				begin
					if ( ai_living_count(sq_cit_ext_top_pawn_03) < S_citadel_ext_rear_pawn_recycle_squad_max ) then
						//dprint( "f_citadel_ext_pawn_rear_recycle: UNIT SQUAD 03" );
						ai_place( sq_cit_ext_top_pawn_03, 1 );
						S_citadel_ext_rear_pawn_recycle_lives = S_citadel_ext_rear_pawn_recycle_lives - 1;
						s_garbage_cnt = s_garbage_cnt + 1;
					end
				end	
			end
		
		until ( (S_citadel_ext_rear_pawn_recycle_lives <= 0) or (not B_citadel_ext_rear_pawn_recycle_enabled) or (ai_living_count(sg_citadel_ext_rear_top_pawns) >= S_citadel_ext_rear_pawn_recycle_units_max) or (ai_living_count(sg_citadel_ext) >= S_citadel_ext_rear_pawn_recycle_group_max), 1 );

		// check garbage collect	
		if ( s_garbage_cnt >= S_citadel_ext_rear_pawn_recycle_garbage_collect_cnt ) then
			dprint( "f_citadel_ext_pawn_rear_recycle: GARBAGE!!!" );
			s_garbage_cnt = 0;
			garbage_collect_now();
		end

		//dprint( "f_citadel_ext_pawn_rear_recycle: END!" );

	until( FALSE, 1 );
	
end*/

// === f_citadel_ext_pawn_rear_recycle::: Increments the number of lives the rear pawns have
script static void f_citadel_ext_pawn_rear_recycle_lives_inc( short s_cnt, short s_mod )

	// defaults
	if ( s_cnt < 0 ) then
		s_cnt = S_citadel_ext_rear_pawn_recycle_lives_inc_default;
	end
	
	S_citadel_ext_rear_pawn_recycle_lives = S_citadel_ext_rear_pawn_recycle_lives + ( s_cnt * s_mod );

	inspect( S_citadel_ext_rear_pawn_recycle_lives );

end

// === cs_citadel_ext_pawn_rear_place::: COMMAND SCRIPT
//script command_script cs_citadel_ext_pawn_rear_place()

	/*if ( L_citadel_ext_rear_pawn_recycle_thread == 0 ) then
		L_citadel_ext_rear_pawn_recycle_thread = thread( f_citadel_ext_pawn_rear_recycle() );
	end*/

//end

/*
// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// CITADEL_EXT: AI: DEFENSES
// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// ----------------------------------------------------------------------------------------------------------------------------------------------------------

// VARIABLES ------------------------------------------------------------------------------------------------------------------------------------------------

static boolean B_citadel_ext_defenses_active = 															FALSE;

// FUNCTIONS ------------------------------------------------------------------------------------------------------------------------------------------------

// === f_citadel_ext_ai_defenses_create::: Initialize
script dormant f_citadel_ext_ai_defenses_init()
	dprint( "f_citadel_ext_ai_defenses_init" );

	// wake the citadel_ext defenses
	//wake( f_citadel_ext_ai_defenses_trigger );

end

// === f_citadel_ext_ai_defenses_deinit::: DeInitialize
script dormant f_citadel_ext_ai_defenses_deinit()
	dprint( "f_citadel_ext_ai_defenses_deinit" );
	
	// kill functions
	kill_script( f_citadel_ext_ai_defenses_init );
	kill_script( f_citadel_ext_ai_defenses_trigger );
	
end

// === f_citadel_ext_ai_defenses_trigger::: Trigger
script dormant f_citadel_ext_ai_defenses_trigger()

	repeat
	
		// wait for the trigger to switch states
		sleep_until( volume_test_players(tv_citadel_ext_defenses) != B_citadel_ext_defenses_active, 1 );
		dprint( "f_citadel_ext_ai_defenses_trigger" );
		
		f_citadel_ext_ai_defenses_active( not B_citadel_ext_defenses_active );
		
	until( FALSE, 1 );
	
end

// === f_citadel_ext_ai_defenses_active::: Sets the defenses active/deactive
script static void f_citadel_ext_ai_defenses_active( boolean b_active )
static long l_target_tread = 0;
static long l_deactivate_thread = 0;
	dprint( "f_citadel_ext_ai_defenses_active" );
	
	if ( b_active != B_citadel_ext_defenses_active ) then
		B_citadel_ext_defenses_active = b_active;
		
		if ( b_active ) then
			
			// kill deactivation thread
			kill_thread( l_deactivate_thread );
		
			if ( ai_living_count(sq_citadel_ext_defenses_01) <= 0 ) then
				dprint( "f_citadel_ext_ai_defenses_active: SPAWN" );
				
				ai_place( sq_citadel_ext_defenses_01 );
				sleep_until( ai_living_count(sq_citadel_ext_defenses_01) > 0, 1 );
				
			end
			
			if ( not isthreadvalid(l_target_tread) ) then
				dprint( "f_citadel_ext_ai_defenses_active: SETUP TARGETING" );
				
				l_target_tread = thread( f_citadel_ext_ai_defenses_targeting() );
				
			end

		else
			dprint( "f_citadel_ext_ai_defenses_active: SHUTDOWN" );
			
			// shut down targeting
			kill_thread( l_target_tread );
			
			// setup the deactivation thread
			l_deactivate_thread = thread( f_citadel_ext_ai_defenses_deactivate() );

		end
		
	end
	
end

// === cs_citadel_ext_defenses_place::: COMMAND SCRIPT
script command_script cs_citadel_ext_defenses_place()
	dprint( "cs_citadel_ext_defenses_place" );

	cs_abort_on_alert( FALSE );
	cs_abort_on_damage( FALSE );
	
	// wait a short time; this seems to fix them not showing up
	sleep_s( 0.125 );

	// activate the turret	
	AutomatedTurretActivate( ai_vehicle_get(ai_current_actor) );

end

// === f_citadel_ext_ai_defenses_targeting::: Paints player targets for the turrets
script static void f_citadel_ext_ai_defenses_targeting()
	dprint( "f_citadel_ext_ai_defenses_targeting" );


	// Iniitialize targeting
	cs_shoot( sq_citadel_ext_defenses_01, FALSE, Player0() );
	cs_shoot( sq_citadel_ext_defenses_01, FALSE, Player1() );
	cs_shoot( sq_citadel_ext_defenses_01, FALSE, Player2() );
	cs_shoot( sq_citadel_ext_defenses_01, FALSE, Player3() );

	// mark players as targets for turrets
	repeat
	
		cs_shoot( sq_citadel_ext_defenses_01, volume_test_object(tv_citadel_ext_defenses,Player0()), Player0() );
		cs_shoot( sq_citadel_ext_defenses_01, volume_test_object(tv_citadel_ext_defenses,Player1()), Player1() );
		cs_shoot( sq_citadel_ext_defenses_01, volume_test_object(tv_citadel_ext_defenses,Player2()), Player2() );
		cs_shoot( sq_citadel_ext_defenses_01, volume_test_object(tv_citadel_ext_defenses,Player3()), Player3() );
		
	until( ai_living_count(sq_citadel_ext_defenses_01) <= 0, 1 );

end

// === f_citadel_ext_ai_defenses_deactivate::: Disables the turrets
script static void f_citadel_ext_ai_defenses_deactivate()
	dprint( "f_citadel_ext_ai_defenses_deactivate" );

	// wait a little bit of time
	sleep_s( 1.5 );

	// erase the squad
	ai_erase( sq_citadel_ext_defenses_01 );

end*/

// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// CITADEL_EXT: SUPPLIES
// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// ----------------------------------------------------------------------------------------------------------------------------------------------------------

// FUNCTIONS ------------------------------------------------------------------------------------------------------------------------------------------------

// === f_citadel_ext_supplies_create::: Initialize
script dormant f_citadel_ext_supplies_init()
	// supplies
	wake( f_citadel_ext_supplies_create );
	
end

// === f_citadel_ext_supplies_deinit::: DeInitialize
script dormant f_citadel_ext_supplies_deinit()

	// cleanup
	wake( f_citadel_ext_supplies_destroy );
	
	// deinit functions
	kill_script( f_citadel_ext_supplies_init );
	kill_script( f_citadel_ext_supplies_create );
	
end

// === f_citadel_ext_supplies_create::: Creates the supplies/props in the area
script dormant f_citadel_ext_supplies_create()

	object_create_folder( cr_citadel_ext );
	//object_create_folder( scn_citadel_ext );
	object_create_folder( wp_citadel_ext );
	object_create_folder( eq_citadel_ext );

end

// === f_citadel_ext_supplies_destroy::: Destroys the supplies/props in the area
script dormant f_citadel_ext_supplies_destroy()
	
	object_destroy_folder( cr_citadel_ext );
	//object_destroy_folder( scn_citadel_ext );

end



// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// CITADEL_EXT: COVER
// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// ----------------------------------------------------------------------------------------------------------------------------------------------------------

// FUNCTIONS ------------------------------------------------------------------------------------------------------------------------------------------------

// === f_citadel_ext_cover_create::: Initialize
//script dormant f_citadel_ext_cover_init()
	
	// ??? Anything
	
//end

// === f_citadel_ext_cover_deinit::: DeInitialize
script dormant f_citadel_ext_cover_deinit()
	
	// kill functions
	//kill_script( f_citadel_ext_cover_front_setup );
	kill_script( f_citadel_ext_cover_mid_setup );
	kill_script( f_citadel_ext_cover_rear_setup );
	
end
// === f_citadel_ext_move_obj_trigger::: Sets up the trigger for the moving objects
script static void f_citadel_ext_move_obj_trigger( object obj_object, short s_objcon_min, short s_objcon_max, real r_distance_min, real r_distance_max, real r_move_t, real r_move_x, real r_move_y, real r_move_z, real r_rotate_t, real r_rotate_y, real r_rotate_p, real r_rotate_r )
	thread( sys_citadel_ext_move_obj_trigger(obj_object, s_objcon_min, s_objcon_max, r_distance_min, r_distance_max, r_move_t, r_move_x, r_move_y, r_move_z, r_rotate_t, r_rotate_y, r_rotate_p, r_rotate_r ) );
end

// === sys_citadel_ext_move_obj_trigger::: Manages the moving objects
script static void sys_citadel_ext_move_obj_trigger( object obj_object, short s_objcon_min, short s_objcon_max, real r_distance_min, real r_distance_max, real r_move_t, real r_move_x, real r_move_y, real r_move_z, real r_rotate_t, real r_rotate_y, real r_rotate_p, real r_rotate_r )
static long l_timer = 0;
	
	// hide the object
	object_hide( obj_object, TRUE );

	sleep_until( (S_citadel_ext_ai_objcon >= s_objcon_min) and (l_timer <= game_tick_get()) and ((S_citadel_ext_ai_objcon > s_objcon_max) or ((objects_distance_to_object(ai_actors(sg_citadel_ext), obj_object) <= r_distance_max) and (objects_distance_to_object(ai_actors(sg_citadel_ext), obj_object) >= r_distance_min) and (objects_distance_to_object(Players(), obj_object) >= r_distance_min))), 1 );
	
	if ( S_citadel_ext_ai_objcon <= s_objcon_max ) then

		// unhide
		object_hide( obj_object, FALSE );
		
		l_timer = game_tick_get() + seconds_to_frames( real_random_range(0.75, 1.25) );

		if ( (r_move_x + r_move_y + r_move_z) != 0.0 ) then
			object_move_by_offset( obj_object, r_move_t, r_move_x, r_move_y, r_move_z );
		end
		if ( (r_rotate_y + r_rotate_p + r_rotate_r) != 0.0 ) then
			object_rotate_by_offset( obj_object, r_rotate_t, r_rotate_t, r_rotate_t, r_rotate_y, r_rotate_p, r_rotate_r );
		end

	end

end

// === f_citadel_ext_cover_front_setup::: Sets up the front cover objects
//script dormant f_citadel_ext_cover_front_setup()

	// setup cover triggers
	//f_citadel_ext_move_obj_trigger( cr_citadel_ext_column_front_01, DEF_CITADEL_EXT_AI_OBJCON_FRONT_DEFEND, DEF_CITADEL_EXT_AI_OBJCON_FRONT_DEFEND, 0.75, 5.75, real_random_range(3.00,3.25), 0.0, 0.0, real_random_range(1.75,2.25), 0.0, 0.0, 0.0, 0.0 );
	//f_citadel_ext_move_obj_trigger( cr_citadel_ext_column_front_02, DEF_CITADEL_EXT_AI_OBJCON_FRONT_DEFEND, DEF_CITADEL_EXT_AI_OBJCON_FRONT_DEFEND, 0.75, 5.75, real_random_range(2.50,2.75), 0.0, 0.0, real_random_range(1.25,1.75), 0.0, 0.0, 0.0, 0.0 );

//end

// === f_citadel_ext_cover_mid_setup::: Sets up the mid cover objects
script dormant f_citadel_ext_cover_mid_setup()
local real r_move_offset = 0;

	// setup cover triggers
	r_move_offset = real_random_range( 1.25, 1.75 );
	//f_citadel_ext_move_obj_trigger( cr_citadel_ext_column_mid_01, DEF_CITADEL_EXT_AI_OBJCON_MID_PAWN_ATTACK, DEF_CITADEL_EXT_AI_OBJCON_MID_END, 0.875, 5.50, real_random_range(2.75,3.00), 0.0, 0.0, r_move_offset, 0.0, 0.0, 0.0, 0.0 );

	r_move_offset = real_random_range( 1.00,1.25 );
	//f_citadel_ext_move_obj_trigger( cr_citadel_ext_column_mid_02, DEF_CITADEL_EXT_AI_OBJCON_MID_PAWN_ATTACK, DEF_CITADEL_EXT_AI_OBJCON_MID_END, 0.875, 3.25, real_random_range(2.25,2.50), 0.0, 0.0, r_move_offset, real_random_range(1.25,1.50), -90, 0.0, 0.0 );
	//f_citadel_ext_move_obj_trigger( cr_citadel_ext_column_mid_03, DEF_CITADEL_EXT_AI_OBJCON_MID_PAWN_ATTACK, DEF_CITADEL_EXT_AI_OBJCON_MID_END, 0.875, 3.25, real_random_range(2.25,2.50), 0.0, 0.0, r_move_offset, real_random_range(1.25,1.50), 90, 0.0, 0.0 );

end

// === f_citadel_ext_cover_rear_setup::: Sets up the rear cover objects
script dormant f_citadel_ext_cover_rear_setup()
local real r_move_offset = 0;

	// setup cover triggers
	r_move_offset = real_random_range( 1.25, 1.50 );
	//f_citadel_ext_move_obj_trigger( cr_citadel_ext_column_rear_01, DEF_CITADEL_EXT_AI_OBJCON_REAR_LOW_ATTACK, DEF_CITADEL_EXT_AI_OBJCON_REAR_LOW_PUSH_BACK, 0.875, 5.50, real_random_range(2.75,3.00), 0.0, 0.0, r_move_offset, 0.0, 0.0, 0.0, 0.0 );
	
	r_move_offset = 0.675;
//f_citadel_ext_move_obj_trigger( cr_citadel_ext_column_rear_02l, DEF_CITADEL_EXT_AI_OBJCON_REAR_LOW_ATTACK, DEF_CITADEL_EXT_AI_OBJCON_REAR_LOW_BACK_ASSAULT, 0.875, 5.25, real_random_range(2.25,2.50), 0.0, 0.0, r_move_offset, 0.0, 0.0, 0.0, 0.0 );
	//f_citadel_ext_move_obj_trigger( cr_citadel_ext_column_rear_02r, DEF_CITADEL_EXT_AI_OBJCON_REAR_LOW_ATTACK, DEF_CITADEL_EXT_AI_OBJCON_REAR_LOW_BACK_ASSAULT, 0.875, 5.25, real_random_range(2.25,2.50), 0.0, 0.0, r_move_offset, 0.0, 0.0, 0.0, 0.0 );
	
	r_move_offset = real_random_range( 0.5, 0.675 );
	//f_citadel_ext_move_obj_trigger( cr_citadel_ext_column_rear_03l, DEF_CITADEL_EXT_AI_OBJCON_REAR_LOW_BACK_ASSAULT, DEF_CITADEL_EXT_AI_OBJCON_REAR_LOW_END, 0.875, 5.25, real_random_range(2.25,2.50), 0.0, 0.0, r_move_offset, 0.0, 0.0, 0.0, 0.0 );
	//f_citadel_ext_move_obj_trigger( cr_citadel_ext_column_rear_03r, DEF_CITADEL_EXT_AI_OBJCON_REAR_LOW_BACK_ASSAULT, DEF_CITADEL_EXT_AI_OBJCON_REAR_LOW_END, 0.875, 5.25, real_random_range(2.25,2.50), 0.0, 0.0, r_move_offset, 0.0, 0.0, 0.0, 0.0 );
	
	r_move_offset = real_random_range( 0.675, 1.25 );
	//f_citadel_ext_move_obj_trigger( cr_citadel_ext_column_rear_04l, DEF_CITADEL_EXT_AI_OBJCON_REAR_LOW_ATTACK, DEF_CITADEL_EXT_AI_OBJCON_REAR_LOW_BACK_ASSAULT, 0.875, 5.25, real_random_range(2.75,3.00), 0.0, 0.0, r_move_offset, 0.0, 0.0, 0.0, 0.0 );
	//f_citadel_ext_move_obj_trigger( cr_citadel_ext_column_rear_04r, DEF_CITADEL_EXT_AI_OBJCON_REAR_LOW_ATTACK, DEF_CITADEL_EXT_AI_OBJCON_REAR_LOW_BACK_ASSAULT, 0.875, 5.25, real_random_range(2.75,3.00), 0.0, 0.0, r_move_offset, 0.0, 0.0, 0.0, 0.0 );
	
	r_move_offset = real_random_range( 0.675, 1.25 );
	//f_citadel_ext_move_obj_trigger( cr_citadel_ext_column_rear_05l, DEF_CITADEL_EXT_AI_OBJCON_REAR_LOW_ATTACK, DEF_CITADEL_EXT_AI_OBJCON_REAR_LOW_BACK_ASSAULT, 0.875, 4.50, real_random_range(2.75,3.00), 0.0, 0.0, r_move_offset, 0.0, 0.0, 0.0, 0.0 );
	//f_citadel_ext_move_obj_trigger( cr_citadel_ext_column_rear_05r, DEF_CITADEL_EXT_AI_OBJCON_REAR_LOW_ATTACK, DEF_CITADEL_EXT_AI_OBJCON_REAR_LOW_BACK_ASSAULT, 0.875, 4.50, real_random_range(2.75,3.00), 0.0, 0.0, r_move_offset, 0.0, 0.0, 0.0, 0.0 );
	
	r_move_offset = real_random_range( 0.675, 0.75 );
	//f_citadel_ext_move_obj_trigger( cr_citadel_ext_column_rear_06, DEF_CITADEL_EXT_AI_OBJCON_REAR_LOW_PUSH, DEF_CITADEL_EXT_AI_OBJCON_REAR_TOP_START, 0.875, 4.50, real_random_range(2.75,3.00), 0.0, 0.0, r_move_offset, 0.0, 0.0, 0.0, 0.0 );
	
	/*
	r_move_offset = real_random_range( r_move_offset + real_random_range(0.25, 0.375), 1.25 );
	f_citadel_ext_move_obj_trigger( cr_citadel_ext_column_rear_07, DEF_CITADEL_EXT_AI_OBJCON_REAR_LOW_ATTACK, DEF_CITADEL_EXT_AI_OBJCON_REAR_FINALE, 0.75, 6.50, real_random_range(2.75,3.00), 0.0, 0.0, r_move_offset, 0.0, 0.0, 0.0, 0.0 );
	*/

end


// XXX OLD REORGANIZE VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV


/*

// =================================================================================================
// =================================================================================================
// CITADEL EXTERIOR
// =================================================================================================
// =================================================================================================

global boolean b_val_mid_bridge = FALSE;
global boolean b_citadel_jak_backup = FALSE;
global boolean b_cit_door_knight_show = TRUE;
global boolean b_cit_vanboss_show = TRUE;
global boolean b_cit_grunt_advance = FALSE;
global boolean b_move_cit_sniper_forward = FALSE;

script dormant f_citadel_ext_main()

	// need to be somewhat part of the valley set
//		wake( f_spawn_rearsnipers );



	sleep_until( volume_test_players ( tv_citadel_ext_objcon_10 ), 1 );

		data_mine_set_mission_segment ("m40_citadel_ext" );
		garbage_collect_now();
		wake( f_save_citadel_ext_start );
		//wake( f_citadel_savevol );
		//wake( f_citadel_entrance_doors );
		b_citadel_started = TRUE;
		ai_allegiance (covenant, forerunner );	
		ai_allegiance (forerunner, covenant );
		
		sleep(1 );
		dprint("spawn citadel entrance ai" );
		
	
		//ai_erase(gr_snipers_valley );
//		ai_erase(sg_val_recycle_early );
//		sleep(3 );
//		wake( f_spawn_citext_first );	
		sleep_s( 1 );
	
		s_objcon_citext = 10;
//		wake( f_citadelentrance_control );
//		wake( f_citadelentrance_battle );
//		wake( f_spawn_low_boss_vanguard );
		
		wake( f_setmidbridge );
		wake( f_set_cit_jack_backup );
		
		//if ( difficulty_legendary() or difficulty_heroic() ) then
			//wake( f_citext_spawnfrontfiller );
		//end
		//wake( f_citext_spawnfrontfiller );
end


script dormant f_spawn_rearsnipers()
	sleep_until( ( volume_test_players ( tv_spawn_val_rear ) ), 1 );
//		ai_place( sq_cov_sniper_cit1 );

		if (difficulty_legendary() or game_is_cooperative() ) then
			ai_place( sq_cov_sniper_cit2 );
		end
		//ai_place( sq_cov_sniper_cit2 );
		//ai_place( sq_valley_sniper_high_02 );
		
		

	sleep_until( volume_test_players(tv_val_knight_base), 1 ); 
		b_move_cit_sniper_forward = TRUE;
end
*/


/*
script dormant f_setmidbridge()

	sleep_until( volume_test_players( tv_val_mid_bridge ) , 1 );
		b_val_mid_bridge = TRUE;
		
end

script command_script cs_citadel_vanguard_boss()
	sleep_s(3 );
	cs_phase_to_point( pts_citext_phase_pts.p11 ) ;
	sleep_rand_s( 6,9 );
	b_cit_vanboss_show = FALSE;
end

script command_script cs_citadel_floor_knight_1()

	cs_phase_to_point( pts_citext_phase_pts.p1 ) ;
	sleep(1 );
end

script command_script cs_citadel_floor_knight_2()

	cs_phase_to_point( pts_citext_phase_pts.p12 ) ;
	sleep(1 );
end


script dormant f_spawn_citext_first()
	//sleep_s(999 );

	ai_place( sq_cov_intro_grunts_2 );
	sleep(10 );
	ai_place( sq_cov_intro_grunts_1 );
	sleep(10 );
	ai_place( sq_cov_intro_grunts_3 );
	ai_place( sq_cov_intro_grunts_4 );
	ai_place( sq_cov_jackals_intro );
	ai_place( sq_cov_plasma_turret );
	sleep_s(3 );
	ai_place( gr_second_jackals );
end
*/

	/*
script command_script cs_cit_deadbishop()
	sleep(4 );

	ai_kill (ai_current_actor );
end


script dormant f_set_cit_jack_backup()

		sleep_until(

			( ai_spawn_count ( gr_intro_jackals ) > 0 and 
			ai_living_count ( gr_intro_jackals ) <= 0  ) or
			
			( ai_spawn_count ( gr_intro_grunts ) > 0 and 
			ai_living_count ( gr_intro_grunts ) <= 2	)
			, 3
		 );
		dprint( "send in backup" );
		b_citadel_jak_backup = TRUE;
end

script dormant f_save_citadel_ext_start()
	dprint("waiting to save for citadel exterior" );
		sleep_until(

			ai_spawn_count ( sg_rear_jackals ) > 0 and ai_living_count ( sg_rear_jackals ) <= 0 and
			ai_spawn_count ( sg_valley_knight ) > 0 and ai_living_count ( sg_valley_knight ) <= 0 and
			ai_spawn_count ( sg_mid_jackals ) > 0 and ai_living_count ( sg_mid_jackals ) <= 0 and
			ai_spawn_count ( sg_valley_sniper_high ) > 0 and ai_living_count ( sg_valley_sniper_high ) <= 0 and
			ai_spawn_count ( sg_valley ) > 0 and ai_living_count ( sg_valley ) <= 3 		
			, 3
		 );
		
		//
		dprint("valley cleared" );
		if s_objcon_citext < 20 then
			game_save_no_timeout( );
		end
		
		
end
	*/
 
/*
script dormant f_citadel_savevol()
	//repeat
	sleep_until( volume_test_players( tv_citext_save_vol ) and ( game_safe_to_save() == TRUE ), 10 );
						
	//until( s_objcon_citext > 60 );
	dprint("game save" );
	game_save( );
end
*/
/*
script dormant f_citadelentrance_control()
//	wake( f_open_citadel_door );
	//wake( f_citadel_objcon_controller );
	dprint("f_citadelentrance_control running" );
	//wake( f_citext_secondwave );
	//wake( f_citext_spawnfrontfiller );
	
	//wake( f_blip_citadel_entrance );
	sleep(10 );
end


script dormant f_citadel_entrance_doors()
	//dprint("DOORS?" );
	object_create(citadel_ent_airlock_01 );
	object_create(citadel_ent_airlock_02 );
	sleep(1 );
end

script dormant f_citadel_entrance_doors_destroy()
	object_destroy(citadel_ent_airlock_01 );
	object_destroy(citadel_ent_airlock_02 );
end
*/







	/*
script dormant f_citadel_objcon_controller()
	
	sleep_until( volume_test_players (tv_citadel_ext_objcon_15) or s_objcon_citext >= 15, 1 );
		if s_objcon_citext <= 15 then
			s_objcon_citext = 15;
			dprint("s_objcon_citext = 15 " );
		end

	sleep_until( volume_test_players (tv_citadel_ext_objcon_20) or s_objcon_citext >= 20, 1 );
		if s_objcon_citext <= 20 then
			s_objcon_citext = 20;
			dprint("s_objcon_citext = 20 " );
		end

	sleep_until( volume_test_players (tv_citadel_ext_objcon_30) or s_objcon_citext >= 30, 1 );
		if s_objcon_citext <= 30 then
			s_objcon_citext = 30;
			dprint("s_objcon_citext = 30 " );
		end
		
	sleep_until( volume_test_players (tv_citadel_ext_objcon_40)  or s_objcon_citext >= 40 , 1 );
		if s_objcon_citext <= 40 then
			s_objcon_citext = 40;
			dprint("s_objcon_citext = 40 " );
		end


	sleep_until( volume_test_players (tv_citadel_ext_objcon_43)  or s_objcon_citext >= 45, 1 );
		if s_objcon_citext <= 45 then
			s_objcon_citext = 45;
			dprint("s_objcon_citext = 45 " );
		end
	

	sleep_until( volume_test_players (tv_citadel_ext_objcon_50) or s_objcon_citext >= 50, 1 );
		if s_objcon_citext <= 50 then
			s_objcon_citext = 50;
			dprint("s_objcon_citext = 50 " );
		end	

	sleep_until( volume_test_players (tv_citadel_ext_objcon_60) or s_objcon_citext >= 60, 1 );
		if s_objcon_citext <= 60 then
			s_objcon_citext = 60;	
			dprint("s_objcon_citext = 60 " );
		end

end
	*/

/*
script dormant f_citext_spawnfrontfiller()
	ai_place( sq_cov_intro_grunts_filler );			
end
*/

/*
script dormant f_citext_secondwave()
	sleep_s(6 );
	ai_place( sq_for_intro_knight_1 );
	ai_place( sq_cov_grunt_door_rear );
	wake( f_save_citadel_exterior_intro );
end
*/
/*

script dormant f_save_citadel_exterior_intro()



	sleep_until(
			ai_spawn_count ( gr_intro_grunts ) > 0 and 
			ai_living_count ( gr_intro_grunts ) <= 0  and
			ai_spawn_count ( gr_intro_knights ) > 0 and 
			ai_living_count ( gr_intro_knights ) <= 0 and
			ai_spawn_count ( gr_intro_jackals ) > 0 and 
			ai_living_count ( gr_intro_jackals ) <= 0  
		 );
		dprint("all intro cit ext dead" );
		game_save_no_timeout( );
end

script dormant f_save_citadel_ext_middle()
	
		sleep_until(

			ai_spawn_count ( gr_cit_floor_knights ) > 0 and 
			ai_living_count ( gr_cit_floor_knights ) <= 0 and
			ai_spawn_count ( gr_cit_floor_pawns ) > 0 and 
			ai_living_count ( gr_cit_floor_pawns ) <= 0 and
//			ai_spawn_count ( sq_cov_plasma_turret ) > 0 and 
			ai_living_count ( sq_cov_plasma_turret ) <= 0 				
			, 2 
		 );

		dprint("citadel floor cleared" );
		game_save( );		
		
		sleep_until(
			ai_spawn_count ( gr_cit_boss_vanguard ) > 0 and 
			ai_living_count ( gr_cit_boss_vanguard ) <= 0			
			, 2
		 );
		
		
		dprint("citadel vanguard cleared" );
		
			game_save_no_timeout( );

		
end
script dormant f_save_citadel_exterior_complete()

	sleep_until(
			ai_spawn_count ( gr_cit_ext_all ) > 0 and 
			ai_living_count ( gr_cit_ext_all ) <= 0
		 );
		dprint("all cit ext dead" );
		game_save_no_timeout( );
end

script dormant f_citadelentrance_battle()
	sleep_until( s_objcon_citext >= 30, 1 );
		//dprint("spawning entrance wave 1" );
		ai_place( sq_for_cit_knight_floor_1 );
		ai_place( sq_for_cit_ent_pawn_floor_1 );
		ai_place( sq_for_cit_ent_pawn_floor_2 );	
	
		sleep(3 );	
		//
		
		
		if ( difficulty_legendary() or game_is_cooperative() ) then
			ai_place( sq_for_cit_knight_floor_2 );		
		end
		
		wake( f_save_citadel_ext_middle );
		
end


script dormant f_spawn_low_boss_vanguard()


	sleep_until( s_objcon_citext >= 30, 1 );

		ai_place( sq_for_cit_knight_boss );
		//ai_place( sq_for_cit_ent_pawn_3 );
		wake( f_spawn_door_peeps );
		ai_place( sq_cov_grunt_vanguard );	
		ai_place( sq_for_cit_vanguard_jaks_1 );	
		if ( difficulty_legendary()  or game_is_cooperative() ) then

			//ai_place( sq_cov_grunt_door_lower );
			ai_place( sq_for_pawn_snipers_1 );	
		end	
	
	
	wake ( f_save_citadel_exterior_complete );
	
end


script dormant f_spawn_door_peeps()
	ai_place( sq_for_cit_knight_door_guard_1 );
	sleep(1 );
	ai_place( sq_for_cit_knight_door_guard_2 );
	
end

script command_script cs_citadel_door_knight_1()
	sleep_rand_s( 1,3 );
	cs_phase_to_point( pts_citext_phase_pts.p9 ) ;
	sleep_rand_s(5,8 );
	b_cit_door_knight_show = FALSE;
end

script command_script cs_citadel_door_knight_2()
	sleep_rand_s( 1, 3 );
	cs_phase_to_point( pts_citext_phase_pts.p10 ) ;
	sleep(1 );
end

script static boolean f_cit_door_knights_should_retreat()

	static boolean knights_should_retreat = FALSE;
	
	if ( ai_spawn_count(sq_for_cit_knight_door_guard_1) > 0 and 
			 ai_spawn_count(sq_for_cit_knight_door_guard_2) > 0 and 
		( unit_get_shield(sq_for_cit_knight_door_guard_1 ) < 0.95 or unit_get_shield(sq_for_cit_knight_door_guard_2) < 0.95 )) then
		dprint("doors knights retreating" );
		knights_should_retreat = TRUE;
	end
	
	knights_should_retreat;

end

script static boolean f_cit_boss_knight_should_retreat()

	static boolean boss_should_retreat = FALSE;
	
	if (  ai_spawn_count(sq_for_cit_knight_boss) > 0 and unit_get_shield(sq_for_cit_knight_boss) < 0.98  ) then
		boss_should_retreat = TRUE;
	end
	
	boss_should_retreat;

end
*/


// --- End m40_invasion_citadel_ext.hsc ---

// --- Begin m40_invasion_citadel_int.hsc ---
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343
//
// 	Mission: 					m40_invasion_mission_cf
//	Insertion Points:	start 	- Beginning
//	ifo		- fodder
//	ija		- jackal alley
//	ici		- citidel interior
//	iic		- citidel interior
//	ipo		- powercave/ battery room
//	ili		- librarian encounter			
//  ior		- ordnance training					
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343

// ==========================================================================================================================================================
// ==========================================================================================================================================================
// ==========================================================================================================================================================
// *** CITADEL_INT ***
// ==========================================================================================================================================================
// ==========================================================================================================================================================
// ==========================================================================================================================================================

// FUNCTIONS ------------------------------------------------------------------------------------------------------------------------------------------------
// === f_citadel_int_init::: Initialize
script dormant f_citadel_int_init()

	
	// setup cleanup
	wake( f_citadel_int_cleanup );
	
	sleep_until( current_zone_set_fully_active() >= DEF_S_ZONESET_VALE_HALL(), 1 );
	
	zone_set_trigger_volume_enable("zone_set:zone_set_hall_battery", FALSE);
	zone_set_trigger_volume_enable ( "begin_zone_set:zone_set_battery", FALSE );
	zone_set_trigger_volume_enable ( "begin_zone_set:zone_set_battery_cavern", FALSE );
	effect_attached_to_camera_stop (environments\solo\m40_invasion\fx\dust\particulates.effect);
	
	// init sub modules
	wake( f_citadel_int_doors_init );
	wake( f_citadel_int_elevator_init );
	wake( f_citadel_int_sentinels_init );
//	wake( f_citadel_int_supplies_init );
//	wake( f_citadel_int_ai_init );
	
	// setup trigger
	wake( f_citadel_int_trigger );
	
end

// === f_citadel_int_deinit::: DeInitialize
script dormant f_citadel_int_deinit()


	// shutdown functions
	sleep_forever( f_citadel_int_init );
	sleep_forever( f_citadel_int_trigger );
	sleep_forever( f_citadel_int_action );

	// deinit sub modules
	wake( f_citadel_int_doors_deinit );
	wake( f_citadel_int_elevator_deinit );
	wake( f_citadel_int_sentinels_deinit );
	//wake( f_citadel_int_supplies_deinit );
	//wake( f_citadel_int_ai_deinit );
	
end

// === f_citadel_int_cleanup::: Cleanup
script dormant f_citadel_int_cleanup()
	sleep_until( FALSE, 1 );	// XXX need proper cleanup condition


	// deinit main module
	wake( f_citadel_int_deinit );
	
end

// === f_citadel_int_trigger::: Trigger
script dormant f_citadel_int_trigger()
	sleep_until( volume_test_players(tv_citadel_interior), 1 );

	
	player_set_profile (librarian_profile, player0); 
	player_set_profile (librarian_profile, player1); 
	player_set_profile (librarian_profile, player2); 
	player_set_profile (librarian_profile, player3); 
	
	wake( f_citadel_int_action );

end

// === f_citadel_int_action::: action
script dormant f_citadel_int_action()


	data_mine_set_mission_segment( "m40_citadel_int" );
	
	// XXX OLD VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

	wake( f_batterysetup );

end


// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// CITADEL_INT: DOORS
// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// ----------------------------------------------------------------------------------------------------------------------------------------------------------

// FUNCTIONS ------------------------------------------------------------------------------------------------------------------------------------------------

// === f_citadel_int_doors_init::: Initialize
script dormant f_citadel_int_doors_init()


	// init sub modules
	if ( S_citadel_int_sentinel_objcon < DEF_CITADEL_INT_SENTINEL_OBJCON_LOBBY_END ) then
		wake( f_citadel_int_door_lobby_01_init );
	end

end

// === f_citadel_int_doors_deinit::: DeInitialize
script dormant f_citadel_int_doors_deinit()


	// deinit sub modules
	wake( f_citadel_int_door_lobby_01_deinit );
	wake( f_citadel_int_door_lobby_02_deinit );
	wake( f_citadel_int_door_lobby_03_deinit );
	wake( f_citadel_int_door_elevator_01_deinit );

	wake( f_citadel_int_door_hall01_02_deinit );
	wake( f_citadel_int_door_hall01_03_deinit );
	
	wake( f_citadel_int_door_hall02_01_deinit );
	
	// deinit functions
	kill_script( f_citadel_int_doors_init );
	
end

// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// CITADEL_INT: DOORS: LOBBY 01
// ----------------------------------------------------------------------------------------------------------------------------------------------------------

// === f_citadel_int_door_lobby_01_init::: Initialize
script dormant f_citadel_int_door_lobby_01_init()
	sleep_until( object_valid(dm_citadel_int_lobby_door_01), 1 );


	dm_citadel_int_lobby_door_01->close_instant();

	// setup trigger
	wake( f_citadel_int_door_lobby_01_trigger );

end

// === f_citadel_int_door_lobby_01_deinit::: DeInitialize
script dormant f_citadel_int_door_lobby_01_deinit()
	dprint( "f_citadel_int_door_lobby_01_deinit" );

	kill_script( f_citadel_int_door_lobby_01_init );
	kill_script( f_citadel_int_door_lobby_01_trigger );

end

// === f_citadel_int_door_lobby_01_trigger::: Trigger
script dormant f_citadel_int_door_lobby_01_trigger()
	sleep_until( object_valid(dm_citadel_int_lobby_door_01), 1 );
	sleep_until(volume_test_players("begin_zone_set:zone_set_hall_battery") == TRUE);
	sleep(1);
	sleep_until(current_zone_set_fully_active() == -1 and not PreparingToSwitchZoneSet(), 1);
	zone_set_trigger_volume_enable("zone_set:zone_set_hall_battery", TRUE);

	// setup door auto open
	dm_citadel_int_lobby_door_01->open_speed( 3.0 );
	thread( dm_citadel_int_lobby_door_01->auto_distance_open(-5, FALSE) );

	
	// wait until the door starts open and force a zone set switch
	sleep_until( not dm_citadel_int_lobby_door_01->check_close(), 1 );
//	f_insertion_zoneload( DEF_S_ZONESET_HALL_BATTERY(), TRUE );
	
	// wait for the door to open
	sleep_until( dm_citadel_int_lobby_door_01->check_open(), 1 );

	// setup door auto close
	//dm_citadel_int_lobby_door_01->auto_trigger_close( tv_citadel_interior, TRUE, FALSE, TRUE );
	//sound_impulse_start ( 'sound\environments\solo\m040\new_m40_tags\amb_m40_machines\amb_doors_a_close', dm_citadel_int_lobby_door_01, 1 );
	//sleep_until( dm_citadel_int_lobby_door_01->check_close(), 1 );

end

// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// CITADEL_INT: DOORS: LOBBY 02
// ----------------------------------------------------------------------------------------------------------------------------------------------------------

// === f_citadel_int_door_lobby_02_init::: Initialize
script dormant f_citadel_int_door_lobby_02_init()
	sleep_until( object_valid(dm_citadel_int_lobby_door_02), 1 );


	dm_citadel_int_lobby_door_02->open_instant();

end

// === f_citadel_int_door_lobby_02_deinit::: DeInitialize
script dormant f_citadel_int_door_lobby_02_deinit()


	kill_script( f_citadel_int_door_lobby_02_init );
	kill_script( f_citadel_int_door_lobby_02_close_sentinel );

end

// === f_citadel_int_door_lobby_02_close_sentinel::: opens the door
script dormant f_citadel_int_door_lobby_02_close_sentinel()
	sleep_until( object_valid(dm_citadel_int_lobby_door_02), 1 );


	dm_citadel_int_lobby_door_02->close_speed( 3.0 );

end

// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// CITADEL_INT: DOORS: LOBBY 03
// ----------------------------------------------------------------------------------------------------------------------------------------------------------

// === f_citadel_int_door_lobby_03_init::: Initialize
script dormant f_citadel_int_door_lobby_03_init()
	sleep_until( object_valid(dm_citadel_int_lobby_door_03), 1 );


	dm_citadel_int_lobby_door_03->close_instant();

end

// === f_citadel_int_door_lobby_03_deinit::: DeInitialize
script dormant f_citadel_int_door_lobby_03_deinit()


	kill_script( f_citadel_int_door_lobby_03_init );
	kill_script( f_citadel_int_door_lobby_03_open_sentinel );

end

// === f_citadel_int_door_lobby_03_open_sentinel::: opens the door
script dormant f_citadel_int_door_lobby_03_open_sentinel()
	sleep_until( object_valid(dm_citadel_int_lobby_door_03), 1 );

	dm_citadel_int_lobby_door_03->open_speed(3.0);
	dm_citadel_int_lobby_door_03->open();
	sleep(1);

end

// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// CITADEL_INT: DOORS: ELEVATOR 01
// ----------------------------------------------------------------------------------------------------------------------------------------------------------

// === f_citadel_int_door_elevator_01_init::: Initialize
script dormant f_citadel_int_door_elevator_01_init()
	sleep_until( object_valid(dm_citadel_int_elev_door_01), 1 );


	sleep( 1 );
	dm_citadel_int_elev_door_01->close_instant();

end

// === f_citadel_int_door_elevator_01_deinit::: DeInitialize
script dormant f_citadel_int_door_elevator_01_deinit()


	kill_script( f_citadel_int_door_elevator_01_init );
	kill_script( f_citadel_int_door_elevator_01_open_sentinel );

end
// === f_citadel_int_door_elevator_01_open_sentinel::: opens the door
script dormant f_citadel_int_door_elevator_01_open_sentinel()

	dm_citadel_int_elev_door_01->open_speed(3.0);
	dm_citadel_int_elev_door_01->open();
	
end

// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// CITADEL_INT: DOORS: HALL01 02
// ----------------------------------------------------------------------------------------------------------------------------------------------------------

// === f_citadel_int_door_hall01_02_init::: Initialize
script dormant f_citadel_int_door_hall01_02_init()
	sleep_until( object_valid(dm_citadel_int_door_hall01_02), 1 );

	dm_citadel_int_door_hall01_02->open_instant();

end

// === f_citadel_int_door_hall01_02_deinit::: DeInitialize
script dormant f_citadel_int_door_hall01_02_deinit()

	kill_script( f_citadel_int_door_hall01_02_init );
	kill_script( f_citadel_int_door_hall01_02_close_sentinel );

end

// === f_citadel_int_door_hall01_02_close_sentinel::: opens the door
script static void f_citadel_int_door_hall01_02_close_sentinel( object obj_sentinel )
	sleep_until( object_valid(dm_citadel_int_door_hall01_02) and ( (obj_sentinel == NONE) or volume_test_players (tv_citadel_int_hall01_door_02_close2 ) or volume_test_object(tv_citadel_int_hall01_door_02_close,obj_sentinel) ), 1 );
	dm_citadel_int_door_hall01_02->close_speed( 1.5 );

end

// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// CITADEL_INT: DOORS: HALL01 03
// ----------------------------------------------------------------------------------------------------------------------------------------------------------

// === f_citadel_int_door_hall01_03_init::: Initialize
script dormant f_citadel_int_door_hall01_03_init()
	sleep_until( object_valid(dm_citadel_int_door_hall01_03), 1 );

	dm_citadel_int_door_hall01_03->close_instant();

end

// === f_citadel_int_door_hall01_03_deinit::: DeInitialize
script dormant f_citadel_int_door_hall01_03_deinit()
	kill_script( f_citadel_int_door_hall01_03_init );
	kill_script( f_citadel_int_door_hall01_03_open_sentinel );

end

// === f_citadel_int_door_hall01_03_open_sentinel::: opens the door
script dormant f_citadel_int_door_hall01_03_open_sentinel()
	sleep_until( object_valid(dm_citadel_int_door_hall01_03), 1 );
	dm_citadel_int_door_hall01_03->open_speed( 3.0 );
	dm_citadel_int_door_hall01_03->open();
	dm_citadel_int_door_hall01_03_em_open_bool = true;
	object_can_take_damage( ai_get_object(sq_citadel_int_sentinels_02) );
end

// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// CITADEL_INT: DOORS: HALL02 01
// ----------------------------------------------------------------------------------------------------------------------------------------------------------

// === f_citadel_int_door_hall02_01_init::: Initialize
script dormant f_citadel_int_door_hall02_01_init()
	sleep_until( object_valid(dm_citadel_int_door_hall02_01), 1 );

	dm_citadel_int_door_hall02_01->close_instant();

end

// === f_citadel_int_door_hall02_01_deinit::: DeInitialize
script dormant f_citadel_int_door_hall02_01_deinit()

	kill_script( f_citadel_int_door_hall02_01_init );
	kill_script( f_citadel_int_door_hall02_01_open_sentinel );

end

// === f_citadel_int_door_hall02_01_open_sentinel::: opens the door
script dormant f_citadel_int_door_hall02_01_open_sentinel()
	sleep_until( object_valid(dm_citadel_int_door_hall02_01), 1 );
	dm_citadel_int_door_hall02_01->open_speed( 3.0 );
	dm_citadel_int_door_hall02_01->open();

	// wait until we start streaming the next zoneset, then make sure the door is shut
	sleep_until (current_zone_set() == DEF_S_ZONESET_BATTERY_CAVERN(), 1);
	device_animate_position (dm_citadel_int_door_hall02_01, 0, 0, 0, 0, FALSE);

	// turn off backtracking trigger volume (this is only there to teleport the player standing in the door anyway)
	zone_set_trigger_volume_enable("zone_set:zone_set_battery", FALSE);
end

// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// CITADEL_INT: ELEVATOR
// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// ----------------------------------------------------------------------------------------------------------------------------------------------------------

// FUNCTIONS ------------------------------------------------------------------------------------------------------------------------------------------------

// === f_citadel_int_elevator_init::: Initialize
script dormant f_citadel_int_elevator_init()

	if ( S_citadel_int_sentinel_objcon < DEF_CITADEL_INT_SENTINEL_OBJCON_LOBBY_END ) then
		// setup trigger
		wake( f_citadel_int_elevator_trigger );
	end

end

// === f_citadel_int_elevator_deinit::: DeInitialize
script dormant f_citadel_int_elevator_deinit()
	
	// deinit functions
	kill_script( f_citadel_int_elevator_init );
	
end

// === f_citadel_int_elevator_trigger::: Trigger
script dormant f_citadel_int_elevator_trigger()
	sleep_until( (S_citadel_int_sentinel_objcon >= DEF_CITADEL_INT_SENTINEL_OBJCON_LOBBY_ACTION) and object_valid(dm_citadel_int_elev_door_01) and dm_citadel_int_elev_door_01->check_open(), 1 );
	
	// deinit functions
	wake( f_citadel_int_elevator_action );
	
end

// === f_citadel_int_elevator_action::: Action
script dormant f_citadel_int_elevator_action()
	
	// blip the elevator
	wake( f_citadel_int_elevator_blip );
	
	thread (teleport_players_in_elevator());
	
	sleep_until( object_valid(dm_citadel_int_elev_door_01), 1 );
	wake( f_citadel_int_elevator_unblip );
	dm_citadel_int_elev_door_01->auto_trigger_close( tv_citadel_int_elevator_shaft, TRUE, TRUE, TRUE );
//	sound_impulse_start ( 'sound\environments\solo\m040\new_m40_tags\amb_m40_machines\amb_doors_a_close', dm_citadel_int_elev_door_01, 1 );
	sleep_until( dm_citadel_int_elev_door_01->check_close(), 1 );
	
	// finish with the lobby sentinel
	f_citadel_int_sentinel_objcon_set( DEF_CITADEL_INT_SENTINEL_OBJCON_LOBBY_END );

	// unblip the elevator
	//wake( f_citadel_int_elevator_unblip );

	// short delay
	sleep_s( 0.5 );

	// XXX not sure exactly what this is; was there before - TWF
	wake( m40_cortana_elevator_confusion );

	// move the elevator
	local long ele_1 = pup_play_show(cit_int_elevator_1);
	// sound_looping_start ( 'sound\environments\solo\m040\new_m40_tags\amb_m40_machines\ambience\amb_m40_lib_elevator_1desert_ele_02_loop', cit_int_elevator_1, 1 );
		
	// wait for it to have stopped

	sleep_until(not pup_is_playing(ele_1),1);
	
	// short delay
	//sleep_s( 0.5 );
	
	// open the bottom DOOR
	sleep_until( object_valid(dm_citadel_int_elev_door_02), 1 );
	dm_citadel_int_elev_door_02->open_speed( 3.0 );
	dm_citadel_int_elev_door_02->open();
	sleep_until( dm_citadel_int_elev_door_02->check_open(), 1 );
	
	// close the door behind everyone
	sleep_until( object_valid(dm_citadel_int_elev_door_02), 1 );
	dm_citadel_int_elev_door_02->auto_trigger_close( tv_int_elevator_shaft_entire, TRUE, FALSE, TRUE );
	sleep_until( dm_citadel_int_elev_door_02->check_close(), 1 );

	// save game
	sleep_until (volume_test_players (tv_battery_setup), 1);
	game_save_no_timeout();
	
end

script static void teleport_players_in_elevator()

	sleep_until (volume_test_players (tv_elevator_mid), 1);
	
	print ("elevator teleport!");

	if
		volume_test_object (tv_int_lobby_full, player0)
	then
			object_teleport (player0, elevator_teleport_01b);
	end
	
	if
		volume_test_object (tv_int_lobby_full, player1)
	then
			object_teleport (player1, elevator_teleport_02b);
	end
	
	if
		volume_test_object (tv_int_lobby_full, player2)
	then
			object_teleport (player2, elevator_teleport_03b);
	end
	
	if
		volume_test_object (tv_int_lobby_full, player3)
	then
			object_teleport (player3, elevator_teleport_04b);
	end
end

// === f_citadel_int_elevator_blip::: Blip
script dormant f_citadel_int_elevator_blip()

	// blip
	f_blip_flag( fg_go_to_elevator, "default" );

end

// === f_citadel_int_elevator_unblip::: Blip
script dormant f_citadel_int_elevator_unblip()
	sleep_until(volume_test_players(tv_citadel_int_elevator_shaft));
	// kill the blip function so it won't run anymore
	kill_script( f_citadel_int_elevator_blip );
	
	// unblip
	f_unblip_flag( fg_go_to_elevator );

end


// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// CITADEL_INT: SENTINELS
// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// ----------------------------------------------------------------------------------------------------------------------------------------------------------

// FUNCTIONS ------------------------------------------------------------------------------------------------------------------------------------------------

// === f_citadel_int_sentinels_init::: Initialize
script dormant f_citadel_int_sentinels_init()

	// init sub modules
	wake( f_citadel_int_sentinel_objcon_init );

end

// === f_citadel_int_sentinels_deinit::: DeInitialize
script dormant f_citadel_int_sentinels_deinit()

	// deinit sub modules
	wake( f_citadel_int_sentinel_objcon_deinit );
	
	// deinit functions
	kill_script( f_citadel_int_sentinels_init );
	
end

// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// CITADEL_INT: SENTINEL: OBJECT
// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// ----------------------------------------------------------------------------------------------------------------------------------------------------------

// VARIABLES ------------------------------------------------------------------------------------------------------------------------------------------------

global object OBJ_citadel_int_sentinel_01	=																	NONE;
global object OBJ_citadel_int_sentinel_02	=																	NONE;
global object OBJ_citadel_int_sentinel_03	=																	NONE;

// FUNCTIONS ------------------------------------------------------------------------------------------------------------------------------------------------

// === f_citadel_int_sentinel_01_set::: Sets
script static void f_citadel_int_sentinel_01_set( object obj_sentinel )
	OBJ_citadel_int_sentinel_01 = obj_sentinel;
end

// === f_citadel_int_sentinel_02_set::: Sets
script static void f_citadel_int_sentinel_02_set( object obj_sentinel )
	OBJ_citadel_int_sentinel_02 = obj_sentinel;
end

// === f_citadel_int_sentinel_03_set::: Sets
script static void f_citadel_int_sentinel_03_set( object obj_sentinel )
	OBJ_citadel_int_sentinel_03 = obj_sentinel;
end

// === cs_citadel_int_sentinal_set_01::: COMMAND SCRIPT; sets the sentinel 01 object
script command_script cs_citadel_int_sentinal_set_01()

	cs_abort_on_alert( FALSE );
	cs_abort_on_damage( FALSE );
	
	f_citadel_int_sentinel_01_set( ai_current_actor );

end

// === cs_citadel_int_sentinal_set_02::: COMMAND SCRIPT; sets the sentinel 02 object
script command_script cs_citadel_int_sentinal_set_02()

	cs_abort_on_alert( FALSE );
	cs_abort_on_damage( FALSE );
	
	f_citadel_int_sentinel_02_set( ai_current_actor );

end

// === cs_citadel_int_sentinal_set_03::: COMMAND SCRIPT; sets the sentinel 03 object
script command_script cs_citadel_int_sentinal_set_03()

	cs_abort_on_alert( FALSE );
	cs_abort_on_damage( FALSE );
	
	f_citadel_int_sentinel_03_set( ai_current_actor );

end

// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// CITADEL_INT: SENTINEL: OBJCON
// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// ----------------------------------------------------------------------------------------------------------------------------------------------------------

// DEFINES --------------------------------------------------------------------------------------------------------------------------------------------------
global short DEF_CITADEL_INT_SENTINEL_OBJCON_INIT =         								00;

global short DEF_CITADEL_INT_SENTINEL_OBJCON_LOBBY_START = 									10;
global short DEF_CITADEL_INT_SENTINEL_OBJCON_LOBBY_ACTION = 								15;
global short DEF_CITADEL_INT_SENTINEL_OBJCON_LOBBY_END = 										19;

global short DEF_CITADEL_INT_SENTINEL_OBJCON_HALL01_START = 								20;
global short DEF_CITADEL_INT_SENTINEL_OBJCON_HALL01_ACTION = 								25;
global short DEF_CITADEL_INT_SENTINEL_OBJCON_HALL01_DOOR_03 = 							27;
global short DEF_CITADEL_INT_SENTINEL_OBJCON_HALL01_END = 									29;

global short DEF_CITADEL_INT_SENTINEL_OBJCON_HALL02_START = 								30;
global short DEF_CITADEL_INT_SENTINEL_OBJCON_HALL02_ACTION = 								35;
global short DEF_CITADEL_INT_SENTINEL_OBJCON_HALL02_END = 									39;

// VARIABLES ------------------------------------------------------------------------------------------------------------------------------------------------

global short S_citadel_int_sentinel_objcon = 																DEF_CITADEL_INT_SENTINEL_OBJCON_INIT;

// FUNCTIONS ------------------------------------------------------------------------------------------------------------------------------------------------

// === f_citadel_int_sentinel_objcon_create::: Initialize
script dormant f_citadel_int_sentinel_objcon_init()

	// wake the valley objcon
	wake( f_citadel_int_sentinel_objcon_controller );

end

// === f_citadel_int_sentinel_objcon_deinit::: DeInitialize
script dormant f_citadel_int_sentinel_objcon_deinit()
	
	// kill functions
	kill_script( f_citadel_int_sentinel_objcon_init );
	kill_script( f_citadel_int_sentinel_objcon_controller );

	kill_script( f_citadel_int_sentinel_objcon_controller_lobby_start );
	kill_script( f_citadel_int_sentinel_objcon_controller_lobby_action );
	kill_script( f_citadel_int_sentinel_objcon_controller_lobby_end );

	kill_script( f_citadel_int_sentinel_objcon_controller_lobby_start );
	kill_script( f_citadel_int_sentinel_objcon_controller_lobby_action );
	kill_script( f_citadel_int_sentinel_objcon_controller_hall01_door_03 );
	kill_script( f_citadel_int_sentinel_objcon_controller_lobby_end );

	kill_script( f_citadel_int_sentinel_objcon_controller_hall02_start );
	kill_script( f_citadel_int_sentinel_objcon_controller_hall02_action );
	kill_script( f_citadel_int_sentinel_objcon_controller_hall02_end );
	
end

// === f_citadel_int_sentinel_objcon_set::: Sets the objcon value and manages any default practices
script static void f_citadel_int_sentinel_objcon_set( short s_val )
	
	if( s_val > S_citadel_int_sentinel_objcon ) then
		S_citadel_int_sentinel_objcon = s_val;
		inspect( s_val );
	end

end

// === f_citadel_int_sentinel_objcon_controller::: Controller
script dormant f_citadel_int_sentinel_objcon_controller()

	// setup any objcon controllers
	if ( S_citadel_int_sentinel_objcon < DEF_CITADEL_INT_SENTINEL_OBJCON_LOBBY_END ) then
		wake( f_citadel_int_sentinel_objcon_controller_lobby_start );
		wake( f_citadel_int_sentinel_objcon_controller_lobby_action );
		wake( f_citadel_int_sentinel_objcon_controller_lobby_end );
	end

	if ( S_citadel_int_sentinel_objcon < DEF_CITADEL_INT_SENTINEL_OBJCON_HALL01_END ) then
		sleep_until( S_citadel_int_sentinel_objcon >= DEF_CITADEL_INT_SENTINEL_OBJCON_LOBBY_END, 1 );
		wake( f_citadel_int_sentinel_objcon_controller_hall01_start );
		wake( f_citadel_int_sentinel_objcon_controller_hall01_action );
		wake( f_citadel_int_sentinel_objcon_controller_hall01_door_03 );
		wake( f_citadel_int_sentinel_objcon_controller_hall01_end );
	end

	if ( S_citadel_int_sentinel_objcon < DEF_CITADEL_INT_SENTINEL_OBJCON_HALL02_END ) then
		sleep_until( S_citadel_int_sentinel_objcon >= DEF_CITADEL_INT_SENTINEL_OBJCON_HALL01_END, 1 );
		wake( f_citadel_int_sentinel_objcon_controller_hall02_start );
		wake( f_citadel_int_sentinel_objcon_controller_hall02_action );
		wake( f_citadel_int_sentinel_objcon_controller_hall02_end );
	end
			
end

// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// CITADEL_INT: SENTINEL: OBJCON: LOBBY
// ----------------------------------------------------------------------------------------------------------------------------------------------------------

// FUNCTIONS ------------------------------------------------------------------------------------------------------------------------------------------------

// === f_citadel_int_sentinel_objcon_controller_lobby_start::: Controller
script dormant f_citadel_int_sentinel_objcon_controller_lobby_start()

	sleep_until( 
			( S_citadel_int_sentinel_objcon >= DEF_CITADEL_INT_SENTINEL_OBJCON_LOBBY_START )
			or
			(
				object_valid( dm_citadel_int_lobby_door_01 )
				and
				( not (dm_citadel_int_lobby_door_01->check_close()) )
			)
		, 1 );
	f_citadel_int_sentinel_objcon_set( DEF_CITADEL_INT_SENTINEL_OBJCON_LOBBY_START );

	// setup the doors
	wake( f_citadel_int_door_lobby_02_init );
	wake( f_citadel_int_door_lobby_03_init );
	wake( f_citadel_int_door_elevator_01_init );

	// do the initial placement
	ai_place( sq_citadel_int_sentinels_01.lobby_00 );
	
	// Respawn new guys if necessary
	repeat

		// wait for the need for another 
		sleep_until( (ai_living_count(sq_citadel_int_sentinels_01) <= 0) or (S_citadel_int_sentinel_objcon >= DEF_CITADEL_INT_SENTINEL_OBJCON_LOBBY_END), 1 );

		if ( S_citadel_int_sentinel_objcon < DEF_CITADEL_INT_SENTINEL_OBJCON_LOBBY_END ) then
			sleep_until(volume_test_players_lookat(tv_sentinel_spawn, 40, 40) == FALSE);
					ai_place( sq_citadel_int_sentinels_01.lobby_02);
			sleep_until( ai_living_count(sq_citadel_int_sentinels_01) > 0, 1 );
		end
	until( S_citadel_int_sentinel_objcon >= DEF_CITADEL_INT_SENTINEL_OBJCON_LOBBY_END, 1 );
			
end

// === f_citadel_int_sentinel_objcon_controller_lobby_action::: Controller
script dormant f_citadel_int_sentinel_objcon_controller_lobby_action()

	sleep_until( 
			( S_citadel_int_sentinel_objcon >= DEF_CITADEL_INT_SENTINEL_OBJCON_LOBBY_ACTION )
			or
			volume_test_players( tv_citadel_int_lobby )
			or
			(
				object_valid( dm_citadel_int_lobby_door_01 )
				and
				( device_get_position(dm_citadel_int_lobby_door_01) >= 0.75 )
			)
		, 1 );
	f_citadel_int_sentinel_objcon_set( DEF_CITADEL_INT_SENTINEL_OBJCON_LOBBY_ACTION );

	// setup narrative
	wake( m40_cortana_confusion_citadel );

end

// === f_citadel_int_sentinel_objcon_controller_lobby_end::: Controller
script dormant f_citadel_int_sentinel_objcon_controller_lobby_end()

	sleep_until( 
			( S_citadel_int_sentinel_objcon >= DEF_CITADEL_INT_SENTINEL_OBJCON_LOBBY_END )
		, 1 );
	f_citadel_int_sentinel_objcon_set( DEF_CITADEL_INT_SENTINEL_OBJCON_LOBBY_END );
	
	// erases the sentinel
	ai_kill( sq_citadel_int_sentinels_01 );
			
end

// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// CITADEL_INT: SENTINEL: OBJCON: HALL01
// ----------------------------------------------------------------------------------------------------------------------------------------------------------

// FUNCTIONS ------------------------------------------------------------------------------------------------------------------------------------------------

// === f_citadel_int_sentinel_objcon_controller_hall01_start::: Controller
script dormant f_citadel_int_sentinel_objcon_controller_hall01_start()

	sleep_until( 
			( S_citadel_int_sentinel_objcon >= DEF_CITADEL_INT_SENTINEL_OBJCON_HALL01_START )
			or
			(
				object_valid( dm_citadel_int_elev_door_02 )
				and
				dm_citadel_int_elev_door_02->check_open()
			)
			or
			(
				object_valid( dm_citadel_int_door_hall01_01 )
				and
				( device_get_position(dm_citadel_int_door_hall01_01) > 0.0 )
			)
		, 1 );

	// start loading DEF_S_ZONESET_BATTERY
	prepare_to_switch_to_zone_set( f_zoneset_get(DEF_S_ZONESET_BATTERY()) );

	f_citadel_int_sentinel_objcon_set( DEF_CITADEL_INT_SENTINEL_OBJCON_HALL01_START );

	sleep_until (not preparingToSwitchZoneSet(), 1); // poll whether async load is complete
	
	f_insertion_zoneload( DEF_S_ZONESET_BATTERY(), TRUE );

	// setup the doors
	wake( f_citadel_int_door_hall01_02_init );
	wake( f_citadel_int_door_hall01_03_init );
	
	// place sentinel 01 (door 02 close)
	ai_place( sq_citadel_int_sentinels_01.hall01_00 );
	ai_place( sq_citadel_int_sentinels_02.hall01_00 );
	sleep(1);
	object_cannot_take_damage( ai_get_object(sq_citadel_int_sentinels_02) );
	// Respawn new guys if necessary
	repeat

		// wait for the need for another 
		sleep_until( ((ai_living_count(sq_citadel_int_sentinels_02) + ai_living_count(sg_citadel_int_sentinels_03)) <= 0) or (S_citadel_int_sentinel_objcon >= DEF_CITADEL_INT_SENTINEL_OBJCON_HALL01_END), 1 );

		if ( S_citadel_int_sentinel_objcon < DEF_CITADEL_INT_SENTINEL_OBJCON_HALL01_END ) then
					
					sleep_until(volume_test_players_lookat(tv_sentinel_spawn_hall_02, 40, 40) == FALSE);
					ai_place( sq_citadel_int_sentinels_02.hall01_01);

			
			sleep_until( ai_living_count(sq_citadel_int_sentinels_02) > 0, 1 );
			
		end
		
	until( S_citadel_int_sentinel_objcon >= DEF_CITADEL_INT_SENTINEL_OBJCON_HALL01_END, 1 );
			
end

// === f_citadel_int_sentinel_objcon_controller_hall01_action::: Controller
script dormant f_citadel_int_sentinel_objcon_controller_hall01_action()

	sleep_until( 
			( S_citadel_int_sentinel_objcon >= DEF_CITADEL_INT_SENTINEL_OBJCON_HALL01_ACTION )
			or
			volume_test_players( tv_citadel_int_hall01 )
			or
			(
				object_valid( dm_citadel_int_door_hall01_01 )
				and
				( device_get_position(dm_citadel_int_door_hall01_01) >= 0.75 )
			)
		, 1 );
	f_citadel_int_sentinel_objcon_set( DEF_CITADEL_INT_SENTINEL_OBJCON_HALL01_ACTION );

end

// === f_citadel_int_sentinel_objcon_controller_hall01_door_03::: Controller
script dormant f_citadel_int_sentinel_objcon_controller_hall01_door_03()

	sleep_until( 
			( S_citadel_int_sentinel_objcon >= DEF_CITADEL_INT_SENTINEL_OBJCON_HALL01_DOOR_03 )
			or
			(
				( S_citadel_int_sentinel_objcon == DEF_CITADEL_INT_SENTINEL_OBJCON_HALL01_ACTION )
				and
				object_valid( dm_citadel_int_door_hall01_02 )
				and
				dm_citadel_int_door_hall01_02->check_close()
				and
				(
					(
						object_valid( dm_citadel_int_door_hall01_03 )
						and
						objects_can_see_object( Players(), dm_citadel_int_door_hall01_03, 15.0 )
					)
					or
					(
						( OBJ_citadel_int_sentinel_02 != NONE )
						and
						(
							objects_can_see_object( Players(), OBJ_citadel_int_sentinel_02, 7.5 )
							or 
							( objects_distance_to_object(Players(), OBJ_citadel_int_sentinel_02) < 7.5 )
						)
					)
					or
					(
						( OBJ_citadel_int_sentinel_03 != NONE )
						and
						(
							objects_can_see_object( Players(), OBJ_citadel_int_sentinel_03, 7.5 )
							or 
							( objects_distance_to_object(Players(), OBJ_citadel_int_sentinel_03) < 7.5 )
						)
					)
				)
			)			
		, 1 );
	f_citadel_int_sentinel_objcon_set( DEF_CITADEL_INT_SENTINEL_OBJCON_HALL01_DOOR_03 );
			
end

// === f_citadel_int_sentinel_objcon_controller_hall01_end::: Controller
script dormant f_citadel_int_sentinel_objcon_controller_hall01_end()

	sleep_until( 
			( S_citadel_int_sentinel_objcon >= DEF_CITADEL_INT_SENTINEL_OBJCON_HALL01_END )
			or
			(
				( S_citadel_int_sentinel_objcon >= DEF_CITADEL_INT_SENTINEL_OBJCON_HALL01_ACTION )
				and
				object_valid( dm_citadel_int_door_hall01_03 )
				and
				dm_citadel_int_door_hall01_03->check_open()
			)
		, 1 );
	f_citadel_int_sentinel_objcon_set( DEF_CITADEL_INT_SENTINEL_OBJCON_HALL01_END );
			
end

// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// CITADEL_INT: SENTINEL: OBJCON: HALL02
// ----------------------------------------------------------------------------------------------------------------------------------------------------------

// FUNCTIONS ------------------------------------------------------------------------------------------------------------------------------------------------

// === f_citadel_int_sentinel_objcon_controller_hall02_start::: Controller
script dormant f_citadel_int_sentinel_objcon_controller_hall02_start()

	sleep_until( 
			( S_citadel_int_sentinel_objcon >= DEF_CITADEL_INT_SENTINEL_OBJCON_HALL02_START )
			or
			(
				( S_citadel_int_sentinel_objcon >= DEF_CITADEL_INT_SENTINEL_OBJCON_HALL01_END )
				and
				object_valid( dm_citadel_int_door_hall01_03 )
				and
				dm_citadel_int_door_hall01_03->check_open()
			)
		, 1 );
	f_citadel_int_sentinel_objcon_set( DEF_CITADEL_INT_SENTINEL_OBJCON_HALL02_START );

	// clear stored sentinel objects
	f_citadel_int_sentinel_01_set( ai_get_object(sg_citadel_int_sentinels_01) );
	f_citadel_int_sentinel_02_set( ai_get_object(sg_citadel_int_sentinels_02) );
	f_citadel_int_sentinel_03_set( ai_get_object(sg_citadel_int_sentinels_03) );

	// setup the doors
	wake( f_citadel_int_door_hall02_01_init );

	// Respawn new guys if necessary
	repeat

		// wait for the need for another 
		sleep_until( (ai_living_count(sg_citadel_int_sentinels_01) <= 0) or (ai_living_count(sg_citadel_int_sentinels_02) <= 0) or (ai_living_count(sg_citadel_int_sentinels_03) <= 0) or (S_citadel_int_sentinel_objcon >= DEF_CITADEL_INT_SENTINEL_OBJCON_HALL02_END), 1 );

		if ( S_citadel_int_sentinel_objcon < DEF_CITADEL_INT_SENTINEL_OBJCON_HALL02_END ) then
		
			if ( ai_living_count(sg_citadel_int_sentinels_01) <= 0 ) then

				begin_random_count( 1 )
					begin
						ai_place( sq_citadel_int_sentinels_01.hall02_01 );
					end
					begin
						ai_place( sq_citadel_int_sentinels_01.hall02_02 );
					end
					begin
						ai_place( sq_citadel_int_sentinels_01.hall02_03 );
					end
					begin
						ai_place( sq_citadel_int_sentinels_01.hall02_04 );
					end
				end
				dprint( "f_citadel_int_sentinel_objcon_controller_hall02_start: SENTINEL 01 REPLACED" );
				f_citadel_int_sentinel_01_set( ai_get_object(sg_citadel_int_sentinels_01) );
			end
	
			if ( ai_living_count(sq_citadel_int_sentinels_02) <= 0 ) then
					sleep_until(volume_test_players_lookat(tv_sentinel_spawn_hall_02, 40, 40) == FALSE);
				begin_random_count( 1 )
					begin
						ai_place( sq_citadel_int_sentinels_02.hall01_01 );
					end
					begin
						ai_place( sq_citadel_int_sentinels_02.hall01_02 );
					end
					begin
						ai_place( sq_citadel_int_sentinels_02.hall01_03 );
					end
					begin
						ai_place( sq_citadel_int_sentinels_02.hall01_04 );
					end
				end
				dprint( "f_citadel_int_sentinel_objcon_controller_hall02_start: SENTINEL 02 REPLACED" );
				f_citadel_int_sentinel_02_set( ai_get_object(sg_citadel_int_sentinels_02) );
			end
	
			if ( ai_living_count(sg_citadel_int_sentinels_03) <= 0 ) then
				begin_random_count( 1 )
					begin
						ai_place( sg_citadel_int_sentinels_03.hall02_01 );
					end
					begin
						ai_place( sg_citadel_int_sentinels_03.hall02_02 );
					end
					begin
						ai_place( sg_citadel_int_sentinels_03.hall02_03 );
					end
					begin
						ai_place( sg_citadel_int_sentinels_03.hall02_04 );
					end
				end
				dprint( "f_citadel_int_sentinel_objcon_controller_hall02_start: SENTINEL 03 REPLACED" );
				f_citadel_int_sentinel_03_set( ai_get_object(sg_citadel_int_sentinels_03) );
			end
			
		end
		
	until( S_citadel_int_sentinel_objcon >= DEF_CITADEL_INT_SENTINEL_OBJCON_HALL02_END, 1 );
	
end

// === f_citadel_int_sentinel_objcon_controller_hall02_action::: Controller
script dormant f_citadel_int_sentinel_objcon_controller_hall02_action()

	sleep_until( 
			( S_citadel_int_sentinel_objcon >= DEF_CITADEL_INT_SENTINEL_OBJCON_HALL02_ACTION )
			or
			(
				volume_test_players( tv_hall02_door_01_sentinel_open )
				and
				(
					(
						object_valid( dm_citadel_int_door_hall02_01 )
						and
						objects_can_see_object( Players(), dm_citadel_int_door_hall02_01, 15.0 )
					)
					or
					(
						( OBJ_citadel_int_sentinel_01 != NONE )
						and
						(
							objects_can_see_object( Players(), OBJ_citadel_int_sentinel_01, 7.5 )
							or 
							( objects_distance_to_object(Players(), OBJ_citadel_int_sentinel_01) < 7.5 )
						)
					)
					or
					(
						( OBJ_citadel_int_sentinel_02 != NONE )
						and
						(
							objects_can_see_object( Players(), OBJ_citadel_int_sentinel_02, 7.5 )
							or 
							( objects_distance_to_object(Players(), OBJ_citadel_int_sentinel_02) < 7.5 )
						)
					)
					or
					(
						( OBJ_citadel_int_sentinel_03 != NONE )
						and
						(
							objects_can_see_object( Players(), OBJ_citadel_int_sentinel_03, 7.5 )
							or 
							( objects_distance_to_object(Players(), OBJ_citadel_int_sentinel_03) < 7.5 )
						)
					)
				)
			)
		, 1 );
	f_citadel_int_sentinel_objcon_set( DEF_CITADEL_INT_SENTINEL_OBJCON_HALL02_ACTION );

end

// === f_citadel_int_sentinel_objcon_controller_hall02_end::: Controller
script dormant f_citadel_int_sentinel_objcon_controller_hall02_end()

	sleep_until( 
			( S_citadel_int_sentinel_objcon >= DEF_CITADEL_INT_SENTINEL_OBJCON_HALL02_END )
			or
			(
				( S_citadel_int_sentinel_objcon >= DEF_CITADEL_INT_SENTINEL_OBJCON_HALL02_ACTION )
				and
				object_valid( dm_citadel_int_door_hall02_01 )
				and
				dm_citadel_int_door_hall02_01->check_open()
			)
		, 1 );
	f_citadel_int_sentinel_objcon_set( DEF_CITADEL_INT_SENTINEL_OBJCON_HALL02_END );
		
	// setup auto door close
	thread( dm_citadel_int_door_hall02_01->auto_trigger_close(tv_hall02_door_01_sentinel_close, TRUE, TRUE, TRUE) );
	sleep_until(dm_citadel_int_door_hall02_01 -> check_close(), 1);
	zone_set_trigger_volume_enable ( "begin_zone_set:zone_set_battery_cavern", TRUE );
	
end

// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// CITADEL_INT: SENTINEL: AI
// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// ----------------------------------------------------------------------------------------------------------------------------------------------------------

// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// CITADEL_INT: SENTINEL: AI: LOBBY
// ----------------------------------------------------------------------------------------------------------------------------------------------------------

// FUNCTIONS ------------------------------------------------------------------------------------------------------------------------------------------------

// === cs_citadel_int_sentinal_lobby_door_02_close::: COMMAND SCRIPT
script command_script cs_citadel_int_sentinal_lobby_door_02_close()
	sleep_until( object_valid(dm_citadel_int_lobby_door_02), 1 );

	thread (close_first_cit_int_door());

	cs_abort_on_alert( FALSE );
	cs_abort_on_damage( FALSE );
	
	// store the sentinel object
	f_citadel_int_sentinel_01_set( ai_current_actor );
	object_cannot_take_damage( ai_get_object(ai_current_actor) );

	repeat
		cs_fly_to_and_face( ps_citadel_int_sentinels.lobby_door_02_move, ps_citadel_int_sentinels.lobby_door_02_face, 0.125 );
	until( objects_distance_to_point(ai_current_actor,ps_citadel_int_sentinels.lobby_door_02_move) <= 0.25, 1 );

	// XXX need scan fx
	// XXX need some animation on the sentinel
	cs_shoot_point(TRUE, pts_sent_shoot.p0);
//	wake( f_citadel_int_door_lobby_02_close_sentinel );

	object_can_take_damage( ai_get_object(ai_current_actor) );

end

script static void close_first_cit_int_door()
		sleep_until (volume_test_players (tv_first_cit_door_close), 1);
		dm_citadel_int_lobby_door_02->close_speed( 3.0 );
end

// === cs_citadel_int_sentinal_lobby_door_03_open::: COMMAND SCRIPT
script command_script cs_citadel_int_sentinal_lobby_door_03_open()
	sleep_until( object_valid(dm_citadel_int_lobby_door_03), 1 );

	cs_abort_on_alert( FALSE );
	cs_abort_on_damage( FALSE );

	f_citadel_int_sentinel_01_set( ai_current_actor );
	object_can_take_damage( ai_get_object(ai_current_actor) );

	repeat
		cs_fly_to_and_face( ps_citadel_int_sentinels.lobby_door_03_move, ps_citadel_int_sentinels.lobby_door_03_face, 0.125 );
	until( objects_distance_to_point(ai_current_actor,ps_citadel_int_sentinels.lobby_door_03_move) <= 1.25, 3 );
	cs_shoot_point(TRUE, pts_sent_shoot.p1);
	// XXX need scan fx
	// XXX need some animation on the sentinel

	wake( f_citadel_int_door_lobby_03_open_sentinel );

end

// === cs_citadel_int_sentinal_lobby_elevator_door_01_open::: COMMAND SCRIPT
script command_script cs_citadel_int_sentinal_lobby_elevator_door_01_open()

	cs_abort_on_alert( FALSE );
	cs_abort_on_damage( FALSE );

	f_citadel_int_sentinel_01_set( ai_current_actor );
	object_can_take_damage( ai_get_object(ai_current_actor) );

	repeat
		cs_fly_to_and_face( ps_citadel_int_sentinels.elevator_door_01_move, ps_citadel_int_sentinels.elevator_door_01_face, 0.125 );
	until( objects_distance_to_point(ai_current_actor,ps_citadel_int_sentinels.elevator_door_01_move) <= 1, 3 );
	cs_shoot_point(TRUE, pts_sent_shoot.p2);
	// XXX need scan fx
	// XXX need some animation on the sentinel

	wake( f_citadel_int_door_elevator_01_open_sentinel );

end

script command_script cs_go_through_door()

	cs_abort_on_alert( FALSE );
	cs_abort_on_damage( FALSE );
	
	cs_fly_to(ps_go_through_door.p0);
	
end

script command_script cs_go_through_door_2()

	cs_abort_on_alert( FALSE );
	cs_abort_on_damage( FALSE );
	
	cs_fly_to(ps_go_through_door.p1);
	cs_fly_to_and_face(ps_go_through_door.p2,ps_go_through_door.p1);
	
end

// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// CITADEL_INT: SENTINEL: AI: HALL01
// ----------------------------------------------------------------------------------------------------------------------------------------------------------

// FUNCTIONS ------------------------------------------------------------------------------------------------------------------------------------------------

// === cs_citadel_int_sentinal_hall01_door_02_close::: COMMAND SCRIPT
script command_script cs_citadel_int_sentinal_hall01_door_02_close()

	cs_abort_on_alert( FALSE );
	cs_abort_on_damage( FALSE );

	// temprorarily cannot take damage
	object_cannot_take_damage( ai_get_object(ai_current_actor) );
	
	// setup door to auto close
	thread( f_citadel_int_door_hall01_02_close_sentinel(ai_get_object(ai_current_actor)) );
	
	// now he can take damage
	object_can_take_damage( ai_get_object(ai_current_actor) );

	// fly to point 01
	repeat
		cs_fly_to( ps_citadel_int_sentinels.hall01_door_02_move_01, 0.125 );
	until( objects_distance_to_point(ai_current_actor,ps_citadel_int_sentinels.hall01_door_02_move_01) <= 1, 3 );

	// fly to point 02
	repeat
		cs_fly_to( ps_citadel_int_sentinels.hall01_door_02_move_02, 0.125 );
	until( objects_distance_to_point(ai_current_actor,ps_citadel_int_sentinels.hall01_door_02_move_02) <= 1, 3 );

	// cleanup
	sleep_until( dm_citadel_int_door_hall01_02->check_close(), 1 );
	
	ai_erase( ai_current_actor );

end

// === cs_citadel_int_sentinal_hall01_door_03_open::: COMMAND SCRIPT
script command_script cs_citadel_int_sentinal_hall01_door_03_open()

	thread (dm_citadel_int_door_hall01_03_em_open());

	cs_abort_on_alert( FALSE );
	cs_abort_on_damage( FALSE );

	repeat
		cs_fly_to_and_face( ps_citadel_int_sentinels.hall01_door_03_move, ps_citadel_int_sentinels.hall01_door_03_face, 0.125 );
	until( objects_distance_to_point(ai_current_actor,ps_citadel_int_sentinels.hall01_door_03_move) <= 1, 3 );
	cs_shoot_point(TRUE, pts_sent_shoot.p0);
	// XXX need scan fx
	// XXX need some animation on the sentinel

	wake( f_citadel_int_door_hall01_03_open_sentinel );

end

script static void dm_citadel_int_door_hall01_03_em_open()
	sleep_s(10);
	if
		dm_citadel_int_door_hall01_03_em_open_bool == FALSE
	then
//		dm_citadel_int_door_hall01_03->open_speed( 3.0 );
		dm_citadel_int_door_hall01_03->open();
	end
end	

// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// CITADEL_INT: SENTINEL: AI: HALL02
// ----------------------------------------------------------------------------------------------------------------------------------------------------------

// === cs_citadel_int_sentinal_hall02_door_01_open::: COMMAND SCRIPT
script command_script cs_citadel_int_sentinal_hall02_door_01_open()

	cs_abort_on_alert( FALSE );
	cs_abort_on_damage( FALSE );
	object_cannot_take_damage( ai_get_object(ai_current_actor) );

	thread (open_bat_door());

	repeat
		cs_fly_to_and_face( ps_citadel_int_sentinels.hall02_door_01_move, ps_citadel_int_sentinels.hall02_door_01_face, 0.125 );
	until( objects_distance_to_point(ai_current_actor,ps_citadel_int_sentinels.hall02_door_01_move) <= 0.25, 1 );
	cs_shoot_point(TRUE, pts_sent_shoot.p4);
	// XXX need scan fx
	// XXX need some animation on the sentinel
	object_can_take_damage( ai_get_object(ai_current_actor) );


end

script static void open_bat_door()
	sleep_until (volume_test_players (tv_battery_door_open), 1);
	wake( f_citadel_int_door_hall02_01_open_sentinel );
end
// --- End m40_invasion_citadel_int.hsc ---

// --- Begin m40_invasion_epic.hsc ---
// =================================================================================================
// =================================================================================================
// EPIC
// =================================================================================================
// =================================================================================================

global boolean b_player_in_vehicle_right = false;
global boolean b_portal_up = false;
global boolean b_player_in_vehicle_left = false;
global boolean epic_tank_ai_timeout = false;
global object g_player_left = NONE;
global object g_player_right = NONE;
global object p_tractor_target_player = NONE;

global short s_asteroid_hit = 0;
//global var the_player  = NONE; 


script dormant epic_obj_control()
	sleep_until (volume_test_players (tv_epic_01)	
	or
	volume_test_players (tv_epic_01a)
	, 1);
	epic_obj_state = 10;
	
	sleep_until (volume_test_players (tv_epic_01)	
	, 1);
	epic_obj_state = 12;	
	
	game_save_no_timeout();	
	
	
	sleep_until (volume_test_players (tv_epic_015)
	or
	volume_test_players (tv_epic_02)
	, 1);
	epic_obj_state = 15;
	
	
	sleep_until (volume_test_players (tv_epic_02)
	or
	volume_test_players (tv_epic_02a)
	, 1);
	epic_obj_state = 20;
	
	
	sleep_until (volume_test_players (tv_epic_03), 1);
	epic_obj_state = 30;
	game_save_no_timeout();
	
	
	sleep_until (volume_test_players (tv_epic_04)
	or
	volume_test_players (tv_epic_04b)
	, 1);
	epic_obj_state = 40;
	game_save_no_timeout();
	
	
	sleep_until (volume_test_players (tv_epic_05), 1);
	epic_obj_state = 50;
	game_save_no_timeout();
	
	
	sleep_until (volume_test_players (tv_epic_06), 1);
	epic_obj_state = 60;
	

	sleep_until (volume_test_players (tv_epic_07), 1);
	epic_obj_state = 70;
	
	
end

script dormant epic_main_script()

	sleep_until (current_zone_set_fully_active() == DEF_S_ZONESET_EPIC());

	effects_perf_armageddon = 1;

	sleep (5);

	zone_set_trigger_volume_enable("begin_zone_set:zone_set_epic_exit", FALSE);

	thread (fx_epic_skybox_lensflares());
	thread(f_mus_m40_e09_begin());
//	object_create_folder(epic_crates);
	object_create(epic_scorpion_01);
	thread (f_check_vehicle_left());
	thread (f_check_vehicle_right());
	wake (epic_vehicle_script);
	wake (epic_infantry_script);
	thread (stacker_dialogue());
	wake (flocking_flak_fx_5);
	
	thread (infinity_epic_entrance());
	//thread (tractor_swirling_rock_anims_01());
	//thread (tractor_swirling_rock_anims_02());
	effect_attached_to_camera_new (environments\solo\m40_invasion\fx\dust\particulates.effect);
	object_destroy (cannon_chopper);
	
	//fade_in (255,255,255, 60);
	ai_place (epic_ghost_front_right_sq);
	ai_place (epic_wraith_mid_guard_sq);
	ai_place (epic_wraith_mid_left);
	ai_place (epic_marines_tank_01);
	ai_place (epic_marines_tank_02);	
	
	sleep (1);

//	object_teleport(epic_tower_pod_01, fg_tp_top_epic);
	ai_place (epic_marines_convoy);
	ai_place (epic_ghost_front_right_02_sq);
	ai_place (epic_phantom_mid_guard_sq);
	ai_place (epic_wraith_rear_sq);
	sleep (5);
//	effect_new (environments\solo\m40_invasion\fx\energy\tractor_beam.effect, fx_tractor_base );
	object_create_folder (epic_crates);
	sleep (5);
//	object_create_folder (epic_bubbles);	

	object_create (epic_bubble_2);	
	object_create (epic_bubble_module_2);	
	object_create (epic_bubble_1);	
	object_create (epic_bubble_module_1);	
	object_create (epic_shield_barrier);	
		
	effects_distortion_enabled = false;
	sleep (1);
	object_set_function_variable (epic_shield_barrier, shield_on, 1, 1);	
	object_set_function_variable (epic_shield_barrier, shield_color, 0, 0);
	
//	thread( f_insertion_zoneload(DEF_S_ZONESET_EPIC(), true) );

	ai_object_set_team (epic_bubble_module_1, covenant);
	ai_object_set_team (epic_bubble_module_2, covenant);

	ai_object_enable_targeting_from_vehicle (epic_bubble_module_1, true);
	ai_object_enable_targeting_from_vehicle (epic_bubble_module_1, true);

	data_mine_set_mission_segment ("m40_epic");
	
	garbage_collecting = true;
	thread (garbage_collect_me());
	
	thread (f_epic_blip_timer());

 	game_save_no_timeout();

 	
//	sleep_until (epic_obj_state > 29
//	and
//	ai_living_count (epic_phantom_01_sq) < 2
//	and
//	ai_living_count (epic_mortardom_vehicles) < 2
//	and
//	ai_living_count (epic_hill_infantry) < 3
//	);

	sleep(5);

	wake (epic_bubble_control);

	sleep_s(1);
	
	//f_chapter_title_2 (leadin_title_ord);
	thread(f_chapter_title(leadin_title_ord));
	
	sleep_until (epic_bubbles_burst == 2
	or
	volume_test_players (tv_epic_td_area)
	);
	
	
  thread(f_mus_m40_e09_finish());	
  
// 	wake (m40_target_gravity_well);
//	cinematic_set_title (epic_end_direction);
	wake (missile_prototype);
	
	f_blip_flag (epic_end_flag, "default");
	
	sleep_until (epic_obj_state > 49);
	
	f_unblip_flag (epic_end_flag);
	
	f_blip_object(target_laser, "default");
end

script dormant epic_vehicle_script()
	thread (epic_ghost_backup_01_sq_spawn());
	thread (epic_ghost_backup_03_sq_spawn());
	thread (epic_ghost_backup_04_sq_spawn());
	thread (epic_ghost_backup_07_sq_spawn());
	thread (epic_wraiths_rear_spawn());
	thread (epic_kill_front_row());
end

script static void stacker_dialogue()
	thread (stacker_initial());
	thread (stacker_first_line_clear());
	thread (stacker_first_line_tarry());
	thread (stacker_second_line_clear());
	thread (stacker_all_clear());
end

script static void stacker_initial()
	sleep_s (2);
	wake (f_dialog_m40_stacker_01);

	//Sgt. Stacker : I'm reading Sierra One One Seven on-sensor.
	//Sgt. Stacker : Everyone form up on the Chief!
end

script static void stacker_first_line_tarry()
	sleep_s (5);
//	wake (f_dialog_m40_stacker_02);

	//not sure if this is needed - jacob

	//Sgt. Stacker : Clear this area. Push up the hill, marines!	
	//Sgt. Stacker : You WILL prosecute these Covenant with extreme prejudice, soldier!
end

script static void stacker_first_line_clear()
	sleep_until (epic_obj_state < 12
	and
	ai_living_count (epic_ghost_front_right_02_sq) < 1
	and
	ai_living_count (epic_ghost_front_right_sq) < 1	
	and
	ai_living_count (epic_wraith_mid_left) < 1	
	and
	ai_living_count (epic_ghost_backup_01_sq) < 1	
	);
	sleep_s (1);	
	wake (f_dialog_m40_stacker_03);

	//Sgt. Stacker : First line clear, check it off. Push forward!
	//Sgt. Stacker : All eyes on the Chief, he's lead dog!
end

script static void stacker_second_line_clear()
	sleep_until (epic_obj_state < 20
	and
	ai_living_count (epic_wraith_mid_guard_sq) < 1
	and
	ai_living_count (epic_ghost_backup_03_sq) < 1	
	and
	ai_living_count (epic_wraith_rear_sq) < 1	
	and
	ai_living_count (epic_ghost_backup_04_sq) < 1	
	);
	sleep_s (1);	
	wake (f_dialog_m40_stacker_04);

	//Sgt. Stacker : Second line clear, this ain't a picnic. Let's move up!"
end

script static void stacker_all_clear()
	sleep_s (1);
	sleep_until(epic_obj_state < 50
	and	
	epic_bubbles_burst == 2
	and
	ai_living_count (epic_hill_infantry) < 1
	and
	ai_living_count (epic_wraith_backup_04_sq) < 1	
	and
	ai_living_count (epic_wraith_backup_05_sq) < 1	
	and
	ai_living_count (epic_wraith_backup_06_sq) < 1	
	and
	ai_living_count (epic_wraith_backup_07_sq) < 1	
	and
	ai_living_count (epic_wraith_backup_08_sq) < 1	
	and
	ai_living_count (epic_wraith_backup_09_sq) < 1	
	);
	//wake (f_dialog_m40_stacker_05);

	//Sgt. Stacker : All right, that's the last of 'em. No dessert, huh? Nothing left? Well done, marines.
	//Sgt. Stacker : Chief, we'll cover you from here.
end

script dormant epic_infantry_script()
	ai_place (epic_tower_left_01_sq);
	
	sleep_until (epic_obj_state > 9);
	
	ai_place (epic_mid_01_sq);
	thread (epic_mid_02_sq_spawn());
//	thread (epic_mid_03_sq_spawn());
	thread (epic_rear_01_sq_spawn());
	
	sleep_until (epic_obj_state > 29
	and
	ai_living_count (epic_mortardom_vehicles) < 2
	);
	
	ai_place (epic_phantom_01_sq);
end

script static void epic_ghost_backup_01_sq_spawn()
	sleep_until (ai_living_count (epic_small_vehicles) < 3
	and
	not (volume_test_players_lookat (tv_epic_ghost_backup_01_sq_spawn, 3000, 40)));
	ai_place (epic_ghost_backup_01_sq);
end

script static void epic_ghost_backup_03_sq_spawn()
	sleep_until (ai_living_count (epic_small_vehicles) < 2
	and
	epic_obj_state > 9
	and
	not (volume_test_players_lookat (tv_epic_mid_02_sq_spawn, 3000, 40)));
	ai_place (epic_ghost_backup_03_sq);	
end

script static void epic_ghost_backup_04_sq_spawn()
	sleep_until (ai_living_count (epic_small_vehicles) < 2
	and
	epic_obj_state > 9
	and
	not (volume_test_players_lookat (tv_epic_mid_02_sq_spawn, 3000, 40)));
	ai_place (epic_ghost_backup_04_sq);	
end

script static void epic_kill_front_row()
	sleep_until (epic_obj_state > 19);
	thread (epic_ghost_front_right_02_sq_kills_1());
	thread (epic_ghost_front_right_02_sq_kills_2());
	thread (epic_ghost_front_right_sq_kills_1());
	thread (epic_ghost_front_right_sq_kills_2());
	thread (epic_ghost_backup_01_sq_kills());
	thread (epic_ghost_backup_01b_sq_kills());
end

script static void epic_ghost_front_right_02_sq_kills_1()
	sleep_until (not (objects_can_see_object (player0, epic_ghost_front_right_02_sq.spawn_points_1, 60))
	and
	not (objects_can_see_object (player1, epic_ghost_front_right_02_sq.spawn_points_1, 60))
	and
	not (objects_can_see_object (player2, epic_ghost_front_right_02_sq.spawn_points_1, 60))
	and
	not (objects_can_see_object (player3, epic_ghost_front_right_02_sq.spawn_points_1, 60))
	, 1);
	ai_kill (epic_ghost_front_right_02_sq.spawn_points_1);
end

script static void epic_ghost_front_right_02_sq_kills_2()
	sleep_until (not (objects_can_see_object (player0, epic_ghost_front_right_02_sq.spawn_points_0, 60))
	and
	not (objects_can_see_object (player1, epic_ghost_front_right_02_sq.spawn_points_0, 60))
	and
	not (objects_can_see_object (player2, epic_ghost_front_right_02_sq.spawn_points_0, 60))
	and
	not (objects_can_see_object (player3, epic_ghost_front_right_02_sq.spawn_points_0, 60))
	, 1);
	ai_kill (epic_ghost_front_right_02_sq.spawn_points_0);
end

script static void epic_ghost_front_right_sq_kills_1()
	sleep_until (not (objects_can_see_object (player0, epic_ghost_front_right_sq.spawn_points_0, 60))
	and
	not (objects_can_see_object (player1, epic_ghost_front_right_sq.spawn_points_0, 60))
	and
	not (objects_can_see_object (player2, epic_ghost_front_right_sq.spawn_points_0, 60))
	and
	not (objects_can_see_object (player3, epic_ghost_front_right_sq.spawn_points_0, 60))
	, 1);
	ai_kill (epic_ghost_front_right_sq.spawn_points_0);
end

script static void epic_ghost_front_right_sq_kills_2()
	sleep_until (not (objects_can_see_object (player0, epic_ghost_front_right_sq.spawn_points_1, 60))
	and
	not (objects_can_see_object (player1, epic_ghost_front_right_sq.spawn_points_1, 60))
	and
	not (objects_can_see_object (player2, epic_ghost_front_right_sq.spawn_points_1, 60))
	and
	not (objects_can_see_object (player3, epic_ghost_front_right_sq.spawn_points_1, 60))
	, 1);
	ai_kill (epic_ghost_front_right_sq.spawn_points_1);
end

script static void epic_ghost_backup_01_sq_kills()
	sleep_until (not (objects_can_see_object (player0, epic_ghost_backup_01_sq.driver, 60))
	and
	not (objects_can_see_object (player1, epic_ghost_backup_01_sq.driver, 60))
	and
	not (objects_can_see_object (player2, epic_ghost_backup_01_sq.driver, 60))
	and
	not (objects_can_see_object (player3, epic_ghost_backup_01_sq.driver, 60))
	, 1);
	ai_kill (epic_ghost_backup_01_sq.driver);
end

script static void epic_ghost_backup_01b_sq_kills()
	sleep_until (not (objects_can_see_object (player0, epic_ghost_backup_01_sq.driver2, 60))
	and
	not (objects_can_see_object (player1, epic_ghost_backup_01_sq.driver2, 60))
	and
	not (objects_can_see_object (player2, epic_ghost_backup_01_sq.driver2, 60))
	and
	not (objects_can_see_object (player3, epic_ghost_backup_01_sq.driver2, 60))
	, 1);
	ai_kill (epic_ghost_backup_01_sq.driver2);
end

script static void epic_ghost_backup_07_sq_spawn()
	sleep_until (epic_obj_state > 19);
	sleep (30 * 3);
	ai_place (epic_ghost_backup_07a_sq);
//	sleep (30 * 3);
//	ai_place (epic_ghost_backup_07b_sq);		
 end
 
script static void tv_epic_tower_left_kills_sc()
	sleep_until (not (volume_test_players_lookat (tv_epic_tower_left_kills, 3000, 40)));
	unit_kill_list_silent (volume_return_objects (tv_epic_tower_left_kills));
	print ("tv_epic_tower_left_kills_sc");
end
 
script static void tv_epic_mid_inf_kills_sc()
	sleep_until (not (volume_test_players_lookat (tv_epic_mid_inf_kills, 3000, 40)));
	unit_kill_list_silent (volume_return_objects (tv_epic_mid_inf_kills));
	print ("tv_epic_mid_inf_kills");
end

script static void epic_wraiths_rear_spawn()
	sleep_until (
	(ai_living_count (epic_small_vehicles) < 4
	and
	epic_obj_state > 14
	and
	not (volume_test_players_lookat (tv_epic_mid_03_sq_spawn, 3000, 40))
	and
	not (volume_test_players_lookat (tv_epic_wraith_backup_04_sq_spawn, 3000, 40)))
	or
	(ai_living_count (epic_small_vehicles) < 5
	and
	epic_obj_state > 20
	and
	not (volume_test_players_lookat (tv_epic_mid_03_sq_spawn, 3000, 40))
	and
	not (volume_test_players_lookat (tv_epic_wraith_backup_04_sq_spawn, 3000, 40)))
	);
	
	thread (tv_epic_tower_left_kills_sc());
	thread (tv_epic_mid_inf_kills_sc());	
	
	//ai_place (epic_phantom_03_sq);
	ai_place (epic_wraith_backup_04_sq);	
	ai_place (epic_wraith_backup_07_sq);
	//ai_place (epic_wraith_backup_06_sq);
	//sleep (30 * 1);
	//ai_place (epic_wraith_backup_05_sq);
	
	/*sleep_until (ai_living_count (epic_mortardom_vehicles) < 4
	and
	epic_obj_state < 40);*/
	
	sleep_until( epic_obj_state < 40); 
	
	ai_place (epic_phantom_06_sq);
	ai_place (epic_wraith_backup_08_sq);
	vehicle_load_magic (ai_vehicle_get_from_spawn_point (epic_phantom_06_sq.driver), "phantom_lc", ai_vehicle_get_from_starting_location (epic_wraith_backup_08_sq.driver));	


	sleep_s (5);
	//sleep_until (ai_living_count(epic_phantom_06_sq) < 1 and epic_obj_state < 40);

	thread (epic_wraith_09_placement());

	sleep_until (volume_test_players (tv_epic_top_of_hill)
	or
	(ai_living_count (epic_small_vehicles) < 2
	and
	ai_living_count (epic_mortardom_vehicles) < 2)
	or
	volume_test_players (tv_epic_04), 1);
	
	sleep_until(not (volume_test_players_lookat (tv_epic_wraith_high_shelling_01_sq_spawn, 3000, 40)));
	if
	not volume_test_players(tv_epic_top_of_hill)
	then
	ai_place (epic_wraith_high_shelling_01_sq);
	end

end

script static void epic_wraith_09_placement()
	sleep_s (3);

	sleep_until (ai_living_count (epic_mortardom_vehicles) < 3
	and
	epic_obj_state < 40	
	);
	
	ai_place (epic_phantom_07_sq);
	ai_place (epic_wraith_backup_09_sq);
	vehicle_load_magic (ai_vehicle_get_from_spawn_point (epic_phantom_07_sq.driver), "phantom_lc", ai_vehicle_get_from_starting_location (epic_wraith_backup_09_sq.driver));
end

script static void epic_mid_02_sq_spawn()
	sleep_until (ai_living_count (epic_mid_01_sq) < 2
	and
	epic_obj_state > 14
	and
	epic_obj_state < 40
	and
	not (volume_test_players_lookat (tv_epic_mid_02_sq_spawn, 3000, 40)));
	ai_place (epic_mid_02_sq);
end

script static void epic_mid_03_sq_spawn()
	sleep_until (ai_living_count (epic_tower_left_01_sq) < 3
	and
	ai_living_count (epic_mid_01_sq) < 5
	and
	ai_living_count (epic_small_vehicles) < 2	
	and
	epic_obj_state < 30
	and
	not (volume_test_players_lookat (tv_epic_mid_03_sq_spawn, 3000, 40)));
	ai_place (epic_mid_03_sq);
end

script static void epic_rear_01_sq_spawn()
	sleep_until (ai_living_count (epic_mid_02_sq) < 2
	and
	ai_living_count (epic_mid_03_sq) < 2
	and
	epic_obj_state > 20
	and
	epic_obj_state < 40);
	ai_place (epic_rear_01_sq);
end

script dormant epic_marines_ins_temp()
	object_create (epic_ins_hog_01);
	ai_place (epic_marines_convoy);
	ai_vehicle_enter_immediate (epic_marines_convoy.chief_gunner, epic_ins_hog_01, "warthog_g");
	sleep_until (epic_insertion_state == true);
	teleport_players_into_vehicle (epic_ins_hog_01);
end

script dormant backup_ending_script()
	sleep_until (epic_ending_rdy == true
	and
	ai_living_count (epic_hill_infantry) < 3	
//	and
//	volume_test_players (tv_epic_05)
	);
	sleep (30 * 4);

end 

script static void test_end()
	object_create (missile_capsule);
	object_move_to_point (missile_capsule, .5, pod_effect.p1);
	effect_new_at_ai_point (fx\reach\fx_library\pod_impacts\dirt\pod_impact_dirt_large.effect, pod_effect.p1);
	sleep (30 * 2);
	cinematic_set_title (m40_blurb_epic_2); 
	//fade_out (0,0,0,120);
	sleep (30 * 10);
	cinematic_set_title (m40_blurb_epic_3);
	sleep (30 * 15);
	cinematic_set_title (m40_blurb_epic_4);
	sleep (30 * 14);
end

script dormant epic_bubble_control()

		wake (epic_bubble_check_one);
		wake (epic_bubble_check_two);
		
		sleep_until(epic_bubbles_burst >= 1);
		
		wake (f_dialog_m40_cortana_shield_destroyed_one);
		
		object_set_function_variable (epic_shield_barrier, shield_color, 1, 0);
		
		sleep_until(epic_bubbles_burst >= 2);

		object_destroy (epic_shield_barrier);
		wake (m40_cortana_clearing_ravine);		
end

script dormant epic_bubble_check_one()

		sleep_until(object_get_health(epic_bubble_module_1) <= .3, 1);
		sleep (30 * 0.5);
		object_destroy (epic_bubble_1);
		epic_bubble_one_burst = true;
		epic_bubbles_burst = epic_bubbles_burst + 1;
		f_unblip_object(epic_bubble_module_1);
		game_save_no_timeout();

end

script dormant epic_bubble_check_two()

		sleep_until(object_get_health(epic_bubble_module_2) <= .3, 1);
		sleep (30 * 0.5);
		object_destroy (epic_bubble_2);
		epic_bubble_two_burst = true;
		epic_bubbles_burst = epic_bubbles_burst + 1;
		f_unblip_object(epic_bubble_module_2);
		game_save_no_timeout();

end


//--------------------epic command scripts-------------------

//script command_script epic_ghost_boosting_01()
//	sleep (30 * 1);
//	cs_vehicle_boost (epic_revenant_front_sq, true);
//	cs_go_to (epic_vehicle_pt.p0);
//end

script command_script epic_ghost_boosting_02()
	cs_vehicle_boost (true);
	cs_go_to (epic_vehicle_pt.p12);
	cs_vehicle_boost (false);
end

script command_script epic_ghost_front_boost_01()
	cs_vehicle_boost (true);
	cs_go_to (epic_vehicle_pt.p15);
	cs_go_to (epic_vehicle_pt.p19);
	cs_vehicle_boost (false);
end

script command_script epic_ghost_front_boost_02()
	cs_vehicle_boost (true);
	cs_go_to (epic_vehicle_pt.p14);
	cs_go_to (epic_vehicle_pt.p20);
	cs_vehicle_boost (false);
end

script command_script epic_marine_tank_02_cs()
	cs_go_to (epic_vehicle_pt.p16);
	cs_shoot_point (true, epic_vehicle_pt.p17);
	sleep (30 * 2);
end

script command_script epic_phantom_mid_guard_sq_control()
//	sleep_until (volume_test_players (tv_epic_015));
	sound_impulse_start('sound\environments\solo\m040\new_m40_tags\amb_m40_ships\amb_m40_epic_phantom_mid_guard_spawn', epic_phantom_mid_guard_sq, 1);
	
	cs_fly_to_and_face (epic_vehicle_pt.p2, epic_vehicle_pt.p1);
	sleep (30 * 2);
	vehicle_unload (ai_vehicle_get (epic_phantom_mid_guard_sq.driver), "phantom_sc01");
	vehicle_unload (ai_vehicle_get (epic_phantom_mid_guard_sq.driver), "phantom_sc02");
	
	sound_impulse_start('sound\environments\solo\m040\new_m40_tags\amb_m40_ships\amb_m40_epic_phantom_mid_guard_takeoff', epic_phantom_mid_guard_sq, 1);
	cs_vehicle_speed (.5);
	cs_fly_to_and_face (epic_phantom_mid_guard_sq_pt.p0, epic_vehicle_pt.p0);
	cs_vehicle_speed (.5);
	cs_fly_to_and_face (epic_phantom_mid_guard_sq_pt.p1, epic_vehicle_pt.p0);
	cs_vehicle_speed (.9);
	cs_fly_to_and_face (epic_phantom_mid_guard_sq_pt.p0, epic_vehicle_pt.p0);
	cs_vehicle_speed (1);
	cs_fly_by (epic_phantom_mid_guard_sq_pt.p3);
	cs_fly_by (epic_phantom_mid_guard_sq_pt.p4);
	cs_fly_by (epic_phantom_mid_guard_sq_pt.p5);
	ai_erase (epic_phantom_mid_guard_sq);
end

script command_script epic_phantom_01_sq_cs()
	sound_impulse_start('sound\environments\solo\m040\new_m40_tags\amb_m40_ships\amb_m40_epic_phantom_01_spawn', epic_phantom_01_sq, 1);
	cs_vehicle_speed (1);
	f_load_phantom( epic_phantom_01_sq, "left", epic_rear_02_sq.guy1, epic_rear_02_sq.guy2, epic_rear_02_sq.guy3, epic_rear_02_sq.guy4);
	f_load_phantom (epic_phantom_01_sq, "right", epic_rear_03_sq.guy1, epic_rear_03_sq.guy2, epic_rear_03_sq.guy3, epic_rear_03_sq.guy4);
	f_load_phantom (epic_phantom_01_sq, "chute", epic_rear_04_sq.guy1, epic_rear_04_sq.guy2, epic_rear_04_sq.guy3, NONE);
	epic_ending_rdy = true;
	cs_fly_by (epic_phantom_01_sq_pt.p0);
	cs_fly_by (epic_phantom_01_sq_pt.p1);
	cs_fly_by (epic_phantom_01_sq_pt.p2);
	cs_fly_by (epic_phantom_01_sq_pt.p3);
	cs_fly_by (epic_phantom_01_sq_pt.p4);
	f_unload_phantom (epic_phantom_01_sq, "left");
	f_unload_phantom (epic_phantom_01_sq, "right");
	f_unload_phantom (epic_phantom_01_sq, "chute");
	
	sound_impulse_start('sound\environments\solo\m040\new_m40_tags\amb_m40_ships\amb_m40_epic_phantom_01_takeoff', epic_phantom_01_sq, 1);
	cs_fly_by (epic_phantom_02_sq_pt.p8);
	cs_fly_by (epic_phantom_02_sq_pt.p9);	
	ai_erase (epic_phantom_01_sq);
end

script command_script epic_phantom_02_sq_cs()
	sound_impulse_start('sound\environments\solo\m040\new_m40_tags\amb_m40_ships\amb_m40_epic_phantom_02_spawn', epic_phantom_02_sq, 1);
	cs_vehicle_speed (1);
	f_load_phantom( epic_phantom_02_sq, "chute", epic_mid_04_sq.guy1, epic_mid_04_sq.guy2, epic_mid_04_sq.guy3, NONE);
	cs_fly_by (epic_phantom_02_sq_pt.p0);
	cs_fly_by (epic_phantom_02_sq_pt.p1);
	cs_fly_by (epic_phantom_02_sq_pt.p2);
	cs_fly_to_and_face (epic_phantom_02_sq_pt.p4, epic_phantom_02_sq_pt.p10);
	f_unload_phantom (epic_phantom_02_sq, "chute");
	
	sound_impulse_start('sound\environments\solo\m040\new_m40_tags\amb_m40_ships\amb_m40_epic_phantom_02_takeoff', epic_phantom_02_sq, 1);
	cs_fly_by (epic_phantom_02_sq_pt.p5);
	cs_fly_by (epic_phantom_02_sq_pt.p6);
	cs_fly_by (epic_phantom_02_sq_pt.p7);
	cs_fly_by (epic_phantom_02_sq_pt.p8);
	cs_fly_by (epic_phantom_02_sq_pt.p9);	
	ai_erase (epic_phantom_02_sq);
end


script command_script epic_phantom_03_sq_cs()
	sound_impulse_start('sound\environments\solo\m040\new_m40_tags\amb_m40_ships\amb_m40_epic_phantom_03_spawn', epic_phantom_03_sq, 1);
	thread (phantom_hangout_sc());
	vehicle_load_magic (ai_vehicle_get_from_spawn_point (epic_phantom_03_sq.driver), "phantom_lc", ai_vehicle_get_from_starting_location (epic_wraith_backup_04_sq.driver));	
	cs_vehicle_speed (1);
	cs_fly_by (epic_phantom_03_sq_pt.p0);
	cs_fly_by (epic_phantom_03_sq_pt.p1);
	cs_fly_by (epic_phantom_03_sq_pt.p2);
	cs_fly_to_and_face (epic_phantom_03_sq_pt.p3, epic_vehicle_pt.p7);
	vehicle_unload (ai_vehicle_get (epic_phantom_03_sq.driver), "phantom_lc");
	
	sound_impulse_start('sound\environments\solo\m040\new_m40_tags\amb_m40_ships\amb_m40_epic_phantom_03_takeoff', epic_phantom_03_sq, 1);
	cs_vehicle_speed (.6);
	repeat
		begin_random
			begin
				cs_fly_to_and_face (epic_phantom_03_sq_pt.p3, epic_vehicle_pt.p7);
			end
			begin
				cs_fly_to_and_face (epic_phantom_03_sq_pt.p4, epic_vehicle_pt.p7);
			end
			begin
				cs_fly_to_and_face (epic_phantom_03_sq_pt.p5, epic_vehicle_pt.p7);
			end
			begin
				cs_fly_to_and_face (epic_phantom_03_sq_pt.p6, epic_vehicle_pt.p7);
			end
		end
	until	(phantom_hang_out == false);
	cs_vehicle_speed (1);
	cs_fly_by (epic_phantom_03_sq_pt.p8);
	cs_fly_by (epic_phantom_03_sq_pt.p9);
	cs_fly_by (epic_phantom_03_sq_pt.p10);
	cs_fly_by (epic_phantom_03_sq_pt.p11);
	cs_fly_by (epic_phantom_03_sq_pt.p12);
	cs_fly_by (epic_phantom_03_sq_pt.p13);
	ai_erase (epic_phantom_03_sq);
end

script static void phantom_hangout_sc()
	phantom_hang_out = true;
	sleep (30 * 50);
	phantom_hang_out = false;
end

script command_script epic_phantom_04_sq_cs()
		sound_impulse_start('sound\environments\solo\m040\new_m40_tags\amb_m40_ships\amb_m40_epic_phantom_04_spawn', epic_phantom_04_sq, 1);
		cs_vehicle_speed (1);
		cs_fly_by (epic_phantom_04_sq_pt.p0);
		cs_fly_by (epic_phantom_04_sq_pt.p1);
		cs_fly_by (epic_phantom_04_sq_pt.p2);
		cs_fly_by (epic_phantom_04_sq_pt.p3);
		vehicle_unload (ai_vehicle_get (epic_phantom_04_sq.driver), "phantom_sc01");
		vehicle_unload (ai_vehicle_get (epic_phantom_04_sq.driver), "phantom_sc02");
		
		sound_impulse_start('sound\environments\solo\m040\new_m40_tags\amb_m40_ships\amb_m40_epic_phantom_04_takeoff', epic_phantom_04_sq, 1);
		cs_fly_by (epic_phantom_04_sq_pt.p4);
		cs_fly_by (epic_phantom_04_sq_pt.p5);
		cs_fly_by (epic_phantom_04_sq_pt.p6);
		cs_fly_by (epic_phantom_04_sq_pt.p7);
		cs_fly_by (epic_phantom_04_sq_pt.p8);
		cs_fly_by (epic_phantom_04_sq_pt.p9);
		ai_erase (epic_phantom_04_sq);
end

//script command_script epic_phantom_05_sq_cs()
//		cs_vehicle_speed (1);
//		cs_fly_by (epic_phantom_05_sq_pt.p0);
//		cs_fly_by (epic_phantom_05_sq_pt.p1);
//		cs_fly_by (epic_phantom_05_sq_pt.p2);
//		cs_fly_to_and_face (epic_phantom_05_sq_pt.p3, epic_phantom_05_sq_pt.p4);
//		vehicle_unload (ai_vehicle_get (epic_phantom_05_sq.driver), "phantom_lc");
//		sleep (30 *5);
//		vehicle_unload (ai_vehicle_get (epic_phantom_05_sq.driver), "phantom_sc01");
//		vehicle_unload (ai_vehicle_get (epic_phantom_05_sq.driver), "phantom_sc02");
//		cs_fly_by (epic_phantom_05_sq_pt.p5);
//		cs_fly_by (epic_phantom_05_sq_pt.p6);
//		cs_fly_by (epic_phantom_05_sq_pt.p7);
//		cs_fly_by (epic_phantom_05_sq_pt.p8);
//		ai_erase (epic_phantom_05_sq);
//end

script command_script epic_phantom_06_sq_cs()
	sound_impulse_start('sound\environments\solo\m040\new_m40_tags\amb_m40_ships\amb_m40_epic_phantom_06_spawn', epic_phantom_06_sq, 1);
	cs_fly_by (epic_phantom_06_pt.p1);
	cs_fly_by (epic_phantom_06_pt.p0);
	cs_fly_by (epic_phantom_06_pt.p2);
	
	vehicle_unload (ai_vehicle_get (epic_phantom_06_sq.driver), "phantom_lc");
	sound_impulse_start('sound\environments\solo\m040\new_m40_tags\amb_m40_ships\amb_m40_epic_phantom_06_takeoff', epic_phantom_06_sq, 1);
	cs_fly_by (epic_phantom_06_pt.p3);
	cs_fly_by (epic_phantom_06_pt.p4);
	cs_fly_by (epic_phantom_06_pt.p5);
	ai_erase (epic_phantom_06_sq);
end

script command_script epic_phantom_07_sq_cs()
	sound_impulse_start('sound\environments\solo\m040\new_m40_tags\amb_m40_ships\amb_m40_epic_phantom_07_spawn', epic_phantom_07_sq, 1);
	cs_fly_by (epic_phantom_07_pt.p0);
	cs_fly_by (epic_phantom_07_pt.p1);
	cs_fly_by (epic_phantom_07_pt.p2);
	vehicle_unload (ai_vehicle_get (epic_phantom_07_sq.driver), "phantom_lc");
	sound_impulse_start('sound\environments\solo\m040\new_m40_tags\amb_m40_ships\amb_m40_epic_phantom_07_takeoff', epic_phantom_07_sq, 1);
	cs_fly_by (epic_phantom_06_pt.p3);
	cs_fly_by (epic_phantom_06_pt.p4);
	cs_fly_by (epic_phantom_06_pt.p5);
	ai_erase (epic_phantom_07_sq);
end

//script command_script pelican_backup_01_cs()
//		print ("UNSC reinforcements incoming");
//		thread (m40_marine_backup_dialogue());
// 		sleep (30 * 4);
//		ai_place (marines_backup_01);
//		vehicle_load_magic (ai_vehicle_get_from_spawn_point (pelican_backup_01.driver), "pelican_lc", ai_vehicle_get_from_starting_location  (marines_backup_01.hog_driver));
//		cs_vehicle_speed (1);
//		cs_fly_by (pelican_backup_01_pt.p0);
//		cs_fly_by (pelican_backup_01_pt.p1);
//		cs_fly_to_and_face (pelican_backup_01_pt.p2, pelican_backup_01_pt.p3);
//		sleep (30 * 1);
//		vehicle_unload (ai_vehicle_get (pelican_backup_01.driver), "pelican_lc");
//		f_blip_ai (marines_backup_01.hog_driver, "ordnance");	
//		thread (unblipping_epic_backup_01());
//		sleep (30 * 1);
//		cs_fly_to_and_face (pelican_backup_01_pt.p7, pelican_backup_01_pt.p8);
//		unit_open (pelican_backup_01);
//		sleep (30 * 1);
//		ai_place (mongoose_backup_01);
//		print ("mongoose_backup_01 placed");
//		cs_fly_by (pelican_backup_01_pt.p0);
//		cs_fly_by (pelican_backup_01_pt.p6);
//		cs_fly_by (pelican_backup_01_pt.p5);
//		cs_fly_by (pelican_backup_01_pt.p9);
//		ai_erase (pelican_backup_01);
//		sleep (30 * 10);
//end

//script static void unblipping_epic_backup_01()
//	sleep (30 * 15);
//	f_unblip_ai (marines_backup_01.hog_driver);
//	print ("marines_backup_01 unblipped");
//end
//
//script static void unblipping_epic_backup_02()
//	sleep (30 * 15);
//	f_unblip_ai (marines_backup_02.hog_driver);	
//	print ("marines_backup_02 unblipped");
//end	

//script command_script pelican_backup_02_cs()
//		print ("UNSC reinforcements incoming");
//		thread (m40_marine_backup_dialogue());
// 		sleep (30 * 4);
//		ai_place (marines_backup_02);
//		vehicle_load_magic (ai_vehicle_get_from_spawn_point (pelican_backup_02.driver), "pelican_lc", ai_vehicle_get_from_starting_location  (marines_backup_02.hog_driver));
//		cs_vehicle_speed (1);
//		cs_fly_by (pelican_backup_01_pt.p0);
//		cs_fly_by (pelican_backup_01_pt.p1);
//		cs_fly_to_and_face (pelican_backup_01_pt.p2, pelican_backup_01_pt.p3);
//		sleep (30 * 1);
//		vehicle_unload (ai_vehicle_get (pelican_backup_02.driver), "pelican_lc");
//		f_blip_ai (marines_backup_02.hog_driver, "ordnance");	
//		thread (unblipping_epic_backup_02());
//		sleep (30 * 1);
//		cs_fly_to_and_face (pelican_backup_01_pt.p7, pelican_backup_01_pt.p8);
//		unit_open (pelican_backup_02);
//		sleep (30 * 1);
//		ai_place (mongoose_backup_02);
//		cs_fly_by (pelican_backup_01_pt.p6);
//		cs_fly_by (pelican_backup_01_pt.p0);
//		cs_fly_by (pelican_backup_01_pt.p5);
//		ai_erase (pelican_backup_02);
//		sleep (30 * 10);
//end

//script static void test_scorpion_load_script()
//	ai_place (pelican_load_sq);
//	ai_place (scorpion_load_sq);
//	sleep (30 * 2);
//	vehicle_load_magic (ai_vehicle_get_from_spawn_point (pelican_load_sq.driver), "pelican_lc", ai_vehicle_get_from_starting_location  (scorpion_load_sq.driver));
//end
		
script command_script m_test_99()
	cs_go_to (mtest.p14);
end

script command_script m_test_97()
	cs_go_to (mtest.p16);
end

script command_script m_test_98()
	cs_go_to (mtest.p17);
end

script static void epic_convoy_marines_enter_hog()
	sleep (30 * 1);
	ai_vehicle_enter_immediate (epic_marines_convoy.chief_gunner, epic_ins_hog_01, "warthog_g");
end


//script command_script mongoose_backup_01a_cs()
//		cs_ignore_obstacles (true);
//		cs_go_to (epic_vehicle_pt.p4);
//		cs_ignore_obstacles (false);
//end

script command_script lich_shoot_tortoise()
	cs_shoot_point (true, tort_top_patrol.p4);
end

script command_script epic_wraith_high_shelling_cs()
	cs_shoot_point (true, epic_wraith_high_shelling_pt.p0);
	sleep (30 *10);
	cs_shoot_point (true, epic_wraith_high_shelling_pt.p1);
	sleep (30 *9);
//	cs_shoot_point (true, epic_wraith_high_shelling_pt.p2);
//	sleep (30 *10);
//	cs_shoot_point (true, epic_wraith_high_shelling_pt.p3);
//	sleep (30 *11);
//	cs_shoot_point (true, epic_wraith_high_shelling_pt.p4);
//	sleep (30 *9);
//	cs_shoot_point (true, epic_wraith_high_shelling_pt.p5);
//	sleep (30 *10);
//	cs_shoot_point (true, epic_wraith_high_shelling_pt.p6);
//	sleep (30 *11);
//	cs_shoot_point (true, epic_wraith_high_shelling_pt.p7);
//	sleep (30 *9);
//	cs_shoot_point (true, epic_wraith_high_shelling_pt.p0);
//	sleep (30 *10);
//	cs_shoot_point (true, epic_wraith_high_shelling_pt.p1);
//	sleep (30 *11);
//	cs_shoot_point (true, epic_wraith_high_shelling_pt.p2);
//	sleep (30 *7);
//	cs_shoot_point (true, epic_wraith_high_shelling_pt.p3);
//	sleep (30 *13);
//	cs_shoot_point (true, epic_wraith_high_shelling_pt.p4);
//	sleep (30 *10);
//	cs_shoot_point (true, epic_wraith_high_shelling_pt.p5);
//	sleep (30 *11);
//	cs_shoot_point (true, epic_wraith_high_shelling_pt.p6);
//	sleep (30 *9);
//	cs_shoot_point (true, epic_wraith_high_shelling_pt.p7);
//	sleep (30 *10);
//	cs_shoot_point (true, epic_wraith_high_shelling_pt.p0);
//	sleep (30 *11);
//	cs_shoot_point (true, epic_wraith_high_shelling_pt.p1);
//	sleep (30 *12);
//	cs_shoot_point (true, epic_wraith_high_shelling_pt.p2);
//	sleep (30 *12);
//	cs_shoot_point (true, epic_wraith_high_shelling_pt.p3);
//	sleep (30 *11);
//	cs_shoot_point (true, epic_wraith_high_shelling_pt.p4);
//	sleep (30 *10);
//	cs_shoot_point (true, epic_wraith_high_shelling_pt.p5);
//	sleep (30 *9);
//	cs_shoot_point (true, epic_wraith_high_shelling_pt.p6);
//	sleep (30 *10);
//	cs_shoot_point (true, epic_wraith_high_shelling_pt.p7);
//	sleep (30 *11);
//	cs_shoot_point (true, epic_wraith_high_shelling_pt.p0);
//	sleep (30 *8);
//	cs_shoot_point (true, epic_wraith_high_shelling_pt.p1);
//	sleep (30 *10);
//	cs_shoot_point (true, epic_wraith_high_shelling_pt.p2);
//	sleep (30 *10);
//	cs_shoot_point (true, epic_wraith_high_shelling_pt.p3);
//	sleep (30 *13);
//	cs_shoot_point (true, epic_wraith_high_shelling_pt.p4);
//	sleep (30 *9);
//	cs_shoot_point (true, epic_wraith_high_shelling_pt.p5);
//	sleep (30 *10);
//	cs_shoot_point (true, epic_wraith_high_shelling_pt.p6);
//	sleep (30 *8);
//	cs_shoot_point (true, epic_wraith_high_shelling_pt.p7);
//	sleep (30 *10);
end

script command_script epic_wraith_low_shelling_cs()

	cs_shoot_point (true, epic_wraith_high_shelling_pt.p8);
	sleep (30 * 5);
	cs_shoot_point (true, epic_wraith_high_shelling_pt.p9);
	sleep (30 * 5);
	cs_shoot_point (true, epic_wraith_high_shelling_pt.p10);
	sleep (30 * 5);

end

script static void lib_teleport_start()
	object_destroy (cannon_chopper);
//	object_create (dm_portal_out);
//	object_hide (dm_portal_out, true);
//	sleep_until( current_zone_set() >= DEF_S_ZONESET_ELE_EPIC(), 1 );	
//	sleep_s(1);
//	object_hide (dm_portal_out, false);	
//	sleep_until(b_portal_up == true, 1);
	sleep_until( volume_test_players (tv_teleport_lib), 1 );

	// commit the zoneset transition that was started in elevator
	screen_effect_new(environments\solo\m90_sacrifice\fx\portal\parts\portal_exit_sfx.area_screen_effect, fg_tp_effect_1);
	screen_effect_new(environments\solo\m90_sacrifice\fx\portal\parts\portal_exit_sfx.area_screen_effect, fg_tp_effect_2);
	screen_effect_new(environments\solo\m90_sacrifice\fx\portal\parts\portal_exit_sfx.area_screen_effect, fg_tp_effect_3);
	screen_effect_new(environments\solo\m90_sacrifice\fx\portal\parts\portal_exit_sfx.area_screen_effect, fg_tp_effect_4);
	fade_out (255,255,255,5);
	switch_zone_set("zone_set_epic");
	object_teleport (player0, epic_teleport_flag_01);
	object_teleport (player1, epic_teleport_flag_02);
	object_teleport (player2, epic_teleport_flag_03);
	object_teleport (player3, epic_teleport_flag_04);

	wake (epic_main_script);
	wake (epic_obj_control);
	sleep(1);
		
	sleep_until (current_zone_set_fully_active() == DEF_S_ZONESET_EPIC());
	sleep(60);
	screen_effect_delete(environments\solo\m90_sacrifice\fx\portal\parts\portal_exit_sfx.area_screen_effect, fg_tp_effect_1);
	screen_effect_delete(environments\solo\m90_sacrifice\fx\portal\parts\portal_exit_sfx.area_screen_effect, fg_tp_effect_2);
	screen_effect_delete(environments\solo\m90_sacrifice\fx\portal\parts\portal_exit_sfx.area_screen_effect, fg_tp_effect_3);
	screen_effect_delete(environments\solo\m90_sacrifice\fx\portal\parts\portal_exit_sfx.area_screen_effect, fg_tp_effect_4);
	fade_in (255,255,255,10);
//	thread (lib_teleport(player0(), epic_teleport_flag_01));
//	thread (lib_teleport(player1(), epic_teleport_flag_02));
//	thread (lib_teleport(player2(), epic_teleport_flag_03));
//	thread (lib_teleport(player3(), epic_teleport_flag_04));
end

script static void test_offset()
	object_move_by_offset ( sn_pcave_door_exit, 3, 0, -.6, 1.5 );
end

script command_script jetpack_goto_test()
	cs_go_to (chop_tortoise_pt.p13);
	cs_go_to (chop_tortoise_pt.p15);
//	cs_go_to (chop_tortoise_pt.p16);
end 

script static void lib_teleport (player p_player, cutscene_flag cf_flag)
	sleep_until (volume_test_object (tv_teleport_lib, p_player), 1);
	fade_out (255,255,255,5);
//	sleep (30 * .7);
//	object_teleport (p_player, cf_flag);
//	print ("TELEPORT!");
	//fade_out (255,255,255,5);
//	sleep (30 * .7);
	object_teleport (p_player, cf_flag);
	wake (epic_main_script);
	wake (epic_obj_control);
	sleep_s(2);
	fade_in (0,0,0,5);
end

script static void infinity_epic_entrance()
	pup_play_show(infinity_arrival);
	thread (test_pfly());
end

script static void infinity_epic_rotate()
	sleep (30 * 4);
	object_rotate_by_offset (infinity_2, 20, 20, 20, -40, 0, 0);
end

script command_script epic_tank_shoot_ghost()
//	sleep (30 * 2);
//	cs_shoot_point (true, epic_vehicle_pt.p7);
	sleep_until(object_valid(epic_scorpion_01));
	ai_vehicle_enter_immediate (epic_marines_tank_01, epic_scorpion_01, "scorpion_d");
	vehicle_set_player_interaction (epic_scorpion_01, "scorpion_g", false, false);
	cs_go_to (epic_vehicle_pt.p8);
	ai_vehicle_exit (epic_marines_tank_01);
	//sleep_s (3);
	//dprint("I'm getting in the gun!");
	//ai_vehicle_enter (epic_marines_tank_01, epic_scorpion_01, "scorpion_g");
	sleep (30 * 7);	
	vehicle_set_player_interaction (epic_scorpion_01, "scorpion_g", true, true);
//	sleep_s(3);
	sleep_until (player_in_vehicle(epic_scorpion_01)
	or
	epic_tank_ai_timeout == true);
//	dprint("player not in tank");
	if
		not (player_in_vehicle(epic_scorpion_01))
	then	
		cs_run_command_script(epic_marines_tank_01, cs_epic_tank_switch_seat);
	end
end

script static void epic_tank_ai_timeout_sc()
	sleep (30 * 10);
	epic_tank_ai_timeout = true;	
end

script command_script cs_epic_tank_switch_seat()
	dprint("I'm getting in tank now");
	ai_vehicle_exit (epic_marines_tank_01);
	sleep(1);
	ai_vehicle_enter (epic_marines_tank_01, epic_scorpion_01, "scorpion_d");
end

//script command_script epic_infinity_phantom_01_cs()
////	cs_shoot_point (true, epic_vehicle_pt.p7);
//	cs_vehicle_speed (.5);
//	cs_fly_by (epic_infinity_route.p5);
//	object_set_scale (ai_get_unit (epic_infinity_phantom_01.guy1, 0.1, 60 ));
//	cs_fly_by (epic_infinity_route.p4);
//end

script static void test_seats()
	vehicle_set_unit_interaction (unit_get_vehicle (epic_marines_tank_01), "scorpion_d", false, false);
	sleep_s (5);		
	vehicle_set_unit_interaction (ai_vehicle_get_from_spawn_point (epic_marines_tank_01), "scorpion_d", true, true);	
end

script command_script knight_phase_spawn()
	cs_phase_in();
end

script static void test_pfly()
	thread (test_pfly1());
	thread (test_pfly2());
	thread (test_pfly3());
	thread (test_cfly1());
	thread (test_cfly2());
	thread (test_cfly3());
	thread (test_cfly4());
	sleep (30 * 4);
	thread (test_flock());
end
	

script static void test_pfly1()
	object_set_scale (epic_infinity_phantom_01_obj, 0.1, 240 );
	object_move_to_point (epic_infinity_phantom_01_obj, 9, epic_infinity_route.p7);
//	sleep (30 * 15);
	object_set_scale (epic_infinity_phantom_01_obj, 0.01, 50 );
	object_move_to_point (epic_infinity_phantom_01_obj, 30, epic_infinity_route.p8);
end

script static void test_pfly2()
	object_set_scale (epic_infinity_phantom_02_obj, 0.1, 280 );
	object_move_to_point (epic_infinity_phantom_02_obj, 7, epic_infinity_route.p5);
	object_set_scale (epic_infinity_phantom_02_obj, 0.01, 50 );
	object_move_to_point (epic_infinity_phantom_02_obj, 30, epic_infinity_route.p8);
end

script static void test_pfly3()
	object_set_scale (epic_infinity_phantom_03_obj, 0.1, 220 );
	object_move_to_point (epic_infinity_phantom_03_obj, 15, epic_infinity_route.p6);
	object_set_scale (epic_infinity_phantom_03_obj, 0.01, 50 );
	object_move_to_point (epic_infinity_phantom_03_obj, 30, epic_infinity_route.p8);
end

script static void test_cfly1()
	object_move_to_point (epic_infinity_cruiser_01_obj, 20, epic_infinity_route.p9);
end

script static void test_cfly2()
	object_move_to_point (epic_infinity_cruiser_02_obj, 27, epic_infinity_route.p10);
end

script static void test_cfly3()
	object_move_to_point (epic_infinity_cruiser_03_obj, 20, epic_infinity_route.p1);
end

script static void test_cfly4()
	object_move_to_point (epic_infinity_cruiser_04_obj, 15, epic_infinity_route.p12);
end

script static void test_flock()
	flock_create (flocks_epic_banshee);
	flock_create (flocks_epic_pelicans);
	flock_create (flocks_epic_banshee_2);
	flock_create (flocks_epic_pelicans_2);
end


//script static void test_cfly5()
//	object_set_scale (epic_infinity_cruiser_05_obj, 0.1, 150 );
//	object_move_to_point (epic_infinity_cruiser_05_obj, 5, epic_infinity_route.p13);
//end


script command_script epic_hog_intro()
	cs_go_to (epic_vehicle_pt.p9);
//	sleep (30 * 5);
end

script command_script tester2_cs()
	cs_go_to (misc_veh_pt.p4);
	cs_go_to (misc_veh_pt.p5);
//	sleep (30 * 5);
end

script command_script epic_goose_intro()
	cs_go_to (epic_vehicle_pt.p10);
//	sleep (30 * 5);
end

script static void test_jump()
	sleep_until (ai_living_count (epic_ghost_front_right_02_sq) < 1
	and
	ai_living_count (epic_ghost_backup_01_sq) < 1	
	and
	epic_obj_state < 50
	and
	epic_obj_state > 19
	); 
	sleep (30 * 3);
	ai_place (epic_ghost_backup_07a_sq);
//	sleep (30 * 3);
//	ai_place (epic_ghost_backup_07b_sq);
end

script static void teleport_effect()
	effect_new_at_ai_point (environments\solo\m10_crash\fx\flash_white.effect, pts_teleport_lib.p0);
	sleep_s (5);	
	effect_new_at_ai_point (fx\reach\fx_library\cinematics\boneyard\040lb_cov_flee\02\shot_1\longsword_attack_explosion.effect, cannon_explosion.p1);
end

script static void tractor_swirling_rock_anims_01()
	repeat
		device_set_overlay_track( rock_swirl_01, 'any:rocca1' );
		device_animate_overlay( rock_swirl_01, 1, 33, .1, .1);
		sleep( 30 * 31.9 );
	until (1 == 0);
end

script static void tractor_swirling_rock_anims_02()
	repeat
		device_set_overlay_track( rock_swirl_02, 'any:rocca2' );
		device_animate_overlay( rock_swirl_02, 1, 33, .1, .1);
		sleep( 30 * 31.9);
	until (1 == 0);
end

//-------------final missile gameplay-------------//

global boolean g_enable_fade=true;

script dormant missile_prototype()
	
	// Begin loading epic exit.  This should get triggered once the second bubble is destroyed
	zone_set_trigger_volume_enable("begin_zone_set:zone_set_epic_exit", true );

	object_create (tractor_target);

	object_create (missile_capsule);
	
	object_move_to_point (missile_capsule, 1, pod_effect.p1);
	effect_new_at_ai_point (fx\reach\fx_library\pod_impacts\dirt\pod_impact_dirt_large.effect, pod_effect.p1);
	object_create (target_laser);

  td_disabled = false;

	// wait until the zone has been loaded to start playing effects around the tractor beam
	sleep_until(current_zone_set_fully_active() == DEF_S_ZONESET_EPIC_EXIT(),1);

	effect_new (environments\solo\m40_invasion\fx\energy\tractor_beam.effect, fx_tractor_base );

	local long orb_show = pup_play_show(pup_power_orbs);

  
	/// sleep until player has target designator

	sleep_until (unit_has_weapon (player0, objects\weapons\pistol\storm_target_laser\storm_target_laser_m40.weapon)
	or
	unit_has_weapon (player1, objects\weapons\pistol\storm_target_laser\storm_target_laser_m40.weapon)
	or
	unit_has_weapon (player2, objects\weapons\pistol\storm_target_laser\storm_target_laser_m40.weapon)	
	or
	unit_has_weapon (player3, objects\weapons\pistol\storm_target_laser\storm_target_laser_m40.weapon)	
	);

	f_unblip_object(target_laser);
	
	if
		unit_has_weapon (player0, objects\weapons\pistol\storm_target_laser\storm_target_laser_m40.weapon)
	then
		m_ics_player0 = true;
		td_user = player0;
	elseif
		unit_has_weapon (player1, objects\weapons\pistol\storm_target_laser\storm_target_laser_m40.weapon)
	then
		m_ics_player1 = true;
		td_user = player1;
	elseif
		unit_has_weapon (player2, objects\weapons\pistol\storm_target_laser\storm_target_laser_m40.weapon)
	then
		m_ics_player2 = true;
		td_user = player2;
	elseif
		unit_has_weapon (player3, objects\weapons\pistol\storm_target_laser\storm_target_laser_m40.weapon)
	then
		m_ics_player3 = true;
		td_user = player3;
	else
		print ("Who has the weapon?");
	end
	
	
	// Sleep until  Tractor Target is targetted
	
			print ("Waiting to Lock");
	//sleep_until (weapon_get_lockon_state(target_laser) == 2);
	//sleep_until (weapon_get_rounds_total(target_laser,0) == 1);
                          
	//sleep_until (weapon_get_lockon_target(target_laser) != "NONE");
  
  local boolean exit_end_td = 0;
  
  thread(target_designator_check_trigger_down_time_end());
	thread (target_designator_dpad_input_watch_epic());
	thread (target_designator_give_think_epic());
	thread (target_designator_swap_away_think_epic());

  
	weapon_set_current_amount (target_laser, 1);
	sleep_until (weapon_get_lockon_target(target_laser, true, false) == tractor_target and td_trigger_down_time_met); 
	
	wake (f_dialog_m40_epic_end_fired);
	//dialogue that plays when the player locks onto the tower... is this the right spot for this? - jacob

	object_destroy (tractor_target);
	sleep (10 * 3);
	fade_out (1,1,1, 5);
	sleep (30 * .5);

	object_destroy (infinity_2);
	object_destroy (cruiser_2);
	thread (camera_shake_long());
	
	pup_stop_show (orb_show);
	
	unit_exit_vehicle (player0);
	unit_exit_vehicle (player1);
	unit_exit_vehicle (player2);
	unit_exit_vehicle (player3);

	sleep_until (not (unit_in_vehicle (player0))
	and
	not (unit_in_vehicle (player1))
	and
	not (unit_in_vehicle (player2))
	and
	not (unit_in_vehicle (player3))
	);
	
	ending_1();

//	f_blip_flag (tractor_target_flag, "neutralize");
end

script static void no_lens_flares()
	// Tractor Beam - No Lens Flares
	print ("Tractor Beam - No Lens Flares - FX");
//	effect_kill_from_flag (environments\solo\m40_invasion\fx\energy\tractor_beam.effect, fx_tractor_base);
//	effect_new (environments\solo\m40_invasion\fx\energy\tractor_beam_no_flares.effect, fx_tractor_base );
end

script static void target_designator_check_trigger_down_time_end()
	repeat
		if (unit_has_weapon_readied (td_user, "objects\weapons\pistol\storm_target_laser\storm_target_laser_m40.weapon") and td_tried_to_fire_input) then
			td_trigger_down_time = td_trigger_down_time + 1;
		else
			td_trigger_down_time = 0;
			td_trigger_down_time_met = false;
		end
		
		if (td_trigger_down_time > td_trigger_down_time_max) then
			td_trigger_down_time_met = true;
		end
		
		//inspect(td_trigger_down_time);
	until (1 == 0, 1);
end

script static void target_designator_give_think_epic()
	repeat
  	if (td_pulled_out_input) and (not td_is_out) then
			
			// make the laser exist
			object_create_anew(target_laser);
			
			if object_valid(target_laser) and player_count() > 0 then
				target_designator_give_ammo();
				
				// give the weapon
				unit_add_weapon(td_user, target_laser, 0);
				td_is_out	= true;
				print ("gave td");
								
				// give ammo if it's actually ready, take it away if its not
				if (target_designator_is_ready) then	
					target_designator_give_ammo();
				else
					target_designator_deplete_ammo();
				end
				sleep (30);
			end
		end
	until (1 == 0, 1);
end

// if the player swaps away, this handles what happens to the TD
script static void target_designator_swap_away_think_epic()
	repeat
		if (object_valid(target_laser) and player_count() > 0) then
			if (td_switched_weapons_input or object_get_parent(target_laser) == NONE) then      // swapped to another weapon OR object_get_parent(m40_lakeside_target_laser)==NONE) then    // or it was dropped
				object_destroy(target_laser);
					td_is_out = false;
					if td_switched_weapons_input then
						print ("switched away from TD");
					else
						print ("dropped TD!");
					end
				sleep (30);
			end
		else
			td_is_out = false;
//			print ("TD invalid/no players");                
			sleep (30);
		end
	until (1 == 0, 1);
end

script static void target_designator_dpad_input_watch_epic()
	repeat
		// reset these at the top of the loop
		td_pulled_out_input = false;
		td_switched_weapons_input = false;
		td_tried_to_fire_input = false;
			
		// this call allowes input to be checked every frame
		unit_action_test_reset(td_user);
		
		// check against various inputs and set global vars that other functions look at
		
		// pull the weapon out
		if (unit_action_test_dpad_up(td_user)) then
			td_pulled_out_input = true;
		end
		
		// swap weapons
		if (unit_action_test_primary_trigger(td_user)) then
			td_switched_weapons_input = true;
		end
		
		// pull trigger
		if (unit_action_test_primary_trigger(td_user)) then
			td_tried_to_fire_input = true;
		end

	until (1 == 0, 1);
end


script static void ending_1()

	// Begin streaming new zoneset.  This includes resources for the missile flight so we won't unload them.
	prepare_to_switch_to_zone_set( cin_m042_end );

	effect_kill_from_flag (environments\solo\m40_invasion\fx\energy\tractor_beam.effect, fx_tractor_base);
	fade_in(1,1,1, 5);
	effect_kill_from_flag (environments\solo\m40_invasion\fx\energy\tractor_beam.effect, fx_tractor_base);
	g_ics_player = player_get_first_alive();
	local long missile_show=pup_play_show(fake_missile);
	sleep_until(not pup_is_playing(missile_show),1);
	camera_shake_player (player0, 1, 1, 1, 3, epic_missile_camera_shake);
	sleep (30 * .9);

	
	sleep(1);
//	thread (turn_off_tractor_beam_sc());
	effects_distortion_enabled = true; 
	effects_perf_armageddon = 0;

	thread (tb_fx_delay());
	g_ics_player = player_get_first_alive();
	pup_play_show( "tractor_beam");

	sleep (249);
	//sleeping while vignette plays
	
	fade_out (0, 0, 0, 30);	
	//fade out for final part of vignette
	
	sleep (30);
	//fade_out isn't blocking, so sleeping until fade_out finishes

	//cinematic
	f_insertion_begin( "CINEMATIC" );
		
	cinematic_enter( cin_m042_end, true );
	cinematic_suppress_bsp_object_creation( true );
	switch_zone_set( cin_m042_end );
	cinematic_suppress_bsp_object_creation( false );
		
	f_start_mission( cin_m042_end );
	cinematic_exit_no_fade( cin_m042_end, true ); 

	game_won();	
end

script static void tb_fx_delay()
	sleep(1);
	thread (fx_tractor_fall_debris());
end

script static void turn_off_tractor_beam_sc()
	print ("turning off tractor beam FX and lighting for vignette");
//	effect_kill_from_flag (environments\solo\m40_invasion\fx\energy\tractor_beam_no_flares.effect, fx_tractor_base);
	interpolator_start( turn_off_trator_beam );		
	effect_new (environments\solo\m40_invasion\fx\energy\tractor_beam_destruction.effect, fx_tractor_base );
	print ("turning off tractor beam FX and lighting for vignette DONE");
end

script static void f_check_vehicle_left()
g_player_left = NONE;
	repeat
		if (volume_test_objects(tv_left_bubble, player0)) then
			g_player_left = player0;
		elseif (volume_test_objects(tv_left_bubble, player1)) then
			g_player_left = player1;
		elseif (volume_test_objects(tv_left_bubble, player2)) then
			g_player_left = player2;
		elseif (volume_test_objects(tv_left_bubble, player3)) then
			g_player_left = player3;
		else g_player_left = NONE;
		end
		if g_player_left != NONE and unit_in_vehicle(unit(g_player_left)) then
			b_player_in_vehicle_left = true;
		else
			b_player_in_vehicle_left = false;
		end
	until
	(epic_bubble_one_burst == true);
end

script static void f_check_vehicle_right()
g_player_right = NONE;
	repeat
		if (volume_test_objects(tv_right_bubble, player0)) then
			g_player_right = player0;
		elseif (volume_test_objects(tv_right_bubble, player1)) then
			g_player_right = player1;
		elseif (volume_test_objects(tv_right_bubble, player2)) then
			g_player_right = player2;
		elseif (volume_test_objects(tv_right_bubble, player3)) then
			g_player_right = player3;
		else g_player_left = NONE;
		end
		if g_player_right != NONE and unit_in_vehicle(unit(g_player_right)) then
			b_player_in_vehicle_right = true;
		else
			b_player_in_vehicle_right = false;
		end
	until
	(epic_bubble_two_burst == true);
end


script static void get_pos(object the_thing)
                local real my_x = 0;
                local real my_y = 0;
                local real my_z = 0;          

                local real player_x = 0;
                local real player_y = 0;
                local real player_z = 0;    
                
                local real x_limit_max = 8;
                local real x_limit_min = -3;
                
                local real y_limit_max = 8;
                local real y_limit_min = -3;
                
                local real z_limit_max = 8;
                local real z_limit_min = -3;
                
                local boolean breakout_of_loop = 0;
                
                repeat
                my_x = object_get_x (the_thing);
                my_y = object_get_y (the_thing);
                my_z = object_get_z (the_thing);
                
               player_x = object_get_x (player_get_first_valid());
               player_y = object_get_y (player_get_first_valid());
               player_z = object_get_z (player_get_first_valid());

               if (((player_x - my_x) < x_limit_max) and ((player_x - my_x) > x_limit_min) and ((player_y - my_y) < y_limit_max) and ((player_y - my_y) > y_limit_min) and ((player_z - my_z) < z_limit_max) and ((player_z - my_z) > z_limit_min)) then
         
               play_animation_on_object( the_thing, "any:idle");
               sleep(29);
               object_destroy(the_thing);
               s_asteroid_hit = (s_asteroid_hit + 1);
               
               breakout_of_loop = 1;
               end
                until (breakout_of_loop == 1, 1);
end

script static void f_epic_blip_timer()
	sleep_until (volume_test_players (tv_epic_02a));
	print("timer has started");
	sleep_until(ai_living_count(epic_mortardom_vehicles) <= 0);
	print("everyone is dead");
	sleep_s(20);
	print("sleeping for 20 seconds");
	if
		epic_bubbles_burst == 0
	then
		f_blip_object(epic_bubble_module_1, "neutralize");
		f_blip_object(epic_bubble_module_2, "neutralize");
		sleep_until(epic_bubbles_burst >= 1);
		f_unblip_object(epic_bubble_module_2);
		f_unblip_object(epic_bubble_module_2);
	else
	print("bubbles are dead");
	end
end
	
	
script dormant flocking_flak_fx_5

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

// --- End m40_invasion_epic.hsc ---

// --- Begin m40_invasion_fodder.hsc ---
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343
//
// 	Mission: 					m40_invasion_mission_cf
//	Insertion Points:	start 	- Beginning
//	ifo		- fodder
//	ija		- jackal alley
//	ici		- citidel exterior
//	iic		- citidel interior
//	ipo		- powercave/ battery room
//	ili		- librarian encounter			
//  ior		- ordnance training					
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343

// =================================================================================================
// =================================================================================================
// *** GLOBALS ***
// =================================================================================================
// =================================================================================================

// =================================================================================================
// =================================================================================================
// CANNON FODDER
// =================================================================================================
// =================================================================================================

global short s_objcon_fod = 0;
global short s_objcon_citext = 0;
global short s_objcon_lib = 0;
global short s_objcon_ord = 0;
global short s_val_player_loc = 0;
global boolean b_fodder_clear = FALSE;
global boolean b_event_1	= FALSE;
global boolean b_event_2	= FALSE;
global boolean b_intro_grunts_run = FALSE;
global boolean b_citadel_started = FALSE;
global boolean b_snipervalley_started = FALSE;
global boolean b_kami_grunts = FALSE;

global short s_fod_tort_area = 0;





// fodder insertion point --- ifo ---
//spawning the cannon fodder squads
script dormant f_fodder_main()
	data_mine_set_mission_segment ("m40_fodder" );
	wake (f_fodder_control );
	wake (f_fodder_control_tort_control );
	wake (f_fodder_cleanup );
	wake (f_lakeside_enc );
	
	sleep_until( volume_test_players (tv_spawn_cfodder), 1 );

		wake( f_fodder_vo );
		sleep_forever (m40_caves_tort_meet_palmer );
		
		thread( f_spawn_fod_initial() );
		
		sleep(5 );

		game_save_no_timeout();
	
end

script static void f_spawn_fod_initial()
	
	sleep_until( volume_test_players (tv_spawn_tort), 1 );

	object_create_folder (lakeside_crates);
	
	ai_place (front_grunts );
	ai_place (front_jaks ); 
	ai_place (lower_plat_jak );	
	ai_place (tower_jak);
	ai_place (rear_fod_sq );
	ai_place (mid_fod_sq);
	ai_place (rear_fod_turret );	
	
	//object_create (fodder_hidden_ghost_01);
	//object_create (fodder_hidden_ghost_02);
		
	wake (blip_fod);
		
	wake (mid_fod_sq_bonus_close);	
	
	object_wake_physics (dead_lakeside_jackal_01);
	object_wake_physics (dead_lakeside_jackal_02);
	
	object_damage_damage_section (downed_pelican, "engine_lf", 2000);
	
	ai_set_blind (rear_fod_turret, true);
	
	sleep_until (ai_living_count (fod_master) < 4
	or
	s_objcon_fod >= 35);
	
	object_create (lakeside_beam_rifle_rest);

	
	ai_set_blind (rear_fod_turret, false);

end

script dormant blip_fod()
	if
		volume_test_players (tv_spawn_tort)
	then
		sleep_s(3);
		f_blip_flag (fod_encounter_blip_flag_01, "neutralize");
		sleep(20);
		f_blip_flag (fod_encounter_blip_flag_02, "neutralize");
		sleep(20);
		f_blip_flag (fod_encounter_blip_flag_03, "neutralize");
		thread (unblip_fod_by_deaths_front());
		thread (unblip_fod_by_deaths_mid());
		thread (unblip_fod_by_deaths_rear());
	end
end

script static void unblip_fod_by_deaths_front()
	sleep_until (ai_living_count (front_jaks) < 2
	and
	ai_living_count (front_grunts) < 2);
	
	f_unblip_flag (fod_encounter_blip_flag_01);
end

script static void unblip_fod_by_deaths_mid()
	sleep_until (ai_living_count (lower_plat_jak) < 2
	and
	ai_living_count (tower_jak) < 1
	and
	ai_living_count (mid_fod_sq_fill_close) < 1);
	
	f_unblip_flag (fod_encounter_blip_flag_02);
end

script static void unblip_fod_by_deaths_rear()
	sleep_until (ai_living_count (mid_fod_sq) < 2
	and
	ai_living_count (mid_fod_sq_fill_far) < 2);
	
	f_unblip_flag (fod_encounter_blip_flag_03);
end

script dormant mid_fod_sq_bonus_close()
	sleep_until (ai_living_count (fod_master) < 15
	or
	s_objcon_fod > 29
	);
	if
		s_objcon_fod < 30
	then
		ai_place (mid_fod_sq_fill_close);
		print ("mid_fod_sq_fill_CLOSE bonus placed");
	else
		print ("player too far ahead, fod bonus not spawning");
	end
	wake (mid_fod_sq_bonus_far);
end

script dormant mid_fod_sq_bonus_far()
	sleep_until (ai_living_count (fod_master) < 15
	or
	s_objcon_fod > 34
	);
	if
		s_objcon_fod < 35
	then
		ai_place (mid_fod_sq_fill_far);
		print ("mid_fod_sq_fill_FAR bonus placed");
	else
		print ("player too far ahead, fod bonus not spawning");
	end
end

//objective control
script dormant f_fodder_control()
	//dprint("fodder_control:::active" );
	sleep_until( ( volume_test_players ( tv_fod_objcon_10 ) or ( s_objcon_fod >=  10 )  ), 1 );	
		// -------------------------------------------------
		if ( s_objcon_fod <=  10 ) then 
				dprint(" ::: fod ::: objective control 010" );
				s_objcon_fod = 10;
		end

//		thread(f_mus_m40_e01_begin);

	
	sleep_until( ( volume_test_players ( tv_fod_objcon_20 ) or ( s_objcon_fod >=  20 )  ), 1 );	
		// -------------------------------------------------
		if ( s_objcon_fod <=  20 ) then 
				dprint(" ::: fod ::: objective control 020" );
				s_objcon_fod = 20;
		end
		//dprint("::: spawning sq_cov_fod_grunts_hiding and sq_cov_fod_jackals_02" );

	sleep_until( ( volume_test_players ( tv_fod_objcon_30 ) or ( s_objcon_fod >=  30 )  ), 1 );	
		// -------------------------------------------------
		if ( s_objcon_fod <=  30 ) then 
				dprint(" ::: fod ::: objective control 030" );
				s_objcon_fod = 30;
		end

	
	
	garbage_collect_now( );
	
	sleep_until( ( volume_test_players ( tv_fod_objcon_33 ) or ( s_objcon_fod >=  33 )  ), 1 );	
		// -------------------------------------------------
		if ( s_objcon_fod <=  33 ) then 
				dprint(" ::: fod ::: objective control 033" );
				s_objcon_fod = 33;
		end
			
	sleep_until( ( volume_test_players ( tv_fod_objcon_35 ) or ( s_objcon_fod >=  35 )  ), 1 );	
		// -------------------------------------------------
		if ( s_objcon_fod <=  35 ) then 
				dprint(" ::: fod ::: objective control 035" );
				s_objcon_fod = 35;
		end
		garbage_collect_now( );
	sleep_until( ( volume_test_players ( tv_fod_objcon_37 ) or ( s_objcon_fod >=  37 )  ), 1 );	
		// -------------------------------------------------
		if ( s_objcon_fod <=  37 ) then 
				dprint(" ::: fod ::: objective control 037" );
				s_objcon_fod = 37;
		end	
	sleep_until( ( volume_test_players ( tv_fod_objcon_40 ) or ( s_objcon_fod >=  40 )  ), 1 );		
		// -------------------------------------------------
		if ( s_objcon_fod <=  40 ) then 
				dprint(" ::: fod ::: objective control 040" );
				s_objcon_fod = 40;
		end

end

script dormant f_fodder_control_tort_control()
	//dprint("fodder_control:::active" );
	//sleep_until( volume_test_object ( tv_fod_objcon_10, sq_fod_lake_tortoise ) or  ( volume_test_object ( tv_fod_objcon_10, tortoise_main ) ), 1 );	
		// -------------------------------------------------
		//dprint("tort 10" );
	
	sleep_until( volume_test_object ( tv_fod_objcon_20, main_mammoth ), 5 );	
		// -------------------------------------------------
		//dprint("tort 20" );
		s_fod_tort_area = 20;

	sleep_until( volume_test_object ( tv_fod_objcon_30, main_mammoth ) , 5 );	
		dprint("tort 30" );	
		s_fod_tort_area = 30;
	sleep_until( volume_test_object ( tv_fod_objcon_33, main_mammoth ) , 5 );	
		dprint("tort 33" );	
		s_fod_tort_area = 33;
		
	sleep_until( volume_test_object ( tv_fod_objcon_35, main_mammoth ) , 5 );	
		dprint("tort 35" );	
		s_fod_tort_area = 35;
	sleep_until( volume_test_object ( tv_fod_objcon_37, main_mammoth ) , 5 );	
		// -------------------------------------------------
		dprint("tort 37" );
		s_fod_tort_area = 37;
	
	sleep_until( volume_test_object ( tv_fod_objcon_40, main_mammoth )  , 1 );		
		// -------------------------------------------------
		dprint("tort 40" );
		s_fod_tort_area = 40;
end

/*//////////////////////////////////////////////////
		GIANT VEHICLE TORTOISE MOVES THROUGH FODDER
*///////////////////////////////////////////////////

script dormant f_fodder_mammoth_playback()
	dprint("f_fodder_mammoth_playback running" );
	sleep_s(1);
	wake (tortoise_lakeside_recorded );
	dprint("MAMMOTH!!!!! Running on Fodder scripts" );
	unit_recorder_set_playback_rate_smooth (main_mammoth, .3, 4 );
	dprint("Tortoise at .3 speed" );
	sleep_until( volume_test_object (tv_fod_objcon_30, main_mammoth), 1);	
	unit_recorder_set_playback_rate_smooth (main_mammoth, .1, 1 );
	dprint("Tortoise at .1 speed" );
	
//	sleep_until( volume_test_object (tv_fod_objcon_33, main_mammoth), 1);	
		if 
			(volume_test_players (tv_tortoise_middle_01)
			or
			volume_test_players (tv_tortoise_bottom_01))
		then
			print ("player inside mammoth, stopping for a moment");
			unit_recorder_pause_smooth (main_mammoth, TRUE, 2 );
			tort_stopped = TRUE;
			sleep_until (not (volume_test_players (tv_tortoise_middle_01))
			and (not (volume_test_players (tv_tortoise_bottom_01))
			)
			or
			ai_living_count (fod_master) < 9
			);	
			sleep_s(6);
			unit_recorder_pause_smooth (main_mammoth, FALSE, 2 );
			tort_stopped = FALSE;
		end	

	print ("player outside mammoth, it continues");
	sleep_until( volume_test_object (tv_fod_objcon_35, main_mammoth)
	or
	ai_living_count (fod_master) < 5
	);	

	f_unblip_flag (fod_encounter_blip_flag_01);
	f_unblip_flag (fod_encounter_blip_flag_02);
	f_unblip_flag (fod_encounter_blip_flag_03);
	
//	sleep_until( volume_test_object (tv_fod_objcon_37, main_mammoth) 
//	or
//	ai_living_count (fod_master) < 7
//	);	

	unit_recorder_set_playback_rate_smooth (main_mammoth, .6, 3 );
	dprint("Tortoise at .6 speed" );

	sleep_until( volume_test_object (tv_fod_objcon_35, main_mammoth), 1);	
	unit_recorder_set_playback_rate_smooth (main_mammoth, .3, 3 );
	dprint("Tortoise at .3 speed" );

	if 
		game_coop_player_count() == 1
	then
		thread (tort_fodder_repeating_speed_test());
		dprint("tort_fodder_repeating_speed_test" );
	end

	sleep_until( volume_test_object (tv_fod_objcon_37, main_mammoth)
	or
	ai_living_count (fod_master) < 2
	);	
	unit_recorder_set_playback_rate_smooth (main_mammoth, .6, 3 );
	dprint("Tortoise at .6 speed" );
end

script static void f_pause_play_tort_playback( real time )
	unit_recorder_pause_smooth (main_mammoth, TRUE, 2 );
		sleep_s( time );
		sleep_until( any_players_in_vehicle() , 1 );
	unit_recorder_pause_smooth (main_mammoth, FALSE, 2 );
end

script dormant f_fodder_cleanup()
	sleep_until( volume_test_players ( tv_lakeside_04 ) , 1 );
		dprint("cleanup fodder" );
		garbage_collect_now( );
end

script static void tort_fodder_repeating_speed_test()
	print ("***************** Fodder Custom Speed Test for Single Player *****************");		
	repeat
		if
			(not (volume_test_players (tv_tortoise_top_01))
			and
			not (volume_test_players (tv_tortoise_middle_01))
			and
			not (volume_test_players (tv_tortoise_bottom_01))
			and
			objects_distance_to_object (player0, main_mammoth) < 20)
		then
			unit_recorder_set_playback_rate_smooth (main_mammoth, .1, 3);		
			print ("Player on the ground near the Tortoise...");
			print ("TORT SPEED REPEATING = .1");

		elseif
			(volume_test_players (tv_tortoise_top_01)
			or
			volume_test_players (tv_tortoise_middle_01)
			or
			volume_test_players (tv_tortoise_bottom_01))
		then
			unit_recorder_set_playback_rate_smooth (main_mammoth, .7, 4);
			print ("Player on the Tortoise...");
			print ("TORT SPEED REPEATING = .2");
			
		elseif
			(not (volume_test_players (tv_tortoise_top_01))
			and
			not (volume_test_players (tv_tortoise_middle_01))
			and
			not (volume_test_players (tv_tortoise_bottom_01))
			and
			objects_distance_to_object (player0, main_mammoth) > 20)
		then

			if
				objects_distance_to_point (player0, tort_top_patrol.rear) > objects_distance_to_point (player0, tort_top_patrol.front)
			then
				unit_recorder_set_playback_rate_smooth (main_mammoth, .7, 4);		
				print ("Player really far ahead of Tortoise...");
				print ("TORT SPEED REPEATING = 1.2");
			elseif
				objects_distance_to_point (player0, tort_top_patrol.rear) < objects_distance_to_point (player0, tort_top_patrol.front)
			then
				unit_recorder_set_playback_rate_smooth (main_mammoth, .1, 4);		
				print ("Player really far behind of Tortoise...");
				print ("TORT SPEED REPEATING = .1");
			end
			
		else
			print ("Tort Speed Test unsure what to do. Where's the Tortoise?");		
		end
		
		sleep (30 * 4);
		
	until (volume_test_object (tv_tort_jackal, main_mammoth), 1);		
	print ("Tort Fodder Speed Test Done");
end

// =================================================================================================
// =================================================================================================
// DEBUG
// =================================================================================================
// =================================================================================================

// =================================================================================================
// =================================================================================================
// VO 
// =================================================================================================
// =================================================================================================

script dormant f_fodder_vo()
	sleep(1 );			
end

// --- End m40_invasion_fodder.hsc ---

// --- Begin m40_invasion_fx.hsc ---
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343
//
// Mission: 					m40_invasion_fx
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

script startup m40_invasion_fx()

	if b_debug then 
		print ("::: M40 - FX :::");
	end
	
	thread(test_fx());
end

script static void test_fx()
	print ("::: test FX :::");
	//effect_new( cinematics\cin_verticalslice\fx\rig_spark_pipe.effect, test_fx );
	effect_attached_to_camera_new( environments\solo\m40_invasion\fx\dust\particulates.effect );
end


script static void fx_skybox_lensflares()
	print ("fx_skybox_lensflares");
	effect_new(environments\solo\m40_invasion\fx\lens_flare\skylensflare1.effect, fx_skybox_lakeflare);
	effect_new(environments\solo\m40_invasion\fx\lens_flare\skylensflare2.effect, fx_skyboxflare);
end


// ===========================================================
// Tractor Beam Destruction Vignette Dust and Debris FX
// ===========================================================

//	Falling Debris and Dust Impacts
script static void fx_tractor_fall_debris()
	dprint("play_fx_tractor_beam_falling_debris()");
	effect_new_on_object_marker(environments\solo\m40_invasion\fx\dust\tractor_dust_falling_debris_01.effect, air_strike_destruction, fx_destruct_debris_03);
	effect_new_on_object_marker(environments\solo\m40_invasion\fx\dust\tractor_dust_falling_debris_01.effect, air_strike_destruction, fx_destruct_debris_02);
	sleep(6);
	effect_new_on_object_marker(environments\solo\m40_invasion\fx\dust\tractor_dust_falling_debris_02.effect, air_strike_destruction, fx_destruct_debris_01);
	effect_new_on_object_marker(environments\solo\m40_invasion\fx\dust\tractor_dust_falling_debris_01.effect, air_strike_destruction, fx_destruct_debris_04);
	sleep(8);
	effect_new_on_object_marker(environments\solo\m40_invasion\fx\dust\tractor_dust_falling_debris_01.effect, air_strike_destruction, fx_destruct_debris_05);
	effect_new_on_object_marker(environments\solo\m40_invasion\fx\dust\tractor_dust_falling_debris_02.effect, air_strike_destruction, fx_destruct_debris_09);
//	effect_new_on_object_marker(environments\solo\m40_invasion\fx\dust\tractor_dust_falling_debris_01.effect, air_strike_destruction, fx_destruct_debris_06);
	sleep(30);
	effect_new(environments\solo\m40_invasion\fx\dust\tractor_debris_impact_01.effect, fx_tractor_impact_01);
	effect_new(environments\solo\m40_invasion\fx\dust\tractor_debris_impact_01.effect, fx_tractor_impact_02);
	sleep(15);
	effect_new(environments\solo\m40_invasion\fx\dust\tractor_debris_impact_02.effect, fx_tractor_impact_03);
	sleep(10);
	effect_new(environments\solo\m40_invasion\fx\dust\tractor_debris_impact_01.effect, fx_tractor_impact_04);
	sleep(15);
	effect_new(environments\solo\m40_invasion\fx\dust\tractor_debris_impact_02.effect, fx_tractor_impact_05);
	sleep(20);
	effect_new_on_object_marker(environments\solo\m40_invasion\fx\dust\tractor_dust_falling_debris_02.effect, air_strike_destruction, fx_destruct_debris_07);
//	effect_new_on_object_marker(environments\solo\m40_invasion\fx\dust\tractor_dust_falling_debris_01.effect, air_strike_destruction, fx_destruct_debris_08);
end


// --- End m40_invasion_fx.hsc ---

// --- Begin m40_invasion_infinity.hsc ---
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343
//
// 	Mission: 					m40_invasion_infinity
//										
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343

// =================================================================================================
// =================================================================================================
// *** GLOBALS ***
// =================================================================================================
// =================================================================================================
global short s_infinity_progress = 0;
global boolean b_infinity_at_ordnance = false;
global boolean b_infinity_at_epic = false;
global boolean b_infinity_at_epic_end = false;
// =================================================================================================
// =================================================================================================
// *** START-UP ***
// =================================================================================================
// =================================================================================================

/*
script static void uuu()
	object_move_to_point (infinity, 10, pts_infinity_path.p0);
end

script static void m40_infinity_main()
	print ("inf");
		
	thread (f_track_infinity_movement());	
	sleep_s(3);	
	object_create (infinity);
	//sleep(1);
	object_set_scale ( infinity, 0.01, 0 );
	//
	print ("infinity, 0.01, 0 ");
	object_set_scale ( infinity, 0.5, 7 * 30 );
	print ("infinity, 0.5, 7 * 30, sleeping 30");
	sleep(30);
	object_set_scale ( infinity, 1.0, 13 * 30 );
	print ("infinity, 1.0, 13 * 30");
	wake( m40_ord_epic_flock_controller );
	//object_set_scale (infinity, 0.01, 0);
	//object_set_scale (infinity, 1, 5);
	sleep_until (volume_test_players (tv_ord_spawn_infinity), 1);
		wake(f_smooth_inf_turn);
		object_move_to_point (infinity, 20, pts_infinity_path.p0);
		
		thread (rotate_xyz(infinity, 5,5,5, -5,0,0));
		object_move_to_point (infinity, 8, pts_infinity_path.p0_fullstop);
		//p0_fullstop
		dprint("inf prog = 5");
		s_infinity_progress = 5;
		
		sleep_until( (b_ord_moveout and b_ord_hog_2_dropped ) or s_objcon_ord >= 10, 1);	
			thread (rotate_xyz(infinity, 35,35,35, -150,0,0));
			object_move_to_point (infinity, 20, pts_infinity_path.p2);
			s_infinity_progress = 8;
			thread(f_inf_create_guns());
			object_move_to_point (infinity, 15, pts_infinity_path.p3);
			b_infinity_at_ordnance = true;
		sleep_until(s_infinity_progress == 10, 1);	
			b_fire_ordnance_training = false;
			
			if ai_living_count(sq_cov_ord_wraith_leader.general) > 0 then
				sleep_s(18);
			else
				sleep_s(5);
			end
			b_infinity_at_ordnance = false;
			thread (rotate_xyz(infinity, 45,45,45, -90,0,0));
			object_move_to_point (infinity, 45, pts_infinity_path.p5);
			b_infinity_at_epic = true;
		sleep_until(s_infinity_progress == 20, 1);			
			object_move_to_point (infinity, 15, pts_infinity_path.p6);	
			b_infinity_at_epic = false;
			b_infinity_at_epic_end = true;
end

script dormant f_smooth_inf_turn()
	dprint("f_smooth_inf_turn");
	sleep_s(2);
	thread(camera_shake_all_coop_players ( 0.3, 0.11, 9, 2));
	sleep_s(8);
	dprint("s_infinity_progress = 3");
	s_infinity_progress = 3;
	thread(camera_shake_all_coop_players ( 0.5, 0.33, 10, 5));
	thread (rotate_xyz(infinity, 10,10,10, -10,0,0));
	
end

script static void f_track_infinity_movement()
	sleep_until(volume_test_players(tv_infinity_moveup_1) or s_objcon_ord >= 50, 1);
		s_infinity_progress = 10;
		
	sleep_until(volume_test_players(tv_infinity_moveup_2), 1);
		s_infinity_progress = 20;
end


script static void rotate_xyz(object obj, real yaw_time, real pitch_time, real roll_time, real yaw_degrees, real pitch_degrees, real roll_degrees)
	object_rotate_by_offset (obj, yaw_time,pitch_time,roll_time, yaw_degrees,pitch_degrees,roll_degrees);
end


script dormant m40_ord_epic_flock_controller()


	
	sleep_until( s_infinity_progress >= 3 , 1 );
		flock_create(flocks_inf_falcons);
 	sleep_until( s_infinity_progress >= 8 , 1 );
		flock_destroy(flocks_inf_falcons);
		flock_create(flocks_ord_falcons);
		flock_create(flocks_ord_banshees);
 	sleep_until( s_infinity_progress >= 10 , 1 );
 		flock_destroy(flocks_ord_falcons);
 		flock_destroy(flocks_ord_banshees);
	 	flock_create(flocks_epic_falcons);
	 	flock_create(flocks_epic_banshee);
	 	flock_create(flocks_epic_phantoms);
	 	flock_create(flocks_epic_phantoms_far);

end

script static void f_inf_create_guns()
	ai_place(infinity_guns);
	sleep(1);
	objects_attach(infinity, "m_gun_mid_starboard", ai_vehicle_get_from_spawn_point(infinity_guns.inf_gun_1), "" );
	objects_attach(infinity, "m_gun_mid_port", ai_vehicle_get_from_spawn_point(infinity_guns.inf_gun_2), "" );
	objects_attach(infinity, "m_gun_mid_rear_starboard", ai_vehicle_get_from_spawn_point(infinity_guns.inf_gun_3), "" );
	objects_attach(infinity, "m_gun_mid_rear_port", ai_vehicle_get_from_spawn_point(infinity_guns.inf_gun_4), "" );
	objects_attach(infinity, "m_gun_fore_starboard", ai_vehicle_get_from_spawn_point(infinity_guns.inf_gun_5), "" );
	objects_attach(infinity, "m_gun_fore_port", ai_vehicle_get_from_spawn_point(infinity_guns.inf_gun_6), "" );
	objects_attach(infinity, "m_gun_aft_starboard", ai_vehicle_get_from_spawn_point(infinity_guns.inf_gun_7), "" );
	objects_attach(infinity, "m_gun_aft_port", ai_vehicle_get_from_spawn_point(infinity_guns.inf_gun_8), "" );
	dprint("attached infinity guns");
	sleep(10);
	load_inf_gunners();
end



script static void load_inf_gunners()


       //ai_place(biggun);
       //sleep(5);
       ai_place (inf_gunners);
       //(ai_place sq_sky_frigate01_left_gunners)
       ai_cannot_die (inf_gunners, TRUE);
       //(ai_cannot_die sq_sky_frigate01_left_gunners TRUE)
       
       //ai_set_clump (sq_sky_frigate01_right_gunners, 1);

       //ai_designer_clump_perception_range (600);
       
       vehicle_load_magic (ai_vehicle_get_from_spawn_point(infinity_guns.inf_gun_1), "", ai_get_unit (inf_gunners.gunner_1));
       vehicle_load_magic (ai_vehicle_get_from_spawn_point(infinity_guns.inf_gun_2), "", ai_get_unit (inf_gunners.gunner_2));
       vehicle_load_magic (ai_vehicle_get_from_spawn_point(infinity_guns.inf_gun_3), "", ai_get_unit (inf_gunners.gunner_3));
       vehicle_load_magic (ai_vehicle_get_from_spawn_point(infinity_guns.inf_gun_4), "", ai_get_unit (inf_gunners.gunner_4));
       vehicle_load_magic (ai_vehicle_get_from_spawn_point(infinity_guns.inf_gun_5), "", ai_get_unit (inf_gunners.gunner_5));
       vehicle_load_magic (ai_vehicle_get_from_spawn_point(infinity_guns.inf_gun_6), "", ai_get_unit (inf_gunners.gunner_6));
       vehicle_load_magic (ai_vehicle_get_from_spawn_point(infinity_guns.inf_gun_7), "", ai_get_unit (inf_gunners.gunner_7));
       vehicle_load_magic (ai_vehicle_get_from_spawn_point(infinity_guns.inf_gun_8), "", ai_get_unit (inf_gunners.gunner_8));
       //vehicle_load_magic (object_at_marker dm_sky_frigate01b "turret_right_bottom02") "" (ai_get_object sq_sky_frigate01_right_gunners/bottom02))
       //(vehicle_load_magic (object_at_marker dm_sky_frigate01b "turret_left_bottom01") "" (ai_get_object sq_sky_frigate01_left_gunners/bottom01))
       //(vehicle_load_magic (object_at_marker dm_sky_frigate01b "turret_left_bottom02") "" (ai_get_object sq_sky_frigate01_left_gunners/bottom02))
end

global boolean b_fire_ordnance_training = true;

script command_script cs_ord_inf_gun()
	
	
	repeat
		begin_random
			begin
				cs_shoot_point(true, pts_ord_infinity_fire.p1);
				sleep_rand_s(1.0,2);
				cs_shoot_point(false, pts_ord_infinity_fire.p1);
			end
		
			begin
				if b_fire_ordnance_training then
					cs_shoot_point(true, pts_ord_infinity_fire.p0);
					sleep_rand_s(1.0,2);
					cs_shoot_point(false, pts_ord_infinity_fire.p0);
				end
			end
		
			begin
				cs_shoot_point(true, pts_ord_infinity_fire.p2);
				sleep_rand_s(1.0,2);
				cs_shoot_point(false, pts_ord_infinity_fire.p2);
			end
			
			begin
				if b_fire_ordnance_training then
					cs_shoot_point(true, pts_ord_infinity_fire.p3);
					sleep_rand_s(1.0,2);
					cs_shoot_point(false, pts_ord_infinity_fire.p3);
				end
			end
		
			begin
				cs_shoot_point(true, pts_ord_infinity_fire.p4);
				sleep_rand_s(1.0,2);
				cs_shoot_point(false, pts_ord_infinity_fire.p4);
			end
		
			begin
				if b_fire_ordnance_training then
					cs_shoot_point(true, pts_ord_infinity_fire.p5);
					sleep_rand_s(1.0,2);
					cs_shoot_point(false, pts_ord_infinity_fire.p5);
				end
			end

			begin
				cs_shoot_point(true, pts_ord_infinity_fire.p6);
				sleep_rand_s(1.0,2);
				cs_shoot_point(false, pts_ord_infinity_fire.p6);
			end
		
			begin
				if b_fire_ordnance_training then
					cs_shoot_point(true, pts_ord_infinity_fire.p7);
					sleep_rand_s(1.0,2);
					cs_shoot_point(false, pts_ord_infinity_fire.p7);
				end
			end
			
				begin
					cs_shoot_point(true, pts_ord_infinity_fire.pMainTarget);
					sleep_rand_s(1.0,2);
					cs_shoot_point(false, pts_ord_infinity_fire.pMainTarget);
				end			
		end

	until(b_fire_ordnance_training == false);
	

		if ai_living_count(sq_cov_ord_wraith_leader.general) > 0 then
			begin_random
				begin
					cs_shoot_point(true, pts_ord_infinity_fire.pMainTarget);
					sleep_rand_s(1.5,2);
					cs_shoot_point(false, pts_ord_infinity_fire.pMainTarget);
				end
				
				begin
					cs_shoot_point(true, pts_ord_infinity_fire.pMainTarget4);
					sleep_rand_s(1.5,2);
					cs_shoot_point(false, pts_ord_infinity_fire.pMainTarget4);
				end
				
				begin
					cs_shoot_point(true, pts_ord_infinity_fire.pMainTarget2);
					sleep_rand_s(1.5,2);
					cs_shoot_point(false, pts_ord_infinity_fire.pMainTarget2);
				end
				
				begin
					cs_shoot_point(true, pts_ord_infinity_fire.pMainTarget3);
					sleep_rand_s(1.5,2);
					cs_shoot_point(false, pts_ord_infinity_fire.pMainTarget3);
				end
				
				begin
					cs_shoot_point(true, pts_ord_infinity_fire.pMainTarget4);
					sleep_rand_s(1.5,2);
					cs_shoot_point(false, pts_ord_infinity_fire.pMainTarget4);
				end
				
				begin
					cs_shoot_point(true, pts_ord_infinity_fire.pMainTarget2);		
					sleep_rand_s(1.5,2);
					cs_shoot_point(false, pts_ord_infinity_fire.pMainTarget2);
				end
				
				begin
					cs_shoot_point(true, pts_ord_infinity_fire.pMainTarget);
					sleep_rand_s(1,2);
					cs_shoot_point(false, pts_ord_infinity_fire.pMainTarget);
				end
			
			
			end //end random
			
			if ai_living_count(sq_cov_ord_wraith_leader.general) > 0 then			
				
				f_kill_leader_ord();
			end
		
		end // end of living
		
		
	sleep_until(b_infinity_at_epic == true);		
		repeat
			begin_random
				begin
					cs_shoot_point(true, pts_ord_infinity_fire.pe1);
					sleep_rand_s(1.0,2);
					cs_shoot_point(false, pts_ord_infinity_fire.pe1);
				end
			
				begin
						cs_shoot_point(true, pts_ord_infinity_fire.pe0);
						sleep_rand_s(1.0,2);
						cs_shoot_point(false, pts_ord_infinity_fire.pe0);
				end
			
				begin
					cs_shoot_point(true, pts_ord_infinity_fire.pe2);
					sleep_rand_s(1.0,2);
					cs_shoot_point(false, pts_ord_infinity_fire.pe2);
				end
				
				begin
						cs_shoot_point(true, pts_ord_infinity_fire.pe3);
						sleep_rand_s(1.0,2);
						cs_shoot_point(false, pts_ord_infinity_fire.pe3);
				end
			
				begin
					cs_shoot_point(true, pts_ord_infinity_fire.pe4);
					sleep_rand_s(1.0,2);
					cs_shoot_point(false, pts_ord_infinity_fire.pe4);
				end
			
				begin
						cs_shoot_point(true, pts_ord_infinity_fire.pe5);
						sleep_rand_s(1.0,2);
						cs_shoot_point(false, pts_ord_infinity_fire.pe5);
				end
	
				begin
					cs_shoot_point(true, pts_ord_infinity_fire.pe6);
					sleep_rand_s(1.0,2);
					cs_shoot_point(false, pts_ord_infinity_fire.pe6);
				end
			
				begin
						cs_shoot_point(true, pts_ord_infinity_fire.pe7);
						sleep_rand_s(1.0,2);
						cs_shoot_point(false, pts_ord_infinity_fire.pe7);
				end
			end
	
		until( b_infinity_at_epic_end == true );		
		
end

//
*/



// --- End m40_invasion_infinity.hsc ---

// --- Begin m40_invasion_insertion.hsc ---
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

; Insertion

//global short s_cavern_ins_idx 			= 0;	;; default / start
//global short s_mammoth_ins_idx 			= 1;	;; default / start
//global short s_fodder_ins_idx 			= 2;	;; default / start
//global short s_lakeside_ins_idx 		= 3;	;; default / start
////global short s_cliffside_ins_idx 		= 4;	;; default / start
//global short s_prechopper_ins_idx 	= 4;	;; default / start
//global short s_chopper_ins_idx 			= 5;	;; default / start
//global short s_waterfall_ins_idx 		= 6;	;; default / start
//global short s_jackal_ins_idx	 			= 7;	;; default / start
//global short s_citadel_ins_idx			= 8;	;; default / start
////global short s_battery_ins_idx			= 11;	;; default / start
//global short s_powercave_ins_idx		= 9;	;; default / start
////global short s_battery_turr_ins_idx	= 12;	;; default / start
//global short s_librarian_ins_idx		= 10;	;; default / start
//global short s_ordnance_ins_idx			= 11;	;; default / start
//global short s_epic_ins_idx 				= 12;	;; default / start


// INSERTION POINTS
script static short DEF_INSERTION_INDEX_CAVERN()								0;		end
script static short DEF_INSERTION_INDEX_MAMMOTH()								1;		end
script static short DEF_INSERTION_INDEX_FODDER()								2;		end
script static short DEF_INSERTION_INDEX_LAKESIDE()							3;		end
//script static short DEF_INSERTION_INDEX_CLIFFSIDE()							04;		end
script static short DEF_INSERTION_INDEX_PRECHOPPER()						4;		end
script static short DEF_INSERTION_INDEX_CHOPPER()								5;		end
script static short DEF_INSERTION_INDEX_WATERFALL()							6;		end
script static short DEF_INSERTION_INDEX_JACKAL()								7;		end
script static short DEF_INSERTION_INDEX_CITADEL()								8;		end
//script static short DEF_INSERTION_INDEX_BATTERY()								10;		end
script static short DEF_INSERTION_INDEX_POWERCAVE()							9;		end
//script static short DEF_INSERTION_INDEX_BATTERY_TURR						12;		end
script static short DEF_INSERTION_INDEX_LIBRARIAN()							10; 	end
//script static short DEF_INSERTION_INDEX_ORDINANCE()							14;		end
script static short DEF_INSERTION_INDEX_EPIC()									11;		end

// test insertion
//script static short DEF_INSERTION_INDEX_CITADEL_EXT_TEST()			109;		end
//script static short DEF_INSERTION_INDEX_CITADEL_INT()						110;		end
//script static short DEF_INSERTION_INDEX_CITADEL_INT_TEST()			111;		end

// ZONE SET INDEXES
script static short DEF_S_ZONESET_CAV()													0;		end
script static short DEF_S_ZONESET_CAV_TORT_GUN()								1;		end
script static short DEF_S_ZONESET_GUN_FODDER()									2;		end
script static short DEF_S_ZONESET_FODDER()											3;		end
script static short DEF_S_ZONESET_FODDER_CHOPPER()							4;		end
script static short DEF_S_ZONESET_CHOPPER_WATERFALL_PRE()				5;		end
script static short DEF_S_ZONESET_WATERFALL_PRE_VALE()					6;		end
script static short DEF_S_ZONESET_PRE_VALE()										7;		end
script static short DEF_S_ZONESET_VALE_VALE()										8;		end
script static short DEF_S_ZONESET_VALE_HALL()										9;		end
script static short DEF_S_ZONESET_HALL_BATTERY()								10;		end
script static short DEF_S_ZONESET_BATTERY()											11;		end
script static short DEF_S_ZONESET_BATTERY_CAVERN()							12;		end
script static short DEF_S_ZONESET_CAVERN_LIBRARIAN_VALE()				13;		end
script static short DEF_S_ZONESET_LIBRARIAN_VALE()							14;		end
//script static short DEF_S_ZONESET_VALE_INFINITY_REAR()					15;		end
//script static short DEF_S_ZONESET_REAR_ORD_EPIC()								16;		end
//script static short DEF_S_ZONESET_PRE_EPIC()										17;		end
script static short DEF_S_ZONESET_EPIC()												15;		end
script static short DEF_S_ZONESET_EPIC_EXIT()										16;		end
script static short DEF_S_ZONESET_TRACTOR()											20;		end
script static short DEF_S_ZONESET_PRE_CHOP_WATER()							21;		end
script static short DEF_S_ZONESET_WATER_PRE()										22;		end
script static short DEF_S_ZONESET_CIN_INTRO()										23;		end
script static short DEF_S_ZONESET_ELE_EPIC()										24;		end
script static short DEF_S_ZONESET_CIN_M041_LIBRARIAN()					25;		end
script static short DEF_S_ZONESET_CIN_M042_END()								26;		end




; Zone Sets
//global short s_zoneset_all					= 0;

; ==========================================s=======================================================
; =================================================================================================
; *** INSERTIONS ***
; =================================================================================================
; =================================================================================================


; =================================================================================================
; CAVERN
; =================================================================================================

script static void ica()
	f_insertion_reset( DEF_INSERTION_INDEX_CAVERN() );
end

script static void ins_cavern()

//	f_insertion_begin( "CAVERN" );
//		f_insertion_zoneload( DEF_S_ZONESET_CIN_INTRO(), FALSE );
//		f_insertion_playerwait();
//		//f_insertion_teleport( XXX.p0, XXX.p1, XXX.p2, XXX.p3 );
//		f_insertion_playerprofile( caverns_profile, FALSE );
//	f_insertion_end();


	f_insertion_begin( "CINEMATIC" );
	
	cinematic_enter( cin_m040_intro, TRUE );
	cinematic_suppress_bsp_object_creation( TRUE );
	switch_zone_set( cin_intro );
	cinematic_suppress_bsp_object_creation( FALSE );
	
	hud_play_global_animtion (screen_fade_out);
		
	f_start_mission( cin_m040_intro );
	cinematic_exit_no_fade( cin_m040_intro, TRUE ); 
	dprint( "Cinematic exited!" );

//	if (b_cinematics and (not b_editor) or (b_editor_cinematics)) then
		
//		cinematic_enter(cin_m040_intro, TRUE);
//		cinematic_suppress_bsp_object_creation(TRUE);
//		
////		switch_zone_set (cin_intro);
////		sleep ( 1 );
////		sleep_until (current_zone_set_fully_active() == s_cavern_ins_idx, 1);
////		sleep ( 1 );
//		
//		cinematic_suppress_bsp_object_creation(FALSE);
//		
//		f_start_mission(cin_m040_intro);
//		cinematic_exit_no_fade(cin_m040_intro, TRUE); 
//		
//		print ("Cinematic exited!"); 
//	end

	thread (ins_mammoth());

	// ---------------------------------------------------------------------------------------------

end



; =================================================================================================
; MAMMOTH
; =================================================================================================

script static void ima()
	f_insertion_reset( DEF_INSERTION_INDEX_MAMMOTH() );
end

script static void ins_mammoth()

	f_insertion_begin( "MAMMOTH" );
	f_insertion_zoneload( DEF_S_ZONESET_CAV(), FALSE );
	f_insertion_playerwait();
	f_insertion_teleport( ps_insertion_cavern.p0, ps_insertion_cavern.p1,ps_insertion_cavern.p2,ps_insertion_cavern.p3 );
	f_insertion_playerprofile( caverns_profile, FALSE );
	f_insertion_end();

	wake (cavern_cutscene_control);	
	wake (main_mammoth_invincible);
	
	thread (m40_dg_check());	
	
	thread (f_hud_boot_up());
	thread (tort_runover_kills());
	thread (test_pv_out());

	kill_volume_disable (playerkill_soft_lakeside_backtrack);
	soft_ceiling_enable ("caverns_backtrack_01", false);
	soft_ceiling_enable ("caverns_backtrack_02", false);
	soft_ceiling_enable ("caverns_backtrack_03", false);
	soft_ceiling_enable ("cliffside_backtrack_01", false);
	soft_ceiling_enable ("prechop_backtrack_01", false);
	soft_ceiling_enable ("chop_backtrack_01", false);
	soft_ceiling_enable ("prechop_new", false);
		
	effects_distortion_enabled = FALSE; 
	
	thread (fx_skybox_lensflares());
	
	kill_volume_disable (playerkill_soft_fodder_backtrack_01);
	kill_volume_disable (playerkill_soft_prechopper_05);
	
	soft_ceiling_enable (caverns_backtrack_03, false);


	// ---------------------------------------------------------------------------------------------

end



; =================================================================================================
; CANNONFODDER
; =================================================================================================

script static void ifo()
	f_insertion_reset( DEF_INSERTION_INDEX_FODDER() );
end

script static void ins_fodder()

	f_insertion_begin( "FODDER" );
		f_insertion_zoneload( DEF_S_ZONESET_GUN_FODDER(), FALSE );
		f_insertion_playerwait();
		f_insertion_teleport( ps_insertion_fodder.p0, ps_insertion_fodder.p1, ps_insertion_fodder.p2, ps_insertion_fodder.p3 );
		f_insertion_playerprofile( fodder_profile, FALSE );
	f_insertion_end();

	// forces setup of mission functions to put game into proper state
	// insertion setup block -----------------------------------------------------------------------
	b_m40_music_progression = 30;
	object_create_folder (fodder_crates);

	object_create (main_mammoth);
	object_teleport_to_ai_point (main_mammoth, tortoise_main_pt.p13);
	
	sleep (1);
		
	unit_recorder_setup_for_unit (main_mammoth, tortoise_0716_a);
	unit_recorder_play (main_mammoth);
	unit_recorder_set_time_position (main_mammoth, 65);
	unit_recorder_set_playback_rate (main_mammoth, .5);
	unit_recorder_pause (main_mammoth, false);
	
	sleep (1);

	wake (f_fodder_main);
	wake (f_fodder_mammoth_playback);
	
	wake (main_mammoth_invincible);
	
	thread (m40_dg_check());
	thread (f_hud_boot_up());
	thread (tort_runover_kills());
	
	soft_ceiling_enable ("cliffside_backtrack_01", false);
	soft_ceiling_enable ("prechop_backtrack_01", false);
	soft_ceiling_enable ("chop_backtrack_01", false);
				
	object_teleport_to_ai_point (fod_pod_01, pts_fod.tower_location);

	kill_volume_disable (playerkill_soft_lakeside_backtrack);
	kill_volume_disable (playerkill_soft_prechopper_05);

	
	effects_distortion_enabled = FALSE; 
	
	thread (fx_skybox_lensflares());
	
	// ---------------------------------------------------------------------------------------------

end



; =================================================================================================
; LAKESIDE
; =================================================================================================

script static void ila()
	f_insertion_reset( DEF_INSERTION_INDEX_LAKESIDE() );
end

script static void ins_lakeside()

	f_insertion_begin( "LAKESIDE" );
		f_insertion_zoneload( DEF_INSERTION_INDEX_LAKESIDE(), FALSE );
		f_insertion_playerwait();
		f_insertion_teleport( ps_insertion_lakeside.p0, ps_insertion_lakeside.p1, ps_insertion_lakeside.p2, ps_insertion_lakeside.p3 );
		f_insertion_playerprofile( default_single_respawn, FALSE );
	f_insertion_end();

	b_m40_music_progression = 40;
	thread (tort_runover_kills());

	//----------------------TORTOISE INSERTION SETUP-------------------------------//
	
	object_create (main_mammoth);
	object_teleport_to_ai_point (main_mammoth, tortoise_main_pt.p19);
	
	sleep (1);
		
	unit_recorder_setup_for_unit (main_mammoth, tortoise_0716_a);
	unit_recorder_play (main_mammoth);
	unit_recorder_set_time_position (main_mammoth, 86);
	unit_recorder_set_playback_rate (main_mammoth, .7);
	unit_recorder_pause (main_mammoth, true);
	
	sleep (1);
	
	unit_recorder_pause_smooth (main_mammoth, false, 3);	
	
//	object_create (empty_equipment_case_01);
//	object_create (empty_equipment_case_02);
//	objects_attach (main_mammoth,  "crate_2fl_front_left", empty_equipment_case_01, "");
//	objects_attach (main_mammoth,  "crate_2fl_front_right", empty_equipment_case_02, "");

	//----------------------MARINE INSERTION SETUP-------------------------------//

	wake (tortoise_lakeside_recorded);
	
	object_create (lakeside_insertion_hog_01);
	object_create (lakeside_insertion_hog_02);	
	wake (lakeside_ins_1_marines_spawn);
	ai_place (lakeside_ins_2_marines);
	sleep (1);
	ai_vehicle_enter_immediate (lakeside_ins_2_marines.guy1, lakeside_insertion_hog_02, "warthog_g");
	
	ai_vehicle_reserve_seat (lakeside_insertion_hog_02, "warthog_d", true);
	
//	wake (lakeside_insertion_hog_blip_timer);
//	wake (lakeside_insertion_hog_unblip);
//	wake (lakeside_insertion_hog_2_unblip);
	
	wake (main_mammoth_invincible);
	
	thread (m40_dg_check());
	thread (f_hud_boot_up());
	thread (tort_runover_kills());
	
	thread(cannon_lakeside_motion_new());
	object_cannot_take_damage (cannon_lakeside_new);
		
	object_create (marines_main_hog_01_veh);
	object_create (marines_main_hog_02_veh);
	
	effects_distortion_enabled = FALSE; 
	
	thread (fx_skybox_lensflares());
	
	soft_ceiling_enable ("cliffside_backtrack_01", false);
	soft_ceiling_enable ("prechop_backtrack_01", false);
	soft_ceiling_enable ("chop_backtrack_01", false);	
	soft_ceiling_enable ("prechop_new", false);
	
	
	//--------------------------ENCOUNTER SETUP------------------------------------//

	wake (f_lakeside_enc);
	
	object_create_folder (lakeside_crates);
	
	object_teleport_to_ai_point (lakeside_pod, lakeside_teleport_pt.lakeside_pod_location);
	
	kill_volume_disable (playerkill_soft_lakeside_backtrack);
	kill_volume_disable (playerkill_soft_prechopper_05);
	
//	cinematic_set_title (chapter_03);	

	sleep (1);
	wake (f_lakeside_enc); // Calling this a second time because first sleep_until is needed obj_state of previous encounter
	player_equipped_jetpack = TRUE;
	
//	thread (m40_target_designator_main());
end



; =================================================================================================
; CLIFFSIDE
; =================================================================================================

/*

script static void icl()
	f_insertion_reset( DEF_INSERTION_INDEX_CLIFFSIDE() );
end

script static void ins_cliffside()

	f_insertion_begin( "CLIFFSIDE" );
		f_insertion_zoneload( DEF_S_ZONESET_FODDER_CHOPPER(), FALSE );
		f_insertion_playerwait();
		f_insertion_teleport( ps_insertion_cliffside.p0, ps_insertion_cliffside.p1, ps_insertion_cliffside.p2, ps_insertion_cliffside.p3 );
		f_insertion_playerprofile( default_single_respawn, FALSE );
	f_insertion_end();

	// forces setup of mission functions to put game into proper state
	// insertion setup block -----------------------------------------------------------------------
	
	// Teleport
	ai_lod_full_detail_actors (20);
	print ("waking cliffside scripts"); 
  wake (cliffside_enc_main);
  wake (cliffside_obj_states);
	game_save();
	print ("spawning mammoth");
	object_create (main_mammoth);
	object_cannot_take_damage (main_mammoth);
	object_create (cliffside_barrier_01);	
	object_create (cliffside_barrier_02);	
	object_create (cliffside_antennae_01);		
	object_teleport_to_ai_point (main_mammoth, prechopper_tortoise_route_pt.p5);
	sleep (30 * 1);
	sleep_forever (M40_tortoise_enter_first_time);
	sleep_forever (m40_caves_tort_meet_palmer);
//	object_create (cannon_2);
//	object_cannot_take_damage (cannon_2);
	unit_recorder_setup_for_unit (main_mammoth, tortoise_0203c);
	unit_recorder_play (main_mammoth);
	unit_recorder_set_time_position (main_mammoth, 7);
	unit_recorder_set_playback_rate (main_mammoth, .8);
	unit_recorder_pause (main_mammoth, true);
	sleep (30 * 1);
	unit_recorder_pause_smooth (main_mammoth, false, 3);	
//	vehicle_set_player_interaction (main_mammoth, "warthog_d", false, false);
	vehicle_set_player_interaction (main_mammoth, "mac_d", false, false);
	wake (cliffside_ins_tortoise_recording);
	wake (main_mammoth_invincible);
	wake (prechopper_tortoise_recorded);
	print ("mammoth cliffside spawning/scripts done");
//	vehicle_set_player_interaction (main_mammoth, "warthog_d", false, false);
//	object_create (empty_equipment_case_01);
//	object_create (empty_equipment_case_02);
//	objects_attach (main_mammoth,  "crate_2fl_front_left", empty_equipment_case_01, "");
//	objects_attach (main_mammoth,  "crate_2fl_front_right", empty_equipment_case_02, "");
	ai_place (cliffside_ins_marines);
	//game_save(); - TWF; Insertion point automatically does this
	sleep (30 * 1);
	wake (f_test_me2);
	// hack until starting profile scripts are working properly
	//unit_add_equipment (player0, default_single_respawn, TRUE, FALSE);
	
	// ---------------------------------------------------------------------------------------------
	
end

*/



; =================================================================================================
; PRECHOPPER
; =================================================================================================

script static void ipr()
	f_insertion_reset( DEF_INSERTION_INDEX_PRECHOPPER() );
end

script static void ins_prechopper()

	f_insertion_begin( "PRECHOPPER" );
		f_insertion_zoneload( DEF_S_ZONESET_CHOPPER_WATERFALL_PRE(), FALSE );
		f_insertion_playerwait();
		f_insertion_teleport( ps_insertion_prechopper.p0, ps_insertion_prechopper.p1, ps_insertion_prechopper.p2, ps_insertion_prechopper.p3 );
		f_insertion_playerprofile( default_single_respawn, FALSE );
	f_insertion_end();

	b_m40_music_progression = 50;
	thread (tort_runover_kills());

	kill_volume_disable (playerkill_soft_prechop_backtrack);	
	kill_volume_disable (playerkill_soft_prechopper_05);

	//----------------------TORTOISE INSERTION SETUP-------------------------------//

	object_create (main_mammoth);
	object_teleport_to_ai_point (main_mammoth, prechopper_tortoise_route_pt.p15);
	
	sleep (1);

	unit_recorder_setup_for_unit (main_mammoth, tortoise_0716_d);
	unit_recorder_play (main_mammoth);
	unit_recorder_pause (main_mammoth, true);

//	sleep_s (2);
	
	custom_animation_hold_last_frame (main_mammoth, "objects\vehicles\human\storm_mammoth\storm_mammoth.model_animation_graph", "bay:doors:opening", false);

	wake (prechopper_tortoise_recorded_insertion);

	wake (main_mammoth_invincible);
	
	thread (m40_dg_check());
	thread (f_hud_boot_up());
	
	effects_distortion_enabled = FALSE; 
	
	//-------------------------INSERTION MARINES-----------------------------------//
	
	ai_place (insertion_marines);
	
	object_create (ins_marines_hog);
	ai_vehicle_enter_immediate (insertion_marines.passenger, ins_marines_hog, "warthog_g");
	ai_vehicle_enter_immediate (insertion_marines.gunner, ins_marines_hog, "warthog_p");
	teleport_players_into_vehicle (ins_marines_hog);

	//--------------------------ENCOUNTER SETUP------------------------------------//

	wake (spawn_prechopper);
	wake (prechopper_obj_states);
	wake (prechopper_convoy_prep);
	wake (prechop_marine_obj_handoff);
	
	soft_ceiling_enable ("prechop_backtrack_01", false);
	soft_ceiling_enable ("chop_backtrack_01", false);
	soft_ceiling_enable ("prechop_new", false);

	object_create_folder (prechopper_crates);
	
	object_teleport_to_ai_point (prechopper_tower_pod, chopper_smash.pod_location);	
	
	sleep_forever (M40_tortoise_enter_first_time);
	sleep_forever (m40_caves_tort_meet_palmer);

	sleep (1);
	
	wake (spawn_prechopper); // Calling this a second time because insertion point starts player past first sleep_volume
	
	thread (prechopper_bubble_creation()); // Creating the bubbles since they would have been created earlier in mission
	
	object_destroy (cannon_lakeside);
	
	object_create (cannon_chopper_new);
	
	thread (fx_skybox_lensflares());
	
	//--------------------------TARGET DESIGNATOR SETUP----------------------------//
	
	sleep (1);
	thread (m40_target_designator_main());
	sleep (1);
	thread (target_designator_unlock());
	
	//-----------------------------------------------------------------------------//
	
 	game_save_no_timeout();

end



; =================================================================================================
; CHOPPER
; =================================================================================================

script static void ich()
	f_insertion_reset( DEF_INSERTION_INDEX_CHOPPER() );
end

script static void ins_chopper()

	f_insertion_begin( "CHOPPER" );
		f_insertion_zoneload( DEF_S_ZONESET_CHOPPER_WATERFALL_PRE(), FALSE );
		f_insertion_playerwait();
		f_insertion_teleport( ps_insertion_chopper.p0, ps_insertion_chopper.p1, ps_insertion_chopper.p2, ps_insertion_chopper.p3 );
		f_insertion_playerprofile( default_single_respawn, FALSE );
	f_insertion_end();

	b_m40_music_progression = 60;
	thread (f_hud_boot_up());
	thread (tort_runover_kills());
	thread (honey_i_shrunk_the_forerunner_cannon_again());

	soft_ceiling_enable ("prechop_chop_divider", false);
	soft_ceiling_enable ("prechop_new", false);

	//----------------------TORTOISE INSERTION SETUP-------------------------------//

	object_create (main_mammoth);
	object_teleport_to_ai_point (main_mammoth, prechopper_tortoise_route_pt.p10);

	sleep (1);

	unit_recorder_setup_for_unit (main_mammoth, tortoise_0716_e);
	unit_recorder_play (main_mammoth);
	unit_recorder_set_playback_rate (main_mammoth, .7);
	unit_recorder_pause (main_mammoth, true);

	wake (chop_tortoise_recorded_ins);
	thread (new_tort_chopper_part_1_speed_test());
	
	prechop_recording_loaded_2 = true;

	//-------------------------INSERTION MARINES-----------------------------------//

	ai_place (chop_marines_convoy);
	ai_place (chop_dead_marines);

	ai_allegiance (player, human);
	
	object_create (chop_ins_hog_01);	
	ai_vehicle_enter_immediate (chop_marines_convoy.chief_gunner1, chop_ins_hog_01, "warthog_g");
	teleport_players_into_vehicle (chop_ins_hog_01);
	
	effects_distortion_enabled = FALSE; 
	
	//--------------------------ENCOUNTER SETUP------------------------------------//

	wake (chopper_main_script);
	wake (chopper_obj_control_01);
	
	wake (main_mammoth_invincible);
	
	thread (m40_dg_check());
	
	object_can_take_damage (cannon_chopper_new);
	
	object_destroy (prechopper_shield_barrier);
	object_create_folder (chop_crates);
	
	s_bubbles_burst = 3;
	
	object_destroy (cannon_lakeside);
	
	thread (fx_skybox_lensflares());
	
	//--------------------------TARGET DESIGNATOR SETUP----------------------------//
	
	sleep (1);
	thread (m40_target_designator_main());
	sleep (1);
	thread (target_designator_unlock());
	
	//-----------------------------------------------------------------------------//

	game_save_no_timeout();
	kill_volume_disable (playerkill_soft_prechopper_05);

end



; =================================================================================================
; WATERFALL
; =================================================================================================


script static void iwa()
	f_insertion_reset( DEF_INSERTION_INDEX_WATERFALL() );
end

script static void ins_waterfall()

	f_insertion_begin( "WATERFALL" );
		f_insertion_zoneload( DEF_S_ZONESET_CHOPPER_WATERFALL_PRE(), FALSE );
		f_insertion_playerwait();
		f_insertion_teleport( ps_insertion_waterfall.p0, ps_insertion_waterfall.p1, ps_insertion_waterfall.p2, ps_insertion_waterfall.p3 );
		f_insertion_playerprofile( default_single_respawn, FALSE );
	f_insertion_end();

	b_m40_music_progression = 70;
	// forces setup of mission functions to put game into proper state
	// insertion setup block -----------------------------------------------------------------------
	
	// Teleport
	print ("spawning waterfall"); 

	print ("spawning mammoth");
	object_create (main_mammoth);
	object_teleport_to_ai_point (main_mammoth, waterfall_pt.p2);
	//unit_add_equipment (player0, default_single_respawn, TRUE, FALSE);

	thread (f_hud_boot_up());
	thread (tort_runover_kills());
	
	sleep (30 * 1);

	teleport_players_into_vehicle (waterfall_ins_hog);
	unit_recorder_setup_for_unit (main_mammoth, tortoise_0526_e);
	unit_recorder_play (main_mammoth);
	unit_recorder_set_time_position (main_mammoth, 15);
	unit_recorder_set_playback_rate (main_mammoth, .7);
	unit_recorder_pause (main_mammoth, true);
	sleep (30 * 1);
	unit_recorder_pause_smooth (main_mammoth, false, 3);	

	print ("mammoth prechopper spawning/scripts done");
	wake (spawn_waterfall_01);
	wake (el_citadel);
	wake (waterfall_tortoise_recorded);
	wake (M40_waterfalls_warning);
	
	wake (main_mammoth_invincible);
	
	effects_distortion_enabled = FALSE; 
	
	thread (fx_skybox_lensflares());
	
	//game_save(); - TWF; Insertion point automatically does this
	
	// ---------------------------------------------------------------------------------------------
	
end



; =================================================================================================
; JACKAL EXT
; =================================================================================================

script static void ija()
	f_insertion_reset( DEF_INSERTION_INDEX_JACKAL() );
end

// RALLY POINT BRAVO
script static void ins_jackal()

	f_insertion_begin( "JACKAL EXT" );
		f_insertion_zoneload( DEF_S_ZONESET_PRE_VALE(), FALSE );
		f_insertion_playerwait();
		f_insertion_teleport( pts_ins_val.p0, pts_ins_val.p1, pts_ins_val.p2, pts_ins_val.p3 );
		f_insertion_playerprofile( sniper_jetpack, FALSE );
	f_insertion_end();

	b_m40_music_progression = 80;
	
	// forces setup of mission functions to put game into proper state
	// insertion setup block -----------------------------------------------------------------------
	
//	vehicle_set_player_interaction (main_mammoth, "warthog_d", false, false);
	
	object_create (main_mammoth);
	object_teleport_to_ai_point (main_mammoth, waterfall_pt.p0);
	
	sleep (1);
		
	unit_recorder_setup_for_unit (main_mammoth, tortoise_0526_f);
	unit_recorder_play (main_mammoth);
	unit_recorder_set_time_position (main_mammoth, 112);
	unit_recorder_pause (main_mammoth, true);


	wake (el_citadel);
	wake (main_mammoth_invincible);

	thread (f_hud_boot_up());
	
	thread (m40_dg_check());
	sleep_forever (M40_tortoise_enter_first_time);
	sleep_forever (m40_caves_tort_meet_palmer);

	sleep_s (3);
	
	thread (tort_bipeds());
	
	thread (fx_skybox_lensflares());
	//wake (el_citadel);
	//ai_place (sniper_jackals);
	//wake (post_librarian);
	//wake (forerunner_enc);
	//game_save(); - TWF; Insertion point automatically does this
	
	// hack until starting profile scripts are working properly
	//unit_add_equipment (player0, sniper_jetpack, TRUE, FALSE);
	
	// ---------------------------------------------------------------------------------------------

end



; =================================================================================================
; CITADEL EXT
; =================================================================================================

script static void ice()
	f_insertion_reset( DEF_INSERTION_INDEX_CITADEL() );
end

script static void ins_citadel()

	f_insertion_begin( "CITADEL EXT" );
		f_insertion_zoneload( DEF_S_ZONESET_VALE_VALE(), FALSE );
		f_insertion_playerwait();
		if ( S_citadel_ext_ai_objcon < DEF_CITADEL_EXT_AI_OBJCON_MID_START ) then
			f_insertion_teleport( pts_ins_citext.p0, pts_ins_citext.p1, pts_ins_citext.p2, pts_ins_citext.p3 );
		else
			f_insertion_teleport( pts_ins_citext_t.p0, pts_ins_citext_t.p1, pts_ins_citext_t.p2, pts_ins_citext_t.p3 );
		end
		f_insertion_playerprofile( sniper_jetpack, FALSE );
	f_insertion_end();

	b_m40_music_progression = 90;
	
	// forces setup of mission functions to put game into proper state
	// insertion setup block -----------------------------------------------------------------------
	
	// Teleport
	sleep_forever (M40_tortoise_enter_first_time);
	sleep_forever (m40_caves_tort_meet_palmer);

	thread (f_hud_boot_up());
	
	// set the valley objcon so it knows not to spawn
	f_valley_ai_objcon_set( DEF_VALLEY_AI_OBJCON_ESCAPE );

	//wake (f_citadel_ext_main);
	wake (el_citadel);
	
	thread (fx_skybox_lensflares());
	//game_save(); - TWF; Insertion point automatically does this
	
	// ---------------------------------------------------------------------------------------------
	
end

//; =================================================================================================
//; CITADEL EXT: TEST
//; =================================================================================================
//
//script static void ice_t()
//	f_insertion_reset( DEF_INSERTION_INDEX_CITADEL_EXT_TEST() );
//end
//
//script static void ins_citadel_test()
//
//	// force the objcon to be higher so I can check to skip loading stuff
//	f_citadel_ext_ai_objcon_set( DEF_CITADEL_EXT_AI_OBJCON_MID_KNIGHT_START );
//	
//	ins_citadel();
//	
//end

//; =================================================================================================
//; CITADEL INT
//; =================================================================================================
//
//script static void ici()
//	f_insertion_reset( DEF_INSERTION_INDEX_CITADEL_INT() );
//end
//
//script static void ins_citadel_int()
//
//	f_insertion_begin( "CITADEL INT" );
//		f_insertion_zoneload( DEF_S_ZONESET_VALE_HALL(), FALSE );
//		f_insertion_playerwait();
//		f_insertion_teleport( pts_ins_citint.p0, pts_ins_citint.p1, pts_ins_citint.p2, pts_ins_citint.p3 );
//		f_insertion_playerprofile( sniper_jetpack, FALSE );
//	f_insertion_end();
//
//	// forces setup of mission functions to put game into proper state
//	// insertion setup block -----------------------------------------------------------------------
//	
//	// Teleport
//	sleep_forever (M40_tortoise_enter_first_time);
//	sleep_forever (m40_caves_tort_meet_palmer);
//
//	wake( f_citadel_int_init );
//	//game_save(); - TWF; Insertion point automatically does this
//	
//	// ---------------------------------------------------------------------------------------------
//	
//end

//; =================================================================================================
//; CITADEL INT: TEST 01
//; =================================================================================================
//
//script static void ici_t()
//	f_insertion_reset( DEF_INSERTION_INDEX_CITADEL_INT_TEST() );
//end
//
//script static void ins_citadel_int_t01()
//
//	f_insertion_begin( "CITADEL INT: TEST 01" );
//		f_insertion_zoneload( DEF_S_ZONESET_HALL_BATTERY(), FALSE );
//		f_insertion_playerwait();
//		f_insertion_teleport( pts_ins_citint_t01.p0, pts_ins_citint_t01.p1, pts_ins_citint_t01.p2, pts_ins_citint_t01.p3 );
//		f_insertion_playerprofile( sniper_jetpack, FALSE );
//	f_insertion_end();
//
//	// forces setup of mission functions to put game into proper state
//	// insertion setup block -----------------------------------------------------------------------
//	
//	// force sentinel objcon forward
//	f_citadel_int_sentinel_objcon_set( DEF_CITADEL_INT_SENTINEL_OBJCON_HALL01_START );
//	
//	// Teleport
//	sleep_forever (M40_tortoise_enter_first_time);
//	sleep_forever (m40_caves_tort_meet_palmer);
//
//	wake( f_citadel_int_init );
//	//game_save(); - TWF; Insertion point automatically does this
//	
//	// ---------------------------------------------------------------------------------------------
//	
//end
; =================================================================================================
; POWERCAVE
; =================================================================================================

script static void ipo()
	f_insertion_reset( DEF_INSERTION_INDEX_POWERCAVE() );
end

script static void ins_powercave()

	f_insertion_begin( "POWERCAVE" );
		f_insertion_zoneload( DEF_S_ZONESET_BATTERY(), FALSE );
		f_insertion_playerwait();
		f_insertion_teleport( pts_bat.p1, pts_bat.p2, pts_bat.p3, pts_bat.p4 );
		f_insertion_playerprofile( jetpack_profile, FALSE );
	f_insertion_end();

	b_m40_music_progression = 100;
	
	// forces setup of mission functions to put game into proper state
	// insertion setup block -----------------------------------------------------------------------
	
	// Teleport
	sleep_forever (M40_tortoise_enter_first_time);
	sleep_forever (m40_caves_tort_meet_palmer);

	//game_save(); - TWF; Insertion point automatically does this
	wake(f_powercave_main);
	wake (f_librarian_main);
	
	wake (main_mammoth_invincible);

	thread (f_hud_boot_up());
	
	// ---------------------------------------------------------------------------------------------
	
end



; =================================================================================================
; LIBRARIAN ROOM
; =================================================================================================

script static void ili()
	f_insertion_reset( DEF_INSERTION_INDEX_LIBRARIAN() );
end

script static void ins_librarian()

	f_insertion_begin( "LIBRARIAN ROOM" );
		f_insertion_zoneload( DEF_S_ZONESET_LIBRARIAN_VALE(), FALSE );
		f_insertion_playerwait();
		f_insertion_teleport( pts_lib_ins.p0, pts_lib_ins.p1, pts_lib_ins.p2, pts_lib_ins.p3 );
		f_insertion_playerprofile( librarian_profile, FALSE );
	f_insertion_end();

	b_m40_music_progression = 120;
	
	// forces setup of mission functions to put game into proper state
	// insertion setup block -----------------------------------------------------------------------
	
	// Teleport
	sleep_forever (M40_tortoise_enter_first_time);
	sleep_forever (m40_caves_tort_meet_palmer);
	object_create_folder(lib_crates);
	
	wake (main_mammoth_invincible);

//	wake (post_librarian);
	wake (f_librarian_main);

	thread (f_hud_boot_up());
	
	// ---------------------------------------------------------------------------------------------

end



//; =================================================================================================
//; ORDNANCE TRAINING
//; =================================================================================================
//
//script static void ior()
//	f_insertion_reset( DEF_INSERTION_INDEX_ORDINANCE() );
//end
//
//script static void ins_ordnance()
//
//	f_insertion_begin( "ORDNANCE TRAINING" );
//		f_insertion_zoneload( DEF_S_ZONESET_REAR_ORD_EPIC(), FALSE );
//		f_insertion_playerwait();
//		f_insertion_teleport( pts_ord.p0, pts_ord.p1, pts_ord.p2, pts_ord.p3 );
//		f_insertion_playerprofile( jetpack_profile, FALSE );
//	f_insertion_end();
//
//	// forces setup of mission functions to put game into proper state
//	// insertion setup block -----------------------------------------------------------------------
//	
//	// Teleport
//	sleep_forever (M40_tortoise_enter_first_time);
//	sleep_forever (m40_caves_tort_meet_palmer);
////	vehicle_set_player_interaction (main_mammoth, "warthog_d", false, false);
////	vehicle_set_player_interaction (main_mammoth_2, "mac_d", false, false);
////	wake (ordnance_convoy);
////	wake (epic_approach_dialogue);
//	//game_save(); - TWF; Insertion point automatically does this
//	
//	// ---------------------------------------------------------------------------------------------
//
//end



; =================================================================================================
; EPIC
; =================================================================================================

script static void iep()
	f_insertion_reset( DEF_INSERTION_INDEX_EPIC() );
end

script static void ins_epic()

	f_insertion_begin( "EPIC" );
	f_insertion_zoneload( DEF_S_ZONESET_EPIC(), FALSE );
	f_insertion_playerwait();
//	f_insertion_teleport( ps_insertion_epic.p0, ps_insertion_epic.p1, ps_insertion_epic.p2, ps_insertion_epic.p3 );
	f_insertion_playerprofile( jetpack_profile, FALSE );
	f_insertion_end();

//	f_insertion_begin( "MAMMOTH" );
//	f_insertion_zoneload( DEF_S_ZONESET_CAV(), FALSE );
//	f_insertion_playerwait();
//	f_insertion_teleport( ps_insertion_cavern.p0, ps_insertion_cavern.p1,ps_insertion_cavern.p2,ps_insertion_cavern.p3 );
//	f_insertion_playerprofile( caverns_profile, FALSE );
//	f_insertion_end();


	// forces setup of mission functions to put game into proper state
	// insertion setup block -----------------------------------------------------------------------

	b_m40_music_progression = 140;

	thread (fx_epic_skybox_lensflares());
	
	// Teleport
	object_teleport (player0(), epic_teleport_flag_01); // TWF - COULD NOT CHANGE THIS TO USE STANDARD SYTEM BECUASE IT'S FLAGS INSTEAD OF A POINT SET
	object_teleport (player1(), epic_teleport_flag_02);
	object_teleport (player2(), epic_teleport_flag_03);
	object_teleport (player2(), epic_teleport_flag_04);

	thread (f_hud_boot_up());
	
	wake (backup_ending_script);

	//fade_out (255,255,255,5);
	sleep (30 * .7);
	wake (epic_main_script);
	wake (epic_obj_control);
	
	effects_distortion_enabled = FALSE; 
	
	wake (main_mammoth_invincible);
	
	thread (m40_dg_check());
	
	// ---------------------------------------------------------------------------------------------

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
	
	if ( s_insertion == DEF_INSERTION_INDEX_CAVERN() ) then
		b_started = TRUE;
		ins_cavern();
	end
	if ( s_insertion == DEF_INSERTION_INDEX_MAMMOTH() ) then
		b_started = TRUE;
		ins_mammoth();
	end
	if ( s_insertion == DEF_INSERTION_INDEX_FODDER() ) then
		b_started = TRUE;
		ins_fodder();
	end
	if ( s_insertion == DEF_INSERTION_INDEX_LAKESIDE() ) then
		b_started = TRUE;
		ins_lakeside();
	end
//	if ( s_insertion == DEF_INSERTION_INDEX_CLIFFSIDE() ) then
//		b_started = TRUE;
//		ins_cliffside();
//	end
	if ( s_insertion == DEF_INSERTION_INDEX_PRECHOPPER() ) then
		b_started = TRUE;
		ins_prechopper();
	end
	if ( s_insertion == DEF_INSERTION_INDEX_CHOPPER() ) then
		b_started = TRUE;
		ins_chopper();
	end
	if ( s_insertion == DEF_INSERTION_INDEX_WATERFALL() ) then
		b_started = TRUE;
		ins_waterfall();
	end
	if ( s_insertion == DEF_INSERTION_INDEX_JACKAL() ) then
		b_started = TRUE;
		ins_jackal();
	end
	if ( s_insertion == DEF_INSERTION_INDEX_CITADEL() ) then
		b_started = TRUE;
		ins_citadel();
	end
//	if ( s_insertion == DEF_INSERTION_INDEX_CITADEL_EXT_TEST() ) then
//		b_started = TRUE;
//		ins_citadel_test();
//	end
//	if ( s_insertion == DEF_INSERTION_INDEX_CITADEL_INT() ) then
//		b_started = TRUE;
//		ins_citadel_int();
//	end
//	if ( s_insertion == DEF_INSERTION_INDEX_CITADEL_INT_TEST() ) then
//		b_started = TRUE;
//		ins_citadel_int_t01();
//	end
	/*
	if ( s_insertion == DEF_INSERTION_INDEX_BATTERY() ) then
		b_started = TRUE;
		ins_xxx();
	end
	*/
	if ( s_insertion == DEF_INSERTION_INDEX_POWERCAVE() ) then
		b_started = TRUE;
		ins_powercave();
	end
	/*
	if ( s_insertion == DEF_INSERTION_INDEX_BATTERY_TURR() ) then
		b_started = TRUE;
		ins_xxx();
	end
	*/
	if ( s_insertion == DEF_INSERTION_INDEX_LIBRARIAN() ) then
		b_started = TRUE;
		ins_librarian();
	end
//	if ( s_insertion == DEF_INSERTION_INDEX_ORDINANCE() ) then
//		b_started = TRUE;
//		ins_ordnance();
//	end
	if ( s_insertion == DEF_INSERTION_INDEX_EPIC() ) then
		b_started = TRUE;
		ins_epic();
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
local zone_set zs_return = "zone_set_cav";

	if ( s_index == DEF_S_ZONESET_CAV() ) then
	 zs_return = "zone_set_cav";
	end
	if ( s_index == DEF_S_ZONESET_CAV_TORT_GUN() ) then
	 zs_return = "zone_set_cav_tort_gun";
	end
	if ( s_index == DEF_S_ZONESET_GUN_FODDER() ) then
	 zs_return = "zone_set_gun_fodder";
	end
	if ( s_index == DEF_S_ZONESET_FODDER() ) then
	 zs_return = "zone_set_fodder";
	end
	if ( s_index == DEF_S_ZONESET_FODDER_CHOPPER() ) then
	 zs_return = "zone_set_fodder_chopper";
	end
	if ( s_index == DEF_S_ZONESET_CHOPPER_WATERFALL_PRE() ) then
	 zs_return = "zone_set_chopper_waterfall_pre";
	end
	if ( s_index == DEF_S_ZONESET_WATERFALL_PRE_VALE() ) then
	 zs_return = "zone_set_waterfall_pre_vale";
	end
	if ( s_index == DEF_S_ZONESET_PRE_VALE() ) then
	 zs_return = "zone_set_pre_vale";
	end
	if ( s_index == DEF_S_ZONESET_VALE_VALE() ) then
	 zs_return = "zone_set_vale_vale";
	end
	if ( s_index == DEF_S_ZONESET_VALE_HALL() ) then
	 zs_return = "zone_set_vale_hall";
	end
	if ( s_index == DEF_S_ZONESET_HALL_BATTERY() ) then
	 zs_return = "zone_set_hall_battery";
	end
	if ( s_index == DEF_S_ZONESET_BATTERY() ) then
	 zs_return = "zone_set_battery";
	end
	if ( s_index == DEF_S_ZONESET_BATTERY_CAVERN() ) then
	 zs_return = "zone_set_battery_cavern";
	end
	if ( s_index == DEF_S_ZONESET_CAVERN_LIBRARIAN_VALE() ) then
	 zs_return = "zone_set_cavern_librarian_vale";
	end
	if ( s_index == DEF_S_ZONESET_LIBRARIAN_VALE() ) then
	 zs_return = "zone_set_librarian_vale";
	end
//	if ( s_index == DEF_S_ZONESET_VALE_INFINITY_REAR() ) then
//	 zs_return = "zone_set_vale_infinity_rear";
//	end
//	if ( s_index == DEF_S_ZONESET_REAR_ORD_EPIC() ) then
//	 zs_return = "zone_set_rear_ord_epic";
//	end
//	if ( s_index == DEF_S_ZONESET_PRE_EPIC() ) then
//	 zs_return = "zone_set_pre_epic";
//	end
	if ( s_index == DEF_S_ZONESET_EPIC() ) then
	 zs_return = "zone_set_epic";
	end
	if ( s_index == DEF_S_ZONESET_EPIC_EXIT() ) then
	 zs_return = "zone_set_epic_exit";
	end
	if ( s_index == DEF_S_ZONESET_TRACTOR() ) then
	 zs_return = "zone_set_tractor";
	end
	if ( s_index == DEF_S_ZONESET_PRE_CHOP_WATER() ) then
	 zs_return = "zone_set_pre_chop_water";
	end
	if ( s_index == DEF_S_ZONESET_WATER_PRE() ) then
	 zs_return = "zone_set_water_pre";
	end
	if ( s_index == DEF_S_ZONESET_CIN_INTRO() ) then
	 zs_return = "cin_intro";
	end
	if ( s_index == DEF_S_ZONESET_ELE_EPIC() ) then
	 zs_return = "zone_set_ele_epic";
	end
	if ( s_index == DEF_S_ZONESET_CIN_M041_LIBRARIAN() ) then
	 zs_return = "cin_m041_librarian";
	end
	if ( s_index == DEF_S_ZONESET_CIN_M042_END() ) then
	 zs_return = "cin_m042_end";
	end

	// return
	zs_return;
end


// =================================================================================================
// =================================================================================================
// *** CLEANUP ***
// =================================================================================================
// =================================================================================================

// =================================================================================================
// LANDING
// =================================================================================================

//script static void f_landing_cleanup()
	//sleep_forever (f_landing_main);
//end

// =================================================================================================
// =================================================================================================
// UTILITY
// =================================================================================================
// =================================================================================================

/*
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
/*
/*
// =================================================================================================
// Insertion Fade
// =================================================================================================

global boolean b_insertion_fade_in = FALSE;
script dormant f_insertion_fade_in

	sleep_until (b_insertion_fade_in);
	// this is a global script
	insertion_fade_to_gameplay();
end
*/

// --- End m40_invasion_insertion.hsc ---

// --- Begin m40_invasion_jackal.hsc ---
//34343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434334343434343434343434343434343434343434343434343434343434
//
// 	Mission: 					m40_invasion_mission_cf
//	Insertion Points:	start 	- Beginning
//	ifo		- fodder
//	ija		- jackal alley
//	ici		- citidel exterior
//	iic		- citidel interior
//	ipo		- powercave/ battery room
//	ili		- librarian encounter			
//  ior		- ordnance training					
//34343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434334343434343434343434343434343434343434343434343434343434

// ==========================================================================================================================================================
// ==========================================================================================================================================================
// ==========================================================================================================================================================
// *** JACKAL VALLEY ***
// ==========================================================================================================================================================
// ==========================================================================================================================================================
// ==========================================================================================================================================================

// FUNCTIONS ------------------------------------------------------------------------------------------------------------------------------------------------
// === f_valley_init::: Initialize
script dormant f_valley_init()
	dprint( "f_valley_init" );
	
	// setup cleanup
	wake( f_valley_cleanup );

//	sleep_until( current_zone_set_fully_active() == DEF_S_ZONESET_WATERFALL_PRE_VALE(), 1 );

	// init sub modules
	wake( f_valley_supplies_init );
	wake( f_valley_ai_init );
	
	// setup trigger
	wake( f_valley_trigger );
	
end

// === f_valley_deinit::: DeInitialize
script dormant f_valley_deinit()
	dprint( "f_valley_deinit" );

	// shutdown functions
	effects_distortion_enabled = TRUE; 
	kill_script( f_valley_init );
	kill_script( f_valley_trigger );
	kill_script( f_valley_action );
	kill_script( f_valley_chapter );
	kill_script( f_valley_mammoth_stop );
	kill_script( f_valley_blip );

	// deinit sub modules
	wake( f_valley_supplies_deinit );
	wake( f_valley_ai_deinit );
	
end

// === f_valley_cleanup::: Cleanup
script dormant f_valley_cleanup()
//	sleep_until( current_zone_set_fully_active() > DEF_S_ZONESET_VALE_VALE(), 1 );
	sleep_until( volume_test_players(tv_valley_garbage_ai), 1 );
	dprint( "f_valley_cleanup" );

	// deinit main module
	wake( f_valley_deinit );
	
end

// === f_valley_trigger::: Trigger
script dormant f_valley_trigger()
	sleep_until( volume_test_players(tv_spawn_el_citadel), 1 );
	dprint( "f_valley_trigger" );
	
	wake( f_valley_action );
	
end

//// === f_valley_action::: action
script dormant f_valley_action()
	dprint( "f_valley_action" );

	b_snipervalley_started = TRUE;
	data_mine_set_mission_segment ("m40_sniper_alley" );
	effects_distortion_enabled = FALSE; 
	player_set_profile (sniper_jetpack, player0); 
	player_set_profile (sniper_jetpack, player1); 
	player_set_profile (sniper_jetpack, player2); 
	player_set_profile (sniper_jetpack, player3); 
	// wake the ai
	wake( f_valley_ai_spawn );
	
	//stop mammoth
	wake( f_valley_mammoth_stop );

	// checkpoint	
 
		game_save_no_timeout();
	
	// display chapter
	wake( f_valley_chapter );
	
	thread (f_valley_mid_checkpoint());

end

// === f_valley_cleanup::: Cleanup
script dormant f_valley_chapter()
	dprint( "f_valley_chapter" );
	
	sleep_s( 3 );
	cui_hud_set_objective_complete("chapter_08");
	cui_hud_set_new_objective("chapter_09");
	//dprint("CHAPTER 9 title .." );
	//sound_impulse_start( sound\game_sfx\ui\transition_beeps, NONE, 1 );
	//cinematic_set_title( chapter_09 );
	
end

// === f_valley_mammoth_stop::: Mammoth Stop
script dormant f_valley_mammoth_stop()
 sleep_until( volume_test_object ( tv_spawn_el_citadel, main_mammoth )  , 1 );
	unit_recorder_pause_smooth (main_mammoth, TRUE, 2 );
end


// === f_valley_blip::: Blips the valley enterance
script dormant f_valley_blip()

	f_blip_flag( valley_entrance_flag, "recon" );

	sleep_until( volume_test_players(tv_val_enter2), 1 );
	f_unblip_flag( valley_entrance_flag );
	
end

script static void f_valley_mid_checkpoint()
	sleep_until( volume_test_players (tv_valley_objcon_27), 1 );
	game_save_no_timeout();
end

// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// JACKAL VALLEY: SUPPLIES
// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// ----------------------------------------------------------------------------------------------------------------------------------------------------------

// FUNCTIONS ------------------------------------------------------------------------------------------------------------------------------------------------

// === f_valley_supplies_create::: Initialize
script dormant f_valley_supplies_init()
	dprint( "f_valley_supplies_init" );

	// supplies
	wake( f_valley_supplies_create );
	ordnance_drop(drop_pod, "storm_sniper_rifle");
	print("::DROPPED ORDNANCE::");
	
end

// === f_valley_supplies_deinit::: DeInitialize
script dormant f_valley_supplies_deinit()
	dprint( "f_valley_supplies_deinit" );

	// cleanup
	//wake( f_valley_supplies_destroy );
	
	// deinit functions
	kill_script( f_valley_supplies_init );
	kill_script( f_valley_supplies_create );
	
end

// === f_valley_supplies_create::: Creates the supplies/props in the area
script dormant f_valley_supplies_create()
	dprint( "f_valley_supplies_create" );

	object_create_folder( cr_valley );
	//object_create_folder( scn_valley );
	object_create_folder( wp_valley );
	object_create_folder( eq_valley );

end

// === f_valley_supplies_destroy::: Destroys the supplies/props in the area
script dormant f_valley_supplies_destroy()
	dprint( "f_valley_supplies_destroy" );
	
	object_destroy_folder( cr_valley );
	//object_destroy_folder( scn_valley );

end



// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// JACKAL VALLEY: AI
// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// ----------------------------------------------------------------------------------------------------------------------------------------------------------

// VARIABLES ------------------------------------------------------------------------------------------------------------------------------------------------
static long L_valley_ai_garbage_thread_id = 0;

// FUNCTIONS ------------------------------------------------------------------------------------------------------------------------------------------------

// === f_valley_ai_create::: Initialize
script dormant f_valley_ai_init()
	dprint( "f_valley_ai_init" );
	
	// human and player are allies		
	ai_allegiance( player, human );	
	ai_allegiance( human, player );
	
	// set alliances		
	ai_allegiance( covenant, forerunner );		
	ai_allegiance( forerunner, covenant );

	// set AI lod	
	ai_lod_full_detail_actors( 30 );

	// init sub modules
	wake( f_valley_ai_objcon_init );
	wake( f_valley_ai_orders_init );

end

// === f_valley_ai_deinit::: DeInitialize
script dormant f_valley_ai_deinit()
	dprint( "f_valley_ai_deinit" );

	// kill the garbage collection thread
	kill_thread( L_valley_ai_garbage_thread_id );

	// cleanup
	wake( f_valley_ai_erase );
	
	// deinit functions
	kill_script( f_valley_ai_init );
	kill_script( f_valley_ai_spawn );
	kill_script( f_valley_ai_garbage );

	// deinit sub modules
	wake( f_valley_ai_objcon_deinit );
	wake( f_valley_ai_orders_deinit );
	
end

// === f_valley_ai_spawn::: Spawns in the basic valley AI
script dormant f_valley_ai_spawn()
	dprint( "f_valley_ai_spawn" );
	
	// check the objcon before spawning because the insertion point will force it higher so that it doesn't spawn
	if (( S_valley_ai_objcon <= DEF_VALLEY_AI_OBJCON_ATTACK )
				and
				(ai_living_count(sg_valley) < 1)) then
		
		// pre-valley fight
		//ai_place( sg_valley_pre );
	
		// snipers
		ai_place( sg_valley_sniper );
		wake(f_valley_high_snipers_spawn);
		
		// infantry
		ai_place( sg_valley_infantry );
		
		// start the auto garbage manager
		wake( f_valley_ai_garbage );
		
	end

end

script dormant f_valley_high_snipers_spawn()
	
	sleep_until((ai_living_count(sg_valley)) <= 20);
	ai_place(sg_valley_sniper_high);
	
end

// === f_valley_ai_erase::: Erases all spawned valley AI
script dormant f_valley_ai_erase()
	dprint( "f_valley_ai_erase" );
	f_ai_garbage_erase(sg_valley, 10, 20, -1, -1, TRUE);
	//ai_erase( sg_valley );

end

// === f_valley_ai_garbage::: Starts the AI garbage collection
script dormant f_valley_ai_garbage()
	sleep_until( volume_test_players(tv_valley_garbage_ai), 1 );
	dprint( "f_valley_ai_garbage" );
	
	L_valley_ai_garbage_thread_id = f_ai_garbage_kill( sg_valley, -1, -1, -1, -1, FALSE );

end


// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// JACKAL VALLEY: AI: OBJCON
// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// ----------------------------------------------------------------------------------------------------------------------------------------------------------

// DEFINES --------------------------------------------------------------------------------------------------------------------------------------------------
global short DEF_VALLEY_AI_OBJCON_INIT =         														00;
global short DEF_VALLEY_AI_OBJCON_ORDERS_START =    												01;
global short DEF_VALLEY_AI_OBJCON_ORDERS_ACTIVE =    												02;
global short DEF_VALLEY_AI_OBJCON_ORDERS_JACKAL =    												03;
global short DEF_VALLEY_AI_OBJCON_ORDERS_END =    													05;
global short DEF_VALLEY_AI_OBJCON_ATTACK =         													10;
global short DEF_VALLEY_AI_OBJCON_FRONT_SNIPER_FOLD =          							12;
global short DEF_VALLEY_AI_OBJCON_FRONT_PUSH =          										15;
global short DEF_VALLEY_AI_OBJCON_MID_START =          											20;
global short DEF_VALLEY_AI_OBJCON_MID_SNIPERS =          										23;
global short DEF_VALLEY_AI_OBJCON_MID_PUSH =          											25;
global short DEF_VALLEY_AI_OBJCON_MID_BACK =          											27;
global short DEF_VALLEY_AI_OBJCON_REAR_ATTACK =          										30;
global short DEF_VALLEY_AI_OBJCON_ESCAPE =          												40;

// VARIABLES ------------------------------------------------------------------------------------------------------------------------------------------------

global short S_valley_ai_objcon = 																					DEF_VALLEY_AI_OBJCON_INIT;

// FUNCTIONS ------------------------------------------------------------------------------------------------------------------------------------------------

// === f_valley_ai_objcon_create::: Initialize
script dormant f_valley_ai_objcon_init()
	dprint( "f_valley_ai_objcon_init" );

	// wake the valley objcon
	wake( f_valley_ai_objcon_controller );

end

// === f_valley_ai_objcon_deinit::: DeInitialize
script dormant f_valley_ai_objcon_deinit()
	dprint( "f_valley_ai_objcon_deinit" );
	
	// kill functions
	kill_script( f_valley_ai_objcon_init );
	kill_script( f_valley_ai_objcon_controller );
	
	kill_script( f_valley_ai_objcon_control_front_attack );
	kill_script( f_valley_ai_objcon_control_front_sniper_fold );
	kill_script( f_valley_ai_objcon_control_front_push );
	kill_script( f_valley_ai_objcon_control_mid_start );
	kill_script( f_valley_ai_objcon_control_mid_snipers );
	kill_script( f_valley_ai_objcon_control_mid_push );
	kill_script( f_valley_ai_objcon_control_mid_back );
	kill_script( f_valley_ai_objcon_control_rear_attack );
	kill_script( f_valley_ai_objcon_control_escape );
	
end

// === f_valley_ai_objcon_set::: Sets the objcon value and manages any default practices
script static void f_valley_ai_objcon_set( short s_val )
static short 	s_checkpoint_objcon = 			DEF_CITADEL_EXT_AI_OBJCON_INIT;
static long 	l_checkpoint_timer = 				0;
local short 	s_checkpoint_objcon_temp = 	0;

static long 	l_garbage_timer = 					0;

	dprint( "f_valley_ai_objcon_set" );
	
	if( s_val > S_valley_ai_objcon ) then
		S_valley_ai_objcon = s_val;
		inspect( s_val );
		
		// checkpoint
		if ( (s_checkpoint_objcon <= s_val) and (l_checkpoint_timer <= game_tick_get()) ) then

			// figure out what next objcon to check at
			s_checkpoint_objcon_temp = ( s_val / 10 );
			s_checkpoint_objcon = ( s_checkpoint_objcon_temp * 10 ) + 10;
			
			l_checkpoint_timer = game_tick_get() + seconds_to_frames( 60.0 );

			//game_save();

		end

		// collect garbage
		/*if ( l_garbage_timer <= game_tick_get() ) then

			l_garbage_timer = game_tick_get() + seconds_to_frames( 30.0 );
			
			garbage_collect_now();

		end*/
		
	end

end

// === f_valley_ai_objcon_controller::: Loads the individual objcon controllers
script dormant f_valley_ai_objcon_controller()
	dprint( "f_valley_ai_objcon_controller" );

	// sets up all the controllers
	wake( f_valley_ai_objcon_control_front_attack );
	wake( f_valley_ai_objcon_control_front_sniper_fold );
	wake( f_valley_ai_objcon_control_front_push );
	wake( f_valley_ai_objcon_control_mid_start );
	wake( f_valley_ai_objcon_control_mid_snipers );
	wake( f_valley_ai_objcon_control_mid_push );
	wake( f_valley_ai_objcon_control_mid_back );
	wake( f_valley_ai_objcon_control_rear_attack );
	wake( f_valley_ai_objcon_control_escape );

end

// === f_valley_ai_objcon_control_front_attack::: controls an objcon
script dormant f_valley_ai_objcon_control_front_attack()

	sleep_until( 
			( S_valley_ai_objcon >= DEF_VALLEY_AI_OBJCON_ATTACK )
			or
			f_ai_sees_enemy( sg_valley_infantry )
			or
			f_ai_sees_enemy( sg_valley_sniper )
		, 1 );
	dprint( "f_valley_ai_objcon_control_front_attack" );
	f_valley_ai_objcon_set( DEF_VALLEY_AI_OBJCON_ATTACK );
	thread(f_mus_m40_e06_begin());
	
	// setup low sniper move state
	//wake( f_valley_ai_snipers_low_move );

end

// === f_valley_ai_objcon_control_front_sniper_fold::: controls an objcon
script dormant f_valley_ai_objcon_control_front_sniper_fold()

	sleep_until( 
			( S_valley_ai_objcon >= DEF_VALLEY_AI_OBJCON_FRONT_SNIPER_FOLD )
			or
			( f_ai_killed_cnt(sg_valley_sniper_low) >= 1 )
		, 1 );
	dprint( "f_valley_ai_objcon_control_front_sniper_fold" );
	f_valley_ai_objcon_set( DEF_VALLEY_AI_OBJCON_FRONT_SNIPER_FOLD );

end

// === f_valley_ai_objcon_control_front_push::: controls an objcon
script dormant f_valley_ai_objcon_control_front_push()

	sleep_until( 
			( S_valley_ai_objcon >= DEF_VALLEY_AI_OBJCON_FRONT_PUSH )
			or
			volume_test_players( tv_valley_objcon_15 )
			or
			( (f_ai_killed_cnt(sg_valley_infantry_front) + f_ai_killed_cnt(sg_valley_infantry_frontmid)) >= 3 )
			or
			( f_ai_killed_cnt(sg_valley) >= 9 )
		, 1 );
	dprint( "f_valley_ai_objcon_control_front_push" );
	f_valley_ai_objcon_set( DEF_VALLEY_AI_OBJCON_FRONT_PUSH );

end

// === f_valley_ai_objcon_control_mid_start::: controls an objcon
script dormant f_valley_ai_objcon_control_mid_start()

	sleep_until( 
			( S_valley_ai_objcon >= DEF_VALLEY_AI_OBJCON_MID_START )
			or
			volume_test_players( tv_valley_objcon_20 )
		, 1 );
	dprint( "f_valley_ai_objcon_control_mid_start" );
	f_valley_ai_objcon_set( DEF_VALLEY_AI_OBJCON_MID_START );

end

// === f_valley_ai_objcon_control_mid_snipers::: controls an objcon
script dormant f_valley_ai_objcon_control_mid_snipers()

	sleep_until( 
			( S_valley_ai_objcon >= DEF_VALLEY_AI_OBJCON_MID_SNIPERS )
			or
			( volume_test_players(tv_valley_objcon_23_a) or volume_test_players(tv_valley_objcon_23_b) or volume_test_players(tv_valley_objcon_23_c) )
			or
			(
				( S_valley_ai_objcon >= DEF_VALLEY_AI_OBJCON_MID_START )
				and
				volume_test_players_lookat( tv_valley_objcon_23_look, 35.0, 5.0 )
			)
		, 1 );
	dprint( "f_valley_ai_objcon_control_mid_snipers" );
	f_valley_ai_objcon_set( DEF_VALLEY_AI_OBJCON_MID_SNIPERS );

	// setup sniper moves
	//wake( f_valley_ai_snipers_high_front_move );
	//wake( f_valley_ai_snipers_high_back_move );

end

// === f_valley_ai_objcon_control_mid_push::: controls an objcon
script dormant f_valley_ai_objcon_control_mid_push()

	sleep_until( 
			( S_valley_ai_objcon >= DEF_VALLEY_AI_OBJCON_MID_PUSH )
			or
			( volume_test_players(tv_valley_objcon_25) )
		, 1 );
	dprint( "f_valley_ai_objcon_control_mid_push" );
	f_valley_ai_objcon_set( DEF_VALLEY_AI_OBJCON_MID_PUSH );

end

// === f_valley_ai_objcon_control_mid_back::: controls an objcon
script dormant f_valley_ai_objcon_control_mid_back()

	sleep_until( 
			( S_valley_ai_objcon >= DEF_VALLEY_AI_OBJCON_MID_BACK )
			or
			volume_test_players( tv_valley_objcon_27 )
		, 1 );
	dprint( "f_valley_ai_objcon_control_mid_back" );
	f_valley_ai_objcon_set( DEF_VALLEY_AI_OBJCON_MID_BACK );

end

// === f_valley_ai_objcon_control_rear_attack::: controls an objcon
script dormant f_valley_ai_objcon_control_rear_attack()

	sleep_until( 
			( S_valley_ai_objcon >= DEF_VALLEY_AI_OBJCON_REAR_ATTACK )
			or
			volume_test_players( tv_valley_objcon_30 )
			or
			(
				( S_valley_ai_objcon >= DEF_VALLEY_AI_OBJCON_MID_BACK )
				and
				( ai_living_count(sq_for_knight_officer) > 0 )
				and
				( (ai_living_count(sg_valley_infantry_midrear) + ai_living_count(sg_valley_infantry_rear)) < 3 )
				and
				objects_can_see_object( Players(), sq_for_knight_officer, 22.5 )
			)
		, 1 );
	dprint( "f_valley_ai_objcon_control_rear_attack" );
	f_valley_ai_objcon_set( DEF_VALLEY_AI_OBJCON_REAR_ATTACK );

end

// === f_valley_ai_objcon_control_escape::: controls an objcon
script dormant f_valley_ai_objcon_control_escape()

	sleep_until( 
			( S_valley_ai_objcon >= DEF_VALLEY_AI_OBJCON_ESCAPE )
			or
			volume_test_players( tv_valley_objcon_40 )
		, 1 );
	dprint( "f_valley_ai_objcon_control_escape" );
	f_valley_ai_objcon_set( DEF_VALLEY_AI_OBJCON_ESCAPE );
	thread(f_mus_m40_e06_finish());
	game_save_no_timeout();
	
end

// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// JACKAL VALLEY: AI: SNIPERS
// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// ----------------------------------------------------------------------------------------------------------------------------------------------------------

// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// JACKAL VALLEY: AI: SNIPERS: LOW
// ----------------------------------------------------------------------------------------------------------------------------------------------------------

// VARIABLES ------------------------------------------------------------------------------------------------------------------------------------------------
global short S_valley_ai_snipers_low_closed =													0;

// FUNCTIONS ------------------------------------------------------------------------------------------------------------------------------------------------

// === f_valley_ai_snipers_low_move::: Manages making the low snipers move
script static void f_valley_ai_snipers_low_move()

	if ( S_valley_ai_snipers_low_closed == 0 ) then
		dprint( "f_valley_ai_snipers_low_move" );
		S_valley_ai_snipers_low_closed = -1;
	
		repeat
			if ( f_valley_ai_snipers_low_closed_set(random_range(1,3 + 1)) ) then 
				sleep_rand_s( 1.0, 4.0 );
			end
		until( ai_living_count(sg_valley_sniper_high) <= 0, 1 );
	end

end

// === f_valley_ai_snipers_low_closed_set::: Sets which gate is closed to the high snipers
script static boolean f_valley_ai_snipers_low_closed_set( short s_val )
local boolean b_return = FALSE;
	dprint( "f_valley_ai_snipers_low_closed_set" );
	
	if ( S_valley_ai_snipers_low_closed != s_val ) then
		S_valley_ai_snipers_low_closed = s_val;
		inspect( s_val );
		b_return = TRUE;
	end

	// return
	b_return;

end

// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// JACKAL VALLEY: AI: SNIPERS: HIGH: FRONT
// ----------------------------------------------------------------------------------------------------------------------------------------------------------

// VARIABLES ------------------------------------------------------------------------------------------------------------------------------------------------
global short S_valley_ai_snipers_high_front_closed =													0;

// FUNCTIONS ------------------------------------------------------------------------------------------------------------------------------------------------

// === f_valley_ai_snipers_high_front_move::: Manages making the high snipers move
script static void f_valley_ai_snipers_high_front_move()

	if ( S_valley_ai_snipers_high_front_closed == 0 ) then
		dprint( "f_valley_ai_snipers_high_front_move" );
		S_valley_ai_snipers_high_front_closed = -1;
	
		repeat
			if ( f_valley_ai_snipers_high_front_closed_set(random_range(1,3 + 1)) ) then 
				sleep_rand_s( 1.0, 4.0 );
			end
		until( ai_living_count(sg_valley_sniper_high) <= 0, 1 );
	end

end

// === f_valley_ai_snipers_high_front_closed_set::: Sets which gate is closed to the high snipers
script static boolean f_valley_ai_snipers_high_front_closed_set( short s_val )
local boolean b_return = FALSE;
	dprint( "f_valley_ai_snipers_high_front_closed_set" );
	
	if ( S_valley_ai_snipers_high_front_closed != s_val ) then
		S_valley_ai_snipers_high_front_closed = s_val;
		inspect( s_val );
		b_return = TRUE;
	end

	// return
	b_return;

end

// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// JACKAL VALLEY: AI: SNIPERS: HIGH: BACK
// ----------------------------------------------------------------------------------------------------------------------------------------------------------

// VARIABLES ------------------------------------------------------------------------------------------------------------------------------------------------
global short S_valley_ai_snipers_high_back_closed =													0;

// FUNCTIONS ------------------------------------------------------------------------------------------------------------------------------------------------

// === f_valley_ai_snipers_high_back_move::: Manages making the high snipers move
script static void f_valley_ai_snipers_high_back_move()

	if ( S_valley_ai_snipers_high_back_closed == 0 ) then
		dprint( "f_valley_ai_snipers_high_back_move" );
		S_valley_ai_snipers_high_back_closed = -1;
	
		repeat
			if ( f_valley_ai_snipers_high_back_closed_set(random_range(1,3 + 1)) ) then 
				sleep_rand_s( 1.0, 4.0 );
			end
		until( ai_living_count(sg_valley_sniper_high) <= 0, 1 );
	end

end

// === f_valley_ai_snipers_high_back_closed_set::: Sets which gate is closed to the high snipers
script static boolean f_valley_ai_snipers_high_back_closed_set( short s_val )
local boolean b_return = FALSE;
	dprint( "f_valley_ai_snipers_high_back_closed_set" );
	
	if ( S_valley_ai_snipers_high_back_closed != s_val ) then
		S_valley_ai_snipers_high_back_closed = s_val;
		inspect( s_val );
		b_return = TRUE;
	end

	// return
	b_return;

end


// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// JACKAL VALLEY: AI: PRE
// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// ----------------------------------------------------------------------------------------------------------------------------------------------------------

// VARIABLES ------------------------------------------------------------------------------------------------------------------------------------------------

//global object OBJ_valley_orders_jackal_00 = 																NONE;

// FUNCTIONS ------------------------------------------------------------------------------------------------------------------------------------------------

// === cs_valley_pre_warn::: COMMAND SCRIPT
script command_script cs_valley_pre_warn()
	dprint( "cs_valley_pre_warn" );

	cs_abort_on_alert( FALSE );
	cs_abort_on_damage( FALSE );

//OBJ_valley_orders_jackal_00 = sq_valley_front_00;

	pup_play_show( "pup_valley_pre_warn" );

end

// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// JACKAL VALLEY: AI: ORDERS
// ----------------------------------------------------------------------------------------------------------------------------------------------------------
// ----------------------------------------------------------------------------------------------------------------------------------------------------------

// VARIABLES ------------------------------------------------------------------------------------------------------------------------------------------------
static boolean B_valley_player_saw_knight_orders =													FALSE;

global object OBJ_valley_orders_jackal_00 = 																NONE;
global object OBJ_valley_orders_jackal_01 = 																NONE;
global object OBJ_valley_orders_jackal_02 = 																NONE;
global object OBJ_valley_orders_jackal_03 = 																NONE;
global object OBJ_valley_orders_jackal_04 = 																NONE;

// FUNCTIONS ------------------------------------------------------------------------------------------------------------------------------------------------

// === f_valley_ai_orders_create::: Initialize
script dormant f_valley_ai_orders_init()
	dprint( "f_valley_ai_orders_init" );

	// setup trigger
	wake( f_valley_ai_orders_trigger );
	
end

// === f_valley_ai_orders_deinit::: DeInitialize
script dormant f_valley_ai_orders_deinit()
	dprint( "f_valley_ai_orders_deinit" );
	
	// kill functions
	kill_script( f_valley_ai_orders_trigger );
	kill_script( f_valley_ai_orders_action );
	
end

// === f_valley_ai_orders_trigger::: Triggers the orders event
script dormant f_valley_ai_orders_trigger()
	sleep_until( volume_test_players(tv_valley_lower_area) or volume_test_players(tv_valley_knight_event_los) or f_valley_ai_orders_player_watching() or (S_valley_ai_objcon >= DEF_VALLEY_AI_OBJCON_ORDERS_START), 1 );
	dprint( "f_valley_ai_orders_trigger" );
	
	// setup the knight
	wake( f_valley_ai_orders_action );
	
end

// === f_valley_ai_orders_trigger::: Action that starts the knight giving orders
script dormant f_valley_ai_orders_action()
local long l_blind_thread = 0;
local long l_see_thread = 0;
local long l_pup_id = 		0;

	dprint( "f_valley_ai_orders_action" );
	 
	// setup the knight
	if ( S_valley_ai_objcon < DEF_VALLEY_AI_OBJCON_ESCAPE ) then	// This check makes it so when using the insertion point this event is disabled - TWF

		// minor delay
		sleep_rand_s( 0.25, 0.5 );
	
		// place the knight
		ai_place( sq_for_knight_officer );
		sleep_until( S_valley_ai_objcon >= DEF_VALLEY_AI_OBJCON_ORDERS_START, 1 );
		ai_set_blind( sq_for_knight_officer, TRUE );
		ai_set_blind( sg_valley_infantry_front, TRUE );
		
		// start a thread to cancel blind
		l_blind_thread = thread( f_valley_ai_orders_blind_restore() );
	
		// start a thread to see if the player sees the event
		//l_see_thread = thread( f_valley_ai_orders_watch_player_sees() );
	
		// assign AI to puppeteer
		// - Do not assign jackal objects if hostile
		if ( S_valley_ai_objcon < DEF_VALLEY_AI_OBJCON_ATTACK ) then
			OBJ_valley_orders_jackal_00 = sq_valley_front_00;
			OBJ_valley_orders_jackal_01 = sq_valley_front_01;
			OBJ_valley_orders_jackal_02 = sq_valley_front_02;
			//OBJ_valley_orders_jackal_03 = sq_valley_front_03;
			//OBJ_valley_orders_jackal_04 = sq_valley_front_04;
		end
	
		// play the puppeteer
		sleep_s( 0.5 );
		l_pup_id = pup_play_show( "pup_valley_order_knight" );
		sleep_until( not pup_is_playing(l_pup_id), 1 );
		
		// Make sure sequence is set to being over
		f_valley_ai_objcon_set( DEF_VALLEY_AI_OBJCON_ORDERS_END );
	
		// make sure the knight went back
		//thread( f_valley_ai_orders_knight_phase_back() );
		cs_run_command_script (sq_for_knight_officer, f_valley_ai_orders_knight_phase_back);
	
		// kill temp threads
		kill_thread( l_blind_thread );
		kill_thread( l_see_thread );
	
		// thread the conversation that the event has happened	
		thread( M40_covenant_and_promethean() );

	end
	
	
end

// === f_valley_ai_orders_watch_player_sees::: Watches for the player to see the orders being given
script static void f_valley_ai_orders_watch_player_sees()
	sleep_until( f_valley_ai_orders_player_watching(), 1 );
	dprint( "f_valley_ai_orders_watch_player_sees" );

	B_valley_player_saw_knight_orders = TRUE;

	// thread the conversation that the event has happened	
	thread( M40_covenant_and_promethean() );

end

// === f_valley_ai_orders_blind_restore::: Watches if the player gets too close and turns off blind
script static void f_valley_ai_orders_blind_restore()
local short s_living_cnt = ai_living_count( sg_valley );

	sleep_until( f_ai_sees_enemy(sg_valley) or (ai_living_count(sg_valley) < s_living_cnt) or (objects_distance_to_object(Players(),sq_for_knight_officer) <= 12.5), 1 );
	dprint( "f_valley_ai_orders_blind_restore" );

	// restore sight
	ai_set_blind( sq_for_knight_officer, FALSE );
	ai_set_blind( sg_valley_infantry_front, FALSE );

end

// === f_valley_ai_orders_player_saw::: Checks if the player saw the knight give the orders
script static boolean f_valley_ai_orders_player_saw()
	B_valley_player_saw_knight_orders;
end

// === f_valley_ai_orders_player_saw::: Checks if the player is watching the knight orders event
script static boolean f_valley_ai_orders_player_watching()
	volume_test_players_lookat(tv_valley_knight_event, 25.0, 5.0);
end

// === cs_valley_knight_placement::: COMMAND SCRIPT
script command_script cs_valley_knight_placement()
	dprint( "cs_valley_knight_placement" );

	cs_abort_on_alert( FALSE );
	cs_abort_on_damage( FALSE );

	object_hide( ai_current_actor, FALSE );
	cs_phase_in();
	
	// set orders to start
	f_valley_ai_objcon_set( DEF_VALLEY_AI_OBJCON_ORDERS_START );

end

// === f_valley_ai_orders_knight_phase_back::: Phases the knight back to his home
script command_script f_valley_ai_orders_knight_phase_back()
static boolean b_phased = FALSE;
	
	if ( not b_phased ) then
		b_phased = TRUE;
		
		// phase knight to the back		
		dprint( "f_valley_ai_orders_knight_phase_back" );
		
		// phase to point
		sleep(15);
		cs_phase_to_point( sq_for_knight_officer, TRUE, pts_val_thes.knight_teleport_back );
		ai_erase(sq_for_knight_officer);
				
	/*	// temprorarily braindead to help clear his ai
		ai_braindead( sq_for_knight_officer, TRUE );
		
		// wait a little bit
		sleep( 3 );
		
		// Unblind him in case he's still blind
		ai_set_blind( sq_for_knight_officer, FALSE );
		
		// force berserk to false in case he triggered it pre-teleport
		ai_berserk( sq_for_knight_officer, FALSE );
		
		// give him his brain back
		ai_braindead( sq_for_knight_officer, FALSE );*/

	end
	
end

script static boolean f_valley_ai_knight_defeated()
	f_ai_is_defeated( sq_for_knight_officer );
end



// =================================================================================================
// =================================================================================================
// EL CITADEL JACKAL VALLEY   IJA
// =================================================================================================
// =================================================================================================

//global boolean b_knight_escape = FALSE;
//global boolean b_jaklead = FALSE;
//global boolean b_sniper_low_front = FALSE;
//global boolean b_sniper_lowrear_front = TRUE;
//global boolean b_sniper_highleft_front = FALSE;
//global boolean b_sniper_cit_front = FALSE;
//global boolean b_sniper_rearfar_front = FALSE;
//global boolean b_sniper_midfar_front = FALSE;
//global boolean b_sniper_frontright_front = FALSE;
//global boolean b_last_resort = FALSE;
//global boolean b_sniper_midhide_front = TRUE;
//global boolean b_cover_grunts = FALSE;
//global boolean b_val_leftwall_forward = FALSE;
//global boolean b_stopthisloop = FALSE;

/*
// === XXX::: xxx
script dormant f_blip_citadel()

	f_blip_flag( citadel_exterior_flag, "recon" );
	
	sleep_until( volume_test_players(tv_citadel_exterior), 1 );
	f_unblip_flag( citadel_exterior_flag );		
	
end
*/


/*
script static void f_set_var_b_leftwall_fallback()
	wake( f_set_clear_wall_loop );
	
	repeat
		sleep_until( volume_test_players(tv_sniperval_sniperwall) or volume_test_players(tv_val_ledge_special), 5 );
			//print("snipers up" );
			b_val_leftwall_forward = TRUE;
		sleep_until( not ( volume_test_players(tv_sniperval_sniperwall) or volume_test_players(tv_val_ledge_special) ),5 );
			sleep_rand_s( 1.0, 4.0 );
			//print("snipers back" );
			b_val_leftwall_forward = FALSE;
	until( b_stopthisloop == TRUE );
end

script dormant f_set_clear_wall_loop()

	sleep_until(			
			ai_spawn_count(sg_valley_sniper_low) > 0 and ai_living_count(sg_valley_sniper_low) <= 0
			,1 );
			
		b_stopthisloop = TRUE;
end
*/

/*

script command_script knight_teleport()
	print ("knight is teleporting" );	
	cs_phase_to_point (pts_val_thes.pk_teleport );
end
*/

/*
script static void xyz()
	
	ai_place( sq_for_knight_officer );
	sleep_s( 1.0 );
	//thespian_performance_activate(thespian_knight_intro );
end



script command_script cs_valley_sniper()
	cs_force_combat_status( 3 );
end
*/

/*
script dormant f_sniperalley_control()

	dprint("valley_control:::active" );

	//wake( f_findplayer_leftside_01 );	
	//wake( f_findplayer_low_front_sniper );	


end
*/

/*
script dormant f_findplayer_leftside_01()


	sleep_until( volume_test_players ( tv_valley_objcon_25 ) or volume_test_players ( tv_valley_objcon_25_a ) or volume_test_players ( tv_valley_objcon_25_b ) , 1 );
	
	//run exposed sniper to the rear
	b_sniper_midhide_front = FALSE;
	
	//bring snipers forward
	b_sniper_rearfar_front = TRUE;
	b_sniper_midfar_front = TRUE;

	b_last_resort = TRUE;
end
*/

/*
script dormant f_jak_low_front_sniper()

	sleep_until( S_valley_ai_objcon > 20 or 
	
		( ai_living_count(sq_valley_sniper_mid_01) <= 0 and 
			ai_living_count(sq_valley_sniper_low_01) <= 0
		)
	
	 ,1 );
				
		//dprint("MOVE UP HIDING SNIPER" );
		b_sniper_low_front = TRUE;
end
*/


/*

script dormant f_findplayer_low_front_sniper()
	
	sleep_until( volume_test_players ( tv_val_low_snipe_forward ) ,1 );
		b_sniper_low_front = TRUE;
	
end

script static void branch_abort()
		sleep(1 );
end
*/


//possible to make ai shoot at player for shore
//cs_shoot <ai> <boolean> <object>

// --- End m40_invasion_jackal.hsc ---

// --- Begin m40_invasion_library.hsc ---
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343
//
// 	Mission: 					m40_invasion_mission_cf
//	Insertion Points:	start 	- Beginning
//	ifo		- fodder
//	ija		- jackal alley
//	ici		- citidel exterior
//	iic		- citidel interior
//	ipo		- powercave/ battery room
//	ili		- librarian encounter			
//  ior		- ordnance training					
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343

// =================================================================================================
// =================================================================================================
// *** GLOBALS ***
// =================================================================================================
// =================================================================================================
global boolean b_librarian_enc = FALSE;
global real r_lib_fast_door_time = 20;
global boolean b_turret_door_closed = TRUE;

global boolean b_lib_exit_audio_done = FALSE;
global boolean b_lib_exit_audio_started = FALSE;
global boolean b_lib_exit_dialog_started = FALSE;
global long cort_show = 0;



// =================================================================================================
// =================================================================================================
// Liberry
// =================================================================================================
// =================================================================================================

script static void lib_debug()
	wake( f_librarian_main );
end

script dormant f_librarian_main()
	zone_set_trigger_volume_enable("begin_zone_set:zone_set_ele_epic", FALSE);
	zone_set_trigger_volume_enable("zone_set:zone_set_ele_epic", FALSE);
	sleep_until( current_zone_set_fully_active() >= DEF_S_ZONESET_CAVERN_LIBRARIAN_VALE(), 1 );
	//sleep_until( volume_test_players (tv_librarian_entrance), 1 );
	//wake(f_vale_domain_press);
   effect_new (environments\solo\m40_invasion\fx\energy\librarian_beam.effect, fx_librarian_beam );
	ai_place (falsetana);
	object_set_scale (object_get_ai(falsetana), 4, 0);
	sleep(1);
		data_mine_set_mission_segment ("m40_librarian" );
		wake( f_lib_crates_init );
		wake (m40_collect_cortana_resistance );
		wake( f_valley_cleanup );
//		thread( f_redlight_on( citadel_lib_exit  ) );
		ai_lod_full_detail_actors( 17 );
		b_testturret = TRUE;
//		thread( storyblurb_display(ch_blurb_lib_cort , 5, FALSE, FALSE) );
		sleep(5 );
		wake( f_librarian_vo );
		b_librarian_enc = TRUE;
		f_unblip_flag ( fg_cavern_route );
		object_create(bt_cortana_librarian );
		game_save_no_timeout( );
		wake( f_lib_objcon_controller );
		kill_volume_enable(kill );
		thread(f_see_cortana());
//		object_destroy(lib_false_cortana );
	object_create(dm_pull_into_beam);
	//sleep(15);
	
	sleep_until( volume_test_players (tv_cortana_beam_cut), 1 );	
	object_hide (falsetana, 1);
	cortana_rampancy_set(0);
	dprint("CUTSCENE" );	
		
	chud_cinematic_fade (0, 30 );
	//sleep_s(1.5 );
	cinematic_show_letterbox (TRUE);
	cinematic_enter( cin_m041_librarian, TRUE );
	switch_zone_set( cin_m041_librarian );
	local long librarian_bink_thread = thread( f_librarian_bink() );
	f_play_cinematic_chain( cin_m041_librarian, cin_m041b_librarian , cin_m041c_librarian, TRUE );
	kill_thread( librarian_bink_thread );

	volume_teleport_players_not_inside(tv_lib_all, fg_tp_to_lib);
	f_insertion_zoneload( DEF_S_ZONESET_LIBRARIAN_VALE(), TRUE );
	object_destroy(dm_pull_into_beam);

	//cinematic_exit( cin_m041c_librarian, TRUE );

	// unrolled from cinematic_exit
	cinematic_exit_pre (TRUE);
	players_hide( -1, TRUE ); // hide the players again
	cinematic_exit_post_keep_letterbox (TRUE);

	g_ics_player = player_get_first_alive();
	
	ai_erase (cavern_sentinels);
	ai_erase (cavern_sentinels_2);
	ai_erase (cavern_sentinels_3);
	ai_erase (cavern_sentinels_4);
	ai_erase (cavern_sentinels_5);
	ai_erase (monitor_kip);

  effect_kill_from_flag (environments\solo\m40_invasion\fx\energy\librarian_beam.effect, fx_librarian_beam );   
	interpolator_start (librarian_light_off);
	local long show = pup_play_show(chief_gift_pup);
//	effect_new (environments\solo\m40_invasion\fx\energy\librarian_beam.effect, fx_librarian_beam );
	effect_kill_from_flag (environments\solo\m40_invasion\fx\energy\librarian_beam.effect, fx_librarian_beam );
	effect_new (environments\solo\m40_invasion\fx\energy\librarian_chief_mutation.effect, fx_librarian_beam );
	thread( f_close_library_lockin() );
	cinematic_tag_fade_in_to_game (cin_m041c_librarian);
	cinematic_show_letterbox (FALSE);
	sleep_until(not pup_is_playing(show),1);

	//Librarian Beam Inactive
  effect_new (environments\solo\m40_invasion\fx\energy\librarian_beam_inactive.effect, fx_librarian_beam );

	players_hide( -1, FALSE );

//		player_disable_movement(TRUE );

		ai_erase( gr_cave_turrets );
//		sleep_s(10 );
//		wake (m41_librarian_cutscene );
//		player_action_test_reset( );
//		player_disable_movement(FALSE );
//		sleep_until( player_action_test_cancel() == TRUE, 1 );
		
		objectives_finish (2);
		objectives_show (3);
		
		wake( f_spawn_liberry_baddies );
		wake(f_dialog_m40_cortana_chief_reunite);
		wake (f_bcs_librarian_elevator_blip);
		
//	fade_in(255,255,255,10 );
		chud_cinematic_fade (1, 30 );
		//sleep(30 );
//		cinematic_show_letterbox (FALSE );
		
		game_save( );
		
		sleep_s(1.5 );
		thread( f_get_cortana_interact() );
		sleep_s(1 );
		
		thread(f_mus_m40_e08_begin());
		wake (library_music_end);

end

script static void f_librarian_bink()
	sleep_until(bink_is_playing() == TRUE, 1);
	sleep_s(12);
	cinematic_subtitle( C_M41_00700, 12.2 ); // "Librarian: Mankind spread into the stars with an unexpected, desperate violence. Entire systems fell before the Didact's Warrior. Servants rose to halt the aggression."
	sleep_s(24.1);
	cinematic_subtitle( C_M41_00800, 6.9  ); // "Librarian: When the Didact finally exhausted the humans after a millenia, his sentence was severe."
	sleep_s(9.4);
	cinematic_subtitle( C_M41_00900, 4.4  ); // "Librarian: We had no way of knowing that the Forerunners were not your only enemy."
	sleep_s(6.2);
	cinematic_subtitle( C_M41_01000, 4.8  ); // "Librarian: Humanity hadn't been expanding. They were running."
	sleep_s(7);
	cinematic_subtitle( C_M41_01100, 5.3  ); // "Librarian: Weakened from our conflict, we were no match for the parasite which pursued you."
	sleep_s(7);
	cinematic_subtitle( C_M41_01200, 14.1 ); // "Librarian: The Forerunners made plans for a final, great journey. But the Didact refused to yield our Mantle of Responsibility. He would save all life in the galaxy... at a cost."
	sleep_s(15.7);
	cinematic_subtitle( C_M41_01300, 10  ); // "Librarian: In the Forerunners' quest for transcendence, the Composer had been intended to bridge the organic and digital realms. It would have made us immortal."
	sleep_s(13.4);
	cinematic_subtitle( C_M41_01500, 10.8 ); // "Librarian: But its results soured. The stored personalities fragmented, and our attempts to return them to biological states created only abominations."
	sleep_s(12.7);
	cinematic_subtitle( C_M41_01600, 3.3  ); // "Librarian: Such moral concerns faded from the Didact's attention."
	sleep_s(6);
	cinematic_subtitle( C_M41_01700, 2.5  ); // "Librarian: The Flood only assimilated living tissue."
	sleep_s(4.5);
	cinematic_subtitle( C_M41_01800, 5.2  ); // "Librarian: The Composer would provide the Didact his solution... and his revenge."
end

script static void f_see_cortana()
	sleep_until(volume_test_players_lookat(tv_see_cort, 35, 6), 1);
	sleep(30);
	cortana_rampancy_set(.8);
	sleep(30);
	object_hide (falsetana, 1);
	cortana_rampancy_set(0);
	thread( f_lib_bigshake() );
end

script dormant f_lib_crates_init()
	object_create_folder(lib_crates );
end

script dormant f_lib_crates_cleanup()
	object_destroy_folder(lib_crates );
end

script static void f_lib_bigshake()
	camera_shake_all_coop_players( 0.65, 0.65, 2, 2, library_camera_shake );
end

script command_script cs_lib_boss()
	sleep_s(2.5 );
	cs_phase_to_point( pts_lib_phase.p0 ) ;
	sleep(1 );
end

script command_script cs_lib_reserve()
	sleep_s(1 );
	cs_phase_to_point( pts_lib_phase.p1 ) ;
	sleep(1 );
end


script command_script cs_lib_knight_1()
	sleep(10 );
	cs_phase_to_point( pts_lib_phase.p2 ) ;
	sleep(1 );
end


script command_script cs_lib_knight_2()
	cs_phase_to_point( pts_lib_phase.p3 ) ;
	sleep(1 );
end

script command_script cs_lib_legend_1()
	sleep_rand_s(4,6 );
	cs_phase_to_point( pts_lib_phase.p5 ) ;	
	sleep(1 );
end

script command_script cs_lib_legend_2()
	sleep_rand_s(3,5 );
	cs_phase_to_point( pts_lib_phase.p4 ) ;
	sleep(1 );
end


script static void f_close_library_lockin()

	object_move_by_offset ( sn_lib_door_lg_lockin_a, 0.1, 0, 0, -2.0 );
	if not b_turret_door_closed then 
		b_turret_door_closed = TRUE;
//		object_move_by_offset ( sn_pcave_turret_door, 0.1, 0, 0, -2.0 );
		device_set_power (grotto_door, 1 );
		
//		thread( f_redlight_on( sn_pcave_turret_door  ) );
	end
end

script dormant f_lib_objcon_controller()



	sleep_until( volume_test_players (tv_lib_objcon_10) or s_objcon_lib >= 10, 1 );
		if s_objcon_lib <= 10 then
			s_objcon_lib = 10;
			dprint("s_objcon_lib = 10 " );
		end
	
	sleep_until( volume_test_players (tv_lib_objcon_20) or s_objcon_lib >= 20, 1 );
		if s_objcon_lib <= 20 then	
			s_objcon_lib = 20;
			dprint("s_objcon_lib = 20 " );
		end

	game_save_no_timeout( );

	sleep_until( volume_test_players (tv_lib_objcon_25) or s_objcon_lib >= 25, 1 );
		if s_objcon_lib <= 25 then
			s_objcon_lib = 25;
			dprint("s_objcon_lib = 25 " );
		end

	sleep_until( volume_test_players (tv_lib_objcon_30) or s_objcon_lib >= 30, 1 );
		if s_objcon_lib <= 30 then
			s_objcon_lib = 30;
			dprint("s_objcon_lib = 30 " );
		end

	sleep_until( volume_test_players (tv_lib_objcon_40) or s_objcon_lib >= 40, 1 );
		if s_objcon_lib <= 40 then
			s_objcon_lib = 40;
			dprint("s_objcon_lib = 40 " );
		end

end

script static void f_get_cortana_interact()
	sleep(30* 4 );	
	f_blip_object (bt_cortana_librarian, "activate" );
	//object_create (lib_cortana);
	//effect_new (objects\characters\storm_cortana\fx\rez\cor_rez_in.effect, lib_cortana_plinth); 
	//ai_place (lib_cortana_2);
	effect_new (objects\characters\storm_cortana\fx\plinth\cor_plinth_glow.effect, lib_cortana_plinth); 
	//object_set_scale (lib_cortana_2 , .1, 0 );
  cort_show = pup_play_show(lib_cortana_show);
  //object_set_scale (lib_cortana_2 , 1, 10);
	NotifyLevel("liberry cortana active" );
	wake (cortana_late_get );
	wake (f_del_rio_elevator_dialog);
	
	sleep_until( device_get_position(bt_cortana_librarian) != 0,1 );
	device_set_power(bt_cortana_librarian, 0);
		f_unblip_object (bt_cortana_librarian );
		effect_new (objects\characters\storm_cortana\fx\rez\cor_rez_in.effect, lib_cortana_plinth); 
		sleep(2);
		thread(f_global_cortana_hide(lib_cortana_2));
		ai_erase (lib_cortana_2);
		effect_delete_from_flag (objects\characters\storm_cortana\fx\plinth\cor_plinth_glow.effect, lib_cortana_plinth);
			cui_hud_set_objective_complete("chapter_095");
		switch_zone_set ("zone_set_librarian_vale" );
		sleep(30*3 );
		NotifyLevel ("got cortana back in librarian" );
		print("activating door function");
		thread( f_open_liberry_door_exit() );
end

script dormant f_del_rio_elevator_dialog()
	sleep_until( ai_living_count (sg_librarian) < 1 );
	sleep_s(2);
	/*if b_lib_exit_dialog_started == FALSE then
		wake (f_dialog_elevator_delrio);
	end*/
end

script dormant cortana_late_get()
	sleep_s( 7 );
	sleep_until( ai_living_count (sg_librarian) < 1 );
	if (device_get_position(bt_cortana_librarian) == 0) then
		//wake (f_dialog_m40_retrieve_cortana );
		pup_stop_show(cort_show);
		pup_play_show(lib_cortana_show_2);
		print ("f_dialog_m40_retrieve_cortana" );
	else
		sleep(1 );
	end
end

script dormant f_bcs_librarian_elevator_blip()
	sleep_until( (b_cortana_retrieved and (ai_living_count (sg_librarian) < 1) ) or
				 volume_test_players(tv_librarian_exit));

	f_blip_position_breadcrumbs(-334.53, -759.00, 17.91, "librarian_elevator", "default");
	sleep_until( volume_test_players (tv_lib_elevator_2), 1 );
	f_unblip_position_breadcrumbs("librarian_elevator");
end

script dormant library_music_end()
	sleep_s (3);
	
	sleep_until( ai_living_count (gr_lib_all) > 0);
	
	sleep_until( ai_living_count (gr_lib_all) < 1
	or
	volume_test_players (tv_librarian_exit), 1
	);
	
	thread(f_mus_m40_e08_finish()); 
end

script dormant f_spawn_liberry_baddies()
	dprint("spawn baddies" );

	ai_place (sq_rush);
	ai_disregard(ai_actors(monitor_kip), TRUE);
	ai_disregard(ai_actors(cavern_sentinels), TRUE);
	ai_disregard(ai_actors(cavern_sentinels_2), TRUE);
	ai_disregard(ai_actors(cavern_sentinels_4), TRUE);
	ai_disregard(ai_actors(cavern_sentinels_5), TRUE);
	sleep (30 * 1);
	
	ai_place (sg_librarian);
	ai_disregard(ai_actors(monitor_kip), TRUE);
	ai_disregard(ai_actors(cavern_sentinels), TRUE);
	ai_disregard(ai_actors(cavern_sentinels_2), TRUE);
	ai_disregard(ai_actors(cavern_sentinels_4), TRUE);
	ai_disregard(ai_actors(cavern_sentinels_5), TRUE);
	
	/*wake( f_lib_legend );
	
		sleep_until(
			ai_spawn_count ( gr_lib_all ) > 0 and 
			ai_living_count ( gr_lib_all ) <= 0
		, 1 );
		
		r_lib_fast_door_time = 10;*/
		
		game_save_no_timeout( );
end
script command_script just_phase_in

	cs_phase_in();
	
end

/*script dormant f_lib_legend()
	//inspect(difficulty_legendary() );
	if (difficulty_legendary() or game_is_cooperative() ) then
		sleep_until(
			ai_spawn_count ( gr_lib_pawn_rush ) > 0 and 
			ai_living_count ( gr_lib_pawn_rush ) <= 0		
		,1 );
		print("about to spawn legend knights" );
		sleep_rand_s(2,7 );
		
		ai_place( sq_for_knight_extra_legend_b );
		ai_place( sq_for_knight_extra_legend_a );
	end


end*/

// activated when player picks up cortana
script static void f_open_liberry_door_exit()

	sleep_until( current_zone_set_fully_active() == DEF_S_ZONESET_LIBRARIAN_VALE(), 1 );
	
//		thread( f_greenlight_on( citadel_lib_exit  ) );
		//object_move_by_offset ( sn_liberry_door_exit, 4, 0, 0, 1.3 );
	
		//device_set_power (citadel_lib_exit, 1 );
		citadel_lib_exit->open();
		wake( f_lib_exit_doors );
		print("waking vaters");
		wake( f_lib_elevator_2 );	
		//object_create(sn_rear_ord_door );
		sleep(5 );
		
		//print("OPENING DOOOORS NAO");
//		thread( f_open_resetting_door( tv_rear_ord_door, sn_rear_ord_door ) );

end

script dormant f_lib_exit_doors()
	//sleep_until( volume_test_players (tv_librarian_exit), 1 );	// player walks through librarian exit
	
		citadel_lib_exit->auto_trigger_close(tv_librarian_exit, FALSE, TRUE, TRUE); // close the door behind the player
		sleep_until( citadel_lib_exit->check_close(), 1 );
		
		// start streaming in next zone set once the door is completely close
		// zone set switch will be completed when player exits the elevator
		volume_teleport_players_not_inside(tv_librarian_exit, fg_tp_lib_ele);
		sleep(1);
		zone_set_trigger_volume_enable("begin_zone_set:zone_set_ele_epic", TRUE);
		//prepare_to_switch_to_zone_set( f_zoneset_get(DEF_S_ZONESET_ELE_EPIC()) );
		wake (f_lib_elevator_exit); // waits for player to reach bottom of elevator
	
//		f_blip_object (bt_librarian_elevator_door, "activate" );
//		sleep_until( device_get_position(bt_librarian_elevator_door) != 0 );
//			f_unblip_object (bt_librarian_elevator_door );
			
//			sleep(10 );
//			wake( f_lib_elevator_2 );				
//			object_move_by_offset ( sn_lib_door_elevator, r_lib_fast_door_time, 0, 0, 3 );		
//			sound_impulse_start ('sound\environments\solo\m020\machines_devices\s_dm_gun_door', sn_liberry_door_exit, 1 );

			//sleep_s( 2 );
end


script dormant f_lib_elevator_2()
//	f_blip_object (bt_lib_elevator_activate, "activate" );
//	sleep_until( device_get_position(bt_lib_elevator_activate) != 0 );
//		f_unblip_object (bt_lib_elevator_activate );		

	// wait for player to enter the elevator
	b_lib_exit_dialog_started = TRUE;
	sleep_until( volume_test_players (tv_lib_elevator_2), 1 );
		
		thread (teleport_show_sc());
		
		sleep(30 );
		wake( f_cleanup_lib );
		wake (m40_elevator_to_ord_talk );

		thread (teleport_players_in_elevator_2());
		
		local long lib_ele = pup_play_show(lib_elevator);

		print("elevator show starting");
		sleep_until(not pup_is_playing(lib_ele));
		sleep_until(not PreparingToSwitchZoneSet(), 1); 
		zone_set_trigger_volume_enable("zone_set:zone_set_ele_epic", TRUE);
		//object_move_to_flag(librarian_elevator_1,25,fg_elevator_2_top );
end

script static void teleport_show_sc()
	sleep_until( volume_test_players (tv_elev_2_exit), 1 );
	pup_play_show(lib_portal_pup);
end

script static void teleport_players_in_elevator_2()

	sleep_until (volume_test_players (tv_players_in_elevator_2), 1);
	
	print ("elevator teleport!");

	if
		volume_test_object (tv_players_in_elevator_2_whole, player0)
	then
			object_teleport (player0, elevator_teleport_01c);
	end
	
	if
		volume_test_object (tv_players_in_elevator_2_whole, player1)
	then
			object_teleport (player1, elevator_teleport_02c);
	end
	
	if
		volume_test_object (tv_players_in_elevator_2_whole, player2)
	then
			object_teleport (player2, elevator_teleport_03c);
	end
	
	if
		volume_test_object (tv_players_in_elevator_2_whole, player3)
	then
			object_teleport (player3, elevator_teleport_04c);
	end
end

// woken when the player enters the library elevator
script dormant f_lib_elevator_exit()
	sleep_until(volume_test_players(tv_lib_elevator_exit), 1); // wait for player to exit elevator
	
	// when the player reaches the hall at the bottom of the elevator, see if the next zone set has finished loading
	// sleep_until (not preparingToSwitchZoneSet(), 1); // poll whether async load is complete
//	f_insertion_zoneload( DEF_S_ZONESET_ELE_EPIC(), TRUE );
	
	// activate the teleporter at the end of the hall
	wake(f_epic_zoneload);
	
	thread (lib_teleport_start() );
	//effect_new_at_ai_point (environments\solo\m10_crash\fx\flash_white.effect, pts_teleport_lib.p0);
end

script dormant f_cleanup_lib()
	sleep(120 );
	ai_erase(gr_lib_all );
	wake( f_lib_crates_cleanup );
//	wake (ordnance_chapter_title );
//	wake (ordnance_convoy );
	garbage_collect_now( );
end

script static void f_open_resetting_door( trigger_volume tv, object door)
	sleep_until( volume_test_players ( tv ), 1 );
		dprint("opening exit door" );
		sound_impulse_start ('sound\environments\solo\m020\machines_devices\s_dm_gun_door', door, 1 );
		object_move_by_offset ( door, 1.5, 0, 0, 1.1 );	
		sleep(1 );
		thread( f_close_resetting_door( tv, door ) );
end

script static void f_close_resetting_door(trigger_volume tv, object door)
		sleep_s(4 );
		sound_impulse_start ('sound\environments\solo\m020\machines_devices\s_dm_gun_door', door, 1 );
		object_move_by_offset ( door, 1.5, 0, 0, -1.1 );	
		thread( f_open_resetting_door( tv, door ) );
end

// this script is probably in the wrong place but I'm not sure where to put it
// It is for the trigger volume right after the player is teleported out of the library
script dormant f_epic_zoneload()
	sleep_until(volume_test_players ( tv_epic_zoneload ), 1 );
	
	// start zone set switch. It is unfortunate that this has to be done during combat :(
	prepare_to_switch_to_zone_set( f_zoneset_get(DEF_S_ZONESET_EPIC()) );
	
	// sleep_until (not preparingToSwitchZoneSet(), 1); // poll whether async load is complete
	f_insertion_zoneload( DEF_S_ZONESET_EPIC(), TRUE );
	sleep_until (current_zone_set_fully_active() == DEF_S_ZONESET_EPIC());	
	
	effect_new (environments\solo\m40_invasion\fx\energy\tractor_beam.effect, fx_tractor_base );
end

/*
script dormant f_vale_domain_press()
	sleep_until (object_valid (vale_terminal_button), 1);
	sleep_until (device_get_position(vale_terminal_button) > 0.0, 1 );
	pup_play_show(domain_press);
end
*/
// =================================================================================================
// =================================================================================================
// VO 
// =================================================================================================
// =================================================================================================

script dormant f_librarian_vo()

	//move to post cinematic	after grabbing cortana
	sleep_until( LevelEventStatus ("liberry cortana active"), 1		 );
		// 148 : Chief! Up here!
//		storyblurb_display(ch_blurb_librarian_post , 3, FALSE, FALSE );
	//	sound_impulse_start ('sound\dialog\Mission\M40\m_m40_Cortana_06300', NONE, 1 );
	//	sleep (30 * 2 );
		
	sleep_until( LevelEventStatus ("got cortana back in librarian"), 1		 );		
		// 149 : Are you alright?
	//	sound_impulse_start ('sound\dialog\Mission\M40\m_m40_MC_06400', NONE, 1 );
	//	sleep (30 * 1 );
		 
		
		// 150 : I�ll be better once you convince your ancestors to stop shooting at us!
		//sound_impulse_start ('sound\dialog\Mission\M40\m_m40_Cortana_06500', NONE, 1 );
		//sleep (30 * 4 );
	
	sleep_until( volume_test_players (tv_rear_ord_elevator), 1		 );	
		b_lib_exit_audio_started	= TRUE;
		// 151 : I�m reading our folks just outside. Guess they got through that ravine in one piece.
	//	sound_impulse_start ('sound\dialog\Mission\M40\m_m40_Cortana_06600', NONE, 1 );
	//	sleep (30 * 5 );		
		
		// 152 : Palmer to Master Chief. Welcome back. We�ve just been �admiring� your handiwork.
		//sound_impulse_start ('sound\dialog\Mission\M40\m_m40_Palmer_06700', NONE, 1 );
		//sleep (30 * 5 );
		
		// 153 : Chief, this is Del Rio. With those guns off-line, we�re cleared for close air support all the way to the gravity well, but get on it - whatever you did down there pissed the natives off something fierce. We�re taking a beating up here.
		//sound_impulse_start ('sound\dialog\Mission\M40\m_m40_Del_Rio_06800', NONE, 1 );
	//	sleep (30 * 11 );
		
		// 154 : Affirmative, Infinity. Moving on to gravity well now.
		//sound_impulse_start ('sound\dialog\Mission\M40\m_m40_Cortana_06900', NONE, 1 );
		//sleep (30 * 3 );
		
		b_lib_exit_audio_done = TRUE;
end










// =================================================================================================
// =================================================================================================
// ORDNANCE TRAINING
// =================================================================================================
// =================================================================================================


/*global short m40_OrdnanceClump = 14;
global boolean b_ord_moveout	= FALSE;
global boolean b_ord_leader_dead = FALSE;
global boolean b_convoy_retreat = FALSE;
global boolean b_ord_training_complete = FALSE;
global ai ai_ord_gauss_driver = NONE;
global boolean b_ord_hog_1_dropped = FALSE;
global boolean b_ord_hog_2_dropped = FALSE;
global real MAX_ORD_COV_WRAITH_SPEED = 0.28;

script dormant ordnance_convoy()
	sleep_until( volume_test_players (tv_ord_citadel_exit), 1 );
		data_mine_set_mission_segment ("m40_ordnance" );
		wake( f_destroy_sniper_val_crates );
		thread( m40_infinity_main() );
		garbage_collect_now( );
		object_destroy( cannon );
		object_destroy( cannon_2 );
		thread( f_chapter_10() );
		wake( f_ordnance_vo );
//		wake (epic_approach_dialogue );
		wake (epic_main_script );
		wake (epic_obj_control );
		wake (epic_secondary_script );
		wake (epic_tertiary_script );
		wake (blip_last_epic_wraith );
		wake (backup_ending_script );
		wake (m40_convoy_dialogue );
		wake (m40_convoy_dialogue_2 );

		//object_create(dm_ss_infinity );

		print (":::convoy::" );
		game_save( );
		ai_lod_full_detail_actors( 22 );
		wake( f_spawn_pelicans );
//		ai_place( sq_tort_ord );
		object_create (main_mammoth_2 );
		object_cannot_take_damage (main_mammoth_2 );
		print ("Ordnance Tortoise cannot take damage" );
		sleep(5 );
//		unit_recorder_load( m40_sq_tort_ord );
//		unit_recorder_play_on_unit(ai_vehicle_get_from_squad(sq_tort_ord,0) );
		unit_recorder_setup_for_unit (main_mammoth_2, main_mammoth_12_11_11_p2 );
		unit_recorder_play (main_mammoth_2 );
		sleep (1 );
		unit_recorder_pause (main_mammoth_2, TRUE );
		vehicle_set_player_interaction (main_mammoth_2, "mac_d", FALSE, FALSE );
		vehicle_set_player_interaction (main_mammoth_2, "warthog_d", FALSE, FALSE );
		wake( f_ord_mammoth_controller );
		
		//sleep(5 );
		//ai_place( sq_unsc_tort_marines );
		ai_place( sq_unsc_ord_mong );
		
		garbage_collect_now( );
		sleep(10 );
		//ai_place( sq_cov_ord_wraith_leader );
		wake( f_ord_objcon_controller );

		sleep(20 );
		wake( f_ord_spawn_flyby_phantom );
		wake( f_failsafe_moveout );
		wake( f_ordnance_phantom_event );
		//wake( f_blip_ordnance_moveout );
		
		sleep_until( volume_test_players (tv_epic_01), 1 );
			game_save( );
			dprint( "passing marines to epic" );
			ai_set_objective(sq_unsc_ord_hog_drop_1, epic_marine_convoy_obj );
			ai_set_objective(sq_unsc_ord_hog_drop_2, epic_marine_convoy_obj );
			ai_set_objective(sq_unsc_ord_mong, epic_marine_convoy_obj );
			ai_set_objective(gr_ord_human, epic_marine_convoy_obj );
end

script dormant f_spawn_pelicans()
	sleep_until( s_infinity_progress >= 3 , 1 );
		ai_place( sq_unsc_ord_pelican_1 );
		object_hide(sq_unsc_ord_pelican_1 , TRUE );
		sleep_s(6 );
		ai_place( sq_unsc_ord_pelican_2 );
		object_hide(sq_unsc_ord_pelican_2 , TRUE );

end

script static void f_chapter_10()
	sleep_s(10 );

	sound_impulse_start( sound\game_sfx\ui\transition_beeps, NONE, 1 );

	cinematic_set_title (chapter_10 );

end

script dormant ordnance_chapter_title()
	sleep_until( volume_test_players (tv_chapter_title_ord), 1 );
	cinematic_show_letterbox (TRUE );
	sleep (30 * 1 );
	thread( storyblurb_display(leadin_title_ord, 8, FALSE, FALSE) );
	sleep (30 * 6 );
	cinematic_show_letterbox (FALSE );
	end

script dormant f_ordnance_training_main()
	game_save( );
end

script dormant f_failsafe_moveout()

	sleep_until( b_ord_hog_2_dropped, 1 );	
		sleep_until( volume_test_players ( tv_ord_move_out ) or any_players_in_vehicle(), 1 );
			dprint("::: player is moving on" );
			b_ord_moveout = TRUE;
			ai_set_objective( sq_unsc_ord_hog_drop_1, obj_marine_ord );
			ai_set_objective( sq_unsc_ord_hog_drop_2, obj_marine_ord );		
end



script dormant f_blip_ordnance_moveout()
	sleep_until( b_ord_moveout , 1 );
		dprint("blip move out spot" );
		sleep_s(2 );
		f_blip_flag ( fg_ord_move_out, "default" );
	//sleep_until( s_objcon_ord >= 10, 1 );
	//	f_unblip_flag ( fg_ord_move_out );
		//f_blip_flag ( fg_ord_move_out, "default" );
	sleep_until( s_objcon_ord >= 20, 1 );
		f_unblip_flag ( fg_ord_move_out );
end

script dormant f_blip_ordnance_moveout2()
	f_blip_flag ( fg_ord_move_out_2, "default" );
	f_unblip_object (ai_ord_gauss_driver );
	sleep_until( epic_obj_state > 9 );
		f_unblip_flag ( fg_ord_move_out_2 );
end

script dormant f_ord_mammoth_controller()

	sleep(1 );
	//dprint("wait mammoth" );
	sleep_until( b_ord_hog_2_dropped, 1 );			
		sleep_until(volume_test_players(tv_tortoise_top_01) or b_ord_moveout , 1 );
		sleep(120 );
	unit_recorder_pause_smooth (main_mammoth_2, FALSE, 2 );
		//dprint("go mammoth" );
	sleep_until( volume_test_object (tv_ord_mammoth_10, main_mammoth_2) , 1 );
		//dprint("wait mammoth" );
	unit_recorder_pause_smooth (main_mammoth_2, TRUE, 2 );
		unit_recorder_set_playback_rate_smooth (main_mammoth_2, .5, 1 );
		//f_pause_play_tort_playback( 5 );		
	sleep_until( b_ord_training_complete and any_players_in_vehicle(), 1 );
		sleep(60 );
	unit_recorder_pause_smooth (main_mammoth_2, FALSE, 2 );
	wake (epic_tortoise_recorded );
	wake (epic_tort_arrival_guarantee );
		//dprint("go mammoth" );
end


//script command_script cs_ord_tortoise()
//	cs_vehicle_speed (0.6 );
//	ai_braindead(object_get_ai(sq_tort_ord) ,TRUE );
//
//end


script command_script cs_ord_gauss_hog_drop_1()
		ai_ord_gauss_driver = f_ai_get_vehicle_driver ( sq_unsc_ord_hog_drop_1 );
		sleep(1 );
		sleep_until( b_ord_hog_1_dropped == TRUE );			
			sleep_s(2 );
			ai_ord_gauss_driver = f_ai_get_vehicle_driver ( sq_unsc_ord_hog_drop_1 );
			ai_vehicle_exit ( ai_ord_gauss_driver );
			wake( f_ord_reserve_hog_1_seat );
			ai_vehicle_enter(ai_ord_gauss_driver, ai_vehicle_get_from_squad (sq_unsc_ord_hog_drop_1, 0), "warthog_p" );
end

script dormant f_ord_reserve_hog_1_seat()
	ai_vehicle_reserve_seat (ai_vehicle_get_from_squad (sq_unsc_ord_hog_drop_1, 0), "warthog_d", TRUE );
	sleep_until( any_players_in_vehicle() or b_ord_moveout == TRUE,1 );
		ai_vehicle_reserve_seat (ai_vehicle_get_from_squad (sq_unsc_ord_hog_drop_1, 0), "warthog_d", FALSE );
end

script command_script cs_ord_war_dog()
		sleep(1 );
		sleep_until( b_ord_hog_2_dropped == TRUE, 1 );	
			sleep(45 );
			dprint("wardog 2 dropped" );
			cs_go_to( pts_ord_marines.p_wardog );
end

script command_script cs_ord_wraith_1()
	//dprint("slow down" );
	sleep(5 );
	cs_vehicle_speed ( MAX_ORD_COV_WRAITH_SPEED );
	cs_vehicle_boost ( FALSE );
	cs_go_to_and_face (pts_ord.pt_wraith_1, pts_ord.pt_WraithLeaderPostion );
	ai_braindead(ai_current_actor ,TRUE );
	sleep(1 );

end

script command_script cs_ord_wraith_2()

	sleep(5 );
	cs_vehicle_speed ( MAX_ORD_COV_WRAITH_SPEED );
	cs_vehicle_boost ( FALSE );

	cs_go_to_and_face (pts_ord.pt_wraith_4, pts_ord.pt_WraithLeaderPostion );
	ai_braindead(ai_current_actor ,TRUE );		
end

script command_script cs_ord_wraith_3()

	sleep(5 );
	cs_vehicle_speed ( MAX_ORD_COV_WRAITH_SPEED );
	cs_vehicle_boost ( FALSE );

	cs_go_to_and_face (pts_ord.pt_wraith_2, pts_ord.pt_WraithLeaderPostion );
	ai_braindead(ai_current_actor ,TRUE );
end

script command_script cs_ord_wraith_4()
	sleep(5 );
	cs_vehicle_speed ( MAX_ORD_COV_WRAITH_SPEED );
	cs_vehicle_boost ( FALSE );

	cs_go_to_and_face (pts_ord.pt_wraith_4, pts_ord.pt_WraithLeaderPostion );
	ai_braindead(ai_current_actor ,TRUE );
end

script command_script cs_ord_ghost()
	sleep(5 );
	cs_vehicle_speed (0.5 );
	cs_vehicle_boost ( TRUE );
	// (TRUE, pts_ord.pt_WraithLeaderPostion );
	//ai_braindead(ai_current_actor ,TRUE );
	
	//sleep_until( volume_test_players (tv_ord_objcon_10), 1 );
		//ai_braindead(ai_current_actor ,FALSE );
end

script command_script cs_ord_ghost_1()
	sleep(30 );
	cs_vehicle_speed ( 0.5 );
	cs_vehicle_boost ( TRUE );

	//cs_go_to (pts_ord.pt_ghost_1 );
	//sleep_s(2 );
	//ai_braindead(ai_current_actor ,TRUE );
end

script command_script cs_ord_ghost_2()
	sleep(5 );
	cs_vehicle_speed ( 0.5 );
	cs_vehicle_boost ( TRUE );

	//cs_go_to_and_face (pts_ord.pt_ghost_2, pts_ord.pt_WraithLeaderPostion );
	//sleep_s(2 );
	//ai_braindead(ai_current_actor ,TRUE );
end

script command_script cs_ord_ghost_3()
	sleep(30 );
	cs_vehicle_speed ( 0.5 );
	cs_vehicle_boost ( TRUE );

	//cs_go_to_and_face (pts_ord.pt_ghost_3, pts_ord.pt_WraithLeaderPostion );
	//sleep_s(2 );
	//ai_braindead(ai_current_actor ,TRUE );
end

script command_script cs_ord_ghost_4()
	sleep(5 );
	cs_vehicle_speed ( 0.5 );
	cs_vehicle_boost ( TRUE );

	//cs_go_to_and_face (pts_ord.pt_ghost_4, pts_ord.pt_WraithLeaderPostion );
	//sleep_s(2 );
end



script command_script cs_ord_wraith_leader()

	cs_vehicle_speed (0.01 );
	sleep(1) ;
	ai_place( ai_current_actor );
	ai_braindead(ai_current_actor ,TRUE );
	ai_set_blind (ai_current_actor, TRUE );
	cs_vehicle_boost ( FALSE );	

end



script dormant f_ord_objcon_controller()

	sleep_until( volume_test_players ( tv_ord_hopon_vo ) or s_objcon_ord >= 5, 1 );
		if s_objcon_ord <= 5 then 
			s_objcon_ord = 5;
		end
		dprint("s_objcon_ord = 5 " );
		//sleep_s(3 );

	sleep_until( volume_test_players (tv_ord_objcon_10) or s_objcon_ord >= 10, 1 );

		if s_objcon_ord <= 10 then 
			s_objcon_ord = 10;
		end
		dprint("s_objcon_ord = 10 " );

		ai_place( sq_cov_ord_wraith_leader );		
		sleep(10 );
		wake( f_leader_watcher );
		wake( f_ord_spawn_cov_convoy );


	sleep_until( volume_test_players (tv_ord_objcon_20) or s_objcon_ord >= 20, 1 );
		if s_objcon_ord <= 20 then
			s_objcon_ord = 20;
			dprint("s_objcon_ord = 20 " );
		end
			
		thread( f_blip_targeter() );

	sleep_until( volume_test_players (tv_ord_objcon_30) or s_objcon_ord >= 30, 1 );
		if s_objcon_ord <= 30 then 
			s_objcon_ord = 30;
			dprint("s_objcon_ord = 30 " );
		end

	sleep_until( volume_test_players (tv_ord_objcon_40) or s_objcon_ord >= 40, 1 );
		if s_objcon_ord <= 40 then 
			s_objcon_ord = 40;
			dprint("s_objcon_ord = 40 " );
		end
		f_unblip_object (ord_target_laser );


	sleep_until( volume_test_players (tv_ord_objcon_50) or s_objcon_ord >= 50, 1 );
		if s_objcon_ord <= 50 then 
			s_objcon_ord = 50;
			dprint("s_objcon_ord = 50 " );
		end
		
			
		
		garbage_collect_now( );


	sleep_until( volume_test_players (tv_ord_objcon_60) or s_objcon_ord >= 60, 1 );
		if s_objcon_ord <= 60 then 
			s_objcon_ord = 60;
			dprint("s_objcon_ord = 60 " );
		end
		

	sleep_until( volume_test_players (tv_epic_01) or s_objcon_ord >= 70, 1 );
		if s_objcon_ord <= 70 then 
			s_objcon_ord = 70;
			dprint("s_objcon_ord = 70 " );
		end

end



//gr_ord_wraith_leader
script dormant f_ord_spawn_flyby_phantom()
	sleep(30 );

	ai_place( sq_cov_ord_phantom_3 );
	ai_place( sq_cov_ord_phantom_2 );
	ai_place( sq_cov_ord_phantom_1 );
	
	sleep(10 );
	ai_set_clump (gr_cov_phantom, m40_OrdnanceClump );
	ai_designer_clump_perception_range (10 );
end

script dormant f_ord_spawn_cov_convoy()
	
	sleep(2 );
	dprint("spawn wraith ground spawners" );
	ai_place( sq_cov_ord_wraith_1 );

	sleep(5 );
	ai_set_clump (gr_ordnance_cov, m40_OrdnanceClump );
	ai_designer_clump_perception_range (100 );

	sleep(5 );
	ai_place( sq_cov_ord_shade_1 );
	ai_place( sq_cov_ord_shade_2 );
	ai_place( sq_cov_ord_shade_3 );
end




global boolean b_ord_ammo_drop = FALSE;
global boolean b_ord_ammo_pickup = FALSE;


script static void f_blip_targeter()

	game_save( );
	NotifyLevel ("ordnance ammo drop" );


	thread( f_ord_drop_pod() );
	b_ord_ammo_drop = TRUE;
	sleep_s(2.0 );
	sleep_until( object_get_at_rest (ord_target_laser) , 1 );
		f_blip_weapon (ord_target_laser, 75, 100 );

		b_ord_ammo_pickup = TRUE;
		wake( f_blip_leader_wraith );
end

script static void f_ord_drop_pod()
		//dprint("test, pod" );
		object_create(ord_drop_pod );
		thread( f_ord_drop_pod_effect() );
		object_move_to_flag( ord_drop_pod, 1, fg_ord_cap_loc );
		object_create(ord_target_laser );
		dprint ("Waiting for the player to pick up the target locator" );
		sleep_until( unit_has_weapon (player0, objects\weapons\pistol\storm_target_laser\storm_target_laser.weapon) );
		player_action_test_reset( );
		sleep (1 );
		sleep_until( ai_living_count (sq_cov_ord_wraith_leader.general) > 0
		and		
		player_action_test_rotate_weapons() == TRUE
		, 1 );
		dprint ("I think the player switched weapons (lost the locator) and the enemies are still alive!" );
		player_action_test_reset( );
//		wake (f_ord_drop_pod_effect_2 );
		wake (second_target_locator );
end

script dormant second_target_locator()
		wake (m40_second_target_locator_dialogue );
		sleep_s(5 );
		object_create(ord_drop_pod_2 );
		thread( f_ord_drop_pod_effect() );
		object_move_to_flag( ord_drop_pod_2, 1, fg_ord_cap_loc_2 );
		effect_new_at_ai_point ( fx\reach\fx_library\pod_impacts\dirt\pod_impact_dirt_large.effect, pts_ord_marines.pt_pod_drop_2 );
		object_create(ord_target_laser_2 );
		f_blip_weapon (ord_target_laser_2, 75, 100 );
		wake (sleep_for_extra_target_locators );
		sleep_until( unit_has_weapon (player0, objects\weapons\pistol\storm_target_laser\storm_target_laser.weapon) );
		player_action_test_reset( );
		sleep (1 );
		sleep_until( ai_living_count (sq_cov_ord_wraith_leader.general) > 0
		and		
		player_action_test_rotate_weapons() == TRUE
		, 1 );
		dprint ("I think the player switched weapons AGAIN! He's doing it on purpose now" );
		player_action_test_reset( );
		wake (m40_third_target_locator_dialogue );
		sleep_s(6 );		
		b_ord_leader_dead = TRUE;
end

script dormant sleep_for_extra_target_locators()
	sleep_until( volume_test_players (tv_ord_objcon_50), 1 );
	sleep_forever (second_target_locator );
	sleep_forever (m40_second_target_locator_dialogue );
	sleep_forever (m40_third_target_locator_dialogue );
end


script static void f_ord_drop_pod_effect()
	sleep_s(0.95 );
	effect_new_at_ai_point ( fx\reach\fx_library\pod_impacts\dirt\pod_impact_dirt_large.effect, pts_ord_marines.pt_pod_drop );
end

//script dormant f_ord_drop_pod_effect_2()
//	sleep_s(0.95 );
//	effect_new_at_ai_point ( fx\reach\fx_library\pod_impacts\dirt\pod_impact_dirt_large.effect, pts_ord_marines.pt_pod_drop_2 );
//end


/*
script dormant ss_infinity_engine_control()
	dprint("test,ship" );
	object_function_set( 0, 0.2 );

	sleep_until( 0.8 >= device_get_position (ss_infinity) ,1 );

	object_function_set (0, 0.01 );
end

script static void f_kill_leader_ord()
	ai_kill(gr_ord_wraith_leader );
end

script dormant f_leader_watcher()
	wake( f_leader_wraith_dead );
	sleep_until( ai_spawn_count(sq_cov_ord_wraith_leader.general) and ai_living_count(sq_cov_ord_wraith_leader.general) < 1 ,1 );
		dprint(":::leader dead" );
		b_ord_leader_dead = TRUE;
end

script dormant f_leader_wraith_dead()

	sleep_until( b_ord_leader_dead == TRUE, 1 );
		sleep(5 );
		ai_set_objective( sq_cov_ord_wraith_leader, obj_cov_ord );
		ai_set_blind (sq_cov_ord_wraith_leader , FALSE );	
		ai_set_deaf (sq_cov_ord_wraith_leader , FALSE );
		
		ai_set_objective( gr_ordnance_cov, obj_cov_ord );
		ai_set_blind (gr_ordnance_cov , FALSE );
		ai_set_deaf (gr_ordnance_cov , FALSE );	
		ai_braindead( gr_ordnance_cov , FALSE );
		f_unblip_object (ord_target_laser );
		wake( f_cleanup_ord );
		sleep(30*2 );
		
		b_convoy_retreat = TRUE;
		
		b_ord_training_complete = TRUE;
		dprint("ordnance training over  ... move out" );
		game_save_no_timeout( );
		wake( f_blip_ordnance_moveout2 );
		sleep(30*90 );
		//dprint("recycling" );
		kill_volume_enable(kill_recycle_ord_convoy );
		sleep(5 );
		add_recycling_volume(kill_recycle_ord_convoy, 5, 20 );
		garbage_collect_now( );	
end 

script dormant f_blip_leader_wraith()

	//f_blip_ai(sq_cov_ord_wraith_leader );	
	
	f_blip_object_until_dead( object_get_ai(sq_cov_ord_wraith_leader.general ) );
		
		b_ord_leader_dead = TRUE;


end

script dormant f_cleanup_ord()
	sleep_until( volume_test_players (tv_epic_00), 1 );
		ai_erase(gr_ordnance_cov );
		sleep(5 );
		thread (f_recycle_ord() );
		garbage_collect_now( );

end

script static void f_recycle_ord()
	add_recycling_volume(recycle_ord_1 , 10, 5 );
end

global real Phantom_Scale_Out_Time  = 8;

script command_script cs_cov_ord_reinforce_phantom()
	print("phantom:::" );
	cs_vehicle_speed ( 1.0 );
	cs_vehicle_boost ( 1 );
	cs_ignore_obstacles ( 1 );

	ai_disregard ( ai_actors (sq_cov_ord_phantom_1), TRUE );
	ai_braindead(ai_current_actor ,TRUE );
	object_set_scale ( ai_vehicle_get ( ai_current_actor ), 0.01, 0 );


	sleep_until( volume_test_players (tv_ord_spawn_phantom), 1 );
		sleep_s(6.0 );
		sound_impulse_start('sound\environments\solo\m040\new_m40_tags\amb_m40_ships\amb_m40_ord_phantom_1_spawn', sq_cov_ord_phantom_1, 1);
		
		ai_braindead(ai_current_actor ,FALSE );
		object_set_scale ( ai_vehicle_get ( ai_current_actor ), 1.0, 30 * 6 );
		cs_vehicle_boost ( 1 );
		ai_place( sq_cov_ord_drop_ghost_1 );
		vehicle_load_magic (ai_vehicle_get_from_spawn_point (sq_cov_ord_phantom_1.fantomas), "phantom_sc02", ai_vehicle_get_from_starting_location  (sq_cov_ord_drop_ghost_1.ord_ghost_drop_1) );
		vehicle_load_magic (ai_vehicle_get_from_spawn_point (sq_cov_ord_phantom_1.fantomas), "phantom_sc01", ai_vehicle_get_from_starting_location  (sq_cov_ord_drop_ghost_1.ord_ghost_drop_2) );
		
		cs_vehicle_speed( 1.0 );
		cs_vehicle_speed_instantaneous(1.0 );
		cs_vehicle_boost ( 0 );
		cs_ignore_obstacles ( 1 );
		//cs_fly_by (pts_ord.p_ph_2 );
		cs_fly_by (pts_ord.p_ph_3 );
		cs_fly_by (pts_ord.p_ph_4 );
		cs_fly_by (pts_ord.p_ph_5 );
		cs_fly_to (pts_ord.p_ph_DropOff );
	
		sleep(30 );
		vehicle_unload (ai_vehicle_get (sq_cov_ord_phantom_1.fantomas), "phantom_sc01" );
		vehicle_unload (ai_vehicle_get (sq_cov_ord_phantom_1.fantomas), "phantom_sc02" );	
		
		sound_impulse_start('sound\environments\solo\m040\new_m40_tags\amb_m40_ships\amb_m40_ord_phantom_1_takeoff', sq_cov_ord_phantom_1, 1);
		ai_set_objective(sq_cov_ord_drop_ghost_1, obj_cov_ord );
		cs_fly_by (pts_ord.p_ph_7 );
		cs_fly_to_and_face (pts_ord.p_ph_8,pts_ord.p_ph_9 );
		cs_fly_by (pts_ord.p_ph_9 );
		cs_vehicle_boost ( 1 );
		object_set_scale ( ai_vehicle_get ( ai_current_actor ), 0.01, 30 * Phantom_Scale_Out_Time );
	
		sleep_s( Phantom_Scale_Out_Time );
		ai_erase ( sq_cov_ord_phantom_1 );
			
end


script command_script cs_cov_ord_reinforce_phantom2()
	print("phantom:::" );
	cs_vehicle_speed ( 1.0 );
	cs_vehicle_boost ( 1 );
	cs_ignore_obstacles ( 1 );

	object_set_scale ( ai_vehicle_get ( ai_current_actor ), 0.01, 0 );
	
	sleep_until( volume_test_players (tv_ord_spawn_phantom), 1 );
		sleep_s(3.0 );
		
		sound_impulse_start('sound\environments\solo\m040\new_m40_tags\amb_m40_ships\amb_m40_ord_phantom_2_spawn', sq_cov_ord_phantom_2, 1);
		ai_place( sq_cov_ord_drop_ghost_2 );
	
		vehicle_load_magic (ai_vehicle_get_from_spawn_point (sq_cov_ord_phantom_2.fantomas), "phantom_sc02", ai_vehicle_get_from_starting_location  (sq_cov_ord_drop_ghost_2.ord_ghost_drop_1) );
		vehicle_load_magic (ai_vehicle_get_from_spawn_point (sq_cov_ord_phantom_2.fantomas), "phantom_sc01", ai_vehicle_get_from_starting_location  (sq_cov_ord_drop_ghost_2.ord_ghost_drop_2) );
		object_set_scale ( ai_vehicle_get ( ai_current_actor ), 1.0, 30 * 6 );
	
		cs_vehicle_speed( 1.0 );
		cs_vehicle_speed_instantaneous(1.0 );
		cs_vehicle_boost ( 0 );
		cs_ignore_obstacles ( 1 );
		//cs_fly_by (pts_ord.p_ph_2 );
		cs_fly_by (pts_ord.p_ph2_1 );
		cs_fly_by (pts_ord.p_ph2_2 );
		//cs_fly_by (pts_ord.p_ph2_3 );
		cs_fly_to (pts_ord.p_ph2_DropOff );
		//cs_fly_by (pts_ord.p_ph2_4 );
	
		sleep(30 );
		vehicle_unload (ai_vehicle_get (sq_cov_ord_phantom_2.fantomas), "phantom_sc01" );
		vehicle_unload (ai_vehicle_get (sq_cov_ord_phantom_2.fantomas), "phantom_sc02" );	
		
		sound_impulse_start('sound\environments\solo\m040\new_m40_tags\amb_m40_ships\amb_m40_ord_phantom_2_takeoff', sq_cov_ord_phantom_2, 1);
		ai_set_objective(sq_cov_ord_drop_ghost_2, obj_cov_ord );
		cs_fly_by (pts_ord.p_ph2_4 );
		//cs_fly_to_and_face (pts_ord.p_ph2_4,pts_ord.p_ph2_5 );
		cs_fly_by (pts_ord.p_ph2_5 );
		cs_vehicle_boost ( 1 );
		
		object_set_scale ( ai_vehicle_get ( ai_current_actor ), 0.01, 30 * Phantom_Scale_Out_Time );
	
		sleep_s( Phantom_Scale_Out_Time );
		ai_erase ( sq_cov_ord_phantom_2 );
	
end


script command_script cs_cov_ord_reinforce_phantom3()
	print("phantom:::" );
	cs_vehicle_speed ( 1 );
	cs_vehicle_boost ( 1 );
	cs_ignore_obstacles ( 1 );
	cs_vehicle_speed_instantaneous(1.0 );
	object_set_scale ( ai_vehicle_get ( ai_current_actor ), 0.01, 0 );
	

	sleep_until( volume_test_players (tv_ord_spawn_early_phant), 1 );
		object_set_scale ( ai_vehicle_get ( ai_current_actor ), 1.0, 30 * 6 );
		sound_impulse_start('sound\environments\solo\m040\new_m40_tags\amb_m40_ships\amb_m40_ord_phantom_3_spawn', sq_cov_ord_phantom_3, 1);
		
		sleep_s(2.5 );
		ai_place( sq_cov_ord_wraith_2 );
		
		vehicle_load_magic (ai_vehicle_get_from_spawn_point (sq_cov_ord_phantom_3.fantomas), "phantom_sc02", ai_vehicle_get_from_starting_location  (sq_cov_ord_wraith_2.wraithdriver) );
		//vehicle_load_magic (ai_vehicle_get_from_spawn_point (sq_cov_ord_phantom_2.fantomas), "phantom_sc01", ai_vehicle_get_from_starting_location  (sq_cov_ord_drop_ghost_2.ord_ghost_drop_2) );
			
		cs_vehicle_speed( 1.0 );		
		cs_vehicle_boost ( 0 );
		cs_ignore_obstacles ( 1 );
		//cs_fly_by (pts_ord.p_ph_2 );
		cs_fly_by (pts_ord.p_ph3_1 );
		//cs_fly_by (pts_ord.p_ph3_DropOff );
		cs_fly_to (pts_ord.p_ph3_DropOff );
		sleep(5 );
		vehicle_unload (ai_vehicle_get (sq_cov_ord_phantom_3.fantomas), "phantom_sc02" );
		//vehicle_unload (ai_vehicle_get (sq_cov_ord_phantom_2.fantomas), "phantom_sc02" );	
		sound_impulse_start('sound\environments\solo\m040\new_m40_tags\amb_m40_ships\amb_m40_ord_phantom_3_takeoff', sq_cov_ord_phantom_3, 1);
		cs_fly_by (pts_ord.p_ph3_3 );	
		cs_fly_to_and_face (pts_ord.p_ph3_4,pts_ord.p_ph3_5 );
		cs_fly_by (pts_ord.p_ph3_5 );
		cs_vehicle_boost ( 1 );
		
		object_set_scale ( ai_vehicle_get ( ai_current_actor ), 0.01, 30 * Phantom_Scale_Out_Time );
	
		sleep_s( Phantom_Scale_Out_Time );
		ai_erase ( sq_cov_ord_phantom_3 );
	
end


script dormant f_ordnance_phantom_event()
	sleep_until( s_objcon_ord >= 20 and s_infinity_progress >= 8 and b_ord_leader_dead == FALSE and s_objcon_ord <= 50 );
		ai_place( sq_cov_ord_phantom_event );
end

script command_script cs_cov_ord_phantom_event()
	print("phantom:::" );
	cs_vehicle_speed ( 1 );
	cs_vehicle_boost ( 1 );
	cs_ignore_obstacles ( 1 );
	cs_vehicle_speed_instantaneous(1.0 );
	object_set_scale ( ai_vehicle_get ( ai_current_actor ), .30, 0 );

		
		cs_fly_by (pts_ord_events.pStart );
			damage_object (unit_get_vehicle(ai_current_actor), engine_right, 500 );			
			effect_new_at_ai_point (fx\reach\fx_library\explosions\human_explosion_aerial\human_explosion_aerial.effect, pts_ord_events.pStart );
			object_rotate_by_offset(unit_get_vehicle(ai_current_actor),0.1,0.25,0.1,0,45,0 );
		cs_fly_by (pts_ord_events.p3 );
			damage_object (unit_get_vehicle(ai_current_actor), chin_gun, 10000 );
			damage_object (unit_get_vehicle(ai_current_actor), turret, 10000 );
			damage_object (unit_get_vehicle(ai_current_actor), engine_left, 500 );
			effect_new_at_ai_point (fx\reach\fx_library\explosions\human_explosion_aerial\human_explosion_aerial.effect, pts_ord_events.p3 );
			object_rotate_by_offset(unit_get_vehicle(ai_current_actor),0.1,0.25,0.1,0,45,0 );
		cs_fly_by (pts_ord_events.p1 );
			object_set_scale ( ai_vehicle_get ( ai_current_actor ), .50, 30 );
			damage_object (unit_get_vehicle(ai_current_actor), hull, 500 );
			effect_new_at_ai_point (fx\reach\fx_library\explosions\human_explosion_aerial\human_explosion_aerial.effect, pts_ord_events.p1 );
			object_rotate_by_offset(unit_get_vehicle(ai_current_actor),0.25,0.25,0.1,0,-45,0 );
		cs_fly_by (pts_ord_events.p0 );
			object_set_scale ( ai_vehicle_get ( ai_current_actor ), .90, 30 );	
			object_rotate_by_offset(unit_get_vehicle(ai_current_actor),0.1,0.25,0.25,0,45,45 );
		cs_fly_to_and_face (pts_ord_events.pEnd,pts_ord_events.pEndFace );
			object_set_scale ( ai_vehicle_get ( ai_current_actor ), .90, 30 );			
			damage_object (unit_get_vehicle(ai_current_actor), hull, 10000 );
			damage_object (unit_get_vehicle(ai_current_actor), engine_left, 10000 );
			damage_object (unit_get_vehicle(ai_current_actor), engine_right, 10000 );
			effect_new_at_ai_point (fx\reach\fx_library\explosions\human_explosion_aerial\human_explosion_aerial.effect, pts_ord_events.pEnd );
		
		object_destroy( unit_get_vehicle(sq_cov_ord_phantom_event) );
		sleep(10 );
		effect_new_at_ai_point (fx\reach\fx_library\explosions\human_explosion_aerial\human_explosion_aerial.effect, pts_ord_events.pEnd );
end
//



global boolean b_ss_vixen_take_off = FALSE;

script command_script cs_hum_ord_reinforce_pelican_1()
	//print("pelican:::" );

	//cs_vehicle_speed_instantaneous(1.0 );
	object_set_scale ( ai_vehicle_get ( ai_current_actor ), 0.001, 0 );
	sleep(30 );
	object_hide(sq_unsc_ord_pelican_1 , FALSE );
	object_set_scale ( ai_vehicle_get ( ai_current_actor ), 1.0, 30 * 18 );
	cs_vehicle_speed ( 0.33 );
	cs_vehicle_boost ( 0 );
	cs_ignore_obstacles ( 1 );		
		//sleep_s(2.5 );
	ai_place( sq_unsc_ord_hog_drop_1 );
	object_set_scale ( ai_vehicle_get_from_starting_location  (sq_unsc_ord_hog_drop_1.driver), 0.01, 0 );
	object_set_scale ( ai_vehicle_get_from_starting_location  (sq_unsc_ord_hog_drop_1.driver), 1.0, 30 * 18 );
		vehicle_load_magic (ai_vehicle_get_from_spawn_point (sq_unsc_ord_pelican_1.ss_vixen), "pelican_lc", ai_vehicle_get_from_starting_location  (sq_unsc_ord_hog_drop_1.driver) );

				
		cs_vehicle_boost ( 0 );
		cs_ignore_obstacles ( 1 );
		//print("fly birdy" );
		cs_fly_by (pts_ord_pelicans.p0 );
		sleep(30 );
		cs_fly_by (pts_ord_pelicans.p1 );
		cs_vehicle_speed( 0.75 );
		sleep(10 );
		cs_fly_by (pts_ord_pelicans.p11 );
		//sleep(10 );
		cs_vehicle_speed( 0.75 );	
		cs_fly_to (pts_ord_pelicans.drop_1 );
		cs_fly_to_and_face (pts_ord_pelicans.drop_1, pts_ord_pelicans.p3 );
		sleep(60 );
		vehicle_hover (ai_vehicle_get (ai_current_actor),  TRUE );
		sleep_until( not volume_test_players(tv_pelican_landing_1),1 );
		
			vehicle_unload (ai_vehicle_get (sq_unsc_ord_pelican_1.ss_vixen), "pelican_lc" );
			sleep(10 );
		//	dprint( "pelican dropping wardog" );
			b_ord_hog_1_dropped = TRUE;			
			//cs_fly_by (pts_ord.p_ph3_3 );	
			//cs_fly_to_and_face (pts_ord.p_ph3_4,pts_ord.p_ph3_5 );
			//cs_fly_by (pts_ord.p_ph3_5 );
			cs_vehicle_boost ( 1 );
			sleep_s(3 );
			vehicle_hover (ai_vehicle_get (ai_current_actor),  FALSE );
			cs_vehicle_speed ( 1 );
			cs_fly_to (pts_ord_pelicans.p9 );
			
			b_ss_vixen_take_off = TRUE;
			
			cs_fly_to_and_face (pts_ord_pelicans.p9,pts_ord_pelicans.p10 );
			object_set_scale ( ai_vehicle_get ( ai_current_actor ), 0.01, 30 * 15 );
			cs_fly_to (pts_ord_pelicans.p10 );
			
			cs_fly_to (pts_ord_pelicans.p12 );
			//sleep_s(4 );
			//object_set_scale ( ai_vehicle_get ( ai_current_actor ), 0.01, 30 * 20 );
			cs_fly_to (pts_ord_pelicans.p15 );
			sleep_s( 15 );
			ai_erase ( sq_unsc_ord_pelican_1 );
		
end

script command_script cs_hum_ord_reinforce_pelican_2()
	//print("pelican2:::" );

	//cs_vehicle_speed_instantaneous(1.0 );
	object_set_scale ( ai_vehicle_get ( ai_current_actor ), 0.001, 0 );
	sleep(30 );
	object_hide(sq_unsc_ord_pelican_1 , FALSE );
	object_set_scale ( ai_vehicle_get ( ai_current_actor ), 1.0, 30 * 18 );
	cs_vehicle_speed ( 0.33 );
	cs_vehicle_boost ( 0 );
	cs_ignore_obstacles ( 1 );		
		//sleep_s(2.5 );
	ai_place( sq_unsc_ord_hog_drop_2 );
	object_set_scale ( ai_vehicle_get_from_starting_location  (sq_unsc_ord_hog_drop_2.driver), 0.01, 0 );
	object_set_scale ( ai_vehicle_get_from_starting_location  (sq_unsc_ord_hog_drop_2.driver), 1.0, 30 * 18 );
	vehicle_load_magic (ai_vehicle_get_from_spawn_point (sq_unsc_ord_pelican_2.ss_coquitlam), "pelican_lc", ai_vehicle_get_from_starting_location  (sq_unsc_ord_hog_drop_2.driver) );

				
		cs_vehicle_boost ( 0 );
		cs_ignore_obstacles ( 1 );
		//print("fly birdy" );
		cs_fly_by (pts_ord_pelicans.p4 );
		sleep(30 );
		cs_fly_by (pts_ord_pelicans.p5 );
		cs_vehicle_speed( 0.50 );
		sleep(10 );
		cs_fly_by (pts_ord_pelicans.p6 );
		//sleep(10 );
		cs_vehicle_speed( 0.50 );	
		cs_fly_to (pts_ord_pelicans.drop_2 );
		cs_fly_to_and_face (pts_ord_pelicans.drop_2, pts_ord_pelicans.drop_1 );
		sleep(60 );
		vehicle_hover (ai_vehicle_get (ai_current_actor),  TRUE );
		sleep_until( not volume_test_players(tv_pelican_landing_2),1 );
		
			vehicle_unload (ai_vehicle_get (sq_unsc_ord_pelican_2.ss_coquitlam), "pelican_lc" );
			sleep(10 );
			dprint( "pelican dropping wardog2" );
			b_ord_hog_2_dropped = TRUE;				

			//cs_fly_by (pts_ord.p_ph3_3 );	
			//cs_fly_to_and_face (pts_ord.p_ph3_4,pts_ord.p_ph3_5 );
			//cs_fly_by (pts_ord.p_ph3_5 );
			cs_vehicle_boost ( 1 );
			
			sleep_until( b_ss_vixen_take_off == TRUE , 1 );
				sleep_s(4 );
				vehicle_hover (ai_vehicle_get (ai_current_actor),  FALSE );
				cs_vehicle_speed ( 1 );
				cs_fly_to (pts_ord_pelicans.p13 );
				cs_fly_to_and_face (pts_ord_pelicans.p13,pts_ord_pelicans.p14 );
				object_set_scale ( ai_vehicle_get ( ai_current_actor ), 0.01, 30 * 15 );
				cs_fly_to (pts_ord_pelicans.p14 );
				cs_fly_to (pts_ord_pelicans.p15 );
				//cs_fly_to (pts_ord_pelicans.p12 );
				//sleep_s(4 );
				//object_set_scale ( ai_vehicle_get ( ai_current_actor ), 0.01, 30 * 20 );
			
				sleep_s( 15 );
				ai_erase ( sq_unsc_ord_pelican_2 );
		
end
*/


// =================================================================================================
// =================================================================================================
// DEBUG
// =================================================================================================
// =================================================================================================

// =================================================================================================
// =================================================================================================
// VO 
// =================================================================================================
// =================================================================================================


/*
global boolean b_ord_airsupport_audio_done = FALSE;
global boolean b_ord_hopongauss_audio_done = FALSE;
global boolean b_ord_convoy_audio_done = FALSE;

script dormant f_ordnance_vo()
	
	sleep_until( s_objcon_ord >= 5 and ( b_lib_exit_audio_done or not b_lib_exit_audio_started), 1 );		
		b_lib_exit_audio_done = FALSE;
		// 6 : Hop on the Gauss hog, Chief, I think we�re gonna need it.
		//dprint("Hop on the Gauss hog, Chief, I think we�re gonna need it." );
		//sound_impulse_start ('sound\dialog\Mission\M40\M_M40_Temp_Marine_00700', NONE, 1 );
		//sleep (30 * 3 );
		 
	//	storyblurb_display(ch_blurb_infinity_intro, 4, FALSE, FALSE );
		//sleep_s(4 );
		b_ord_hopongauss_audio_done = TRUE;
	
		
	sleep_until( b_ord_hopongauss_audio_done, 1 );		
		b_lib_exit_audio_done = FALSE;
		sleep_s(1 );
			// 20 : The UNSC Infinity is in orbit and moving to provide air support. We�ll let you know when it�s available, Master Chief.
			dprint("The UNSC Infinity is in orbit and moving to provide air support. We�ll let you know when it�s available, Master Chief." );
		sound_impulse_start ('sound\dialog\Mission\M40\M_M40_Temp_Marine_02100', NONE, 1 );
		sleep (30 * 5 );
		
		//ch_blurb_ordnance_intro
//		storyblurb_display(ch_blurb_ordnance_intro, 4, FALSE, FALSE );
		b_ord_airsupport_audio_done = TRUE;
	
	sleep_until( s_objcon_ord >= 10 and b_ord_airsupport_audio_done, 1 );		
		// 155 : Infinity�s got us covered from above, but we�re going to have to paint the targets for her. Requesting an ammo drop with some laser designators.
		//sound_impulse_start ('sound\dialog\Mission\M40\m_m40_Cortana_07000', NONE, 1 );
		//sleep (30 * 8 );
		// 5 : A Covenant convoy up ahead! Sir, we should use the Infinity�s air support to get the jump on them.ch_blurb_ordnance_introch_blurb_ordnance_introch_blurb_ordnance_intro
		sound_impulse_start ('sound\dialog\Mission\M40\M_M40_Temp_Marine_00600', NONE, 1 );
		sleep (30 * 5 );		
		// 156 : Those Covenant haven�t detected us yet, but that won�t last long whenever that ammo drop gets down here.
		//sound_impulse_start ('sound\dialog\Mission\M40\m_m40_Cortana_07100', NONE, 1 );
		//sleep (30 * 5 );
		b_ord_convoy_audio_done = TRUE;
	//sleep_until( LevelEventStatus ("ordnance ammo drop"), 1 );
	//sleep(10 );	
	sleep_until( b_ord_convoy_audio_done and b_ord_ammo_drop, 1 );
		 
//		storyblurb_display(ch_blurb_ordnance, 4, FALSE, FALSE );
		if not b_ord_ammo_pickup then
			// 157 : Special delivery. Grab one of those laser designators so we can start calling down some ordinance.
			dprint("Special delivery. Grab one of those laser designators so we can start calling down some ordinance." );
			sound_impulse_start ('sound\dialog\Mission\M40\m_m40_Cortana_07200', NONE, 1 );
			sleep (30 * 6 );
		end

	sleep_until( b_ord_leader_dead, 1 );	
		//sleep(30*5 );		
		// 97 : Very thorough, Master Chief. Hope my folks are taking notes. Proceed to next sector. Palmer out.
		if s_objcon_ord <= 40 then
			sound_impulse_start ('sound\dialog\Mission\M40\m_m40_Palmer_01200', NONE, 1 );
		end

end

script static void bleh()

	flock_destination_set_enabled (flocks_inf_falcons, move_to_fight, TRUE );
	flock_destination_set_enabled (flocks_inf_falcons, start_inf, FALSE );
end

script static void meh()

	flock_destination_set_enabled (flocks_inf_falcons, move_to_fight, FALSE );
	flock_destination_set_enabled (flocks_inf_falcons, start_inf, TRUE );
end

script static void bah()

	flock_create(ord_bbs_banshee );

end

script static void a_cannon_loop()
//	device_set_position_track( dm_cannon_1, 'any:pew', 0 );
sleep(1 );
//any:pew
end

script static void a_cannon_shoot_test()
	//device_set_overlay_track( dm_cannon_1, 'any:pew' );
	//device_animate_overlay( dm_cannon_1, 1, 27.5, 0, 0 );
	sleep( 30 * 27.5 );
	//device_animate_overlay( dm_cannon_1, 0.1, 0.1, 0, 0 );

end
*/


/*
// 20 : The UNSC Infinity is in orbit and moving to provide air support. We�ll let you know when it�s available, Master Chief.
sound_impulse_start ('sound\dialog\Mission\M40\M_M40_Temp_Marine_02100', NONE, 1 );
sleep (30 * 5 );

// 5 : A Covenant convoy up ahead! Sir, we should use the Infinity�s air support to get the jump on them.
sound_impulse_start ('sound\dialog\Mission\M40\M_M40_Temp_Marine_00600', NONE, 1 );
sleep (30 * 5 );
*/

// --- End m40_invasion_library.hsc ---

// --- Begin m40_invasion_mission.hsc ---
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343
//
// 	Mission: 					m40_invasion
//	Insertion Points:	start (or ica)	- Beginning
//										
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343

// =================================================================================================
// =================================================================================================
// *** GLOBALS ***
// =================================================================================================
// =================================================================================================

global ai squad_main_marines = NONE;
global ai marines_main_hog_01_dr = NONE;
global ai marines_main_hog_01_gunner = NONE;
global ai marines_main_hog_01_pass = NONE;
global ai marines_main_hog_02_dr = NONE;
global ai marines_main_hog_02_gunner = NONE;
global ai marines_main_hog_02_pass = NONE;
global ai marines_main_goose_01_dr = NONE;
global ai marines_main_goose_01_pass = NONE;
global object g_ics_player = NONE;
global object my_first_aa = NONE;

global object aa_right_01 = NONE;
global object aa_right_02 = NONE;

global object aa_left_01 = NONE;
global object aa_left_02 = NONE;

global short TST_faraway_dist = 0;
global short TST_closeup_dist = 0;


global real TST_mid_speed = 0;
global real TST_upper_speed = 0;
global real TST_norm_speed = 0;

global short TDT_dist = 0;

global short master_object_list_all = 0; 
global short master_object_list_count = 0; 
global short chop_wraiths_master_object_list_all = 0;
global short chop_hogs_master_object_list_all = 0;
global short chop_ghosts_master_object_list_all = 0;

global object_list master_object_list = players();
//global long master_object_list_count = 0;

global long lich_blip_var = 0;

global short obj_state = 0;
global short cavern_obj_state = 0; 
global short lakeside_obj_state = 0;
global short cliffside_obj_state = 0;
global short prechopper_obj_state = 0; 
global short chop_obj_state = 0;  
global short lich_interior_obj_state = 0;
global short waterfall_obj_state = 0;
global short epic_obj_state = 0;
global short epic_backup_obj_state = 0; 
global short lich_rest_state = 0; 
global short lich_pilot_state = 0;
global short chop_marine_backup_op = 0;
global short cliffside_phantom_roulette_short = 0;
global short epic_bubbles_burst = 0;

global long lasky_first_show = 0;
global long	tort_marine_biped_right_long_pup = 0;
global long	tort_marine_biped_left_long_pup = 0;
global long	tort_marine_bottom_long_pup = 0;
global long lasky_final_pup = 0;
global long pelican_and_cannon_pup = 0;
global long lakeside_cannon_initial_pup = 0;
global long chopper_cannon_pup_full = 0;
global boolean tort_hogs_reserve_bool = true;

global boolean waterfall_stop_destroying_bool = false;
global boolean dm_mode1 = false;

global boolean lakeside_backup_ghosts_3_bool = false;

global boolean player_has_td_bool = false;

global boolean dm_citadel_int_door_hall01_03_em_open_bool = false;
global boolean player_approaching_hilltop_after_battle = false;
global boolean player_exited_caverns = false;
global boolean epic_insertion_state = FALSE;
global boolean cliffside_tort_floor_test_bl = FALSE;
global boolean lakeside_ending_state = FALSE;
global boolean prechopper_arrival = FALSE;
global boolean pelican_dies = FALSE;
global boolean tort_stopped = FALSE;
global boolean tort_stopped_for_five_seconds = FALSE;
global boolean target_laser_pickup = FALSE;
global boolean cav_started = FALSE;
global boolean phantom_hang_out = TRUE;
global boolean player_equipped_jetpack = FALSE;
global boolean player_equipped_locator = FALSE;
global boolean lakeside_target_laser_acquired = FALSE;
global boolean alt_tortoise	= true;
global boolean tort_bay_doors_opened	= false;
global boolean cav_rollout_rdy	= false;
global boolean lakeside_rollout_rdy	= false;
global boolean chopper_rollout_rdy	= false;
global boolean waterfall_rollout_rdy	= false;
global boolean tort_top_lakeside	= false;
global boolean lich_alive_state	= true;
global boolean lakeside_phantom_escape_repeat = FALSE;
global boolean cannon_death_state	= true;
global boolean cannon_2_death_state	= true;
global boolean garbage_collecting	= false;
global boolean tort_global_interior	= false;
global boolean tort_top	= true;
global boolean tort_middle	= false;
global boolean tort_bottom	= false;
global boolean epic_ending_rdy = FALSE;
global boolean target_des_ready = FALSE;
global boolean lakeside_phantom_hang_out = TRUE;
global boolean player_in_lakeside_enc = FALSE;
global boolean waterfall_phantom_01_hang_out = TRUE;
global boolean waterfall_phantom_02_hang_out = TRUE;
global boolean ics_over_bool = FALSE;
global boolean player_left_caverns_early = FALSE;
global boolean lakeside_phantom_07_hangout_bool = TRUE;
global boolean lakeside_wraith_shell_bool = TRUE;
global boolean first_time_charged = TRUE;
global boolean lakeside_cannon_alive = TRUE;
global boolean chopper_cannon_alive = TRUE;
global boolean epic_bubble_one_burst = false;
global boolean epic_bubble_two_burst = false;
global boolean lakeside_pelican_airlift_bool = false;
global boolean palmer_vignette = false;
global boolean lich_boarded_state = false;
global boolean rail_gun_prompt_bool = false;
global boolean lakeside_enc_ending = false;
global boolean player_in_lich = false;
global boolean prechop_recording_loaded = false;
global boolean prechop_recording_loaded_2 = false;
global boolean m_ics_player0 = false;
global boolean m_ics_player1 = false;
global boolean m_ics_player2 = false;
global boolean m_ics_player3 = false;
global boolean firing_on_cannon = false;
global boolean lakeside_phantom_hanging_out = false;
global boolean lich_exploded = false;
global boolean lakeside_warthog_deploy = true;
global boolean player_done_with_opening_pups = false;
global boolean palmer_pup_breakout_bool = false;
global boolean tort_high_speed = false;
global boolean tort_done_in_mission = false;
global boolean cav_pelican_dies = false;
global boolean jetpacks_revealed = false;
global boolean rgt_bool = false;
global boolean player_approaching_hilltop = false;
global boolean lich_landed_at_chopper = false;
global boolean player_at_lich_mound = false;

global boolean 	p0_on_waterfall_tort = false;
global boolean 	p1_on_waterfall_tort = false;
global boolean 	p2_on_waterfall_tort = false;
global boolean 	p3_on_waterfall_tort = false;

global boolean lich_dead_early = false;

global boolean target_designator_disabled = FALSE;

global boolean tort_speed_test = false;

global boolean tort_speed_test_active = false;

//used for seeing where the player is while the tortoise is moving
global boolean player0_tort_far_ahead = false;
global boolean player0_tort_far_behind = false;

global boolean player1_tort_far_ahead = false;
global boolean player1_tort_far_behind = false;

global boolean player2_tort_far_ahead = false;
global boolean player2_tort_far_behind = false;

global boolean player3_tort_far_ahead = false;
global boolean player3_tort_far_behind = false;


global boolean player0_on_tortoise = false;
global boolean player0_near_tortoise = false;

global boolean player1_on_tortoise = false;
global boolean player1_near_tortoise = false;

global boolean player2_on_tortoise = false;
global boolean player2_near_tortoise = false;

global boolean player3_on_tortoise = false;
global boolean player3_near_tortoise = false;

global boolean player0_valid_and_on_tortoise_or_not_valid = false;
global boolean player1_valid_and_on_tortoise_or_not_valid = false;
global boolean player2_valid_and_on_tortoise_or_not_valid = false;
global boolean player3_valid_and_on_tortoise_or_not_valid = false;

//used for seeing where the player is while the tortoise is stopped
global boolean player0_valid_and_far_from_tortoise_or_not_valid = false;
global boolean player1_valid_and_far_from_tortoise_or_not_valid = false;
global boolean player2_valid_and_far_from_tortoise_or_not_valid = false;
global boolean player3_valid_and_far_from_tortoise_or_not_valid = false;

// =================================================================================================
// =================================================================================================
// *** START-UP ***
// =================================================================================================
// =================================================================================================

script startup m40_invasion()

	dprint( "::: M40 - INVASION :::" );

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

	if b_encounters then

	// display difficulty
	print_difficulty(); 
	
	end
	
	/*
	//f_loadout_set ("default");
	

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
	*/
	
end

// =================================================================================================
// =================================================================================================
// START
// =================================================================================================
// =================================================================================================

script static void start()
	//dprint( "::: start :::" );

	f_insertion_index_load( game_insertion_point_get() );
	
	objectives_set_string (0, m40_pause_screen_1);
	objectives_set_string (1, m40_pause_screen_2);
	objectives_set_string (2, m40_pause_screen_3);
	//pause screen objectives

	/*
	// Figure out what insertion point to use
	// Set these in init.txt or editor_init.txt to work on various areas quickly
	if (game_insertion_point_get() == 0) then
		ins_cavern();
	elseif (game_insertion_point_get() == 1) then
		ins_fodder();
	elseif (game_insertion_point_get() == 2) then
		ins_lakeside();
	elseif (game_insertion_point_get() == 12) then
		ins_cliffside();
	elseif (game_insertion_point_get() == 3) then
		ins_prechopper();
	elseif (game_insertion_point_get() == 4) then
		ins_chopper();
	elseif (game_insertion_point_get() == 11) then
		ins_waterfall();
	elseif (game_insertion_point_get() == 5) then
		ins_jackal();
	elseif (game_insertion_point_get() == 6) then
		ins_citadel();
	elseif (game_insertion_point_get() == 7) then
		ins_powercave();
	elseif (game_insertion_point_get() == 8) then
		ins_librarian();
	elseif (game_insertion_point_get() == 9) then
		ins_ordnance();
	elseif (game_insertion_point_get() == 10) then
		ins_epic();
	end
	*/
end

// =================================================================================================
// =================================================================================================
// CAVERN
// =================================================================================================
// =================================================================================================

//script static void tort_no()
//	vehicle_set_unit_interaction (big_tort, "mac_d", false, false);
//	print ("mac gun closed");
//end
//

script dormant f_landing_main()
	sleep_until (b_mission_started == TRUE);
	dprint  ("::: landing start :::");
end

script static void 	cav_started_sc()
	cav_started = true;
	print ("cav_started was set to TRUE");
end

script dormant cavern_cutscene_control()
//	sleep_until (volume_test_players (tv_player_start_spawn), 1);
	wake (cavern_obj_control);
	object_create_folder (caverns_crates);
	wake (m40_lasky_radio_contact);
//	ai_place (cav_dropoff_pelican_driver);
	object_create (pelican_dropoff_octopus_veh);
	pup_play_show (pelican_dropoff_octopus_pup);
	fade_in (0,0,0,0);
	wake (convoy_rollout);
	wake (cavern_gun_approach_vo);
	wake (dialogue_convoy_approach);
//	thread (m40_caves_vo_marines());
	thread (M40_cave_VO_mammoth_reveal());
	thread (m40_caves_tort_VO_delrio_radio());
end

script dormant cavern_obj_control()
	print ("cavern objective control is running. marines placed.");
	data_mine_set_mission_segment ("m40_cavern");
	ai_vehicle_reserve (pelican_dropoff_octopus_veh, true);
	vehicle_set_player_interaction (pelican_dropoff_octopus_veh, "pelican_p_l01", false, false);
	vehicle_set_player_interaction (pelican_dropoff_octopus_veh, "pelican_p_l02", false, false);
	vehicle_set_player_interaction (pelican_dropoff_octopus_veh, "pelican_p_l03", false, false);
	vehicle_set_player_interaction (pelican_dropoff_octopus_veh, "pelican_p_l04", false, false);
	vehicle_set_player_interaction (pelican_dropoff_octopus_veh, "pelican_p_l05", false, false);
	vehicle_set_player_interaction (pelican_dropoff_octopus_veh, "pelican_p_r01", false, false);
	vehicle_set_player_interaction (pelican_dropoff_octopus_veh, "pelican_p_r02", false, false);
	vehicle_set_player_interaction (pelican_dropoff_octopus_veh, "pelican_p_r03", false, false);
	vehicle_set_player_interaction (pelican_dropoff_octopus_veh, "pelican_p_r04", false, false);
	vehicle_set_player_interaction (pelican_dropoff_octopus_veh, "pelican_p_r05", false, false);
	print ("unit_recorder_load");
//	thread (test_hogs_attach3());
//	thread (test_hogs_attach4());
	unit_recorder_setup_for_unit (main_mammoth, tortoise_0716_a);
	unit_recorder_play (main_mammoth);
	print ("unit_recorder_play_on_unit");
	unit_recorder_pause (main_mammoth, true);
	tort_stopped = TRUE;
	thread (mam_dust_off());
	thread (m40_caves_tort_meet_palmer());
	thread (test_attach());
	thread (jetpack_profile_control());
	ai_place (marines_misc_sq);
	ai_place (marines_main_hog_01b_sq);
	ai_place (tortoise_jetpacker_01);
	ai_place (tortoise_jetpacker_02);
	pup_play_show(marines_misc_pup);	
	local long palmer_show = -1;
	ai_place (Marines_lasky);	
	sleep(1);
	ai_cannot_die (Marines_lasky, true);
	objects_physically_attach (main_mammoth, "lasky_first_position", Marines_lasky, "");
	lasky_first_show = pup_play_show (palmer_lasky_pup);
	thread (palmer_pup_breakout());
	pup_play_show (marine_ramp);
	print ("palmer pup show playing");
	thread (open_tort_doors_caverns());
	tort_bay_doors_opened = true;
	thread(cannon_lakeside_motion_new());
	object_cannot_take_damage (cannon_lakeside_new);
	print ("tort doors lowering");
	wake (cavern_chapter_title);
	sleep_until (volume_test_players (tv_cavern_01), 1);
	cavern_obj_state=10;
	print ("obj_state=10");
 	game_save_no_timeout();
// 	object_create (cavrockcrush);
	object_create (marines_main_hog_01_veh);
	object_create (marines_main_hog_02_veh);	
	wake (test_early_warthog_seating);	
	ai_vehicle_reserve (marines_main_hog_01_veh, true);
	ai_vehicle_reserve (marines_main_hog_02_veh, true);
	vehicle_set_player_interaction ((main_mammoth), "mac_d", false, false);
	sleep_until (volume_test_players (tv_don_demo), 1);
	ai_place (pelican_flyoff_sq_02);
	sleep_s (1);
	thread (mammoth_audio_control());
	object_set_persistent(marines_main_hog_01_veh, false);
	object_set_persistent(marines_main_hog_02_veh, false);	
	ai_place (pelican_flyoff_sq_01);
	ai_place (tort_marines);
	pup_play_show (tort_marines_pup);
	thread (tort_bipeds());

	wake (close_bay_doors_Hal);
	wake (firing_inside_mammoth_check);
	cavern_obj_state=20; 
	print ("obj_state=20");
	f_blip_flag (lasky_palmer_flag, "recon");
	sleep_until (volume_test_players (tv_palmer)
	or
	volume_test_players (tv_cavern_03)
	, 1
	);
		if
			volume_test_players (tv_palmer)
		then
			sleep (30 * 1);	
			thread (palmer_vignette_hack());
			sleep_until (player_equipped_jetpack == true);
		else
			f_unblip_flag (lasky_palmer_flag);
				if
					palmer_vignette == false
					then
					pup_stop_show (lasky_first_show);
				end
		end
	
	wake (cavern_tort_ready);
	
	sleep (30 * 1);	
	
	cs_run_command_script (Marines_lasky, lasky_safety_position);

	sleep_until (volume_test_players (tv_cavern_03), 1);
	cavern_obj_state=30; 
	print ("obj_state=30");
	
	player_done_with_opening_pups = true;
	thread (display_chapter_02());
	
	sleep_until (volume_test_players (tv_cavern_04), 1);
	cavern_obj_state=40; 
	print ("obj_state=40");
	
//	thread (pelican_dialogue_sc());

	sleep_until (volume_test_players (tv_cavern_05), 1);
	cavern_obj_state=50; 
	print ("obj_state=50");
	
	f_unblip_object (jetpack_lower_left);		
	f_unblip_object (jetpack_lower_right);
	
	thread (tort_underneath_cleanup());
	
//	sleep_until (volume_test_players (tv_spawn_fod_crates), 1);

	sleep_until( current_zone_set() >= DEF_S_ZONESET_GUN_FODDER(), 1 );

	//soft_ceiling_enable ("caverns_backtrack_01", true);

	thread (fodder_crate_creation());

	thread (caverns_soft_ceiling_backtrack());

	player_set_profile (jetpack_profile);

	sleep_until (volume_test_players (tv_cavern_55), 1);
	cavern_obj_state=55; 
	print ("obj_state=55");
	
// 	game_save_no_timeout();
	ai_erase (marines_misc_sq);
	sleep_forever (m40_caves_tort_meet_palmer);
	sleep_forever (m40_target_designator_callout);
//	print ("erased marines_misc_sq");
	
	sleep_until (volume_test_players (tv_cavern_06), 1);
	cavern_obj_state=60; 
	print ("obj_state=60");

	f_unblip_object (jetpack_lower_left);		
	f_unblip_object (jetpack_lower_right);	
// 	game_save_no_timeout();
end	

script static void fodder_crate_creation()

	sleep_until( current_zone_set_fully_active() >= DEF_S_ZONESET_GUN_FODDER(), 1 );

	object_create_folder (fodder_crates);
	object_destroy_folder (caverns_crates);

	print ("fodder crates created");

	sleep (30 * 1);	
	
	object_teleport_to_ai_point (fod_pod_01, pts_fod.tower_location);

end

script static void caverns_soft_ceiling_backtrack()

//EJECTS PLAYERS FROM MAMMOTH TURRETS SO THEY CAN BE TELEPORTED-----------------------
	if
		volume_test_object_bounding_sphere_center (tv_tortoise_top_01, player0)
		and
		unit_in_vehicle (player0)
		and
		volume_test_object (tv_caverns_teleport_check, player0)
	then
		unit_exit_vehicle (player0);
		sleep_until (not (unit_in_vehicle (player0)));
	end
	
	if
		volume_test_object_bounding_sphere_center (tv_tortoise_top_01, player1)
		and
		unit_in_vehicle (player1)
		and
		volume_test_object (tv_caverns_teleport_check, player1)
	then
		unit_exit_vehicle (player1);
		sleep_until (not (unit_in_vehicle (player1)));
	end

	if
		volume_test_object_bounding_sphere_center (tv_tortoise_top_01, player2)
		and
		unit_in_vehicle (player2)
		and
		volume_test_object (tv_caverns_teleport_check, player2)
	then
		unit_exit_vehicle (player2);
		sleep_until (not (unit_in_vehicle (player2)));
	end
	
	if
		volume_test_object_bounding_sphere_center (tv_tortoise_top_01, player3)
		and
		unit_in_vehicle (player3)
		and
		volume_test_object (tv_caverns_teleport_check, player3)
	then
		unit_exit_vehicle (player3);
		sleep_until (not (unit_in_vehicle (player3)));
	end

//-------------------------------------------------------------------------------------------

	if
		volume_test_object (tv_caverns_teleport_check, player0)
	then
		if 
			unit_in_vehicle (player0)
		then
			object_teleport (unit_get_vehicle (player0), caverns_teleport_01);
		else
			object_teleport (player0, caverns_teleport_01);
		end
	end
	
	if
		volume_test_object (tv_caverns_teleport_check, player1)
	then
		if 
			unit_in_vehicle (player1)
		then
			object_teleport (unit_get_vehicle (player1), caverns_teleport_02);
		else
			object_teleport (player1, caverns_teleport_02);
		end
	end
	
	if
		volume_test_object (tv_caverns_teleport_check, player2)
	then
		if 
			unit_in_vehicle (player2)
		then
			object_teleport (unit_get_vehicle (player2), caverns_teleport_03);
		else
			object_teleport (player2, caverns_teleport_03);
		end
	end
	
	if
		volume_test_object (tv_caverns_teleport_check, player3)
	then
		if 
			unit_in_vehicle (player3)
		then
			object_teleport (unit_get_vehicle (player3), caverns_teleport_04);
		else
			object_teleport (player3, caverns_teleport_04);
		end
	end
	
	soft_ceiling_enable ("caverns_backtrack_01", true);
	
	sleep_until (volume_test_players (tv_convoy_pass_to_fodder), 1);

//EJECTS PLAYERS FROM MAMMOTH TURRETS SO THEY CAN BE TELEPORTED-----------------------
	if
		volume_test_object_bounding_sphere_center (tv_tortoise_top_01, player0)
		and
		unit_in_vehicle (player0)
		and
		volume_test_object (tv_caverns_teleport_2, player0)
	then
		unit_exit_vehicle (player0);
		sleep_until (not (unit_in_vehicle (player0)));
	end
	
	if
		volume_test_object_bounding_sphere_center (tv_tortoise_top_01, player1)
		and
		unit_in_vehicle (player1)
		and
		volume_test_object (tv_caverns_teleport_2, player1)
	then
		unit_exit_vehicle (player1);
		sleep_until (not (unit_in_vehicle (player1)));
	end

	if
		volume_test_object_bounding_sphere_center (tv_tortoise_top_01, player2)
		and
		unit_in_vehicle (player2)
		and
		volume_test_object (tv_caverns_teleport_2, player2)
	then
		unit_exit_vehicle (player2);
		sleep_until (not (unit_in_vehicle (player2)));
	end
	
	if
		volume_test_object_bounding_sphere_center (tv_tortoise_top_01, player3)
		and
		unit_in_vehicle (player3)
		and
		volume_test_object (tv_caverns_teleport_2, player3)
	then
		unit_exit_vehicle (player3);
		sleep_until (not (unit_in_vehicle (player3)));
	end

//-------------------------------------------------------------------------------------------
	
	if
		volume_test_object (tv_caverns_teleport_2, player0)
	then
		if 
			unit_in_vehicle (player0)
		then
			object_teleport (unit_get_vehicle (player0), caverns_teleport_01b);
		else
			object_teleport (player0, caverns_teleport_01b);
		end
	end
	
	if
		volume_test_object (tv_caverns_teleport_2, player1)
	then
		if 
			unit_in_vehicle (player1)
		then
			object_teleport (unit_get_vehicle (player1), caverns_teleport_02b);
		else
			object_teleport (player1, caverns_teleport_02b);
		end
	end
	
	if
		volume_test_object (tv_caverns_teleport_2, player2)
	then
		if 
			unit_in_vehicle (player2)
		then
			object_teleport (unit_get_vehicle (player2), caverns_teleport_03b);
		else
			object_teleport (player2, caverns_teleport_03b);
		end
	end
	
	if
		volume_test_object (tv_caverns_teleport_2, player3)
	then
		if 
			unit_in_vehicle (player3)
		then
			object_teleport (unit_get_vehicle (player3), caverns_teleport_04b);
		else
			object_teleport (player3, caverns_teleport_04b);
		end
	end

//	sleep_until (volume_test_players (tv_fod_mammoth_10), 1);

	kill_volume_enable (playerkill_soft_fodder_backtrack_01);
//	soft_ceiling_enable ("caverns_backtrack_03", true);
	soft_ceiling_enable ("caverns_backtrack_02", true);

	sleep_s(1);
	thread (objects_destroy_all_in_volume (tv_fod_cav_entire));
	sleep_until (master_object_list_count <= 0, 1);	
	thread (objects_destroy_all_in_volume (tv_caverns_teleport_check));
	
end

script static void pelican_dialogue_sc()
//	sleep_until (volume_test_object (tv_cavern_55, animated_pelican_s), 1);
//	print ("M40_gun_fodder_pelican_down");
	wake (M40_gun_fodder_pelican_down);
end

script static void palmer_pup_breakout()
	sleep_until	(player_equipped_jetpack == true)
	or
	(player_done_with_opening_pups == true);
	palmer_pup_breakout_bool = true;
end

script static void testrr()
	cs_run_command_script (Marines_lasky, lasky_safety_position);
end

script dormant firing_inside_mammoth_check()
	print ("firing_inside_mammoth_check");
	thread (action_test_reset());
	wake (test_tort_global_interior);
	print ("firing_inside_mammoth_check sleep 1");
	sleep_until (
	tort_global_interior == true
	and
	player_action_test_primary_trigger()
	);
	if
		vehicle_test_seat (marines_main_hog_01_veh, "warthog_g")
		or
		vehicle_test_seat (marines_main_hog_02_veh, "warthog_g")		
		then
		b_warthog_gun_in_mammoth = TRUE;
		print ("player definitely shooting WARTHOG TURRET inside mammoth");
		else
		b_gun_in_mammoth = TRUE;
		print ("player definitely shooting regular gun inside mammoth");
	end
	player_action_test_reset();
	sleep_s(5);	
	sleep_until (
	tort_global_interior == true
	and
	player_action_test_primary_trigger()
	);
	if
		vehicle_test_seat (marines_main_hog_01_veh, "warthog_g")
		or
		vehicle_test_seat (marines_main_hog_02_veh, "warthog_g")		
		then
		b_warthog_gun_in_mammoth = TRUE;
		print ("STAGE 2 player definitely shooting WARTHOG TURRET inside mammoth");
		else
		b_gun_in_mammoth = TRUE;
		print ("STAGE 2 player definitely shooting regular gun inside mammoth");
	end
	player_action_test_reset();
	sleep_s(5);		
	sleep_until (
	tort_global_interior == true
	and
	player_action_test_primary_trigger()
	);
	if
		vehicle_test_seat (marines_main_hog_01_veh, "warthog_g")
		or
		vehicle_test_seat (marines_main_hog_02_veh, "warthog_g")		
		then
		b_warthog_gun_in_mammoth = TRUE;
		print ("STAGE 3 player definitely shooting WARTHOG TURRET inside mammoth");
		else
		b_gun_in_mammoth = TRUE;
		print ("STAGE 3 player definitely shooting regular gun inside mammoth");
	end
	player_action_test_reset();
end

script static void action_test_reset()
	repeat
	sleep_until (
		(tort_global_interior == false
		and
		player_action_test_primary_trigger())
		or
		volume_test_players (tv_cavern_03), 1
		);
		
		player_action_test_reset();
		print ("player_action_test_resetted");
		sleep (30 * 2);	
	until (volume_test_players (tv_cavern_03), 1);
	print ("player_action_test_resetted DONE!");
end

script command_script lasky_safety_position()
	objects_detach (main_mammoth, Marines_lasky);
	cs_go_to (tort_pup_pt.lasky_rear);
	print ("LASKY ORDERED TO WALK");
	cs_face (true, mtest2.p16);
	sleep (30 * 1);
//	objects_physically_attach (main_mammoth, "2fl_rear_terminal", Marines_lasky, "");	
	print ("lasky attached");
	lasky_final_pup = pup_play_show (lasky_alt_pup);
	thread (lasky_pup_test());
	sleep (30 * 5);
	thread (lasky_disappear());
//	pup_play_show(lasky_pup);
end

script dormant test_early_warthog_seating()
	sleep_until (player_in_vehicle (marines_main_hog_01_veh)
	or
	player_in_vehicle (marines_main_hog_02_veh));
		if
		lakeside_obj_state < 10
		then
		wake (M40_marine_warthog);
		print ("player trying to drive warthog or mongoose early");
		else
		print ("player is OK to drive warthog now");
		end
end

script dormant close_bay_doors_Hal()
//	sleep_until (volume_test_players (tv_tortoise_bottom_01), 1);
	sleep_until (palmer_vignette == true
	or
	player_in_vehicle (marines_main_hog_01_veh)
	or
	player_in_vehicle (marines_main_hog_02_veh));	
	wake (M40_tortoise_enter_first_time);
//	custom_animation (main_mammoth, "objects\vehicles\human\storm_mammoth\storm_mammoth.model_animation_graph", "bay:doors:closing", false);
	if
		tort_bay_doors_opened == TRUE
	then
		thread (close_tort_doors_caverns());
		tort_bay_doors_opened = false;
	end
end

script static void test_doors()
	object_set_physics (main_mammoth, false);
	custom_animation (main_mammoth, "objects\vehicles\human\storm_mammoth\storm_mammoth.model_animation_graph", "bay:doors:opening", false);
end

script dormant convoy_rollout()
	sleep_until (volume_test_players (tv_cavern_01), 1);
	sleep_until 
	(
	cav_rollout_rdy	== true
	or
	(volume_test_players (tv_cavern_03)
	)
	, 1);
	
	if 
		(tort_bay_doors_opened == true)
	then
		thread (close_tort_doors_caverns());
		print ("player skipped ahead, manually closing tortoise bay doors");
	end
	
	if
		(player_equipped_jetpack == false)
	then
		wake (convoy_rollout_player_ahead);
	end

	if
		jetpacks_revealed == false
	then
		thread (reveal_jetpack_lower_left());
	end

	print ("tortoise prepping for roll out");
	cs_stow (tort_marines, false);
	cs_enable_moving (tort_marines, true);
	wake (f_dialog_m40_del_rio_radio);
	sleep (30 * 4);
	wake (m40_caves_tort_VO_breakout);
	sleep (30 * 2);
 	print ("tortoise objective requirements met");
	unit_recorder_pause_smooth (main_mammoth, false, 12);
	tort_stopped = FALSE;
	
	// this music cue needs to trigger when the mammoth first start moving
	thread(f_music_m40_v13_mammoth_start());
	
	thread (mam_dust_on());
// 	wake (cav_rock_crush);
	thread (camera_shake_6sleep());
	sleep_forever (firing_inside_mammoth_check);
//	sleep (30 * 14);
//	unit_recorder_set_playback_rate_smooth (main_mammoth, 1.5, 3);	
// 	print ("TORTOISE AT 1.5 SPEED");
//	sleep (30 * 4);	
//	unit_recorder_set_playback_rate_smooth (main_mammoth, .7, 3);	
// 	print ("TORTOISE AT .7 SPEED");
//	sleep (30 * 2);
	thread (new_tort_caverns_speed_test());
	if
		player_left_caverns_early == FALSE
	then
		wake (tortoise_main_cs_on_recording_v2);
 	end
 	wake (f_fodder_main);
 	print ("tortoise objectives set");
 	game_save_no_timeout();
end

script static void test_attach()
//	objects_attach (main_mammoth,  "device_button_03", tortoise_device_button_01, "");
//	objects_attach (main_mammoth,  "device_button_04", tortoise_device_button_02, "");
//	objects_attach (main_mammoth,  "device_button_05", tortoise_device_button_03, "");
//	objects_attach (main_mammoth,  "device_button_06", tortoise_device_button_04, "");
//	objects_attach (main_mammoth,  "device_button_07", tortoise_device_button_05, "");
//	objects_attach (main_mammoth,  "device_button_attachment_01", tort_button_01_attachment, "");
//	objects_attach (main_mammoth,  "device_button_attachment_02", tort_button_02_attachment, "");
//	objects_attach (main_mammoth,  "device_button_attachment_03", tort_button_03_attachment, "");
//	objects_attach (main_mammoth,  "device_button_attachment_04", tort_button_04_attachment, "");
	object_destroy (tortoise_device_button_01);
	object_destroy (tortoise_device_button_02);
	object_destroy (tortoise_device_button_03);
	object_destroy (tortoise_device_button_04);
	object_destroy (tortoise_device_button_05);
	object_destroy (tort_button_01_attachment);	
	object_destroy (tort_button_02_attachment);	
	object_destroy (tort_button_03_attachment);	
	object_destroy (tort_button_04_attachment);	
	object_create (jetpack_lower_left_empty);
	object_create (jetpack_lower_right_empty);
	sleep(1);
	objects_attach (main_mammoth,  "crate_bottom_jetpack_left", jetpack_lower_left_empty, "");
	objects_attach (main_mammoth,  "crate_bottom_jetpack_right", jetpack_lower_right_empty, "");
	
//	thread (test_hogs_attach());
	thread (test_hogs_attach4());
	thread (test_hogs_attach3());
end

script static void test_hogs_attach()
	object_create (marines_main_hog_01_veh_col);
	object_create (marines_main_hog_02_veh_col);
	sleep(1);
	objects_physically_attach (main_mammoth, "hog_front_hang", marines_main_hog_01_veh_col, "");
	objects_physically_attach (main_mammoth, "hog_rear_hang", marines_main_hog_02_veh_col, "");
	sleep(1);
	object_cannot_take_damage (marines_main_hog_01_veh_col);
	object_cannot_take_damage (marines_main_hog_02_veh_col);
	object_hide (marines_main_hog_01_veh_col, true);
	object_hide (marines_main_hog_02_veh_col, true);
	objects_attach (main_mammoth, "hog_front_hang_2", marines_main_hog_01_veh, "");
	objects_attach (main_mammoth, "hog_rear_hang_2", marines_main_hog_02_veh, "");		
end

script static void test_hogs_attach3()
	objects_attach (main_mammoth, "hog_front_hang_2", marines_main_hog_01_veh, "");
	objects_attach (main_mammoth, "hog_rear_hang_2", marines_main_hog_02_veh, "");	
	object_cannot_take_damage (marines_main_hog_01_veh);
	object_cannot_take_damage (marines_main_hog_02_veh);
end

script static void test_hogs_attach4()
	object_create (marines_main_hog_01_veh_col);
	object_create (marines_main_hog_02_veh_col);
	sleep(1);
	objects_physically_attach (main_mammoth, "hog_front_hang", marines_main_hog_01_veh_col, "");
	objects_physically_attach (main_mammoth, "hog_rear_hang", marines_main_hog_02_veh_col, "");		
	sleep(1);
	object_cannot_take_damage (marines_main_hog_01_veh_col);
	object_cannot_take_damage (marines_main_hog_02_veh_col);
	object_hide (marines_main_hog_01_veh_col, true);
	object_hide (marines_main_hog_02_veh_col, true);
end


script static void test_hogs_detach()

	object_destroy (marines_main_hog_01_veh_col);
	object_destroy (marines_main_hog_02_veh_col);

	objects_detach (main_mammoth, marines_main_hog_01_veh);
	objects_detach (main_mammoth, marines_main_hog_02_veh);
	
	object_can_take_damage (marines_main_hog_01_veh);
	object_can_take_damage (marines_main_hog_02_veh);

//	object_create (marines_main_hog_01_veh);
//	object_create (marines_main_hog_02_veh);	
//	sleep(1);
//	object_hide (marines_main_hog_01_veh, true);
//	object_hide (marines_main_hog_02_veh, true);
//	object_set_physics (marines_main_hog_01_veh, false);
//	object_set_physics (marines_main_hog_02_veh, false);
//	sleep(1);
//	objects_attach (main_mammoth, "hog_front_hang", marines_main_hog_01_veh, "");
//	objects_attach (main_mammoth, "hog_rear_hang", marines_main_hog_02_veh, "");	
//	sleep_s(1);
//	object_hide (marines_main_hog_01_veh, false);
//	object_hide (marines_main_hog_02_veh, false);
//	object_destroy (test_hog_01e);
//	object_destroy (test_hog_02e);
//	object_set_physics (marines_main_hog_01_veh, true);
//	object_set_physics (marines_main_hog_02_veh, true);
//	objects_detach (main_mammoth, marines_main_hog_01_veh);
//	objects_detach (main_mammoth, test_hog_02f);
end

script static void test_hogs_attach2()
	object_create (test_hog_01p);	
	object_create (test_hog_02p);
	objects_physically_attach (main_mammoth, "hog_front_hang", test_hog_01p, "");
	objects_physically_attach (main_mammoth, "hog_rear_hang", test_hog_02p, "");
end

script static void test_hogs_detach2()
	object_create (test_hog_01f);
	object_create (test_hog_02f);	
	sleep(1);
	object_hide (test_hog_01f, true);
	object_hide (test_hog_02f, true);
	object_set_physics (test_hog_01f, false);
	object_set_physics (test_hog_02f, false);
	sleep(1);
	objects_attach (main_mammoth, "hog_front_hang", test_hog_01f, "");
	objects_attach (main_mammoth, "hog_rear_hang", test_hog_02f, "");	
	sleep_s(1);
	object_hide (test_hog_01f, false);
	object_hide (test_hog_02f, false);
	object_destroy (test_hog_01p);
	object_destroy (test_hog_02p);
	object_set_physics (test_hog_01f, true);
	object_set_physics (test_hog_02f, true);
	objects_detach (main_mammoth, test_hog_01f);
	objects_detach (main_mammoth, test_hog_02f);
end

script static void palmer_vignette_hack()
	f_unblip_flag (lasky_palmer_flag);
	palmer_vignette = true;
	print ("PALMER LASKY VIGNETTE STARTING");
	f_unblip_flag (lasky_palmer_flag);
	sleep_s (13);
	thread (display_chapter_02a());
	sleep_s (2);
	thread (reveal_jetpack_lower_left());
	print ("palmer_vignette_hack triggered jetpack blip");
end

script static void jetpack_profile_control()
	sleep_until (
	unit_has_equipment (player0, objects\equipment\storm_jet_pack\storm_jet_pack_pve.equipment)
	or
	unit_has_equipment (player1, objects\equipment\storm_jet_pack\storm_jet_pack_pve.equipment)
	or
	unit_has_equipment (player2, objects\equipment\storm_jet_pack\storm_jet_pack_pve.equipment)
	or
	unit_has_equipment (player3, objects\equipment\storm_jet_pack\storm_jet_pack_pve.equipment));
	player_set_profile (jetpack_profile);
	print ("at least one player picked up the jetpack, so setting the jetpack profile for all");
end

script static void lasky_disappear()
	sleep_until (not (objects_can_see_object (player0, marines_lasky.lasky, 60))
	and
	not (objects_can_see_object (player1, marines_lasky.lasky, 60))
	and
	not (objects_can_see_object (player2, marines_lasky.lasky, 60))
	and
	not (objects_can_see_object (player3, marines_lasky.lasky, 60))
	, 1);
	ai_erase (marines_lasky.lasky);
end

script static void unblip_jetpack_by_singles_1()
	sleep_until (objects_distance_to_object (jetpack_left_01, jetpack_lower_left) > .2
	and
	objects_distance_to_object (jetpack_left_02, jetpack_lower_left) > .2);

	f_unblip_object (jetpack_lower_left);
end

script static void unblip_jetpack_by_singles_2()
	sleep_until (objects_distance_to_object (jetpack_right_01, jetpack_lower_right) > .2
	and
	objects_distance_to_object (jetpack_right_02, jetpack_lower_right) > .2);

	f_unblip_object (jetpack_lower_right);
end

script static void attach_jetpacks_to_crate()
//		sleep(15);

		object_create (jetpack_left_01);
		object_create (jetpack_left_02);
		object_create (jetpack_right_01);
		object_create (jetpack_right_02);
			
		objects_attach (jetpack_lower_left,  "mkr_jetpack1", jetpack_left_01, ""); 
		objects_attach (jetpack_lower_left,  "mkr_jetpack2", jetpack_left_02, ""); 	
		objects_attach (jetpack_lower_right,  "mkr_jetpack1", jetpack_right_01, ""); 	
		objects_attach (jetpack_lower_right,  "mkr_jetpack2", jetpack_right_02, ""); 
end


script static void reveal_jetpack_lower_left()
	if
		jetpacks_revealed == false
	then
		jetpacks_revealed = true;
		print ("jetpackz revealed equals true");

		thread (reveal_jetpack_lower_right());
		
		object_create (jetpack_lower_left);
		object_destroy (jetpack_lower_left_empty);
		objects_attach (main_mammoth,  "crate_bottom_jetpack_left", jetpack_lower_left, "");
			
		sleep_s (2);
	
		thread (attach_jetpacks_to_crate());

		f_blip_object (jetpack_lower_right, "recon");
		f_blip_object (jetpack_lower_left, "recon");

		jetpack_lower_left->open_default();

		thread (unblip_jetpack_by_singles_1());
		thread (unblip_jetpack_by_singles_2());

//		if 
//			game_coop_player_count() == 1
//		then
//			sleep_until (unit_has_equipment (player_get_first_valid(), objects\equipment\storm_jet_pack\storm_jet_pack_pve.equipment)
//		or		
//			volume_test_players (tv_cavern_03), 1);
//		end
//		
//		if 
//			game_coop_player_count() == 2
//		then
//			sleep_until (unit_has_equipment (player0, objects\equipment\storm_jet_pack\storm_jet_pack_pve.equipment)
//			and
//			unit_has_equipment (player1, objects\equipment\storm_jet_pack\storm_jet_pack_pve.equipment)
//		or
//			game_coop_player_count() < 2
//		or
//			volume_test_players (tv_cavern_03), 1);
//		end
//		
//		if 
//			game_coop_player_count() == 3
//		then
//			sleep_until (unit_has_equipment (player0, objects\equipment\storm_jet_pack\storm_jet_pack_pve.equipment)
//			and
//			unit_has_equipment (player1, objects\equipment\storm_jet_pack\storm_jet_pack_pve.equipment)
//			and
//			unit_has_equipment (player2, objects\equipment\storm_jet_pack\storm_jet_pack_pve.equipment)
//		or
//			game_coop_player_count() < 3
//		or
//			volume_test_players (tv_cavern_03), 1);
//		end
//		
//		if 
//			game_coop_player_count() == 4
//		then
//			sleep_until (unit_has_equipment (player0, objects\equipment\storm_jet_pack\storm_jet_pack_pve.equipment)
//			and
//			unit_has_equipment (player1, objects\equipment\storm_jet_pack\storm_jet_pack_pve.equipment)
//			and
//			unit_has_equipment (player2, objects\equipment\storm_jet_pack\storm_jet_pack_pve.equipment)
//			and
//			unit_has_equipment (player3, objects\equipment\storm_jet_pack\storm_jet_pack_pve.equipment)
//		or
//			game_coop_player_count() < 4
//		or
//			volume_test_players (tv_cavern_03), 1);
//		end


		sleep_until(f_ability_player_cnt('objects\equipment\storm_jet_pack\storm_jet_pack_pve.equipment') >= player_count()
		or		
		volume_test_players (tv_cavern_03), 1);
		
		if
			not (volume_test_players (tv_cavern_03))
		then
			thread (display_chapter_02a_complete());
			print ("all players have jetpacks - mission progressing");
		else
			print ("players didn't get jetpacks, but moved forward - mission progressing");
		end
		

		
		f_unblip_object (jetpack_lower_left);		
		f_unblip_object (jetpack_lower_right);
		
		player_equipped_jetpack = true;
	
//		object_create (garbage_btn_01);
//	 	thread (garbage_btn_01_sc());
//	 	print ("dmmode");
	 	
	end
end

script static void jetpack_new_check()
	inspect (f_ability_player_cnt('objects\equipment\storm_jet_pack\storm_jet_pack_pve.equipment'));
	//sleep_until( (f_ability_player_cnt('objects\equipment\storm_auto_turret\storm_auto_turret_pve.equipment') >= 2)
end

script static void reveal_jetpack_lower_right()

		object_create (jetpack_lower_right);
		object_destroy (jetpack_lower_right_empty);
		objects_attach (main_mammoth,  "crate_bottom_jetpack_right", jetpack_lower_right, "");
		
		sleep_s (1);
		
		jetpack_lower_right->open_default();
		print ("jetpackz revealed");
			
		if 
			game_coop_player_count() == 1
		then
			sleep_until (unit_has_equipment (player0, objects\equipment\storm_jet_pack\storm_jet_pack_pve.equipment)
		or
			volume_test_players (tv_cavern_03), 1);
		end
		
		if 
			game_coop_player_count() == 2
		then
			sleep_until (unit_has_equipment (player0, objects\equipment\storm_jet_pack\storm_jet_pack_pve.equipment)
			and
			unit_has_equipment (player1, objects\equipment\storm_jet_pack\storm_jet_pack_pve.equipment)
		or
			volume_test_players (tv_cavern_03), 1);
		end
		
		if 
			game_coop_player_count() == 3
		then
			sleep_until (unit_has_equipment (player0, objects\equipment\storm_jet_pack\storm_jet_pack_pve.equipment)
			and
			unit_has_equipment (player1, objects\equipment\storm_jet_pack\storm_jet_pack_pve.equipment)
			and
			unit_has_equipment (player2, objects\equipment\storm_jet_pack\storm_jet_pack_pve.equipment)
		or
			volume_test_players (tv_cavern_03), 1);
		end
		
		if 
			game_coop_player_count() == 4
		then
			sleep_until (unit_has_equipment (player0, objects\equipment\storm_jet_pack\storm_jet_pack_pve.equipment)
			and
			unit_has_equipment (player1, objects\equipment\storm_jet_pack\storm_jet_pack_pve.equipment)
			and
			unit_has_equipment (player2, objects\equipment\storm_jet_pack\storm_jet_pack_pve.equipment)
			and
			unit_has_equipment (player3, objects\equipment\storm_jet_pack\storm_jet_pack_pve.equipment)
		or
			volume_test_players (tv_cavern_03), 1);
		end
		
end

script dormant convoy_rollout_player_ahead()
	if
		unit_in_vehicle (player0)
		or
		unit_in_vehicle (player1)
		or
		unit_in_vehicle (player2)
		or
		unit_in_vehicle (player3)
	then
		print ("Player leaving caverns IN WARTHOG without being equipped");	
		player_left_caverns_early = true;

		cs_stow (tort_marines, false);
		cs_enable_moving (tort_marines, true);
		unit_recorder_pause (main_mammoth, false);
		tort_stopped = FALSE;	
		thread (mam_dust_on());
		sleep_forever (firing_inside_mammoth_check);
		wake (tortoise_main_cs_on_recording_v2);
		unit_recorder_set_playback_rate_smooth (main_mammoth, 2.1, 2);	
		print ("TORT SPEED = 2.1");
	 	wake (f_fodder_main);		
		f_unblip_object (jetpack_lower_left);		
		f_unblip_object (jetpack_lower_right);
//	 	game_save_no_timeout();
	 	
 	else
 		print ("Player leaving caverns on foot without being equipped");
		cs_stow (tort_marines, false);
		cs_enable_moving (tort_marines, true);
		unit_recorder_pause_smooth (main_mammoth, false, 5);
		tort_stopped = FALSE;	
		thread (mam_dust_on());
		sleep_forever (firing_inside_mammoth_check);
		wake (tortoise_main_cs_on_recording_v2);
	 	wake (f_fodder_main);		
		f_unblip_object (jetpack_lower_left);		
		f_unblip_object (jetpack_lower_right);
//	 	game_save_no_timeout(); 	
	end	
end

script dormant cavern_tort_ready()
//	sleep (30 * 5);
	print ("tort starting rollout count from here, needs three seconds");
	static short player_in_tort_for_awhile = 0;
	static real num_seconds = 3;
	repeat 
		if (volume_test_players (tv_tortoise_top_01) == 1
		or
		volume_test_players (tv_tortoise_middle_01) == 1
		or
		volume_test_players (tv_tortoise_bottom_01) == 1
		) then
			player_in_tort_for_awhile = player_in_tort_for_awhile + 1;
		end
		until (player_in_tort_for_awhile == (game_tick_rate_get() * num_seconds), 1);
	print ("player was in tort for awhile");
	cav_rollout_rdy	= true;
end

//script dormant cav_rock_crush()
//	sleep_until (volume_test_object (tv_rock_crush, main_mammoth), 1);
//	thread (fx_pup());
//end

//script static void fx_pup()
//	pup_play_show ("rock_crush_pup");
//	print ("ROCK PUP PLAYED"); 
//	thread (camera_shake_now_short());
//end

//script static void fx_solo()
////	effect_new_at_ai_point (environments\solo\m40_invasion\fx\rockwall_burst\rockwall_burst.effect, convoy_tracking_pt.p22); 
//	print ("ROCK FX"); 
//end

//script static void test_rock_crush()
//	object_create (cavrockcrush);
////	effect_new_at_ai_point (environments\solo\m40_invasion\fx\rockwall_burst\rockwall_burst.effect, convoy_tracking_pt.p22); 
//	sleep( 30 * 6 );
//	device_set_overlay_track( cavrockcrush, 'any:rockcrush' );
//	device_animate_overlay( cavrockcrush, 1.4, 1.4, 0, 0 );
//end

//--------------------cavern command scripts-------------------

script command_script pelican_flyoff_01_cs()
	cs_vehicle_speed (.7);
	cs_fly_by (pelican_flyoff_01_pt.p0);
	cs_fly_by (pelican_flyoff_01_pt.p1); 
	cs_fly_by (pelican_flyoff_01_pt.p2);
	cs_fly_by (pelican_flyoff_01_pt.p3);
	print ("pelican_flyoff_01_pt.p3");
	cs_fly_by (pelican_flyoff_01_pt.p7);
//	print ("pelican_flyoff_01_pt.p4");
//	cs_fly_by (pelican_flyoff_01_pt.p8);
	cs_fly_by (pelican_flyoff_01_pt.p9);
	cs_fly_by (pelican_flyoff_01_pt.p11);
	cs_fly_by (pelican_flyoff_01_pt.p13);
	ai_erase (pelican_flyoff_sq_01);
	print ("erased guy1");
end

//script command_script pelican_flyoff_02_cs()
//	cs_vehicle_speed (.5);
//	cs_fly_by (pelican_flyoff_01_pt.p5);
//	cs_fly_by (pelican_flyoff_01_pt.p6); 
//	cs_fly_by (pelican_flyoff_01_pt.p7);
//	ai_erase (pelican_flyoff_sq.guy2);
//end

script command_script pelican_flyoff_03_cs()
	cs_vehicle_speed (.7);
	cs_fly_by (pelican_flyoff_01_pt.p2);
	cs_fly_by (pelican_flyoff_01_pt.p3);
	cs_fly_by (pelican_flyoff_01_pt.p7);
//	print ("pelican_flyoff_01_pt.p4");
//	cs_fly_by (pelican_flyoff_01_pt.p8);
	cs_fly_by (pelican_flyoff_01_pt.p9);
	cs_fly_by (pelican_flyoff_01_pt.p11);
	cs_fly_by (pelican_flyoff_01_pt.p13);
	ai_erase (pelican_flyoff_sq_02);
end

script dormant cavern_chapter_title()
	sleep_until (volume_test_players (tv_mammoth_chapter), 1);
//	sleep (30 * 6);
	cinematic_show_letterbox (TRUE);
//	ai_place (pelican_flyoff_sq_02);
//	ai_place (pelican_flyoff_sq.guy3);
	sleep (30 * 1);
//	thread(storyblurb_display(leadin_title_cav, 8, FALSE, FALSE));
	//f_chapter_title_2 (leadin_title_cav);
	thread(f_chapter_title(leadin_title_cav));
	sleep (30 * 1);
//	ai_place (pelican_flyoff_sq_01);
	sleep (30 * 5);
	cinematic_show_letterbox (FALSE);
end

script static void f_chapter_title_2 (cutscene_title chapter_title)
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




//script command_script cavern_marines_enter_hog01()
//	cs_go_to_vehicle (marines_main_hog_01_veh);
//end
//
//script command_script cavern_marines_enter_hog02()
//	cs_go_to_vehicle (marines_main_hog_02_veh);
//end

script static void tort_dr()
	
	print ("TORT DR.!");
	
	kill_volume_disable (playerkill_soft_lakeside_backtrack);
	kill_volume_disable (playerkill_soft_post_lakeside);
	kill_volume_disable (playerkill_soft_post_chopper);

	object_create (main_mammoth);
	object_teleport_to_ai_point (main_mammoth, prechopper_tortoise_route_pt.p10);
	
	sleep (1);
	
	unit_recorder_setup_for_unit (main_mammoth, tortoise_0716_c);
	unit_recorder_play (main_mammoth);
	unit_recorder_set_playback_rate (main_mammoth, .7);
	unit_recorder_pause (main_mammoth, true);
//
	thread (open_tort_doors_river());
//	sleep_until (volume_test_object (tv_tort_rec_chopper_pt5, main_mammoth));
//
//	ObjectOverrideNavMeshCutting(main_mammoth, true);
//	ObjectOverrideNavMeshObstacle(main_mammoth, false);
//
//	unit_recorder_pause_smooth (main_mammoth, true, 2);
//	tort_stopped = TRUE;
//	thread (mam_dust_off());

end

script static void lask_dr()
	
	print ("TORT DR.!");
	
//	kill_volume_disable (playerkill_soft_lakeside_backtrack);
//	kill_volume_disable (playerkill_soft_post_lakeside);
//	kill_volume_disable (playerkill_soft_post_chopper);

	ai_place (Marines_lasky);	
	ai_cannot_die (Marines_lasky, true);
//	objects_physically_attach (main_mammoth, "lasky_first_position", Marines_lasky, "");
	lasky_first_show = pup_play_show (palmer_lasky_pup);	
	
//	objects_physically_attach (main_mammoth, "lasky_first_position", Marines_lasky, "");
	
//	sleep_s (8);	
	
//	objects_detach (main_mammoth, marines_lasky);
//	cs_run_command_script (Marines_lasky, lasky_safety_position);
	
//	palmer_vignette = true;
//	palmer_pup_breakout_bool = true;
	
		
//	object_create (main_mammoth);
//	object_teleport_to_ai_point (main_mammoth, prechopper_tortoise_route_pt.p10);
	
//	sleep (1);
//	
//	palmer_vignette = true;
//	palmer_pup_breakout_bool = true;
//		
//	unit_recorder_setup_for_unit (main_mammoth, tortoise_0716_a);
//	unit_recorder_play (main_mammoth);
////	unit_recorder_set_time_position (main_mammoth, 112);
//	unit_recorder_pause (main_mammoth, true);

//	sleep_s (3);
//	
//	thread (tort_bipeds());
		
//	thread (open_tort_doors_chopper());
//	sleep_s (12);	
//	thread (close_tort_doors_chopper());
end

script dormant tortoise_main_cs_on_recording_v2()
	print ("Tortoise running complex recorded scripts");

	sleep_until (volume_test_object (tv_cavern_04, main_mammoth));
	
	TDT_dist = 20;
	thread (tort_stop_check_player_location());

	sleep_s (1);
	
	if 
		(player0_valid_and_far_from_tortoise_or_not_valid == TRUE
		and
		player1_valid_and_far_from_tortoise_or_not_valid == TRUE
		and
		player2_valid_and_far_from_tortoise_or_not_valid == TRUE
		and
		player3_valid_and_far_from_tortoise_or_not_valid == TRUE
		and 
		cavern_obj_state < 40)
			
	then
	
		unit_recorder_pause_smooth (main_mammoth, true, 3);	
		tort_stopped = TRUE;
		thread (mam_dust_off());
		print ("TDT = Tort Distance Test = All players are behind, Tortoise is stopping");
				
		sleep_until (
				
		(objects_distance_to_object (player0, main_mammoth) < 20 
		and
		objects_distance_to_object (player0, main_mammoth) > 0)
		or
		(objects_distance_to_object (player1, main_mammoth) < 20 
		and
		objects_distance_to_object (player1, main_mammoth) > 0)	
		or
		(objects_distance_to_object (player2, main_mammoth) < 20 
		and
		objects_distance_to_object (player2, main_mammoth) > 0)
		or
		(objects_distance_to_object (player3, main_mammoth) < 20 
		and
		objects_distance_to_object (player3, main_mammoth) > 0)
		
		or
		cavern_obj_state > 39, 1);
		
		print ("TDT = Tort Distance Test = At least one player is caught up, Tortoise is continuing");
		unit_recorder_pause_smooth (main_mammoth, false, 2);	
		tort_stopped = FALSE;
		thread (mam_dust_on());
	end

	sleep_until (volume_test_object (tv_cavern_05, main_mammoth));

	TDT_dist = 20;
	thread (tort_stop_check_player_location());

	sleep_s (1);
	
	if 
		(player0_valid_and_far_from_tortoise_or_not_valid == TRUE
		and
		player1_valid_and_far_from_tortoise_or_not_valid == TRUE
		and
		player2_valid_and_far_from_tortoise_or_not_valid == TRUE
		and
		player3_valid_and_far_from_tortoise_or_not_valid == TRUE
		and 
		cavern_obj_state < 50)
		
	then
	
		sleep_until (
				
		(objects_distance_to_object (player0, main_mammoth) < 20 
		and
		objects_distance_to_object (player0, main_mammoth) > 0)
		or
		(objects_distance_to_object (player1, main_mammoth) < 20 
		and
		objects_distance_to_object (player1, main_mammoth) > 0)	
		or
		(objects_distance_to_object (player2, main_mammoth) < 20 
		and
		objects_distance_to_object (player2, main_mammoth) > 0)
		or
		(objects_distance_to_object (player3, main_mammoth) < 20 
		and
		objects_distance_to_object (player3, main_mammoth) > 0)
		
		or
		cavern_obj_state > 49, 1);

		print ("tv_cavern_05: Player caught up, Tortoise is continuing");
		unit_recorder_pause_smooth (main_mammoth, false, 2);	
		tort_stopped = FALSE;
		thread (mam_dust_on());
	end
	
	sleep_until (volume_test_object (tv_cavern_06, main_mammoth));		

	TDT_dist = 20;
	thread (tort_stop_check_player_location());

	sleep_s (1);
	
	if 
		(player0_valid_and_far_from_tortoise_or_not_valid == TRUE
		and
		player1_valid_and_far_from_tortoise_or_not_valid == TRUE
		and
		player2_valid_and_far_from_tortoise_or_not_valid == TRUE
		and
		player3_valid_and_far_from_tortoise_or_not_valid == TRUE
		and 
		cavern_obj_state < 60)
		
	then
	
		unit_recorder_pause_smooth (main_mammoth, true, 3);	
		tort_stopped = TRUE;
		thread (mam_dust_off());
		print ("tv_cavern_06: Player is behind, Tortoise is stopping");
		
		sleep_until (
				
		(objects_distance_to_object (player0, main_mammoth) < 20 
		and
		objects_distance_to_object (player0, main_mammoth) > 0)
		or
		(objects_distance_to_object (player1, main_mammoth) < 20 
		and
		objects_distance_to_object (player1, main_mammoth) > 0)	
		or
		(objects_distance_to_object (player2, main_mammoth) < 20 
		and
		objects_distance_to_object (player2, main_mammoth) > 0)
		or
		(objects_distance_to_object (player3, main_mammoth) < 20 
		and
		objects_distance_to_object (player3, main_mammoth) > 0)
		
		or
		cavern_obj_state > 59, 1);
		
		print ("tv_cavern_06: Player caught up, Tortoise is continuing");
		unit_recorder_pause_smooth (main_mammoth, false, 2);	
		tort_stopped = FALSE;
		thread (mam_dust_on());
	end
	
end

//script static void garbage_btn_01_sc()
//	sleep_until (device_get_position(garbage_btn_01) != 0, 1);
//	print ("dmaj2");
//	object_create (garbage_btn_02);
//	thread (garbage_btn_02_sc());
//end
//
//script static void garbage_btn_02_sc()
//	sleep_until (device_get_position(garbage_btn_02) != 0, 1);
//	print ("done 3");
//	object_destroy (marines_main_hog_01_veh);
//	object_destroy (marines_main_hog_02_veh);
//	sleep (1);
//	object_create (tort_hog_01_g);
//	object_create (tort_hog_02_g);
//	
//	dm_mode1 = true;
//end

////------------------CAVERN VO--------------------------//
script dormant dialogue_convoy_approach()
	sleep_until (volume_test_players (tv_cavern_dialogue_start), 1);
	f_music_m40_drama_a_start();
	NotifyLevel("Music Drama A Start");
end

script dormant cavern_gun_approach_vo()
	sleep_until (volume_test_players (tv_cavern_pelican_dies), 1);
	f_music_m40_drama_a_stop();
	f_music_m40_battle_a_start();
	NotifyLevel("Music Battle A Start");
end

// =================================================================================================
// =================================================================================================
// LAKESIDE
// =================================================================================================
// =================================================================================================

script dormant f_lakeside_enc() 
	sleep_until (volume_test_players (tv_fod_objcon_37), 1);
	
	wake (M40_mammoth_in_range);
	
	thread(lakeside_tar_pit_damaging());
	
	data_mine_set_mission_segment ("m40_lakeside");

	thread (fodder_ai_kill());

	effects_perf_armageddon = 1;

	object_teleport_to_ai_point (lakeside_pod, lakeside_teleport_pt.lakeside_pod_location);

	sleep(1);
	
	ai_place (front_jackal_sq); 
	ai_place (rock_sq); 
	ai_place (high_cave_sq); 
	ai_place (high_bridge_sq);
	ai_place (mid_rock_sq);
	ai_place (front_barricade_guard);
	ai_place (front_barricade_guard_rear);
	ai_place (front_grunts_sq);
	
	ai_prefer_target_team (lakeside_wraith_01, player);

	thread(f_mus_m40_e01_finish()); 
	
	wake (pelican_marines_fight);
	wake (M40_fodder_armor_appear);
	wake (tort_top_lakeside_true);
	wake (rock_sq_bonus_spawn);
//	wake (lakeside_fill_bonus);
//	wake (lakeside_fill_bonus_2);
	wake (lakeside_sq_bonus);
	
	if
		game_coop_player_count() > 2	
	or
		game_difficulty_get_real() == legendary
	then
//		ai_erase (front_barricade_guard_rear.guy1);
//		ai_erase (rock_sq.guy1);
		ai_place (lakeside_wraith_03);
	end
		
	sleep (30 * 1);

	object_create (lakeside_cov_barrier_01);
	object_create (lakeside_cov_crate_01);
	object_create (lakeside_cov_crate_02);
	
	sleep_until (volume_test_players (tv_lakeside_02), 1);

	game_save_no_timeout();
	
	first_time_charged = FALSE;
	td_ready_for_mission_use = TRUE;
		
	garbage_collecting = true;
	thread (garbage_collect_me());	

	ai_place (ghosts_initial_1); 
	ai_place (lakeside_phantom_intro);

	sleep (30 * 2);

	wake (lakeside_ghost_backup_2_spawn);
	wake (prechopper_shield_barrier_spawn);

	wake (lakeside_obj_con);

	ai_allegiance (player, human);
	
	sleep_until (volume_test_players (tv_lakeside_03), 1); 
	thread(f_mus_m40_e02_begin()); 
	
	thread (fodder_crates_destroy());
	
	object_set_persistent (lakeside_plat_ghost_02, false);
	
	sleep_until (volume_test_players (tv_lakeside_035), 1); 
	wake (lakeside_tort_catchup);
//	wake (lakeside_objective_prompt);

	sleep_until (lakeside_obj_state > 29);	

	sleep (30 * 3);
	
	thread(f_mus_m40_e02_finish());
	sleep_forever (lakeside_hog_blip_timer);
	sleep (30 * 5);
	wake (lakeside_end_marine_refill);
	
  object_create (prechopper_ant_01);
  object_create (prechopper_space_crate_01);
  object_create (prechopper_space_crate_02);
  object_create (prechopper_cov_barrier_01);
  object_create (prechopper_cov_barrier_02);
  wake (cliffside_enc_main);
 	wake (cliffside_obj_states);

	sleep_until (volume_test_players (tv_lakeside_04), 1);

//	object_damage_damage_section (downed_pelican, "hull_front", 2000);
	
	garbage_collecting = false;
	
	effects_perf_armageddon = 0;

end

script static void test_my_delete()
	thread (objects_destroy_all_in_volume(tv_lakeside_entire));
	sleep (1);
	object_create (downed_pelican);
end

script dormant lakeside_obj_con()

	lakeside_obj_state = 10; 
	print ("lakeside_obj_state = 10");

	sleep (30 * 2);
	
	thread (lakeside_player_leave_dialogue());

	sleep_until (lakeside_cannon_alive == FALSE
	or
	ai_living_count (lakeside_phantom_intro) < 1
	or
	ai_living_count (ghosts_initial_1) > 1);

	sleep_until (ai_living_count (ghosts_initial_1) < 1
	or
	lakeside_cannon_alive == FALSE
	);

	lakeside_obj_state = 20; 
	print ("lakeside_obj_state = 20");

	game_save_no_timeout();

	sleep (30 * 4);

	sleep_until (lakeside_cannon_alive == FALSE
	or
	ai_living_count (lakeside_phantom_05) < 1
	or
	ai_living_count (lakeside_backup_ghosts_2) > 1);

	lakeside_obj_state = 22; 
	print ("lakeside_obj_state = 22");

	sleep (30 * 3);

//	game_save_no_timeout();
//
//	sleep_until (ai_living_count (lakeside_wraith_01) > 0);
//
//	sleep_until (ai_living_count (lakeside_wraith_01) < 1
//	and
//	ai_living_count (lakeside_ghosts) < 1
//	);
//	lakeside_obj_state = 25; 
//	print ("lakeside_obj_state = 25");

	game_save_no_timeout();
	
	sleep_until (lakeside_cannon_alive == FALSE);
	lakeside_obj_state = 30; 
	print ("lakeside_obj_state = 30");
	
	zone_set_trigger_volume_enable("zone_set:zone_set_fodder:*", FALSE);
	
	wake(m40_post_stream);
	
	wake (f_dialog_m40_tutorial_3);
	
	sleep_until (
	ai_living_count (lakeside_ghosts) < 1
	and
	ai_living_count (lakeside_wraith_01) < 1	
	and	
	ai_living_count (lakeside_wraith_03) < 1
	or
	volume_test_players (tv_lakeside_04)
	);
	
//	if
//		volume_test_players (tv_lakeside_entire)
//	then
//		wake (f_dialog_m40_lakeside_end_nudge);
//	end
	
	sleep_until (volume_test_players (tv_lakeside_04), 1);
	print ("obj state 40");
	lakeside_obj_state = 40; 

	ai_set_objective (marine_convoy, cliffside_marines_obj);
	ai_set_objective (marine_convoy_02, cliffside_marines_obj);
	print ("Lakeside AI handed off to Cliffside");
	
	object_create_folder (cliffside_crates);
	object_create (cliffside_ghost_01);
	object_destroy_folder (lakeside_crates);

end

script static void fodder_crates_destroy()
	sleep_until (not (volume_test_players_lookat (tv_fodder_entire, 3000, 40))
	and
	not (volume_test_players (tv_fodder_entire)));
	unit_kill_list_silent (volume_return_objects (tv_fodder_entire));
//	object_destroy_folder( fodder_crates );
	objects_destroy_all_in_volume (tv_fodder_entire);
	thread (detach_cannon_to_octopus());
	sleep(1);
	object_destroy (pelican_octopus);
	thread (keep_fod_pod_destroyed());
end

script static void keep_fod_pod_destroyed()
	repeat
		sleep_until (object_valid (fod_pod_01));
		object_destroy (fod_pod_01);
	until (1 == 0);
end

script static void lakeside_player_leave_dialogue()
	sleep_until (volume_test_players (playerkill_soft_post_lakeside)
	or
	volume_test_players (tv_spawn_tort)
	or
	lakeside_cannon_alive == false);
	if 
		lakeside_cannon_alive == true
	then
		thread (m40_palmer_off_map_nudge());
	end
end

script dormant lakeside_objective_prompt()
	sleep (30 * 5);
	thread (display_chapter_03b());
	//sleep (30 * 5);
	//this happens in the dialogue script so we can get the timing right
	//f_blip_object (m40_lakeside_target_laser, "recover");
	sleep (30 * 4);
	sleep_until (ai_living_count (lakeside_tort_assault_2_grp) < 2
	or
	player_in_lakeside_enc == TRUE
	);	

	thread (award_td_to_player());

	sleep_until (player_equipped_locator == TRUE, 1);
	
	thread (check_td_user_valid_state());

	f_unblip_object (m40_lakeside_target_laser);
	thread (m40_target_designator_main());
	wake (lakeside_cannon_swap);
	object_can_take_damage (cannon_lakeside_new);
	sleep(1);
	thread (target_designator_unlock());
	sleep(5);	
	ai_disregard(ai_actors(bt_sq), TRUE);
	if
		lakeside_phantom_hanging_out == true
		and
		ai_living_count (lakeside_phantom_intro) > 0
	then
		sleep (30 * 1);	
		
		wake (f_dialog_40_target_those_phantoms);

		sleep (30 * 2);			
	
		thread (display_chapter_03g());
		
		sleep (30 * 1);
		
		f_blip_ai (lakeside_phantom_intro.driver, "neutralize");
		
		sleep_until (ai_living_count (lakeside_phantom_intro) < 1
		or
		lakeside_cannon_alive == FALSE
		);
		sleep (30 * 2);
		thread (display_chapter_03g_complete());
		f_unblip_ai (lakeside_phantom_intro);
		sleep (30 * 5);
	end

	thread (area_clear_diag());

	if
		lakeside_cannon_alive == TRUE
	then

		f_unblip_ai (lakeside_phantom_intro);
		f_blip_object (cannon_lakeside_new, "neutralize");
		thread (display_chapter_03c());
		sleep_until (lakeside_cannon_alive == FALSE);
		thread (display_chapter_03c_complete());

	end

	if
		volume_test_object (tv_lakeside_combat_area, marines_main_lakeside_hog_01)
	then
		ai_vehicle_enter (pelican_marines.guy1, marines_main_lakeside_hog_01);
		ai_vehicle_enter (pelican_marines.guy4, marines_main_lakeside_hog_01);
		ai_vehicle_enter (pelican_marines.guy5, marines_main_lakeside_hog_01);
		ai_vehicle_enter (pelican_marines_2.guy1, marines_main_lakeside_hog_01);
	end

	if
		volume_test_object (tv_lakeside_combat_area, marines_main_hog_01_veh)
	then
		ai_vehicle_enter (pelican_marines.guy1, marines_main_hog_01_veh);
		ai_vehicle_enter (pelican_marines.guy4, marines_main_hog_01_veh);
		ai_vehicle_enter (pelican_marines.guy5, marines_main_hog_01_veh);
		ai_vehicle_enter (pelican_marines_2.guy1, marines_main_hog_01_veh);
	end
	
	if
		volume_test_object (tv_lakeside_combat_area, marines_main_hog_02_veh)
	then
		ai_vehicle_enter (pelican_marines.guy1, marines_main_hog_02_veh);
		ai_vehicle_enter (pelican_marines.guy4, marines_main_hog_02_veh);
		ai_vehicle_enter (pelican_marines.guy5, marines_main_hog_02_veh);
		ai_vehicle_enter (pelican_marines_2.guy1, marines_main_hog_02_veh);
	end
	
end

script static void area_clear_diag()
	sleep_until (
		ai_living_count (lakeside_wraith_01) < 1
		and
		ai_living_count (lakeside_wraith_03) < 1
		and
		ai_living_count (lakeside_ghosts) < 1
		and
		ai_living_count (lakeside_phantom_01) < 1
		and
		ai_living_count (lakeside_phantom_04) < 1
		and
		ai_living_count (lakeside_phantom_05) < 1
		and
		ai_living_count (lakeside_phantom_06) < 1
		and
		ai_living_count (lakeside_phantom_07) < 1
		);
	if
		lakeside_cannon_alive == TRUE
	then
		wake (M40_lakeside_all_clear);
	end
	
	thread (lakeside_cannon_safety_destruct());
end

script static void award_td_to_player()

	sleep_until (
	
	(not (unit_in_vehicle (player0))
	and
	player_valid (player0)
	and
	objects_distance_to_object (player0, m40_lakeside_target_laser) < 1)
	
	or
	
	(not (unit_in_vehicle (player1))
	and
	player_valid (player1)
	and
	objects_distance_to_object (player1, m40_lakeside_target_laser) < 1)
	
	or
	
	(not (unit_in_vehicle (player2))
	and
	player_valid (player2)
	and
	objects_distance_to_object (player2, m40_lakeside_target_laser) < 1)
	
	or
	
	(not (unit_in_vehicle (player3))
	and
	player_valid (player3)
	and
	objects_distance_to_object (player3, m40_lakeside_target_laser) < 1)
		
	, 1);

	print ("!!!!!!!!!!!AWARDING TD!!!!!!!!!!");
	
	if
		objects_distance_to_object (player0, m40_lakeside_target_laser) < 1
		and
		player_valid (player0)
	then
		unit_add_weapon(player0, m40_lakeside_target_laser, 0);
		player_equipped_locator = TRUE;
		td_user = player0;
		
		thread (start_td_HUD_p0());

		print ("player0 is TD user");
			
	elseif
		objects_distance_to_object (player1, m40_lakeside_target_laser) < 1
		and
		player_valid (player1)
	then
		unit_add_weapon(player1, m40_lakeside_target_laser, 0);
		player_equipped_locator = TRUE;	
		td_user = player1;

		thread (start_td_HUD_p1());

		print ("player1 is TD user");
					
	elseif
		objects_distance_to_object (player2, m40_lakeside_target_laser) < 1
		and
		player_valid (player2)
	then
		unit_add_weapon(player2, m40_lakeside_target_laser, 0);
		player_equipped_locator = TRUE;
		td_user = player2;

		thread (start_td_HUD_p2());

		print ("player2 is TD user");
						
	elseif
		objects_distance_to_object (player3, m40_lakeside_target_laser) < 1
		and
		player_valid (player3)
	then
		unit_add_weapon(player3, m40_lakeside_target_laser, 0);
		player_equipped_locator = TRUE;
		td_user = player3;

		thread (start_td_HUD_p3());

		print ("player3 is TD user");
		
	end

end

script static void start_td_HUD_p0()
		sleep (30 * 1);

		weapon_target_designator_show_hud (player0);

		chud_show_screen_training (player0, training_m40_td);
	
		sleep (30 * 4);
	
		chud_show_screen_training (player0, "");

end

script static void start_td_HUD_p1()
		sleep (30 * 1);

		weapon_target_designator_show_hud (player1);
		
		chud_show_screen_training (player1, training_m40_td);
	
		sleep (30 * 4);
	
		chud_show_screen_training (player1, "");
		
end

script static void start_td_HUD_p2()
		sleep (30 * 1);

		weapon_target_designator_show_hud (player2);

		chud_show_screen_training (player2, training_m40_td);
	
		sleep (30 * 4);
	
		chud_show_screen_training (player2, "");
		
end

script static void start_td_HUD_p3()
		sleep (30 * 1);

		weapon_target_designator_show_hud (player3);

		chud_show_screen_training (player3, training_m40_td);
	
		sleep (30 * 4);
	
		chud_show_screen_training (player3, "");
		
end	

script static void check_td_user_valid_state()
	repeat

	if
		game_coop_player_count() == 1
	then
		sleep_until (1 == 0);
	end

	if
		game_coop_player_count() == 2
	then
		sleep_until (game_coop_player_count() < 2);
	end
	
	if
		game_coop_player_count() == 3
	then
		sleep_until (game_coop_player_count() < 3);
	end

	if
		game_coop_player_count() == 4
	then
		sleep_until (game_coop_player_count() < 4);
	end
		
	if
		not (player_valid(td_user))
	then
		print ("Need a new TD user");	
		unit_add_weapon(player_get_first_valid(), m40_lakeside_target_laser, 0);
		weapon_target_designator_show_hud (player_get_first_valid());
		td_user = player_get_first_valid();
		print ("Found a new TD user, printing at next line");
		inspect (td_user);
	else
		print ("td user still valid");
	end

	until (td_disabled == true, 1);
end

script static void f_detach_lasky()
	objects_detach(main_mammoth,Marines_lasky);
	cs_run_command_script (Marines_lasky, lasky_safety_position);
end


script static void display_jetpack_tut()
	if
		volume_test_object (tv_lich_entire, player0)
		or
		volume_test_object (tv_lich_entire, player1)
		or
		volume_test_object (tv_lich_entire, player2)
		or
		volume_test_object (tv_lich_entire, player3)
	then
		wake (f_dialog_m40_lich_going_to_blow);
	end

	if 
		volume_test_object (tv_lich_entire, player0)
	then
		chud_show_screen_training (player0, equipment_jet_pack_use);
		sleep (30 * 6);
		chud_show_screen_training (player0, "");	
	end

	if 
		volume_test_object (tv_lich_entire, player1)
	then
		chud_show_screen_training (player1, equipment_jet_pack_use);
		sleep (30 * 6);
		chud_show_screen_training (player1, "");	
	end
	
	if 
		volume_test_object (tv_lich_entire, player2)
	then
		chud_show_screen_training (player2, equipment_jet_pack_use);
		sleep (30 * 6);
		chud_show_screen_training (player2, "");	
	end
	
	if 
		volume_test_object (tv_lich_entire, player3)
	then
		chud_show_screen_training (player3, equipment_jet_pack_use);
		sleep (30 * 6);
		chud_show_screen_training (player3, "");	
	end

end

script dormant lakeside_ghost_backup_2_spawn()
	sleep (30 * 5);
	sleep_until	(ai_living_count (ghosts_initial_1) < 1
	and
	ai_living_count (lakeside_infantry) < 6
	);

	wake (lakeside_wraith_backup_spawn);
	wake (lakeside_backup_ghosts_3_spawn);

	if
		game_coop_player_count() > 2
	or
		game_difficulty_get_real() == legendary
	then
		ai_place (lakeside_phantom_07);
		ai_place (lakeside_backup_ghosts_2);
	end
	
	vehicle_load_magic (ai_vehicle_get_from_spawn_point (lakeside_phantom_07.driver), "phantom_sc02", ai_vehicle_get_from_starting_location  (lakeside_backup_ghosts_2.driver));
	vehicle_load_magic (ai_vehicle_get_from_spawn_point (lakeside_phantom_07.driver), "phantom_sc01", ai_vehicle_get_from_starting_location  (lakeside_backup_ghosts_2.driver2));

	print ("!!!!LAKESIDE BACKUP GHOSTS INCOMING!!!!"); 

	game_save_no_timeout();
end

script dormant lakeside_backup_ghosts_3_spawn()
	sleep_until	(ai_living_count (lakeside_ghosts) < 1);

	lakeside_backup_ghosts_3_bool = true;
	
	ai_place (lakeside_backup_ghosts_3); 
	ai_place (lakeside_phantom_intro_2);

end

script dormant lakeside_wraith_backup_spawn()
//	sleep_until (ai_living_count (lakeside_backup_ghosts_2) < 2
//	and
//	player_in_lakeside_enc ==  TRUE);
	sleep (30 * 23);

	sleep_until	(ai_living_count (lakeside_wraith_03) < 1);

	sleep_until (not (volume_test_players_lookat (tv_lakeside_phantom_spawn, 3000, 40)));
	
	ai_place (lakeside_wraith_01);
	ai_place (lakeside_phantom_01);

	sleep (30 * 10);
	
	lakeside_enc_ending = true;
end

script dormant rock_sq_bonus_spawn()
	sleep (30 * 3);
	wake (rock_sq_bonus_spawn_too_late);
	sleep_until	(ai_living_count (lakeside_phantom_intro) < 1);
	sleep_until (not (volume_test_players_lookat (tv_lakeside_rear_rock, 3000, 40)));
	sleep_until	(player_in_lakeside_enc == false);
	ai_place (rock_sq.guy1);
	print ("rock_sq bonus guy made it in"); 
end

script dormant lakeside_sq_bonus()
	sleep (30 * 3);
//	wake (rock_sq_bonus_spawn_too_late);
	sleep_until	(ai_living_count (lakeside_phantom_intro) < 1);
	sleep_until (not (volume_test_players_lookat (tv_lakeside_rear_rock, 3000, 40)));
	sleep_until	(player_in_lakeside_enc == false);
	ai_place (lakeside_sq);
	print ("rock_sq bonus guy made it in"); 
end

script dormant rock_sq_bonus_spawn_too_late()
	sleep_until (volume_test_players (tv_lakeside_combat_area), 1);
	player_in_lakeside_enc = true;
end

script dormant lakeside_fill_bonus()
	sleep_until	(ai_living_count (lakeside_infantry) < 3
	and
	(ai_living_count (lakeside_phantom_01) < 1
	or
	ai_living_count (lakeside_phantom_intro) < 1)
	);
	sleep_until (not (volume_test_players_lookat (tv_lakeside_fill_01_sq, 3000, 40)));
	if
		(not (volume_test_players (tv_lakeside_combat_area)))
	then
		ai_place (lakeside_fill_01_sq);
		print ("lakeside_fill_bonus made it in");	
	else
	print ("lakeside_fill_bonus didn't make it in");
	end
	sleep (30 * 10);	
	if
		game_difficulty_get_real() == legendary
	then
		print ("no infantry incoming");
	else
		if
			game_coop_player_count() < 3
		then
			wake (lakeside_fill_bonus_2);
			print ("lakeside_fill_bonus_2");
		end
	end
end

script dormant lakeside_fill_bonus_2()
	sleep_until	(ai_living_count (lakeside_infantry) < 4
//	and
//	ai_living_count (ghosts_initial_1) < 1
//	and
//	lakeside_obj_state < 25
	);
	if
		lakeside_enc_ending != TRUE
	then
		ai_place (lakeside_phantom_04);
		print ("LAKESIDE INFANTRY PHANTOM INCOMING!");
		wake (lakeside_fill_bonus_3);
	else
		print ("LAKESIDE INFANTRY PHANTOM NOT COMING. Encounter is almost over");
	end
end

script dormant lakeside_fill_bonus_3()
	sleep (30 * 30);
	sleep_until	(ai_living_count (lakeside_infantry) < 5
	and
	ai_living_count (ghosts_initial_1) < 1
	);
	if
		lakeside_enc_ending != TRUE
		and
		ai_living_count (lakeside_phantom_04) < 1
	then
		sleep_until (not (volume_test_players_lookat (tv_lakeside_phantom_spawn_02, 3000, 40)));
		ai_place (lakeside_phantom_06);
		print ("LAKESIDE INFANTRY PHANTOM 2 INCOMING");
	else
		print ("LAKESIDE INFANTRY PHANTOM 2 NOT COMING. Encounter is almost over");
	end
end

script dormant lakeside_ins_1_marines_spawn()
	sleep (30 * 15);
	ai_place (lakeside_ins_1_marines);
	ai_vehicle_enter_immediate (lakeside_ins_1_marines.guy1, lakeside_insertion_hog_01, "warthog_d"); 
	ai_vehicle_enter_immediate (lakeside_ins_1_marines.guy2, lakeside_insertion_hog_01, "warthog_g");
end

script dormant pelican_marines_fight()
	if
		game_coop_player_count() < 3
	then
		ai_place (pelican_marines);
	//	ai_place (pelican_marines_2);
	//	pup_play_show ("lakeside_wounded_marine_pup" );
		sleep (30 * 1);
		unit_only_takes_damage_from_players_team (ai_get_unit (pelican_marines.guy1), true);
		unit_only_takes_damage_from_players_team (ai_get_unit (pelican_marines.guy3), true);
		unit_only_takes_damage_from_players_team (ai_get_unit (pelican_marines.guy4), true);
		unit_only_takes_damage_from_players_team (ai_get_unit (pelican_marines.guy5), true);
		unit_only_takes_damage_from_players_team (ai_get_unit (pelican_marines_2.guy1), true);
		unit_only_takes_damage_from_players_team (ai_get_unit (rock_sq.guy1), true);
		unit_only_takes_damage_from_players_team (ai_get_unit (rock_sq.guy2), true);
		unit_only_takes_damage_from_players_team (ai_get_unit (rock_sq.guy3), true);
		unit_only_takes_damage_from_players_team (ai_get_unit (rock_sq.guy4), true);
		unit_only_takes_damage_from_players_team (ai_get_unit (lakeside_sq.guy1), true);
		sleep_until (volume_test_players (tv_near_marines), 1);	
		sleep (30 * 3);
	
		unit_only_takes_damage_from_players_team (ai_get_unit (pelican_marines.guy1), false);
		unit_only_takes_damage_from_players_team (ai_get_unit (pelican_marines.guy3), false);
		unit_only_takes_damage_from_players_team (ai_get_unit (pelican_marines.guy4), false);
		unit_only_takes_damage_from_players_team (ai_get_unit (pelican_marines.guy5), false);
		unit_only_takes_damage_from_players_team (ai_get_unit (pelican_marines_2.guy1), false);
		unit_only_takes_damage_from_players_team (ai_get_unit (rock_sq.guy1), false);
		unit_only_takes_damage_from_players_team (ai_get_unit (rock_sq.guy2), false);
		unit_only_takes_damage_from_players_team (ai_get_unit (rock_sq.guy3), false);
		unit_only_takes_damage_from_players_team (ai_get_unit (rock_sq.guy4), false);
		unit_only_takes_damage_from_players_team (ai_get_unit (lakeside_sq.guy1), false);
		ai_renew (pelican_marines);
		ai_renew (pelican_marines_2);
	end
end

script dormant pelican_marines_airlift_sc()
	if (ai_living_count (pelican_marines) > 0
	and
	(not (unit_in_vehicle (pelican_marines.guy1))
	or
	not (unit_in_vehicle (pelican_marines_2.guy1))))
	then
	ai_place (lakeside_pelican_airlift_sq);
	print ("Marines getting airlifted out");
	else
	print ("Marines don't need airlift");
	end
end

script static void lakeside_tar_pit_damaging()
	f_m40_damage_volume_players (tv_lakeside_tar_main_path, 20, 1, 18);
end

script dormant lakeside_tort_ready()
	print ("tort starting rollout count from here, needs eight seconds");
	static short player_in_tort_for_awhile = 0;
	static real num_seconds = 8;
	repeat 
		if (volume_test_players_all (tv_lakeside_river_all) == 1
		or
		volume_test_players (tv_lakeside_river_all_rear) == 1
//		if (volume_test_players (tv_tortoise_top_01) == 1
//		or
//		volume_test_players (tv_tortoise_middle_01) == 1
		) then
			player_in_tort_for_awhile = player_in_tort_for_awhile + 1;
//		else
//			player_in_tort_for_awhile = 0;
		end
		until (player_in_tort_for_awhile == (game_tick_rate_get() * num_seconds), 1);
	print ("player was in tort for awhile");
	lakeside_rollout_rdy	= true;
end

script dormant lakeside_end_marine_refill()
	if

		(ai_living_count (marine_convoy) < 5
		
		and
		
		not (volume_test_players_lookat (tv_lakeside_hog_end_spawn, 3000, 40))
		
		and
		
		(object_valid (marines_main_hog_02_veh) == FALSE
		or
		object_valid (marines_main_hog_02_veh) == FALSE))
		
	then
		object_create (marines_main_lakeside_hog_01);
		ai_place (lakeside_hog_end_sq);
		ai_vehicle_enter_immediate (lakeside_hog_end_sq.guy1, marines_main_lakeside_hog_01);
		ai_vehicle_enter_immediate (lakeside_hog_end_sq.guy2, marines_main_lakeside_hog_01);
		print ("Lakeside_marines refilled");
	else
		print ("Lakeside_marines NOT refilled");
	end
end
 
script static void test_fx2()
	effect_attached_to_camera_new ("environments\solo\m40_invasion\fx\missile_strike\missile_strike_m40.effect");
	print ("fx on");
end

//This will auto-destruct the lakeside cannon sixty seconds after the encounter ends if the player doesn't blow it up on his own

script static void lakeside_cannon_safety_destruct()
	sleep_s(180);
	if
		lakeside_cannon_alive == TRUE
	then
		wake (lakeside_cannon_swap);
		print ("&&&&&&&&&&&&&&&&&&&&&& LAKESIDE CANNON BLEW UP ON ITS OWN BECAUSE PLAYER HADN'T SHOT IT. IS TD BROKEN? &&&&&&&&&&&&&&&&&&&&&&");
	end
end

//This will auto-destruct the chopper cannon 120 seconds after player enters the encounter space if he doesn't blow it up on his own

script static void chopper_cannon_safety_destruct()
	sleep_s(180);
	if
		chopper_cannon_alive == TRUE
	then
		wake (chopper_cannon_swap);
		print ("&&&&&&&&&&&&&&&&&&&&&& CHOPPER CANNON BLEW UP ON ITS OWN BECAUSE PLAYER HADN'T SHOT IT. IS TD BROKEN? &&&&&&&&&&&&&&&&&&&&&&");
	end
end


//--------------------lakeside command scripts-------------------

//script command_script warthogs_through_mammoth()
//	cs_vehicle_speed (.6);
//	cs_go_to (lakeside_misc.p8);
//	ai_path_ignore_object_obstacle (ai_current_actor, main_mammoth);
//	cs_ignore_obstacles (TRUE);
//	cs_go_to (lakeside_misc.p12);
//	print ("lakeside_misc.p12");
////	cs_go_to (lakeside_misc.p13);
////	print ("lakeside_misc.p13");
//	ai_path_clear_ignore_object_obstacle (ai_current_actor);
//	ai_vehicle_exit (ai_current_actor);
//	print ("marines went through mammoth");
//end

script command_script warthogs_through_mammoth()
	cs_vehicle_speed (.6);
	cs_go_to (lakeside_misc.p8);
	ai_path_ignore_object_obstacle (ai_current_actor, main_mammoth);
	cs_ignore_obstacles (TRUE);

	if
		volume_test_object (tv_tortoise_bottom_01, marines_main_hog_01_vehb)
		or
		volume_test_object (tv_tortoise_bottom_01, marines_main_hog_02_veh)		
		or
		volume_test_object (tv_tortoise_bottom_01, marines_main_lakeside_hog_01)		
	then
		print ("Vehicle in Mammoth, driver going to back");
		cs_go_to (ps_mammoth_points.p12);
		print ("lakeside_misc.p12");
	else	
		print ("No vehicle in Mammoth, driver going to front");
		cs_go_to (ps_mammoth_points.p13);
		print ("lakeside_misc.p12");
	end
	
	ai_path_clear_ignore_object_obstacle (ai_current_actor);
	ai_vehicle_exit (ai_current_actor);
	print ("marines went through mammoth");
end

script command_script warthogs_through_mammoth_abort()
	print ("Tortoise left without Lakeside AI, aborting their script");
	cs_go_to (lakeside_misc.p5);
end

script command_script warthogs_through_mammoth_abort2()
	print ("Mammoth Marines Drive Through Abort");
end

script static void vol_test()
	wake (tort_top_lakeside_true);
	print ("tort lakeside scripts on");
end

script dormant tort_top_lakeside_true()
	repeat
		sleep_until (volume_test_players (tv_tortoise_top_01), 1);
		tort_top_lakeside = true;
		print ("tort_top_lakeside = true");
		sleep_until (not (volume_test_players (tv_tortoise_top_01)), 1); 
		tort_top_lakeside = false;
		print ("tort_top_lakeside = false");
	until (0 == 1);
end

script dormant lakeside_tort_catchup()
	sleep_until (volume_test_object (tv_spawn_tort, main_mammoth));	
	print ("player's in lakeside, hurry up tort!");
	wake (tortoise_lakeside_recorded);
	sleep_forever (f_fodder_mammoth_playback);
	sleep (30 * 1); 
	unit_recorder_set_playback_rate (main_mammoth, 1);
	print ("tortoise at 1 speed");
	sleep_until (volume_test_object (tv_tort_rec_lakeside_pt1, main_mammoth));
	unit_recorder_set_playback_rate_smooth (main_mammoth, .6, 2);
	print ("tortoise at 1 speed");
end

//script static void tortspeed()
//	unit_recorder_set_playback_rate (main_mammoth, 2.5);
//	print ("TORT SPEED = 2.5");
//end

//script command_script lakeside_ghost_retreat()
//	cs_vehicle_boost (true);
//	cs_go_to (lakeside_ghost_retreat_pt.p1);
//	cs_go_to (lakeside_ghost_retreat_pt.p0);
//	cs_vehicle_boost (false);
//end

//script command_script lakeside_wraith_01_cs()
//	print ("Lakeside wraith normal");
//end

script static void player_has_td_phantom_flyaway()
	sleep_until	(unit_has_weapon (td_user, objects\weapons\pistol\storm_target_laser\storm_target_laser_m40.weapon), 1);
	player_has_td_bool = true;
end

script command_script lakeside_phantom_intro_cs()

	thread (player_has_td_phantom_flyaway());

	if
		lakeside_backup_ghosts_3_bool == false
	then
		sound_impulse_start('sound\environments\solo\m040\new_m40_tags\amb_m40_ships\amb_m40_lakeside_phantom_intro_spawn', lakeside_phantom_intro, 1);
			
		vehicle_load_magic (ai_vehicle_get_from_spawn_point (lakeside_phantom_intro.driver), "phantom_sc01", ai_vehicle_get_from_starting_location  (ghosts_initial_1.driver)); 
		vehicle_load_magic (ai_vehicle_get_from_spawn_point (lakeside_phantom_intro.driver), "phantom_sc02", ai_vehicle_get_from_starting_location  (ghosts_initial_1.driver2));
			
		cs_ignore_obstacles (TRUE);
		print ("flying to drop off enemies");
		cs_fly_by (lakeside_phantom_intro2_pt.p0);
		wake (M40_fodder_dropship_appear);
		cs_fly_by (lakeside_phantom_intro2_pt.p2);
		cs_fly_by (lakeside_phantom_intro2_pt.p3);
		cs_fly_by (lakeside_phantom_intro2_pt.p4);
		cs_fly_to_and_face (lakeside_phantom_intro2_pt.p13, lakeside_phantom_intro2_pt.p14);
	
		vehicle_unload (ai_vehicle_get_from_spawn_point (lakeside_phantom_intro.driver), "phantom_sc01");	
		vehicle_unload (ai_vehicle_get_from_spawn_point (lakeside_phantom_intro.driver), "phantom_sc02");
		sound_impulse_start('sound\environments\solo\m040\new_m40_tags\amb_m40_ships\amb_m40_lakeside_phantom_intro_takeoff', lakeside_phantom_intro, 1);
		lakeside_phantom_hanging_out = true;
	
	
		cs_fly_by (lakeside_phantom_06_pt.p3);
		cs_vehicle_speed (.4);
		repeat
			begin_random
				begin
					cs_fly_to_and_face (lakeside_phantom_06_pt.p3, lakeside_phantom_06_pt.p7);
				end
				begin
					cs_fly_to_and_face (lakeside_phantom_06_pt.p5, lakeside_phantom_06_pt.p7);
				end
				begin
					cs_fly_to_and_face (lakeside_phantom_06_pt.p4, lakeside_phantom_06_pt.p7);
				end
				begin
					cs_fly_to_and_face (lakeside_phantom_06_pt.p6, lakeside_phantom_06_pt.p7);
				end
				begin
					cs_fly_to_and_face (lakeside_phantom_06_pt.p12, lakeside_phantom_06_pt.p7);
				end
			end
//		until	(lakeside_cannon_alive == false);
		until	(player_has_td_bool == true);
		cs_vehicle_speed (1);
		cs_fly_by (lakeside_phantom_07_pt.p21);
		cs_fly_by (lakeside_phantom_07_pt.p4);
		lakeside_phantom_hanging_out = false;
		cs_fly_by (lakeside_phantom_07_pt.p5);
		cs_fly_by (lakeside_phantom_07_pt.p6);
		cs_fly_by (lakeside_phantom_07_pt.p0);
		print ("lakeside_phantom_intro_cs destroy");
		object_destroy (ai_vehicle_get(ai_current_actor));
		
	else
		vehicle_load_magic (ai_vehicle_get_from_spawn_point (lakeside_phantom_intro_2.driver), "phantom_sc01", ai_vehicle_get_from_starting_location  (lakeside_backup_ghosts_3.guy1)); 
		vehicle_load_magic (ai_vehicle_get_from_spawn_point (lakeside_phantom_intro_2.driver), "phantom_sc02", ai_vehicle_get_from_starting_location  (lakeside_backup_ghosts_3.guy2));
		
		cs_ignore_obstacles (TRUE);
		print ("flying to drop off enemies");
		cs_fly_by (lakeside_phantom_intro2_pt.p0);
		cs_fly_by (lakeside_phantom_intro2_pt.p2);
		cs_fly_by (lakeside_phantom_intro2_pt.p3);
		cs_fly_by (lakeside_phantom_intro2_pt.p4);
		cs_fly_to_and_face (lakeside_phantom_intro2_pt.p13, lakeside_phantom_intro2_pt.p14);
		
		vehicle_unload (ai_vehicle_get_from_spawn_point (lakeside_phantom_intro_2.driver), "phantom_sc01");	
		vehicle_unload (ai_vehicle_get_from_spawn_point (lakeside_phantom_intro_2.driver), "phantom_sc02");
		
		cs_fly_by (lakeside_phantom_07_pt.p4);
		cs_fly_by (lakeside_phantom_07_pt.p5);
		cs_fly_by (lakeside_phantom_07_pt.p6);
		cs_fly_by (lakeside_phantom_07_pt.p0);
		object_destroy (ai_vehicle_get(ai_current_actor));
	end	
	
end

script command_script lakeside_phantom_01_cs()
		sound_impulse_start('sound\environments\solo\m040\new_m40_tags\amb_m40_ships\amb_m40_lakeside_phantom_1_spawn', lakeside_phantom_01, 1);
		vehicle_load_magic (ai_vehicle_get_from_spawn_point (lakeside_phantom_01.driver), "phantom_lc", ai_vehicle_get_from_starting_location  (lakeside_wraith_01.driver)); 
		cs_vehicle_speed (1);
		cs_fly_by (lakeside_phantom_01_pt.p0);
		cs_fly_by (lakeside_phantom_01_pt.p1);
		cs_fly_by (lakeside_phantom_01_pt.p2);
		vehicle_unload ((ai_vehicle_get_from_spawn_point (lakeside_phantom_01.driver)), "phantom_lc");		
		print ("flying to last points");
		sound_impulse_start('sound\environments\solo\m040\new_m40_tags\amb_m40_ships\amb_m40_lakeside_phantom_1_takeoff', lakeside_phantom_01, 1);
		cs_fly_by (lakeside_phantom_01_pt.p11);
		cs_fly_by (lakeside_phantom_01_pt.p12);
		if 
			volume_test_players (tv_lakeside_04)
		then
			cs_fly_by (lakeside_phantom_01_pt.p14);
			cs_fly_by (lakeside_phantom_01_pt.p15);
			cs_fly_by (lakeside_phantom_01_pt.p16);	
		else
			cs_fly_by (lakeside_phantom_01_pt.p13);						
		end
		ai_erase (lakeside_phantom_01);
end

script command_script lakeside_phantom_04_cs()
		sound_impulse_start('sound\environments\solo\m040\new_m40_tags\amb_m40_ships\amb_m40_lakeside_phantom_4_spawn', lakeside_phantom_04, 1);
		f_load_phantom( lakeside_phantom_04, "chute", lakeside_fill_02_sq.guy1, lakeside_fill_02_sq.guy2, lakeside_fill_02_sq.guy3, lakeside_fill_02_sq.guy4);
		f_load_phantom( lakeside_phantom_04, "left", lakeside_fill_01_sq.guy1, lakeside_fill_01_sq.guy2, lakeside_fill_01_sq.guy3, NONE);		

		cs_ignore_obstacles (true);	

		cs_fly_by (lakeside_phantom_04_pt.p22);
		cs_fly_by (lakeside_phantom_intro_pt.p1);
		cs_fly_by (lakeside_phantom_04_pt.p26);

		cs_fly_to_and_face (lakeside_phantom_07_pt.p2, lakeside_phantom_07_pt.p3);

		thread (lakeside_phantom_04_unload_1());
		f_unload_phantom( lakeside_phantom_04, "chute" );
		
		sound_impulse_start('sound\environments\solo\m040\new_m40_tags\amb_m40_ships\amb_m40_lakeside_phantom_4_takeoff', lakeside_phantom_04, 1);
		cs_fly_by (lakeside_phantom_04_pt.p29);
		cs_fly_by (lakeside_phantom_04_pt.p30);
		cs_fly_by (lakeside_phantom_04_pt.p31);
		
		ai_erase (lakeside_phantom_04);
end

script command_script lakeside_phantom_07_cs()
	sound_impulse_start('sound\environments\solo\m040\new_m40_tags\amb_m40_ships\amb_m40_lakeside_phantom_7_spawn', lakeside_phantom_07, 1);
	cs_fly_by (lakeside_phantom_07_pt.p0);
	cs_fly_by (lakeside_phantom_07_pt.p1);
	cs_fly_by (lakeside_phantom_07_pt.p19);
	
	vehicle_unload (ai_vehicle_get_from_spawn_point (lakeside_phantom_07.driver), "phantom_sc01");	
	vehicle_unload (ai_vehicle_get_from_spawn_point (lakeside_phantom_07.driver), "phantom_sc02");
	
	sleep (30 * 2);

	sound_impulse_start('sound\environments\solo\m040\new_m40_tags\amb_m40_ships\amb_m40_lakeside_phantom_7_takeoff', lakeside_phantom_07, 1);

	if
		volume_test_players (tv_tortoise_top_01)
		and
		tort_stopped == true
	then
		wake (lakeside_phantom_07_hangout);
		ai_prefer_target_team (lakeside_phantom_intro, player);
		repeat
			begin_random
				begin
					cs_fly_to_and_face (lakeside_phantom_07_pt.p7, lakeside_phantom_07_pt.p12);
				end
				begin
					cs_fly_to_and_face (lakeside_phantom_07_pt.p8, lakeside_phantom_07_pt.p12);
				end
				begin
					cs_fly_to_and_face (lakeside_phantom_07_pt.p9, lakeside_phantom_07_pt.p12);
				end
				begin
					cs_fly_to_and_face (lakeside_phantom_07_pt.p10, lakeside_phantom_07_pt.p12);
				end
				begin
					cs_fly_to_and_face (lakeside_phantom_07_pt.p11, lakeside_phantom_07_pt.p12);
				end
				begin
					cs_fly_to_and_face (lakeside_phantom_07_pt.p14, lakeside_phantom_07_pt.p12);
				end
				begin
						cs_fly_to_and_face (lakeside_phantom_07_pt.p15, lakeside_phantom_07_pt.p12);
				end
			end
		until	(lakeside_phantom_07_hangout_bool == false);
	end


	cs_fly_by (lakeside_phantom_07_pt.p11);
	cs_fly_by (lakeside_phantom_07_pt.p10);
	cs_fly_by (lakeside_phantom_07_pt.p13);
	cs_fly_by (lakeside_phantom_07_pt.p4);
	cs_fly_by (lakeside_phantom_07_pt.p5);
	cs_fly_by (lakeside_phantom_07_pt.p6);
	cs_fly_by (lakeside_phantom_07_pt.p0);

		ai_erase (lakeside_phantom_07);
end

script static void lakeside_phantom_04_unload_1()
	f_unload_phantom( lakeside_phantom_04, "left" );
end

script dormant lakeside_phantom_07_hangout()
	print ("lakeside_phantom_07 hanging out, needs eight seconds of player off tortoise");
	static short player_off_tort_for_awhile = 0;
	static real num_seconds = 8;
	repeat 
		if (not(volume_test_players (tv_tortoise_top_01)) == 1
		and
		not (volume_test_players (tv_tortoise_middle_01)) == 1
		and
		not (volume_test_players (tv_tortoise_bottom_01)) == 1) 
		then
			player_off_tort_for_awhile = player_off_tort_for_awhile + 1;
//		else
//			player_in_tort_for_awhile = 0;
		end
		until (player_off_tort_for_awhile == (game_tick_rate_get() * num_seconds), 1);
	print ("player was off tort for awhile");
	lakeside_phantom_07_hangout_bool	= false;
end

script command_script lakeside_phantom_05_cs()
		sound_impulse_start('sound\environments\solo\m040\new_m40_tags\amb_m40_ships\amb_m40_lakeside_phantom_5_spawn', lakeside_phantom_05, 1);
		cs_ignore_obstacles (true);	
		cs_fly_by (lakeside_phantom_05_pt.p10);
		cs_fly_by (lakeside_phantom_05_pt.p9);
		cs_fly_by (lakeside_phantom_05_pt.p8);
		cs_fly_to_and_face (lakeside_phantom_05_pt.p13, lakeside_phantom_05_pt.p14);
		sleep (15 * 1);
		vehicle_unload (ai_vehicle_get (lakeside_phantom_05.driver), "phantom_lc");
		sound_impulse_start('sound\environments\solo\m040\new_m40_tags\amb_m40_ships\amb_m40_lakeside_phantom_5_takeoff', lakeside_phantom_05, 1);
		cs_fly_by (lakeside_phantom_06_pt.p8);
		cs_fly_by (lakeside_phantom_06_pt.p9);
		cs_fly_by (lakeside_phantom_06_pt.p10);
		cs_fly_by (lakeside_phantom_06_pt.p11);
		ai_erase (lakeside_phantom_05);
//	end
end

script command_script lakeside_phantom_05_B_cs()
		cs_ignore_obstacles (true);	
		cs_fly_by (lakeside_phantom_05_pt.p15);
		cs_fly_by (lakeside_phantom_05_pt.p16);
		cs_fly_to_and_face (lakeside_phantom_05_pt.p17, lakeside_phantom_05_pt.p18);
		sleep (30 * 2);
		vehicle_unload (ai_vehicle_get (lakeside_phantom_05.driver), "phantom_lc");
		cs_fly_by (lakeside_phantom_05_pt.p15);
		cs_fly_by (lakeside_phantom_05_pt.p19);

		if 
			volume_test_players (tv_lakeside_04)
		then
			cs_fly_by (lakeside_phantom_05_pt.p20);
			cs_fly_by (lakeside_phantom_05_pt.p21);
			cs_fly_by (lakeside_phantom_05_pt.p22);	
		end
			ai_erase (lakeside_phantom_05);
//	end
end

script command_script lakeside_phantom_06_cs()
	sound_impulse_start('sound\environments\solo\m040\new_m40_tags\amb_m40_ships\amb_m40_lakeside_phantom_6_spawn', lakeside_phantom_06, 1);
	f_load_phantom( lakeside_phantom_06, "left", lakeside_fill_03_sq.guy1, lakeside_fill_03_sq.guy2, lakeside_fill_03_sq.guy3, NONE);	
	f_load_phantom( lakeside_phantom_06, "chute", lakeside_fill_04_sq.guy1, lakeside_fill_04_sq.guy2, NONE, NONE);
	f_load_phantom( lakeside_phantom_06, "right", lakeside_fill_05_sq.guy1, lakeside_fill_05_sq.guy2, NONE, NONE);	
	cs_fly_by (lakeside_phantom_06_pt.p0);
	cs_fly_by (lakeside_phantom_06_pt.p1);
	cs_fly_by (lakeside_phantom_06_pt.p2);
	cs_fly_to_and_face (lakeside_phantom_06_pt.p15, lakeside_phantom_06_pt.p16);
	thread (lakeside_phantom_06_unload_1());
	f_unload_phantom( lakeside_phantom_06, "chute" );
	cs_fly_by (lakeside_phantom_06_pt.p17);	
	cs_fly_to_and_face (lakeside_phantom_06_pt.p18, lakeside_phantom_06_pt.p19);
	f_unload_phantom( lakeside_phantom_06, "right" );
	sound_impulse_start('sound\environments\solo\m040\new_m40_tags\amb_m40_ships\amb_m40_lakeside_phantom_6_takeoff', lakeside_phantom_06, 1);
	cs_fly_by (lakeside_phantom_06_pt.p8);
	cs_fly_by (lakeside_phantom_06_pt.p9);
	cs_fly_by (lakeside_phantom_06_pt.p10);
	cs_fly_by (lakeside_phantom_06_pt.p11);
	ai_erase (lakeside_phantom_06);
end

script static void lakeside_phantom_06_unload_1()
	f_unload_phantom( lakeside_phantom_06, "left" );
end

script command_script lakeside_pelican_airlift_cs()
	cs_vehicle_speed (1);
	cs_fly_by (lakeside_pelican_airlift_pt.p0);
	cs_fly_by (lakeside_pelican_airlift_pt.p1);
	cs_fly_by (lakeside_pelican_airlift_pt.p2);
	cs_fly_to_and_face (lakeside_pelican_airlift_pt.p3, lakeside_pelican_airlift_pt.p4);
	cs_ignore_obstacles (true);	
	cs_fly_to_and_face (lakeside_pelican_airlift_pt.p8, lakeside_pelican_airlift_pt.p9);
	lakeside_pelican_airlift_bool = true;	
	ai_vehicle_enter_immediate (pelican_marines.guy4, ai_get_unit(lakeside_pelican_airlift_sq));
	ai_vehicle_enter_immediate (pelican_marines.guy5, ai_get_unit(lakeside_pelican_airlift_sq));
		if
			not (unit_in_vehicle (pelican_marines.guy1))
			then
			ai_vehicle_enter_immediate (pelican_marines.guy1, ai_get_unit(lakeside_pelican_airlift_sq));
		end
		if
			not (unit_in_vehicle (pelican_marines_2.guy1))
			then
			ai_vehicle_enter_immediate (pelican_marines_2.guy1, ai_get_unit(lakeside_pelican_airlift_sq));
		end
	sleep (30 * 10);
	// FIXME - needs to be uncommented when unit_in_vehicle works for new pelican (always returns false right now)
//		sleep_until (unit_in_vehicle (pelican_marines.guy1)
//		and
//		unit_in_vehicle (pelican_marines.guy2)
//		);
	cs_fly_by (lakeside_pelican_airlift_pt.p5);
	cs_ignore_obstacles (false);	
	cs_fly_by (lakeside_pelican_airlift_pt.p6);
	cs_fly_by (lakeside_pelican_airlift_pt.p7);
	ai_erase (lakeside_pelican_airlift_sq);
end

script command_script lakeside_pelican_marines_kill()
	ai_kill_silent (pelican_marines.guy3);
//	ai_kill_silent (pelican_marines.guy4);
//	ai_kill_silent (pelican_marines.guy5);
end

script dormant tortoise_lakeside_recorded()
	print ("tortoise lakeside animation scripts are prepped");
	
	sleep_until (volume_test_object (tv_tort_rec_lakeside_pt1, main_mammoth));
	wake (prechopper_tortoise_recorded);
	sleep_forever (lakeside_tort_catchup);
	sleep_forever (f_fodder_mammoth_playback);
	unit_recorder_set_playback_rate_smooth (main_mammoth, .7, 2);		
	print ("TORT SPEED = .7");
	unit_recorder_pause_smooth (main_mammoth, false, 3);
	tort_stopped = FALSE;
	thread (mam_dust_on());

	thread (test_lakeside_hog_setup());	
	sleep_until (unit_recorder_get_time_position_seconds (main_mammoth) > 100, 1);

	print ("HIT!");
	
	unit_recorder_setup_for_unit (main_mammoth, tortoise_0716_b);
	unit_recorder_play_and_blend (main_mammoth, 2);
	unit_recorder_pause (main_mammoth, true);
	tort_stopped = TRUE;
	thread (mam_dust_off());
	print ("tortoise_0716_b has been set up");

//	sleep (30 * 3);

	wake (M40_lakeside_vehicles_deploy);

	thread (open_tort_doors_lakeside());

	sleep_s (10);

	sleep_until (
//	lakeside_obj_state > 29
//	and
	(lakeside_cannon_alive == FALSE)
	);
	
	f_unblip_object (marines_main_hog_02_veh);
	f_unblip_object (marines_main_hog_01_veh);
	
	object_create (cliffside_ghost_01);
	
	thread (display_chapter_03d_complete());

	thread (display_chapter_13());

	wake (lakeside_bridge_dialogue);

	object_create (cliffside_barrier_01);	
	object_create (cliffside_barrier_02);	
	object_create (cliffside_antennae_01);		

	if
		tort_bay_doors_opened == false
	then
		thread (open_tort_doors_lakeside());
	end

	sleep_until (tort_bay_doors_opened == true);

	thread (close_tort_doors_lakeside());

	sleep_until (tort_bay_doors_opened == false);
	
	wake (M40_lakeside_rollout);
	unit_recorder_pause (main_mammoth, false);
	tort_stopped = FALSE;

	sleep (30 * 2);

//	thread (new_tort_lakeside_speed_test());
	thread (new_tort_short_speed_test());
	thread (mam_dust_on());

	sleep_until (unit_recorder_get_time_position_seconds (main_mammoth) > 8, 1);
	
	kill_volume_disable (playerkill_soft_post_lakeside);
	kill_volume_disable (playerkill_soft_prechop_backtrack);	
	
	unit_recorder_set_playback_rate (main_mammoth, .7);
	print ("TORT SPEED = .7");
	sleep_until (unit_recorder_get_time_position_seconds (main_mammoth) > 15, 1);

	print ("HIT!");
	
	thread (mam_dust_off());
	
	thread (reserve_mammoth_vehicles());
	f_unblip_object (marines_main_hog_02_veh);

//	sleep (30 * 2);	
	unit_recorder_pause (main_mammoth, true);
	tort_stopped = TRUE;
	print ("Paused");
	unit_recorder_setup_for_unit (main_mammoth, tortoise_0716_c);
	unit_recorder_play_and_blend (main_mammoth, 2);
	unit_recorder_pause (main_mammoth, true);
	tort_stopped = TRUE;
	thread (mam_dust_off());
	print ("tortoise_0526_c loaded");
	sleep_s (2);
	
	if
		volume_test_players (tv_cliffside_entire)
	then
		print ("player is ahead, tortoise not opening doors");
		unit_recorder_set_playback_rate_smooth (main_mammoth, 1.5, 1);	
		print ("TORT SPEED = 1.5");
	else
		thread (open_tort_doors_river());
		wake (lakeside_tort_ready);
		wake (marines_cross_mammoth_sc);
		sleep_until (volume_test_players (tv_cliffside_entire)
		or
		lakeside_rollout_rdy	== true, 1
		);
	
		thread (close_tort_doors_river());
	end
	
	
	unit_recorder_pause_smooth (main_mammoth, false, 2);
	tort_stopped = FALSE;
	thread (mam_dust_on());
	print ("lakeside tortoise skipped past the p7 across the river");
	thread (cliffside_tort_floor_test());
	

	sleep_until (
	
	(objects_distance_to_object (player0, main_mammoth) < 20 
	and
	objects_distance_to_object (player0, main_mammoth) > 0)
	or
	(objects_distance_to_object (player1, main_mammoth) < 20 
	and
	objects_distance_to_object (player1, main_mammoth) > 0)	
	or
	(objects_distance_to_object (player2, main_mammoth) < 20 
	and
	objects_distance_to_object (player2, main_mammoth) > 0)
	or
	(objects_distance_to_object (player3, main_mammoth) < 20 
	and
	objects_distance_to_object (player3, main_mammoth) > 0)
	
	or
	lakeside_obj_state > 39, 1);
	
	
	print ("CLIFFSIDE JUST CHECKED PLAYER LOCATION FOR GHOST ASSAULT OR TORT ASSAULT");
	game_save_no_timeout();
	wake (cliffside_phantom_placement);
	unit_recorder_pause (main_mammoth, false);
	tort_stopped = FALSE;
	thread (mam_dust_on());
	sleep (30 * 2);
	unit_recorder_set_playback_rate_smooth (main_mammoth, .7, 1);	
	print ("TORT SPEED = 1");

	thread (new_tort_cliffside_part_1_speed_test());

	sleep_until (volume_test_object (tv_cliffside_01b, main_mammoth));
		if
			volume_test_players (tv_tortoise_top_01)
			or
			volume_test_players (tv_tortoise_middle_01)
			or
			volume_test_players (tv_tortoise_bottom_01)
		then
			print ("cliffside_phantom_02 tortoise assault");
			sleep (30 * 3);	
			unit_recorder_set_playback_rate_smooth (main_mammoth, .3, 3);	
			print ("TORT SPEED = .3");
			sleep (30 * 7);
			unit_recorder_set_playback_rate_smooth (main_mammoth, .13, 3);	
			print ("TORT SPEED = .13");
			sleep (30 * 7);
		end
	print ("threading tort repeating speed test");

	sleep_until (volume_test_object (tv_cliffside_01b, main_mammoth));

	TDT_dist = 15;
	thread (tort_stop_check_player_location());

	sleep_s (1);

	if 
		(player0_valid_and_far_from_tortoise_or_not_valid == TRUE
		and
		player1_valid_and_far_from_tortoise_or_not_valid == TRUE
		and
		player2_valid_and_far_from_tortoise_or_not_valid == TRUE
		and
		player3_valid_and_far_from_tortoise_or_not_valid == TRUE
		and 
		cliffside_obj_state < 20)
			
	then
		unit_recorder_pause_smooth (main_mammoth, true, 3);	
		tort_stopped = TRUE;
		thread (mam_dust_off());
		print ("TDT = Tort Distance Test = All players are behind, Tortoise is stopping");		

	//Checked to see if the player doesnt have a jetpack and got left behind so we can teleport him

	if
		game_coop_player_count() == 1
		and
		volume_test_players (tv_lakeside_entire)
	then
		object_teleport (player0, lakeside_left_behind_flag);
	end
						
		sleep_until (
				
		(objects_distance_to_object (player0, main_mammoth) < 20 
		and
		objects_distance_to_object (player0, main_mammoth) > 0)
		or
		(objects_distance_to_object (player1, main_mammoth) < 20 
		and
		objects_distance_to_object (player1, main_mammoth) > 0)	
		or
		(objects_distance_to_object (player2, main_mammoth) < 20 
		and
		objects_distance_to_object (player2, main_mammoth) > 0)
		or
		(objects_distance_to_object (player3, main_mammoth) < 20 
		and
		objects_distance_to_object (player3, main_mammoth) > 0)
		
		or
		cliffside_obj_state > 19, 1);

		print ("TDT = Tort Distance Test = At least one player is caught up, Tortoise is continuing");
		unit_recorder_pause_smooth (main_mammoth, false, 2);	
		tort_stopped = FALSE;
		thread (mam_dust_on());
	end
	
	unit_kill_list_silent (volume_return_objects (tv_lakeside_entire));
	
	sleep_until (volume_test_object (tv_cliffside_03, main_mammoth));

	TDT_dist = 15;
	thread (tort_stop_check_player_location());

	sleep_s (1);

	if 
		(player0_valid_and_far_from_tortoise_or_not_valid == TRUE
		and
		player1_valid_and_far_from_tortoise_or_not_valid == TRUE
		and
		player2_valid_and_far_from_tortoise_or_not_valid == TRUE
		and
		player3_valid_and_far_from_tortoise_or_not_valid == TRUE
		and 
		cliffside_obj_state < 30)
			
	then
		unit_recorder_pause_smooth (main_mammoth, true, 3);	
		tort_stopped = TRUE;
		thread (mam_dust_off());
		print ("TDT = Tort Distance Test = All players are behind, Tortoise is stopping");		
					
		sleep_until (
				
		(objects_distance_to_object (player0, main_mammoth) < 20 
		and
		objects_distance_to_object (player0, main_mammoth) > 0)
		or
		(objects_distance_to_object (player1, main_mammoth) < 20 
		and
		objects_distance_to_object (player1, main_mammoth) > 0)	
		or
		(objects_distance_to_object (player2, main_mammoth) < 20 
		and
		objects_distance_to_object (player2, main_mammoth) > 0)
		or
		(objects_distance_to_object (player3, main_mammoth) < 20 
		and
		objects_distance_to_object (player3, main_mammoth) > 0)
		
		or
		cliffside_obj_state > 29, 1);

		print ("TDT = Tort Distance Test = At least one player is caught up, Tortoise is continuing");
		unit_recorder_pause_smooth (main_mammoth, false, 2);	
		tort_stopped = FALSE;
		thread (mam_dust_on());
	end

	sleep_until (volume_test_object (tv_cliffside_07, main_mammoth));

	TDT_dist = 15;
	thread (tort_stop_check_player_location());

	sleep_s (1);

	if 
		(player0_valid_and_far_from_tortoise_or_not_valid == TRUE
		and
		player1_valid_and_far_from_tortoise_or_not_valid == TRUE
		and
		player2_valid_and_far_from_tortoise_or_not_valid == TRUE
		and
		player3_valid_and_far_from_tortoise_or_not_valid == TRUE
		and 
		cliffside_obj_state < 70)
			
	then
		unit_recorder_pause_smooth (main_mammoth, true, 3);	
		tort_stopped = TRUE;
		thread (mam_dust_off());
		print ("TDT = Tort Distance Test = All players are behind, Tortoise is stopping");		
					
		sleep_until (
				
		(objects_distance_to_object (player0, main_mammoth) < 20 
		and
		objects_distance_to_object (player0, main_mammoth) > 0)
		or
		(objects_distance_to_object (player1, main_mammoth) < 20 
		and
		objects_distance_to_object (player1, main_mammoth) > 0)	
		or
		(objects_distance_to_object (player2, main_mammoth) < 20 
		and
		objects_distance_to_object (player2, main_mammoth) > 0)
		or
		(objects_distance_to_object (player3, main_mammoth) < 20 
		and
		objects_distance_to_object (player3, main_mammoth) > 0)
		
		or
		cliffside_obj_state > 69, 1);

		print ("TDT = Tort Distance Test = At least one player has caught up, Tortoise is continuing");		
		unit_recorder_pause_smooth (main_mammoth, false, 2);	
		tort_stopped = FALSE;
		thread (mam_dust_on());
	end
end

script dormant lakeside_bridge_dialogue()
	sleep (30 * 15);
		if
			not (volume_test_players (tv_tortoise_top_01))
			and
			not (volume_test_players (tv_tortoise_middle_01))
			and
			not (volume_test_players (tv_tortoise_bottom_01))
		then
	wake (M40_lakeside_prep_rollout );
		end
end

script dormant cliffside_phantom_placement()
	ai_place (cliffside_phantom_02);
	sleep (30 * 3);
	ai_place (cliffside_phantom_01);
  wake (cliffside_phantom_roulette);
end

script dormant cliffside_ins_tortoise_recording()
	print ("lakeside tortoise skipped past the p7 across the river");
	thread (cliffside_tort_floor_test());
	
	sleep_until (
	
	(objects_distance_to_object (player0, main_mammoth) < 20 
	and
	objects_distance_to_object (player0, main_mammoth) > 0)
	or
	(objects_distance_to_object (player1, main_mammoth) < 20 
	and
	objects_distance_to_object (player1, main_mammoth) > 0)	
	or
	(objects_distance_to_object (player2, main_mammoth) < 20 
	and
	objects_distance_to_object (player2, main_mammoth) > 0)
	or
	(objects_distance_to_object (player3, main_mammoth) < 20 
	and
	objects_distance_to_object (player3, main_mammoth) > 0)
	
	or
	lakeside_obj_state > 39, 1);
	
	print ("CLIFFSIDE JUST CHECKED PLAYER LOCATION FOR GHOST ASSAULT OR TORT ASSAULT");
	wake (cliffside_phantom_placement);
	unit_recorder_pause_smooth (main_mammoth, false, 2);
	tort_stopped = FALSE;
	thread (mam_dust_on());
	unit_recorder_set_playback_rate_smooth (main_mammoth, .7, 1);	
	print ("TORT SPEED = 1");
	print ("threading tort repeating speed test");
	thread (new_tort_cliffside_part_1_speed_test());

	sleep_until (volume_test_object (tv_cliffside_07, main_mammoth));

	TDT_dist = 15;
	thread (tort_stop_check_player_location());

	sleep_s (1);

	if 
		(player0_valid_and_far_from_tortoise_or_not_valid == TRUE
		and
		player1_valid_and_far_from_tortoise_or_not_valid == TRUE
		and
		player2_valid_and_far_from_tortoise_or_not_valid == TRUE
		and
		player3_valid_and_far_from_tortoise_or_not_valid == TRUE
		and 
		cliffside_obj_state < 70)
			
	then
		unit_recorder_pause_smooth (main_mammoth, true, 3);	
		tort_stopped = TRUE;
		thread (mam_dust_off());
		print ("TDT = Tort Distance Test = Player is behind, Tortoise is stopping");
					
		sleep_until (
				
		(objects_distance_to_object (player0, main_mammoth) < 20 
		and
		objects_distance_to_object (player0, main_mammoth) > 0)
		or
		(objects_distance_to_object (player1, main_mammoth) < 20 
		and
		objects_distance_to_object (player1, main_mammoth) > 0)	
		or
		(objects_distance_to_object (player2, main_mammoth) < 20 
		and
		objects_distance_to_object (player2, main_mammoth) > 0)
		or
		(objects_distance_to_object (player3, main_mammoth) < 20 
		and
		objects_distance_to_object (player3, main_mammoth) > 0)
		
		or
		cliffside_obj_state > 69, 1);

		print ("TDT = Tort Distance Test = Player caught up, Tortoise is continuing");
		unit_recorder_pause_smooth (main_mammoth, false, 2);	
		tort_stopped = FALSE;
		thread (mam_dust_on());
	end
end

//script dormant marines_cross_mammoth_sc()
//
//	cs_run_command_script (ai_vehicle_get_driver (marines_main_hog_01_veh), warthogs_through_mammoth);
//	sleep_s (2);
//	cs_run_command_script (ai_vehicle_get_driver (marines_main_hog_02_veh), warthogs_through_mammoth);	
//	sleep_s (2);
//	cs_run_command_script (ai_vehicle_get_driver (marines_main_lakeside_hog_01), warthogs_through_mammoth);	
//	
//end


script static void phantom_load_test1()
	ai_place (cliffside_phantom_02);
	ai_place (cliffside_ghosts_01);
//	f_load_phantom_cargo (cliffside_phantom_02, "double", cliffside_ghosts_01, NONE);
		vehicle_load_magic (ai_vehicle_get_from_spawn_point (cliffside_phantom_02.driver), "phantom_sc01", ai_vehicle_get_from_starting_location  (cliffside_ghosts_01.driver)); 
		vehicle_load_magic (ai_vehicle_get_from_spawn_point (cliffside_phantom_02.driver), "phantom_sc02", ai_vehicle_get_from_starting_location  (cliffside_ghosts_01.driver2));
end

script static void cliffside_tort_floor_test()
	sleep_until (
		volume_test_players (tv_tortoise_top_01)
		or
		volume_test_players (tv_tortoise_middle_01)
		or
		volume_test_players (tv_tortoise_bottom_01), 1);
cliffside_tort_floor_test_bl = TRUE;
end

script dormant detect_players_after_cliffside()
	sleep_until (volume_test_object (tv_cliffside_entire, main_mammoth) and prechopper_obj_state > 31, 1);
	print ("Player already in Prechopper! Tortoise full speed to Prechopper");
	sleep (30 * 10);
	unit_recorder_set_playback_rate (main_mammoth, 1);
	print ("TORT SPEED = 1");
	sleep_forever (tortoise_lakeside_recorded);
	sleep_forever (cliffside_ins_tortoise_recording);
end


// =================================================================================================
// =================================================================================================
// CLIFFSIDE
// =================================================================================================
// =================================================================================================

script dormant prechopper_shield_barrier_spawn()
	sleep_until (volume_test_players (tv_cliffside_06), 1);
	object_create (prechopper_shield_barrier);
	print ("prechopper_shield_barrier created"); 
end

script dormant cliffside_enc_main()


	sleep_until (volume_test_players (tv_cliffside_01), 1);
	thread(f_mus_m40_e03_begin());
	print ("cliffside script playing"); 
	ai_place (cliffside_edge_sq_01);
	ai_place (cliffside_edge_sq_02);
	ai_place (cliffside_edge_sq_03);		
	
	wake (cliffside_ghost_retreat);
	wake (spawn_prechopper);
	wake (prechopper_obj_states);
	wake (prechopper_convoy_prep);
  wake (cliffside_banshee_control);

	sleep_until (volume_test_players (tv_cliffside_07));	

//EJECTS PLAYERS FROM MAMMOTH TURRETS SO THEY CAN BE TELEPORTED-----------------------
	if
		volume_test_object_bounding_sphere_center (tv_tortoise_top_01, player0)
		and
		unit_in_vehicle (player0)
		and
		volume_test_object (tv_cliffside_teleport_first, player0)
	then
		unit_exit_vehicle (player0);
		sleep_until (not (unit_in_vehicle (player0)));
	end
	
	if
		volume_test_object_bounding_sphere_center (tv_tortoise_top_01, player1)
		and
		unit_in_vehicle (player1)
		and
		volume_test_object (tv_cliffside_teleport_first, player1)
	then
		unit_exit_vehicle (player1);
		sleep_until (not (unit_in_vehicle (player1)));
	end

	if
		volume_test_object_bounding_sphere_center (tv_tortoise_top_01, player2)
		and
		unit_in_vehicle (player2)
		and
		volume_test_object (tv_cliffside_teleport_first, player2)
	then
		unit_exit_vehicle (player2);
		sleep_until (not (unit_in_vehicle (player2)));
	end
	
	if
		volume_test_object_bounding_sphere_center (tv_tortoise_top_01, player3)
		and
		unit_in_vehicle (player3)
		and
		volume_test_object (tv_cliffside_teleport_first, player3)
	then
		unit_exit_vehicle (player3);
		sleep_until (not (unit_in_vehicle (player3)));
	end

//-------------------------------------------------------------------------------------------
	
	if
		volume_test_object (tv_cliffside_teleport_first, player0)
	then
		if 
			unit_in_vehicle (player0)
		then
			object_teleport (unit_get_vehicle (player0), clifffside_teleport_01);
		else
			object_teleport (player0, clifffside_teleport_01);
		end
	end
	
	if
		volume_test_object (tv_cliffside_teleport_first, player1)
	then
		if 
			unit_in_vehicle (player1)
		then
			object_teleport (unit_get_vehicle (player1), clifffside_teleport_02);
		else
			object_teleport (player1, clifffside_teleport_02);
		end
	end
	
	if
		volume_test_object (tv_cliffside_teleport_first, player2)
	then
		if 
			unit_in_vehicle (player2)
		then
			object_teleport (unit_get_vehicle (player2), clifffside_teleport_03);
		else
			object_teleport (player2, clifffside_teleport_03);
		end
	end
	
	if
		volume_test_object (tv_cliffside_teleport_first, player3)
	then
		if 
			unit_in_vehicle (player3)
		then
			object_teleport (unit_get_vehicle (player3), clifffside_teleport_04);
		else
			object_teleport (player3, clifffside_teleport_04);
		end
	end	

	soft_ceiling_enable ("cliffside_backtrack_01", true);
	
	object_create_folder (prechopper_crates);
	
	object_set_persistent (cliffside_ghost_01, false);
	
	kill_volume_enable (playerkill_soft_lakeside_backtrack);

	thread (prechopper_bubble_creation());
	
	if 
		object_valid (prechopper_shield_barrier)
	then 
		print ("prechop shield barrier already exists");
	else
		object_create (prechopper_shield_barrier);
		print ("prechop shield barrier created");
	end
				
//	sleep_until (volume_test_players (tv_cliffside_07));	
	
	game_save_no_timeout();
	
	thread(f_mus_m40_e03_finish());
end

script dormant cliffside_banshee_control()
	sleep_until (volume_test_players (tv_cliffside_02));
	if
		volume_test_players (tv_tortoise_top_01)
		or
		volume_test_players (tv_tortoise_middle_01)
		or
		volume_test_players (tv_tortoise_bottom_01)		
	then
	ai_place (cliffside_banshee_strafe_01);
	
	thread (banshee_dialogue());
	
	unit_set_enterable_by_player (ai_get_unit (cliffside_banshee_strafe_01.guy1), false);
	unit_set_enterable_by_player (ai_get_unit (cliffside_banshee_strafe_01.guy2), false);

	object_cinematic_visibility (cliffside_banshee_strafe_01.guy1, true);
	object_cinematic_visibility (cliffside_banshee_strafe_01.guy2, true);
	
	sleep_until (volume_test_players (tv_cliffside_07));
	cs_run_command_script (cliffside_banshee_strafe_01.guy1, banshee_strafe_01_leave_cs);
	cs_run_command_script (cliffside_banshee_strafe_01.guy2, banshee_strafe_02_leave_cs);
	else
	print ("player isn't on Mammoth");
	end
end

script static void banshee_dialogue()
	sleep_s (6);
	
	wake (f_dialog_m40_banshees);
end

script dormant prechopper_arrival_test()
//	sleep_until (volume_test_players (tv_cliffside_retreat), 1);
	sleep_until (volume_test_object (tv_cliffside_retreat, main_mammoth), 1);
	prechopper_arrival = true;
//	sleep_forever (tort_cliffside_repeating_speed_test);
end

script dormant cliffside_obj_states()
	sleep_until (volume_test_players (tv_cliffside_01), 1);
	cliffside_obj_state = 10;
	print ("cliffside_obj_state = 10");

//EJECTS PLAYERS FROM MAMMOTH TURRETS SO THEY CAN BE TELEPORTED-----------------------
	if
		volume_test_object_bounding_sphere_center (tv_tortoise_top_01, player0)
		and
		unit_in_vehicle (player0)
		and
		volume_test_object (tv_lakeside_entire, player0)
	then
		unit_exit_vehicle (player0);
		sleep_until (not (unit_in_vehicle (player0)));
	end
	
	if
		volume_test_object_bounding_sphere_center (tv_tortoise_top_01, player1)
		and
		unit_in_vehicle (player1)
		and
		volume_test_object (tv_lakeside_entire, player1)
	then
		unit_exit_vehicle (player1);
		sleep_until (not (unit_in_vehicle (player1)));
	end

	if
		volume_test_object_bounding_sphere_center (tv_tortoise_top_01, player2)
		and
		unit_in_vehicle (player2)
		and
		volume_test_object (tv_lakeside_entire, player2)
	then
		unit_exit_vehicle (player2);
		sleep_until (not (unit_in_vehicle (player2)));
	end
	
	if
		volume_test_object_bounding_sphere_center (tv_tortoise_top_01, player3)
		and
		unit_in_vehicle (player3)
		and
		volume_test_object (tv_lakeside_entire, player3)
	then
		unit_exit_vehicle (player3);
		sleep_until (not (unit_in_vehicle (player3)));
	end

//-------------------------------------------------------------------------------------------
	
	if
		volume_test_object (tv_lakeside_entire, player0)
	then
		if 
			unit_in_vehicle (player0)
		then
			object_teleport (unit_get_vehicle (player0), lakeside_teleport_01);
		else
			object_teleport (player0, lakeside_teleport_01);
		end
	end
	
	if
		volume_test_object (tv_lakeside_entire, player1)
	then
		if 
			unit_in_vehicle (player1)
		then
			object_teleport (unit_get_vehicle (player1), lakeside_teleport_02);
		else
			object_teleport (player1, lakeside_teleport_02);
		end
	end
	
	if
		volume_test_object (tv_lakeside_entire, player2)
	then
		if 
			unit_in_vehicle (player2)
		then
			object_teleport (unit_get_vehicle (player2), lakeside_teleport_03);
		else
			object_teleport (player2, lakeside_teleport_03);
		end
	end

	if
		volume_test_object (tv_lakeside_entire, player3)
	then
		if 
			unit_in_vehicle (player3)
		then
			object_teleport (unit_get_vehicle (player3), lakeside_teleport_04);
		else
			object_teleport (player3, lakeside_teleport_04);
		end
	end

	object_destroy_folder( fodder_crates );
	object_destroy (lakeside_crate_01);
	object_destroy (lakeside_crate_02);

//	thread (lakeside_destroy_test());

	kill_script (lakeside_backup_ghosts_3_spawn);
	kill_script (lakeside_wraith_backup_spawn);
	kill_script (rock_sq_bonus_spawn);
	kill_script (lakeside_sq_bonus);
	kill_script (lakeside_fill_bonus);
	kill_script (lakeside_fill_bonus_2);
	kill_script (lakeside_fill_bonus_3);
	
	ai_erase (lakeside_phantom_intro);
	ai_erase (lakeside_phantom_intro_2);
	ai_erase (lakeside_phantom_01);
	ai_erase (lakeside_phantom_04);
	ai_erase (lakeside_phantom_05);
	ai_erase (lakeside_phantom_06);
	ai_erase (lakeside_phantom_07);
	
	thread (lakeside_total_destroy());
	
	print ("destroyed a ton of old stuff");

	ai_erase (front_jackal_sq); 
	ai_erase (rock_sq); 
	ai_erase (high_cave_sq); 
	ai_erase (high_bridge_sq);
	ai_erase (mid_rock_sq);
	ai_erase (front_barricade_guard);
	ai_erase (front_barricade_guard_rear);
	ai_erase (front_grunts_sq);
	
	ai_erase (lakeside_fill_01_sq);
	ai_erase (lakeside_fill_02_sq);	

	ai_erase (lakeside_sq);

	ai_erase (ghosts_initial_1);
	ai_erase (lakeside_backup_ghosts_2);
	ai_erase (lakeside_backup_ghosts_3);
	ai_erase (lakeside_wraith_01);
	ai_erase (lakeside_wraith_03);		

	sleep(5);
	
	object_create (cliffside_ghost_01);
	object_create_folder (prechop_grenades);
	object_create_folder (prechop_weapons);
		
	ai_set_objective (marine_convoy, cliffside_marines_obj);
	ai_set_objective (marine_convoy_02, cliffside_marines_obj);
	
	sleep_until (volume_test_players (tv_cliffside_02), 1);
	cliffside_obj_state = 20;
	print ("cliffside_obj_state = 20");
	
	ai_erase (lakeside_phantom_intro);
	
	sleep_until (volume_test_players (tv_cliffside_03), 1);
	cliffside_obj_state = 30;
	print ("cliffside_obj_state = 30");
	
	sleep_until (volume_test_players (tv_cliffside_04), 1);
	cliffside_obj_state = 40;
	print ("cliffside_obj_state = 40");
	
	sleep_until (volume_test_players (tv_cliffside_05), 1);
	cliffside_obj_state = 50;
	print ("cliffside_obj_state = 50");
	
	sleep_until (volume_test_players (tv_cliffside_06), 1);
	cliffside_obj_state = 60;
	print ("cliffside_obj_state = 60");
	
	sleep_until (volume_test_players (tv_prechopper_01), 1);
	cliffside_obj_state = 70;
	print ("cliffside_obj_state = 70");
	
	sleep_until (volume_test_players (tv_cliffside_retreat), 1);
	cliffside_obj_state = 80;
	print ("cliffside_obj_state = 80");	
	
	thread (honey_i_shrunk_the_forerunner_cannon_again());	
	
	object_teleport_to_ai_point (prechopper_tower_pod, chopper_smash.pod_location);	
	
	ai_set_objective (marine_convoy, obj_prechopper_unsc);
	ai_set_objective (marine_convoy_02, obj_prechopper_unsc);
	print ("Cliffside AI handed off to Prechopper");
end

script static void lakeside_total_destroy()
	sleep_until (not (volume_test_players_lookat (tv_lakeside_entire, 3000, 40))
	and
	not (volume_test_players (tv_lakeside_entire)));
	thread (objects_destroy_all_in_volume(tv_lakeside_entire));
	sleep_until (master_object_list_count <= 0, 1);	
	sleep_until (not (volume_test_players_lookat (tv_lakeside_entire, 3000, 40))
	and
	not (volume_test_players (tv_lakeside_entire)));
	thread (objects_destroy_all_in_volume(tv_lakeside_combat_area));
	sleep_until (master_object_list_count <= 0, 1);	
	object_create (downed_pelican);	

end

script dormant cliffside_ghost_retreat()
	sleep_until (volume_test_players (tv_prechopper_015), 1);
	print ("cliffside ghosts running away");	
	ai_set_objective (cliffside_ghosts_01, cliffside_cov_ghosts_end);
	ai_set_objective (cliffside_ghosts_02, cliffside_cov_ghosts_end);
//	ai_set_objective (cliffside_ghosts_03, cliffside_cov_ghosts_end);
end

//script dormant cliffside_tort_assault_test_speed()
//	sleep_until (ai_living_count (cliffside_tortoise_assault_grp) < 1);
//	unit_recorder_set_playback_rate_smooth (main_mammoth, 1, 3);
//	print ("TORT SPEED = 1");
//	sleep_forever (cliffside_ins_tortoise_recording);
//end

script static void version_check()
	print ("07.26.11.12");
end

//--------------------cliffside command scripts-------------------



script command_script cliffside_phantom_01_A_cs()
	print ("cliffside_phantom_01 spawned A");
	sound_impulse_start('sound\environments\solo\m040\new_m40_tags\amb_m40_ships\amb_m40_cliffside_phantom_1a_spawn', cliffside_phantom_01, 1);
	unit_open (cliffside_phantom_01);
//	cs_fly_by (cliffside_phantom_01_pt.p0);
	cs_fly_by (cliffside_phantom_01_pt.p1);
//	print ("cliffside_phantom_01_A_cs flew to p1");

	cs_vehicle_speed (.4);

	repeat

	cs_fly_to_and_face (cliffside_phantom_01_pt.p2, cliffside_phantom_01_pt.p15); 
	sleep_s(1);
	cs_fly_to_and_face (cliffside_phantom_01_pt.p17, cliffside_phantom_01_pt.p15); 
	
	until (volume_test_object (tv_cliffside_mam_trigger, main_mammoth), 1);	

	cs_vehicle_speed (1);
	
	wake (f_dialog_m40_more_covenant);
	
	if
		volume_test_players (tv_tortoise_top_01)
		or
		volume_test_players (tv_tortoise_middle_01)
		or
		volume_test_players (tv_tortoise_bottom_01)
	then
//		print ("cliffside_phantom_01 tortoise strafe");
		cs_ignore_obstacles (true);			
		cs_vehicle_speed (.4);
		
		cs_fly_to_and_face (cliffside_run_pt.p3, cliffside_run_pt.p2);
		
		cs_fly_by (cliffside_run_pt.p0);
		cs_fly_by (cliffside_run_pt.p1);
		cs_fly_by (cliffside_run_pt.p2);		

		cs_vehicle_speed (1);

		cs_fly_by (cliffside_phantom_01_pt.p7);
		cs_fly_by (cliffside_phantom_01_pt.p8);
		
		ai_erase (cliffside_phantom_01);
		
	else
		cs_vehicle_speed (1);
		cs_fly_by (cliffside_phantom_01_pt.p7);
		cs_fly_by (cliffside_phantom_01_pt.p8);
		cs_vehicle_speed (1);
		print ("cliffside_phantom_01 about to erase");
		ai_erase (cliffside_phantom_01);
	end
//	print ("cliffside_phantom_01 erased");
end

script command_script cliffside_phantom_01_B_cs()
	print ("cliffside_phantom_01 spawned B");
	sound_impulse_start('sound\environments\solo\m040\new_m40_tags\amb_m40_ships\amb_m40_cliffside_phantom_1b_spawn', cliffside_phantom_01, 1);
	ai_place (cliffside_ghosts_01);
	vehicle_load_magic (ai_vehicle_get_from_spawn_point (cliffside_phantom_01.driver), "phantom_sc02", ai_vehicle_get_from_starting_location  (cliffside_ghosts_01.driver));
	vehicle_load_magic (ai_vehicle_get_from_spawn_point (cliffside_phantom_01.driver), "phantom_sc01", ai_vehicle_get_from_starting_location  (cliffside_ghosts_01.driver2));
//	cs_fly_by (cliffside_phantom_01_pt.p0);
//	print ("cliffside_phantom_01_B_cs loaded AI");
	cs_fly_by (cliffside_phantom_01_pt.p1);
//	print ("cliffside_phantom_01_B_cs flew to p1");
	cs_fly_to_and_face (cliffside_phantom_01_pt.p2, cliffside_phantom_01_pt.p15); 

	cs_vehicle_speed (.4);

	repeat

	cs_fly_to_and_face (cliffside_phantom_01_pt.p2, cliffside_phantom_01_pt.p15); 
	sleep_s(1);
	cs_fly_to_and_face (cliffside_phantom_01_pt.p17, cliffside_phantom_01_pt.p15); 
	
	until (volume_test_object (tv_cliffside_mam_trigger, main_mammoth)
	or
	volume_test_players (tv_cliffside_mam_trigger));

	cs_vehicle_speed (1);

//	sleep_until (volume_test_object (tv_cliffside_mam_trigger, main_mammoth)
//	or
//	volume_test_players (tv_cliffside_mam_trigger)
//	, 1);	
	if
		volume_test_players (tv_tortoise_top_01)
		or
		volume_test_players (tv_tortoise_middle_01)
		or
		volume_test_players (tv_tortoise_bottom_01)		
	then
		cs_fly_to_and_face (cliffside_phantom_02_pt.p11, cliffside_phantom_02_pt.p12); 
		sleep (30 * 1);	
		cs_fly_to_and_face (cliffside_phantom_02_pt.p11, cliffside_phantom_02_pt.p12); 
		sleep (30 * 1);	
		cs_fly_to_and_face (cliffside_phantom_02_pt.p15, cliffside_phantom_02_pt.p16); 
		sleep (30 * 1);	
		cs_fly_to_and_face (cliffside_phantom_02_pt.p11, cliffside_phantom_02_pt.p12); 
		sleep (30 * 1);	
		cs_fly_to_and_face (cliffside_phantom_02_pt.p11, cliffside_phantom_02_pt.p12); 
		cs_fly_by (cliffside_phantom_02_pt.p8);
		cs_fly_by (cliffside_phantom_02_pt.p9);
		
		ai_erase (cliffside_phantom_01);
//		print ("cliffside_phantom_01 erased");
	else	
		cs_fly_to_and_face (cliffside_phantom_02_pt.p5, cliffside_phantom_02_pt.p6);
		vehicle_unload (ai_vehicle_get (cliffside_phantom_01.driver), "phantom_sc01");
		vehicle_unload (ai_vehicle_get (cliffside_phantom_01.driver), "phantom_sc02");
		sound_impulse_start('sound\environments\solo\m040\new_m40_tags\amb_m40_ships\amb_m40_cliffside_phantom_1b_takeoff', cliffside_phantom_01, 1);
		cs_fly_by (cliffside_phantom_02_pt.p7);
		cs_fly_by (cliffside_phantom_02_pt.p8);
		cs_fly_by (cliffside_phantom_02_pt.p9);
		ai_erase (cliffside_phantom_01);
//		print ("cliffside_phantom_01 erased");
	end
end

script command_script cliffside_phantom_02_B_cs()
	print ("cliffside_phantom_02 spawned B");
	sound_impulse_start('sound\environments\solo\m040\new_m40_tags\amb_m40_ships\amb_m40_cliffside_phantom_2b_spawn', cliffside_phantom_02, 1);
	cs_fly_by (cliffside_phantom_02_pt.p4);
	print ("cliffside_phantom_02 flew to p1");
	cs_vehicle_speed (.4);
	repeat

	cs_fly_to_and_face (cliffside_phantom_02_pt.p18, cliffside_phantom_01_pt.p15); 
	sleep (45);
	cs_fly_to_and_face (cliffside_phantom_02_pt.p17, cliffside_phantom_01_pt.p15); 
	
	until (volume_test_object (tv_cliffside_mam_trigger, main_mammoth), 1);	

	cs_vehicle_speed (1);
	
	wake (f_dialog_m40_more_covenant);
	
	if
		volume_test_players (tv_tortoise_top_01)
		or
		volume_test_players (tv_tortoise_middle_01)
	then
	
//		print ("cliffside_phantom_02 tortoise strafe");
		cs_ignore_obstacles (true);			
		cs_vehicle_speed (.4);
		
			cs_fly_to_and_face (cliffside_run_pt.p4, cliffside_run_pt.p2);
		
		cs_fly_by (cliffside_run_pt.p0);
		cs_fly_by (cliffside_run_pt.p1);
		cs_fly_by (cliffside_run_pt.p2);		

		cs_vehicle_speed (1);

		cs_fly_by (cliffside_phantom_01_pt.p7);
		cs_fly_by (cliffside_phantom_01_pt.p8);
		
		ai_erase (cliffside_phantom_02);
	
	else
		cs_fly_by (cliffside_phantom_01_pt.p7);
		cs_fly_by (cliffside_phantom_01_pt.p8);
		ai_erase (cliffside_phantom_02);
	end
//	print ("cliffside_phantom_01 erased");
end

script command_script cliffside_phantom_02_A_cs()
	print ("cliffside_phantom_02 spawned A");
	sound_impulse_start('sound\environments\solo\m040\new_m40_tags\amb_m40_ships\amb_m40_cliffside_phantom_2a_spawn', cliffside_phantom_02, 1);
	
	ai_place (cliffside_ghosts_01);
	vehicle_load_magic (ai_vehicle_get_from_spawn_point (cliffside_phantom_02.driver), "phantom_sc02", ai_vehicle_get_from_starting_location  (cliffside_ghosts_01.driver));
	vehicle_load_magic (ai_vehicle_get_from_spawn_point (cliffside_phantom_02.driver), "phantom_sc01", ai_vehicle_get_from_starting_location  (cliffside_ghosts_01.driver2));
//	print ("cliffside_phantom_02_A_cs loaded AI");
	cs_fly_by (cliffside_phantom_02_pt.p4);
	cs_fly_to_and_face (cliffside_phantom_01_pt.p12, cliffside_phantom_01_pt.p15);
	cs_vehicle_speed (.4);
	repeat

	cs_fly_to_and_face (cliffside_phantom_02_pt.p18, cliffside_phantom_01_pt.p15); 
	sleep (45);
	cs_fly_to_and_face (cliffside_phantom_02_pt.p17, cliffside_phantom_01_pt.p15); 
	
	until (volume_test_object (tv_cliffside_mam_trigger, main_mammoth)
	or
	volume_test_players (tv_cliffside_mam_trigger)
	, 1);	
	cs_vehicle_speed (1);
	if
		volume_test_players (tv_tortoise_top_01)
		or
		volume_test_players (tv_tortoise_middle_01)
		or
		volume_test_players (tv_tortoise_bottom_01)		
	then
		cs_fly_to_and_face (cliffside_phantom_02_pt.p11, cliffside_phantom_02_pt.p12); 
		sleep (30 * 1);	
		cs_fly_to_and_face (cliffside_phantom_02_pt.p11, cliffside_phantom_02_pt.p12); 
		sleep (30 * 1);	
		cs_fly_to_and_face (cliffside_phantom_02_pt.p15, cliffside_phantom_02_pt.p16); 
		sleep (30 * 1);	
		cs_fly_to_and_face (cliffside_phantom_02_pt.p11, cliffside_phantom_02_pt.p12); 
		sleep (30 * 1);	
		cs_fly_to_and_face (cliffside_phantom_02_pt.p11, cliffside_phantom_02_pt.p12); 
		cs_fly_by (cliffside_phantom_02_pt.p8);
		cs_fly_by (cliffside_phantom_02_pt.p9);
		ai_erase (cliffside_phantom_02);
//		print ("cliffside_phantom_02 erased");
	else	
		cs_fly_to_and_face (cliffside_phantom_02_pt.p5, cliffside_phantom_02_pt.p6);
		vehicle_unload (ai_vehicle_get (cliffside_phantom_02.driver), "phantom_sc01");
		vehicle_unload (ai_vehicle_get (cliffside_phantom_02.driver), "phantom_sc02");
		
		sound_impulse_start('sound\environments\solo\m040\new_m40_tags\amb_m40_ships\amb_m40_cliffside_phantom_2a_takeoff', cliffside_phantom_02, 1);
		cs_fly_by (cliffside_phantom_02_pt.p7);
		cs_fly_by (cliffside_phantom_02_pt.p8);
		cs_fly_by (cliffside_phantom_02_pt.p9);
		ai_erase (cliffside_phantom_02);
//		print ("cliffside_phantom_02 erased");
	end
end

script command_script banshee_strafe_01_cs()
	cs_fly_by (cliffside_run_pt.p5);
//	cs_fly_by (cliffside_run_pt.p7);
	cs_fly_by (cliffside_run_pt.p14);
end

script command_script banshee_strafe_02_cs()
	cs_fly_by (cliffside_run_pt.p6);
//	cs_fly_by (cliffside_run_pt.p8);
	cs_fly_by (cliffside_run_pt.p15);
end

script command_script banshee_strafe_01_leave_cs()
	cs_fly_by (cliffside_run_pt.p9);
	cs_fly_by (cliffside_run_pt.p10);
	cs_fly_by (cliffside_run_pt.p11);
	ai_erase (cliffside_banshee_strafe_01.guy1);
end

script command_script banshee_strafe_02_leave_cs()
	cs_fly_by (cliffside_run_pt.p12);
	cs_fly_by (cliffside_run_pt.p13);
	cs_fly_by (cliffside_run_pt.p11);
	ai_erase (cliffside_banshee_strafe_01.guy2);
end

script dormant cliffside_phantom_roulette()
	begin_random_count(1)

		begin
			cs_run_command_script (cliffside_phantom_01.driver, cliffside_phantom_01_A_cs);
			cs_run_command_script (cliffside_phantom_02.driver, cliffside_phantom_02_A_cs);
			print ("Right Phantom drops Ghosts");		
		end

		begin
			cs_run_command_script (cliffside_phantom_01.driver, cliffside_phantom_01_B_cs);
			cs_run_command_script (cliffside_phantom_02.driver, cliffside_phantom_02_B_cs);	
			print ("Left Phantom drops Ghosts");		
		end
		
	end	
end


// =================================================================================================
// =================================================================================================
// CHOPPER
// =================================================================================================
// =================================================================================================

script dormant chopper_main_script()
	sleep_until (chop_obj_state > 9
	and
	s_bubbles_burst == 3
	);	
	
	ai_lod_full_detail_actors (25);
	
	wake (blip_chopper_gun);
	
	object_set_persistent (chop_gauss_waiting, false);
	
	object_hide (lichy, true);
	object_set_physics (lichy, false);
	
	// turn off trigger volumes that will be enabled through this encounter
	zone_set_trigger_volume_enable("begin_zone_set:zone_set_waterfall_pre_vale:*", FALSE);
	zone_set_trigger_volume_enable("zone_set:zone_set_waterfall_pre_vale:*", FALSE);
	zone_set_trigger_volume_enable("zone_set:zone_set_chopper_bowl:*", FALSE);

 	data_mine_set_mission_segment ("m40_chopper");

	sleep_until (volume_test_players (tv_chopper_03), 1);

	wake (M40_waterfalls_warning);
	if
		game_coop_player_count() < 2
	then	
		thread (chopper_marine_backup());
	end

	object_create (chop_hilltop_crate_01);
	object_create (chop_hilltop_crate_02);
	ai_vehicle_reserve (chop_reserved_ghost_01, true);

	sleep_until (chopper_cannon_alive == FALSE);
	
	// trigger the zoneset switch to drop chopper_a
	zone_set_trigger_volume_enable("begin_zone_set:zone_set_chopper_waterfall_pre", FALSE);
	zone_set_trigger_volume_enable("zone_set:zone_set_chopper_waterfall_pre:*", FALSE);
	zone_set_trigger_volume_enable("zone_set:zone_set_chopper_bowl:*", TRUE);

	effects_perf_armageddon = 1;
	
	game_save_no_timeout();
//	thread (prechopper_ai_kills());

	thread (teleport_and_cleanup_prechopper());

 	thread(f_mus_m40_e05_begin());
	wake (M40_chopper_Rail_gun);

	thread (blip_chop_gauss());

	print ("CHOP WAVE 1 OF 5");


	ai_place (chop_phantom_02_sq);
	ai_place (chop_ghost_06_sq);
	vehicle_load_magic (ai_vehicle_get_from_spawn_point (chop_phantom_02_sq.driver), "phantom_sc02", ai_vehicle_get_from_starting_location  (chop_ghost_06_sq.driver));
	vehicle_load_magic (ai_vehicle_get_from_spawn_point (chop_phantom_02_sq.driver), "phantom_sc01", ai_vehicle_get_from_starting_location  (chop_ghost_06_sq.driver2));

	object_set_physics (lichy, true);
	object_hide (lichy, false);
	ai_place (chop_lich);
	
	ai_disregard(ai_actors(chop_lich), TRUE);
	
	thread (end_td_use());
	
	thread (chopper_player_leave_dialogue());
	
	garbage_collecting = true;

	sleep (1);
	
	object_cannot_take_damage (object_at_marker (lichy, "power_core"));
	
	thread (check_lich_death());
	
	thread (garbage_collect_me_chop());
	
	ai_place (chop_phantom_09_sq);
	ai_place (chop_wraith_02_sq);
	vehicle_load_magic (ai_vehicle_get_from_spawn_point (chop_phantom_09_sq.driver), "phantom_lc", ai_vehicle_get_from_starting_location  (chop_wraith_02_sq.driver));	

	sleep_s (6);

	thread (blip_the_lich_sc());
	
	thread (unblip_chop_lich_sc());
	
	sleep_until (player_in_vehicle (chop_gauss_waiting)
	or
	ai_living_count (chop_ghosts) < 2);

	sleep_s (3);

	ai_place (chop_phantom_06_sq);
	ai_place (chop_ghost_03_sq);
	vehicle_load_magic (ai_vehicle_get_from_spawn_point (chop_phantom_06_sq.driver), "phantom_sc02", ai_vehicle_get_from_starting_location  (chop_ghost_03_sq.driver2));
	vehicle_load_magic (ai_vehicle_get_from_spawn_point (chop_phantom_06_sq.driver), "phantom_sc01", ai_vehicle_get_from_starting_location  (chop_ghost_03_sq.driver));

	wake (M40_chopper_lich_reveal);
	vehicle_set_player_interaction (lichy, "pelican_p_l05", false, false);
	print ("lich spawned");
	
	sleep (1);
	
	sleep_until (player_in_vehicle (chop_gauss_waiting)
	or
	ai_living_count (chop_ghosts) < 2);
	
	ai_place (chop_phantom_05_sq);
	ai_place (chop_ghost_05_sq);
	vehicle_load_magic (ai_vehicle_get_from_spawn_point (chop_phantom_05_sq.driver), "phantom_sc02", ai_vehicle_get_from_starting_location  (chop_ghost_05_sq.driver2));
	vehicle_load_magic (ai_vehicle_get_from_spawn_point (chop_phantom_05_sq.driver), "phantom_sc01", ai_vehicle_get_from_starting_location  (chop_ghost_05_sq.driver));

	sleep (30 * 10);	

	if
		player_in_vehicle (chop_gauss_waiting)
		or
		volume_test_players (tv_tortoise_top_01)
	then
	sleep_until	
		(ai_living_count (chop_wraith_02_sq) < 1
		and
		ai_living_count (chop_ghosts) < 2
		);
	else
	sleep_until	
		(ai_living_count (chop_wraith_02_sq) < 2
		and
		ai_living_count (chop_ghosts) < 2
		);
	end
			
	chop_obj_state = 62;
	print ("chop objective state 62");
	print ("CHOP WAVE 2 OF 5");
	
	wake (f_dialog_m40_hold_the_hill);
	
	game_save_no_timeout();
	
	ai_place (chop_phantom_03_sq);
	ai_place (chop_wraith_01_sq);
	vehicle_load_magic (ai_vehicle_get_from_spawn_point (chop_phantom_03_sq.driver), "phantom_lc", ai_vehicle_get_from_starting_location  (chop_wraith_01_sq.driver));	
		
	thread (garbage_collect_chop());
	
//	if
//		lich_dead_early == TRUE
//		and
//		dm_mode1 == TRUE
//	then
//		thread (rail_gun_sp_sc());
//		rgt_bool = true;
//		print ("RGT");
//	end
		
	if
		player_in_vehicle (chop_gauss_waiting)
		or
		volume_test_players (tv_tortoise_top_01)
	then
	sleep_until	
		(ai_living_count (chop_ghosts) < 2);
	else
	sleep_until	
		(ai_living_count (chop_ghosts) < 2);
	end
		
	chop_obj_state = 63;
	print ("chop objective state 63");
	print ("CHOP WAVE 3 OF 5");
	
	game_save_no_timeout();

//	if
//		lich_dead_early == TRUE
//		and
//		dm_mode1 == TRUE
//		and
//		rgt_bool ==  false
//	then
//		thread (rail_gun_sp_sc());
//		rgt_bool = true;
//		print ("RGT");
//	end
		
	ai_place (chop_phantom_04_sq);
	ai_place (chop_ghost_04_sq.driver2);
	vehicle_load_magic (ai_vehicle_get_from_spawn_point (chop_phantom_04_sq.driver), "phantom_sc02", ai_vehicle_get_from_starting_location  (chop_ghost_04_sq.driver2));
	//vehicle_load_magic (ai_vehicle_get_from_spawn_point (chop_phantom_04_sq.driver), "phantom_sc01", ai_vehicle_get_from_starting_location  (chop_ghost_04_sq.driver));

 	game_save_no_timeout();

	sleep_s(1);

	if
		player_in_vehicle (chop_gauss_waiting)
		or
		volume_test_players (tv_tortoise_top_01)
	then
	sleep_until	
		(ai_living_count (chop_ghosts) < 2);
	else
	sleep_until	
		(ai_living_count (chop_ghosts) < 2);
	end
	
	chop_obj_state = 64;
	print ("chop objective state 64");
	print ("CHOP WAVE 4 OF 5");
	
	//wake (f_dialog_m40_hold_them_off);
	
	game_save_no_timeout();
		
	ai_place (chop_phantom_05_sq);
	ai_place (chop_ghost_05_sq);
	vehicle_load_magic (ai_vehicle_get_from_spawn_point (chop_phantom_05_sq.driver), "phantom_sc02", ai_vehicle_get_from_starting_location  (chop_ghost_05_sq.driver2));
	vehicle_load_magic (ai_vehicle_get_from_spawn_point (chop_phantom_05_sq.driver), "phantom_sc01", ai_vehicle_get_from_starting_location  (chop_ghost_05_sq.driver));

 	game_save_no_timeout();

	sleep_s(1);

		sleep_until	
		(ai_living_count (chop_ghosts) < 3	
		and
		ai_living_count (chop_wraith_01_sq) < 1
		and
		ai_living_count (chop_wraith_02_sq) < 1
		);
			
	ai_place (chop_phantom_07_sq);
	ai_place (chop_wraith_02_sq);
	vehicle_load_magic (ai_vehicle_get_from_spawn_point (chop_phantom_07_sq.driver), "phantom_lc", ai_vehicle_get_from_starting_location  (chop_wraith_02_sq.driver));
	
	chop_obj_state = 65;
	print ("chop objective state 65");
	print ("CHOP WAVE 5 OF 5");
	
		sleep_until	
		(ai_living_count (chop_ghosts) < 3	
		and
		ai_living_count (chop_wraith_01_sq) < 1
		or
		ai_living_count (chop_wraith_02_sq) < 1
		);	
	
	ai_place (chop_phantom_03_sq);
	ai_place (chop_ghost_06_sq);
	vehicle_load_magic (ai_vehicle_get_from_spawn_point (chop_phantom_03_sq.driver), "phantom_sc02", ai_vehicle_get_from_starting_location  (chop_ghost_06_sq.driver));
	vehicle_load_magic (ai_vehicle_get_from_spawn_point (chop_phantom_03_sq.driver), "phantom_sc01", ai_vehicle_get_from_starting_location  (chop_ghost_06_sq.driver2));
	
		sleep_until	
		(ai_living_count (chop_ghosts) < 2	
		or
		(ai_living_count (chop_wraith_01_sq) < 2
		and
		ai_living_count (chop_wraith_02_sq) < 2)
		);	


	if
		game_coop_player_count() > 2	
	or
		game_difficulty_get_real() == legendary
	or
		lich_dead_early == true
	then
	
	
	//------------------- LEGENDARY AND 3P/4P CO-OP EXTENDED BATTLE-------------------------//

	thread (chop_leg_backup());
	
	ai_place (chop_phantom_06_sq);
	ai_place (chop_ghost_03b_sq);
	vehicle_load_magic (ai_vehicle_get_from_spawn_point (chop_phantom_06_sq.driver), "phantom_sc02", ai_vehicle_get_from_starting_location  (chop_ghost_03b_sq.driver2));
	vehicle_load_magic (ai_vehicle_get_from_spawn_point (chop_phantom_06_sq.driver), "phantom_sc01", ai_vehicle_get_from_starting_location  (chop_ghost_03b_sq.driver));

	sleep_until (player_in_vehicle (chop_gauss_waiting)
	or
	ai_living_count (chop_ghosts) < 3);
	
	ai_place (chop_phantom_05_sq);
	ai_place (chop_ghost_05_sq);
	vehicle_load_magic (ai_vehicle_get_from_spawn_point (chop_phantom_05_sq.driver), "phantom_sc02", ai_vehicle_get_from_starting_location  (chop_ghost_05_sq.driver2));
	vehicle_load_magic (ai_vehicle_get_from_spawn_point (chop_phantom_05_sq.driver), "phantom_sc01", ai_vehicle_get_from_starting_location  (chop_ghost_05_sq.driver));

	sleep (30 * 7);	

	sleep_until	
		(ai_living_count (chop_wraith_02_sq) < 1
		and
		ai_living_count (chop_ghosts) < 3
		);

	game_save_no_timeout();
	
	ai_place (chop_phantom_03_sq);
	ai_place (chop_wraith_01_sq);
	vehicle_load_magic (ai_vehicle_get_from_spawn_point (chop_phantom_03_sq.driver), "phantom_lc", ai_vehicle_get_from_starting_location  (chop_wraith_01_sq.driver));	
		
	thread (garbage_collect_chop());
			
	sleep_until	
		(ai_living_count (chop_ghosts) < 3);

		
	ai_place (chop_phantom_04_sq);
	ai_place (chop_ghost_04_sq);
	vehicle_load_magic (ai_vehicle_get_from_spawn_point (chop_phantom_04_sq.driver), "phantom_sc02", ai_vehicle_get_from_starting_location  (chop_ghost_04_sq.driver2));
	vehicle_load_magic (ai_vehicle_get_from_spawn_point (chop_phantom_04_sq.driver), "phantom_sc01", ai_vehicle_get_from_starting_location  (chop_ghost_04_sq.driver));

	sleep_until	
		(ai_living_count (chop_ghosts) < 2);

	game_save_no_timeout();
		
	ai_place (chop_phantom_05_sq);
	ai_place (chop_ghost_05_sq);
	vehicle_load_magic (ai_vehicle_get_from_spawn_point (chop_phantom_05_sq.driver), "phantom_sc02", ai_vehicle_get_from_starting_location  (chop_ghost_05_sq.driver2));
	vehicle_load_magic (ai_vehicle_get_from_spawn_point (chop_phantom_05_sq.driver), "phantom_sc01", ai_vehicle_get_from_starting_location  (chop_ghost_05_sq.driver));

		sleep_until	
		(ai_living_count (chop_ghosts) < 3	
		and
		ai_living_count (chop_wraith_01_sq) < 1
		and
		ai_living_count (chop_wraith_02_sq) < 1
		);
			
	ai_place (chop_phantom_07_sq);
	ai_place (chop_wraith_02_sq);
	vehicle_load_magic (ai_vehicle_get_from_spawn_point (chop_phantom_07_sq.driver), "phantom_lc", ai_vehicle_get_from_starting_location  (chop_wraith_02_sq.driver));
	
		sleep_until	
		(ai_living_count (chop_ghosts) < 3	
		and
		(ai_living_count (chop_wraith_01_sq) < 1
		or
		ai_living_count (chop_wraith_02_sq) < 1)
		);	
	
	ai_place (chop_phantom_03_sq);
	ai_place (chop_ghost_06_sq);
	vehicle_load_magic (ai_vehicle_get_from_spawn_point (chop_phantom_03_sq.driver), "phantom_sc02", ai_vehicle_get_from_starting_location  (chop_ghost_06_sq.driver));
	vehicle_load_magic (ai_vehicle_get_from_spawn_point (chop_phantom_03_sq.driver), "phantom_sc01", ai_vehicle_get_from_starting_location  (chop_ghost_06_sq.driver2));
	
		sleep_until	
		(ai_living_count (chop_ghosts) < 3	
		or
		(ai_living_count (chop_wraith_01_sq) < 2
		and
		ai_living_count (chop_wraith_02_sq) < 2)
		);	
	
	//--------------------------------------------------------------------------------------//
	
	
	end

	chop_obj_state = 66;

	print ("CHOP WAVES DEAD");

	game_save_no_timeout();
	
	sleep_s (10);
	
//	thread (marines_exit_chop_vehicles());

end

script static void teleport_and_cleanup_prechopper()

//EJECTS PLAYERS FROM MAMMOTH TURRETS SO THEY CAN BE TELEPORTED-----------------------
	if
		volume_test_object_bounding_sphere_center (tv_tortoise_top_01, player0)
		and
		unit_in_vehicle (player0)
		and
		(volume_test_object (tv_prechop_mass_cleanup, player0)
		or
		volume_test_object (tv_prechop_2_tele, player0))
	then
		unit_exit_vehicle (player0);
		sleep_until (not (unit_in_vehicle (player0)));
	end
	
	if
		volume_test_object_bounding_sphere_center (tv_tortoise_top_01, player1)
		and
		unit_in_vehicle (player1)
		and
		(volume_test_object (tv_prechop_mass_cleanup, player1)
		or
		volume_test_object (tv_prechop_2_tele, player1))
	then
		unit_exit_vehicle (player1);
		sleep_until (not (unit_in_vehicle (player1)));
	end

	if
		volume_test_object_bounding_sphere_center (tv_tortoise_top_01, player2)
		and
		unit_in_vehicle (player2)
		and
		(volume_test_object (tv_prechop_mass_cleanup, player2)
		or
		volume_test_object (tv_prechop_2_tele, player2))
	then
		unit_exit_vehicle (player2);
		sleep_until (not (unit_in_vehicle (player2)));
	end
	
	if
		volume_test_object_bounding_sphere_center (tv_tortoise_top_01, player3)
		and
		unit_in_vehicle (player3)
		and
		(volume_test_object (tv_prechop_mass_cleanup, player3)
		or
		volume_test_object (tv_prechop_2_tele, player3))
	then
		unit_exit_vehicle (player3);
		sleep_until (not (unit_in_vehicle (player3)));
	end

//-------------------------------------------------------------------------------------------

	if
		volume_test_object (tv_prechop_mass_cleanup, player0)
		or
		volume_test_object (tv_prechop_2_tele, player0)	
	then
		if 
			unit_in_vehicle (player0)
		then
			object_teleport (unit_get_vehicle (player0), chop_cannon_teleport_01);
		else
			object_teleport (player0, chop_cannon_teleport_01);
		end
	end
	
	if
		volume_test_object (tv_prechop_mass_cleanup, player1)
		or
		volume_test_object (tv_prechop_2_tele, player1)	
	then
		if 
			unit_in_vehicle (player1)
		then
			object_teleport (unit_get_vehicle (player1), chop_cannon_teleport_02);
		else
			object_teleport (player1, chop_cannon_teleport_02);
		end
	end
	
	if
		volume_test_object (tv_prechop_mass_cleanup, player2)
		or
		volume_test_object (tv_prechop_2_tele, player2)	
	then
		if 
			unit_in_vehicle (player2)
		then
			object_teleport (unit_get_vehicle (player2), chop_cannon_teleport_03);
		else
			object_teleport (player2, chop_cannon_teleport_03);
		end
	end
	
	if
		volume_test_object (tv_prechop_mass_cleanup, player3)
		or
		volume_test_object (tv_prechop_2_tele, player3)	
	then
		if 
			unit_in_vehicle (player3)
		then
			object_teleport (unit_get_vehicle (player3), chop_cannon_teleport_04);
		else
			object_teleport (player3, chop_cannon_teleport_04);
		end
	end
	
	soft_ceiling_enable ("prechop_new", true);
//	soft_ceiling_enable ("prechop_chop_divider", true);
	
	sleep(5);
	
	object_destroy_folder (prechopper_crates);
	ai_erase (sq_ridge_re);

	sleep(5);

	unit_kill_list_silent (volume_return_objects (tv_prechop_mass_cleanup));

	sleep(5);

	thread (objects_destroy_all_in_volume(tv_cliffside_01));
	thread (objects_destroy_all_in_volume(tv_prechop_mass_cleanup));	
//	thread (prechopper_destroy_test	());
end

script static void blip_the_lich_sc()
	sleep_s (4);
	f_blip_ai (chop_lich, "navpoint_enemy_vehicle");
	print ("Blip The Lich");
end

script static void marines_exit_chop_vehicles()
	sleep_until	
		((ai_living_count (chop_ghosts) < 1	
		and
		ai_living_count (chop_wraith_01_sq) < 1
		and
		ai_living_count (chop_wraith_02_sq) < 1)
		or
		player_approaching_hilltop_after_battle == true
		);	

	print ("******************* MARINES ORDERED TO EXIT CHOPPER VEHICLES *******************");
	
	ai_vehicle_exit (marine_convoy);
	ai_vehicle_exit (marine_convoy_02);
	ai_vehicle_exit (chop_marines_backup_grp);
	ai_vehicle_exit (prechopper_convoy);
	ai_vehicle_exit (chop_marines_convoy);
	ai_vehicle_exit (chop_marines_waiting);

	ai_vehicle_reserve (unit_get_vehicle (player0), true);
	ai_vehicle_reserve (unit_get_vehicle (player0), true);

	ai_vehicle_reserve (vehicle(list_get (volume_return_objects_by_campaign_type (tv_chop_lower_marines_full, 18), 0)), true);
	ai_vehicle_reserve (vehicle(list_get (volume_return_objects_by_campaign_type (tv_chop_lower_marines_full, 18), 1)), true);
	ai_vehicle_reserve (vehicle(list_get (volume_return_objects_by_campaign_type (tv_chop_lower_marines_full, 18), 2)), true);
	ai_vehicle_reserve (vehicle(list_get (volume_return_objects_by_campaign_type (tv_chop_lower_marines_full, 18), 3)), true);
	
	ai_set_objective (marine_convoy, chop_marines_lich_obj);
	ai_set_objective (marine_convoy_02, chop_marines_lich_obj);
	ai_set_objective (chop_marines_backup_grp, chop_marines_lich_obj);
	ai_set_objective (prechopper_convoy, chop_marines_lich_obj);
	ai_set_objective (chop_marines_convoy, chop_marines_lich_obj);
	ai_set_objective (chop_marines_waiting, chop_marines_lich_obj);
	
	wake (chop_marine_jetpackers_spawn);
end

script static void lich_dying_scripts()
	wake (lich_escape);
	garbage_collecting = false;
	effect_new_on_object_marker( objects\vehicles\covenant\storm_space_phantom\fx\destruction\main_explosion.effect, lichy, "power_core" );
	thread (tort_chopper_cleanup());
	thread (lich_sound_effects());
//	sleep (30 * 4);
	thread (display_chapter_075());
	f_unblip_flag (jetpack_help_flag);
	f_unblip_flag (jetpack_help_flag_lich);

	lich_alive_state = false;
	
//	game_save_no_timeout();	
end

script static void lich_safety_destruct()
	sleep_until (object_get_health( object_at_marker( lichy, "power_core" ) ) <= 0, 1
	);
	sleep_s(10);
	if
		lich_alive_state == TRUE
	then
		lich_alive_state = FALSE;
		print ("&&&&&&&&&&&&&&&&&&&&&& PART 1: LICH BLEW UP ON ITS OWN BECAUSE CORE WAS DESTROYED BUT LICH WAS STILL ALIVE. DID LICH BREAK? &&&&&&&&&&&&&&&&&&&&&&");
	end
	sleep_s(30);	
	if
		lich_exploded == FALSE
	then
		lich_exploded = TRUE;
		print ("&&&&&&&&&&&&&&&&&&&&&& PART 2: LICH BLEW UP ON ITS OWN BECAUSE CORE WAS DESTROYED BUT LICH WAS STILL ALIVE. DID LICH BREAK? &&&&&&&&&&&&&&&&&&&&&&");
		soft_ceiling_enable ("chop_forwardtrack_01", false);
	end	
end

script static void rail_gun_sp_sc()
	f_blip_flag (tort_rail_gun_flag, "recon");
	thread (unblip_tort_rg_flag());
	sleep_until (volume_test_players (tv_cav_target_laser_pickup), 1);
	ai_kill_silent (bt_sq);
	td_disabled = true;
	unit_drop_weapon(td_user, m40_lakeside_target_laser, 1);
	weapon_target_designator_hide_hud();
	sleep (1);
	if
		objects_distance_to_object (player0, m40_lakeside_target_laser) < 5
	then
		unit_enter_vehicle_immediate (player0, main_mammoth, "mac_d");
	elseif
		objects_distance_to_object (player1, m40_lakeside_target_laser) < 5
	then
		unit_enter_vehicle_immediate (player1, main_mammoth, "mac_d");
	elseif
		objects_distance_to_object (player2, m40_lakeside_target_laser) < 5
	then
		unit_enter_vehicle_immediate (player2, main_mammoth, "mac_d");
	elseif
		objects_distance_to_object (player3, m40_lakeside_target_laser) < 5
	then
		unit_enter_vehicle_immediate (player3, main_mammoth, "mac_d");		
	end
	sleep_until (chop_obj_state > 65);
	if
		unit_get_vehicle (player0) == main_mammoth
	then
		unit_exit_vehicle (player0);
	elseif
		unit_get_vehicle (player1) == main_mammoth
	then
		unit_exit_vehicle (player1);
	elseif
		unit_get_vehicle (player2) == main_mammoth
	then
		unit_exit_vehicle (player2);
	elseif
		unit_get_vehicle (player3) == main_mammoth
	then
		unit_exit_vehicle (player3);
	end
	f_unblip_flag (tort_rail_gun_flag);
end

script static void unblip_tort_rg_flag()
	sleep_s (30);
	f_unblip_flag (tort_rail_gun_flag);
end

script static void test_eject()
	unit_exit_vehicle (player0);
		sleep_until (not (unit_in_vehicle (player0)));
		print ("OUT!!!!!!!!!!");
	end

script static void prechop_backtrack_soft_wall()
	sleep_until (current_zone_set() == DEF_S_ZONESET_CHOPPER_WATERFALL_PRE());	

//	sleep_until (volume_test_players (tv_tort_rec_chopper_pt0), 1);


//EJECTS PLAYERS FROM MAMMOTH TURRETS SO THEY CAN BE TELEPORTED-----------------------
	if
		volume_test_object_bounding_sphere_center (tv_tortoise_top_01, player0)
		and
		unit_in_vehicle (player0)
		and
		volume_test_object (tv_prechop_bad_teleport, player0)
	then
		unit_exit_vehicle (player0);
		sleep_until (not (unit_in_vehicle (player0)));
	end
	
	if
		volume_test_object_bounding_sphere_center (tv_tortoise_top_01, player1)
		and
		unit_in_vehicle (player1)
		and
		volume_test_object (tv_prechop_bad_teleport, player1)
	then
		unit_exit_vehicle (player1);
		sleep_until (not (unit_in_vehicle (player1)));
	end

	if
		volume_test_object_bounding_sphere_center (tv_tortoise_top_01, player2)
		and
		unit_in_vehicle (player2)
		and
		volume_test_object (tv_prechop_bad_teleport, player2)
	then
		unit_exit_vehicle (player2);
		sleep_until (not (unit_in_vehicle (player2)));
	end
	
	if
		volume_test_object_bounding_sphere_center (tv_tortoise_top_01, player3)
		and
		unit_in_vehicle (player3)
		and
		volume_test_object (tv_prechop_bad_teleport, player3)
	then
		unit_exit_vehicle (player3);
		sleep_until (not (unit_in_vehicle (player3)));
	end

//-------------------------------------------------------------------------------------------

	if
		volume_test_object (tv_prechop_bad_teleport, player0)
	then
		if 
			unit_in_vehicle (player0)
		then
			object_teleport (unit_get_vehicle (player0), chop_teleport_01);
		else
			object_teleport (player0, chop_teleport_01);
		end
	end
	
	if
		volume_test_object (tv_prechop_bad_teleport, player1)
	then
		if 
			unit_in_vehicle (player1)
		then
			object_teleport (unit_get_vehicle (player1), chop_teleport_02);
		else
			object_teleport (player1, chop_teleport_02);
		end
	end
	
	if
		volume_test_object (tv_prechop_bad_teleport, player2)
	then
		if 
			unit_in_vehicle (player2)
		then
			object_teleport (unit_get_vehicle (player2), chop_teleport_03);
		else
			object_teleport (player2, chop_teleport_03);
		end
	end
	
	if
		volume_test_object (tv_prechop_bad_teleport, player3)
	then
		if 
			unit_in_vehicle (player3)
		then
			object_teleport (unit_get_vehicle (player3), chop_teleport_04);
		else
			object_teleport (player3, chop_teleport_04);
		end
	end
	
	soft_ceiling_enable ("chop_backtrack_01", true);
//	soft_ceiling_enable ("prechop_backtrack_01", true);
	kill_volume_enable (playerkill_soft_prechopper_05);
	print ("created chop_backtrack_01");
	thread (objects_destroy_all_in_volume(tv_prechop_mass_cleanup));
	sleep_until (master_object_list_count <= 0, 1);	
	thread (objects_destroy_all_in_volume(tv_prechopper_04));	
end

//script static void prechop_bad_teleport_sc()
//	repeat
//		if
//			volume_test_object (tv_prechop_bad_teleport, player0)
//		then
//			if 
//				unit_in_vehicle (player0)
//			then
//				object_teleport (unit_get_vehicle (player0), chop_teleport_01);
//			else
//				object_teleport (player0, chop_teleport_01);
//			end
//		end
//		
//		if
//			volume_test_object (tv_prechop_bad_teleport, player1)
//		then
//			if 
//				unit_in_vehicle (player1)
//			then
//				object_teleport (unit_get_vehicle (player1), chop_teleport_02);
//			else
//				object_teleport (player1, chop_teleport_02);
//			end
//		end
//		
//		if
//			volume_test_object (tv_prechop_bad_teleport, player2)
//		then
//			if 
//				unit_in_vehicle (player2)
//			then
//				object_teleport (unit_get_vehicle (player2), chop_teleport_03);
//			else
//				object_teleport (player2, chop_teleport_03);
//			end
//		end
//		
//		if
//			volume_test_object (tv_prechop_bad_teleport, player3)
//		then
//			if 
//				unit_in_vehicle (player3)
//			then
//				object_teleport (unit_get_vehicle (player3), chop_teleport_04);
//			else
//				object_teleport (player3, chop_teleport_04);
//			end
//		end
//	
//	sleep_s(1);
//	
//	until (tort_done_in_mission == true);
//	
//end

script static void chop_leg_backup()
	sleep_until (not (volume_test_players_lookat (tv_chopper_marine_spawn, 3000, 40)));
	ai_place (chop_marine_backup_04);
end

script static void unblip_chop_lich_sc()
	sleep (30 * 8);
	print ("Unblipping Chop Lich");
	f_unblip_ai (chop_lich);
end

script static void check_lich_death()
	sleep_until (object_get_health( object_at_marker( lichy, "power_core" ) ) <= 0, 1
	);
	if
		lich_landed_at_chopper == false
	then
		print ("player has boarded and killed lich early");
		cs_run_command_script (chop_lich, it_is_a_good_day_to_die_cs);
		thread (camera_shake_now_lich());
		thread (lich_dying_scripts());
		lich_dead_early = true;

	else
	
		print ("player has boarded and killed lich correctly, firing off normal death scripts");
		
		wake (m40_lich_head_out);
	
		thread (lich_spartans_escape_1());	
		thread (lich_spartans_escape_2());	
			
		thread (camera_shake_now_lich());

		thread (lich_dying_scripts());

	 	sleep (30 * 10);
	
		cs_run_command_script (chop_lich.driver, it_is_a_good_day_to_die_cs);

	 	sleep (30 * 5);
	 	
	 	object_set_function_variable (lichy, gravlift_fx_down, 0, 1);
		
		thread (display_jetpack_tut());		
	end
end

script static void blip_chop_gauss()
	if
		not (unit_in_vehicle (chop_dead_marines.guy3))
		and
		not (player_in_vehicle (chop_gauss_waiting))
	then
		ai_vehicle_reserve_seat (chop_gauss_waiting, "warthog_d", true);
		ai_vehicle_reserve_seat (chop_gauss_waiting, "warthog_p", true);
		ai_vehicle_reserve_seat (unit_get_vehicle(player0), "warthog_p", true);
		ai_vehicle_reserve_seat (unit_get_vehicle(player1), "warthog_p", true);
		ai_vehicle_reserve_seat (unit_get_vehicle(player2), "warthog_p", true);
		ai_vehicle_reserve_seat (unit_get_vehicle(player3), "warthog_p", true);
	end
	sleep (30 * 5);
	if
		not (unit_in_vehicle (chop_dead_marines.guy3))
		and
		not (player_in_vehicle (chop_gauss_waiting))
	then
		ai_vehicle_enter (chop_dead_marines.guy3, chop_gauss_waiting, "warthog_g");
		sleep (30 * 7);
		f_blip_object (chop_gauss_waiting, "ordnance");
		sleep (30 * 2);			
		wake (f_dialog_40_gauss_hog_02);
		sleep (30 * 2);		
		//wake (f_dialog_m40_come_in_handy);
		sleep_until (player_in_vehicle (chop_gauss_waiting), 1);
		ai_vehicle_reserve_seat (chop_gauss_waiting, "warthog_d", false);
		ai_vehicle_reserve_seat (chop_gauss_waiting, "warthog_p", false);
		ai_vehicle_reserve_seat (unit_get_vehicle(player0), "warthog_p", false);
		ai_vehicle_reserve_seat (unit_get_vehicle(player1), "warthog_p", false);
		ai_vehicle_reserve_seat (unit_get_vehicle(player2), "warthog_p", false);
		ai_vehicle_reserve_seat (unit_get_vehicle(player3), "warthog_p", false);
		f_unblip_object (chop_gauss_waiting);
	end
	thread (unblip_chop_gauss());
	thread (unreserve_chop_gauss());
	sleep (30 * 15);			
	f_unblip_object (chop_gauss_waiting);
end

script static void unreserve_chop_gauss()
	sleep (30 * 40);
	ai_vehicle_reserve_seat (chop_gauss_waiting, "warthog_d", false);
	ai_vehicle_reserve_seat (chop_gauss_waiting, "warthog_p", false);
	f_unblip_object (chop_gauss_waiting);
end

script static void unblip_chop_gauss()
	sleep (30 * 15);
	ai_vehicle_reserve_seat (chop_gauss_waiting, "warthog_d", false);
	ai_vehicle_reserve_seat (chop_gauss_waiting, "warthog_p", false);
	ai_vehicle_reserve_seat (unit_get_vehicle(player0), "warthog_p", false);
	ai_vehicle_reserve_seat (unit_get_vehicle(player1), "warthog_p", false);
	ai_vehicle_reserve_seat (unit_get_vehicle(player2), "warthog_p", false);
	ai_vehicle_reserve_seat (unit_get_vehicle(player3), "warthog_p", false);
	sleep_until (player_in_vehicle (chop_gauss_waiting));
	ai_vehicle_reserve_seat (chop_gauss_waiting, "warthog_d", false);
	ai_vehicle_reserve_seat (chop_gauss_waiting, "warthog_p", false);
end

script static void end_td_use()
	sleep (30 * 10);
		ai_kill_silent (bt_sq);
		td_disabled = true;
		unit_drop_weapon(td_user, m40_lakeside_target_laser, 1);
		weapon_target_designator_hide_hud();
		print ("TD USE ENDED");
end

script static void prechopper_ai_kills()
	thread (tv_prechopper_04_kills());
	thread (tv_prechopper_02_kills());
	thread (prechopper_crate_destroys_01());
	ai_erase (sq_ridge_re);
end

script static void prechopper_crate_destroys_01()
	sleep_until (not (volume_test_players (tv_prechopper_safe_re))
	and
	not (volume_test_players (tv_prechopper_04))
	and
	not (volume_test_players_lookat (tv_prechopper_safe_re, 3000, 40))
	and
	not (volume_test_players_lookat (tv_prechopper_04, 3000, 40)));
	object_destroy_folder (prechopper_crates);
end

script static void tv_prechopper_04_kills()
	sleep_until (not (volume_test_players_lookat (tv_prechopper_04, 3000, 40)));
	unit_kill_list_silent (volume_return_objects (tv_prechopper_04));
	print ("tv_prechopper_04 killed");
end

script static void tv_prechopper_02_kills()
	sleep_until (not (volume_test_players_lookat (tv_prechopper_02, 3000, 40)));
	unit_kill_list_silent (volume_return_objects (tv_prechopper_02));
	print ("tv_prechopper_02 killed");
end

script dormant lich_pre_attack_scripts()
	sleep_until (volume_test_players (tv_jetpack_help), 1);
	game_save_no_timeout();
end

script dormant player_onboard_lich_flight_loop()
	sleep_until (volume_test_players (tv_lich_bottom)
	or
	volume_test_players (tv_lich_middle_01)
	or
	volume_test_players (tv_lich_middle_02)
	);
	player_in_lich = true;
	wake (player_onboard_lich_killswitch);
	sleep_s(10);
	print ("onboard lich flight loop"); 
	lich_boarded_state = true;
	
	sound_looping_start ('sound\environments\solo\m040\new_m40_tags\amb_m40_machines\ambience\amb_m40_lich_int', NONE, 1);
	
	lichy->grav_lift_up_active (false);
	print ("grav lift off");
	ai_braindead (chop_lich, false);
	
	if
		lich_alive_state == TRUE
	then
		cs_run_command_script (chop_lich.driver, player_onboard_lich_flight_loop_cs);
	end

	sleep_forever (jetpack_into_lich_guy1);
	sleep_forever (jetpack_into_lich_guy2);
end

script command_script player_onboard_lich_flight_loop_cs()
//	lichy->grav_lift_up_active (true);
//	lichy->grav_lift_door_state_open_set (true);
//	print ("GRAV LIFT GOING UP");
	lichy->grav_lift_up_active (false);
	print ("grav lift off");
	repeat
		cs_vehicle_speed (.2);

		if
			lich_alive_state == TRUE
		then	
			if
				volume_test_players (tv_lich_entire)
			then
				cs_fly_by (lich_entrance_pt.p23);
				print ("in loop, p23"); 
			else
				print ("player fell out, landing");
				cs_vehicle_speed (.4);
				cs_face (chop_lich.driver, true, lich_entrance_pt.p5);
				cs_fly_to_and_face (chop_lich.driver, 1, lich_entrance_pt.p26, lich_entrance_pt.p5);
				cs_fly_to_and_face (chop_lich.driver, 1, lich_entrance_pt.p4, lich_entrance_pt.p5);	
				lichy->grav_lift_up_active (true);
				lichy->grav_lift_door_state_open_set (true);
				print ("GRAV LIFT GOING UP");
				sleep_until (1 == 0
				or
				lich_alive_state == false
				);	
			end
		else
			print ("do nothing");
		end

		if
			lich_alive_state == TRUE
		then			
			if
				volume_test_players (tv_lich_entire)
			then
				cs_fly_by (lich_entrance_pt.p18);
				print ("in loop, p18"); 
			else
				print ("player fell out, landing");
				cs_vehicle_speed (.4);
				cs_face (chop_lich.driver, true, lich_entrance_pt.p5);
				cs_fly_to_and_face (chop_lich.driver, 1, lich_entrance_pt.p26, lich_entrance_pt.p5);
				cs_fly_to_and_face (chop_lich.driver, 1, lich_entrance_pt.p4, lich_entrance_pt.p5);	
				lichy->grav_lift_up_active (true);
				lichy->grav_lift_door_state_open_set (true);
				print ("GRAV LIFT GOING UP");
				sleep_until (1 == 0
				or
				lich_alive_state == false
				);	
			end
		else
			print ("do nothing");
		end
		
		if
			lich_alive_state == TRUE
		then					
			if
				volume_test_players (tv_lich_entire)
			then
				cs_fly_by (lich_entrance_pt.p15);
				print ("in loop, p15"); 
			else
				print ("player fell out, landing");
				cs_vehicle_speed (.4);
				cs_face (chop_lich.driver, true, lich_entrance_pt.p5);
				cs_fly_to_and_face (chop_lich.driver, 1, lich_entrance_pt.p26, lich_entrance_pt.p5);
				cs_fly_to_and_face (chop_lich.driver, 1, lich_entrance_pt.p4, lich_entrance_pt.p5);	
				lichy->grav_lift_up_active (true);
				lichy->grav_lift_door_state_open_set (true);
				print ("GRAV LIFT GOING UP");
				sleep_until (1 == 0
				or
				lich_alive_state == false
				);	
			end
		else
			print ("do nothing");
		end
		
		if
			lich_alive_state == TRUE
		then			
			if
				volume_test_players (tv_lich_entire)
			then
				cs_fly_by (lich_entrance_pt.p9);
				print ("in loop, p9"); 
			else
				print ("player fell out, landing");
				cs_vehicle_speed (.4);
				cs_face (chop_lich.driver, true, lich_entrance_pt.p5);
				cs_fly_to_and_face (chop_lich.driver, 1, lich_entrance_pt.p26, lich_entrance_pt.p5);
				cs_fly_to_and_face (chop_lich.driver, 1, lich_entrance_pt.p4, lich_entrance_pt.p5);	
				lichy->grav_lift_up_active (true);
				lichy->grav_lift_door_state_open_set (true);
				print ("GRAV LIFT GOING UP");
				sleep_until (1 == 0
				or
				lich_alive_state == false
				);	
			end	
		else
			print ("do nothing");
		end
			
	until (lich_alive_state == false);
end

script dormant player_onboard_lich_killswitch()
	sleep_until (lich_alive_state == false);
	sleep_forever (player_onboard_lich_flight_loop);
	ai_braindead (chop_lich, true);
	sleep_s(1);	
	ai_braindead (chop_lich, false);
	print ("lich about to be told to blow up");
	lichy->grav_lift_down_active (true);
	lichy->grav_lift_door_state_open_set (true);
	object_set_function_variable (lichy, gravlift_fx_down, 0, 1);
	print ("GRAV LIFT GOING DOWN FOR PLAYER ESCAPE");	
	sleep_s(2);
	object_set_function_variable (lichy, gravlift_fx_down, 0, 1);
end

script static void chopper_player_leave_dialogue()
	sleep_until (volume_test_players (playerkill_soft_post_chopper)
	or
	lich_alive_state == false);
	if 
		lich_alive_state == true
	then
		thread (m40_palmer_off_map_nudge());
	end
end

script command_script it_is_a_good_day_to_die_cs()
	print ("lich going to blow up");

	object_damage_damage_section (lichy, "default", 1500); 
	
	print ("Lichy Health -1500");
	
	effect_new_on_object_marker(objects\vehicles\covenant\storm_lich\fx\lich_damage\lich_spark_shield.effect, lichy, "lich_top_entrance" ); print ("sparks ON");
		
	print ("lich going to blow up");
	cs_vehicle_speed (.5);

	sleep(1);

	object_set_function_variable (lichy, gravlift_fx_down, 0, 1);

	effect_new_on_object_marker(objects\vehicles\covenant\storm_lich\fx\lich_damage\lich_spark_shield.effect, lichy, "lich_top_entrance" ); print ("sparks ON");
	
	thread (lich_time_for_pup_sc());

	cs_fly_to_and_face (lich_entrance_pt.p29, lich_entrance_pt.p24);
	effect_new_on_object_marker(objects\vehicles\covenant\storm_lich\fx\lich_damage\lich_spark_shield.effect, lichy, "lich_top_entrance" ); print ("sparks ON");
	effect_new_on_object_marker(objects\vehicles\covenant\storm_lich\fx\lich_damage\lich_spark_shield.effect, lichy, "lich_top_entrance" ); print ("sparks ON");
	
	print ("lich arrived at final point in explosion path");
	cs_vehicle_speed (.7);

	effect_new_on_object_marker(objects\vehicles\covenant\storm_lich\fx\lich_damage\lich_spark_shield.effect, lichy, "lich_top_entrance" ); print ("sparks ON");
	
	cs_fly_to_and_face (lich_entrance_pt.p24, lich_entrance_pt.p30);
	
	print ("lich arrived at final point in explosion path");

	effect_new_on_object_marker(objects\vehicles\covenant\storm_lich\fx\lich_damage\lich_spark_shield.effect, lichy, "lich_top_entrance" ); print ("sparks ON");
	
	lichy->grav_lift_down_active (false);
	lichy->grav_lift_door_state_open_set (false);
	print ("GRAV LIFT OFF FROM PLAYER ESCAPE");	

end

script static void lich_time_for_pup_sc()
	sleep_until (volume_test_object (tv_lich_time_for_pup, lichy), 1);

	objects_attach (lichy, "", lich_octopus, "");

//	sleep(1);

	objects_detach (lichy, lich_octopus);
	
	pup_play_show (lich_crash_pup);

	print ("************** LICH PUPPETEER CRASH **************");	

	sleep_s (9);

	unit_kill_list_silent (volume_return_objects (tv_lich_entire));
	
	if 
		volume_test_object (tv_lich_entire, player0)
	then
		unit_kill (player0);
	end

	if 
		volume_test_object (tv_lich_entire, player1)
	then
		unit_kill (player1);
	end
	
	if 
		volume_test_object (tv_lich_entire, player2)
	then
		unit_kill (player2);
	end
	
	if 
		volume_test_object (tv_lich_entire, player3)
	then
		unit_kill (player3);
	end	
	
	print ("************** LICH INTERIOR UNITS KILLED **************");	
	
	sleep (1);	
	thread (lich_explosion_debris());
//	thread (erase_chop_lich_sc());
//	print ("lich erased");
	ai_kill (upper_patrol_left);
	ai_kill (core_guard);
	ai_kill (lower_side_defense);
	ai_kill (lich_stairwell_guard);
	ai_kill (lower_patrol);
	ai_kill (lich_pilot_sq);
//	print ("lich patrols were killed");
	lich_exploded = true;
	soft_ceiling_enable ("chop_forwardtrack_01", false);

	zone_set_trigger_volume_enable("zone_set:zone_set_chopper_bowl:*", FALSE);
	zone_set_trigger_volume_enable("begin_zone_set:zone_set_waterfall_pre_vale:*", TRUE);
	zone_set_trigger_volume_enable("zone_set:zone_set_waterfall_pre_vale:*", TRUE);

//	sleep (30 * 5);	
//	wake (M40_chopper_go_to_citadel);	
end

script static void erase_chop_lich_sc()
	ai_erase (chop_lich);
end

script static void lich_explosion_debris()
	thread (camera_shake_one());
	
	sound_impulse_start( 'sound\environments\solo\m040\new_m40_tags\amb_m40_machines\amb_m40_lich_ride_power_core_ship_explode', chop_lich, 1);
	
//	effect_new (environments\solo\m10_crash\fx\designer_effects\emergency_light_red.effect, flag_lich03_explo_02 );
//	effect_new (environments\solo\m10_crash\fx\explosions\explosion_brk_eal_large.effect, chop_lich_explo_01 );
//	effect_new (environments\solo\m10_crash\fx\fire\fire_calmly_burning.effect, flag_lich03_explo_02 );
//	sleep (30 * .5 );
//	effect_new (environments\solo\m10_crash\fx\explosions\explosion_brk_eal_large.effect, chop_lich_explo_02 );
//	object_create (lich_debris_phantom_01);
//	object_create (lich_debris_phantom_02);
//	object_create (lich_debris_phantom_03);
//	object_create (lich_debris_phantom_04);
//	object_damage_damage_section (lich_debris_phantom_01, "body", 5000);
//	object_damage_damage_section (lich_debris_phantom_02, "body", 5000);
//	object_damage_damage_section (lich_debris_phantom_03, "body", 5000);
//	object_damage_damage_section (lich_debris_phantom_04, "body", 5000);
//	effect_new (environments\solo\m10_crash\fx\explosions\explosion_brk_eal_large.effect, chop_lich_explo_03 );
//	sleep (30 * .5 );
//	effect_new (environments\solo\m10_crash\fx\explosions\explosion_brk_eal_large.effect, chop_lich_explo_04 );
//	sleep (30 * .5 );
//	effect_new (environments\solo\m10_crash\fx\explosions\explosion_brk_eal_large.effect, chop_lich_explo_05 );
//	unit_kill_list_silent (volume_return_objects (tv_lich_entire));

//	effect_new_on_object_marker(objects\vehicles\covenant\storm_lich\fx\lich_explosion\lich_explode_large.effect, lichy, "power_core" );
	if
		object_valid (lichy)
	then
		print ("lich still valid");
	end
	print ("Phantom debris EXPLOSION created");
end

script dormant lich_escape()
	sleep (30 * 5);
	wake (m40_lich_going_to_blow);
	sleep (30 * 10);
end

script static void lich_grav_lift()
	sleep_s(5);
	
		lichy->grav_lift_up_active (true);
		lichy->grav_lift_door_state_open_set (true);
		print ("*************!!!!!!!!!!!GRAV LIFT GOING UP FOREVER!!!!!!!!!!!*************");
end

script static void tv_chop_side_entire_kills()
	sleep_until (not (volume_test_players_lookat (tv_chop_side_entire, 3000, 40))
	and
	not (volume_test_players (tv_chop_side_entire)));
	unit_kill_list_silent (volume_return_objects (tv_chop_side_entire));
	print ("tv_lich_hilltop_kills killed");
end

script static void tv_lich_hilltop_kills()
	sleep_until (not (volume_test_players_lookat (tv_hilltop_front_entire, 3000, 40))
	and
	not (volume_test_players (tv_hilltop_front_entire)));
//	unit_kill_list_silent (volume_return_objects (tv_hilltop_front_entire));
	thread (objects_destroy_all_in_volume (tv_hilltop_front_entire));
	print ("tv_lich_hilltop_kills killed");
end

script static void tv_chop_lower_entire_kills()
	sleep_until (not (volume_test_players_lookat (tv_chop_lower_entire, 3000, 40))
	and
	not (volume_test_players (tv_chop_lower_entire)));
	thread (objects_destroy_all_in_volume (tv_hilltop_front_entire));
	sleep_until (master_object_list_count <= 0, 1);
	unit_kill_list_silent (volume_return_objects (tv_hilltop_front_entire));
	print ("tv_lich_hilltop_kills killed");
	thread (objects_destroy_all_in_volume_chop (tv_chop_lower_entire, 26));
	sleep_until (master_object_list_count <= 0, 1);
	thread (objects_destroy_all_in_volume_chop (tv_chop_lower_entire, 18));	
	sleep_until (master_object_list_count <= 0, 1);
	thread (objects_destroy_all_in_volume_chop (tv_chop_lower_entire, 29));	

	sleep_until (master_object_list_count <= 0, 1);
	thread (objects_destroy_all_in_volume_chop (tv_chop_lower_entire_right, 26));
	sleep_until (master_object_list_count <= 0, 1);
	thread (objects_destroy_all_in_volume_chop (tv_chop_lower_entire_right, 18));	
	sleep_until (master_object_list_count <= 0, 1);
	thread (objects_destroy_all_in_volume_chop (tv_chop_lower_entire_right, 29));	

	sleep_until (master_object_list_count <= 0, 1);
	thread (objects_destroy_all_in_volume_chop (tv_chop_lower_entire_rear, 26));
	sleep_until (master_object_list_count <= 0, 1);
	thread (objects_destroy_all_in_volume_chop (tv_chop_lower_entire_rear, 18));	
	sleep_until (master_object_list_count <= 0, 1);
	thread (objects_destroy_all_in_volume_chop (tv_chop_lower_entire_rear, 29));	


end

script static void tv_chop_front_entire_kills()
	sleep_until (not (volume_test_players_lookat (tv_hilltop_front_entire, 3000, 40))
	and
	not (volume_test_players (tv_hilltop_front_entire)));
	unit_kill_list_silent (volume_return_objects (tv_hilltop_front_entire));
	print ("tv_lich_hilltop_kills killed");
end

//script static void my_lich_fx()
//	repeat
//		print ("GRAV LIFT GOING UP");
//		lichy->grav_lift_down_active (false);
//		lichy->grav_lift_up_active (true);
//		sleep_s (10);
//		print ("GRAV LIFT GOING DOWN");
//		lichy->grav_lift_up_active (false);
//		lichy->grav_lift_down_active (true);
//	until (1 == 0);
//end

script static void lich_sound_effects()
	sound_looping_start_marker ('sound\environments\solo\m040\new_m40_tags\amb_m40_machines\m40_lich_destruction_warning_lp', lichy, "", 1);
	
	// stop the regular looping sound and switch to the damaged version
	sound_looping_stop ('sound\environments\solo\m040\new_m40_tags\amb_m40_machines\ambience\amb_m40_lich_int');
	sound_looping_start_marker ('sound\environments\solo\m040\new_m40_tags\amb_m40_machines\ambience\amb_m40_lich_int_damaged', lichy, "power_core", 1);

	sound_impulse_start('sound\environments\solo\m040\vins\m40_vin_lich_explode', lichy, 1);
	sleep_until (not (object_valid (lichy)));
	
	//call klaxon out here
	
	sound_looping_stop ('sound\environments\solo\m040\new_m40_tags\amb_m40_machines\m40_lich_destruction_warning_lp');
	
end

script dormant blip_chopper_gun()
	sleep_until (volume_test_players (tv_chopper_blip_gun)
	or
	volume_test_players (tv_chopper_05)
	, 1);
	if
		chopper_cannon_alive == true
	then
		f_blip_object (cannon_chopper_new, "neutralize");
	end
	thread (chopper_cannon_safety_destruct());
end

script dormant complex_sleep_until_part2()

	sleep_s(4);
	
	cs_shoot (chop_lich, false);
	
	cs_fly_to_and_face (chop_lich.driver, 1, lich_entrance_pt.p27, lich_entrance_pt.p28);

	cs_vehicle_speed (chop_lich, .01);
	repeat
		begin_random
		
			begin
				if 
					chop_obj_state < 66
				then
					cs_fly_to_and_face (chop_lich.driver, 1, lich_new_flight_pt.p1, lich_new_flight_pt.p4);
					sleep_s(3);
					print ("in loop, p1,4"); 
				else
					print ("rushing to land"); 
				end
			end
			
			begin		
				if 
					chop_obj_state < 66
				then
					cs_fly_to_and_face (chop_lich.driver, 1, lich_new_flight_pt.p1, lich_new_flight_pt.p0);
					sleep_s(4);	
					print ("in loop, p1,0");
				else
					print ("rushing to land"); 
				end
			end

			begin					
				if 
					chop_obj_state < 66
				then
					cs_fly_to_and_face (chop_lich.driver, 1, lich_new_flight_pt.p2, lich_new_flight_pt.p0);
					sleep_s(3);	
					print ("in loop, p2,0");
				else
					print ("rushing to land"); 
				end
			end

			begin					
				if 
					chop_obj_state < 66
				then
					cs_fly_to_and_face (chop_lich.driver, 1, lich_new_flight_pt.p2, lich_new_flight_pt.p4);
					sleep_s(3);	
					print ("in loop, p2,4");
				else
					print ("rushing to land"); 
				end
			end

			begin					
				if 
					chop_obj_state < 66
				then
					cs_fly_to_and_face (chop_lich.driver, 1, lich_new_flight_pt.p3, lich_new_flight_pt.p0);
					sleep_s(4);	
					print ("in loop, p3,0");
				else
					print ("rushing to land"); 
				end
			end

			begin					
				if 
					chop_obj_state < 66
				then
					cs_fly_to_and_face (chop_lich.driver, 1, lich_new_flight_pt.p0, lich_new_flight_pt.p4);
					sleep_s(5);	
					print ("in loop, p0,4");
				else
					print ("rushing to land"); 
				end
			end
				
		end
	until (chop_obj_state > 65);
	
	f_unblip_object (chop_gauss_waiting);

	sound_impulse_start('sound\environments\solo\m040\new_m40_tags\amb_m40_ships\amb_m40_chopper_lich_hover', chop_lich, 1);
	cs_fly_to_and_face (chop_lich.driver, 1, lich_entrance_pt.p26, lich_entrance_pt.p5);
//	sound_impulse_start ('sound\environments\solo\m040\new_m40_tags\amb_m40_machines\amb_m40_lich_ride_power_core_shield_down', object_at_marker( lichy, "power_core" ), 1);

	cs_fly_to_and_face (chop_lich.driver, 1, lich_entrance_pt.p4, lich_entrance_pt.p5);
	
	ai_braindead(chop_lich, true);
	wake (lich_interior_obj_state_sc); // watch location of player in lich
	wake (lich_interior_sound_state);
	lichy->grav_lift_down_active (true);
	lichy->grav_lift_door_state_open_set (true);
	print ("old complex sleep until is sleeping forever"); 


	if
		not (volume_test_players (tv_lich_entire))
	then
		ai_place (hilltop_defense_01);
		sleep (30 * 3);
	end

	if
		not (volume_test_players (tv_lich_entire))
	then	
		thread (spawn_hilltop_defense_02());
	end	
	
	if
		not (volume_test_players (tv_lich_entire))
	then
		ai_place (hilltop_defense_turret_01);
		sleep (30 * 3);
	end
	
	if
		not (volume_test_players (tv_lich_entire))
	then
		ai_place (hilltop_defense_turret_02);
		sleep (30 * 3);
	end	

	if
		not (volume_test_players (tv_lich_entire))
	then	
		ai_place (hilltop_defense_03);
		sleep (30 * 3);
	end	

	if
		not (volume_test_players (tv_lich_entire))
	then
		ai_place (hilltop_defense_03_elite);
		thread (spawn_onboard_lich_sq());
		print ("lich squads placed"); 
	end

	if
		not (volume_test_players (tv_lich_entire))
	then
		thread (spawn_hilltop_central());
		ai_place (hilltop_defense_elite);
		sleep (30 * 3);
	end	
	
	thread (lich_grav_lift());
	
	lich_rest_state = 10;

	game_save_no_timeout();

	lich_rest_state = 20;

	sleep (30 * 2);

	wake (M40_chopper_lich_over_mound);
	thread (blip_lich());
	
//	wake (chop_marine_jetpackers_spawn);
	
	wake (chopper_hilltop_checkpoint);

end

script static void spawn_hilltop_central()
	sleep_until (ai_living_count (hilltop_defense) < 4
	and
	not (volume_test_players_lookat (tv_spawn_chop_central_hill, 3000, 40)));
	if
		player_in_lich == FALSE
	then
		ai_place (hilltop_central);
		print ("hilltop_central guys made it in"); 
	else
		print ("hilltop_central guys did NOT MAKE IT IN"); 
	end
end

script static void spawn_hilltop_defense_02()
	sleep_until (not (volume_test_players_lookat (tv_spawn_chop_hilltop_defense_02, 3000, 40)));
	if
		player_in_lich == FALSE
	then
		ai_place (hilltop_defense_02);
		print ("hilltop_defense_02 guys made it in"); 
	else
		print ("hilltop_defense_02 guys did NOT MAKE IT IN"); 
	end
end

script dormant chop_marine_jetpackers_spawn()
	sleep_until (not (volume_test_players_lookat (tv_spawn_lich_jetpackers, 3000, 60)));
	if
		(ai_living_count (marine_convoy) +
		ai_living_count (marine_convoy_02) + 
		ai_living_count (prechopper_marines_fill) < 4)
	then	
		ai_place (chop_marine_jetpackers);
		object_create (chopper_jetpackers_mongoose);
		ai_vehicle_enter_immediate (chop_marine_jetpackers.guy1, chopper_jetpackers_mongoose, "warthog_d");
		ai_vehicle_enter_immediate (chop_marine_jetpackers.guy2, chopper_jetpackers_mongoose, "warthog_g");
		print ("MARINES ARE GOING TO JETPACK INTO THE LICH!"); 
	else
		print ("too many marines, can't spawn jetpackers"); 	
	end
end

script dormant chopper_hilltop_checkpoint()
	sleep_until (volume_test_players (tv_chopper_hilltop), 1);
	game_save_no_timeout();
end

script static void blip_lich()
	sleep_until (unit_has_equipment (player0, objects\equipment\storm_jet_pack\storm_jet_pack_pve.equipment)
	or
	unit_has_equipment (player1, objects\equipment\storm_jet_pack\storm_jet_pack_pve.equipment)
	or
	unit_has_equipment (player2, objects\equipment\storm_jet_pack\storm_jet_pack_pve.equipment)
	or
	unit_has_equipment (player3, objects\equipment\storm_jet_pack\storm_jet_pack_pve.equipment)
	, 1);

	f_blip_object (object_at_marker (lichy, "power_core"), "recon");
	
	sleep_until (volume_test_players (tv_lich_entire), 1);
	
	f_unblip_object (object_at_marker (lichy, "power_core"));

	f_blip_object (object_at_marker (lichy, "power_core"), "neutralize");
	
//	f_blip_auto_object_trigger(object_at_marker (lichy, "power_core"), "neutralize", tv_lich_entire, true);
//
//	lich_blip_var = f_blip_auto_object_trigger(object_at_marker (lichy, "power_core"), "neutralize", tv_lich_entire, true);
//	
//	f_blip_auto_object_trigger(object_at_marker (lichy, "power_core"), "default", tv_lich_entire, false, lich_blip_var);
	
	print ("Lich blipped because at least one player has jetpack"); 		
end

script static void spawn_onboard_lich_sq()
	sleep_until (volume_test_players (tv_below_lich), 1);
	
//	thread (tv_lich_hilltop_kills());
//	thread (tv_chop_side_entire_kills());
	thread (tv_chop_lower_entire_kills());
//	thread (tv_chop_front_entire_kills());
	
	kill_script (chopper_main_script);

	ai_braindead (chop_lich, true);
	ai_place(lich_pilot_sq);
	ai_disregard(ai_actors(lich_pilot_sq), TRUE);
	ai_place(upper_patrol_left);
	ai_place(core_guard);
	ai_place(lower_side_defense);
	ai_place(lich_stairwell_guard);
	thread (lower_patrol_spawn());

//	object_create_folder (lich_crates);
end
	
script static void lower_patrol_spawn()
	sleep_until	(ai_living_count (hilltop_central) < 2);
	ai_place(lower_patrol);
end

script static void garbage_collect_chop()
	repeat
		sleep_until (volume_test_players (tv_tortoise_bottom_01), 1);
		garbage_collect_now();
		game_save_no_timeout();
		print ("garbage collected and saved"); 
		sleep_until (tort_done_in_mission == true
		or
		not (volume_test_players (tv_tortoise_bottom_01)), 1);
	until (tort_done_in_mission == true);
end

script dormant blip_sniper_rifles()
  sleep_until( volume_test_players(tv_waterfall_dialogue_03), 1);  
  game_insertion_point_unlock (7);
	sleep (30 * 8);
	if 
	(
	(not (unit_has_weapon (player0, objects\weapons\rifle\storm_sniper_rifle\storm_sniper_rifle.weapon))
	and
	player_valid (player0))
		
	or
	
	(not (unit_has_weapon (player1, objects\weapons\rifle\storm_sniper_rifle\storm_sniper_rifle.weapon))
	and
	player_valid (player1))	
	
	or
	
	(not (unit_has_weapon (player2, objects\weapons\rifle\storm_sniper_rifle\storm_sniper_rifle.weapon))
	and
	player_valid (player2))
		
	or
	
	(not (unit_has_weapon (player3, objects\weapons\rifle\storm_sniper_rifle\storm_sniper_rifle.weapon))
	and
	player_valid (player3))
	
	)
	then
		thread (refresh_snipers());
		sleep (30 * 1);
		f_blip_object ((object_at_marker ( main_mammoth, "crate_3fl_sniper_right")), "ordnance");
		f_blip_object ((object_at_marker ( main_mammoth, "crate_3fl_sniper_left")), "ordnance");
		print ("At least one player didn't have a sniper, so blipping them for a bit"); 
		
	if 
		game_coop_player_count() > 1
	then		
		thread (unblip_tort_snipers());
		sleep_until (volume_test_players (tv_careful_chief), 1);
	else
		sleep_until (unit_has_weapon (player_get_first_valid(), objects\weapons\rifle\storm_sniper_rifle\storm_sniper_rifle.weapon)
		or
		volume_test_players (tv_careful_chief), 1);
	end	
		f_unblip_object ((object_at_marker ( main_mammoth, "crate_3fl_sniper_left")));
		f_unblip_object ((object_at_marker ( main_mammoth, "crate_3fl_sniper_right")));
		wake (f_valley_blip);	
	else
		wake (f_valley_blip);	
		sleep_forever();
	end
end

script static void unblip_tort_snipers()
		sleep (30 * 10);
		f_unblip_object ((object_at_marker ( main_mammoth, "crate_3fl_sniper_left")));
		f_unblip_object ((object_at_marker ( main_mammoth, "crate_3fl_sniper_right")));
end

script static void refresh_snipers()
	object_destroy ((object_at_marker ( main_mammoth, "crate_3fl_sniper_right")));
	object_create (sniper_refresh_01);
	objects_attach (main_mammoth,  "crate_3fl_sniper_right", sniper_refresh_01, "");
	
	object_destroy ((object_at_marker ( main_mammoth, "crate_3fl_sniper_left")));
	object_create (sniper_refresh_02);
	objects_attach (main_mammoth,  "crate_3fl_sniper_left", sniper_refresh_02, ""); 
end

script dormant chopper_bypass_check()
	print ("CHOPPER BYPASS TEST IS RUNNING"); 
	sleep_until (prechop_recording_loaded == true
	and
	volume_test_players (tv_chopper_03), 1);
	if (volume_test_object (tv_prechopper_entire, main_mammoth))
		then 
		print ("player skipped ahead to chopper and tortoise is still in prechop, speeding it up");
		sleep_forever (prechopper_tortoise_recorded);
		sleep_forever (chopper_tort_ready);
		chopper_rollout_rdy	= true;
		print ("prechopper_tortoise_recorded SLEEP FOREVER");
		sleep(1);
		sleep_forever (prechopper_tortoise_recorded_insertion);
		if
			tort_bay_doors_opened == true
		then
			thread (close_tort_doors_prechopper_end());
		end	
		unit_recorder_pause (main_mammoth, false);
		sleep_s(1);
		unit_recorder_set_playback_rate (main_mammoth, 1.9);
		print ("TORT SPEED = 1.9");
				
//		sleep_until (volume_test_object (tv_tort_prechop_last_stop, main_mammoth));
	
		sleep_until (unit_recorder_get_time_position_seconds (main_mammoth) > 36, 1);
	
		print ("HIT!");
		
		unit_recorder_setup_for_unit (main_mammoth, tortoise_0716_e);
		print ("tortoise_0716_e loaded in fast mode");
		prechop_recording_loaded_2 = true;
		unit_recorder_play_and_blend (main_mammoth, 2);
		unit_recorder_pause (main_mammoth, true);
		tort_stopped = TRUE;
		
		wake (chop_tortoise_recorded);

		sleep_forever (chopper_bypass_check);
		else
		print ("player and tortoise are nearby in chopper, all is well with the world");
		sleep_forever (chopper_bypass_check);		
		end
end

script dormant chopper_obj_control_01()
	sleep_until (volume_test_players (tv_chopper_01), 1);
	chop_obj_state = 10;
	print ("chop_obj_state=10");
	
	sleep_until (chopper_cannon_alive == FALSE
	or
	volume_test_players (tv_chopper_02), 1);
	chop_obj_state = 20;
	print ("chop_obj_state=20");
	
	sleep_until (chopper_cannon_alive == FALSE
	or	
	volume_test_players (tv_chopper_03), 1);
	chop_obj_state = 30;
	print ("chop_obj_state=30");


	
	sleep_until (volume_test_players (tv_chopper_04)
	or
	volume_test_players (tv_chopper_05)
	, 1
	);
	chop_obj_state = 60;
	print ("chop_obj_state=60");	
	
	sleep_until (volume_test_players (tv_lich_entire), 1);
	chop_obj_state = 80;
	print ("chop_obj_state=80");	
	
	game_save_no_timeout();

	object_can_take_damage (object_at_marker (lichy, "power_core"));

//	if
//		lich_landed_at_chopper == TRUE
//		and
//		rgt_bool == false
//	then
		sleep_until (object_get_health( object_at_marker( lichy, "power_core" ) ) <= 0, 1
		);
		chop_obj_state = 90;
		print ("chop_obj_state=90");
		print ("++++++++++************ IF YOU SEE ME BEFORE YOU'VE SHOT THE LICH CORE THEN BUG NOW RIGHT NOW!!!!!+++++********");
		kill_volume_disable (playerkill_soft_post_chopper);
		game_save_cancel();
		wake (leave_chopper);
		wake (waterfall_pre_sq);
		wake (waterfall_tortoise_recorded);
		wake (M40_citadel_investigate);
		wake (blip_sniper_rifles);
		sleep (30 * 5);
	 	thread(f_mus_m40_e05_finish());
end

script static void chopper_marine_backup()
	sleep_until (
	(ai_living_count (marine_convoy) + 
	ai_living_count (marine_convoy_02) + 
	ai_living_count (prechopper_marines_fill)) < 2
	and
	ai_living_count (chop_lich) > 0
	and
	(not (volume_test_players_lookat (tv_chopper_marine_spawn, 3000, 40)))
	);
 	sleep (30 * 2);
//	begin_random_count(1)
//		begin
			ai_place (chop_marine_backup_01);
			print ("placed marine backup option 1");
//		 	sleep (30 * 9);
//			f_blip_ai (chop_marine_backup_01.hog_01_driver, "ordnance");
//			sleep (30 * 7);
//			f_unblip_ai (chop_marine_backup_01.hog_01_driver);
//		end
//		begin
//			ai_place (chop_marine_backup_02);
//			print ("placed marine backup option 2");
//			sleep (30 * 6);
//			f_blip_ai (chop_marine_backup_02.goose_01_driver, "ordnance");
//			sleep (30 * 7);
//			f_unblip_ai (chop_marine_backup_02.goose_01_driver);
//		end
//		begin
//			ai_place (chop_marine_backup_03);
//			print ("placed marine backup option 3");
//		 	sleep (30 * 9);
//			f_blip_ai (chop_marine_backup_03.hog_01_driver, "ordnance");
//			sleep (30 * 7);
//			f_unblip_ai (chop_marine_backup_03.hog_01_driver);
//		end
//		begin
//			ai_place (chop_marine_backup_04);
//			print ("placed marine backup option 4");
//			f_blip_ai (chop_marine_backup_04.hog_01_driver, "ordnance");
//			sleep (30 *20);
//			f_unblip_ai (chop_marine_backup_04.hog_01_driver);
//		end
//	end
//	thread (chopper_marine_backup_02());
end

script command_script chopper_backup_go_here_first()
	cs_go_to (chop_marines_pelican_01_pt.p3);
end

script command_script chopper_backup_go_here_first_2()
	cs_go_to (chop_marines_pelican_01_pt.p12);
end

script command_script chopper_backup_go_here_first_3()
	cs_go_to (chop_marines_pelican_01_pt.p13);
end

script static void blip_the_lich()
	f_blip_object (object_at_marker (lichy, "power_core"), "neutralize");
	sleep_until (object_get_health( object_at_marker( lichy, "power_core" ) ) <= 0, 1
	);

	// sound for shield disappearing
	sound_impulse_start ('sound\environments\solo\m040\new_m40_tags\amb_m40_machines\amb_m40_lich_ride_power_core_shield_down', object_at_marker( lichy, "power_core" ), 1);
	print ("lich power core health is less than 1");
	
//	sleep_until (object_get_health( object_at_marker( lichy, "power_core" ) ) <= 0, 1
//	);
//	
//	print ("lich power core health is greater than 1???");
end

//--------------------chopper bowl command scripts-------------------

script command_script chop_dead_marine_setup()
	ai_kill_silent (chop_dead_marines.guy1);
	ai_kill_silent (chop_dead_marines.guy2);
	pup_play_show ("chop_marine_bunker_pup");	
end

script command_script lich_shoot_tortoise2()
	cs_shoot_point (true, tort_top_patrol.p12);
	sleep_s(4);
	print ("lich fired at tortoise");
	object_set_function_variable (object_at_marker (main_mammoth, "turret_main_gun"), disabled, 1, 1);
	object_damage_damage_section (main_mammoth, "default", 2000);
	target_designator_disabled = true;
	thread (tort_health_low());
end

script static void tort_health_low()
	sleep_s(5);
	unit_set_current_vitality (main_mammoth, .1, .1);
end

script command_script lich_shoot_tortoise3()
	cs_shoot_point (true, chop_tortoise_pt.p17);
	sleep_s(4);
	print ("lich fired at tortoise2");
end

script command_script lich_entrance_with_complex_dormant()
	print ("lich entrance!");
	cs_vehicle_speed (1);
	cs_fly_to_and_face (misc_veh_pt.p12, misc_veh_pt.p14);
//	cs_shoot_point (true, tort_top_patrol.p12);
	wake (player_onboard_lich_flight_loop);
	cs_shoot_point (true, misc_veh_pt.p15);
	print ("lich fired at tortoise step 1");
	sleep_s(5);
	print ("lich fired at tortoise step 2");
	cs_shoot (false);
	object_set_function_variable (object_at_marker (main_mammoth, "turret_main_gun"), disabled, 1, 1);
	object_damage_damage_section (main_mammoth, "default", 2000);
	target_designator_disabled = true;
	cs_fly_to_and_face (lich_entrance_pt.p0, misc_veh_pt.p13);
	cs_vehicle_speed (1);
	print ("lich entrance p1");
	print ("lich fired at tortoise");
//	wake (complex_sleep_until_loop);
//	wake (complex_sleep_until_part2);
	cs_run_command_script (chop_lich, complex_sleep_until_part3);
end

script static void chop_hilltop_control()

	sleep_until (volume_test_players (tv_chopper_hilltop)
	or
	volume_test_players (tv_hilltop_defense)
	or
	volume_test_players (tv_lich_entire)
	or
	chop_obj_state > 65);
	
	player_approaching_hilltop = true;
	
	thread (player_at_lich_mound_sc());
	
	wake (chop_marine_jetpackers_spawn);

	wake (lich_pre_attack_scripts);
	sleep_until (object_get_health( object_at_marker( lichy, "power_core" ) ) <= 0, 1
	);

end

script static void chop_hilltop_control_2()
	sleep_until (lich_landed_at_chopper == true);
	sleep_until (volume_test_players (tv_chopper_hilltop)
	or
	volume_test_players (tv_hilltop_defense)
	or
	volume_test_players (tv_lich_entire));
	
	player_approaching_hilltop_after_battle = true;
end

script static void player_at_lich_mound_sc()
	sleep_until (volume_test_players (tv_chopper_hilltop));
	player_at_lich_mound = true;
end

script command_script complex_sleep_until_part3()
	print ("lich hover!");
	thread (chop_hilltop_control());
	thread (chop_hilltop_control_2());	
	cs_shoot (false);
	cs_vehicle_speed (.5);
	
	cs_fly_to (chop_lich.driver, 1, lich_new_entrance_pt.p0);	
//	cs_fly_to (chop_lich.driver, 1, lich_new_entrance_pt.p1);

	sound_impulse_start('sound\environments\solo\m040\new_m40_tags\amb_m40_ships\amb_m40_chopper_lich_hover', chop_lich, 1);
	cs_fly_to_and_face (chop_lich.driver, 1, lich_entrance_pt.p26, lich_entrance_pt.p5);

	if
		game_difficulty_get_real() == legendary
	then
		cs_fly_to_and_face (chop_lich.driver, 1, lich_entrance_pt.p31, lich_entrance_pt.p5);
		sleep_until (chop_obj_state > 65);
	end
	
	cs_vehicle_speed (.2);
	cs_fly_to_and_face (chop_lich.driver, 1, lich_entrance_pt.p4, lich_entrance_pt.p5);
	cs_vehicle_speed (.5);
		
	lich_landed_at_chopper = true;

	thread (lich_safety_destruct());
	
	ai_braindead(chop_lich, true);
	wake (lich_interior_obj_state_sc); // watch location of player in lich
	wake (lich_interior_sound_state);

//	sleep_until (chop_obj_state > 65);
//	sleep_until (player_approaching_hilltop == true);

	lichy->grav_lift_down_active (true);
	lichy->grav_lift_door_state_open_set (true);
	print ("old complex3 sleep until is sleeping forever");

	if
		not (volume_test_players (tv_lich_entire))
	then
		ai_place (hilltop_defense_01);
		sleep (30 * 3);
	end

	if
		chop_obj_state > 65
		and
		not (volume_test_players (tv_lich_entire))
	then	
		thread (spawn_hilltop_defense_02());
	end	
	
	if
		not (volume_test_players (tv_lich_entire))
	then
		ai_place (hilltop_defense_turret_01);
		sleep (30 * 3);
	end
	
	if
		not (volume_test_players (tv_lich_entire))
	then
		ai_place (hilltop_defense_turret_02);
		sleep (30 * 3);
	end	

	if
		not (volume_test_players (tv_lich_entire))
	then	
		ai_place (hilltop_defense_03);
		sleep (30 * 3);
	end	

	if
		not (volume_test_players (tv_lich_entire))
	then
		thread (spawn_hilltop_central());
		sleep (30 * 3);
	end	

	if
		chop_obj_state > 65
		and
		not (volume_test_players (tv_lich_entire))
	then
		ai_place (hilltop_defense_elite);
		sleep (30 * 3);
	end	
		
	if
		not (volume_test_players (tv_lich_entire))
	then
		ai_place (hilltop_defense_03_elite);
		thread (spawn_onboard_lich_sq());
		print ("lich squads placed"); 
	end
	
	thread (lich_grav_lift());
	
	lich_rest_state = 10;

	game_save_no_timeout();

	lich_rest_state = 20;

	sleep_until (volume_test_players (tv_chopper_hilltop)
	or
	volume_test_players (tv_hilltop_defense)
	or
	volume_test_players (tv_lich_entire)
	or
	chop_obj_state > 65);

	wake (M40_chopper_lich_over_mound);

	sleep (30 * 2);

	thread (blip_lich());
	
	wake (chopper_hilltop_checkpoint);
end

//script command_script lich_entrance_with_complex_dormant2()
//	print ("lich_entrance_with_complex_dormant2");
//	cs_fly_to_and_face (lich_test.p0, lich_test.p1);
//	print ("flew to point 0");
//end
//
//script command_script lich_shoot_test()
//	cs_shoot_point (true, misc_veh_pt.p15);
//	print ("1");
//	sleep_s(10);
//	print ("2");
//end

//script command_script chop_marines_backup_01_cs()
//	print ("chop_marines_backup_01 spawned");
//	vehicle_load_magic (ai_vehicle_get_from_spawn_point (chop_marine_pelican.driver), "pelican_lc", ai_vehicle_get_from_spawn_point  (chop_marine_gauss.hog_01_driver));
//	ai_vehicle_reserve_seat (ai_vehicle_get_from_spawn_point  (chop_marine_gauss.hog_01_driver), "warthog_d", true);
//	wake (unreserve_chopper_gauss);
//	sleep_s(5);
//	cs_fly_by (chop_marines_pelican_01_pt.p8); 
//	cs_fly_by (chop_marines_pelican_01_pt.p9); 
//	f_blip_ai (chop_marine_gauss.hog_01_driver, "ordnance");
//	cs_fly_to_and_face (chop_marines_pelican_01_pt.p10, chop_marines_pelican_01_pt.p11); 
//	sleep_s(1);
//	vehicle_unload (ai_vehicle_get (chop_marine_pelican.driver), "pelican_lc");
//	sleep_s(1);
//	wake (unblip_chop_gauss_get_in);
//	wake (unblip_chop_gauss_time);
//	cs_fly_by (chop_marines_pelican_01_pt.p7);
//	cs_fly_by (chop_marines_pelican_01_pt.p1);
//	cs_fly_by (chop_marines_pelican_01_pt.p0); 
//	cs_fly_by (chop_marines_pelican_01_pt.p5);
//	cs_fly_by (chop_marines_pelican_01_pt.p6);
//	ai_erase (chop_marine_pelican);
//end

script dormant unreserve_chopper_gauss()
	sleep_until (player_in_vehicle (ai_vehicle_get_from_spawn_point  (chop_marine_gauss.hog_01_driver)));
	ai_vehicle_reserve_seat (ai_vehicle_get_from_spawn_point  (chop_marine_gauss.hog_01_driver), "warthog_d", false);
	print ("chopper gauss hog unreserved");
	sleep (30 * 10);	
end

script dormant unblip_chop_gauss_get_in()
	sleep_until (player_in_vehicle (ai_vehicle_get_from_starting_location (chop_marine_gauss.hog_01_driver))
	or
	ai_in_vehicle_count (chop_marine_gauss) < 1
	);
	f_unblip_ai (chop_marine_gauss.hog_01_driver);
end

script dormant unblip_chop_gauss_time()
	sleep_s(20);
	f_unblip_ai (chop_marine_gauss.hog_01_driver);
end

script command_script chop_phantom_01_cs()
	print ("phantom spawned");
	sound_impulse_start('sound\environments\solo\m040\new_m40_tags\amb_m40_ships\amb_m40_phantom1_spawn', chop_phantom_01_sq, 1);
//	cs_vehicle_speed (1);
	cs_fly_by (chop_phantom_01_pt.p0); 
	cs_fly_by (chop_phantom_01_pt.p1); 
	
	cs_fly_to_and_face (chop_phantom_01_pt.p2, chop_phantom_01_pt.p3); 
	vehicle_unload (ai_vehicle_get (ai_current_actor), "phantom_sc01");
	vehicle_unload (ai_vehicle_get (ai_current_actor), "phantom_sc02");
	
	sound_impulse_start('sound\environments\solo\m040\new_m40_tags\amb_m40_ships\amb_m40_phantom1_takeoff', chop_phantom_01_sq, 1);
	cs_fly_by (chop_phantom_01_pt.p4);
	cs_fly_by (chop_phantom_01_pt.p5); 
	cs_fly_by (chop_phantom_01_pt.p6);
	cs_fly_by (chop_phantom_01_pt.p7);
	object_destroy (ai_vehicle_get(ai_current_actor));
end

script command_script chop_phantom_02_cs()
	sound_impulse_start('sound\environments\solo\m040\new_m40_tags\amb_m40_ships\amb_m40_phantom2_spawn', chop_phantom_02_sq, 1);
	cs_fly_by (chop_phantom_02_pt.p10);
//	cs_fly_to_and_face (chop_phantom_02_pt.p0, chop_phantom_02_pt.p1); 
	cs_fly_by (chop_phantom_02_pt.p3);
	vehicle_unload (ai_vehicle_get (ai_current_actor), "phantom_sc01");
	vehicle_unload (ai_vehicle_get (ai_current_actor), "phantom_sc02");
	
	sound_impulse_start('sound\environments\solo\m040\new_m40_tags\amb_m40_ships\amb_m40_phantom2_takeoff', chop_phantom_02_sq, 1);
	cs_fly_by (chop_phantom_02_pt.p8);
	cs_fly_by (chop_phantom_02_pt.p9);
	cs_fly_by (chop_phantom_02_pt.p5); 
	cs_fly_by (chop_phantom_02_pt.p6);
	cs_fly_by (chop_phantom_02_pt.p7);
	object_destroy (ai_vehicle_get(ai_current_actor));
end

script command_script chop_phantom_03_cs()
	sound_impulse_start('sound\environments\solo\m040\new_m40_tags\amb_m40_ships\amb_m40_phantom3_spawn', chop_phantom_03_sq, 1);
	cs_vehicle_speed (1);
	cs_vehicle_boost (true);
	cs_fly_by (chop_phantom_03_pt.p1); 
	cs_fly_by (chop_phantom_03_pt.p2);
	vehicle_unload (ai_vehicle_get (ai_current_actor), "phantom_sc01");
	vehicle_unload (ai_vehicle_get (ai_current_actor), "phantom_sc02");
	vehicle_unload (ai_vehicle_get (ai_current_actor), "phantom_lc");
	sound_impulse_start('sound\environments\solo\m040\new_m40_tags\amb_m40_ships\amb_m40_phantom3_takeoff', chop_phantom_03_sq, 1);
	cs_fly_by (chop_phantom_03_pt.p3); 
	cs_fly_by (chop_phantom_03_pt.p4);
	cs_fly_by (chop_phantom_03_pt.p5);
	cs_fly_by (chop_phantom_03_pt.p6);
	object_destroy (ai_vehicle_get(ai_current_actor));
end

script command_script chop_phantom_04_cs()
	sound_impulse_start('sound\environments\solo\m040\new_m40_tags\amb_m40_ships\amb_m40_phantom4_spawn', chop_phantom_04_sq, 1);
	cs_vehicle_speed (1);
	cs_vehicle_boost (true);
	cs_fly_by (chop_phantom_04_pt.p1); 
	cs_fly_by (chop_phantom_04_pt.p2);
	cs_fly_by (chop_phantom_04_pt.p3); 
	vehicle_unload (ai_vehicle_get (ai_current_actor), "phantom_sc01");
	vehicle_unload (ai_vehicle_get (ai_current_actor), "phantom_sc02");
	sound_impulse_start('sound\environments\solo\m040\new_m40_tags\amb_m40_ships\amb_m40_phantom4_takeoff', chop_phantom_04_sq, 1);
	cs_fly_by (chop_phantom_04_pt.p4);
	cs_fly_by (chop_phantom_04_pt.p5);
	cs_fly_by (chop_phantom_04_pt.p6);
	object_destroy (ai_vehicle_get(ai_current_actor));
end

script command_script chop_phantom_05_cs()
	print ("phantom 5 spawned");
//	cs_vehicle_speed (1);
	sound_impulse_start('sound\environments\solo\m040\new_m40_tags\amb_m40_ships\amb_m40_phantom5_spawn', chop_phantom_05_sq, 1);
	cs_fly_by (chop_phantom_05_pt.p0);
	cs_fly_by (chop_phantom_05_pt.p1);
	cs_fly_by (chop_phantom_05_pt.p2);
	cs_fly_by (chop_phantom_05_pt.p10);
	vehicle_unload (ai_vehicle_get (ai_current_actor), "phantom_sc01");
	vehicle_unload (ai_vehicle_get (ai_current_actor), "phantom_sc02");
	sound_impulse_start('sound\environments\solo\m040\new_m40_tags\amb_m40_ships\amb_m40_phantom5_takeoff', chop_phantom_05_sq, 1);
	print ("phantom 5 unloaded vehicles");
	cs_fly_by (chop_phantom_05_pt.p11);
	cs_fly_by (chop_phantom_05_pt.p6);
	cs_fly_by (chop_phantom_05_pt.p7); 
	cs_fly_by (chop_phantom_05_pt.p12);
	print ("phantom 5 ABOUT TO TRY TO DELETE");
	object_destroy (ai_vehicle_get(ai_current_actor));
	print ("phantom 5 TRIED TO DELETE");
end

script command_script chop_phantom_06_cs()
	print ("phantom 6 spawned");
	sound_impulse_start('sound\environments\solo\m040\new_m40_tags\amb_m40_ships\amb_m40_phantom6_spawn', chop_phantom_06_sq, 1);
	cs_fly_by (chop_phantom_06_pt.p0);
	cs_fly_by (chop_phantom_06_pt.p1);
	cs_fly_by (chop_phantom_06_pt.p2);
	vehicle_unload (ai_vehicle_get (ai_current_actor), "phantom_sc01");
	vehicle_unload (ai_vehicle_get (ai_current_actor), "phantom_sc02");
//	cs_fly_to_and_face (chop_phantom_07_pt.p3, chop_phantom_07_pt.p4);
//	f_unload_phantom( chop_phantom_06_sq, "left" );	
	sound_impulse_start('sound\environments\solo\m040\new_m40_tags\amb_m40_ships\amb_m40_phantom6_takeoff', chop_phantom_06_sq, 1);
	cs_fly_by (chop_phantom_06_pt.p3);
	cs_fly_by (chop_phantom_06_pt.p4);
	cs_fly_by (chop_phantom_06_pt.p5); 
	object_destroy (ai_vehicle_get(ai_current_actor));
end

script command_script chop_phantom_07_cs()
	print ("phantom 7 spawned");
	sound_impulse_start('sound\environments\solo\m040\new_m40_tags\amb_m40_ships\amb_m40_phantom7_spawn', chop_phantom_07_sq, 1);
	cs_fly_by (chop_phantom_07_pt.p0);
	cs_fly_by (chop_phantom_07_pt.p1);
	cs_fly_by (chop_phantom_07_pt.p2);
	cs_fly_by (chop_phantom_07_pt.p5); 
	vehicle_unload (ai_vehicle_get (ai_current_actor), "phantom_lc");
	sound_impulse_start('sound\environments\solo\m040\new_m40_tags\amb_m40_ships\amb_m40_phantom7_takeoff', chop_phantom_07_sq, 1);
	cs_fly_by (chop_phantom_04_pt.p2); 
	cs_fly_by (chop_phantom_04_pt.p1); 
	cs_fly_by (chop_phantom_04_pt.p0); 
	cs_fly_by (chop_phantom_04_pt.p7); 
	object_destroy (ai_vehicle_get(ai_current_actor));
end

script command_script chop_phantom_08_cs()
	print ("phantom 8 spawned");
	sound_impulse_start('sound\environments\solo\m040\new_m40_tags\amb_m40_ships\amb_m40_phantom8_spawn', chop_phantom_08_sq, 1);
	cs_fly_by (chop_phantom_06_pt.p0);
	cs_fly_by (chop_phantom_06_pt.p1);
	cs_fly_by (chop_phantom_06_pt.p2);
	vehicle_unload (ai_vehicle_get (ai_current_actor), "phantom_sc01");
	vehicle_unload (ai_vehicle_get (ai_current_actor), "phantom_sc02");
	sound_impulse_start('sound\environments\solo\m040\new_m40_tags\amb_m40_ships\amb_m40_phantom8_takeoff', chop_phantom_08_sq, 1);
	cs_fly_by (chop_phantom_06_pt.p3);
	cs_fly_by (chop_phantom_06_pt.p4);
	cs_fly_by (chop_phantom_06_pt.p5); 
	object_destroy (ai_vehicle_get(ai_current_actor));
end

script command_script chop_phantom_09_cs()
	print ("phantom 9 spawned");
	sound_impulse_start('sound\environments\solo\m040\new_m40_tags\amb_m40_ships\amb_m40_phantom9_spawn', chop_phantom_09_sq, 1);
	cs_fly_by (chop_phantom_09_pt.p0);
	cs_fly_by (chop_phantom_09_pt.p1);
	cs_fly_by (chop_phantom_09_pt.p2);
	vehicle_unload (ai_vehicle_get (ai_current_actor), "phantom_lc");
	sound_impulse_start('sound\environments\solo\m040\new_m40_tags\amb_m40_ships\amb_m40_phantom9_takeoff', chop_phantom_09_sq, 1);
	cs_fly_by (chop_phantom_04_pt.p2); 
	cs_fly_by (chop_phantom_04_pt.p1); 
	cs_fly_by (chop_phantom_04_pt.p0); 
	cs_fly_by (chop_phantom_04_pt.p7); 
	object_destroy (ai_vehicle_get(ai_current_actor));
end

//script command_script chop_phantom_10_cs()
//	print ("phantom 10 spawned");
//	
//	ai_place (chop_marine_backup_02);
//	ai_place (chop_marine_backup_03);
//
//	vehicle_load_magic (ai_vehicle_get_from_spawn_point (chop_phantom_10_sq.driver), "phantom_sc01", ai_vehicle_get_from_starting_location  (chop_marine_backup_02.driver));
//	vehicle_load_magic (ai_vehicle_get_from_spawn_point (chop_phantom_10_sq.driver), "phantom_sc02", ai_vehicle_get_from_starting_location  (chop_marine_backup_03.hog_01_driver));
//
//	sound_impulse_start('sound\environments\solo\m040\new_m40_tags\amb_m40_ships\amb_m40_phantom9_spawn', chop_phantom_09_sq, 1);
//	cs_fly_by (chop_phantom_10_pt.p0);
//	cs_fly_by (chop_phantom_10_pt.p8);
//	cs_fly_by (chop_phantom_10_pt.p9);
//	vehicle_unload (ai_vehicle_get (chop_phantom_10_sq.driver), "phantom_sc01");
//	vehicle_unload (ai_vehicle_get (chop_phantom_10_sq.driver), "phantom_sc02");
//	sound_impulse_start('sound\environments\solo\m040\new_m40_tags\amb_m40_ships\amb_m40_phantom9_takeoff', chop_phantom_09_sq, 1);
//	cs_fly_by (chop_phantom_10_pt.p6); 
//	cs_fly_by (chop_phantom_10_pt.p10); 
//	ai_erase (chop_phantom_10_sq);
//end

script command_script lich_jetpackers_1()
	cs_go_to (misc_veh_pt.p6);
	ai_vehicle_exit (chop_marine_jetpackers.guy1);
	ai_vehicle_exit (chop_marine_jetpackers.guy2);
	ai_vehicle_reserve (chopper_jetpackers_mongoose, true);
	ai_set_objective (chop_marine_jetpackers, chop_marines_lich_obj);	
	wake (jetpack_into_lich_sc);
end

script command_script lich_jetpackers_2()
	cs_go_to (misc_veh_pt.p6);
end

script dormant jetpack_into_lich_sc()
	sleep_s (6);
	sleep_until (ai_task_count (hilltop_defense) < 1
	and
	volume_test_players (tv_chopper_hilltop), 1);
	print ("LICH MARINES MAKING THEIR JUMPS!");
	cs_run_command_script (chop_marine_jetpackers.guy1, jetpack_into_lich_guy1);
	cs_run_command_script (chop_marine_jetpackers.guy2, jetpack_into_lich_guy2);
end

script command_script jetpack_into_lich_guy1()
	cs_go_to (misc_veh_pt.p7);
	sleep_until (volume_test_players_lookat (tv_jetpack_help_lower, 500, 40)
	or
	volume_test_players (tv_lich_bottom)
	or
	volume_test_players (tv_lich_middle_01)
	or
	volume_test_players (tv_lich_middle_02)
	);	
	print ("Player is looking at jetpacking Marines JUMP 1");	
	cs_go_to (misc_veh_pt.p9);
	sleep_until (volume_test_players_lookat (tv_jetpack_help, 500, 40)
	or
	volume_test_players (tv_lich_bottom)
	or
	volume_test_players (tv_lich_middle_01)
	or
	volume_test_players (tv_lich_middle_02)
	);
	print ("Player is looking at jetpacking Marines JUMP 2");	
	ai_set_objective (chop_marine_jetpackers, chop_marines_lich_interior);
	cs_go_to (misc_veh_pt.p10);
end

script command_script jetpack_into_lich_guy2()
	cs_go_to (misc_veh_pt.p8);
	sleep_until (volume_test_players_lookat (tv_jetpack_help_lower, 500, 40)
	or
	volume_test_players (tv_lich_bottom)
	or
	volume_test_players (tv_lich_middle_01)
	or
	volume_test_players (tv_lich_middle_02)
	);	
	print ("Player is looking at jetpacking Marines JUMP 1");		
	cs_go_to (misc_veh_pt.p5);
	sleep_until (volume_test_players_lookat (tv_jetpack_help, 500, 40)
	or
	volume_test_players (tv_lich_bottom)
	or
	volume_test_players (tv_lich_middle_01)
	or
	volume_test_players (tv_lich_middle_02)
	);
	print ("Player is looking at jetpacking Marines JUMP 2");	
	ai_set_objective (chop_marine_jetpackers, chop_marines_lich_interior);
	cs_go_to (misc_veh_pt.p11);
	wake (lich_marines_fight);
end

script dormant lich_marines_fight()
	sleep_s (15);
	unit_only_takes_damage_from_players_team (ai_get_unit (chop_marine_jetpackers.guy1), true);
	unit_only_takes_damage_from_players_team (ai_get_unit (chop_marine_jetpackers.guy2), true);
	unit_only_takes_damage_from_players_team (ai_get_unit (lich_stairwell_guard.guy1), true);
//	unit_only_takes_damage_from_players_team (ai_get_unit (lich_stairwell_guard.guy2), true);
	unit_only_takes_damage_from_players_team (ai_get_unit (lower_side_defense.guy2), true);
	unit_only_takes_damage_from_players_team (ai_get_unit (lower_side_defense.guy3), true);
	unit_only_takes_damage_from_players_team (ai_get_unit (lower_patrol.guy1), true);
	unit_only_takes_damage_from_players_team (ai_get_unit (lower_patrol.guy2), true);
	unit_only_takes_damage_from_players_team (ai_get_unit (lower_patrol.guy3), true);
	unit_only_takes_damage_from_players_team (ai_get_unit (upper_patrol_right.guy1), true);
	unit_only_takes_damage_from_players_team (ai_get_unit (upper_patrol_left.guy1), true);
	unit_only_takes_damage_from_players_team (ai_get_unit (core_guard.guy2), true);
	unit_only_takes_damage_from_players_team (ai_get_unit (core_guard.guy3), true);
	print ("Marines playfighting in Lich");	
	sleep_until (volume_test_players (tv_lich_bottom)
	or
	volume_test_players (tv_lich_middle_01)
	or
	volume_test_players (tv_lich_middle_02)
	);	
	unit_only_takes_damage_from_players_team (ai_get_unit (chop_marine_jetpackers.guy1), false);
	unit_only_takes_damage_from_players_team (ai_get_unit (chop_marine_jetpackers.guy2), false);
	unit_only_takes_damage_from_players_team (ai_get_unit (lich_stairwell_guard.guy1), false);
//	unit_only_takes_damage_from_players_team (ai_get_unit (lich_stairwell_guard.guy2), false);
	unit_only_takes_damage_from_players_team (ai_get_unit (lower_side_defense.guy2), false);
	unit_only_takes_damage_from_players_team (ai_get_unit (lower_side_defense.guy3), false);
	unit_only_takes_damage_from_players_team (ai_get_unit (lower_patrol.guy1), false);
	unit_only_takes_damage_from_players_team (ai_get_unit (lower_patrol.guy2), false);
	unit_only_takes_damage_from_players_team (ai_get_unit (lower_patrol.guy3), false);
	unit_only_takes_damage_from_players_team (ai_get_unit (upper_patrol_right.guy1), false);
	unit_only_takes_damage_from_players_team (ai_get_unit (upper_patrol_left.guy1), false);
	unit_only_takes_damage_from_players_team (ai_get_unit (core_guard.guy2), false);
	unit_only_takes_damage_from_players_team (ai_get_unit (core_guard.guy3), false);
	ai_renew (chop_marine_jetpackers);
	ai_renew (lich_stairwell_guard);
	ai_renew (lower_side_defense);
	ai_renew (lower_patrol);
	ai_renew (upper_patrol_right);
	ai_renew (upper_patrol_left);
	ai_renew (core_guard);
	print ("Marines playtime is over");	
end

script static void lich_spartans_escape_1()
	sleep_until (not (objects_can_see_object (player0, chop_marine_jetpackers.guy1, 40))
	and
	not (objects_can_see_object (player1, chop_marine_jetpackers.guy1, 40))
	and
	not (objects_can_see_object (player2, chop_marine_jetpackers.guy1, 40))
	and
	not (objects_can_see_object (player3, chop_marine_jetpackers.guy1, 40))
	, 1);
	ai_erase (chop_marine_jetpackers.guy1);
end

script static void lich_spartans_escape_2()
	sleep_until (not (objects_can_see_object (player0, chop_marine_jetpackers.guy2, 40))
	and
	not (objects_can_see_object (player1, chop_marine_jetpackers.guy2, 40))
	and
	not (objects_can_see_object (player2, chop_marine_jetpackers.guy2, 40))
	and
	not (objects_can_see_object (player3, chop_marine_jetpackers.guy2, 40))
	, 1);
	ai_erase (chop_marine_jetpackers.guy2);
end

script dormant lich_interior_obj_state_sc()
	sleep_until (volume_test_players (tv_lich_bottom), 1);
	lich_interior_obj_state = 10;
	
	sleep_until (volume_test_players (tv_lich_middle_01), 1);
	lich_interior_obj_state = 20;
	
	sleep_until (volume_test_players (tv_lich_middle_02), 1);
	lich_interior_obj_state = 30;
end

script dormant lich_interior_sound_state()
	sound_set_state ('Set_state_player_outside_lich');

	// wait for the player to enter the first time
	sleep_until (volume_test_players (tv_lich_bottom), 1);
	
	// once the player enters the lich they can only go back and forth between the levels until they exit the lich entirely
	repeat
		if (volume_test_players (tv_lich_bottom)) then 
			sound_set_state ('Set_state_player_in_lich_bottom');
			sleep_until (not volume_test_players (tv_lich_bottom), 1);
		elseif (volume_test_players (tv_lich_middle_01) or volume_test_players (tv_lich_middle_02)) then
			sound_set_state ('Set_state_player_in_lich_middle');
			sleep_until (not (volume_test_players (tv_lich_middle_01) or volume_test_players (tv_lich_middle_02)), 1);
		end
		sleep (1);
		
	until (not volume_test_players (tv_lich_entire));
	sound_looping_stop( 'sound\environments\solo\m040\new_m40_tags\amb_m40_machines\ambience\amb_m40_lich_int_damaged');
	sound_set_state ('Set_state_player_outside_lich');
end

script command_script lich_entrance_ghost_run_sc()
	cs_vehicle_boost (true);
	cs_go_to (lich_entrance_pt.p7);
	cs_vehicle_boost (false);
end

script command_script lich_entrance_grunt_run_sc()
	cs_go_to (lich_entrance_pt.p8);
end

//script static void test_doors()
//	object_create (main_mammoth);
//	object_set_physics (main_mammoth, true);
//	custom_animation_hold_last_frame (main_mammoth, "objects\vehicles\human\storm_mammoth\storm_mammoth.model_animation_graph", "bay:doors:opening", false);
//end

script static void test_doors2()
	ai_place (chop_lich);
	ai_braindead (chop_lich, true);
	sleep_until (object_get_health( object_at_marker( lichy, "power_core" ) ) <= 0, 1
	);
	object_destroy (lichy);
end

script dormant chop_tortoise_recorded()
	print ("tortoise on chopper new recorded scripts");
//	sleep_until (volume_test_object (tv_tort_rec_chopper_pt0, main_mammoth));
	unit_recorder_set_playback_rate (main_mammoth, 1.2);	
	print ("TORT SPEED = 1.2");
//	unit_recorder_pause_smooth (main_mammoth, true, 2);
//	tort_stopped = TRUE;
	wake (prechop_tort_stop_timer);
	sleep_until (chop_obj_state > 19
	or
	volume_test_players (tv_tortoise_top_01)
	or
	volume_test_players (tv_tortoise_bottom_01)
	or
	volume_test_players (tv_tortoise_middle_01)
	);
	wake (m40_prechopper_done);
	sleep (30 * 3);
	unit_recorder_pause_smooth (main_mammoth, false, 2);
	tort_stopped = FALSE;
	thread (mam_dust_on());
//	sleep (30 * 2);
//	unit_recorder_set_playback_rate (main_mammoth, .7);	
//	print ("TORT SPEED = .7");
//	sleep_until (volume_test_object (tv_tort_rec_chopper_pt12, main_mammoth), 1);
//	print ("HIT!");
//	sleep (30 * 7);
//	sleep (30 * 3);	

	sleep_until (prechop_recording_loaded_2 == true);

//	sleep_until (not (volume_test_object (trigger_volumes_28, main_mammoth))
//	and
//	not (volume_test_object (tv_tort_rec_chopper_pt0, main_mammoth)), 1);

	sleep_until (volume_test_object (tv_chopper_blip_gun, main_mammoth), 1);

	unit_recorder_set_playback_rate (main_mammoth, .6);	
	print ("TORT SPEED = .6");

	sleep_until (unit_recorder_get_time_position_seconds (main_mammoth) > 28, 1);

	print ("HIT!!");

	unit_recorder_pause_smooth (main_mammoth, true, 2);
	tort_stopped = TRUE;
	thread (mam_dust_off());
	print ("Paused");

	unit_recorder_setup_for_unit (main_mammoth, tortoise_0716_f);
	unit_recorder_play_and_blend (main_mammoth, 2);
	unit_recorder_pause (main_mammoth, true);
	tort_stopped = TRUE;
	thread (mam_dust_off());
	print ("Next recording loaded");
	sleep_s (2);
	thread (open_tort_doors_chopper());
	tort_hogs_reserve_bool = false;
//	custom_animation_hold_last_frame (main_mammoth, "objects\vehicles\human\storm_mammoth\storm_mammoth.model_animation_graph", "bay:doors:opening", false);
//	
//	object_override_physics_motion_type(main_mammoth, 1);

	sleep_until (
	(volume_test_players (tv_chopper_hilltop)
	and
	lich_landed_at_chopper == true)
//	or
//	volume_test_players (tv_lich_entire)
	or
	chop_obj_state > 65);
		
//	object_override_physics_motion_type(main_mammoth, 2);

	if
		tort_bay_doors_opened == false
	then
		thread (open_tort_doors_chopper());
	end

	sleep_until (tort_bay_doors_opened == true);

	thread (close_tort_doors_chopper());
	
	sleep_until (tort_bay_doors_opened == false);

	unit_recorder_pause_smooth (main_mammoth, false, 2);
	tort_stopped = FALSE;
	thread (mam_dust_on());
//	custom_animation (main_mammoth, "objects\vehicles\human\storm_mammoth\storm_mammoth.model_animation_graph", "bay:doors:closing", false);

	tort_hogs_reserve_bool = true;

	unit_recorder_set_playback_rate_smooth (main_mammoth, .2, 2);		
	print ("TORT SPEED = .2");
	
	thread (new_tort_short_speed_test_2());

	thread (marines_exit_chop_vehicles());

	sleep_s (2);
	
	thread (reserve_mammoth_vehicles());

	thread (display_chapter_07());
	print ("chapter_07 displayed"); 
	
	f_unblip_object (chop_gauss_waiting);
	
	game_save_no_timeout();
	
	sleep_until (volume_test_object (tv_tort_rec_chopper_pt5, main_mammoth));

	ObjectOverrideNavMeshCutting(main_mammoth, true);
	ObjectOverrideNavMeshObstacle(main_mammoth, false);

	unit_recorder_pause_smooth (main_mammoth, true, 2);
	tort_stopped = TRUE;
	thread (mam_dust_off());

	sleep_until (lich_alive_state == false
//	and
//	chop_obj_state > 65
	);

	ai_set_objective (marine_convoy, mammoth_top_obj);
	ai_set_objective (marine_convoy_02, mammoth_top_obj);
	ai_set_objective (chop_marines_convoy, mammoth_top_obj);
	ai_set_objective (prechopper_convoy, mammoth_top_obj);

	sleep_until (lich_exploded == TRUE
//	and
//	chop_obj_state > 65
	);

	wake (M40_chopper_go_to_citadel);

	thread (blip_mam_progress());
	
	sleep_s (15);
		
	wake (waterfall_obj_state_sc);
	
		sleep_until	(
		(volume_test_players (tv_tortoise_top_01)
		or
		volume_test_players (tv_tortoise_middle_01)
		or
		volume_test_players (tv_tortoise_bottom_01)
		or
		volume_test_players (tv_chopper_06)
		), 1
		);
		thread (end_td_use_2());
		thread (new_tort_waterfalls_speed_test());

	f_unblip_flag (chop_mammoth_progress);

	ObjectOverrideNavMeshCutting(main_mammoth, false);
	ObjectOverrideNavMeshObstacle(main_mammoth, true);

		unit_recorder_pause_smooth (main_mammoth, false, 2);
		tort_stopped = FALSE;
		thread (mam_dust_on());

		
//	ai_set_objective (marine_convoy, waterfall_unsc_obj);
//	ai_set_objective (marine_convoy_02, waterfall_unsc_obj);
//	ai_set_objective (prechopper_marines, waterfall_unsc_obj);
//	ai_set_objective (chop_marines_backup_grp, waterfall_unsc_obj);
end

script static void blip_mam_progress()
	sleep_s (10);
	f_blip_flag (chop_mammoth_progress, "recon");
end

script static void end_td_use_2()
	if
		dm_mode1 == true
	then
		ai_kill_silent (bt_sq);
		td_disabled = true;
		unit_drop_weapon(td_user, m40_lakeside_target_laser, 1);
		weapon_target_designator_hide_hud();
	end	
end

script dormant chop_tortoise_recorded_ins()
//	print ("tortoise on chopper new recorded scripts");
	sleep_until (volume_test_players (tv_tort_rec_chopper_pt0), 1);
	unit_recorder_pause_smooth (main_mammoth, false, 3);	
	tort_stopped = FALSE;
	thread (mam_dust_on());
	wake (chop_tortoise_recorded);
end

////-----------------chopper VO--------------------//
//
script dormant chopper_dialogue()
	sleep_until (volume_test_players (tv_chopper_02	), 1);
	if
		chopper_cannon_alive == TRUE
	then
		firing_on_cannon = false;
	end
	f_music_m40_battle_b_start();
	NotifyLevel("Music Battle B Start");
end

script dormant leave_chopper()
	sleep_until (volume_test_players (tv_chopper_06), 1);	
	wake (spawn_waterfall_01);
	sleep_until (volume_test_players (tv_waterfall_dialogue_03), 1);		
	wake (el_citadel);	
end

//script dormant chopper_cd_revenant_mortar()
//	sleep (30 * 14);
//	// 9 : Those Revenant mortars are deadly, Chief! Don�t slow down!
//	sound_impulse_start ('sound\environments\solo\m040\vo\M_M40_Temp_Marine_01000', NONE, 1);
//	sleep (30 * 2);
//end

//script static void lich_flying()
//	print ("squads_30");
////	object_create (secret_lich);
//	ai_place (lich_rail_gun);
////	cs_run_command_script (lich_rail_gun, lich_rail_gun_cs);
////	ai_vehicle_enter_immediate (lich_rail_gun, secret_lich, "phantom_d");
//	sleep_until (object_get_health (ai_get_object (lich_rail_gun.driver)) < 1);
//	ai_erase (lich_rail_gun);
//	print ("squads_30 passed");
//end

// =================================================================================================
// =================================================================================================
// WATERFALLS
// =================================================================================================
// =================================================================================================

script dormant spawn_waterfall_01()
	sleep_until (volume_test_players (tv_waterfall_01), 1);
	wake (m40_waterfalls_rampancy_start);
	thread (toms_tar_pit_damaging());
	data_mine_set_mission_segment ("m40_waterfalls");
 	game_save_no_timeout();
end

script dormant waterfall_obj_state_sc()
//	print ("waterfall_obj_state_sc");
	
	sleep_until (volume_test_players (tv_waterfall_03), 1);
	waterfall_obj_state = 10;
//	print ("waterfall_obj_state = 10");

	effects_perf_armageddon = 0;

	thread (destroy_waterfall_vehicles());
	
	sleep_until (volume_test_players (tv_waterfall_04), 1);
	waterfall_obj_state = 20;
//	print ("waterfall_obj_state = 20");

	kill_volume_disable (soft_kill_backtrack_sniper_alley);
	
	sleep_until (volume_test_players (tv_waterfall_05), 1);
	waterfall_obj_state = 30;
//	print ("waterfall_obj_state = 30");
end

script dormant waterfall_pre_sq()
	sleep_until (volume_test_players (tv_waterfall_01), 1); 
	
end

script static void waterfalls_obj()
	sleep_s (7);
	thread (display_chapter_08());
end

//--------------------waterfall command scripts--------------

script dormant waterfall_tortoise_recorded()
	print ("tortoise on waterfall recorded scripts");
//	sleep_until (volume_test_object (tv_waterfall_02, main_mammoth), 1);	

	sleep_until (unit_recorder_get_time_position_seconds (main_mammoth) > 52, 1);
	
	unit_recorder_pause_smooth (main_mammoth, true, 2);
	tort_stopped = TRUE;
	thread (mam_dust_off());

	wake (waterfall_tort_ready);
	sleep_until 
	(
	waterfall_rollout_rdy	== true
	or
	(waterfall_obj_state > 9
	)
	, 1);
	wake (M40_waterfalls_ready);
	
	sleep_s(10);
	
	print ("M40_waterfalls_ready, tortoise passed waterfall conditions");
	unit_recorder_pause_smooth (main_mammoth, false, 2);
	tort_stopped = FALSE;
	thread (mam_dust_on());
	sleep (30 * 2);	
	
	sleep_until (volume_test_object (tv_waterfall_03, main_mammoth), 1);	

	TDT_dist = 35;
	thread (tort_stop_check_player_location());

	sleep_s (1);

	if 
		(player0_valid_and_far_from_tortoise_or_not_valid == TRUE
		and
		player1_valid_and_far_from_tortoise_or_not_valid == TRUE
		and
		player2_valid_and_far_from_tortoise_or_not_valid == TRUE
		and
		player3_valid_and_far_from_tortoise_or_not_valid == TRUE
		and 
		waterfall_obj_state < 10)
			
	then
		unit_recorder_pause_smooth (main_mammoth, true, 3);	
		tort_stopped = TRUE;
		thread (mam_dust_off());
		print ("TDT = Tort Distance Test = Player is behind, Tortoise is stopping");
					
		sleep_until (
				
		(objects_distance_to_object (player0, main_mammoth) < 20 
		and
		objects_distance_to_object (player0, main_mammoth) > 0)
		or
		(objects_distance_to_object (player1, main_mammoth) < 20 
		and
		objects_distance_to_object (player1, main_mammoth) > 0)	
		or
		(objects_distance_to_object (player2, main_mammoth) < 20 
		and
		objects_distance_to_object (player2, main_mammoth) > 0)
		or
		(objects_distance_to_object (player3, main_mammoth) < 20 
		and
		objects_distance_to_object (player3, main_mammoth) > 0)
		
		or
		waterfall_obj_state > 9, 1);

		print ("TDT = Tort Distance Test = Player caught up, Tortoise is continuing");
		unit_recorder_pause_smooth (main_mammoth, false, 2);	
		tort_stopped = FALSE;
		thread (mam_dust_on());
	end
	
	sleep_until (volume_test_object (tv_waterfall_04, main_mammoth), 1);	
	print ("tv_waterfall_03 passed");	

	TDT_dist = 35;
	thread (tort_stop_check_player_location());

	sleep_s (1);

	if 
		(player0_valid_and_far_from_tortoise_or_not_valid == TRUE
		and
		player1_valid_and_far_from_tortoise_or_not_valid == TRUE
		and
		player2_valid_and_far_from_tortoise_or_not_valid == TRUE
		and
		player3_valid_and_far_from_tortoise_or_not_valid == TRUE
		and 
		waterfall_obj_state < 20)
			
	then
		unit_recorder_pause_smooth (main_mammoth, true, 3);	
		tort_stopped = TRUE;
		thread (mam_dust_off());
		print ("TDT = Tort Distance Test = Player is behind, Tortoise is stopping");
					
		sleep_until (
				
		(objects_distance_to_object (player0, main_mammoth) < 20 
		and
		objects_distance_to_object (player0, main_mammoth) > 0)
		or
		(objects_distance_to_object (player1, main_mammoth) < 20 
		and
		objects_distance_to_object (player1, main_mammoth) > 0)	
		or
		(objects_distance_to_object (player2, main_mammoth) < 20 
		and
		objects_distance_to_object (player2, main_mammoth) > 0)
		or
		(objects_distance_to_object (player3, main_mammoth) < 20 
		and
		objects_distance_to_object (player3, main_mammoth) > 0)
		
		or
		waterfall_obj_state > 19, 1);

		print ("TDT = Tort Distance Test = Player caught up, Tortoise is continuing");
		unit_recorder_pause_smooth (main_mammoth, false, 2);	
		tort_stopped = FALSE;
		thread (mam_dust_on());
	end
	
	sleep_until (volume_test_object (tv_waterfall_mammoth_slowdown, main_mammoth), 1);	
	print ("tv_waterfall_03 passed");	

	TDT_dist = 35;
	thread (tort_stop_check_player_location());

	sleep_s (1);

	if 
		(player0_valid_and_far_from_tortoise_or_not_valid == TRUE
		and
		player1_valid_and_far_from_tortoise_or_not_valid == TRUE
		and
		player2_valid_and_far_from_tortoise_or_not_valid == TRUE
		and
		player3_valid_and_far_from_tortoise_or_not_valid == TRUE
		and 
		waterfall_obj_state < 30)
			
	then
		unit_recorder_pause_smooth (main_mammoth, true, 3);	
		tort_stopped = TRUE;
		thread (mam_dust_off());
		print ("TDT = Tort Distance Test = Player is behind, Tortoise is stopping");
					
		sleep_until (
				
		(objects_distance_to_object (player0, main_mammoth) < 20 
		and
		objects_distance_to_object (player0, main_mammoth) > 0)
		or
		(objects_distance_to_object (player1, main_mammoth) < 20 
		and
		objects_distance_to_object (player1, main_mammoth) > 0)	
		or
		(objects_distance_to_object (player2, main_mammoth) < 20 
		and
		objects_distance_to_object (player2, main_mammoth) > 0)
		or
		(objects_distance_to_object (player3, main_mammoth) < 20 
		and
		objects_distance_to_object (player3, main_mammoth) > 0)
		
		or
		waterfall_obj_state > 29, 1);

		print ("TDT = Tort Distance Test = Player caught up, Tortoise is continuing");
		unit_recorder_pause_smooth (main_mammoth, false, 2);	
		tort_stopped = FALSE;
		thread (mam_dust_on());
	end
	
	sleep_until (volume_test_object (tv_tort_jackal_stop, main_mammoth));
	print ("HIT!");
	
	sleep (30 * 1);
	tort_done_in_mission = true;
	unit_recorder_pause_smooth (main_mammoth, true, 3);	
	print ("PAUSED!");
end

script static void destroy_waterfall_vehicles()

	sleep (30 * 1);

	thread (backup_p_can_die());

	if
		unit_in_vehicle_type (player0, 18)
		or
		unit_in_vehicle_type (player0, 26)	
	then
		unit_exit_vehicle (player0);
	end
	
	if
		unit_in_vehicle_type (player1, 18)
		or
		unit_in_vehicle_type (player1, 26)	
	then
		unit_exit_vehicle (player1);
	end
	
	if
		unit_in_vehicle_type (player2, 18)
		or
		unit_in_vehicle_type (player2, 26)	
	then
		unit_exit_vehicle (player2);
	end
	
	if
		unit_in_vehicle_type (player3, 18)
		or
		unit_in_vehicle_type (player3, 26)	
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

	local short waterfalls_list_all = 0; 
	local short waterfalls_list_ind = 0;
	
	waterfalls_list_all = (
	list_count (volume_return_objects_by_campaign_type (tv_waterfalls_entire, 26)) + 
	list_count (volume_return_objects_by_campaign_type (tv_waterfalls_entire, 18)) + 
	list_count (volume_return_objects_by_campaign_type (tv_waterfalls_entire, 29))	
	);

	thread (waterfall_stop_destroying());

	repeat

	object_cannot_die (player0, true);
	object_cannot_die (player1, true);
	object_cannot_die (player2, true);
	object_cannot_die (player3, true);

	object_damage_damage_section (list_get(volume_return_objects_by_campaign_type (tv_waterfalls_entire, 26), waterfalls_list_ind), "hull", 500);
	object_damage_damage_section (list_get(volume_return_objects_by_campaign_type (tv_waterfalls_entire, 26), waterfalls_list_ind), "wing_right", 500);
	object_damage_damage_section (list_get(volume_return_objects_by_campaign_type (tv_waterfalls_entire, 26), waterfalls_list_ind), "wing_left", 500);
	object_damage_damage_section (list_get(volume_return_objects_by_campaign_type (tv_waterfalls_entire, 18), waterfalls_list_ind), "front_hull", 500);
	object_damage_damage_section (list_get(volume_return_objects_by_campaign_type (tv_waterfalls_entire, 18), waterfalls_list_ind), "windshield", 500);
	object_damage_damage_section (list_get(volume_return_objects_by_campaign_type (tv_waterfalls_entire, 18), waterfalls_list_ind), "mainhull", 500);
	object_damage_damage_section (list_get(volume_return_objects_by_campaign_type (tv_waterfalls_entire, 29), waterfalls_list_ind), "hull_rear", 500);
	object_damage_damage_section (list_get(volume_return_objects_by_campaign_type (tv_waterfalls_entire, 29), waterfalls_list_ind), "hull_front", 500);
	object_damage_damage_section (list_get(volume_return_objects_by_campaign_type (tv_waterfalls_entire, 29), waterfalls_list_ind), "hatch", 500);

	object_cannot_die (player0, false);
	object_cannot_die (player1, false);
	object_cannot_die (player2, false);
	object_cannot_die (player3, false);
	
	waterfalls_list_ind = waterfalls_list_ind + 1;
	waterfalls_list_all = waterfalls_list_all - 1;

	print ("Destroying Waterfall vehicles");

	until (waterfall_stop_destroying_bool == true);

	print ("ALL vehicles DESTROYED");
	
	inspect (waterfalls_list_all);

end

script static void waterfall_stop_destroying()
	sleep_s(3);
	waterfall_stop_destroying_bool = true;
end

script static void backup_p_can_die()
	sleep_s (3);
	object_cannot_die (player0, false);
	object_cannot_die (player1, false);
	object_cannot_die (player2, false);
	object_cannot_die (player3, false);
end

script dormant waterfall_tort_ready()
	thread (waterfall_player_tort_test_p0());
	thread (waterfall_player_tort_test_p1());
	thread (waterfall_player_tort_test_p2());
	thread (waterfall_player_tort_test_p3());
//	print ("tort starting rollout count from here, needs four seconds");
//	static short player_in_tort_for_awhile = 0;
//	static real num_seconds = 4;
//	repeat 
//	
//		if 
//			(volume_test_players_all (tv_waterfall_tort_all) == 1) 
//		then
//			player_in_tort_for_awhile = player_in_tort_for_awhile + 1;
//		end
//		
//	until (player_in_tort_for_awhile == (game_tick_rate_get() * num_seconds), 1);
//		
//	print ("player was in tort for awhile");

	sleep_until (
	p0_on_waterfall_tort == true
	and
	p1_on_waterfall_tort == true
	and
	p2_on_waterfall_tort == true
	and
	p3_on_waterfall_tort == true
	);	
	
	waterfall_rollout_rdy	= true;
end

script static void waterfall_player_tort_test_p0()

	if
		player_valid(player0)
	then
	
		sleep_until (volume_test_object_bounding_sphere_center (tv_waterfall_tort_all, player0));
		print ("player0 valid and on tortoise");
		p0_on_waterfall_tort = true;
	
	else
		print ("player0 not valid");
		p0_on_waterfall_tort = true;
	end		
	
end

script static void waterfall_player_tort_test_p1()

	if
		player_valid(player1)
	then
	
		sleep_until (volume_test_object_bounding_sphere_center (tv_waterfall_tort_all, player1));
		print ("player1 valid and on tortoise");
		p1_on_waterfall_tort = true;
	
	else
		print ("player1 not valid");
		p1_on_waterfall_tort = true;
	end		
	
end

script static void waterfall_player_tort_test_p2()

	if
		player_valid(player2)
	then
	
		sleep_until (volume_test_object_bounding_sphere_center (tv_waterfall_tort_all, player2));
		print ("player2 valid and on tortoise");
		p2_on_waterfall_tort = true;
	
	else
		print ("player2 not valid");
		p2_on_waterfall_tort = true;
	end		
	
end

script static void waterfall_player_tort_test_p3()

	if
		player_valid(player3)
	then
	
		sleep_until (volume_test_object_bounding_sphere_center (tv_waterfall_tort_all, player3));
		print ("player3 valid and on tortoise");
		p3_on_waterfall_tort = true;
	
	else
		print ("player3 not valid");
		p3_on_waterfall_tort = true;
	end		
	
end

//f_damage_volume_players( trigger_volume tv_damage, real r_damage_initial, real r_damage_mod, short s_ticks )

script static void toms_tar_pit_damaging()
	thread (f_m40_damage_volume_players (tv_waterfall_tar_01, 20, 1.5, 10));
	thread (f_m40_damage_volume_players (tv_waterfall_tar_02, 20, 1.5, 10));
	thread (f_m40_damage_volume_players (tv_waterfall_tar_03, 20, 1.5, 10));
	thread (f_m40_damage_volume_players (tv_waterfall_tar_04, 20, 1.5, 10));
	thread (f_m40_damage_volume_players (tv_waterfall_tar_05, 20, 1.5, 10));
	thread (f_m40_damage_volume_players (tv_waterfall_tar_06, 20, 1.5, 10));
	thread (f_m40_damage_volume_players (tv_waterfall_tar_07, 20, 1.5, 10));
	thread (f_m40_damage_volume_players (tv_waterfall_tar_08, 20, 1.5, 10));
	thread (f_m40_damage_volume_players (tv_waterfall_tar_09, 20, 1.5, 10));
	thread (f_m40_damage_volume_players (tv_waterfall_tar_10, 20, 1.5, 10));
	thread (f_m40_damage_volume_players (tv_waterfall_tar_11, 20, 1.5, 10));
	thread (f_m40_damage_volume_players (tv_waterfall_tar_12, 20, 1.5, 10));
	thread (f_m40_damage_volume_players (tv_waterfall_tar_13, 20, 1.5, 10));
	thread (f_m40_damage_volume_players (tv_waterfall_tar_14, 20, 1.5, 10));
	thread (f_m40_damage_volume_players (tv_waterfall_tar_15, 20, 1.5, 10));
	thread (f_m40_damage_volume_players (tv_waterfall_tar_16, 20, 1.5, 10));

	thread (f_m40_damage_volume_players (tv_waterfall_tar_17, 20, 1.5, 10));
	thread (f_m40_damage_volume_players (tv_waterfall_tar_18, 20, 1.5, 10));
	thread (f_m40_damage_volume_players (tv_waterfall_tar_19, 20, 1.5, 10));
	thread (f_m40_damage_volume_players (tv_waterfall_tar_20, 20, 1.5, 10));
	thread (f_m40_damage_volume_players (tv_waterfall_tar_21, 20, 1.5, 10));
	thread (f_m40_damage_volume_players (tv_waterfall_tar_22, 20, 1.5, 10));
	thread (f_m40_damage_volume_players (tv_waterfall_tar_23, 20, 1.5, 10));
	thread (f_m40_damage_volume_players (tv_waterfall_tar_24, 20, 1.5, 10));
	thread (f_m40_damage_volume_players (tv_waterfall_tar_25, 20, 1.5, 10));
	thread (f_m40_damage_volume_players (tv_waterfall_tar_26, 20, 1.5, 10));
	thread (f_m40_damage_volume_players (tv_waterfall_tar_27, 20, 1.5, 10));
	thread (f_m40_damage_volume_players (tv_waterfall_tar_28, 20, 1.5, 10));
	thread (f_m40_damage_volume_players (tv_waterfall_tar_29, 20, 1.5, 10));
	thread (f_m40_damage_volume_players (tv_waterfall_tar_30, 20, 1.5, 10));

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

// =================================================================================================
// =================================================================================================
// COMMAND SCRIPTS
// =================================================================================================
// =================================================================================================

//---------forerunner gun stuff-----------//



//NEW++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


//LAKESIDE CANNON SCRIPTS

//this is the cannon's first idle state
script static void cannon_lakeside_motion_new()
//	object_create (cannon_lakeside_new);
	print ("created cannon");
	
	pelican_and_cannon_pup = pup_play_show (pelican_pup);

//	sleep_s(1);

//	object_set_scale (cannon_lakeside_new, .4, 1);

	print ("LAKESIDE CANNON IS SCALED");
	
//	lakeside_cannon_initial_pup = pup_play_show (lakeside_cannon_first_pup);
	
//	repeat
//		device_set_overlay_track( cannon_lakeside_new, 'device:power' );
//		device_animate_overlay( cannon_lakeside_new, 1, 10, .1, .1 );
//		sleep( 30 * 8.9 );
//		print ("done 2");
//	until (cav_pelican_dies == true);
end

//this is the cannon's firing animation which is triggered in the pelicans' puppeteer show
//script static void cannon_lakeside_fire_new()
//	thread (cannon_lakeside_rotate_new());	
//	thread (cannon_lakeside_rotate_side_new());
//	print ("SLEEPING");
//	sleep_s (3);
//	print ("WAKING");
//	thread (test_fx_3());
//	thread (camera_shake_two());
//	device_set_overlay_track( cannon_lakeside_new, 'device:position' );
//	device_animate_overlay( cannon_lakeside_new, 282, 6.6, 0, 0);
//	print ("GUN FIRED");
//	sleep( 30 * 7.6 );
//	object_destroy (animated_pelican_s_02);
//	object_destroy (animated_pelican_s_03);
//	wake (f_dialog_m40_pelican_shot_down);
//	print ("done 1");
//	sleep( 30 * .5 );
//	thread (cannon_lakeside_rotate_new_2());
//	thread (cannon_lakeside_rotate_side_new_2());
//	repeat
//	device_set_overlay_track( cannon_lakeside_new, 'device:power' );
//	device_animate_overlay( cannon_lakeside_new, 1, 10, .1, .1 );
//		sleep( 30 * 9.9 );
//	print ("done 2");
//	until (1 == 0);
//	sleep( 30 * 2 );
//end

script static void honey_i_shrunk_the_forerunner_cannon()
	object_set_scale (cannon_lakeside_new, .4, 1);
	device_set_overlay_track( cannon_lakeside_new, 'device:power' );
	device_animate_overlay( cannon_lakeside_new, 1, 1, .1, .1 );
end

//turning to face the pelicans
script static void cannon_lakeside_face_pelicans()
	print ("cannon_lakeside_face_pelicans");
	thread (cannon_lakeside_rotate_new());
	thread (cannon_lakeside_rotate_side_new());
end

script static void cannon_lakeside_rotate_new()
	object_rotate_to_flag (cannon_lakeside_new, 8, 8, 8, cav_gun_rotate_flag);
end

script static void cannon_lakeside_rotate_side_new()
	object_rotate_by_offset (cannon_lakeside_new, 4, 4, 4, 0, 0, -15);
end

script static void test_pv_out()
	sleep_until (not(volume_test_players (tv_caverns_entire)), 1);
	print ("player left caverns volume");
	player_exited_caverns = true;
end

script static void attach_cannon_to_octopus()
	objects_attach (pelican_octopus, "marker5", cannon_lakeside_new, "");
end

script static void detach_cannon_to_octopus()
	objects_detach (pelican_octopus, cannon_lakeside_new);
end


//turning away after pelicans are dead
script static void cannon_lakeside_face_back()
//	print ("cannon_lakeside_face_back");
	sleep( 30 * 2 );
	thread (cannon_lakeside_rotate_new_2());
	thread (cannon_lakeside_rotate_side_new_2());
end

script static void cannon_lakeside_rotate_new_2()
		sleep( 30 * 5 );
	object_rotate_to_flag (cannon_lakeside_new, 6, 6, 6, cav_gun_rotate_flag_2);
end

script static void cannon_lakeside_rotate_side_new_2()
	object_rotate_by_offset (cannon_lakeside_new, 12, 12, 12, 0, 0, 15);
end

script dormant lakeside_cannon_swap()
	object_cannot_die (cannon_lakeside_new, true);
	sleep_until (object_get_health (cannon_lakeside_new) < .2, 1);
	f_unblip_object (cannon_lakeside_new);
//	print ("Lakeside cannon health is low, switching to destroyed cannon!");
	effect_new_at_ai_point (fx\reach\fx_library\cinematics\boneyard\040lb_cov_flee\02\shot_1\longsword_attack_explosion.effect, cannon_explosion.p0);
	pup_stop_show (pelican_and_cannon_pup);	
	pup_play_show (lakeside_cannon_destroy_pup);
	lakeside_cannon_alive = FALSE;
//	f_unblip_object (cannon_lakeside_new);

	sleep_s (5);	
	wake ( f_dialog_m40_tutorial_3);
end

//CHOPPER CANNON SCRIPTS

script static void honey_i_shrunk_the_forerunner_cannon_again()
	object_create (cannon_chopper_new);
	object_set_scale (cannon_chopper_new, .5, 1);
	chopper_cannon_pup_full = pup_play_show (chopper_cannon_pup);	
	wake (chopper_cannon_swap);
end

script dormant chopper_cannon_swap()
	object_cannot_die (cannon_chopper_new, true);
	sleep_until (object_get_health (cannon_chopper_new) < .2, 1);
//	print ("Chopper cannon health is low, switching to destroyed cannon!");
	pup_stop_show (chopper_cannon_pup_full);	
	pup_play_show (chopper_cannon_destroyed_pup);
	f_unblip_object (cannon_chopper_new);
	chopper_cannon_alive = FALSE;

end

//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

//script static void cannon_lakeside_fire()
////	sleep_until (pelican_dies == true);
//	thread (test_fx_3());
//	thread (camera_shake_two());
//	device_set_overlay_track( cannon_lakeside, 'any:pew' );
//	device_animate_overlay( cannon_lakeside, 282, 9.4, 0, 0);
//	print ("GUN FIRED");
//	sleep( 30 * 7.6 );
//	object_destroy (animated_pelican_s_02);
//	object_destroy (animated_pelican_s_03);
//	wake (f_dialog_m40_pelican_shot_down);
//	print ("done 1");
//	sleep( 30 * .5 );
//	thread (cannon_lakeside_fire_c());
//	repeat
//	device_set_overlay_track( cannon_lakeside, 'any:idle' );
//	device_animate_overlay( cannon_lakeside, 1, 5.2, .1, .1 );
//	sleep( 30 * 3.8 );
//	print ("done 2");
//	until (1 == 0);
//	sleep( 30 * 2 );
//end

//script static void cannon_lakeside_fire_c()	
//	object_rotate_by_offset (cannon_lakeside, 7 , 7 , 7 , -20, 0, 0);
//	print ("ROTATED 3");
//end

//script dormant cannon_1_health()
//	print ("cannon 1 health running");	
//	wake (M40_fodder_railgun_automated);
//	sleep( 30 * 5 );
//	cannon_death_state = false;
// 	game_save_no_timeout();
//end

//script dormant object1_take_damage_please()
//	sleep( 30 * 4 );
//	object_can_take_damage (cannon_lakeside);
//	print ("cannon can definitely take damage");
//end
//
//script dormant object2_take_damage_please()
//	sleep( 30 * 4 );
//	object_can_take_damage (cannon_lakeside);
//	print ("cannon 2 can definitely take damage");
//end

script dormant chopper_tort_ready()
	print ("tort starting rollout count from here, needs eight seconds");
	static short player_in_tort_for_awhile = 0;
	static real num_seconds = 8;
	repeat 
		if (volume_test_players (tv_tortoise_top_01) == 1
		or
		volume_test_players (tv_tortoise_middle_01) == 1
		or
		volume_test_players (tv_tortoise_bottom_01) == 1
		) then
			player_in_tort_for_awhile = player_in_tort_for_awhile + 1;
//		else
//			player_in_tort_for_awhile = 0;
		end
		until (player_in_tort_for_awhile == (game_tick_rate_get() * num_seconds), 1);
	print ("player was in tort for awhile");
	chopper_rollout_rdy	= true;
end

script static void gun2()
	object_create (cannon_lakeside);
	sleep( 30 * 2 );
//	object_rotate_by_offset (cannon_lakeside, 9, 9, 9, -35, 0, -20);
end

script static void test_fx_3()
	print ("test_fx running");

//	effect_new_on_object_marker (environments\solo\m40_invasion\fx\cannon\fr_cannon_firing.effect, cannon_lakeside_new,"cannon_source_");

	effect_new_between_object_markers (environments\solo\m40_invasion\fx\cannon\fr_cannon_firing.effect, cannon_lakeside_new, "cannon_source_", animated_pelican_s, "tailend");
	
	print ("Cannon FX have Fired");
	
	sleep_s (1.5);

	effect_new_on_object_marker (objects\vehicles\human\storm_pelican\fx\running\pelican_explosion.effect, animated_pelican_s, "machinegun_turret");	

	effect_new_on_object_marker (objects\vehicles\human\storm_pelican\fx\running\pelican_explosion.effect, animated_pelican_s_02, "machinegun_turret");	

	effect_new_on_object_marker (objects\vehicles\human\storm_pelican\fx\running\pelican_explosion.effect, animated_pelican_s_03, "machinegun_turret");		

	effect_new_on_object_marker (fx\library\smoke\smoke_billow\smoke_billow.effect, animated_pelican_s, "tailend");
	effect_new_on_object_marker (fx\library\smoke\smoke_billow\smoke_billow.effect, animated_pelican_s_02, "tailend");
	effect_new_on_object_marker (fx\library\smoke\smoke_billow\smoke_billow.effect, animated_pelican_s_03, "tailend");


	print ("Pelican FX have Fired");

end

//effect_new_on_object_marker (environments\solo\m40_invasion\fx\cannon\fr_cannon_warmup.effect.effect, cannon_lakeside_new,"cannon_source_");


//script static void rotate_pelican()
//	object_set_physics (porkins_pely_03, false);
//	object_rotate_by_offset (porkins_pely_03, 0, 2, 2, 0, 50, 30);
//	print ("rotated");
//end

//---------UTILITY-----------//

script dormant prechop_tort_stop_timer()
	print ("tort starting rollout count from here, needs eight seconds");
	static short tort_stopped_for_awhile = 0;
	static real num__tort_stop_seconds = 5;
	repeat 
		if (tort_stopped == true) 
		then
			tort_stopped_for_awhile = tort_stopped_for_awhile + 1;
		end
	until (tort_stopped_for_awhile == (game_tick_rate_get() * num__tort_stop_seconds), 1);
	print ("tort was stopped for five seconds");
	wake (m40_prechopper_waiting);
	tort_stopped_for_five_seconds	= true;
end

script static void test_tort_volumes()
	wake (test_tort_volume_bottom);
	wake (test_tort_volume_middle);
	wake (test_tort_volume_top);
end

script dormant test_tort_volume_bottom()
	repeat 
	sleep_until (not (volume_test_players (tv_tortoise_bottom_01)), 1);
	print ("player left bottom of tortoise");
	tort_bottom = false;
	sleep_until (volume_test_players (tv_tortoise_bottom_01), 1);
	print ("player in bottom of tortoise");
	sound_set_state('Set_state_player_in_mammoth_bottom');
	tort_bottom = true;
	until (1 == 0);
end

script dormant test_tort_volume_middle()
	repeat 
	sleep_until (not (volume_test_players (tv_tortoise_middle_01)), 1);
	print ("player left middle of tortoise");
	tort_middle = false;
	sleep_until (volume_test_players (tv_tortoise_middle_01), 1);
	print ("player in middle of tortoise");
	sound_set_state('Set_state_player_in_mammoth_middle');
	tort_middle = true;
	until (1 == 0);
end

script dormant test_tort_volume_top()
	repeat 
	sleep_until (not (volume_test_players (tv_tortoise_top_01)), 1);
	print ("player left top of tortoise");
	tort_top = false;
	sleep_until (volume_test_players (tv_tortoise_top_01), 1);
	print ("player in top of tortoise");
	sound_set_state('Set_state_player_in_mammoth_top');
	tort_top = true;
	until (1 == 0);
end

script dormant test_tort_global_interior()
	wake (test_tort_volume_bottom);
	wake (test_tort_volume_middle);
	wake (test_tort_volume_top);	
	repeat 
		if 
			tort_middle == TRUE
			or
			tort_bottom == TRUE
		then 
			tort_global_interior = true;
			print ("tort_global_interior is TRUE");
		else
			tort_global_interior = false;
			if tort_top != TRUE then
				sound_set_state('Set_state_player_outside_mammoth');
			end
		end
	until (1 == 0);
end

//script command_script cs_tort_pathing()
//	print ("about to go to");
//	cs_ignore_obstacles (true);
//	cs_go_to (mtest.p5);
//	cs_go_to (mtest.p6);
//	cs_go_to (mtest.p4);
//	cs_go_to (mtest.p9);
//	cs_go_to (mtest.p8);
//	print ("here come the bullfrogs");
//end

script static void cs_cav_jetpack_test0_pre()
	sleep_until (palmer_vignette == true
	or
	volume_test_players (tv_tortoise_bottom_01), 1
	);
	sleep_s (2);
	cs_run_command_script (marines_main_hog_01b_sq, cs_cav_jetpack_test0);
	ai_set_objective (marines_main_hog_01b_sq, mammoth_top_obj);
end

script command_script cs_cav_jetpack_test0()
	print ("about to go to 1");
	cs_ignore_obstacles (true);
	cs_go_to (mtest2.p3);
	cs_go_to (mtest2.p18);
	cs_go_to (mtest2.p19);
	cs_go_to (mtest2.p20);
	cs_go_to (mtest2.p21);
	print ("here come the bullfrogs 2");
end
//
//script command_script cs_cav_jetpack_test()
//	print ("about to go to 1");
//	cs_ignore_obstacles (true);
//	cs_go_to (mtest.p7);
//	cs_go_to (mtest.p8);
//	cs_go_to (mtest.p9);
//	cs_go_to (mtest.p10);
//	cs_go_to (mtest.p11);
//	cs_go_to (mtest.p12);
//	print ("here come the bullfrogs 2");
//end

script command_script cs_cav_jetpack_test2()
	print ("about to go to 2");
	cs_ignore_obstacles (true);
//	cs_go_to (mtest.p7);
//	cs_go_to (mtest.p8);
//	cs_go_to (mtest.p9);
	cs_go_to (mtest.p10);
	cs_go_to (mtest.p21);
	cs_go_to (mtest.p11);
	cs_go_to (mtest.p20);
//	ai_set_objective (marines_main_hog_01_sq, mammoth_top_obj);
	print ("here come the bullfrogs 2");
end

script command_script cs_cav_jetpack_test3()

	print ("about to go to 3 after waiting");
	cs_ignore_obstacles (true);
	cs_go_to (mtest.p10);
	cs_go_to (mtest.p11);
	cs_go_to (mtest.p12);
	ai_activity_set (marines_main_hog_01b_sq, "patrol");
//	ai_set_objective (marines_main_hog_01b_sq, mammoth_top_obj);
	print ("here come the bullfrogs 3");
end

script command_script cs_cav_jetpack_test4()
	print ("about to go to");
	cs_go_to (mtest2.p2);
	print ("here come the bullfrogs 5");
end

script command_script cs_cav_jetpack_test5()
	sleep(30 * 3);	
	print ("cs_cav_jetpack_test5 tortoise_jetpakcer_02.cliff");
	cs_go_to (mtest2.p3);
	cs_go_to (mtest2.p4);
	cs_go_to (mtest2.p22);
	print ("here come the bullfrogs");
end

//script command_script cs_tort_pathing_4()
//	print ("about to go to");
//	cs_ignore_obstacles (true);
//	cs_go_to (mtest.p9);
//	cs_go_to (mtest.p10);
//	cs_go_to (mtest.p8);
//	print ("here come the bullfrogs");
//end

script command_script lower_weapon_lich_pilot()
	cs_face (true, lich_test.p4);
	cs_stow (true);
	sleep (30 * 2);
	ai_braindead (lich_pilot_sq, true);
	objects_physically_attach (lichy, "lich_plinth_player", lich_pilot_sq.spawn_points_1, "");
	print ("stowed!");
	sleep (30 * 2);
	pup_play_show( "lich_pilot_pup" );
end

script static void mid_lich_pilot()
	ai_braindead (lich_pilot_sq, false);
end

script static void raise_weapon_lich_pilot()
	cs_stow (lich_pilot_sq, false);
end

script command_script cs_tort_lakeside_exit()
//	print ("about to go to 1");
	cs_ignore_obstacles (true);
	cs_go_to (tortoise_lakeside_test_pt.p19);
//	print ("here come the bullfrogs 1");
end

script command_script cs_tort_lakeside_exit2()
	sleep (30 * 5);
//	print ("about to go to 2");
	cs_ignore_obstacles (true);
	cs_go_to (tortoise_lakeside_test_pt.p19);
//	print ("here come the bullfrogs 2");
end

script command_script cs_tort_lakeside_exit3()
	sleep (30 * 10);
//	print ("about to go to 3");
	cs_ignore_obstacles (true);
	cs_go_to (tortoise_lakeside_test_pt.p19);
//	print ("here come the bullfrogs 3");
end

script static void test_lakeside_hog_setup()

	ai_vehicle_reserve (marines_main_hog_01_veh, false);
	ai_vehicle_reserve (marines_main_hog_02_veh, false);
//	ai_vehicle_reserve (marines_main_mongoose_veh, false);

	thread (test_hogs_detach());	

	sleep_s (2);
	
	thread (lakeside_ai_hog_enter());
	thread (lakeside_player_hog_enter());

//	ai_path_ignore_object_obstacle
//	ai_path_clear_ignore_object_obstacle
 
end

script static void lakeside_ai_hog_enter()
		if
			volume_test_object (tv_tortoise_bottom_01, marines_main_hog_01_veh)
		then		

			if
				dm_mode1 == true
			then
				ai_vehicle_enter (tortoise_jetpacker_01, tort_hog_01_g, "warthog_g");
				ai_vehicle_enter (tortoise_jetpacker_02, tort_hog_01_g, "warthog_d");
				ai_vehicle_enter (tort_marines.aaron, tort_hog_01_g, "warthog_d");
				print ("Lakeside Marines entering THEIR vehicle");
				sleep_until (
				tort_stopped == true);
				ai_vehicle_enter (tortoise_jetpacker_02, tort_hog_01_g, "warthog_d");
				print ("Lakeside Marines entering THEIR vehicle 2");
				sleep (30 * 5);
				sleep (1);
				thread (tort_driveout2());
			else
				ai_vehicle_enter (tortoise_jetpacker_01, marines_main_hog_01_veh, "warthog_g");
				ai_vehicle_enter (tortoise_jetpacker_02, marines_main_hog_01_veh, "warthog_d");
				ai_vehicle_enter (tort_marines.aaron, marines_main_hog_01_veh, "warthog_d");
				print ("Lakeside Marines entering THEIR vehicle");
				sleep_until (
				tort_stopped == true);
				ai_vehicle_enter (tortoise_jetpacker_02, marines_main_hog_01_veh, "warthog_d");
				print ("Lakeside Marines entering THEIR vehicle 2");
				sleep (30 * 5);
				sleep (1);
				thread (tort_driveout2());
			end
		else
			print ("Lakeside Marines' Hog isn't in the Mammoth... :(");
			lakeside_warthog_deploy = false;
		end
end

script command_script tort_driveout()
	print ("Cliff driving out of Mammoth");
	cs_vehicle_speed_instantaneous (1);
	ai_path_ignore_object_obstacle (tortoise_jetpacker_02.cliff, main_mammoth);
	cs_go_to (tortoise_jetpacker_02, true, lakeside_misc.p11);
	ai_path_clear_ignore_object_obstacle (tortoise_jetpacker_02);
	print ("Cliff drove out of Mammoth");
end

script static void lakeside_player_hog_enter()
		if
			volume_test_object (tv_tortoise_bottom_01, marines_main_hog_02_veh)
		then

			if
				dm_mode1 == true
			then

				ai_vehicle_reserve_seat (tort_hog_02_g, "warthog_d", true);
				ai_vehicle_reserve_seat (tort_hog_02_g, "warthog_p", true);
				ai_vehicle_enter (marines_main_hog_01b_sq, tort_hog_02_g, "warthog_g");
				wake (unreserve_lakeside_hog);			
				wake (lakeside_hog_blip_timer);
				print ("Lakeside Marines entering Player's vehicle");
				sleep (30 * 9);
				ai_set_objective (marines_main_hog_01b_sq, lakeside_mar_obj);
			
			else

				ai_vehicle_reserve_seat (marines_main_hog_02_veh, "warthog_d", true);
				ai_vehicle_reserve_seat (marines_main_hog_02_veh, "warthog_p", true);
				ai_vehicle_enter (marines_main_hog_01b_sq, marines_main_hog_02_veh, "warthog_g");
				wake (unreserve_lakeside_hog);			
				wake (lakeside_hog_blip_timer);
				print ("Lakeside Marines entering Player's vehicle");
				sleep (30 * 9);
				ai_set_objective (marines_main_hog_01b_sq, lakeside_mar_obj);
		
		end
		
		else
			print ("Lakeside Player's Hog isn't in the Mammoth!!!");
			lakeside_warthog_deploy = false;
		end
end

script static void tort_driveout2()
	cs_ignore_obstacles (tortoise_jetpacker_01, TRUE);
	ai_path_ignore_object_obstacle (tortoise_jetpacker_01, main_mammoth);
	ai_set_objective (tortoise_jetpacker_01, lakeside_mar_obj);
	
	cs_ignore_obstacles (tortoise_jetpacker_02, TRUE);
	ai_path_ignore_object_obstacle (tortoise_jetpacker_02, main_mammoth);
	ai_set_objective (tortoise_jetpacker_02, lakeside_mar_obj);
	
//	thread (set_marine_veh_obj_01());
//	thread (set_marine_veh_obj_02());
//	thread (set_marine_veh_obj_03());
	
	sleep (30 * 2);
	ai_path_clear_ignore_object_obstacle (tortoise_jetpacker_01);
	ai_path_clear_ignore_object_obstacle (tortoise_jetpacker_02);
	
	print ("Marines are no longer ignoring Mammoth");

	ai_set_objective (marine_convoy, lakeside_mar_obj);

	sleep (30 * 10);	

	sleep (30 * 20);		
			
	ObjectOverrideNavMeshCutting(main_mammoth, true);
	ObjectOverrideNavMeshObstacle(main_mammoth, false);
	
	print ("Mammoth is stable object");
end

script static void set_marine_veh_obj_01()
	sleep_until (unit_in_vehicle_type (marines_main_hog_01b_sq, 18));
	cs_ignore_obstacles (marines_main_hog_01b_sq, TRUE);
	ai_path_ignore_object_obstacle (marines_main_hog_01b_sq, main_mammoth);
	ai_set_objective (marines_main_hog_01b_sq, lakeside_mar_obj);	
	print ("marines_main_hog_01b_sq SET TO LAKESIDE OBJECTIVES");
end

script static void set_marine_veh_obj_02()
	sleep_until (unit_in_vehicle_type (tort_marines.randall, 18));
	cs_ignore_obstacles (tort_marines.randall, TRUE);
	ai_path_ignore_object_obstacle (tort_marines.randall, main_mammoth);
	ai_set_objective (tort_marines.randall, lakeside_mar_obj);	
	print ("tort_marines.randall SET TO LAKESIDE OBJECTIVES");
end

script static void set_marine_veh_obj_03()
	sleep_until (unit_in_vehicle_type (tort_marines.aaron, 18));
	cs_ignore_obstacles (tort_marines.aaron, TRUE);
	ai_path_ignore_object_obstacle (tort_marines.aaron, main_mammoth);
	ai_set_objective (tort_marines.aaron, lakeside_mar_obj);	
	print ("tort_marines.aaron SET TO LAKESIDE OBJECTIVES");
end

script dormant unreserve_lakeside_hog()
	sleep_until (
	player_in_vehicle (marines_main_hog_02_veh)
	or
	player_in_vehicle (marines_main_hog_01_veh)
	);
	ai_vehicle_reserve_seat (marines_main_hog_02_veh, "warthog_d", false);
	print ("lakeside hog unreserved");
	sleep (30 * 10);	
	ai_vehicle_reserve_seat (marines_main_hog_02_veh, "warthog_p", false);
end

script dormant lakeside_hog_blip_timer()
	sleep_until (ai_living_count (lakeside_tort_assault_2_grp) < 3
	);
	wake (lakeside_hog_unblip);
	game_save_no_timeout();
	f_blip_object (marines_main_hog_02_veh, "ordnance");
	print ("lakeside_hog_blip_timer");
	sleep (30 * 35);
	print ("lakeside_hog_blip_timer notify achieved");
	NotifyLevel ("lakeside_hog_blip_timer time passed");
	wake (lakeside_hog_2_unblip);
	if
		volume_test_players (tv_tortoise_top_01)
	then
		sleep_until (volume_test_object (tv_lakeside_warthog_hangout, marines_main_hog_01_veh)
//		and
//		volume_test_players (tv_tortoise_top_01)
		);
		f_blip_object (marines_main_hog_01_veh, "ordnance");
		print ("Player still on Tortoise, blipping Marine Hog");
	end
	sleep_until (
		LevelEventStatus("lakeside_hog_2_blip_timer time passed")
		or
		player_in_vehicle (marines_main_hog_02_veh)
		or
		player_in_vehicle (marines_main_hog_01_veh)
		, 1);
	f_unblip_object (marines_main_hog_02_veh);	
	f_unblip_object (marines_main_hog_01_veh);
end

//-------------------START OF TEMP FOR INSERTION POINT----------------------------------------

//script dormant lakeside_insertion_hog_blip_timer()
//	wake (lakeside_hog_unblip);
//	sleep (30 * 20);
//	f_blip_object (lakeside_insertion_hog_02, "ordnance");
//	print ("lakeside_insertion_hog_blip_timer");
//	sleep (30 * 35);
//	print ("lakeside_insertion_hog_blip_timer notify achieved");
//	NotifyLevel ("lakeside_insertion_hog_blip_timer time passed");
//	if
//		volume_test_players (tv_tortoise_top_01)
//	then
//		sleep_until (volume_test_object (tv_lakeside_warthog_hangout, lakeside_insertion_hog_01)
////		and
////		volume_test_players (tv_tortoise_top_01)
//		);
//		f_blip_object (lakeside_insertion_hog_01, "ordnance");
////		wake (lakeside_insertion_hog_2_unblip);
//		print ("Player still on Tortoise, blipping Marine Hog");
//	end
//	sleep_until (
//		LevelEventStatus("lakeside_insertion_hog_2_blip_timer time passed")
//		or
//		player_in_vehicle (lakeside_insertion_hog_01)
//		or
//		player_in_vehicle (lakeside_insertion_hog_02)
//		, 1);
//	f_unblip_object (lakeside_insertion_hog_01);	
//	f_unblip_object (lakeside_insertion_hog_02);
//end
//
//script dormant lakeside_insertion_hog_unblip()
//	sleep_until (
//		LevelEventStatus("lakeside_insertion_hog_blip_timer time passed")
//		or
//		player_in_vehicle (lakeside_insertion_hog_01)
//		or
//		player_in_vehicle (lakeside_insertion_hog_02)
//		, 1);
//	f_unblip_object (lakeside_insertion_hog_02);
//end
//
//script dormant lakeside_insertion_hog_2_unblip()
//	sleep (30 * 30);
//
////	if
////		not (unit_in_vehicle (player0))
////	then
////		print ("Player not in vehicle, checking to see if player is doing encounter on foot");
////		if
////			(player_in_lakeside_enc == false)
////		then

////		else
////			print ("Player not in vehicle, but already in encounter");
////		end
////	else
////		print ("Player in vehicle");
////	end
//	
//	sleep (30 * 30);
//	
////	if
////		not (unit_in_vehicle (player0))
////	then
////		print ("Player not in vehicle, checking to see if player is doing encounter on foot");
////		if
////			(player_in_lakeside_enc == false)
////		then

////		else
////			print ("Player not in vehicle, but already in encounter");
////		end
////	else
////		print ("Player in vehicle");
////	end
//	
//	sleep (30 * 20);
//	print ("lakeside_insertion_hog_2_blip_timer notify achieved");
//	NotifyLevel ("lakeside_insertion_hog_2_blip_timer time passed");
//end

//-------------------END OF TEMP FOR INSERTION POINT----------------------------------------

script dormant lakeside_hog_unblip()
	sleep_until (
		LevelEventStatus("lakeside_hog_blip_timer time passed")
		or
		player_in_vehicle (marines_main_hog_02_veh)
		, 1);
	f_unblip_object (marines_main_hog_02_veh);
end

script dormant lakeside_hog_2_unblip()
	sleep (30 * 20);
//	if
//		not (unit_in_vehicle (player0))
//	then

//	end
	sleep (30 * 30);
//	if
//		not (unit_in_vehicle (player0))
//	then
	
//	end
	sleep (30 * 20);
	print ("lakeside_hog_2_blip_timer notify achieved");
	NotifyLevel ("lakeside_hog_2_blip_timer time passed");
end

//cavern_marines_enter_hog02

//script command_script cs_test_teleport()
//	print ("about to go to");
//	cs_go_to (tortoise_main_pt.p1);
//	print ("here come the bullfrogs");
//end
//
//script static void squad_test (ai squad_name, ai squad_name2)
//	marines_main_hog_01_dr = squad_name;
//	marines_main_hog_01_gunner = squad_name2;
////	marines_main_hog_01_pass = squad_name3;
//end
//
//script static void squad_2_test (ai squad_name, ai squad_name2)
//	marines_main_hog_02_dr = squad_name;
//	marines_main_hog_02_gunner = squad_name2;
////	marines_main_hog_02_pass = squad_name3;
//end
//
//script static void squad_3_test (ai squad_name, ai squad_name2)
//	marines_main_goose_01_dr = squad_name;
//	marines_main_goose_01_pass = squad_name2;
//end
//
//script static void seat_tester()
//	print ("seat_tester");
//	sleep_until (vehicle_test_seat_unit (marines_main_hog_02_veh, "warthog_g", player0));
//	print ("success");
//end

//script static void test_chop_mam()
//	object_create (main_mammoth);
//	object_teleport_to_ai_point (main_mammoth, prechopper_tortoise_route_pt.p10);
//	object_cannot_take_damage (main_mammoth);
//	unit_recorder_setup_for_unit (main_mammoth, tortoise_0203c);
//	unit_recorder_play_and_blend (main_mammoth, 2);
//	unit_recorder_set_time_position (main_mammoth, 70);
//	unit_recorder_set_playback_rate (main_mammoth, .7);
//end

//script static void test_door_anims()
//	custom_animation (main_mammoth, "objects\vehicles\human\storm_mammoth\storm_mammoth.model_animation_graph", "rear:bay:door:opening", true);
//	sleep (30 * 5);
//	custom_animation (main_mammoth, "objects\vehicles\human\storm_mammoth\storm_mammoth.model_animation_graph", "front:bay:door:opening", true);
////	custom_animation (main_mammoth, "objects\vehicles\human\storm_mammoth\storm_mammoth.model_animation_graph", "suspension:idle:2:vehicle:idle", true);	
//	end

script static void camera_shake_now_lich()
	repeat
	print ("Lich rumble GO");
		camera_shake_all_coop_players (0.7, 0.4, 6, 2, lich_camera_shake );
	until (not (volume_test_players (tv_lich_entire))
	);
end

script static void camera_shake_now()
	camera_shake_all_coop_players (0.7, 0.4, 6, 2, lich_camera_shake );
end

script static void camera_shake_now_short()
	camera_shake_all_coop_players (0.7, 0.4, 3, 2, rock_crush_camera_shake );
end

script static void camera_shake_one()
	sleep (30 * 1);
	camera_shake_all_coop_players (0.7, 0.4, 1, 1, lich_explode_camera_shake );
end

/* script static void camera_shake_two()
	sleep (30 * 1);
	camera_shake_all_coop_players (0.7, 0.4, 9, 2 );
end */

script static void camera_shake_6sleep()
	sleep (30 * 5);
	if
		objects_distance_to_object (player0, main_mammoth) < 25
	then 
		camera_shake_player (player0, 0.7, 0.4, 6, 2, mammoth_camera_shake_short );
		print ("Camera Shake Player0");
	end

	if
		objects_distance_to_object (player1, main_mammoth) < 25
	then 
		camera_shake_player (player1, 0.7, 0.4, 6, 2, mammoth_camera_shake_short );
		print ("Camera Shake Player1");
	end
	
	if
		objects_distance_to_object (player2, main_mammoth) < 25
	then 
		camera_shake_player (player2, 0.7, 0.4, 6, 2, mammoth_camera_shake_short );
		print ("Camera Shake Player2");
	end
	
	if
		objects_distance_to_object (player3, main_mammoth) < 25
	then 
		camera_shake_player (player3, 0.7, 0.4, 6, 2, mammoth_camera_shake_short );
		print ("Camera Shake Player3");
	end
end

script static void camera_shake_long()
	sleep (30 * 1);
//	camera_shake_all_coop_players (0.7, 0.4, 15, 2 );
	if
		objects_distance_to_object (player0, main_mammoth) < 25
	then 
		camera_shake_player (player0, 0.7, 0.4, 15, 2, mammoth_camera_shake_long );
		print ("Camera Shake Player0");
	end

	if
		objects_distance_to_object (player1, main_mammoth) < 25
	then 
		camera_shake_player (player1, 0.7, 0.4, 15, 2, mammoth_camera_shake_long );
		print ("Camera Shake Player1");
	end
	
	if
		objects_distance_to_object (player2, main_mammoth) < 25
	then 
		camera_shake_player (player2, 0.7, 0.4, 15, 2, mammoth_camera_shake_long );
		print ("Camera Shake Player2");
	end
	
	if
		objects_distance_to_object (player3, main_mammoth) < 25
	then 
		camera_shake_player (player3, 0.7, 0.4, 15, 2, mammoth_camera_shake_long );
		print ("Camera Shake Player3");
	end
end

//script static void fore_small_door_open (device small_door)
//	device_set_position_track ( small_door, 'any:small', 0.0 );
//	device_animate_position ( small_door, .83, 2, 0, 0, true );
//	sleep (30 * 5);
//	device_animate_position ( small_door, 0, 1, 0, 0, true );
////	thread (lib_teleport_start())
//end

//script static void closec()
//	tort_target_designator_crate->close();
//end


//script static void test_playz()
////	object_create (main_mammoth);
//	unit_recorder_setup_for_unit (main_mammoth, tortoise_0505a);
//	unit_recorder_play (main_mammoth);
//end


//------killing the fodder guys once player is at lakeside------//

script static void fodder_ai_kill()
	thread (tv_fodder_front_left_aikill());
	thread (tv_fodder_mid_left_aikill());
	thread (tv_fodder_left_tower_aikill());
	thread (tv_fodder_rear_left_aikill());
//	thread (tv_fodder_front_right_aikill());
//	thread (tv_fodder_mid_01_right_aikill());
//	thread (tv_fodder_mid_02_right_aikill());
//	thread (tv_fodder_mid_03_right_aikill());
//	thread (tv_fodder_rear_right_aikill());
	thread (tv_fodder_ground_aikill());
end
//LEFT

script static void tv_fodder_front_left_aikill()
	sleep_until (not (volume_test_players (tv_fodder_front_left))	
	and
	not (volume_test_players_lookat (tv_fodder_front_left, 3000, 40)));
	unit_kill_list_silent (volume_return_objects (tv_fodder_front_left));
	print ("tv_fodder_front_left_aikill");
end

script static void tv_fodder_mid_left_aikill()
	sleep_until (not (volume_test_players (tv_fodder_mid_left))	
	and
	not (volume_test_players_lookat (tv_fodder_mid_left, 3000, 40)));
	unit_kill_list_silent (volume_return_objects (tv_fodder_mid_left));
	print ("tv_fodder_mid_left_aikill");
end

script static void tv_fodder_left_tower_aikill()
	sleep_until (not (volume_test_players (tv_fodder_left_tower))	
	and
	not (volume_test_players_lookat (tv_fodder_left_tower, 3000, 40)));
	unit_kill_list_silent (volume_return_objects (tv_fodder_left_tower));
	print ("tv_fodder_left_tower_aikill");
end

script static void tv_fodder_rear_left_aikill()
	sleep_until (not (volume_test_players (tv_fodder_rear_left))	
	and
	not (volume_test_players_lookat (tv_fodder_rear_left, 3000, 40)));
	unit_kill_list_silent (volume_return_objects (tv_fodder_rear_left));
	print ("tv_fodder_rear_left_aikill");
end


//GROUND

script static void tv_fodder_ground_aikill()
	sleep_until (not (volume_test_players_lookat (tv_fodder_ground, 3000, 40)));
	unit_kill_list_silent (volume_return_objects (tv_fodder_ground));
	print ("tv_fodder_ground_aikill");
end

//script static void cht()
//	ai_place (chop_phantom_07_sq);
//	ai_place (chop_wraith_02_sq);
//	vehicle_load_magic (ai_vehicle_get_from_spawn_point (chop_phantom_07_sq.driver), "phantom_lc", ai_vehicle_get_from_starting_location  (chop_wraith_02_sq.driver));	
//end
//
//script static void cht2()
//	ai_place (chop_phantom_05_sq);
//	ai_place (chop_ghost_04_sq);
//	vehicle_load_magic (ai_vehicle_get_from_spawn_point (chop_phantom_05_sq.driver), "phantom_sc02", ai_vehicle_get_from_starting_location  (chop_ghost_04_sq.driver2));
//	vehicle_load_magic (ai_vehicle_get_from_spawn_point (chop_phantom_05_sq.driver), "phantom_sc01", ai_vehicle_get_from_starting_location  (chop_ghost_04_sq.driver));
//end

script static void display_chapter_01()
	cui_hud_set_new_objective ("chapter_01");
end

script static void display_chapter_02a()
	cui_hud_set_new_objective ("chapter_02a");
end

script static void display_chapter_02a_complete()
	cui_hud_set_objective_complete ("chapter_02a");
end

script static void display_chapter_02()
	cui_hud_set_new_objective ("chapter_02");
end

script static void display_chapter_03()
	cui_hud_set_new_objective ("chapter_03");
end

script static void display_chapter_03b()
	cui_hud_set_new_objective ("chapter_03b");
end

script static void display_chapter_03c()
	cui_hud_set_new_objective ("chapter_03c");
end

script static void display_chapter_03c_complete()
	cui_hud_set_objective_complete ("chapter_03c");
end

script static void display_chapter_03g()
	cui_hud_set_new_objective ("chapter_03g");
end

script static void display_chapter_03g_complete()
	cui_hud_set_objective_complete ("chapter_03g");
end

script static void display_chapter_03d()
	cui_hud_set_new_objective ("chapter_03d");
end

script static void display_chapter_03d_complete()
	cui_hud_set_objective_complete ("chapter_03d");
end

script static void display_chapter_04()
	cui_hud_set_new_objective ("chapter_04");
end

script static void display_chapter_05()
	cui_hud_set_new_objective ("chapter_05");
end

script static void display_chapter_06()
	cui_hud_set_new_objective ("chapter_06");
end

script static void display_chapter_07()
	cui_hud_set_new_objective ("chapter_07");
end

script static void display_chapter_08()
	cui_hud_set_new_objective ("chapter_08");
end

script static void display_chapter_09()
	cui_hud_set_new_objective ("chapter_09");
	
	objectives_finish (0);
	objectives_show (1);
end

script static void display_chapter_10()
	cui_hud_set_new_objective ("chapter_10");
end

script static void display_chapter_11()
	cui_hud_set_new_objective ("chapter_11");
end

script static void display_chapter_12()
	cui_hud_set_new_objective ("chapter_12");
end

script static void display_chapter_13()
	cui_hud_set_new_objective ("chapter_13");
end

script static void display_chapter_075()
	cui_hud_set_new_objective ("chapter_075");
end

script static void display_chapter_obj_complete()
	sleep_s (5);
end

script static void f_hud_boot_up()
	hud_play_global_animtion (screen_fade_in);
	hud_stop_global_animtion (screen_fade_in);
	weapon_target_designator_hide_hud();
end

script static void cinematic_test_1()
	print ("CINEMATIC NOW");

	f_insertion_begin( "CINEMATIC" );
	
	cinematic_enter( cin_m040_intro, TRUE );
	cinematic_suppress_bsp_object_creation( TRUE );
	switch_zone_set( cin_intro );
	cinematic_suppress_bsp_object_creation( FALSE );
	
	hud_play_global_animtion (screen_fade_out);
		
	f_start_mission( cin_m040_intro );
	cinematic_exit_no_fade( cin_m040_intro, TRUE ); 
	dprint( "Cinematic exited!" );

end

script static void cinematic_test_2()
	print ("CINEMATIC NOW");

	//f_insertion_begin( "CINEMATIC" );
	
	//cinematic_enter( cin_m041_librarian, TRUE );
	//cinematic_suppress_bsp_object_creation( TRUE );
	//switch_zone_set( cin_m041_librarian );
	//cinematic_suppress_bsp_object_creation( FALSE );
	
	//hud_play_global_animtion (screen_fade_out);
		
	//f_play_cinematic_chain( cin_m041_librarian, cin_m041b_librarian , cin_m041c_librarian );
	//cinematic_exit_no_fade( cin_m041_librarian, TRUE ); 
	//dprint( "Cinematic exited!" );

end

script static void cinematic_test_3()
	print ("CINEMATIC NOW");

	f_insertion_begin( "CINEMATIC" );
	
	cinematic_enter( cin_m042_end, TRUE );
	cinematic_suppress_bsp_object_creation( TRUE );
	switch_zone_set( cin_m042_end );
	cinematic_suppress_bsp_object_creation( FALSE );
	
	hud_play_global_animtion (screen_fade_out);
		
	f_start_mission( cin_m042_end );
	cinematic_exit_no_fade( cin_m042_end, TRUE ); 
	dprint( "Cinematic exited!" );

end

global short VAR_OBJ_LOCAL_A = 0;

script static void mam_dust_off()
	SetObjectRealVariable (main_mammoth, VAR_OBJ_LOCAL_A, 0.0); 
	object_function_set (0, 0);
	print ("SetObjectRealVariable 0");
end

script static void mam_dust_on()
	sleep_s (3);	
	SetObjectRealVariable (main_mammoth, VAR_OBJ_LOCAL_A, 1.0); 
	object_function_set (0, 1);
	print ("SetObjectRealVariable 1");
end

script static void test_door_bug()
	object_set_physics (main_mammoth, false);
	custom_animation_hold_last_frame (main_mammoth, "objects\vehicles\human\storm_mammoth\storm_mammoth.model_animation_graph", "bay:doors:opening", false);	
	sleep (30 * 6);
	object_override_physics_motion_type(main_mammoth, 1);
end

//script static void covenant_river_barrier_destroy_01()
//	sleep_until (not (objects_can_see_object (player0, cov_river_barrier_01, 60))
//	and
//	not (objects_can_see_object (player1, cov_river_barrier_01, 60))
//	and
//	not (objects_can_see_object (player2, cov_river_barrier_01, 60))
//	and
//	not (objects_can_see_object (player3, cov_river_barrier_01, 60))
//	, 1);
//	object_destroy (cov_river_barrier_01);
//end
//
//script static void covenant_river_barrier_destroy_02()
//	sleep_until (not (objects_can_see_object (player0, cov_river_barrier_02, 60))
//	and
//	not (objects_can_see_object (player1, cov_river_barrier_02, 60))
//	and
//	not (objects_can_see_object (player2, cov_river_barrier_02, 60))
//	and
//	not (objects_can_see_object (player3, cov_river_barrier_02, 60))
//	, 1);
//	object_destroy (cov_river_barrier_02);
//end

script static void prechopper_bubble_creation()
	sleep (30 * 2);
	object_create (uplink_bubble_1);
	object_create (uplink_bubble_2);
	object_create (uplink_bubble_3);
	object_create (uplink_base_1);
	object_create (uplink_base_2);
	object_create (uplink_base_3);
	
	ai_object_set_team (uplink_base_1, covenant);
//	thread (base_1_target_bias());
	ai_object_set_team (uplink_base_2, covenant);
//	thread (base_2_target_bias());
	ai_object_set_team (uplink_base_3, covenant);
//	thread (base_3_target_bias());

	ai_object_enable_targeting_from_vehicle (uplink_base_1, true);
	ai_object_enable_targeting_from_vehicle (uplink_base_2, true);
	ai_object_enable_targeting_from_vehicle (uplink_base_3, true);

	object_create (prechopper_shield_barrier);
	
	object_set_function_variable (prechopper_shield_barrier, shield_on, 1, 1);

	object_set_function_variable (prechopper_shield_barrier, shield_color, 0, 0);

	print ("Bubbles really created!");
	
	wake (f_bubble_control);
end

//script static void 	base_1_target_bias()
//	sleep_until (ai_living_count (sq_bubble_1) > 0);
//
//	sleep_until (ai_living_count (sq_bubble_1) < 1);
//	ai_object_set_targeting_bias (uplink_base_1, 1);
//	print ("Marines now prefer to shoot bubble 1");
//end
//
//script static void 	base_2_target_bias()
//	sleep_until (ai_living_count (sq_bubble_2) > 0);
//
//	sleep_until (ai_living_count (sq_bubble_2) < 1);
//	ai_object_set_targeting_bias (uplink_base_2, 1);
//	print ("Marines now prefer to shoot bubble 2");
//end
//
//script static void 	base_3_target_bias()
//	sleep_until (ai_living_count (sq_bubble_3_mid_re) > 0);
//
//	sleep_until (ai_living_count (sq_bubble_3_mid_re) < 1);
//	ai_object_set_targeting_bias (uplink_base_3, 1);
//	print ("Marines now prefer to shoot bubble 2");
//end

//script static void test_doorz()
//	object_create (main_mammoth);
//	unit_recorder_setup_for_unit (main_mammoth, tortoise_0526_c);
//	unit_recorder_play (main_mammoth);
//	sleep (1);	
//	unit_recorder_pause (main_mammoth, true);
//	thread (open_tort_doors_river());
////	custom_animation_hold_last_frame (main_mammoth, "objects\vehicles\human\storm_mammoth\storm_mammoth.model_animation_graph", "bay:doors_opening_var5", false);	
//end

//Caverns anims
script static void open_tort_doors_caverns()
	sleep_s(2);
	custom_animation_hold_last_frame (main_mammoth, "objects\vehicles\human\storm_mammoth\storm_mammoth.model_animation_graph", "bay:doors:opening", false);
	sleep_s(9);
	tort_bay_doors_opened = true;
	object_override_physics_motion_type(main_mammoth, 1);

//	ObjectOverrideNavMeshCutting(main_mammoth, true);
//	ObjectOverrideNavMeshObstacle(main_mammoth, false);

	ObjectOverrideNavMeshCutting(main_mammoth, false);
	ObjectOverrideNavMeshObstacle(main_mammoth, true);

	print ("Tort Doors Opened");
end

script static void close_tort_doors_caverns()
//	ObjectOverrideNavMeshCutting(main_mammoth, false);
//	ObjectOverrideNavMeshObstacle(main_mammoth, true);

	object_override_physics_motion_type(main_mammoth, 2);
	custom_animation (main_mammoth, "objects\vehicles\human\storm_mammoth\storm_mammoth.model_animation_graph", "bay:doors_closing", false);
	tort_bay_doors_opened = false;
	print ("Tort Doors Closed");
end

//Lakeside anims
script static void open_tort_doors_lakeside()
	custom_animation_hold_last_frame (main_mammoth, "objects\vehicles\human\storm_mammoth\storm_mammoth.model_animation_graph", "bay:doors_opening_var2", false);
	sleep_s(9);
	tort_bay_doors_opened = true;
	object_override_physics_motion_type(main_mammoth, 1);

//	ObjectOverrideNavMeshCutting(main_mammoth, true);
//	ObjectOverrideNavMeshObstacle(main_mammoth, false);
//  This happens in the AI driveout2 script

	print ("Tort Doors Opened");
end

script static void close_tort_doors_lakeside()
	ObjectOverrideNavMeshCutting(main_mammoth, false);
	ObjectOverrideNavMeshObstacle(main_mammoth, true);

	object_override_physics_motion_type(main_mammoth, 2);
	custom_animation (main_mammoth, "objects\vehicles\human\storm_mammoth\storm_mammoth.model_animation_graph", "bay:doors_closing_var2", false);
	tort_bay_doors_opened = false;
	print ("Tort Doors Closed");
end

//Lakeside River anims
script static void open_tort_doors_river()
//	thread (covenant_river_barrier_destroy_01());
//	thread (covenant_river_barrier_destroy_02());
	custom_animation_hold_last_frame (main_mammoth, "objects\vehicles\human\storm_mammoth\storm_mammoth.model_animation_graph", "bay:doors_opening_var3", false);
	sleep_s(9);
	object_override_physics_motion_type(main_mammoth, 1);
	tort_bay_doors_opened = true;

//	ObjectOverrideNavMeshCutting(main_mammoth, true);
//	ObjectOverrideNavMeshObstacle(main_mammoth, false);

	print ("Tort Doors Opened");
end

script static void close_tort_doors_river()
	sleep_until (tort_bay_doors_opened == true);

//	ObjectOverrideNavMeshCutting(main_mammoth, false);
//	ObjectOverrideNavMeshObstacle(main_mammoth, true);

	object_override_physics_motion_type(main_mammoth, 2);
	custom_animation (main_mammoth, "objects\vehicles\human\storm_mammoth\storm_mammoth.model_animation_graph", "bay:doors_closing_var3", false);
	tort_bay_doors_opened = false;
	print ("Tort Doors Closed");
end

//Prechopper anims
script static void open_tort_doors_prechopper_start()
	custom_animation_hold_last_frame (main_mammoth, "objects\vehicles\human\storm_mammoth\storm_mammoth.model_animation_graph", "bay:doors_opening_var4", false);
	sleep_s(9);
	tort_bay_doors_opened = true;
	object_override_physics_motion_type(main_mammoth, 1);

//	if
//		tort_stopped == TRUE
//	then
//		ObjectOverrideNavMeshCutting(main_mammoth, true);
//		ObjectOverrideNavMeshObstacle(main_mammoth, false);
//	end

	print ("Tort Doors Opened");
end

script static void close_tort_doors_prechopper_start()
	sleep_until (tort_bay_doors_opened == true);

//	ObjectOverrideNavMeshCutting(main_mammoth, false);
//	ObjectOverrideNavMeshObstacle(main_mammoth, true);

	object_override_physics_motion_type(main_mammoth, 2);
	custom_animation (main_mammoth, "objects\vehicles\human\storm_mammoth\storm_mammoth.model_animation_graph", "bay:doors_closing_var4", false);
	tort_bay_doors_opened = false;
	print ("Tort Doors Closed");
end

//Prechopper ending anims
script static void open_tort_doors_prechopper_end()
	custom_animation_hold_last_frame (main_mammoth, "objects\vehicles\human\storm_mammoth\storm_mammoth.model_animation_graph", "bay:doors_opening_var4", false);
	sleep_s(9);
	tort_bay_doors_opened = true;
	object_override_physics_motion_type(main_mammoth, 1);

	if
		tort_stopped == TRUE
	then
		ObjectOverrideNavMeshCutting(main_mammoth, true);
		ObjectOverrideNavMeshObstacle(main_mammoth, false);
	end

	print ("Tort Doors Opened");
end

script static void close_tort_doors_prechopper_end()
	ObjectOverrideNavMeshCutting(main_mammoth, false);
	ObjectOverrideNavMeshObstacle(main_mammoth, true);

	object_override_physics_motion_type(main_mammoth, 2);
	custom_animation (main_mammoth, "objects\vehicles\human\storm_mammoth\storm_mammoth.model_animation_graph", "bay:doors_closing_var4", false);
	tort_bay_doors_opened = false;
	print ("Tort Doors Closed");
end

//Chopper anims
script static void open_tort_doors_chopper()
	tort_speed_test = false;
	custom_animation_hold_last_frame (main_mammoth, "objects\vehicles\human\storm_mammoth\storm_mammoth.model_animation_graph", "bay:doors_opening_var5", false);
	sleep_s(9);
	tort_bay_doors_opened = true;
	object_override_physics_motion_type(main_mammoth, 1);

	ObjectOverrideNavMeshCutting(main_mammoth, true);
	ObjectOverrideNavMeshObstacle(main_mammoth, false);

	print ("Tort Doors Opened");
end

script static void close_tort_doors_chopper()
	ObjectOverrideNavMeshCutting(main_mammoth, false);
	ObjectOverrideNavMeshObstacle(main_mammoth, true);

	object_override_physics_motion_type(main_mammoth, 2);
	custom_animation (main_mammoth, "objects\vehicles\human\storm_mammoth\storm_mammoth.model_animation_graph", "bay:doors_closing_var5", false);
	tort_bay_doors_opened = false;
	print ("Tort Doors Closed");
end

script static void tort_underneath_cleanup()

	repeat

	sleep_until (tort_stopped == false
	and
	not (volume_test_players_lookat (tv_tortoise_underneath_01, 3000, 40))
	and
	not (volume_test_players (tv_tortoise_underneath_01))
	);
	unit_kill_list_silent (volume_return_objects (tv_tortoise_underneath_01));
	sleep(1);
	garbage_collect_now();
	print ("tort_underneath_cleanup");

	sleep_s (5);
	
	until (tort_done_in_mission == true);
end

//script static void tort_underneath_cleanup2()
//	kill_volume_disable (playerkill_soft_lakeside_backtrack);
//	sleep_until (not (volume_test_players_lookat (tv_tort_rec_lakeside_pt2, 3000, 40))
//	and
//	not (volume_test_players (tv_tort_rec_lakeside_pt2))
//	);
//	unit_kill_list_silent (volume_return_objects (tv_tort_rec_lakeside_pt2));
//	sleep(1);
//	garbage_collect_now();
//	print ("tort_underneath_cleanup2");
//end

script static void tort_chopper_cleanup()

	sleep_until (not (volume_test_players_lookat (tv_tortoise_bottom_01, 3000, 40))
	and
	not (volume_test_players (tv_tortoise_bottom_01))
	);
	unit_kill_list_silent (volume_return_objects (tv_tortoise_bottom_01));
	sleep(1);
	garbage_collect_now();
	print ("tort bdunn chopper cleanup");
end

script command_script fod_enter_pod_cs()
	ai_vehicle_enter (tower_jak.guy2, (object_get_turret (fod_pod_01, 2)));
	print ("entered pod"); 
end

script static void garbage_collect_me()
	repeat
		garbage_collect_now();
		print ("garbage collected");
		sleep (30 * 15);
	until (garbage_collecting == false);
end

script static void garbage_collect_me_chop()
	repeat
		garbage_collect_now();
		print ("garbage collected");
		sleep (30 * 8);
	until (garbage_collecting == false);
end

script static void lakeside_phantom_blipping()
		print ("lakeside_phantom_blipping!");
end

//script static void tort_directional_test()
//	if
//		objects_distance_to_point (player0, tort_top_patrol.rear) > objects_distance_to_point (player0, tort_top_patrol.front)
//	then
//		print ("player in FRONT of tortoise");
//	elseif
//		objects_distance_to_point (player0, tort_top_patrol.rear) < objects_distance_to_point (player0, tort_top_patrol.front)
//	then
//		print ("player BEHIND tortoise");
//	else
//		print ("player is both behind tortoise and in front at the same time, the universe has collapsed");	
//	end
//end

script static void lasky_pup_test()
	static short Marines_lasky_health = 0;
	Marines_lasky_health = unit_get_health (Marines_lasky);

	repeat
		Marines_lasky_health = unit_get_health (Marines_lasky);
		sleep_until (object_get_recent_body_damage (Marines_lasky) > .01, 1);
		pup_stop_show (lasky_final_pup);
		sleep_s (3);	
		print ("Marines_lasky_pup restarting");
		cs_go_to (Marines_lasky, true, tort_pup_pt.lasky_rear);
		print ("LASKY ORDERED TO WALK");
		cs_face (Marines_lasky, true, mtest2.p16);
		sleep (30 * 1);
		sleep_until (object_get_recent_body_damage (tort_marine_biped_right) == 0);	
		lasky_final_pup = pup_play_show (lasky_alt_pup);
		ai_renew (Marines_lasky);
	until	(object_get_health (Marines_lasky) <= 0);
	
end

script static void tort_bipeds()
	object_create (tort_marine_biped_right);
	object_create (tort_marine_biped_left);
	object_create (tort_marine_biped_bottom);
	ai_object_set_team (tort_marine_biped_right, player);
	ai_object_set_team (tort_marine_biped_left, player);
	ai_object_set_team (tort_marine_biped_bottom, player);
	
	objects_physically_attach (main_mammoth, "crate_1fl_target_laser", tort_marine_biped_bottom, "");
	objects_physically_attach (main_mammoth, "crate_2fl_terminal_passenger", tort_marine_biped_right, "");
	objects_physically_attach (main_mammoth, "crate_2fl_terminal_driver", tort_marine_biped_left, "");
	
	tort_marine_biped_right_long_pup = pup_play_show (tort_marine_biped_right_pup);
	tort_marine_biped_left_long_pup = pup_play_show (tort_marine_biped_left_pup);
	tort_marine_bottom_long_pup = pup_play_show (tort_marine_bottom_pup);
		
	thread (tort_marine_biped_right_pup_test());
	thread (tort_marine_biped_left_pup_test());
	thread (tort_marine_bottom_pup_test());
end

script static void tort_marine_biped_right_pup_test()

	repeat
	
		sleep_until (object_get_recent_body_damage (tort_marine_biped_right) > .01, 1);
		pup_stop_show (tort_marine_biped_right_long_pup);
		sleep_until (object_get_recent_body_damage (tort_marine_biped_right) == 0);	
		tort_marine_biped_right_long_pup = pup_play_show (tort_marine_biped_right_pup);
		
	until	(object_get_health (tort_marine_biped_right) <= 0);
	
end

script static void tort_marine_biped_left_pup_test()

	repeat
	
		sleep_until (object_get_recent_body_damage (tort_marine_biped_left) > .01, 1);
		pup_stop_show (tort_marine_biped_left_long_pup);
		sleep_until (object_get_recent_body_damage (tort_marine_biped_left) == 0);	
		tort_marine_biped_left_long_pup = pup_play_show (tort_marine_biped_left_pup);
		
	until	(object_get_health (tort_marine_biped_right) <= 0);
	
end

script static void tort_marine_bottom_pup_test()

	repeat
	
		sleep_until (object_get_recent_body_damage (tort_marine_biped_bottom) > .01, 1);
		pup_stop_show (tort_marine_bottom_long_pup);
		sleep_until (object_get_recent_body_damage (tort_marine_biped_bottom) == 0);	
		tort_marine_bottom_long_pup = pup_play_show (tort_marine_bottom_pup);
		
	until	(object_get_health (tort_marine_biped_bottom) <= 0);
	
end

script static void tort_runover_kills()
	thread (tort_runover_kill_p1());
//	thread (tort_runover_kill_p2());
//	thread (tort_runover_kill_p3());
//	thread (tort_runover_kill_p4());
	thread (tort_runover_damaging());
	thread (tort_runover_garbage_collect());
end

script static void tort_runover_kill_p1()
	repeat
		sleep_until (object_get_velocity (main_mammoth) > 3);
		print ("Mammoth is fast, WILL KILL");
			repeat
					damage_objects (volume_return_objects (tv_tortoise_underneath_01), "body", 30);		
					damage_objects (volume_return_objects (trigger_volumes_35), "body", 30);		
					damage_objects (volume_return_objects (trigger_volumes_34), "body", 30);	
					damage_objects (volume_return_objects (tv_tortoise_underneath_01), "hull", 30);		
					damage_objects (volume_return_objects (trigger_volumes_35), "hull_rear", 30);		
					damage_objects (volume_return_objects (trigger_volumes_34), "hull_front", 30);		
			until (object_get_velocity (main_mammoth) < 3);
			print ("Mammoth slowed, WILL NOT KILL");
	until (tort_done_in_mission == true);		
end

script static void tort_runover_damaging()
	repeat
		sleep_until (tort_stopped == FALSE
		and
		object_get_velocity (main_mammoth) > 0
		and
		object_get_velocity (main_mammoth) < 3		
		);
		print ("Mammoth is slow, WILL DAMAGE");
			repeat
			
				if
					volume_test_players (tv_tortoise_underneath_01)
					or
					volume_test_players (trigger_volumes_35)					
					or
					volume_test_players (trigger_volumes_34)					
				then
					damage_objects (volume_return_objects (tv_tortoise_underneath_01), "body", 30);		
					damage_objects (volume_return_objects (trigger_volumes_35), "body", 30);		
					damage_objects (volume_return_objects (trigger_volumes_34), "body", 30);	
					damage_objects (volume_return_objects (tv_tortoise_underneath_01), "hull", 30);		
					damage_objects (volume_return_objects (trigger_volumes_35), "hull_rear", 30);		
					damage_objects (volume_return_objects (trigger_volumes_34), "hull_front", 30);	
				else
					unit_kill_list_silent (volume_return_objects (tv_tortoise_underneath_01));
					unit_kill_list_silent (volume_return_objects (trigger_volumes_35));
					unit_kill_list_silent (volume_return_objects (trigger_volumes_34));	
				end				
				
				sleep (15);		
			until (object_get_velocity (main_mammoth) < 3);
//			print ("Mammoth speeding up, WILL NOT DAMAGE, WILL KILL");
	until (tort_done_in_mission == true);		
end

script static void tort_runover_garbage_collect()
	repeat
		sleep_until (object_get_velocity (main_mammoth) > 3
		and
		not (volume_test_players_lookat (tv_tortoise_underneath_01, 3000, 40))
		and
		not (volume_test_players (tv_tortoise_underneath_01))
		);
		sleep_s(5);
		garbage_collect_now();
		print ("tort_underneath_cleanup");
	until (tort_done_in_mission == true);	
end

script dormant main_mammoth_invincible()
//	ai_allegiance (brute, covenant);
//	ai_allegiance (brute, player);
//	ai_allegiance (brute, human);
	ai_allegiance (player, human);
//	ai_allegiance (covenant, mule);
//	sleep_s(2);
	object_cannot_die (main_mammoth, true);
	print ("Tortoise cannot take damage");
end

script static void dg_check_1()

	sleep_until (
		unit_in_vehicle_type (player0, 18)
		or
		unit_in_vehicle_type (player0, 26)
		);
		print ("done!");
end

script static void m40_dg_check()
	print ("M40 DG PRINT");
	
		if 
			game_coop_player_count() == 1
		then
			thread (m40_dg_check_1());
		end
		
		if 
			game_coop_player_count() == 2
		then
			thread (m40_dg_check_1());
			thread (m40_dg_check_2());
		end
		
		if 
			game_coop_player_count() == 3
		then
			thread (m40_dg_check_1());
			thread (m40_dg_check_2());
			thread (m40_dg_check_3());
		end
		
		if 
			game_coop_player_count() == 4
		then
			thread (m40_dg_check_1());
			thread (m40_dg_check_2());
			thread (m40_dg_check_3());
			thread (m40_dg_check_4());
		end
			
end

script static void m40_dg_check_1()
	repeat
		sleep_until (object_get_health (unit_get_vehicle (player0)) < .250, 1);
		if 
			unit_in_vehicle_type (player0, 18)
			or
			unit_in_vehicle_type (player0, 26)
		then
			unit_set_current_vitality (unit_get_vehicle (player0), 375, 1);
		end
	until (1 == 0);
end

script static void m40_dg_check_2()
	repeat
		sleep_until (object_get_health (unit_get_vehicle (player1)) < .250, 1);
		if 
			unit_in_vehicle_type (player1, 18)
			or
			unit_in_vehicle_type (player1, 26)
		then
			unit_set_current_vitality (unit_get_vehicle (player1), 375, 1);
		end
	until (1 == 0);
end

script static void m40_dg_check_3()
	repeat
		sleep_until (object_get_health (unit_get_vehicle (player2)) < .250, 1);
		if 
			unit_in_vehicle_type (player2, 18)
			or
			unit_in_vehicle_type (player2, 26)
		then
			unit_set_current_vitality (unit_get_vehicle (player2), 375, 1);
		end
	until (1 == 0);
end

script static void m40_dg_check_4()
	repeat
		sleep_until (object_get_health (unit_get_vehicle (player3)) < .250, 1);
		if 
			unit_in_vehicle_type (player3, 18)
			or
			unit_in_vehicle_type (player3, 26)
		then
			unit_set_current_vitality (unit_get_vehicle (player3), 375, 1);
		end
	until (1 == 0);
end


//---------------THESE SCRIPTS HANDLE THE TORTOISE SPEED AT VARIOUS TIMES---------------------

script static void new_tort_caverns_speed_test()

	print ("**************** Caverns Tortoise Speed Test ****************");	

	tort_speed_test = true;

	TST_faraway_dist = 59;
	TST_closeup_dist = 20;
	
	TST_norm_speed = 1.0;
	TST_mid_speed = .7;
	TST_upper_speed = 1.2;
	
	thread (tortoise_master_speed_test());

	sleep_until (volume_test_object (tv_fod_mammoth_10, main_mammoth), 1);

	tort_speed_test = false;

	unit_recorder_set_playback_rate_smooth (main_mammoth, .5, 4);
	print ("TORT SPEED REPEATING");
	wake ( f_fodder_mammoth_playback );

end

//script static void new_tort_lakeside_speed_test()
//
//	print ("**************** Lakeside Tortoise Speed Test ****************");	
//
//	tort_speed_test = true;
//
//	TST_faraway_dist = 100;
//	TST_closeup_dist = 15;
//	
//	TST_norm_speed = .7;
//	TST_upper_speed = .7;
//	
//	thread (tortoise_master_speed_test());
//
//	sleep_until (volume_test_object (tv_tort_lakeside_river, main_mammoth), 1);
//
//	tort_speed_test = false;
//
//end

script static void new_tort_cliffside_part_1_speed_test()

	print ("**************** Cliffside Part 1 Tortoise Speed Test ****************");	

	wake (prechopper_arrival_test);

	tort_speed_test = true;

	TST_faraway_dist = 59;
	TST_closeup_dist = 20;

	TST_norm_speed = .9;
	TST_mid_speed = .9;
	TST_upper_speed = 1.5;
	
	thread (tortoise_master_speed_test());

	sleep_until (volume_test_object (tv_cliffside_01b, main_mammoth), 1);	

	tort_speed_test = false;

	sleep_until (tort_speed_test_active == false);
	
	thread (new_tort_cliffside_part_2_speed_test());

end

script static void new_tort_cliffside_part_2_speed_test()

	print ("**************** Cliffside Part 2 Tortoise Speed Test ****************");	

	tort_speed_test = true;

	TST_faraway_dist = 59;
	TST_closeup_dist = 40;

	TST_norm_speed = .6;
	TST_mid_speed = .5;
	TST_upper_speed = 1.4;
	
	thread (tortoise_master_speed_test());

	sleep_until (prechopper_arrival == true);

	tort_speed_test = false;

	sleep_until (tort_speed_test_active == false);

	unit_recorder_set_playback_rate_smooth (main_mammoth, .7, 4);
	print ("TORT SPEED REPEATING = .7");

end

script static void new_tort_chopper_part_1_speed_test()

	print ("**************** Chopper Part 1 Tortoise Speed Test ****************");	

	tort_speed_test = true;

	TST_faraway_dist = 19;
	TST_closeup_dist = 20;

	TST_norm_speed = 1;
	TST_mid_speed = .5;
	TST_upper_speed = 1.2;
	
	thread (tortoise_master_speed_test());

	sleep_until (volume_test_object (tv_chopper_blip_gun, main_mammoth));	

	tort_speed_test = false;
	
	thread (new_tort_chopper_part_2_speed_test());

end

script static void new_tort_chopper_part_2_speed_test()

	print ("**************** Chopper Part 2 Tortoise Speed Test ****************");	

	tort_speed_test = true;

	TST_faraway_dist = 19;
	TST_closeup_dist = 20;

	TST_norm_speed = .5;
	TST_mid_speed = .5;
	TST_upper_speed = .52;
	
	thread (tortoise_master_speed_test());

	sleep_until (volume_test_object (tv_tort_rec_chopper_pt12, main_mammoth));

	tort_speed_test = false;
	
	unit_recorder_set_playback_rate_smooth (main_mammoth, .7, 3);	
	print ("TORT SPEED REPEATING = .7");

end

script static void new_tort_waterfalls_speed_test()

	print ("**************** Waterfalls Tortoise Speed Test ****************");	

	tort_speed_test = true;

	TST_faraway_dist = 40;
	TST_closeup_dist = 20;

	TST_norm_speed = 1.1;
	TST_mid_speed = .5;
	TST_upper_speed = 1.1;
	
	thread (tortoise_master_speed_test());

	sleep_until (current_zone_set_fully_active() == DEF_S_ZONESET_PRE_VALE());	

	tort_speed_test = false;

end

script static void new_tort_short_speed_test()

	print ("**************** Short Tortoise Speed Test ****************");	

	tort_speed_test = true;

	TST_faraway_dist = 60;
	TST_closeup_dist = 15;

	TST_norm_speed = .7;
	TST_mid_speed = .7;
	TST_upper_speed = .9;
	
	thread (tortoise_master_speed_test());

	sleep_until (unit_recorder_get_time_position_seconds (main_mammoth) > 12, 1)
	or
	(volume_test_object (tv_tort_rec_chopper_pt5, main_mammoth));	

	tort_speed_test = false;

end

script static void new_tort_short_speed_test_2()

	print ("**************** Short Chopper Tortoise Speed Test ****************");	

	tort_speed_test = true;

	TST_faraway_dist = 40;
	TST_closeup_dist = 25;

	TST_norm_speed = .7;
	TST_mid_speed = .5;
	TST_upper_speed = .9;
	
	thread (tortoise_master_speed_test());

	sleep_until (volume_test_object (tv_tort_rec_chopper_pt5, main_mammoth));	

	tort_speed_test = false;

end

script static void tortoise_master_speed_test()
	print ("NEW SPEED TEST");		
	
	tort_speed_test_active = true;

	repeat

//	Starting the check again, resetting all of the variables

		player0_tort_far_ahead = false;
		player0_tort_far_behind = false;
		
		player1_tort_far_ahead = false;
		player1_tort_far_behind = false;
		
		player2_tort_far_ahead = false;
		player2_tort_far_behind = false;
		
		player3_tort_far_ahead = false;
		player3_tort_far_behind = false;
		
		player0_on_tortoise = false;
		player0_near_tortoise = false;
		
		player1_on_tortoise = false;
		player1_near_tortoise = false;
		
		player2_on_tortoise = false;
		player2_near_tortoise = false;
		
		player3_on_tortoise = false;
		player3_near_tortoise = false;

//	Determining where players are in relation to the Tortoise

//	player0

		if
			player_valid (player0)
		then

			if
				objects_distance_to_object (player0, main_mammoth) > TST_faraway_dist
			then
				if
					objects_distance_to_point (player0, tort_top_patrol.rear) > objects_distance_to_point (player0, tort_top_patrol.front)
				then
					player0_tort_far_ahead = true;	
					print ("Player0 really far ahead of Tortoise...");
				elseif
					objects_distance_to_point (player0, tort_top_patrol.rear) < objects_distance_to_point (player0, tort_top_patrol.front)
				then
					player0_tort_far_behind = true;	
					print ("Player0 really far behind of Tortoise...");
				end
				
			elseif
				(not (volume_test_object_bounding_sphere_center (tv_tortoise_top_01, player0))
				and
				not (volume_test_object_bounding_sphere_center (tv_tortoise_middle_01, player0))
				and
				not (volume_test_object_bounding_sphere_center (tv_tortoise_bottom_01, player0))
				and
				objects_distance_to_object (player0, main_mammoth) < TST_closeup_dist)		
			then
				player0_near_tortoise = true;					
				print ("Player0 is on the ground near the Tortoise...");						
	
			elseif
				volume_test_object_bounding_sphere_center (tv_tortoise_top_01, player0)
				or
				volume_test_object_bounding_sphere_center (tv_tortoise_middle_01, player0)
				or
				volume_test_object_bounding_sphere_center (tv_tortoise_bottom_01, player0)
			then
				player0_on_tortoise = true;	
				print ("Player0 is on the Tortoise...");
			
			end

		end

//	player1

		if
			player_valid (player1)
		then

			if
				objects_distance_to_object (player1, main_mammoth) > TST_faraway_dist
			then
				if
					objects_distance_to_point (player1, tort_top_patrol.rear) > objects_distance_to_point (player1, tort_top_patrol.front)
				then
					player1_tort_far_ahead = true;	
					print ("player1 really far ahead of Tortoise...");
				elseif
					objects_distance_to_point (player1, tort_top_patrol.rear) < objects_distance_to_point (player1, tort_top_patrol.front)
				then
					player1_tort_far_behind = true;	
					print ("player1 really far behind of Tortoise...");
				end
				
			elseif
				(not (volume_test_object_bounding_sphere_center (tv_tortoise_top_01, player1))
				and
				not (volume_test_object_bounding_sphere_center (tv_tortoise_middle_01, player1))
				and
				not (volume_test_object_bounding_sphere_center (tv_tortoise_bottom_01, player1))
				and
				objects_distance_to_object (player1, main_mammoth) < TST_closeup_dist)		
			then
				player1_near_tortoise = true;					
				print ("player1 is on the ground near the Tortoise...");						
	
			elseif
				volume_test_object_bounding_sphere_center (tv_tortoise_top_01, player1)
				or
				volume_test_object_bounding_sphere_center (tv_tortoise_middle_01, player1)
				or
				volume_test_object_bounding_sphere_center (tv_tortoise_bottom_01, player1)
			then
				player1_on_tortoise = true;	
				print ("player1 is on the Tortoise...");

			end

		end

//	player2

		if
			player_valid (player2)
		then

			if
				objects_distance_to_object (player2, main_mammoth) > TST_faraway_dist
			then
				if
					objects_distance_to_point (player2, tort_top_patrol.rear) > objects_distance_to_point (player2, tort_top_patrol.front)
				then
					player2_tort_far_ahead = true;	
					print ("player2 really far ahead of Tortoise...");
				elseif
					objects_distance_to_point (player2, tort_top_patrol.rear) < objects_distance_to_point (player2, tort_top_patrol.front)
				then
					player2_tort_far_behind = true;	
					print ("player2 really far behind of Tortoise...");
				end
				
			elseif
				(not (volume_test_object_bounding_sphere_center (tv_tortoise_top_01, player2))
				and
				not (volume_test_object_bounding_sphere_center (tv_tortoise_middle_01, player2))
				and
				not (volume_test_object_bounding_sphere_center (tv_tortoise_bottom_01, player2))
				and
				objects_distance_to_object (player2, main_mammoth) < TST_closeup_dist)		
			then
				player2_near_tortoise = true;					
				print ("player2 is on the ground near the Tortoise...");						
	
			elseif
				volume_test_object_bounding_sphere_center (tv_tortoise_top_01, player2)
				or
				volume_test_object_bounding_sphere_center (tv_tortoise_middle_01, player2)
				or
				volume_test_object_bounding_sphere_center (tv_tortoise_bottom_01, player2)
			then
				player2_on_tortoise = true;	
				print ("player2 is on the Tortoise...");

			end
	
		end

//	player3

		if
			player_valid (player3)
		then

			if
				objects_distance_to_object (player3, main_mammoth) > TST_faraway_dist
			then
				if
					objects_distance_to_point (player3, tort_top_patrol.rear) > objects_distance_to_point (player3, tort_top_patrol.front)
				then
					player3_tort_far_ahead = true;	
					print ("player3 really far ahead of Tortoise...");
				elseif
					objects_distance_to_point (player3, tort_top_patrol.rear) < objects_distance_to_point (player3, tort_top_patrol.front)
				then
					player3_tort_far_behind = true;	
					print ("player3 really far behind of Tortoise...");
				end
				
			elseif
				(not (volume_test_object_bounding_sphere_center (tv_tortoise_top_01, player3))
				and
				not (volume_test_object_bounding_sphere_center (tv_tortoise_middle_01, player3))
				and
				not (volume_test_object_bounding_sphere_center (tv_tortoise_bottom_01, player3))
				and
				objects_distance_to_object (player3, main_mammoth) < TST_closeup_dist)		
			then
				player3_near_tortoise = true;					
				print ("player3 is on the ground near the Tortoise...");						
	
			elseif
				volume_test_object_bounding_sphere_center (tv_tortoise_top_01, player3)
				or
				volume_test_object_bounding_sphere_center (tv_tortoise_middle_01, player3)
				or
				volume_test_object_bounding_sphere_center (tv_tortoise_bottom_01, player3)
			then
				player3_on_tortoise = true;	
				print ("player3 is on the Tortoise...");

			end

		end

//	 Now that we know where the players are, we will set the speed of the Tortoise...

		thread (all_players_on_tort());

//	1/5 IS A PLAYER AHEAD OF TORTOISE?

		if
			(player0_tort_far_ahead == true
			and
			player_valid (player0))
			or
			(player1_tort_far_ahead == true
			and
			player_valid (player1))
			or
			(player2_tort_far_ahead == true
			and
			player_valid (player2))
			or
			(player3_tort_far_ahead == true
			and
			player_valid (player3))
		then	
			print ("At least one player is really far ahead of the Tortoise...");
			unit_recorder_set_playback_rate_smooth (main_mammoth, TST_upper_speed, 3);	
			print ("TORT SPEED REPEATING =");
			inspect (TST_upper_speed);

//	2/5 IS A PLAYER BEHIND TORTOISE?
		
		elseif
			(player0_tort_far_behind == true
			and
			player_valid (player0))
			or
			(player1_tort_far_behind == true
			and
			player_valid (player1))
			or
			(player2_tort_far_behind == true
			and
			player_valid (player2))
			or
			(player3_tort_far_behind == true
			and
			player_valid (player3))
		then	
			print ("At least one player is really far behind the Tortoise...");
			unit_recorder_set_playback_rate_smooth (main_mammoth, .1, 3);	
			print ("TORT SPEED REPEATING = .1");
		
//	3/5 IS A PLAYER ON GROUND NEARBY TORTOISE?

		elseif
			(player0_near_tortoise == true
			and
			player_valid (player0))
			or
			(player1_near_tortoise == true
			and
			player_valid (player1))
			or
			(player2_near_tortoise == true
			and
			player_valid (player2))
			or
			(player3_near_tortoise == true
			and
			player_valid (player3))
		then	
			print ("At least one player is on the ground near the Tortoise...");
			unit_recorder_set_playback_rate_smooth (main_mammoth, .1, 3);		
			print ("TORT SPEED REPEATING = .1");
	
//	4/5 IS ANY PLAYER NOT ON THE TORTOISE?

		elseif
			(player0_on_tortoise == false
			and
			player_valid (player0))
			or
			(player1_on_tortoise == false
			and
			player_valid (player1))
			or
			(player2_on_tortoise == false
			and
			player_valid (player2))
			or
			(player3_on_tortoise == false
			and
			player_valid (player3))
		then	
			print ("At least one player is on ground but not directly near the Tortoise...");
			unit_recorder_set_playback_rate_smooth (main_mammoth, TST_mid_speed, 3);		
			print ("TORT SPEED REPEATING = .5");

//	5/5 ARE ALL PLAYERS ON THE TORTOISE?

		elseif
			player0_valid_and_on_tortoise_or_not_valid == TRUE
			and
			player1_valid_and_on_tortoise_or_not_valid == TRUE
			and
			player2_valid_and_on_tortoise_or_not_valid == TRUE
			and
			player3_valid_and_on_tortoise_or_not_valid == TRUE					
		then	
			print ("All players are on the Tortoise...");
			unit_recorder_set_playback_rate_smooth (main_mammoth, TST_norm_speed, 3);		
			print ("TORT SPEED REPEATING =");
			inspect (TST_norm_speed);

		end	

	sleep_s (4);

	until (tort_speed_test == false);
	
	print ("**************** Master Tortoise Speed Test FINISHED ****************");	

	tort_speed_test_active = false;

end

script static void all_players_on_tort()

	print ("all_players_on_tort");

	player0_valid_and_on_tortoise_or_not_valid = false;
	player1_valid_and_on_tortoise_or_not_valid = false;
	player2_valid_and_on_tortoise_or_not_valid = false;
	player3_valid_and_on_tortoise_or_not_valid = false;

	if
		player_valid (player0)
	then
		if
			player0_on_tortoise == true
		then
			print ("player0 valid and on the tortoise");
			player0_valid_and_on_tortoise_or_not_valid = true;
		else
			print ("player0 valid but not on the tortoise");
		end
	else
		print ("player0 not valid");
		player0_valid_and_on_tortoise_or_not_valid = true;
	end

	if
		player_valid (player1)
	then
		if
			player1_on_tortoise == true
		then
			print ("player1 valid and on the tortoise");
		player1_valid_and_on_tortoise_or_not_valid = true;
		else
			print ("player1 valid but not on the tortoise");
		end
	else
		print ("player1 not valid");
		player1_valid_and_on_tortoise_or_not_valid = true;
	end
	
	if
		player_valid (player2)
	then
		if
			player2_on_tortoise == true
		then
			print ("player2 valid and on the tortoise");
			player2_valid_and_on_tortoise_or_not_valid = true;
		else
			print ("player2 valid but not on the tortoise");
		end
	else
		print ("player2 not valid");
		player2_valid_and_on_tortoise_or_not_valid = true;	
	end
	
	if
		player_valid (player3)
	then
		if
			player3_on_tortoise == true
		then
			print ("player3 valid and on the tortoise");
			player3_valid_and_on_tortoise_or_not_valid = true;	
		else
			print ("player3 valid but not on the tortoise");
		end
	else
		print ("player3 not valid");
		player3_valid_and_on_tortoise_or_not_valid = true;	
	end

end

// TORTOISE STOPS FOR DISTANCE DISTANCE


script static void tort_stop_check_player_location()

	player0_valid_and_far_from_tortoise_or_not_valid = false;
	player1_valid_and_far_from_tortoise_or_not_valid = false;
	player2_valid_and_far_from_tortoise_or_not_valid = false;
	player3_valid_and_far_from_tortoise_or_not_valid = false;

	if
		player_valid (player0)
	then
		if 
			objects_distance_to_object (player0, main_mammoth) > TDT_dist	
		then
			print ("player0 is valid and is far away from tortoise");	
			player0_valid_and_far_from_tortoise_or_not_valid = true;
		else
			print ("player0 is valid but is not far away from tortoise");	
		end
	else
		print ("player0 is not valid so who cares about his distance from the tortoise");	
		player0_valid_and_far_from_tortoise_or_not_valid = true;
	end
	
	if
		player_valid (player1)
	then
		if 
			objects_distance_to_object (player1, main_mammoth) > TDT_dist	
		then
			print ("player1 is valid and is far away from tortoise");	
			player1_valid_and_far_from_tortoise_or_not_valid = true;
		else
			print ("player1 is valid but is not far away from tortoise");	
		end
	else
		print ("player1 is not valid so who cares about his distance from the tortoise");	
		player1_valid_and_far_from_tortoise_or_not_valid = true;
	end
	
	if
		player_valid (player2)
	then
		if 
			objects_distance_to_object (player2, main_mammoth) > TDT_dist	
		then
			print ("player2 is valid and is far away from tortoise");	
			player2_valid_and_far_from_tortoise_or_not_valid = true;
		else
			print ("player2 is valid but is not far away from tortoise");	
		end
	else
		print ("player2 is not valid so who cares about his distance from the tortoise");	
		player2_valid_and_far_from_tortoise_or_not_valid = true;
	end
	
	if
		player_valid (player3)
	then
		if 
			objects_distance_to_object (player3, main_mammoth) > TDT_dist	
		then
			print ("player3 is valid and is far away from tortoise");	
			player3_valid_and_far_from_tortoise_or_not_valid = true;
		else
			print ("player3 is valid but is not far away from tortoise");	
		end
	else
		print ("player3 is not valid so who cares about his distance from the tortoise");	
		player3_valid_and_far_from_tortoise_or_not_valid = true;
	end
	
end

//tar pit damaging

script static void f_m40_damage_volume_players( trigger_volume tv_damage, real r_damage_initial, real r_damage_mod, short s_ticks )
	local real r_p0_damage = 0.0;
	local real r_p1_damage = 0.0;
	local real r_p2_damage = 0.0;
	local real r_p3_damage = 0.0;
	//dprint( "::: f_damage_volume_players :::" );

	repeat

		if ( not volume_test_players(tv_damage) ) then
			r_p0_damage = 0.0;
			r_p1_damage = 0.0;
			r_p2_damage = 0.0;
			r_p3_damage = 0.0;
			sleep_until( volume_test_players(tv_damage), 1 );
		end
		
		// damage players
		r_p0_damage = sys_damage_volume_player( tv_damage, Player0(), r_damage_initial, r_damage_mod, r_p0_damage );
		r_p1_damage = sys_damage_volume_player( tv_damage, Player1(), r_damage_initial, r_damage_mod, r_p1_damage );
		r_p2_damage = sys_damage_volume_player( tv_damage, Player2(), r_damage_initial, r_damage_mod, r_p2_damage );
		r_p3_damage = sys_damage_volume_player( tv_damage, Player3(), r_damage_initial, r_damage_mod, r_p3_damage );
		
	until( FALSE, s_ticks );

end

script static real sys_damage_volume_player( trigger_volume tv_damage, unit obj_player, real r_damage_initial, real r_damage_mod, real r_damage_current )
	//dprint( "::: sys_damage_volume_player :::" );

	if ( not volume_test_object(tv_damage, obj_player) ) then
		r_damage_current = 0.0;
	elseif ( r_damage_current != 0.0 ) then
		r_damage_current = r_damage_current * r_damage_mod;
	else
		r_damage_current = r_damage_initial;
	end
	
	if ( r_damage_current != 0.0 ) then
		damage_object( obj_player, "body", r_damage_current );
	end
	//inspect( r_damage_current );  
	
	// return
	r_damage_current;
end

script static void fx_epic_skybox_lensflares()
	print ("fx_epic_skybox_lensflares");
	effect_new(environments\solo\m40_invasion\fx\lens_flare\skylensflare1.effect, fx_water_epic);
	effect_new(environments\solo\m40_invasion\fx\lens_flare\skylensflare2.effect, fx_sun_epic);
end

script static void reserve_mammoth_vehicles()

	thread (hog1_inside_mammoth_reserving());
	thread (hog2_inside_mammoth_reserving());
	thread (hog3_inside_mammoth_reserving());
	
end

script static void hog1_inside_mammoth_reserving()
	repeat	
	
			sleep_until (tort_hogs_reserve_bool == false
			or
			volume_test_object (tv_tortoise_bottom_01, marines_main_hog_01_veh));
			ai_vehicle_reserve_seat (marines_main_hog_01_veh, "warthog_d", true);
			print ("VEH**************** marines_main_hog_01_veh IS RESERVED ****************VEH");
			sleep_until (tort_hogs_reserve_bool == false
			or			
			not (volume_test_object (tv_tortoise_bottom_01, marines_main_hog_01_veh)));
			ai_vehicle_reserve_seat (marines_main_hog_01_veh, "warthog_d", false);		
			print ("VEH**************** marines_main_hog_01_veh IS NO LONGER RESERVED ****************VEH");
				
	until (tort_hogs_reserve_bool == false);		
end

script static void hog2_inside_mammoth_reserving()
	repeat	
	
			sleep_until (tort_hogs_reserve_bool == false
			or			
			volume_test_object (tv_tortoise_bottom_01, marines_main_hog_02_veh));
			ai_vehicle_reserve_seat (marines_main_hog_02_veh, "warthog_d", true);
			print ("VEH**************** marines_main_hog_02_veh IS RESERVED ****************VEH");
			sleep_until (tort_hogs_reserve_bool == false
			or						
			not (volume_test_object (tv_tortoise_bottom_01, marines_main_hog_02_veh)));
			ai_vehicle_reserve_seat (marines_main_hog_02_veh, "warthog_d", false);		
			print ("VEH**************** marines_main_hog_02_veh IS NO LONGER RESERVED ****************VEH");
			
	until (tort_hogs_reserve_bool == false);			
end

script static void hog3_inside_mammoth_reserving()
	repeat	
	
			sleep_until (tort_hogs_reserve_bool == false
			or			
			volume_test_object (tv_tortoise_bottom_01, marines_main_lakeside_hog_01));
			ai_vehicle_reserve_seat (marines_main_lakeside_hog_01, "warthog_d", true);
			print ("VEH**************** marines_main_lakeside_hog_01 IS RESERVED ****************VEH");
			sleep_until (tort_hogs_reserve_bool == false
			or						
			not (volume_test_object (tv_tortoise_bottom_01, marines_main_lakeside_hog_01)));
			ai_vehicle_reserve_seat (marines_main_lakeside_hog_01, "warthog_d", false);		
			print ("VEH**************** marines_main_lakeside_hog_01 IS NO LONGER RESERVED ****************VEH");
	
	until (tort_hogs_reserve_bool == false);					
end

//script static void unreserve_mammoth_vehicles()
//	ai_vehicle_reserve (vehicle(list_get (volume_return_objects_by_campaign_type (tv_tortoise_bottom_01, 18), 0)), false);
//	ai_vehicle_reserve (vehicle(list_get (volume_return_objects_by_campaign_type (tv_tortoise_bottom_01, 18), 1)), false);
//	ai_vehicle_reserve (vehicle(list_get (volume_return_objects_by_campaign_type (tv_tortoise_bottom_01, 18), 2)), false);
//end

//script static void exit_mammoth_vehicles()
//
//	ai_vehicle_exit
//
////	ai_vehicle_exit (list_get (volume_return_objects_by_type (tv_tortoise_bottom_01, 2), 0));
////	ai_vehicle_exit (object_get_ai (list_get (volume_return_objects_by_type (tv_tortoise_bottom_01, 2), 1)));
////	ai_vehicle_exit (object_get_ai (list_get (volume_return_objects_by_type (tv_tortoise_bottom_01, 2), 2)));
////	ai_vehicle_exit (object_get_ai (list_get (volume_return_objects_by_type (tv_tortoise_bottom_01, 2), 3)));
////	ai_vehicle_exit (object_get_ai (list_get (volume_return_objects_by_type (tv_tortoise_bottom_01, 2), 4)));
//
////	if
////		not (vehicle_test_seat_unit (marines_main_hog_01_veh, "warthog_d", player0))
////	then
////		ai_vehicle_exit (vehicle_driver (marines_main_hog_01_veh));
////	end
////	
////	if
////		not (vehicle_test_seat_unit (marines_main_hog_01_veh, "warthog_g", player0))
////	then
////		unit_exit_vehicle (vehicle_gunner (marines_main_hog_01_veh));
////	end
////
////	if
////		not (vehicle_test_seat_unit (marines_main_hog_02_veh, "warthog_d", player0))
////	then
////		unit_exit_vehicle (vehicle_driver (marines_main_hog_02_veh));
////	end
////	
////	if
////		not (vehicle_test_seat_unit (marines_main_hog_02_veh, "warthog_g", player0))
////	then
////		unit_exit_vehicle (vehicle_gunner (marines_main_hog_02_veh));
////	end
//
//end

script static void lakeside_destroy_test()
	damage_objects (volume_return_objects (tv_lakeside_entire), "hull", 500);
	damage_objects (volume_return_objects (tv_lakeside_entire), "frothull", 500);
	damage_objects (volume_return_objects (tv_lakeside_entire), "front_hull", 500);
	damage_objects (volume_return_objects (tv_lakeside_entire), "hatch", 1000);
	sleep(1);
	garbage_collect_now();
	print ("lakeside massive garbage collect");

	if
		volume_test_object (tv_lakeside_entire, lakeside_plat_ghost_02)
	then
		object_destroy (lakeside_plat_ghost_02);
	end

	if
		volume_test_object (tv_lakeside_combat_area, lakeside_plat_ghost_02)
	then
		object_destroy (lakeside_plat_ghost_02);
	end

end

script static void cliffside_destroy_test()
	damage_objects (volume_return_objects (tv_cliffside_entire), "hull", 500);
	damage_objects (volume_return_objects (tv_cliffside_entire), "frothull", 500);
	damage_objects (volume_return_objects (tv_cliffside_entire), "front_hull", 500);
//	damage_objects (volume_return_objects (tv_lakeside_entire), "hull", 10000);
	sleep(1);
	garbage_collect_now();
	print ("cliffside massive garbage collect");
end

script static void prechopper_destroy_test()
	damage_objects (volume_return_objects (tv_prechop_mass_cleanup), "hull", 500);
	damage_objects (volume_return_objects (tv_prechop_mass_cleanup), "frothull", 500);
	damage_objects (volume_return_objects (tv_prechop_mass_cleanup), "front_hull", 500);
//	damage_objects (volume_return_objects (tv_lakeside_entire), "hull", 10000);
	sleep(1);
	garbage_collect_now();
	print ("prechopper massive garbage collect");
	
	if
		volume_test_object (tv_prechop_mass_cleanup, sq_prechopper_ghost_1_1_veh)
	then
		object_destroy (sq_prechopper_ghost_1_1_veh);
	end
		
	if
		volume_test_object (tv_prechop_mass_cleanup, sq_prechopper_ghost_1_2_veh)
	then
		object_destroy (sq_prechopper_ghost_1_2_veh);
	end
	
	if
		volume_test_object (tv_prechop_mass_cleanup, sq_prechopper_ghost_2_1_veh)
	then
		object_destroy (sq_prechopper_ghost_2_1_veh);
	end
	
	if
		volume_test_object (tv_prechop_mass_cleanup, prechop_reserved_ghost_01)
	then
		object_destroy (prechop_reserved_ghost_01);
	end		
	
end


//====================== MASS CLEANUP SCRIPTS ========================//

script static void objects_destroy_all_in_volume(trigger_volume tv_volume)
	
	sleep_until (not (volume_test_players (tv_volume)), 1);

	if
		volume_test_object (tv_volume, main_mammoth)
	then
		sleep_until (not (volume_test_object (tv_volume, main_mammoth))
		and
		not (volume_test_players (tv_volume)), 1);
		sleep_s(2);
	end
	
	master_object_list = (volume_return_objects (tv_volume));
	
	object_destroy_list( master_object_list );

	print ("ALL objects DESTROYED");
		
	master_object_list = (volume_return_objects (tv_volume));
	inspect (master_object_list_count);
end

script static void objects_destroy_all_in_volume_chop(trigger_volume tv_volume, real object_type)
//object_types
//ghost 26
//wraith 29
//warthog 18

	master_object_list = (volume_return_objects_by_campaign_type (tv_volume, object_type));

	object_destroy_list( master_object_list );
		
	master_object_list_count =	(list_count (volume_return_objects_by_campaign_type (tv_volume, object_type)));
			
	inspect (master_object_list_count);

end


// JOSH'S LAKESIDE WARTHOG SCRIPTS


script command_script warthog_to_front_mammoth_point()

	cs_vehicle_speed (.6);
	ai_path_ignore_object_obstacle (ai_current_actor, main_mammoth);
	cs_ignore_obstacles (TRUE);

	print ("driver going to entry point");
	cs_go_to (lakeside_misc.p8);

	print ("driver going to front");
	cs_go_to (lakeside_misc.p13);
	
	ai_path_clear_ignore_object_obstacle (ai_current_actor);
	ai_vehicle_exit (ai_current_actor);
	print ("marines went through mammoth");
end

script command_script warthog_to_back_mammoth_point()

	cs_vehicle_speed (.6);
	ai_path_ignore_object_obstacle (ai_current_actor, main_mammoth);
	cs_ignore_obstacles (TRUE);

	print ("driver going to entry point");
	cs_go_to (lakeside_misc.p8);

	print ("driver going to back");
	cs_go_to (lakeside_misc.p12);
	
	ai_path_clear_ignore_object_obstacle (ai_current_actor);
	ai_vehicle_exit (ai_current_actor);
	print ("marines went through mammoth");
end

script static ai pick_ai(ai exclude, ai choice1, ai choice2, ai choice3, ai choice4)

	print ("pick_ai");

	if (choice1 != NONE) and (choice1 != exclude) then
		print ("pick_ai 1");
		choice1;
	elseif (choice2 != NONE) and (choice2 != exclude) then
		print ("pick_ai 2");
		choice2;
	elseif (choice3 != NONE) and (choice3 != exclude) then
		print ("pick_ai 3");
		choice3;
	elseif (choice4 != NONE) and (choice4 != exclude) then
		print ("pick_ai 4");
		choice4;
	else
		print ("pick_ai NONE");
		NONE;
	end
end

script static ai valid_ai_in_vehicle(vehicle testVehicle)

	print("valid_ai_in_vehicle");
	
	local ai aiTest = ai_vehicle_get_driver(testVehicle);
	if (aiTest != NONE and unit_in_vehicle(aiTest)) then
		aiTest;
	else
		NONE;
	end
end

script dormant marines_cross_mammoth_sc()

	print ("marines_cross_mammoth_sc");

	// move all possible warthogs into the mammoth so we can cross the river

	// there are n possible warthog ai at this point; I need to pick 2 to move forward with the player; make sure I don't put a hog in there that
		// isn't locked down by jacob's later script

	//local ai aiHog01 = valid_ai_in_vehicle(marines_main_hog_01_veh);
	//local ai aiHog02 = valid_ai_in_vehicle(marines_main_hog_02_veh);
	local ai aiHog01 = valid_ai_in_vehicle(marines_main_hog_01_veh);
	local ai aiHog02 = valid_ai_in_vehicle(marines_main_hog_02_veh);
	local ai aiHog03 = valid_ai_in_vehicle(marines_main_lakeside_hog_01);
	local ai aiHog04 = NONE;
	
	local ai aiPick01 = pick_ai(NONE, aiHog01, aiHog02, aiHog03, aiHog04);
	local ai aiPick02 = pick_ai(aiPick01, aiHog01, aiHog02, aiHog03, aiHog04);	

	if
		aiPick01 != NONE and aiPick02 != NONE
	then
		// we have 2 valid hogs; send the closer one to the front, farther one to the back

		print ("found 2 valid hogs");
		
		if
			// test against the mammoth entry point
			objects_distance_to_point(aiHog01, lakeside_misc.p8) < objects_distance_to_point(aiHog02, lakeside_misc.p8)
		then
			print ("1 closer than 2");

			// 01 is closer; send 01 to front, 02 to back
			cs_run_command_script (aiPick01, warthog_to_front_mammoth_point);

			// wait until the first hog gets close to the entry point
			print ("waiting for 1 to get close to entry point");
			sleep_until (objects_distance_to_point(aiHog01, lakeside_misc.p8) < objects_distance_to_point(aiHog02, lakeside_misc.p8) / 2, 1);
			print ("1 is close");

			// now we assume it's safe to send the second one			
			cs_run_command_script (aiPick02, warthog_to_back_mammoth_point);
		else
			print ("2 closer than 1");

			// 02 is closer; send 02 to front, 01 to back
			cs_run_command_script (aiPick02, warthog_to_front_mammoth_point);

			// wait until the first hog gets close to the entry point
			print ("waiting for 2 to get close to entry point");
			sleep_until (objects_distance_to_point(aiHog02, lakeside_misc.p8) < objects_distance_to_point(aiHog01, lakeside_misc.p8) / 2, 1);
			print ("2 is close");

			// now we assume it's safe to send the 01			
			cs_run_command_script (aiPick01, warthog_to_back_mammoth_point);
		end		
	elseif		
		aiPick01 != NONE
	then
		// only 1; just send to front
		print ("only first is valid");
		cs_run_command_script (aiPick01, warthog_to_front_mammoth_point);
	elseif
		aiPick02 != NONE
	then
		// only 1; just send to front
		print ("only second is valid");
		cs_run_command_script (aiPick02, warthog_to_front_mammoth_point);
	end
end

script static void mammoth_audio_control()

	sleep_until (tort_stopped == false);
	sound_impulse_start('sound\storm\vehicles\mammoth\veh_mammoth_start_up_st', main_mammoth, 1);
	print ("MAMMOTH FIRST TIME AUDIO!");

	repeat	
	
	sleep_until (tort_stopped == false);
	sound_impulse_start('sound\storm\vehicles\mammoth\set_volume_mammoth_start', main_mammoth, 1);
	print ("MAMMOTH AUDIO STARTING");
	
	sleep_until (tort_stopped == true);

		repeat
		sound_impulse_start('sound\storm\vehicles\mammoth\set_volume_mammoth_stop', main_mammoth, 1);
		print ("MAMMOTH AUDIO STOPPING");
		sleep_s (1);
		until (tort_stopped == false);
	
	until (tort_done_in_mission == true);
		
end

//mammoth audio

/*


sound_impulse_start('sound\storm\vehicles\mammoth\veh_mammoth_start_up_st', main_mammoth, 1);
 
sound_impulse_start('sound\storm\vehicles\mammoth\set_volume_mammoth_start', main_mammoth, 1);
 
sound_impulse_start('sound\storm\vehicles\mammoth\set_volume_mammoth_stop', main_mammoth, 1);


//-------------------END

sound_impulse_start('sound\storm\vehicles\mammoth\veh_mammoth_start_up_st',
 main_mammoth,
 1);

sound_looping_start ('sound\storm\vehicles\mammoth\set_volume_mammoth_start',
 main_mammoth,
 1);

sound_looping_stop ('set_volume_mammoth_stop');

*/
// --- End m40_invasion_mission.hsc ---

// --- Begin m40_invasion_powercave.hsc ---
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343
//
// 	Mission: 					m40_invasion_mission_cf
//	Insertion Points:	start 	- Beginning
//	ifo		- fodder
//	ija		- jackal alley
//	ici		- citidel exterior
//	iic		- citidel interior
//	ipo		- powercave/ battery room
//	ili		- librarian encounter			
//  ior		- ordnance training					
//343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343434343

// =================================================================================================
// =================================================================================================
// *** GLOBALS ***
// =================================================================================================
// =================================================================================================
//IPO
global boolean b_pc_cortana_plugged_in = FALSE;
global boolean b_powercave_exit_finish = FALSE;
global boolean b_pc_battery_sent_loop_active = TRUE;
global boolean b_2nd_myterydoor_closed = FALSE;
global boolean b_pc_batteryofflinevo_done = FALSE;
global boolean b_testturret = FALSE;
global boolean b_battery_effects_on = TRUE;
global boolean b_battery_1_on = TRUE;
global boolean b_battery_2_on = TRUE;
global boolean b_battery_3_on = TRUE;
global boolean b_battery_4_on = TRUE;
global boolean b_battery_5_on = TRUE;
global boolean b_battery_6_on = TRUE;
global boolean b_battery_7_on = TRUE;
global boolean b_battery_8_on = TRUE;
global short s_battery_heartbeat = 0;
global boolean b_powercave_door_exit_open = FALSE;
global boolean b_monitor_ready_exit = FALSE;
global boolean b_cortana_kidnapped = FALSE;

// =================================================================================================
// =================================================================================================
// POWERCAVE POWER CAVE
// =================================================================================================
// =================================================================================================


script static void bat_debug()
	wake( f_batterysetup );
end

/*
script dormant powercave_doors()
	sleep_until( volume_test_players ( tv_hallway_light_vol_5 ), 1 );
	thread (open_battery_door() );		
	sleep_until( volume_test_players ( tv_powercave_center ), 1 );
	thread (close_battery_door() );		
end

script static void open_battery_door()
	device_set_position_track (dm_citadel_int_door_hall02_01, "device:position", 1 );
	device_animate_position( dm_citadel_int_door_hall02_01, 1.0, 2, 0.1, 0.1, TRUE );
	print ("device_animate_position" );
	wake (forerunner_int_chapter_title );
end

script static void close_battery_door()
	device_animate_position( dm_citadel_int_door_hall02_01, 0.0, 2, 0.1, 0.1, TRUE );
	print ("device_animate_position" ); 
end
*/

script dormant f_batterysetup()
	sleep_until( volume_test_players ( tv_battery_setup ), 1 );
		dprint("battery setup" );

//		wake( f_hallway_cutoff_a );
//		wake( f_hallway_cutoff_b );
//		wake( f_hallway_elevator_door );
//		wake( f_setup_door_lights_init );		
		wake( f_powercave_main );
//		wake( f_hallway_lights );
		//wake (powercave_doors );
end

script dormant f_powercave_main()

	wake( f_powercave_vo );
	wake( f_halograms_init );	
	wake (f_librarian_main);
	//object_hide (battery_bridge, TRUE); //Hide lightbridge sound scenery: AUDIO!
	dprint ( "BRIDGE AUDIO DESTROYED!" );
	object_destroy ( battery_bridge );


	//object_create_folder(bat_glow );
	zone_set_trigger_volume_enable ( "zone_set:zone_set_battery_cavern", FALSE );
	zone_set_trigger_volume_enable("zone_set:zone_set_cavern_librarian_vale", FALSE);
	sleep(1 );

	
	sleep_until( volume_test_players (tv_batteryroom_door_entrance), 1 );
		effect_new( environments\solo\m40_invasion\fx\energy\battery_beam.effect, fx_13_glowbeam_1);
		effect_new( environments\solo\m40_invasion\fx\energy\battery_beam.effect, fx_13_glowbeam_2);
		effect_new( environments\solo\m40_invasion\fx\energy\battery_beam.effect, fx_13_glowbeam_3);
		effect_new( environments\solo\m40_invasion\fx\energy\battery_beam.effect, fx_13_glowbeam_4);
		effect_new( environments\solo\m40_invasion\fx\energy\battery_beam.effect, fx_13_glowbeam_5);
		effect_new( environments\solo\m40_invasion\fx\energy\battery_beam.effect, fx_13_glowbeam_6);
		effect_new( environments\solo\m40_invasion\fx\energy\battery_beam.effect, fx_13_glowbeam_7);
		effect_new( environments\solo\m40_invasion\fx\energy\battery_beam.effect, fx_13_glowbeam_8);
		pup_play_show(bat_power_show);
		ai_place(battery_sentinels);
		//thread( f_pc_battery_sent(pc_sent_clarise) );
		//thread( f_pc_battery_sent_b() );
		//thread( f_pc_battery_monitor() );
		
		wake( f_valley_cleanup );
		
//		sound_looping_start ( "sound\environments\solo\m020\ambience\amb_bridge02", NONE, 1.0 );
		game_save( );
		//thread( f_start_battery_effects() );

		//dprint(":::close doors:::" );
		thread( f_open_powercave_door() );
		
		sleep_s(3 );
		wake (powercave_cinematic_title );
		sleep_s(2 );
		NotifyLevel("battery switch" );
		sleep_s(3 );
	
		wake( f_powercave_switch );
end

script dormant powercave_cinematic_title()
	//sleep_until( volume_test_players (tv_powercave_center), 1 );
		cui_hud_set_objective_complete("chapter_09");
	cui_hud_set_new_objective("chapter_092");
	//cinematic_set_title (chapter_092 );
end

script static void f_open_powercave_door()

		//sound_impulse_start ('sound\environments\solo\m020\machines_devices\s_dm_gun_door', sn_pcave_battery_door, 1 );
		object_move_by_offset ( sn_pcave_battery_door, 3.5, 0, 0, 3.0 );
		wake (m40_cortana_confusion_powercave_room );
	
end



script dormant f_halograms_init()
	
	//object_create(dm_halogram_cannon_1 );
	//object_create(dm_halogram_cannon_2 );
	//object_create(dm_halogram_cannon_3 );
	//object_create(dm_halogram_cannon_4 );
	sleep(1 );
	wake( f_halogram_light_init );
end


script dormant f_halogram_light_init()

	sleep(1 );

	//CANNON HALOGRAMS
	 	effect_new_at_ai_point ("fx\library\light\light_red\light_red.effect", pts_bat.plight_1 ); 
	 	effect_new_at_ai_point ("fx\library\light\light_red\light_red.effect", pts_bat.plight_3 ); 
end

/*script dormant f_halogram_shutdown()

		object_move_to_flag ( dm_halogram_cannon_1, 2.0, halogram_1 );	
		object_move_to_flag ( dm_halogram_cannon_2, 2.0, halogram_2 );	
		object_move_to_flag ( dm_halogram_cannon_3, 2.0, halogram_3 );	
		object_move_to_flag ( dm_halogram_cannon_4, 2.0, halogram_4 );	
	 	effect_new_at_ai_point ("fx\library\light\light_red\light_red.effect", pts_bat.plight_2 ); 
	 	effect_new_at_ai_point ("fx\library\light\light_red\light_red.effect", pts_bat.plight_4 ); 
end*/

script static void f_activator_get( object trigger, unit activator )
	g_ics_player = activator;

	if ( trigger == domain_terminal_button ) then
		f_narrative_domain_terminal_interact( 3, domain_terminal, domain_terminal_button, activator, 'pup_domain_terminal' );
	end
	
end

script dormant f_powercave_switch()

	NotifyLevel("Activate Battery Console" );
	sleep_s(5);
	object_create(bt_powercave_battery_button );
	f_blip_object (bt_powercave_battery_button, "activate" );
//	device_group_set_immediate (bt_powercave_battery_button, 1 );
	sleep_until( device_get_position(bt_powercave_battery_button) != 0 );
		local long bat_show = pup_play_show(bat_cortana_show);
		//wake (m40_cortana_powercave_plinth_dialogue );
		f_unblip_object (bt_powercave_battery_button );

		sleep(300);
		NotifyLevel("battery offline" );
		//wake( f_halogram_shutdown );
		//thread( f_pc_battery_shutdown_seq() );
		sleep_s(2 );
		thread( f_close_powercave_door() );
		sleep_until(not pup_is_playing(bat_show ));		
		wake( f_drop_off_cortana_pc );	
		wake (m40_cortana_powercave_plinth_trouble );
end

script static void f_close_powercave_door()
	camera_shake_all_coop_players( 0.5, 0.4, 1, 2, powercave_door_camera_shake );
//	thread( f_redlight_on( sn_pcave_battery_door ) );
	//sound_impulse_start ('sound\environments\solo\m020\machines_devices\s_dm_gun_door', sn_pcave_battery_door, 1 );
	object_move_by_offset ( sn_pcave_battery_door, 1.5, 0, 0, -3.0 );
	
	b_2nd_myterydoor_closed = TRUE;
end




script dormant f_drop_off_cortana_pc()
		NotifyLevel("cortana plugged in power cave" );
		b_pc_cortana_plugged_in = TRUE;
		wake( f_pc_disappear_cortana );
		wake( f_close_liberry_door_entrance );
		
		
	sleep_until( LevelEventStatus("cortana disappeared done"), 1 );
		sleep(1);
		sleep_until(not PreparingToSwitchZoneSet(), 1);
		zone_set_trigger_volume_enable ( "zone_set:zone_set_battery_cavern", TRUE );
		//thread( f_insertion_zoneload(DEF_S_ZONESET_BATTERY_CAVERN(), TRUE) );
		
		//sleep_s(2 );
		game_save( );
		objectives_finish (1);
		objectives_show (2);
		
		wake( f_pc_exit_init );
end

script dormant f_pc_exit_init()
		object_destroy_folder( cit_elevator );
		sleep_s(2 );
		//cinematic_set_title ( chapter_095 );
		cui_hud_set_objective_complete("chapter_092");
		cui_hud_set_new_objective("chapter_095");
		thread( f_spawn_pc_turrets() );
		sleep_s(1 );
		
		wake( f_open_powercave_door_exit );
		wake( f_blip_powercave_door_exit );
		wake( f_powercave_finished );
		wake( f_tunnel_doors_init );
		wake( f_tunnel_lights );
		//thread( f_pc_grotto_monitor_greeter() );
end

script dormant f_pc_disappear_cortana()

	sleep_until(LevelEventStatus ("cortana disappeared start"), 1 );
		//effect_new( objects\weapons\rifle\storm_mortar\fx\airborne_detonation.effect, fg_cortana_pc_effect );
		sleep(10 );
		object_set_scale ( pc_cortana, 0.01, 5 );
		sleep(5 );
		object_set_scale ( pc_cortana, 0.5, 5 );
		sleep(5 );
		object_set_scale ( pc_cortana, 0.01, 5 );
		sleep(5 );
		//effect_new( objects\weapons\rifle\storm_mortar\fx\airborne_detonation.effect, fg_cortana_pc_effect );
		object_destroy(pc_cortana );
		
end



script dormant f_open_powercave_door_exit()

	sleep_until( current_zone_set_fully_active() == DEF_S_ZONESET_BATTERY_CAVERN(), 1 );
//		thread( f_greenlight_on( sn_pcave_door_exit  ) );

		
	sleep_until( volume_test_players(tv_powercave_center), 1 );		
		b_monitor_ready_exit = true;
		//sleep_s(1);
		thread( f_extend_pc_angle_bridge() );
		sleep_s(1.75 );
		
		camera_shake_all_coop_players( 0.5, 0.4, 1, 2, powercave_door_camera_shake );

		sound_impulse_start ('sound\environments\solo\m040\new_m40_tags\amb_m40_machines\amb_doors_d_open_close', sn_pcave_door_exit, 1 );	
		object_move_by_offset ( sn_pcave_door_exit, 2, 0, 0, 1.5 );
		b_powercave_door_exit_open = TRUE;
end





script dormant f_blip_powercave_door_exit()
	sleep_s(150 );
	
	
	if not b_powercave_exit_finish then
		f_blip_flag(fg_batterycave_exit, "default" );
		sleep_until( volume_test_players (tv_powercave_door_exit), 1 );	
			f_unblip_flag(fg_batterycave_exit );
	end
end



script dormant f_powercave_finished()		
		sleep_until( volume_test_players (tv_powercave_door_exit), 1 );	
			b_powercave_exit_finish = TRUE;

end
	
script static void f_extend_pc_angle_bridge()
	object_create_folder( angled_light_bridge );
	sound_impulse_start ( 'sound\environments\solo\m040\new_m40_tags\amb_m40_machines\amb_pc_lightbridge_2_m40_tunnel_light_spawn', power_cave_lightbridge, 1 );
	dprint ( "SPAWN BRIDGE SOUND!" );
	//object_hide ( battery_bridge, FALSE ); //Unhide lightbridge sound scenery: AUDIO!
	if not object_valid( battery_bridge ) then
		object_create( battery_bridge );
	end
	
	sleep(10 );
	object_create( pc_lightbridge_1 );
	sleep(10 );
	object_create( pc_lightbridge_2 );
	sleep(10 );
	object_create( pc_lightbridge_3 );
	
	
	
	object_create( pc_exit_loc_1 );
	object_create( pc_exit_loc_2 );
	object_create( pc_exit_loc_3 );
	object_create( pc_exit_loc_4 );
	object_create( pc_exit_loc_5 );
	object_create( pc_exit_loc_6 );
	
end




/*script static void f_start_battery_effects()

	thread( start_camera_shake_loop( "weak", "short" ) );
	repeat
	
		if b_battery_1_on then
			effect_new( fx\reach\fx_library\cinematics\boneyard\070la_waypoint_arrival\01\slipspace_rupture_carrier.effect, fg_bat_1_e_1 );
//			effect_new( objects\vehicles\covenant\space_phantom\fx\running\cinematic_gravlift_up.effect, fg_bat_1_e_2 );			
			sleep_rand_s(0.25, 0.75 );
			s_battery_heartbeat = s_battery_heartbeat + 1;
		end
		
		if b_battery_2_on then
			effect_new( fx\reach\fx_library\cinematics\boneyard\070la_waypoint_arrival\01\slipspace_rupture_carrier.effect, fg_bat_2_e_1 );
//			effect_new( objects\vehicles\covenant\space_phantom\fx\running\cinematic_gravlift_up.effect, fg_bat_2_e_2 );
			sleep_rand_s(0.25, 0.75 );
			s_battery_heartbeat = s_battery_heartbeat + 1;
		end
		
		if b_battery_3_on then
			effect_new( fx\reach\fx_library\cinematics\boneyard\070la_waypoint_arrival\01\slipspace_rupture_carrier.effect, fg_bat_3_e_1 );
//			effect_new( objects\vehicles\covenant\space_phantom\fx\running\cinematic_gravlift_up.effect, fg_bat_3_e_2 );	
			sleep_rand_s(0.25, 0.75 );
			s_battery_heartbeat = s_battery_heartbeat + 1;
		end
		
		if b_battery_4_on then
			effect_new( fx\reach\fx_library\cinematics\boneyard\070la_waypoint_arrival\01\slipspace_rupture_carrier.effect, fg_bat_4_e_1 );
//			effect_new( objects\vehicles\covenant\space_phantom\fx\running\cinematic_gravlift_up.effect, fg_bat_4_e_2 );
			sleep_rand_s(0.25, 0.75 );
			s_battery_heartbeat = s_battery_heartbeat + 1;
		end
		
		if b_battery_5_on then
			effect_new( fx\reach\fx_library\cinematics\boneyard\070la_waypoint_arrival\01\slipspace_rupture_carrier.effect, fg_bat_5_e_1 );
//			effect_new( objects\vehicles\covenant\space_phantom\fx\running\cinematic_gravlift_up.effect, fg_bat_5_e_2 );		
			sleep_rand_s(0.25, 0.75 );
			s_battery_heartbeat = s_battery_heartbeat + 1;
		end
		
		if b_battery_6_on then
			effect_new( fx\reach\fx_library\cinematics\boneyard\070la_waypoint_arrival\01\slipspace_rupture_carrier.effect, fg_bat_6_e_1 );
//			effect_new( objects\vehicles\covenant\space_phantom\fx\running\cinematic_gravlift_up.effect, fg_bat_6_e_2 );		
			sleep_rand_s(0.25, 0.75 );
			s_battery_heartbeat = s_battery_heartbeat + 1;
		end
				
		if b_battery_7_on then
			effect_new( fx\reach\fx_library\cinematics\boneyard\070la_waypoint_arrival\01\slipspace_rupture_carrier.effect, fg_bat_7_e_1 );
//			effect_new( objects\vehicles\covenant\space_phantom\fx\running\cinematic_gravlift_up.effect, fg_bat_7_e_2 );		
			sleep_rand_s(0.25, 0.75 );
			s_battery_heartbeat = s_battery_heartbeat + 1;
		end
				
		if b_battery_8_on then
			effect_new( fx\reach\fx_library\cinematics\boneyard\070la_waypoint_arrival\01\slipspace_rupture_carrier.effect, fg_bat_8_e_1 );
//			effect_new( objects\vehicles\covenant\space_phantom\fx\running\cinematic_gravlift_up.effect, fg_bat_8_e_2 );		
			sleep_rand_s(0.25, 0.75 );
			s_battery_heartbeat = s_battery_heartbeat + 1;
		end

		s_battery_heartbeat = s_battery_heartbeat / 2;
		s_battery_heartbeat = 7 - s_battery_heartbeat;

		if s_battery_heartbeat > 5 then
			sleep_s ( s_battery_heartbeat );
		end
		
	until( b_battery_effects_on == FALSE , 1 );
end*/



script static void f_bat_shutdown_beam(object beam_a, object beam_b)
 thread( f_bat_shutdown_beam_up( beam_a ) );
 thread( f_bat_shutdown_beam_down( beam_b ) );
end

script static void f_bat_shutdown_beam_up(object beam)
	sound_impulse_start ('sound\environments\solo\m040\new_m40_tags\amb_m40_machines\amb_m40_battery_power_down', beam, 1.3 );
	object_move_by_offset ( beam, 2, 0, 0, 3.5 );
end

script static void f_bat_shutdown_beam_down(object beam)
	object_move_by_offset ( beam, 2, 0, 0, -3.5 );
end


script static void f_pc_battery_shutdown_seq()

	thread( stop_camera_shake_loop() );
	camera_shake_all_coop_players( 0.65, 0.45, 1, 0.75, battery_airlock_camera_shake );
	sound_impulse_start ('sound\levels\solo\m45\airlock\airlock_repressurize', NONE, 1 );
	//thread( f_bat_shutdown_beam(pc_bat_01_beam_a, pc_bat_01_beam_b) );
	
	sound_impulse_start ('sound\environments\solo\m040\new_m40_tags\amb_m40_machines\amb_m40_battery_power_down', bat_power_1, 1.3 );
	effect_delete_from_flag( environments\solo\m40_invasion\fx\energy\battery_beam.effect, fx_13_glowbeam_8);
	effect_new( environments\solo\m40_invasion\fx\energy\battery_beam_depletion.effect, fx_13_glowbeam_8);
	interpolator_start( bat_light_01);
	//object_destroy(bat_glow_1 );
	b_battery_1_on = FALSE;
	sleep(26);
	//thread( f_bat_shutdown_beam(pc_bat_02_beam_a, pc_bat_02_beam_b) );
	sound_impulse_start ('sound\environments\solo\m040\new_m40_tags\amb_m40_machines\amb_m40_battery_power_down', bat_power_2, 1.3 );
	//object_destroy(bat_glow_2 );
	effect_delete_from_flag( environments\solo\m40_invasion\fx\energy\battery_beam.effect, fx_13_glowbeam_1);
	effect_new( environments\solo\m40_invasion\fx\energy\battery_beam_depletion.effect, fx_13_glowbeam_1);
	interpolator_start( bat_light_02);

	b_battery_2_on = FALSE;
	sleep(15);	
	
	camera_shake_all_coop_players( 0.65, 0.45, 1, 0.75, battery_airlock_camera_shake );
	sound_impulse_start ('sound\levels\solo\m45\airlock\airlock_repressurize', NONE, 1 );
	//thread( f_bat_shutdown_beam(pc_bat_03_beam_a, pc_bat_03_beam_b) );
	sound_impulse_start ('sound\environments\solo\m040\new_m40_tags\amb_m40_machines\amb_m40_battery_power_down', bat_power_3, 1.3 );
	//object_destroy(bat_glow_3 );
	effect_delete_from_flag( environments\solo\m40_invasion\fx\energy\battery_beam.effect, fx_13_glowbeam_7);
	effect_new( environments\solo\m40_invasion\fx\energy\battery_beam_depletion.effect, fx_13_glowbeam_7);
	interpolator_start( bat_light_03);
	b_battery_3_on = FALSE;
	sleep(28);
	//thread( f_bat_shutdown_beam(pc_bat_04_beam_a, pc_bat_04_beam_b) );
	sound_impulse_start ('sound\environments\solo\m040\new_m40_tags\amb_m40_machines\amb_m40_battery_power_down', bat_power_4, 1.3 );
	//object_destroy(bat_glow_4 );
	effect_delete_from_flag( environments\solo\m40_invasion\fx\energy\battery_beam.effect, fx_13_glowbeam_2);
	effect_new( environments\solo\m40_invasion\fx\energy\battery_beam_depletion.effect, fx_13_glowbeam_2);
	interpolator_start( bat_light_04);
	b_battery_4_on = FALSE;
	sleep(24);	

	camera_shake_all_coop_players( 0.65, 0.45, 1, 0.75, battery_airlock_camera_shake );
	sound_impulse_start ('sound\levels\solo\m45\airlock\airlock_repressurize', NONE, 1 );
	//thread( f_bat_shutdown_beam(pc_bat_05_beam_a, pc_bat_05_beam_b) );
	b_battery_5_on = FALSE;
	sound_impulse_start ('sound\environments\solo\m040\new_m40_tags\amb_m40_machines\amb_m40_battery_power_down', bat_power_5, 1.3 );
	//object_destroy(bat_glow_5 );
	effect_delete_from_flag( environments\solo\m40_invasion\fx\energy\battery_beam.effect, fx_13_glowbeam_6);
	effect_new( environments\solo\m40_invasion\fx\energy\battery_beam_depletion.effect, fx_13_glowbeam_6);
	interpolator_start( bat_light_05);
	sleep(20);
	//thread( f_bat_shutdown_beam(pc_bat_06_beam_a, pc_bat_06_beam_b) );
	sound_impulse_start ('sound\environments\solo\m040\new_m40_tags\amb_m40_machines\amb_m40_battery_power_down', bat_power_6, 1.3 );
	//object_destroy(bat_glow_6 );
	effect_delete_from_flag( environments\solo\m40_invasion\fx\energy\battery_beam.effect, fx_13_glowbeam_3);
	effect_new( environments\solo\m40_invasion\fx\energy\battery_beam_depletion.effect, fx_13_glowbeam_3);
	interpolator_start( bat_light_06);
	b_battery_6_on = FALSE;
	sleep(28);	
	
	
	camera_shake_all_coop_players( 0.65, 0.45, 1, 0.75, battery_airlock_camera_shake );
	sound_impulse_start ('sound\levels\solo\m45\airlock\airlock_repressurize', NONE, 1 );
	sound_impulse_start ('sound\environments\solo\m040\new_m40_tags\amb_m40_machines\amb_m40_battery_power_down', bat_power_7, 1.3 );
	//thread( f_bat_shutdown_beam(pc_bat_07_beam_a, pc_bat_07_beam_b) );
	//object_destroy(bat_glow_7 );
	effect_delete_from_flag( environments\solo\m40_invasion\fx\energy\battery_beam.effect, fx_13_glowbeam_5);
	effect_new( environments\solo\m40_invasion\fx\energy\battery_beam_depletion.effect, fx_13_glowbeam_5);
	interpolator_start( bat_light_07);
	b_battery_7_on = FALSE;
	sleep(19);
	//thread( f_bat_shutdown_beam(pc_bat_08_beam_a, pc_bat_08_beam_b) );
	sound_impulse_start ('sound\environments\solo\m040\new_m40_tags\amb_m40_machines\amb_m40_battery_power_down', bat_power_8, 1.3 );
	//object_destroy(bat_glow_8 );
	effect_delete_from_flag( environments\solo\m40_invasion\fx\energy\battery_beam.effect, fx_13_glowbeam_4);
	effect_new( environments\solo\m40_invasion\fx\energy\battery_beam_depletion.effect, fx_13_glowbeam_4);
	interpolator_start( bat_light_08);
	b_battery_8_on = FALSE;
	sleep(15);	
	
        object_set_function_variable(missile_hologram, color_change, 1, 0);
//	sound_looping_stop ( "sound\environments\solo\m020\ambience\amb_bridge02" );

	b_battery_effects_on = FALSE;
end

script static void f_zone_num()
	inspect(current_zone_set_fully_active() );
end


/////////////////////////
// GROTTO
////////////////////////

/*script static void grotto_debug()
			thread( f_spawn_pc_turrets() );
			wake( f_close_liberry_door_entrance );	
			wake( f_tunnel_doors_init );	
			//thread( f_pc_grotto_monitor_greeter() );	
			wake( f_tunnel_lights );
end*/

script dormant f_tunnel_lights()

	
	object_create( tun_light_0 );
	sleep_until( volume_test_players ( tv_tunnel_light_1 ), 1 );	
		object_destroy( tun_light_0 );
		object_create( tun_light_1 );

	sleep_until( volume_test_players ( tv_tunnel_light_2 ), 1 );	
		object_destroy( tun_light_1 );
		object_create( tun_light_2 );

	sleep_until( volume_test_players ( tv_tunnel_light_3 ), 1 );	
		object_destroy( tun_light_2 );
		object_create( tun_light_3 );

	sleep_until( volume_test_players ( tv_tunnel_light_4 ), 1 );	
		object_destroy( tun_light_3 );
		object_create( tun_light_4 );

	sleep_until( volume_test_players ( tv_tunnel_light_5 ), 1 );	
		object_destroy( tun_light_4 );
		object_create( tun_light_5 );

end

script dormant f_tunnel_doors_init()
	sleep_until(volume_test_players(tv_tunnel_open_a),1 );
		//object_move_by_offset ( sn_tunnel_door_a, 2, 0, 0, 1.5 );
	sleep_until(volume_test_players(tv_tunnel_open_b),1 );
	sound_impulse_start ( 'sound\environments\solo\m040\new_m40_tags\amb_m40_machines\amb_doors_d_open_close', sn_tunnel_door_b, 1 );
	object_move_by_offset (sn_tunnel_door_b, 3, 0, -.6, 1.5 );
end

script static void f_spawn_pc_turrets()

	sleep_until(volume_test_players(tv_cave_spawn_turret),1 );
//		thread( f_greenlight_on( sn_pcave_turret_door  ) );
	//	ai_place( for_pc_turret_01_false );
		//ai_place( for_pc_turret_01 );
		//ai_place( for_pc_turret_02 );
		sleep(10 );
		//ai_erase(for_pc_turret_01_false );
		b_pc_battery_sent_loop_active = FALSE;
		
		//cleanup just in case
		f_unblip_flag(fg_batterycave_exit );
end

/*script static void ActivateTurret(ai turretPilot, unit turretVeh)
  unit_open (turretVeh );
  unit_set_current_vitality (turretVeh, 99999, 0 );
  object_cannot_take_damage (ai_vehicle_get_from_spawn_point(turretPilot) );
  sleep_until( object_get_health (turretVeh) <= 0, 1 ); 
	  dprint ("Turret Destroyed" );
	  ai_braindead (turretPilot, TRUE );
	  ai_disregard (ai_actors (turretPilot), TRUE );
	  unit_close (turretVeh );
end


script command_script cs_stay_in_turret
  print("Initializing Turret." );
  
  
  cs_enable_targeting (TRUE );
  cs_shoot (TRUE );
  cs_enable_moving (TRUE );
  cs_enable_looking (TRUE );
  cs_aim_player (TRUE );
  cs_abort_on_damage (FALSE );
  cs_abort_on_alert (FALSE );
  ai_cannot_die (ai_current_actor, TRUE );
  object_cannot_take_damage (ai_vehicle_get_from_spawn_point(ai_current_actor) );  
  ai_disregard (ai_actors (ai_current_actor), TRUE );
  cs_shoot (FALSE );
  cs_aim_player (ai_current_actor,TRUE );
  sleep_until(b_testturret, 3 );
 		ai_cannot_die (ai_current_actor, FALSE );

end*/

script dormant f_close_liberry_door_entrance()
//eee

	sleep_until( volume_test_players (tv_turretroom_enter) , 1 );
		// start to load the next zone set
		//( f_zoneset_get(DEF_S_ZONESET_CAVERN_LIBRARIAN_VALE()) );

//		thread( f_redlight_on( sn_pcave_turret_door  ) );
		//thread (f_close_giant_door( sn_grotto_block_off ) );

		object_destroy( tun_light_5 );
		object_create (sn_pcave_door_exit_2);
			
	// wait for the zone set to load then do the switch
	sleep(1);
	sleep_until (not preparingToSwitchZoneSet(), 1); // poll whether async load is complete
	zone_set_trigger_volume_enable("zone_set:zone_set_cavern_librarian_vale", TRUE);
	//f_insertion_zoneload( DEF_S_ZONESET_CAVERN_LIBRARIAN_VALE(), TRUE );
	
	// Open the grotto door when the player gets close enough
	sleep_until( volume_test_players (tv_grotto_open_door), 1 );
		ai_erase(battery_sentinels);

//		thread( f_greenlight_on( grotto_door  ) );
	sleep_until( current_zone_set_fully_active() >= DEF_S_ZONESET_CAVERN_LIBRARIAN_VALE(), 1 );
		//ai_place (cavern_sentinels_3);	

		ai_place (cavern_sentinels_4);
		ai_place (cavern_sentinels_5);	
		wake( f_lib_crates_init );
		if b_turret_door_closed then 
			b_turret_door_closed = FALSE;
			// sound_impulse_start ('sound\environments\solo\m040\new_m40_tags\amb_m40_machines\amb_doors_c_open', grotto_door, 1 );
//			object_move_by_offset ( sn_pcave_turret_door, 3, 0, 0, 2.0 );
		device_set_power (grotto_door, 0 );
		end

//		thread( f_redlight_on( sn_pcave_door_exit  ) );
		sound_impulse_start ( 'sound\environments\solo\m040\new_m40_tags\amb_m40_machines\amb_doors_d_open_close', sn_pcave_door_exit, 1 );
		object_move_by_offset ( sn_pcave_door_exit, 3, 0, -.6, 1.5 );
		f_cleanup_powercave( );
		
end

script static void f_cleanup_powercave()
	//object_destroy(dm_halogram_cannon_1 );
	//object_destroy(dm_halogram_cannon_2 );
	//object_destroy(dm_halogram_cannon_3 );
	//object_destroy(dm_halogram_cannon_4 );
	object_destroy_folder(battery_beams );
end


/*script static void f_pc_grotto_monitor_greeter()
	sleep_until(volume_test_players(tv_tunnel_exit),1 );

		object_rotate_by_offset ( sn_grotto_monitor_mort, 0.75, 0.75, 0.75, 90, 0, 0 );
		object_move_to_flag ( sn_grotto_monitor_mort, 3, fg_flyto_door_a );
		object_rotate_by_offset ( sn_grotto_monitor_mort, 0.5, 0.5, 0.5, 180, 0, 0 );
		
		repeat 
			object_rotate_by_offset ( sn_grotto_monitor_mort, 0.25, 0.25, 0.25, 0, -45, 0 );
			object_move_to_flag ( sn_grotto_monitor_mort, 1, fg_flyto_door_b );
			object_move_to_flag ( sn_grotto_monitor_mort, 0.55, fg_flyto_door_a );
			object_rotate_by_offset ( sn_grotto_monitor_mort, 0.25, 0.25, 0.25, 0, 45, 0 );
			object_move_to_flag ( sn_grotto_monitor_mort, 0.33, fg_flyto_door_b );
			
			object_move_to_flag ( sn_grotto_monitor_mort, 0.55, fg_flyto_door_a );
			object_rotate_by_offset ( sn_grotto_monitor_mort, 0.25, 0.25, 0.25, 0, -25, 0 );
			object_move_to_flag ( sn_grotto_monitor_mort, 0.75, fg_flyto_door_b );
			object_move_to_flag ( sn_grotto_monitor_mort, 0.65, fg_flyto_door_a );
			object_rotate_by_offset ( sn_grotto_monitor_mort, 0.25, 0.25, 0.25, 0, 25, 0 );
		until( current_zone_set_fully_active() >= DEF_S_ZONESET_LIBRARIAN_VALE(),1 );

end*/


// =================================================================================================
// =================================================================================================
// VO 
// =================================================================================================
// =================================================================================================


script dormant f_powercave_vo()
		
	sleep_until( volume_test_players (tv_batteryroom_door_entrance), 1 );
		// 141 : There, along the back wall.
		sleep_s( 3 );

		//sleep (30 * 2 );
		
	sleep_until( LevelEventStatus("Activate Battery Console"), 1 );		
//		sound_impulse_start ('sound\dialog\Mission\M40\m_m40_Cortana_05600', NONE, 1 );
	//	sleep_s( 3 );
		//jack me into that console
	//	sound_impulse_start ('sound\environments\solo\m010\vo\M_M10_Cortana_03120', NONE, 1 );
	//	sleep (30 * 6 );
 
		
//		storyblurb_display(ch_blurb_powercave  , 3, FALSE, FALSE );
	sleep_until( LevelEventStatus("battery offline"), 1 );
		// 142 : Cortana to Infinity. The generators are offline. How�s it look from up there?
	//	sound_impulse_start ('sound\dialog\Mission\M40\m_m40_Cortana_05700', NONE, 1 );
	//	sleep (30 * 5 );
		
		// 143 : ---ccopmlished --ortana! ---uns dis---! ---port--- yspy Comp---
	//	sound_impulse_start ('sound\dialog\Mission\M40\m_m40_Del_Rio_05800', NONE, 1 );
	//	sleep (30 * 5 );
		
		// 144 : From the sounds of things we did OK. Now to get back to Gypsy Company and see about that gravity well.
	//	sound_impulse_start ('sound\dialog\Mission\M40\m_m40_Cortana_05900', NONE, 1 );
	//	sleep (30 * 5 );
		
		b_pc_batteryofflinevo_done = TRUE;
//		storyblurb_display(ch_blurb_powercave_off  , 4, FALSE, FALSE );
		
//a little to early
/*
	sleep_until( b_2nd_myterydoor_closed , 1 );
		// 145 : Alright, this has officially stopped being cute! It�s about time I showed this place who�s �Boss�! Jack me into one of those consoles.
		sound_impulse_start ('sound\dialog\Mission\M40\m_m40_Cortana_06000', NONE, 1 );
		sleep (30 * 8 );	
*/
	sleep_until( b_pc_cortana_plugged_in and b_pc_batteryofflinevo_done, 1 );
		dprint("This... this isn�t right. Where is this coming fr-- (sudden shock) WAIT! WA-WA--WAAAAAAAAAIT!!!!" );
		// 146 : This... this isn�t right. Where is this coming fr-- (sudden shock) WAIT! WA-WA--WAAAAAAAAAIT!!!!
	//	sound_impulse_start ('sound\dialog\Mission\M40\m_m40_Cortana_06100', NONE, 1 );
	//	sleep (30 * 7 );
		
		NotifyLevel("cortana disappeared start" );
		// 147 : Cortana! Cortana, what�s happening? Cortana?!?
		dprint("Cortana! Cortana, what�s happening? Cortana?!?" );
	//	sound_impulse_start ('sound\dialog\Mission\M40\m_m40_MC_06200', NONE, 1 );
	//	sleep (30 * 4 );
		
		NotifyLevel("cortana disappeared done" );

end


/*script static void pc_halogram_1()
	device_set_overlay_track( dm_halogram_cannon_1, 'any:pew' );
	//device_animate_overlay( dm_cannon_1, 1, 27.5, 0, 0 );
	//sleep( 30 * 27.5 );
	device_animate_overlay( dm_halogram_cannon_1, 27, 0.1, 0, 0 );

end

script static void pc_halogram_2()
	device_set_position_track( dm_halogram_cannon_2, 'any:pew', 0 );
	print("setposition" );
	sleep_s(3 );
	print("heh" );
	device_set_power( dm_halogram_cannon_2, 0.0 );
	sleep_s(3 );
	print( "go back" );
	device_set_power( dm_halogram_cannon_2, 1.0 );
	device_animate_position( dm_halogram_cannon_2, 0.0, 10.0, 0.0, 0.0, TRUE );

	/*
	device_set_overlay_track( dm_halogram_cannon_2, 'any:pew' );
	device_animate_overlay( dm_halogram_cannon_2, 10.0, 10.0, 0.0, 0.0 );
	print("setposition" );
	sleep_s(5 );
	print("heh" );
	device_set_power( dm_halogram_cannon_2, 0.0 );
	sleep_s(5 );
	print( "go back" );
	device_set_power( dm_halogram_cannon_2, 1.0 );
	device_animate_overlay( dm_halogram_cannon_2, 0.0, 10.0, 0.0, 0.0 );
	*/
//end

// --- End m40_invasion_powercave.hsc ---

// --- Begin m40_invasion_prechopper.hsc ---
// =================================================================================================
// =================================================================================================
// PRECHOPPER
// =================================================================================================
// =================================================================================================

global short s_bubbles_burst = 0;
global boolean b_player_in_bubble_two = false;
global boolean b_bubble_one_burst = false;
global boolean b_bubble_two_burst = false;
global boolean b_bubble_three_burst = false;
global boolean prechop_battle_enter_bool = false;
global boolean player_at_end_of_prechop = false;

script dormant f_bubble_control
	print ("Bubble Control");

		wake (f_bubble_check_one);
		wake (f_bubble_check_two);
		wake (f_bubble_check_three);
		
		sleep_until(s_bubbles_burst >= 1);
		print ("One Bubble Destroyed");
		wake (f_dialog_m40_pre_chopper_one_down);
		thread (prechopper_player_leave_dialogue());
		
		thread (wraith_dialogue_warning());
				
		sleep_s (1);
		
		sleep_until(s_bubbles_burst >= 2);
		print ("Two Bubble Destroyed");
		wake (f_dialog_m40_pre_chopper_two_down);

		object_set_function_variable (prechopper_shield_barrier, shield_color, 1, 0);

		sleep_s (1);
		
		sleep_until(s_bubbles_burst >= 3);
		print ("Three Bubble Destroyed");
		wake (f_dialog_m40_pre_chopper_all_down);	

		ai_place (chop_dead_marines);
		
		thread (prechop_backtrack_soft_wall());
		
		object_destroy (prechopper_shield_barrier);
		thread (keep_prechop_shield_destroyed());
		object_can_take_damage (cannon_chopper_new);
		soft_ceiling_enable ("prechop_chop_divider", false);
		
		sleep_s (2);
		
		wake (f_dialog_m40_prechopper_waiting);

		sleep_s (2);
				
		f_blip_flag (prechopper_leave_flag, "default");
		
		sleep_until (chop_obj_state >= 20
		or
		volume_test_players (tv_tort_rec_chopper_pt0), 1);

		f_unblip_flag (prechopper_leave_flag);
		
end

script static void keep_prechop_shield_destroyed()
	repeat
		sleep_until (object_valid (prechopper_shield_barrier));
		object_destroy (prechopper_shield_barrier);
	until (tort_done_in_mission == true);
end

script static void wraith_dialogue_warning()
	sleep_s (4);
	if
		ai_living_count (sq_wraith) > 0
	then
		wake (f_dialog_40_wraith);
	end
end

script dormant f_bubble_check_one
		wake (bubble_1_checkpoint);
		print ("Bubble 1 check is running");	
		sleep_until(object_get_health(uplink_base_1) <= .3, 1);
		f_unblip_object(uplink_base_1);
		sleep (30 * 0.5);
		object_destroy (uplink_bubble_1);
		b_bubble_one_burst = true;
		s_bubbles_burst = s_bubbles_burst + 1;
		f_unblip_object(uplink_base_1);
		sleep (30 * 1);	
		f_unblip_object(uplink_base_1);		

end

script dormant bubble_1_checkpoint()
	sleep_until (volume_test_players (tv_bubble_1)
	and
	ai_living_count (sq_bubble_1) < 1);
	print ("Bubble 1 wants to checkpoint");	
	game_save_no_timeout();	
end

script dormant f_bubble_check_two
		wake (bubble_2_checkpoint);
		sleep_until(object_get_health(uplink_base_2) <= .3, 1);
		f_unblip_object(uplink_base_2);
		sleep (30 * 0.5);
		object_destroy (uplink_bubble_2);
		b_bubble_two_burst = true;
		s_bubbles_burst = s_bubbles_burst + 1;
		f_unblip_object(uplink_base_2);
		sleep (30 * 1);	
		f_unblip_object(uplink_base_2);			
end

script dormant bubble_2_checkpoint()
	sleep_until (volume_test_players (tv_bubble_2)
	and
	ai_living_count (sq_bubble_2) < 1);
	print ("Bubble 2 wants to checkpoint");		
	game_save_no_timeout();	
end

script dormant f_bubble_check_three

		sleep_until(object_get_health(uplink_base_3) <= .3, 1);
		f_unblip_object(uplink_base_3);
		sleep (30 * 0.5);
		object_destroy (uplink_bubble_3);
		b_bubble_three_burst = true;
		s_bubbles_burst = s_bubbles_burst + 1;
		f_unblip_object(uplink_base_3);
		sleep (30 * 1);	
		f_unblip_object(uplink_base_3);	
		game_save_no_timeout();

end


script dormant f_blip_bubbles

	sleep_until (volume_test_players (tv_prechopper_03), 1);
	
	prechop_battle_enter_bool = true;
	
	f_blip_object( uplink_base_1, "neutralize_a" );
	f_blip_object( uplink_base_2, "neutralize_b" );
	
	sleep_until (b_bubble_one_burst == true and b_bubble_two_burst == true, 1 );
	sleep (30 * 1);
	
	f_blip_object( uplink_base_3, "neutralize_c" );
		
end

script dormant f_bubble_2_player_check

	sleep_until (volume_test_players (tv_bubble_2), 1);
	b_player_in_bubble_two = true;
	
end

script dormant prechopper_convoy_prep()
	sleep_until (volume_test_players (tv_prechopper_015), 1);
//	ai_set_objective (post_lakeside_sq, prechopper_marines_obj);

	thread (display_chapter_05());

 	game_save_no_timeout();
	sleep_until (volume_test_players (tv_prechopper_03)
	or
	volume_test_players (tv_prechopper_entire), 1);
	f_unblip_flag (prechopper_direction_flag);
end

script command_script enter_pod_cs()
	ai_vehicle_enter (sq_bubble_3_shade, (object_get_turret (prechopper_tower_pod, 2)));
	print ("entered pod"); 
end

script static void prechopper_player_leave_dialogue()
	sleep_until (volume_test_players (tv_lakeside_04)
	or
	s_bubbles_burst == 3);
	if 
		s_bubbles_burst < 3
	then
		thread (m40_palmer_off_map_nudge());
	end
end

script dormant spawn_prechopper()
	sleep_until (volume_test_players (tv_cliffside_retreat), 1);

	thread (cliffside_ai_kills ());

	sleep_until (volume_test_players (tv_prechopper_01), 1);
	wake (chopper_bypass_check);
	wake (unsc_prechopper_to_chopper_handoff);
	data_mine_set_mission_segment ("m40_prechopper");
	prechopper_obj_state=2; 
	ai_erase (lakeside_phantom_01);
	object_destroy (lakeside_cov_barrier_01);
	object_destroy (lakeside_cov_crate_01);
	object_destroy (lakeside_cov_crate_02);
	print ("spawning prechopper"); 
	sleep (30 * 1);
	garbage_collect_now();
	
	ai_place (sg_prechopper_starter);	
	ai_place (sq_prechopper_ghost_2_1);
	
	wake (prechopper_marine_fill);
	wake (f_bubble_2_player_check);
	wake (f_ghost_re);
	wake (f_infantry_re);
	wake (f_ridge_phantom_re);
	wake (f_blip_bubbles);

	object_create (prechopper_tower_base);
	object_create (prechopper_tower_pod);
	object_create (prechopper_barrier_01);
	object_create (prechopper_barrier_03);
	object_create (prechopper_barrier_04);
	object_create (prechopper_barrier_06);
	object_create (prechop_reserved_ghost_01);
	object_create_folder (prechopper_vehicles);
	sleep (30 * 1);
	
	object_set_persistent (sq_prechopper_ghost_1_1_veh, false);
	object_set_persistent (sq_prechopper_ghost_1_2_veh, false);
	object_set_persistent (sq_prechopper_ghost_2_1_veh, false);
	object_set_persistent (prechop_reserved_ghost_01, false);
	
 	thread(f_mus_m40_e04_begin());
 	thread (prechop_ending());
 	wake (m40_pre_chopper_01);

 	sleep_until (volume_test_players (tv_tort_rec_chopper_pt0), 1);	
 	thread(f_mus_m40_e04_finish());
end

script command_script sq_prechopper_ghost_1_1_cs()
	ai_vehicle_enter_immediate (sq_prechopper_ghost_1_1, sq_prechopper_ghost_1_1_veh);
	wake (reserve_sq_prechopper_ghost_1_1);
end

script command_script sq_prechopper_ghost_1_2_cs()
	ai_vehicle_enter_immediate (sq_prechopper_ghost_1_2, sq_prechopper_ghost_1_2_veh);
	wake (reserve_sq_prechopper_ghost_1_2);
end

script command_script sq_prechopper_ghost_2_1_cs()
	ai_vehicle_enter_immediate (sq_prechopper_ghost_2_1, sq_prechopper_ghost_2_1_veh);
	wake (reserve_sq_prechopper_ghost_2_1);
end

script command_script sq_prechopper_ghost_2_2_cs()
//	ai_vehicle_enter_immediate (sq_prechopper_ghost_2_2, sq_prechopper_ghost_2_2_veh);
	wake (reserve_sq_prechopper_ghost_2_2);
end

script command_script sq_prechopper_ghost_2_3_cs()
//	ai_vehicle_enter_immediate (sq_prechopper_ghost_2_3, sq_prechopper_ghost_2_3_veh);
	wake (reserve_sq_prechopper_ghost_2_3);
end



script dormant reserve_sq_prechopper_ghost_1_1()
	sleep_until (ai_living_count (sq_prechopper_ghost_1_1) < 1);
	ai_vehicle_reserve (ai_vehicle_get_from_spawn_point (sq_prechopper_ghost_1_1), true);
end

script dormant reserve_sq_prechopper_ghost_1_2()
	sleep_until (ai_living_count (sq_prechopper_ghost_1_2) < 1);
	ai_vehicle_reserve (ai_vehicle_get_from_spawn_point (sq_prechopper_ghost_1_2), true);
end

script dormant reserve_sq_prechopper_ghost_2_1()
	sleep_until (ai_living_count (sq_prechopper_ghost_2_1) < 1);
	ai_vehicle_reserve (ai_vehicle_get_from_spawn_point (sq_prechopper_ghost_2_1), true);
end

script dormant reserve_sq_prechopper_ghost_2_2()
	sleep_until (ai_living_count (sq_prechopper_ghost_2_2) < 1);
	ai_vehicle_reserve (ai_vehicle_get_from_spawn_point (sq_prechopper_ghost_2_2), true);
end

script dormant reserve_sq_prechopper_ghost_2_3()
	sleep_until (ai_living_count (sq_prechopper_ghost_2_3) < 1);
	ai_vehicle_reserve (ai_vehicle_get_from_spawn_point (sq_prechopper_ghost_2_3), true);
end



script dormant f_ghost_re
	
	sleep_until ( ai_living_count (sg_prechopper_ghosts_1) < 2 and (not volume_test_players( tv_prechopper_safe_re )), 1 );
	ai_place (sq_prechopper_ghost_2_2);
	
	sleep_until ( ai_living_count (sg_prechopper_ghosts_1) < 1 and (not volume_test_players( tv_prechopper_safe_re )), 1 );
	ai_place (sq_prechopper_ghost_2_3);

end

script dormant f_infantry_re
	
	sleep_until ( ai_living_count (sg_prechopper_starter) < 9 and (not volume_test_players( tv_prechopper_safe_re )), 1 );
	sleep_until (	not (volume_test_players_all_lookat (tv_rear_sq_spawn, 3000, 40))	);
	print ("Bubble 3 Mid Re SPAWN");
	ai_place (sq_bubble_3_mid_re);
end

script dormant f_infantry_re_2
	sleep_until ( ai_living_count (sg_prechopper_starter) < 5 and (not volume_test_players( tv_prechopper_safe_2_re )), 1 );
	if
		s_bubbles_burst < 3
	then
		if
			not (volume_test_players_all_lookat (tv_rear_sq_spawn, 3000, 40))	
		then
			ai_place (sq_bubble_3_re_grunts);
		end
//		sleep_until ( ai_living_count (sq_stage) < 2
//		and
//		ai_living_count (sq_bubble_2) < 2
//		and
//		ai_living_count (sq_phantom_ridge) < 2
//		and
//		ai_living_count (sq_phantom_ridge_02) < 1	
//		);
//		if
//			s_bubbles_burst < 3
//		then
//			ai_place (sq_phantom_ridge_03);
//			print ("Bubble 3 Mid Re SPAWN");
//		end
	end
end

script dormant f_ridge_phantom_re
	
	sleep_until (ai_living_count (sg_starter_first) < 3);
	if
		chop_obj_state < 10
	then
		if
			game_coop_player_count() < 3
		then
			ai_place (sq_phantom_ridge);
			sleep( 30 * 5 );
			wake (prechopper_covenant_backup_01);
		end
	end
	
end


script command_script cs_phantom_ridge()
	print ("Phantom Ridge 1 BACKUP!");
	sound_impulse_start('sound\environments\solo\m040\new_m40_tags\amb_m40_ships\amb_m40_phantmo_ridge_spawn', sq_phantom_ridge, 1);
	
	f_load_phantom( sq_phantom_ridge, "right", sq_ridge_re.guy1, NONE, sq_ridge_re.guy3, sq_ridge_re.guy4 );
	cs_fly_to (ps_phantom_ridge.p0);
	cs_fly_to (ps_phantom_ridge.p1);
	
	cs_fly_to_and_face (ps_phantom_ridge.p2, ps_phantom_ridge.face);
	f_unload_phantom (sq_phantom_ridge, right);
	sound_impulse_start('sound\environments\solo\m040\new_m40_tags\amb_m40_ships\amb_m40_phantmo_ridge_takeoff', sq_phantom_ridge, 1);
	cs_fly_to (ps_phantom_ridge.p3);
	//object_set_scale (ai_vehicle_get(ai_current_actor), 0.01, 120);
	cs_fly_to (ps_phantom_ridge.p4);
	cs_fly_by (ps_phantom_ridge.p8);
//	sleep( 30 * 3.0 );
	ai_erase(sq_phantom_ridge);		
	
end


script command_script phantom_ridge_02_cs()
	sound_impulse_start('sound\environments\solo\m040\new_m40_tags\amb_m40_ships\amb_m40_phantmo_ridge_2_spawn', sq_phantom_ridge_02, 1);
	print ("Phantom Ridge 2 BACKUP!");
	f_load_phantom( sq_phantom_ridge_02, "left", sq_ridge_re_02.guy1, sq_ridge_re_02.guy2, sq_ridge_re_02.guy3, sq_ridge_re_02.guy4 );
	cs_fly_by (ps_phantom_ridge.p5);
	cs_fly_to_and_face (ps_phantom_ridge.p6, ps_phantom_ridge.p7);
	f_unload_phantom (sq_phantom_ridge_02, left);
	sound_impulse_start('sound\environments\solo\m040\new_m40_tags\amb_m40_ships\amb_m40_phantmo_ridge_2_takeoff', sq_phantom_ridge_02, 1);
	cs_fly_by (ps_phantom_ridge.p3);
	cs_fly_by (ps_phantom_ridge.p4);
	cs_fly_by (ps_phantom_ridge.p8);
	ai_erase(sq_phantom_ridge_02);		
	
end
script command_script phantom_ridge_03_cs()
	print ("Phantom Ridge 3 (BUBBLE) BACKUP!");
	sound_impulse_start('sound\environments\solo\m040\new_m40_tags\amb_m40_ships\amb_m40_phantmo_ridge_3_spawn', sq_phantom_ridge_03, 1);
	f_load_phantom( sq_phantom_ridge_03, "right", sq_bubble_3_re_inside.guy1, sq_bubble_3_re_inside.guy2, sq_bubble_3_re_inside.guy3, none );
	cs_fly_by (ps_phantom_ridge_03.p0);
	cs_fly_by (ps_phantom_ridge_03.p1);
	cs_fly_by (ps_phantom_ridge_03.p2);
	cs_fly_by (ps_phantom_ridge_03.p3);
	cs_fly_to_and_face (ps_phantom_ridge_03.p4, ps_phantom_ridge_03.p8);
	f_unload_phantom (sq_phantom_ridge_03, right);
	sound_impulse_start('sound\environments\solo\m040\new_m40_tags\amb_m40_ships\amb_m40_phantmo_ridge_3_takeoff', sq_phantom_ridge_03, 1);
	cs_fly_by (ps_phantom_ridge_03.p5);
	cs_fly_by (ps_phantom_ridge_03.p6);
	cs_fly_by (ps_phantom_ridge_03.p7);
	ai_erase(sq_phantom_ridge_03);	
end

script dormant prechopper_all_enemies_killed()
	//sleep_until (ai_living_count (prechop_master_grp) < 1);
	if
	chop_obj_state < 60
	then
//	wake (m40_prechopper_done);
	print ("m40_prechopper_done");
	else
	sleep(1);
	end
end

script static void prechop_ending()
	sleep_until (volume_test_players (tv_prechopper_safe_re), 1);
	player_at_end_of_prechop = true;
end

script dormant prechop_marine_obj_handoff()
//	sleep_until (ai_living_count (prechop_master_grp) < 1
	//and
	//volume_test_players (tv_prechopper_05), 1);
	
	sleep_until (volume_test_players (tv_prechopper_05), 1);
	ai_set_objective (prechopper_marines_fill, chop_marines_convoy_obj);
	ai_set_objective (insertion_marines, chop_marines_convoy_obj);	
end


script dormant prechopper_marine_fill()
	if
		unit_in_vehicle_type (player0, 18)
		or
		unit_in_vehicle_type (player1, 18)		
		or
		unit_in_vehicle_type (player2, 18)		
		or
		unit_in_vehicle_type (player3, 18)		
		or
		ai_living_count (marine_convoy) < 3
		or
		volume_test_object (tv_tortoise_bottom_01, marines_main_hog_01_veh)
		or
		volume_test_object (tv_tortoise_bottom_01, marines_main_hog_02_veh)
	then
		print ("Prechopper_marines NOT placed");
	else
		sleep_until (not (volume_test_players_all_lookat (tv_prechopper_fill_spawn, 3000, 50)));
		ai_place (prechopper_marines_fill);
		print ("Prechopper_marines placed");
	end
end

script dormant prechopper_covenant_backup_01()
	sleep_until (ai_living_count (sq_ridge_re) < 2
	and
	(ai_living_count (sg_prechopper_ghosts_1) + ai_living_count (sg_prechopper_ghosts_2) < 2)
	and
	s_bubbles_burst < 3
	and
	ai_living_count (sq_phantom_ridge) < 1
	and
	player_at_end_of_prechop == FALSE	
	);
	if
		chop_obj_state < 10
	then
		ai_place (sq_phantom_ridge_02);
		wake (f_infantry_re_2);
	end	
end

script static void test_big()
	object_set_scale (test5, 50, 50);
end

script dormant prechopper_obj_states()
	sleep_until (volume_test_players (tv_prechopper_015), 1);
	prechopper_obj_state = 31;
	print ("set obj state 31"); 
	
	sleep_until (volume_test_players (tv_prechopper_03), 1);
	prechopper_obj_state = 32;
	print ("set obj state 32");
	
	sleep_until (volume_test_players (tv_prechopper_02)
	or
	volume_test_players (tv_prechopper_05), 1);
	prechopper_obj_state = 33; 
	print ("set obj state 33");
	
	sleep_until (volume_test_players (tv_prechopper_05), 1);
	prechopper_obj_state = 34; 
	print ("set obj state 34"); 

	f_unblip_flag (prechopper_direction_flag);
 	game_save_no_timeout();
 	wake (chopper_main_script);
	wake (chopper_obj_control_01);

end

script dormant f_temp

	ai_erase (lakeside_phantom_01);
	object_destroy (lakeside_cov_barrier_01);
	object_destroy (lakeside_cov_crate_01);
	object_destroy (lakeside_cov_crate_02);
	print ("spawning prechopper"); 
	sleep (30 * 1);
	garbage_collect_now();
	
	
	ai_place (sg_prechopper_starter);	
	ai_place (sq_prechopper_ghost_2_1);
	
	wake (f_bubble_control);
	wake (f_bubble_2_player_check);
	wake (f_ghost_re);
	wake (f_infantry_re);
	wake (f_ridge_phantom_re);
	wake (f_blip_bubbles);

end

script dormant unsc_prechopper_to_chopper_handoff()
	sleep_until(s_bubbles_burst == 3);
	ai_set_objective (marine_convoy, chop_marines_convoy_obj);
	ai_set_objective (marine_convoy_02, chop_marines_convoy_obj);
	ai_set_objective (prechopper_marines, chop_marines_convoy_obj);
	print ("Prechopper AI handed off to Chopper");
	
	object_create_folder (chop_crates);
	object_create_folder (chop_weapons);
end

script static void cliffside_ai_kills()

//EJECTS PLAYERS FROM MAMMOTH TURRETS SO THEY CAN BE TELEPORTED-----------------------
	if
		volume_test_object_bounding_sphere_center (tv_tortoise_top_01, player0)
		and
		unit_in_vehicle (player0)
	then
		unit_exit_vehicle (player0);
		sleep_until (not (unit_in_vehicle (player0)));
	end
	
	if
		volume_test_object_bounding_sphere_center (tv_tortoise_top_01, player1)
		and
		unit_in_vehicle (player1)
	then
		unit_exit_vehicle (player1);
		sleep_until (not (unit_in_vehicle (player1)));
	end

	if
		volume_test_object_bounding_sphere_center (tv_tortoise_top_01, player2)
		and
		unit_in_vehicle (player2)
	then
		unit_exit_vehicle (player2);
		sleep_until (not (unit_in_vehicle (player2)));
	end
	
	if
		volume_test_object_bounding_sphere_center (tv_tortoise_top_01, player3)
		and
		unit_in_vehicle (player3)
	then
		unit_exit_vehicle (player3);
		sleep_until (not (unit_in_vehicle (player3)));
	end

//-------------------------------------------------------------------------------------------

	if
		volume_test_object (tv_cliffside_entire, player0)
	then
		if 
			unit_in_vehicle (player0)
		then
			object_teleport (unit_get_vehicle (player0), prechop_teleport_01);
		else
			object_teleport (player0, prechop_teleport_01);
		end
	end
	
	if
		volume_test_object (tv_cliffside_entire, player1)
	then
		if 
			unit_in_vehicle (player1)
		then
			object_teleport (unit_get_vehicle (player1), prechop_teleport_02);
		else
			object_teleport (player1, prechop_teleport_02);
		end
	end
	
	if
		volume_test_object (tv_cliffside_entire, player2)
	then
		if 
			unit_in_vehicle (player2)
		then
			object_teleport (unit_get_vehicle (player2), prechop_teleport_03);
		else
			object_teleport (player2, prechop_teleport_03);
		end
	end
	
	if
		volume_test_object (tv_cliffside_entire, player3)
	then
		if 
			unit_in_vehicle (player3)
		then
			object_teleport (unit_get_vehicle (player3), prechop_teleport_04);
		else
			object_teleport (player3, prechop_teleport_04);
		end
	end

	kill_volume_enable (playerkill_soft_prechop_backtrack);	

	thread (cliffside_01_kills());
	thread (cliffside_02_kills());
	thread (cliffside_03_kills());
	thread (cliffside_04_kills());
	thread (ai_kills_cliffside_ghosts_01());
	thread (ai_kills_cliffside_ghosts_02());
	
	thread (cliffside_master_cleanup());

	thread (objects_destroy_all_in_volume(tv_cliffside_entire));	

end

script static void cliffside_master_cleanup()
	sleep_until (not (volume_test_players_lookat (tv_cliffside_entire, 3000, 40))
	and
	not (volume_test_players (tv_cliffside_entire)));
	unit_kill_list_silent (volume_return_objects (tv_cliffside_entire));
	object_destroy_folder( cliffside_crates );
	thread (cliffside_destroy_test());
end

script static void cliffside_01_kills()
	sleep_until (not (volume_test_players (tv_cliffside_ai_kills_1))	
	and
	not (volume_test_players_all_lookat (tv_cliffside_ai_kills_1, 3000, 40)));
	unit_kill_list_silent (volume_return_objects (tv_cliffside_ai_kills_1));
	print ("tv_cliffside_ai_kills_1 killed");
end

script static void cliffside_02_kills()
	sleep_until (not (volume_test_players (tv_cliffside_ai_kills_2))	
	and
	not (volume_test_players_all_lookat (tv_cliffside_ai_kills_2, 3000, 40)));
	unit_kill_list_silent (volume_return_objects (tv_cliffside_ai_kills_2));
	print ("tv_cliffside_ai_kills_2 killed");
end

script static void cliffside_03_kills()
	sleep_until (not (volume_test_players (tv_cliffside_ai_kills_3))	
	and
	not (volume_test_players_all_lookat (tv_cliffside_ai_kills_3, 3000, 40)));
	unit_kill_list_silent (volume_return_objects (tv_cliffside_ai_kills_3));
	print ("tv_cliffside_ai_kills_3 killed");
end 

script static void cliffside_04_kills()
	sleep_until (not (volume_test_players (tv_cliffside_ai_kills_4))	
	and
	not (volume_test_players_all_lookat (tv_cliffside_ai_kills_4, 3000, 40)));
	unit_kill_list_silent (volume_return_objects (tv_cliffside_ai_kills_4));
	ai_erase (cliffside_phantom_01);
	ai_erase (cliffside_phantom_02);
	ai_kill_silent (cliffside_ghosts_01);
	ai_kill_silent (cliffside_ghosts_02);
	ai_kill_silent (cliffside_edge_sq_01);
	ai_kill_silent (cliffside_edge_sq_02);
	ai_kill_silent (cliffside_edge_sq_03);
	print ("tv_cliffside_ai_kills_4 killed and phantoms erased");
end

script static void ai_kills_cliffside_ghosts_01()
	if
		volume_test_object (tv_cliffside_ai_kills_4, ai_get_object (cliffside_ghosts_01.driver))
		and
		ai_in_vehicle_count (cliffside_ghosts_01.driver) > 0
	then
		print ("cliffside_ghosts_01 in volume, waiting for player to look away");
		sleep_until (not (volume_test_players_all_lookat (tv_cliffside_ai_kills_4, 3000, 40)));
		print ("player not looking, killing cliffside_ghosts_01");
		damage_object (ai_vehicle_get_from_spawn_point (cliffside_ghosts_01.driver), "hull", 1000);
		sleep_s (4);	
		garbage_collect_now();
		print ("garbage collected!");
	else
		print ("cliffside_ghosts_01 not in volume!");
	end
end

script static void ai_kills_cliffside_ghosts_02()
	if
		volume_test_object (tv_cliffside_ai_kills_4, ai_get_object (cliffside_ghosts_01.driver2))
		and
		ai_in_vehicle_count (cliffside_ghosts_01.driver2) > 0
	then
		print ("cliffside_ghosts_02 in volume, waiting for player to look away");
		sleep_until (not (volume_test_players_all_lookat (tv_cliffside_ai_kills_4, 3000, 40)));
		print ("player not looking, killing cliffside_ghosts_02");
		damage_object (ai_vehicle_get_from_spawn_point (cliffside_ghosts_01.driver2), "hull", 1000);
		sleep_s (4);	
		garbage_collect_now();
		print ("garbage collected!");
	else
		print ("cliffside_ghosts_02 not in volume!");
	end
end

script static void cliffside_UR_kills()
	ai_kill_silent (cliffside_ghosts_01);
	ai_kill_silent (cliffside_ghosts_02);
	ai_kill_silent (cliffside_edge_sq_01);
	ai_kill_silent (cliffside_edge_sq_02);
	ai_kill_silent (cliffside_edge_sq_03);
	print ("Cliffside AI Killed in messy way... don't use this for ship");
end

//--------------------prechopper command scripts-------------------


script command_script prechopper_tortoise_sc()
	cs_go_to (prechopper_tortoise_route_pt.p2);
	sleep_until (volume_test_players (tv_prechopper_02), 1);
	cs_go_to (prechopper_tortoise_route_pt.p3);
	sleep_until (prechopper_obj_state > 33);
	cs_go_to (prechopper_tortoise_route_pt.p3);
	sleep_until	
		(ai_living_count (prechopper_ghosts_backup) < 1
//		and
//		ai_living_count (prechopper_wraith_backup) < 1
		);
	cs_go_to (prechopper_tortoise_route_pt.p4);
end

script command_script prechopper_marines_fill_cs()
	print ("prechopper_marines_fill_cs");
	ai_vehicle_enter_immediate (prechopper_marines_fill.driver, prechopper_marines_fill_hog, "warthog_d");
	ai_vehicle_enter_immediate (prechopper_marines_fill.gunner, prechopper_marines_fill_hog, "warthog_g");
	cs_go_to (chopper_smash.p7);
end

script dormant prechopper_tortoise_recorded()
	print ("tortoise is on prechopper scripts");
	sleep_until (volume_test_object (tv_prechopper_01, main_mammoth)
	or
	volume_test_players (tv_prechopper_01_temp)
	, 1);

  thread (M40_chopper_lich_warning());

	f_blip_flag (prechopper_direction_flag, "default");
	
	unit_recorder_set_playback_rate_smooth (main_mammoth, .8, 4);	
	print ("TORT SPEED = .8");
	
//	sleep_until (volume_test_object (tv_tort_prechop_first_stop, main_mammoth));
//	print ("HIT!");
//	
//	sleep (30 * 3);

	sleep_until (unit_recorder_get_time_position_seconds (main_mammoth) > 58.5, 1);

	print ("HIT!");
	
//	thread (unreserve_mammoth_vehicles());
	tort_hogs_reserve_bool = false;
	
	unit_recorder_setup_for_unit (main_mammoth, tortoise_0716_d);
	unit_recorder_play_and_blend (main_mammoth, 2);
	unit_recorder_pause (main_mammoth, true);
	tort_stopped = TRUE;
	prechop_recording_loaded = true;
	thread (mam_dust_off());
	print ("tortoise_0526_d has been set up");
	
	if 
		s_bubbles_burst < 2
	then
		thread (open_tort_doors_prechopper_start());
		print ("Tort doors opening");
		sleep_until(s_bubbles_burst >= 1);
		unit_recorder_set_playback_rate_smooth (main_mammoth, .6, 4);	
		print ("TORT SPEED = .6");
		thread (close_tort_doors_prechopper_start());	
	else
		print ("Tort doors not opening at prechopper");
		sleep_until(s_bubbles_burst >= 1);
		unit_recorder_set_playback_rate_smooth (main_mammoth, .6, 4);	
		print ("TORT SPEED = .6");
	end
	sleep (30 * 2);
	unit_recorder_pause_smooth (main_mammoth, false, 3);	
	tort_stopped = FALSE;
	
	sleep (30 * 5);
	
//	sleep_until (volume_test_object (tv_tort_rec_prechopper_pt0, main_mammoth));

	sleep_until (unit_recorder_get_time_position_seconds (main_mammoth) > 22, 1);
	
	tort_hogs_reserve_bool = true;
	
	unit_recorder_pause_smooth (main_mammoth, true, 2);
	tort_stopped = TRUE;
	
	thread (reserve_mammoth_vehicles());
	
	sleep_until(s_bubbles_burst >= 2);
	sleep_forever (detect_players_after_cliffside);
	unit_recorder_pause_smooth (main_mammoth, false, 2);
	tort_stopped = FALSE;


//	sleep_until (volume_test_object (tv_tort_prechop_last_stop, main_mammoth));
//	print ("HIT!");
//	
//	sleep (30 * 2);

	sleep_until (unit_recorder_get_time_position_seconds (main_mammoth) > 36, 1);

	print ("HIT!");
	
	unit_recorder_setup_for_unit (main_mammoth, tortoise_0716_e);
	prechop_recording_loaded_2 = true;
	unit_recorder_play_and_blend (main_mammoth, 2);
	unit_recorder_pause (main_mammoth, true);
	tort_stopped = TRUE;
	thread (mam_dust_off());
	print ("tortoise_0716_e has been set up");

//	thread (open_tort_doors_prechopper_end());

	sleep_until(s_bubbles_burst >= 3);
//	thread (open_tort_doors_prechopper_end());
		
	wake (chop_tortoise_recorded);
	sleep_s(1);
	thread (new_tort_chopper_part_1_speed_test());
end

script dormant prechopper_tortoise_recorded_insertion()
//	sleep_until (volume_test_object (tv_tort_prechop_first_stop, main_mammoth));
//	print ("HIT!");
//	
//	sleep (30 * 3);
//	
//	unit_recorder_setup_for_unit (main_mammoth, tortoise_0526_d);
//	unit_recorder_play (main_mammoth);
//	unit_recorder_pause (main_mammoth, true);
//	tort_stopped = TRUE;
	prechop_recording_loaded = true;
	thread (mam_dust_off());
	print ("tortoise_0526_d has been set up");
	

	if 
		s_bubbles_burst < 2
	then
		thread (open_tort_doors_prechopper_start());
		print ("Tort doors opening");
		sleep_until(s_bubbles_burst >= 1);
		unit_recorder_set_playback_rate_smooth (main_mammoth, .4, 4);	
		print ("TORT SPEED = .4");
		thread (close_tort_doors_prechopper_start());	
	else
		print ("Tort doors not opening at prechopper");
		sleep_until(s_bubbles_burst >= 1);
		unit_recorder_set_playback_rate_smooth (main_mammoth, .4, 4);	
		print ("TORT SPEED = .4");
	end
	
	sleep (30 * 2);
	unit_recorder_pause_smooth (main_mammoth, false, 3);	
	tort_stopped = FALSE;
	
	sleep (30 * 5);
	
	// just in case?
	unit_recorder_pause_smooth (main_mammoth, false, 3);	
	tort_stopped = FALSE;
	print ("unpausing again?");
	
	sleep_until (volume_test_object (tv_tort_rec_prechopper_pt0, main_mammoth));
	unit_recorder_pause_smooth (main_mammoth, true, 2);
	tort_stopped = TRUE;
	
	sleep_until(s_bubbles_burst >= 2);
	sleep_forever (detect_players_after_cliffside);
	unit_recorder_pause_smooth (main_mammoth, false, 2);
	tort_stopped = FALSE;


	sleep_until (volume_test_object (tv_tort_prechop_last_stop, main_mammoth));
	print ("HIT!");
	
	sleep (30 * 2);
	
	unit_recorder_setup_for_unit (main_mammoth, tortoise_0526_e);
	unit_recorder_play_and_blend (main_mammoth, 2);
	unit_recorder_pause (main_mammoth, true);
	tort_stopped = TRUE;
	thread (mam_dust_off());
	print ("tortoise_0203b has been set up");

//	thread (open_tort_doors_prechopper_end());

	sleep_until(s_bubbles_burst >= 3);
//	thread (open_tort_doors_prechopper_end());
		
	wake (chop_tortoise_recorded);
	sleep_s(1);
	thread (new_tort_chopper_part_1_speed_test());
end

//script dormant prechopper_tortoise_recorded_insertion()
//	sleep_until(s_bubbles_burst >= 1);
////	object_override_physics_motion_type(main_mammoth, 2);
//	custom_animation (main_mammoth, "objects\vehicles\human\storm_mammoth\storm_mammoth.model_animation_graph", "bay:doors:closing", false);
//	tort_bay_doors_opened = false;	
//	sleep (30 * 3);
//	unit_recorder_pause_smooth (main_mammoth, false, 3);	
//	tort_stopped = FALSE;
//	
//	sleep_until (volume_test_object (tv_tort_rec_prechopper_pt0, main_mammoth));
//	unit_recorder_pause_smooth (main_mammoth, true, 3);
//	tort_stopped = TRUE;
//	custom_animation_hold_last_frame (main_mammoth, "objects\vehicles\human\storm_mammoth\storm_mammoth.model_animation_graph", "bay:doors:opening", false);	
//	tort_bay_doors_opened = true;
//	sleep (30 * 3);
//	object_override_physics_motion_type(main_mammoth, 1);
//	
//	sleep_until(s_bubbles_burst >= 2);
//	object_override_physics_motion_type(main_mammoth, 2);
//	custom_animation (main_mammoth, "objects\vehicles\human\storm_mammoth\storm_mammoth.model_animation_graph", "bay:doors:closing", false);
//	tort_bay_doors_opened = false;	
//	sleep_forever (detect_players_after_cliffside);
//	unit_recorder_pause_smooth (main_mammoth, false, 2);
//	tort_stopped = FALSE;
//
//
//	sleep_until (volume_test_object (tv_prechopper_05, main_mammoth));
//	sleep (30 * 4);	
//	unit_recorder_pause_smooth (main_mammoth, true, 2);
//	tort_stopped = TRUE;
//
//	unit_recorder_setup_for_unit (main_mammoth, tortoise_0526_e);
//	unit_recorder_play (main_mammoth);
//	unit_recorder_pause (main_mammoth, true);
//	tort_stopped = TRUE;
//	thread (mam_dust_off());
//
//	custom_animation_hold_last_frame (main_mammoth, "objects\vehicles\human\storm_mammoth\storm_mammoth.model_animation_graph", "bay:doors:opening", false);	
//	tort_bay_doors_opened = true;
//	object_override_physics_motion_type(main_mammoth, 1);
//
//	sleep_until(s_bubbles_burst >= 3);
//	object_override_physics_motion_type(main_mammoth, 2);
//	custom_animation (main_mammoth, "objects\vehicles\human\storm_mammoth\storm_mammoth.model_animation_graph", "bay:doors:closing", false);
//	tort_bay_doors_opened = false;	
//		
//	wake (chop_tortoise_recorded);
//	sleep_s(1);
//	wake (tort_chopper_repeating_speed_test);
//end

//-------------------------UTILITY--------------------------//
//
//script static void test_targeting()
//	if
//		volume_test_players (tv_bubble_1)
//		and
//		object_get_health (uplink_base_1) != -1
//	then
//		cs_shoot (object_get_ai (volume_return_objects (tv_bubble_1)), true, uplink_base_1);
//end
// --- End m40_invasion_prechopper.hsc ---

// --- Begin m40_invasion_target_designator.hsc ---


//The new functions are
//     weapon_get_rounds_total   <weapon> <magazine_index> ; use zero for magazine. returns integer ammo count
//     weapon_set_current_amount <weapon> <percent>        ; percent is [0.0 .. 1.0] 
//
//This will fully exhaust ammo weapons / deplete power weapons:
//     weapon_set_current_amount <weapon> 0
//
//This will give max ammo / fully power:
//     weapon_set_current_amount <weapon> 1
//
//For the m40 target laser
//                weapon_get_rounds_total
//will now return zero or one which I think give you a clear idea of when it has been fired.  
//  m40_target_laser_show_prompt_ui(show)            // 0/1, true/false --> hide/show the UI
//  player_requested_m40_target_laser()              // returns true/false
//
//  weapon_get_lockon_state(weapon)                  // returns 0:idle, 1:aquiring, 2:locked on
//  weapon_get_lockon_target(weapon)                 // returns object instance or none
//  weapon_get_age(weapon)                           // returns age of power weapon (0==fully charged, 1==depleted)
//
//  unit_add_weapon(unit, weaponObject, addMethod) 
//    // addMethod: -1:unknown, 0:normal, 1:silent, 2:as_only, 3:as_primary, 
//    //   4:swap_for_primary, 5:as_secondary, 6:swap_for_secondary, 7:as_secondary_silently
//
//  unit_drop_weapon(unit, weaponObject, dropType)
//    // dropType: 0:default, 1:delete, 2:dual_primary, 3:dual_secondary, 4:response_to_deletion, 5:throw



//var displaying_ui    = false
//var laserWeapon      = NONE
//var gunnerUnit       = NONE 
//var gunnerActor      = NONE        ; AI actor
//var gunnerWeapon     = NONE        ; mammoth rail gun
//var player           = NONE        ; who will be given target laser
//var cooled_down      = false       ; based on whatever script conditions are desired
//       
//initialize player var
//Create & place mammoth AI actor gunner, initialize vars
//Initialize cooldown logic/timer vars
//
//while (in railgun segment)
//  cooled_down = do_cooldown_logic()
//
//  if cooled_down 
//     if laserWeapon != NONE // player has been given weapon?
//
//        if object_get_parent(laserWeapon) == NONE                    // Yes. Has he switched away from it ?
//            object_destroy(laserWeapon)                              // Yes. It will be dropped so delete it 
//            laserWeapon = NONE                                       // and forget about it
//       else
//            paintedLockonState  = weapon_get_lockon_state(laserWeapon)
//            paintedLockonTarget = weapon_get_lockon_target(laserWeapon)
//
//            if paintedLockonState==0
//                cs_coolout_ai_dude(gunnerUnit)                       // nothing targeted so chill
//            else
//                cs_aim/cs_shoot                                      // encourage gunner actor to shoot painted target 
//
//            if weapon_get_age(gunnerWeapon) >= 1.0                   // has the railgun been fired?
//               reset_cooldown_logic()
//                unit_drop_weapon(player_get(player), laserWeapon, 1) // force laser to be dropped & deleted; dropType 1 --> delete
//                laserWeapon = NONE                                   // and forget about it
//
//            else // there's no laser weapon...
//                if !displaying_ui                                    // need to prompt?
//                    m40_target_laser_show_prompt_ui(player, 1)       // yes, bring up UI
//                    displaying_ui = true              
//
//                if m40_target_laser_was_requested(player)               // Did player press on dpad?
//                    laserWeapon = object_create(weapon_tag)             // create a target laser
//                    unit_add_weapon(player_get(player), laserWeapon, 0) // give it to the player; method 0 --> normal
//                    m40_target_laser_show_prompt_ui(0)                  // bring down UI (UI may end up doing this itself automagically)
//                    displaying_ui = false                               //  or internally to m40_target_laser_was_requested()
//                    unit_force_reload(gunnerUnit)                       // reset mammoth weapon's age




//�	Target Locator can lock onto and shoot Forerunner AA cannons from within a certain trigger volume 
//o	If outside of that volume, we need to return failure VO (�AA cannon out of range�)
//�	Need to return VO if player �locks on� to anything other than phantoms and AA gun, like environment or vehicles (�no target, chief�)
//o	Would be ideal if we could tell the difference between environment and any ground vehicles or infantry (�no target� vs. �too low! rail gun can�t hit ground targets, chief�)
//o	Need to return VO for successful lock
//o	Need to return VO if Rail Gun cannot see target at time of lockon (object_can_see_object?) (�can�t see that target, chief�)
//o	Need to return VO for successful lock onto AA cannons

//�	Need a way to manually end the cooldown ourselves in script for special cases - DONE
//�	Target Locator needs cooldown that can be easily adjusted - DONE
//�	Need to return VO if player tries to access target locator before cooldown has expired - DONE
//�	Need to disable access to target locator completely, and return VO if player tries to access it (�rail gun is damaged!�) - DONE
//�	Target locator needs to auto-stow after rail gun successfully shoots a target - DONE
//o	Need to retun VO for successful enemy death - DONE
//o	Need to return VO if target doesn�t die (if rail gun missed bc target flew behind rock or something) - DONE
//I think that�s it� I�ll email you back if I think of anything. Or let me know if you�re putting it together and think that there�s some stuff I forgot.
//




// bugs:
// 	- cs_shoot doesn't work so I have to use braindead on phantoms, also this means it wont work on distant guns
// 	- unless I do a sleep after the miss function, it gets called twice and charges twice

// bools to see when the td is ready for use or not
global boolean	td_ready_for_mission_use				= FALSE;		// used as a check for the first time it gets used
global boolean 	target_designator_is_ready 			= FALSE;		// is the td ready to use during regular use?
global boolean 	td_force_stow										= FALSE;		// should the td be stowed after firing?
global boolean	td_is_out												= FALSE;		// check for if the td is already out in the player's hands
global boolean	td_force_cool_down							= FALSE;		// force a cool down to happen immediately
global boolean	td_disabled 										= FALSE;		// when the td gets disabled at chopper bowl
// input vars
global boolean 	td_pulled_out_input 						= FALSE;		// did the player press dpad
global boolean 	td_switched_weapons_input 			= FALSE;		// did the player press y?
global boolean	td_tried_to_fire_input					= FALSE;		// did the player press trigger?
global boolean 	td_trigger_down_time_met 				= FALSE;		// did teh player hold the trigger down for long enough?
global long 		td_trigger_down_time 						= 0;				// check to see how long the player has had the trigger down for
global long 		td_trigger_down_time_max 				= 14;				// the const for how long the trigger neesd to be down for

// ammo, timer and locked object settings
global short 		td_current_ammo									= 0;				// the current ammo of the td, either 0 or 1
global short 		td_max_ammo											= 1;				// should always be 1
global real			td_time_to_charge_rail_gun			= 30;				// change this to make the time between shots more / less - in seconds
global real			td_current_time									= -1;				// current game tick set when the charge of the rail gun begins
global object 	td_locked_on_target_previous		= NONE;			// the object the td is locked onto, the real thing
global object 	td_locked_on_target_current			= NONE;			// the object the td is locked onto, hack, gets reset the next frame

// vo bools
global boolean 	td_vo_is_playing								= FALSE;		// is vo playing?
global boolean 	td_is_firing										= FALSE;		// is the rail gun firing?
global boolean 	td_fired												= FALSE;		// has the rail gun fired?
global boolean 	td_couldnt_see_target						= FALSE;		// has the rail gun started to fire but couldnt see its target
global boolean 	td_aiming_timeout								= FALSE;		// has the rail gun taken too long to aim at its target?

// the player
global player 	td_user 												= player0;	// the user of this thing.

//global boolean td_disabled = false;

// call this when you want to start the td script up
script static void m40_target_designator_main()
	print ("m40 td");

	sleep_until(player_count() > 0, 1);
	
//	td_user	= player_get_first_valid();
	
	// place and load in the firing AI, probably needs to be broken out more in m40
	ai_place (bt_sq);
	ai_player_add_fireteam_squad (td_user, bt_sq);
	ai_vehicle_enter_immediate (bt_sq, main_mammoth, "mac_d");

	cs_run_command_script (bt_sq.guy2, mammoth_gunner_think);
	cs_run_command_script (bt_sq.guy3, mammoth_gunner_think);

	
	// all the rail gun and td threads start thinking here
	thread (target_designator_think());
	thread (target_designator_dpad_input_watch());
	thread (target_designator_give_think());
	thread (target_designator_swap_away_think());
	thread (target_designator_force_stow_think());
	
	// a loop that goes forever and tries to give ammo to the target designator
	thread (target_designator_give_ammo_fail_safe());
	
	// tracks the state of the thing you're targeting
	thread (target_designator_track_target());
					
	thread (target_designator_check_trigger_down_time());
	// unlocks the td initially, may want to lock it instead in m40
	//sleep_s(5);
	//target_designator_charge(true);
end

// main firing loop for the mammoth
script static void target_designator_think()
	repeat	
	
		repeat		
			if (not target_designator_is_ready) and object_valid(m40_lakeside_target_laser) and player_count() > 0 then
				repeat
					// this doesn't work, and needs to in order to check for VO calls when you try to fire but the TD isn't ready / charged yet
					if (unit_has_weapon_readied (td_user, "objects\weapons\pistol\storm_target_laser\storm_target_laser_m40.weapon")) then
						if (td_tried_to_fire_input) then
							thread (target_designator_vo_callouts("not ready"));
						end
					end
				until (target_designator_is_ready, 1);		
			elseif object_valid(m40_lakeside_target_laser) and player_count() > 0 then
				// we can fire now
				if (weapon_get_lockon_state(m40_lakeside_target_laser) == 0) then 
					if (weapon_get_rounds_total (m40_lakeside_target_laser, 0) == 0) then	
						thread (target_designator_charge(false, true));
						thread (target_designator_vo_callouts("not a target"));
						// hack, not sleeping here makes this function get called twice because threading anything eats a tick
						sleep (2);
					end
				elseif (weapon_get_lockon_state(m40_lakeside_target_laser) == 1) then
					print ("TD AQUIRING");
				elseif (weapon_get_lockon_state(m40_lakeside_target_laser) == 2) then
	//				repeat
						print ("TD LOCKED ON");
						//inspect(td_locked_on_target);
//					until (td_tried_to_fire_input and (weapon_get_lockon_state(m40_lakeside_target_laser) != 2 or weapon_get_rounds_total (m40_lakeside_target_laser, 0) == 0), 1);
						td_locked_on_target_current = weapon_get_lockon_target(m40_lakeside_target_laser, true, false);	
						//inspect(td_tried_to_fire_input);
						//inspect(weapon_get_rounds_total (m40_lakeside_target_laser, 0));
					if (weapon_get_rounds_total (m40_lakeside_target_laser, 0) == 0 and td_trigger_down_time_met) then
						thread (target_designator_vo_callouts("firing"));
						td_is_firing = TRUE;
						td_trigger_down_time_met = FALSE;
						thread (target_designator_charge(false, false));
						//sleep_s(3);
					end
				end
			end
			//td_locked_on_target_current = weapon_get_lockon_target(m40_lakeside_target_laser, true, false);					
		until (target_designator_disabled == true, 1);
	sleep_until (target_designator_disabled == false);
	until(1 == 0, 1);			
end

script static void target_designator_track_target()
	// wait until rail gun has fired
	repeat
		if (object_valid(m40_lakeside_target_laser) and player_count() > 0) then
			//if (weapon_get_lockon_state(m40_lakeside_target_laser) == 2) then
				td_locked_on_target_previous = td_locked_on_target_current;
				//print ("TD TRACKING - td_locked_on_target_previous = td_locked_on_target_current");
				//td_locked_on_target_current = weapon_get_lockon_target(m40_lakeside_target_laser, true, false);
			//end
		end
		
		if (td_is_firing) then
			// wait until rail gun HAS fired, fake with a sleep for now
			sleep_until(td_fired or td_couldnt_see_target, 1);
			sleep (5);
			print ("TD TRACKING - td_fired in target_designator_track_target");
			if (object_get_health (td_locked_on_target_previous) <= .2 and td_fired) then
				target_designator_vo_callouts("hit");
			elseif (object_get_health (td_locked_on_target_previous) > .2 and td_fired) then
				target_designator_vo_callouts("missed");
			else
				target_designator_vo_callouts("not a target");
			end
			
			td_fired = FALSE;
			td_couldnt_see_target = FALSE;
		end
	until(1 == 0, 1);			

end

//script static void test_see()
//	sleep_until (objects_can_see_object (unit(bt_sq), cannon_lakeside, 1));
//	print ("I CAN SEE IT");
//end

// Logic to make the gunner think about shooting at his targets
script command_script mammoth_gunner_think()
	print ("Mammoth Gunner Alive!");
		
	repeat
		if (not td_is_firing) then
			cs_shoot (0);
			cs_aim (1, mtest2.p23);
			//dprint ("not shooting, aiming at default point");
		else
			cs_aim_object(1,td_locked_on_target_previous);
//			thread (td_aiming_timeout_sc());
			sleep_until (objects_can_see_object (ai_current_actor, td_locked_on_target_previous, 30) or td_aiming_timeout == true);			
			//dprint ("aiming at locked on (previous) target");
			//if (objects_can_see_object (ai_current_actor, td_locked_on_target_previous, 30)) then
			
			//	print ("TD TRACKING - CAN SEE TARGET");
//				sleep_s(3);
				//dprint ("still can see target");
			if (objects_can_see_object (ai_current_actor, td_locked_on_target_previous, 30)) then
				sleep_s(2);
				cs_shoot (1);		
				print ("TD TRACKING - ORDERED TO CS SHOOT");		
				sleep_s(1);
				print ("FIRED AT THING!");
			else
				print ("Couldn't see target!");
				thread (target_designator_unlock());
				td_couldnt_see_target = TRUE;
			end
			
			td_fired = TRUE;		
			//else
//				sleep_s(3);
			//end
			td_aiming_timeout = false;
		end	
	until (1 == 0, 1);
	
	//cs_aim (bt_sq, 1, ps_mammoth_points.default);
	//cs_shoot (false);
end

script static void td_aiming_timeout_sc()
	sleep_s(3.75);
	td_aiming_timeout = true;
end

// watches the input of the controller and sets some vars that other scripts look for
script static void target_designator_dpad_input_watch()
	repeat
		// reset these at the top of the loop
		td_pulled_out_input = false;
		td_switched_weapons_input = false;
		td_tried_to_fire_input = false;
			
		// this call allowes input to be checked every frame
		unit_action_test_reset(td_user);
		
		// check against various inputs and set global vars that other functions look at
		
		// pull the weapon out
		if (unit_action_test_special_action(td_user)) then
			td_pulled_out_input = true;
		end
		
		// swap weapons
		if (unit_action_test_primary_trigger(td_user)) then
			td_switched_weapons_input = true;
		end
		
		// pull trigger
		if (unit_action_test_primary_trigger(td_user)) then
			td_tried_to_fire_input = true;
		end

	until (td_disabled == true, 1);
end


script static void target_designator_check_trigger_down_time()
	repeat
		if (unit_has_weapon_readied (td_user, "objects\weapons\pistol\storm_target_laser\storm_target_laser_m40.weapon") and td_tried_to_fire_input and weapon_get_rounds_total (m40_lakeside_target_laser, 0) > 0) then
			td_trigger_down_time = td_trigger_down_time + 1;
		else
			td_trigger_down_time = 0;
		end
		
		if (td_trigger_down_time > td_trigger_down_time_max) then
			td_trigger_down_time_met = true;
		end
		
		//inspect(td_trigger_down_time);
	until (td_disabled == true, 1);
end

// main loop for what state the designator needs to be in when the player pulls it up
script static void target_designator_give_think()
	repeat
  	if (td_pulled_out_input) and (not td_is_out) then
			
			// make the laser exist
			object_create_anew(m40_lakeside_target_laser);
			
			if object_valid(m40_lakeside_target_laser) and player_count() > 0 then
				target_designator_give_ammo();
				
				// give the weapon
				unit_add_weapon(td_user, m40_lakeside_target_laser, 0);
				td_is_out	= TRUE;
				print ("gave td");
								
				// give ammo if it's actually ready, take it away if its not
				if (target_designator_is_ready) then	
					target_designator_give_ammo();
				else
					target_designator_deplete_ammo();
				end
				sleep (30);
			end
		end
	until (td_disabled == true, 1);
end

// if the player swaps away, this handles what happens to the TD
script static void target_designator_swap_away_think()
	repeat
		if (object_valid(m40_lakeside_target_laser) and player_count() > 0) then
			if (td_switched_weapons_input or object_get_parent(m40_lakeside_target_laser) == NONE) then      // swapped to another weapon OR object_get_parent(m40_lakeside_target_laser)==NONE) then    // or it was dropped
				object_destroy(m40_lakeside_target_laser);
					td_is_out = FALSE;
					if td_switched_weapons_input then
						print ("switched away from TD");
					else
						print ("dropped TD!");
					end
				sleep (30);
			end
		else
			td_is_out = FALSE;
//			print ("TD invalid/no players");                
			sleep (30);
		end
	until (td_disabled == true, 1);
end


// after the player fires we need the "stow" to be forced
script static void target_designator_force_stow_think()
	repeat
		if (td_force_stow) then			// fired the weapon, ammo = 0
			if (object_valid(m40_lakeside_target_laser) and player_count() > 0) then
				unit_drop_weapon(td_user, m40_lakeside_target_laser, 1);
				td_is_out = FALSE;
				print ("fired TD");
				sleep (30);
			end
		end
	until (td_disabled == true, 1);
end

// the main "charge" loop, this gets called once the rail gun is fired or is started for the first time
script static void target_designator_charge(boolean first_charge, boolean fast_charge)
	
	print ("TD Charging!");
//	td_ready_for_mission_use = TRUE;
	
	td_current_time = game_tick_get();
	
	// to thread or not to thread?
	if (not first_charge and td_locked_on_target_previous != NONE) then
		thread (target_designator_force_stow());
		print ("TD TRACKING - target_designator_force_stow, will STOW");
	end
		
	thread (mammoth_gunner_clear_target());
	target_designator_deplete_ammo();
	target_designator_lock();
	
	if (not fast_charge) then
		weapon_set_target_designator_cooldown_timer (td_time_to_charge_rail_gun);
		sleep_s (td_time_to_charge_rail_gun);
	end
	
	target_designator_unlock();
	target_designator_give_ammo();		// this is currently set on the fail safe, leaving out for now
	print ("TD Ready to Fire!");
	
	if (first_time_charged == FALSE and rail_gun_prompt_bool == FALSE) then
 		thread (f_dialog_m40_rail_gun_ready());
	end
end

// VO queue for this gun so that dialogue doesn't play on top of each other, etc.

//f_dialog_m40_target_missed - Target acquired!
//f_dialog_m40_no_line_of_sight - No line of sight on target!
//f_dialog_m40_target_destroyed - Target destroyed!
//f_dialog_m40_rail_gun_reloading - Rail gun reloading!
//f_dialog_m40_rail_gun_ready - Rail gun available!
//f_dialog_40_good_job - Good job, Chief.

script static void target_designator_vo_callouts(string call_out)
	
	if td_disabled == FALSE
	
	then
	
		if (not td_vo_is_playing or call_out == "firing" or call_out == "hit" or call_out == "missed") then
			local sound the_vo = NONE;
			local string the_vo_string = NONE;
	
			td_vo_is_playing = TRUE;
			
			if (call_out == "not ready") then
				the_vo_string = "Not Ready!";
				
			elseif (call_out == "missed") then
				the_vo_string = "Missed!";
				thread (b_target_missed_sc());
							
			elseif (call_out == "firing") then
				the_vo_string = "Firing!";	
				thread (b_target_acquired_sc());
							
			elseif (call_out == "hit") then
				the_vo_string = "Hit!";	
				//thread (b_target_destroyed_sc());	
				thread (b_rail_gun_reloading_sc());	
				
			elseif (call_out == "not a target") then
				the_vo_string = "Not a target!";	
				thread (b_no_line_of_sight_sc());
				
			end
			
			if (td_is_firing) then	
				print ("Killing all VO to play firing line");
			end
			
			// stop all VO here that would be playing for firing
			print (the_vo_string);		// play the VO here instead
			sleep_s (1);							// wait the longest VO line length plus some change
			
			// reset this
			td_vo_is_playing = FALSE;
			td_is_firing = FALSE;
		end	
	
	end
	
end


script static void b_rail_gun_available_sc()
	b_rail_gun_available = true;
	sleep_s (1);
	b_rail_gun_available = false;	
end

script static void b_rail_gun_ready_sc()
	b_rail_gun_ready = true;
	sleep_s (1);
	b_rail_gun_ready = false;	
end

script static void b_rail_gun_reloading_sc()
	sleep_s (3);	
	if chopper_cannon_alive == TRUE
	then
		b_rail_gun_reloading = true;
		sleep_s (1);
		b_rail_gun_reloading = false;	
	else
	print ("rail gun reloading not playing");
	end
end

script static void b_target_destroyed_sc()
	b_target_destroyed = true;
	sleep_s (1);
	b_target_destroyed = false;	
end

script static void b_no_line_of_sight_sc()
	b_no_line_of_sight = true;
	sleep_s (1);
	b_no_line_of_sight = false;	
end

script static void b_target_acquired_sc()
	b_target_acquired = true;
	sleep_s (1);
	b_target_acquired = false;	
end

script static void b_target_missed_sc()
	b_target_missed = true;
	sleep_s (1);
	b_target_missed = false;	
end


// support functions and re-scripting of code calls to be more designer readable
script static void target_designator_lock()
	target_designator_is_ready = FALSE;
end

script static void target_designator_unlock()
	target_designator_is_ready = TRUE;
	weapon_force_end_target_designator_cooldown_timer();
end

script static void target_designator_give_ammo()
	if (object_valid(m40_lakeside_target_laser) and player_count() > 0) then
		weapon_set_current_amount (m40_lakeside_target_laser, 1);
	end
end

script static void target_designator_deplete_ammo()
	if (object_valid(m40_lakeside_target_laser) and player_count() > 0) then
		weapon_set_current_amount (m40_lakeside_target_laser, 0);
		print ("depleted TD Ammo");
	end
end

script static void mammoth_gunner_braindead(boolean b_braindead)
	ai_braindead (bt_sq, b_braindead);
end

script static void mammoth_gunner_clear_target()
	sleep_s(4);
	print ("clearing target!");
	td_locked_on_target_previous = NONE;
	td_locked_on_target_current = NONE;
	td_aiming_timeout = true;	
end

script static void target_designator_force_stow()
	td_force_stow = TRUE;
	print ("td_force_stow = TRUE");
	sleep (2);
	td_force_stow = FALSE;
	print ("td_force_stow = FALSE");
end

// check current time against last time it was fired vs. max time
script static void target_designator_give_ammo_fail_safe()
	repeat
		if (object_valid(m40_lakeside_target_laser) and player_count() > 0) and td_ready_for_mission_use then
			if (((game_tick_get() / game_tick_rate_get()) - (td_current_time / game_tick_rate_get())) >= td_time_to_charge_rail_gun) or td_force_cool_down then
				target_designator_give_ammo();
				td_force_cool_down = FALSE;
			end
		end
	until (1 == 0, 1);
end

// forces immediate cool down
script static void target_designator_force_immediate_cooldown()
	td_force_cool_down = true;
	weapon_force_end_target_designator_cooldown_timer();
end


// --- End m40_invasion_target_designator.hsc ---

// --- Begin m40_narrative.hsc ---

// =================================================================================================
// =================================================================================================
// NARRATIVE SCRIPTING M40
// =================================================================================================
// =================================================================================================b
// =================================================================================================
// *** GLOBALS ***
// =================================================================================================

		global boolean b_leave_without_cortana_1 = FALSE;
		global boolean b_leave_without_cortana_2 = FALSE;
		global boolean b_cortana_retrieved = FALSE;
		global boolean b_mammoth_entered = FALSE;
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
		global boolean b_objective_13_complete = FALSE;
		global boolean b_objective_14_complete = FALSE;
		global boolean b_objective_15_complete = FALSE;
		global boolean b_mammoth_going = FALSE;
		global boolean b_door_locked = FALSE; 
		global boolean b_start_white_rabbit = FALSE; 
		global boolean b_gun_in_mammoth = FALSE;
		global boolean b_warthog_gun_in_mammoth = FALSE;
		global boolean m40_map_area_01 = FALSE;
		global boolean m40_map_area_02 = FALSE;
		global boolean m40_map_area_03 = FALSE;
		global boolean m40_map_area_04 = FALSE;
		global boolean m40_map_area_05 = FALSE;
		global boolean b_rail_gun_available = FALSE;
		global boolean b_rail_gun_ready = FALSE;
		global boolean b_rail_gun_reloading = FALSE;
		global boolean b_target_destroyed = FALSE;
		global boolean b_no_line_of_sight = FALSE;
		global boolean b_target_acquired = FALSE;	
		global boolean b_target_missed = FALSE;	
		global boolean cortana_inserted = FALSE;
		global boolean rampancy_pip_over = FALSE;
		global long L_dlg_marine_sniper_line_01 = 							DEF_DIALOG_ID_NONE();
		global long L_dlg_marine_sniper_line_02 = 							DEF_DIALOG_ID_NONE();
		global long L_dlg_marine_sniper_line_03 = 							DEF_DIALOG_ID_NONE();	
		global short mammoth_button_4_short = 0;
		global boolean b_plinth_line_active = FALSE;
		
///////////////////////////////////////////////////////////////////////////////////
// MAIN
///////////////////////////////////////////////////////////////////////////////////
script startup M40_narrative_main()

	print ("::: M40 Narrative Start :::");

	thread( m40_caves_vo_marines() );
	//wake (m40_waterfalls_rampancy_start);
	wake (M40_cit_door_airlock);
	wake (m40_cortana_grotto_door);
	thread (m40_cortana_in_librarian());
	thread (m40_landing_in_battle());
	thread (m40_cortana_citadel_rampancy());
	wake(m40_marine_nudge_outer);
	//wake(m40_sniper_in_the_rocks);
	wake(m40_epic_palmer_order);
	wake(m40_missile_hologram);
	thread(m40_leave_without_cortana());
	wake(m40_second_cannon_approach);
	wake( M40_get_sniper_rifle);
 	wake(m40_lasky_radio_contact);
// 	wake(m40_post_stream);
 	wake( m40_cortana_battery_console);
 	wake(m40_cannon_reveal);
 	thread(m40_marine_rescue());
 	wake(m40_waypoint_terminal);
 	thread(m40_shoot_gun_in_mammoth());
 	thread(m40_warthog_gun());
 	wake(m40_cortana_shield_ahead);
 	thread(f_dialog_m40_target_destroyed());
 	thread(f_dialog_m40_rail_gun_reloading());
 	thread(f_dialog_m40_rail_gun_ready());
 	thread(f_dialog_m40_rail_gun_available());
 	thread(f_dialog_m40_no_line_of_sight());
 	thread(f_dialog_m40_target_acquired());
 	thread(f_dialog_m40_target_missed());

 	
end

script dormant m40_lasky_radio_contact()
     	sleep_until( volume_test_players(tv_cav_player_moves_up), 1);
			
			wake(f_dialog_m40_lasky_radio_contact);

end

global real R_mammoth_conversation_trigger_see_dist = 	7.5;
global real R_mammoth_narrative_conversation_trigger_near_dist = 5.0;

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
		( r_obj_sees_player_angle > 0.0 )
		and
		(
			objects_can_see_object( obj_character, player0, r_obj_sees_player_angle )
			or
			objects_can_see_object( obj_character, player1, r_obj_sees_player_angle )
			or
			objects_can_see_object( obj_character, player2, r_obj_sees_player_angle )
			or
			objects_can_see_object( obj_character, player3, r_obj_sees_player_angle )
		)
	);

end

script static void m40_caves_vo_marines( )
/*  static boolean b_triggered = FALSE;

	// wait for the character to be valid
	sleep_until( ai_living_count(ai_character) > 0, 1 );
 
	// wait for player to be w/i distance
	sleep_until( b_triggered or (ai_living_count(ai_character) <= 0) or f_narrative_distance_trigger(ai_get_object(ai_character), R_mammoth_conversation_trigger_see_dist, R_mammoth_narrative_conversation_trigger_near_dist, 0.0), 1 );

	// trigger the dialog
	if ( (not b_triggered) and (ai_living_count(ai_character) > 0) and (not ai_allegiance_broken(player, human)) ) then
		b_triggered = TRUE;
		dprint("MARINE VO SHOULD HAVE TRIGGERED");
		thread( f_dialog_m40_landing_marine_chatter());
	end	*/
	sleep_until( volume_test_players(m40_caves_vo_marines), 1);

  m40_map_area_01 = TRUE;
      
end


//triggers at the beginning of the cave section.
/*
script dormant m40_cortana_hall()
			sleep_until( volume_test_players(m40_cortana_hall), 1);
			//wake(f_dialog_m40_cortana_hall);
			//thread (story_blurb_add("domain", "RAMPANCY FX"));
end*/


//triggers at the end of the cave section.

script static void M40_cave_VO_mammoth_reveal()
     	sleep_until( volume_test_players(M40_cave_VO_mammoth_reveal), 1);
     	wake(f_dialog_m40_cortana_mammoth);
      	thread (tort_button_01());
				thread (tort_button_02());
				thread (tort_button_03());
				thread (tort_button_04());
				device_set_power (tortoise_device_button_05, 0);
		    // thread (cortana_hud_rampancy_loop_begin("noise",.001, 1));
      
      
end

script dormant m40_marine_nudge_outer()
     	sleep_until((volume_test_players(marine_nudge_outer) or volume_test_players(marine_nudge_outer_02)), 1);
     	if b_mammoth_entered == FALSE then
      	wake(f_dialog_m40_marine_nudge_outer);
     end
end


script dormant M40_tortoise_enter_first_time()
    	b_mammoth_entered = TRUE;
		//	wake(f_dialog_m40_marine_nudge_inner);
	
end


static short gun_in_mammoth_state = 0;
	
script static void m40_shoot_gun_in_mammoth()
		sleep_until( b_gun_in_mammoth == TRUE );	
		dprint("GUN IN MAMMOTH 1");
		gun_in_mammoth_state = gun_in_mammoth_state + 1;
		thread (f_dialog_m40_gun_in_mammoth( gun_in_mammoth_state ));
		b_gun_in_mammoth = FALSE;
		thread(m40_shoot_gun_in_mammoth());
	
end


script dormant m40_gun_in_mammoth()
 	dprint("deprecated");
end


script dormant M40_marine_warthog()

			wake(f_dialog_m40_marine_warthog);

end

static short marine_warthog_gun_state = 0;
	
script static void m40_warthog_gun()
		sleep_until( b_warthog_gun_in_mammoth == TRUE);
		dprint("WARTHOG GUN IN MAMMOTH 1");
		marine_warthog_gun_state = marine_warthog_gun_state + 1;
		thread(f_dialog_m40_marine_warthog_gun( marine_warthog_gun_state ));
		b_warthog_gun_in_mammoth = FALSE;
		thread(m40_warthog_gun());
	
end

script dormant m40_marine_warthog_gun()
 	dprint("deprecated");
end

script dormant m40_target_designator_callout()
     sleep_until( volume_test_players(m40_target_designator_callout), 1);


end





/*
script dormant m40_jetpack_callout()
     sleep_until( volume_test_players(m40_jetpack_callout), 1);
			wake(f_dialog_m40_jetpack_callout);

end*/

//triggers when the player enters the MAMMOTH near PALMER and LASKY.

script static void m40_caves_tort_meet_palmer()
//     	sleep_until( volume_test_players(lasky_vignette_dialogue), 1);
			sleep_until (palmer_vignette == true);
		//	wake(f_dialog_m40_lasky_vignette);
						wake(f_dialog_m40_jetpack_callout);


end

script static void tort_button_01()
                sleep_until (device_get_position(tortoise_device_button_01) != 0);
                object_destroy (tortoise_device_button_01);

                	thread(f_dialog_m40_mammoth_button_1());
end

script static void tort_button_02()
                sleep_until (device_get_position(tortoise_device_button_02) != 0);
                object_destroy (tortoise_device_button_02);
                
                	thread(f_dialog_m40_mammoth_button_2());
end

script static void tort_button_03()
                sleep_until (device_get_position(tortoise_device_button_03) != 0);
                object_destroy (tortoise_device_button_03);
                	thread(f_dialog_m40_mammoth_button_3());
end

script static void tort_button_04()
                sleep_until (device_get_position(tortoise_device_button_04) != 0);
                object_destroy (tortoise_device_button_04);
                mammoth_button_4_short = mammoth_button_4_short + 1;
                
                	thread(f_dialog_m40_mammoth_button_4(mammoth_button_4_short));
end

/*
script static void tort_button_05()
                sleep_until (device_get_position(tortoise_device_button_05) != 0);
                device_set_power (tortoise_device_button_05, 0);
                thread(f_dialog_m40_mammoth_button_5());
end*/

// triggers when the player pass a group of marines in the cave.
// removing for UR4 because it stomps on m40_caves_vo_marines (- jacob)

//script static void m40_caves_marines_bark()
//     	sleep_until( volume_test_players(m40_caves_VO_marines_bark), 1);
//     
//			thread (story_blurb_add("vo", "MARINES: Good to have you with us chief."));
//      
//      sleep_s (10);
//end

// triggers after the MAMMOTH breaks out of the caves section.

script static void m40_caves_tort_VO_delrio_radio()
     	sleep_until( volume_test_players(m40_caves_tort_VO_delrio_radio), 1);
  		

/*			thread (story_blurb_add("vo", "DEL RIO (RADIO): starts the mission. reminds player they need to take out the AA guns so INFINITY can knock out the tractor beam."));
      
      sleep_s (5.5);
      
      thread (story_blurb_add("vo", "DEL RIO (RADIO): Their success is critical to escaping requiem. "));
      
      sleep_s (5.5);
      
      thread (story_blurb_add("vo", "LASKY: rallies the troops. They won't let the mission fail. "));
      
      sleep_s (5.5);*/

		dprint("d");
end

// VO triggers when the MAMMOTH sequence is activated.

script dormant m40_caves_tort_VO_breakout()
     
				//	thread (story_blurb_add("other", "LASTKY DEMONSTRATES THE TARGET DESIGNATOR AND CLEARS OUT THE TOP OF THE ROCK SLIDE WITH IT."));
      
      sleep_s (5);
     
end

//VO triggers when the Mammoth sequence is activated.

script dormant M40_cave_tort_rockslide()
     
					thread (story_blurb_add("other", "LASTKY DEMONSTRATES THE TARGET DESIGNATOR AND CLEARS OUT THE TOP OF THE ROCK SLIDE WITH IT."));

      
     
end

//need to trigger when the pelican sequence starts.

script dormant M40_gun_fodder_pelican_down()
						
  					wake(f_dialog_m40_pelican_vignette);

    

end

script dormant m40_cannon_reveal()
  sleep_until( volume_test_players(m40_cannon_reveal), 1);
	//wake(f_dialog_m40_cannon_reveal);
end



script dormant m40_cannon_fodder()
  
	wake(f_dialog_M40_cannon_fodder);
end



script dormant M40_mammoth_in_range()
  
	wake(f_dialog_M40_mammoth_in_range);
	//thread(m40_warthog_forget());
	wake(m40_del_rio_ping);
	m40_map_area_01 = FALSE;
	m40_map_area_02 = TRUE;
	
end




script dormant m40_del_rio_ping()
      	sleep_until( volume_test_players(m40_del_rio_ping), 1);
     		//	wake(f_dialog_m40_del_rio_ping);
end


 


// first blockade - Triggers when the covenant armor is visable.

script dormant M40_fodder_armor_appear()
    
    dprint("d"); 
		//wake(f_dialog_m40_first_encounter);					
			

//restructured this line for UR, removed this part: LASKY: orders chief to take it out. (- jacob)

end

/*//Initiates near the tar lake
script static void M40_lake_reaction()
      	sleep_until( volume_test_players(M40_lake_reaction), 1);
    		sleep_until ((volume_test_players_lookat(lake_facing_volume, 25, 2.5)), 1);
 			//wake(f_dialog_M40_lake_reaction);
      
end*/




//Initiates if player enters the lakeside combat without a warthog
script static void m40_warthog_forget()
   sleep_until( volume_test_players(m40_warthog_forget), 1);
    	
 		//	wake(f_dialog_m40_warthog_forget);
      
end


script static void m40_marine_rescue()
sleep_until( volume_test_players(m40_marine_rescue), 1);

		if
		ai_living_count (pelican_marines) > 0
		and
		(volume_test_object (m40_marine_rescue, pelican_marines.guy1)
		or
		volume_test_object (m40_marine_rescue, pelican_marines.guy3)
		or
		volume_test_object (m40_marine_rescue, pelican_marines.guy4)
		or
		volume_test_object (m40_marine_rescue, pelican_marines.guy5))
		then 
			wake(f_dialog_m40_marine_rescue);
		else
			print ("Pelican Marines are dead, VO not playing");
		end
		
end



// first blockade - Triggers when the drop ship is visable.

script dormant M40_fodder_dropship_appear()
     				wake(f_dialog_m40_fodder_dropship_appear);
						
      


end

// first blockade - Triggers when a few enemies are left.

script dormant M40_fodder_cleanup()
     
						thread (story_blurb_add("other", "LASKY ORDERS THAT THE LAST OF THE ENEMIES BE CLEANED UP."));
      


end

//first blockade - Triggers once Enemy forces are eliminated. PALMER readies the rail gun. LASKY orders chief to mount the gauss gun and blow the AA gun out of the sky!

script dormant M40_fodder_railgun_ready()
     				
					
						
						wake(f_dialog_m40_tutorial_1);

end

script dormant M40_lakeside_tort_assault_dialogue()
      wake(f_dialog_M40_lakeside_tort_assault_dialogue);
			


end

//first area - triggers once the player activates thr RAIL GUN. 

script dormant M40_fodder_railgun_charge()
     
			thread (story_blurb_add("other", "THE RAIL GUN BEGINS TO PRIME."));
     
      


end

script dormant M40_lakeside_vehicles_deploy()
     
     
	//		thread (story_blurb_add("other", "WARTHOGS ARE DEPLOYED FOR CHIEF TO USE."));

		thread(f_dialog_M40_mammoth_in_range_02());
      
end


script dormant M40_fodder_railgun_automated()
     
			
			wake(f_dialog_m40_tutorial_2);
      

  
  
end


script dormant M40_fodder_railgun_automated_2()
     
     wake(f_dialog_m40_tutorial_3);

end


script dormant m40_second_cannon_approach()
		sleep_until( volume_test_players(m40_second_cannon_approach), 1);
		dprint("chopper line hit");
		if chopper_cannon_alive == TRUE then
		dprint("chopper line triggered");
			wake(f_dialog_m40_second_cannon_approach);
		end
	m40_map_area_03 = FALSE;
	m40_map_area_04 = TRUE;
end




script dormant M40_lakeside_prep_rollout()
     
      wake(f_dialog_m40_rollout);
			//thread (story_blurb_add("other", "MAMMOTH IS USED AS A BRIDGE ACROSS THE TAR.")); 
      sleep_s (5);
      


end

script dormant m40_post_stream()
	sleep_until( volume_test_players(m40_post_stream), 1);
		wake(f_dialog_m40_post_stream);
			m40_map_area_02 = FALSE;
			m40_map_area_03 = TRUE;
end

script dormant M40_lakeside_rollout()
     
//			thread (story_blurb_add("vo", "PALMER: We're bringing the Tortoise up to form a bridge across the lake."));
      dprint("d");
     
//     	thread (story_blurb_add("vo", "PALMER: Grab a vehicle or stay on the Tortoise, Chief.."));
//      
//      sleep_s (5);

end

script dormant m40_pre_chopper_01()
     dprint("d");

     // wake(f_dialog_m40_pre_chopper_01);

      
end


script dormant m40_prechopper_waiting()
     
dprint("d");
    //  wake(f_dialog_m40_prechopper_waiting);

      
end

script dormant m40_prechopper_done()
     

      wake(f_dialog_m40_prechopper_done);

      
end



//Blockade area - varous other warning warning for the MAC gun???



//Mammoth Bridge - As the chief uses the mammoth as a bridge the electronics on the interior sputter and flicker. Cortana and chief recognize this from earlier levels, but with the didact out who could it be?

// /chopper Bowl - triggers when the player enters the chopper bowl. Laskey should radio to the player that a large unidentified Covenant vehicle is nearby.

//The rail gun takes out the second cannon

script dormant M40_second_cannon_fire_one()
     
		
      wake(f_dialog_m40_second_cannon_fire_one);
      sleep_s (5);

end




script dormant M40_chopper_Rail_gun()
     
		
      wake(f_dialog_m40_second_cannon_fire_two);
      sleep_s (5);

end




script dormant M40_lakeside_all_clear()
     
		
      wake(f_dialog_M40_lakeside_all_clear);

end


script static void M40_chopper_lich_warning()
     

      wake(f_dialog_m40_pre_chopper_01);

      
end

//chopper Bowl - triggers when the lich is revealed.

     
script dormant M40_chopper_lich_reveal()
      wake(f_dialog_m40_lich_plan);
     
end

script dormant m40_broken_gun()

		wake(f_dialog_m40_broken_gun);
end

//Chopper Bowl - Triggers when Covenant board the MAMMOTH.

script dormant M40_chopper_mammoth_boarding()
     	wake(f_dialog_m40_lich_pass);

end

//Chopper Bowl - Triggers when Covenant baording party is cleared from MAMMOTH.

script dormant M40_chopper_mammoth_boarding_done()
     
//			thread (story_blurb_add("vo", "Nice work, Master Chief. Come to the Mammoth to get a JETPACK"));
//      
//      sleep_s (5);
      
			cinematic_set_title (chapter_07);
      
end
      
//Chopper Bowl - triggers when the lich moves into position over the central mound.

script dormant M40_chopper_lich_over_mound()
     
     wake(f_dialog_m40_lich_stops);
     
			
      
end


script dormant m40_lich_boarding()
     
     wake(f_dialog_m40_lich_boarding);


end



script dormant m40_lich_head_out()
     
     wake(f_dialog_m40_lich_head_out);


end


script dormant m40_lich_going_to_blow ()
	dprint("D");     
//     wake(f_dialog_m40_lich_going_to_blow);


end


script dormant M40_chopper_go_to_citadel()
			
			sleep_s(3);
     
     wake(f_dialog_m40_descent_on_mesa);
			//thread (story_blurb_add("other", "DEL RIO REITERATES THAT WE ARE HEADED FOR THE CENTRAL CANNON CONTROLS IN THE CITADEL."));
      
     

end

script dormant m40_chopper_cleared()

     //wake(f_dialog_m40_chopper_cleared);
				m40_map_area_04 = FALSE;
	m40_map_area_05 = TRUE;
      
     

end



script dormant m40_boarding_party()

					wake(f_dialog_m40_boarding_party);
					
end


script dormant m40_waterfalls_rampancy_start()
					sleep_until( volume_test_players(m40_waterfalls_rampancy), 1);
					wake(f_dialog_m40_canyon_rampancy);
				
end

script dormant M40_waterfalls_warning()
//Mammoth pauses at tar stream to load up

     	sleep_until( volume_test_players(tv_waterfall_02), 1);
			wake(f_dialog_m40_stream_crossing);
			
      

end

script dormant M40_waterfalls_ready()
//Mammoth is filled and ready to go

			wake(f_dialog_m40_stream_crossing_2);



end



script dormant M40_citadel_investigate()
			sleep_until( rampancy_pip_over == TRUE);
     	sleep_until( volume_test_players(M40_citadel_investigate), 1);
     	wake(f_dialog_m40_citadel_investigate);

end



script dormant m40_sniper_shot()

	wake(f_dialog_m40_sniper_shot);
	
end

script dormant M40_get_sniper_rifle()
     	sleep_until( volume_test_players(m40_sniper_rifle), 1);
     	dprint("sniper volume fired");
		  // if not (unit_has_weapon (player0, objects\weapons\rifle\storm_sniper_rifle\storm_sniper_rifle.weapon)) then
			//	dprint("no gun");
					//wake(f_dialog_m40_get_sniper_rifle);
		//	end	
end

/*script dormant m40_sniper_in_the_rocks()

     	sleep_until( volume_test_players(tv_careful_chief), 1);

		wake(f_dialog_m40_sniper_in_the_rocks);

end
*/


script static void M40_covenant_and_promethean()
static boolean b_triggered = FALSE;
			
			if ( not b_triggered ) then
				b_triggered = TRUE;
				
				// delay
				sleep_s( 0.25 );
				
      	wake(f_dialog_m40_covenant_and_promethean);
			end
      

end


script dormant m40_a_team()
		sleep_until( volume_test_players(forerunner_installation), 1);
			dprint("d");
      	//wake(f_dialog_m40_a_team);

      

end


script dormant M40_second_promethean_encounter()

			//thread (story_blurb_add("other", "CORTANA POINTS OUT HOW THE PROMETHEANS REALLY DON'T WANT THEM INSIDE."));
		dprint("d");

end




script dormant M40_cit_door_airlock()
	sleep_until (volume_test_players(tv_citadel_ext_airlock_area), 1);	
			wake(f_dialog_m40_cit_door_airlock);
			//thread (story_blurb_add("other", "CHIEF AND CORTANA SUCCESSFULLY BREACH THE FACILITY."));
		
				
end


script dormant m40_cortana_confusion_citadel()
	sleep_until( dm_citadel_int_lobby_door_02->check_close(), 1);	
	
//			thread (story_blurb_add("other", "A SENTINEL CLOSES THE DOOR."));
      
   //   wake(f_dialog_m40_confusion_citadel);

end


script dormant m40_cortana_sentinel_confusion()

			thread (story_blurb_add("other", "A SENTINEL MYSTERIOUSLY OPENS THE DOOR FOR CHIEF AND CORTANA."));
      
      sleep_s (10);

end



script dormant m40_cortana_elevator_confusion()
				
			
      wake(f_dialog_m40_cortana_elevator_confusion);
     // thread(m40_sentinel_color());
      //thread(m40_sentinel_color_2());
      

end



/*script static void m40_sentinel_color()
    sleep_until( player_action_test_primary_trigger() == TRUE, 1);
    sleep_until( volume_test_players(lower_hall_enter), 1);
      wake(f_dialog_m40_sentinel_color);
			kill_script(m40_sentinel_color_2);
      

end

script static void m40_sentinel_color_2()
	sleep_until( volume_test_players(lower_hall_enter), 1);
      wake(f_dialog_m40_sentinel_color_2);
      kill_script(m40_sentinel_color);

end*/




script static void m40_cortana_citadel_rampancy()
			sleep_until( volume_test_players(tv_pc_hallway_ambient), 1);
			
      
      sleep_s (15);

end

script dormant m40_cortana_confusion_powercave_room()

     	sleep_until( volume_test_players(cortana_confusion_powercave_room), 1);
			wake(f_dialog_m40_battery_reveal);
		 ai_place (battery_sentinel);	
		 
   

end


script dormant m40_waypoint_terminal()
	//fires when you click the terminal in vale
	/*
	sleep_until (object_valid (vale_terminal_button), 1);
	sleep_until (device_get_position(vale_terminal_button) > 0.0, 1 );
	device_set_power (vale_terminal_button, 0.0);
			if (IsNarrativeFlagSetOnAnyPlayer(0) == FALSE) and (IsNarrativeFlagSetOnAnyPlayer(1) == FALSE) and (IsNarrativeFlagSetOnAnyPlayer(2) == FALSE) and (IsNarrativeFlagSetOnAnyPlayer(3) == FALSE) and (IsNarrativeFlagSetOnAnyPlayer(4) == FALSE) and (IsNarrativeFlagSetOnAnyPlayer(5) == FALSE) and (IsNarrativeFlagSetOnAnyPlayer(6) == FALSE)then
				wake(f_dialog_global_my_first_domain); 
			end
		SetNarrativeFlagWithFanfareMessageForAllPlayers( 3, TRUE );
	*/
	f_narrative_domain_terminal_setup( 3, domain_terminal, domain_terminal_button );
end

script dormant m40_cortana_battery_console()

     	sleep_until( volume_test_players(m40_cortana_battery_console), 1);
			thread(f_dialog_m40_battery_console());
			
   

end



script dormant m40_missile_hologram()

	sleep_until (object_valid (bt_powercave_battery_button), 1);
	sleep_until (device_get_position(bt_powercave_battery_button) > 0.0, 1 );
	cortana_inserted = TRUE;
	sleep_forever(f_dialog_m40_battery_console);
	
	
end



script dormant m40_cortana_powercave_plinth_dialogue()
			
			
			
      wake(f_dialog_m40_cortana_powercave_plinth_dialogue);


end

script dormant m40_cortana_powercave_plinth_trouble()

			//thread (story_blurb_add("other", "CORTANA IS SUCKED INTO THE SYSTEM, VANISHING."));
			wake(m40_sentinel_carrot);

 end
      
      
 script dormant m40_sentinel_carrot()  
    sleep_until( volume_test_players(tv_powercave_center), 1);
		//	thread (story_blurb_add("other", "A SENTINEL TRIGGERS A LIGHT BRIDGE AND THEN FLIES THROUGH A NEARBY DOOR."));
       b_start_white_rabbit = TRUE;
       	ai_erase (sg_citadel_int_sentinels);
       	sleep_until( current_zone_set_fully_active() == DEF_S_ZONESET_BATTERY_CAVERN(), 1 );
        ai_place (cavern_sentinels);
        sleep(15);
        ai_place (cavern_sentinels_2);		
        ai_place (monitor_kip);
       
end


script dormant m40_cortana_grotto_door()
     	sleep_until( volume_test_players(tv_grotto_open_door), 1);
		//	thread (story_blurb_add("other", "NUMEROUS SENTINELS FLY IN AND OUT THROUGH THE MASSIVE DOOR."));

end



script static void m40_leave_without_cortana()
		     sleep_until( volume_test_players(leave_without_cortana), 1);
		     
		      if (b_leave_without_cortana_1 == TRUE) and (b_leave_without_cortana_2 ==TRUE) and (b_cortana_retrieved == FALSE) then
			    	wake(f_dialog_m40_leave_without_cortana_3);
			    	b_leave_without_cortana_1 = FALSE;		
						b_leave_without_cortana_2 = FALSE;		 
		     elseif (b_leave_without_cortana_1 == TRUE) and (b_leave_without_cortana_2 == FALSE) and (b_cortana_retrieved == FALSE) then
		    		wake(f_dialog_m40_leave_without_cortana_2);
		    		b_leave_without_cortana_2 = TRUE;		     
			  elseif (b_leave_without_cortana_1 == FALSE) and (b_leave_without_cortana_2 == FALSE) and (b_cortana_retrieved == FALSE) then
		    		wake(f_dialog_m40_leave_without_cortana_1);
		    		b_leave_without_cortana_1 = TRUE;
				end
			sleep_s(10);
			thread(m40_leave_without_cortana());
end


script static void m40_cortana_in_librarian()
	sleep_until (volume_test_players (m40_cortana_in_librarian), 1);	
    wake(f_dialog_m40_cortana_to_chief);
   	//	wake(f_dialog_m40_librarian_to_chief);

end




script dormant m40_cortana_shield_ahead()
	sleep_until (volume_test_players (cortana_shield_ahead), 1);	
    
   		wake(f_dialog_m40_cortana_shield_ahead);

end



script dormant m40_collect_cortana_resistance()
	sleep_until (device_get_position(bt_cortana_librarian) > 0.0, 1);
	wake(f_dialog_m40_retrieved_cortana);
	b_cortana_retrieved = TRUE;
	kill_script(m40_leave_without_cortana);
	
end



script dormant m40_elevator_to_ord_talk()
	
			
      wake(f_dialog_elevator_delrio);
      
      

end

script static void m40_landing_in_battle()
     	sleep_until( volume_test_players(m40_landing_in_battle), 1);
      dprint("m40_landing_in_battle");
			
			wake(f_dialog_m40_landing_in_battle);
end

/*
script static void m40_convoy_dialogue()

     sleep_until( volume_test_players(tv_epic_01), 1);
     	wake(f_dialog_m40_clear_out_the_bowl);
			
      
      sleep_s (18);
  
end*/

script dormant m40_second_target_locator_dialogue()

		//	thread (story_blurb_add("vo", "LASKY: Whoops, hey Chief, don't switch weapons, just call in the air strike. Sending in another laser designator."));
      
      sleep_s (10);
      
end

script dormant m40_third_target_locator_dialogue()

	//		thread (story_blurb_add("vo", "LASKY: You switched weapons again? The ordnance launching tube is jammed, you'll need to just move forward for now."));
      
      sleep_s (10);
      
end


script dormant m40_target_gravity_well()

     
				wake(f_dialog_m40_target_gravity_well);


      
end

script dormant m40_cortana_clearing_ravine()

     	sleep_until( volume_test_players(m40_cortana_clearing_ravine), 1);
				wake(f_dialog_m40_cortana_clearing_ravine);
				

      
end

script dormant m40_epic_end_missile_dialogue()

     	sleep_until( volume_test_players(tv_epic_05), 1);
				
				
			
      sleep_s (8);

           
end

script dormant m40_epic_palmer_order()

     	sleep_until( volume_test_players( m40_epic_palmer_order), 1);

				
				wake(f_dialog_m40_epic_end);
      sleep_s (8);
        
end


script dormant m40_epic_end()
sleep_until( volume_test_players(tv_tractor_01), 1);

			 // wake(f_dialog_m40_epic_end);
      sleep_s (8);

           
end

script static void m40_marine_backup_dialogue()
     
		//	thread (story_blurb_add("vo", "LASKY: We're sending in some reinforcements, Chief. We'll mark them on your HUD when they arrive."));
      
      sleep_s (5);
      
end


// =================================================================================================
// =================================================================================================
// NUDGES
// =================================================================================================
// =================================================================================================


script static void m40_objective_1_nudge()
			dprint("Nudge fired");
			sleep_s(900);
			if b_objective_1_complete == FALSE then
						thread(f_dialog_m40_nudge_1());
			end
				if b_objective_1_complete == FALSE then
					thread( m40_objective_1_nudge());
			end
end

script static void m40_objective_2_nudge()
			dprint("Nudge fired");
			sleep_s(900);
			if b_objective_1_complete == FALSE then
						thread(f_dialog_m40_nudge_2());
			end
				if b_objective_1_complete == FALSE then
					thread( m40_objective_2_nudge());
			end
end


script static void m40_objective_3_nudge()
			dprint("Nudge fired");
			sleep_s(900);
			if b_objective_1_complete == FALSE then
						thread(f_dialog_m40_nudge_3());
			end
				if b_objective_1_complete == FALSE then
					thread( m40_objective_3_nudge());
			end
end


script static void m40_objective_4_nudge()
			dprint("Nudge fired");
			sleep_s(900);
			if b_objective_1_complete == FALSE then
						thread(f_dialog_m40_nudge_4());
			end
				if b_objective_1_complete == FALSE then
					thread( m40_objective_4_nudge());
			end
end



script static void m40_objective_5_nudge()
			dprint("Nudge fired");
			sleep_s(900);
			if b_objective_1_complete == FALSE then
						thread(f_dialog_m40_nudge_5());
			end
				if b_objective_1_complete == FALSE then
					thread( m40_objective_5_nudge());
			end
end


script static void m40_objective_6_nudge()
			dprint("Nudge fired");
			sleep_s(900);
			if b_objective_1_complete == FALSE then
						thread(f_dialog_m40_nudge_6());
			end
				if b_objective_1_complete == FALSE then
					thread( m40_objective_6_nudge());
			end
end


script static void m40_objective_7_nudge()
			dprint("Nudge fired");
			sleep_s(900);
			if b_objective_1_complete == FALSE then
						thread(f_dialog_m40_nudge_7());
			end
				if b_objective_1_complete == FALSE then
					thread( m40_objective_7_nudge());
			end
end



script static void m40_objective_8_nudge()
			dprint("Nudge fired");
			sleep_s(900);
			if b_objective_1_complete == FALSE then
						thread(f_dialog_m40_nudge_8());
			end
				if b_objective_1_complete == FALSE then
					thread( m40_objective_8_nudge());
			end
end



script static void m40_objective_9_nudge()
			dprint("Nudge fired");
			sleep_s(900);
			if b_objective_1_complete == FALSE then
						thread(f_dialog_m40_nudge_9());
			end
				if b_objective_1_complete == FALSE then
					thread( m40_objective_9_nudge());
			end
end


script static void m40_objective_10_nudge()
			dprint("Nudge fired");
			sleep_s(900);
			if b_objective_1_complete == FALSE then
						thread(f_dialog_m40_nudge_10());
			end
				if b_objective_1_complete == FALSE then
					thread( m40_objective_10_nudge());
			end
end


script static void m40_objective_11_nudge()
			dprint("Nudge fired");
			sleep_s(900);
			if b_objective_1_complete == FALSE then
						thread(f_dialog_m40_nudge_11());
			end
				if b_objective_1_complete == FALSE then
					thread( m40_objective_11_nudge());
			end
end




script static void m40_objective_12_nudge()
			dprint("Nudge fired");
			sleep_s(900);
			if b_objective_1_complete == FALSE then
						thread(f_dialog_m40_nudge_12());
			end
				if b_objective_1_complete == FALSE then
					thread( m40_objective_12_nudge());
			end
end



script static void m40_objective_13_nudge()
			dprint("Nudge fired");
			sleep_s(900);
			if b_objective_1_complete == FALSE then
						thread(f_dialog_m40_nudge_13());
			end
				if b_objective_1_complete == FALSE then
					thread( m40_objective_13_nudge());
			end
end



script static void m40_objective_14_nudge()
			dprint("Nudge fired");
			sleep_s(900);
			if b_objective_1_complete == FALSE then
						thread(f_dialog_m40_nudge_14());
			end
				if b_objective_1_complete == FALSE then
					thread( m40_objective_14_nudge());
			end
end



script static void m40_objective_15_nudge()
			dprint("Nudge fired");
			sleep_s(900);
			if b_objective_1_complete == FALSE then
						thread(f_dialog_m40_nudge_15());
			end
				if b_objective_1_complete == FALSE then
					thread( m40_objective_15_nudge());
			end
end



script static void m40_palmer_off_map_nudge()
dprint( "m40_palmer_off_map_nudge" );
	local short s_random = 0;

	s_random = random_range(1, 8);

	if s_random == 1 then
		
		thread(f_dialog_m40_palmer_off_map_01());
		
	elseif s_random == 2 then
		
		thread(f_dialog_m40_palmer_off_map_02());
		
	elseif s_random == 3 then
	
		thread(f_dialog_m40_palmer_off_map_03());
	
	elseif s_random == 4 then

		thread(f_dialog_m40_palmer_off_map_04());
	

	elseif s_random == 5 then

		thread(f_dialog_m40_palmer_off_map_05());

	elseif s_random == 6 then

		thread(f_dialog_m40_palmer_off_map_06());
		
	elseif s_random == 7 then

		thread(f_dialog_m40_palmer_off_map_07());
		
	elseif s_random == 8 then

		thread(f_dialog_m40_palmer_off_map_08());	
		
	end
		
end



// =================================================================================================
// =================================================================================================
// SECONDARY STORY ELEMENTS
// =================================================================================================
// ======================================



// =================================================================================================
// =================================================================================================
// Armor Abilities
// =================================================================================================
// =================================================================================================


script static void f_waypoint_equipment_unlock()

		wake(f_waypoint_global_equipment_unlock);
end
// --- End m40_narrative.hsc ---

