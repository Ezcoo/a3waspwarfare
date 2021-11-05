//////////////////////////////////////////////////////////
///   NUKE SCRIPT SETTINGS        ////////////////////////
//////////////////////////////////////////////////////////
/*
NO LONGER IN USE -- MOVED TO COMMONCONSTANTS
*/
exposure_time = 360; //exposure length
damage_on = true; //enables damage
blast_wave_radius = 1000; //sets main nuke effect range, mainly effects
blast_damage_radius = 2000; //sets main nuke damage range and max scan range - use below values to adjust object specific, nothing outside this range will be harmed
blast_damage_radius_slope = 4000; //sets damage range slope, used for adjusting damage based on distance | damage = 1 - (range / blast_damage_radius)s
blast_core_radius =  500; //sets range for core nuke area - this area kills all 
blast_base_radius =  1000; //sets range for base objects and factories
blast_infantry_radius =  1500; //sets range for all objects
blast_vehicle_radius =  2000; //sets range for emp range for ground units
blast_air_radius =  2000; //sets range for just air vehicles and emp effect
blast_speed = 150;

main_nuclear_blow_speed = 200;
main_nuclear_half_life = 10 * 30;
main_nuclear_radiation_damage = 0.02;
main_nuclear_car_armour = 2 / 4;
radiation_on = false; //enable radiation
radiation_radius = 2000;  //sets radiation effect range