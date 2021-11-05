private ["_fog_forecast","_overcast_forecast","_nexttime","_nextfog","_nextover","_rain_setting","_overcast_setting","_fog_setting","_wind_setting","_waves_setting"];

_weather_settings = missionNamespace getVariable "CTI_Weather_Settings";
_variance_time_setting = _weather_settings select 0;
_rain_setting = _weather_settings select 1;
_overcast_setting = _weather_settings select 2;
_fog_setting_array = _weather_settings select 3;  //[_fog_setting, _fog_decay_setting, _fog_alt_setting]
_fog_setting = _fog_setting_array select 0;
_fog_decay_setting = _fog_setting_array select 1;
_fog_alt_setting = _fog_setting_array select 2;
_waves_setting = _weather_settings select 4;
_wind_setting = _weather_settings select 5;

//Initial Weather Settings
_nexttime = 0;
_nexttime setRain _rain_setting; //global - server only needed
_nexttime setOvercast _overcast_setting; //local - needs both client/server exec
_nexttime setFog [_fog_setting, _fog_decay_setting, _fog_alt_setting]; //global - server only needed
_nexttime setWindStr _wind_setting;
_nexttime setWaves _waves_setting;
_fog_forecast = fogForecast;
_overcast_forecast = overcastForecast;
forceWeatherChange;

//Persistent Weather Loop
while {!CTI_GameOver} do {

	//set new weather
	_nexttime = _variance_time_setting;
	//_nexttime setRain _rain_setting; //global - server only needed
	_nexttime setOvercast _overcast_setting; //local - needs both client/server exec
	//_nexttime setFog [_fog_setting, _fog_decay_setting, _fog_alt_setting]; //global - server only needed
	//_nexttime setWaves _waves_setting;
	//setWind [random [-10,0,10], random [-10,0,10], true]; //global - server only needed
	//_nexttime setWindStr _wind_setting;

	sleep _variance_time_setting;
};