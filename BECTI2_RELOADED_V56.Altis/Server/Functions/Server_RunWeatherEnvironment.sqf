private ["_fog_forecast","_overcast_forecast","_nexttime","_nextfog","_nextover","_rain_setting","_overcast_setting","_fog_setting","_wind_setting","_waves_setting"];

_fog_forecast=-10000;
_overcast_forecast=-10000;

if (cti_C_ENVIRONMENT_WEATHER_OVERCAST ==-1) then { 
	_overcast_setting = random 1 
} else { 
	_overcast_setting = cti_C_ENVIRONMENT_WEATHER_OVERCAST / 100
};

if (cti_C_ENVIRONMENT_WEATHER_FOG ==-1) then { 
	_fog_setting = random 1 
} else { 
	_fog_setting = cti_C_ENVIRONMENT_WEATHER_FOG / 100 
};

if (cti_C_ENVIRONMENT_WEATHER_WIND ==-1) then { 
	_wind_setting = random 10 
} else { 
	_wind_setting = cti_C_ENVIRONMENT_WEATHER_WIND / 10 
};

if (cti_C_ENVIRONMENT_WEATHER_WAVES ==-1) then { 
	_waves_setting = random 1 
} else { 
	_waves_setting = cti_C_ENVIRONMENT_WEATHER_WAVES / 100 
};

if (cti_C_ENVIRONMENT_WEATHER_SAND > 1) then { 
	_overcast_setting = 0;
	_fog_setting = 0;
	_wind_setting = 0.8;
	_waves_setting = 90;
};

//Initial Weather Settings
_nexttime = 0;
_nexttime setOvercast _overcast_setting;
_nexttime setFog [_fog_setting, 0.01 + random (0.04), random(10)];

_nexttime setWindStr _wind_setting;
_nexttime setWaves _waves_setting;
_fog_forecast = fogForecast;
_overcast_forecast = overcastForecast;

setWind [random [-10,0,10], random [-10,0,10], true];
forceWeatherChange;

while {!cti_GameOver} do {
	waitUntil {_overcast_forecast != overcastForecast || _fog_forecast != fogForecast};
	_nexttime=random(nextWeatherChange-100);
	_nexttime setOvercast _overcast_setting;
	_nexttime setFog [_fog_setting, 0.01 + random (0.04), random(10)];
	_nexttime setWaves _waves_setting;
	_fog_forecast = fogForecast;
	_overcast_forecast = overcastForecast;
	while {true} do {
		//update wind every 30min
		sleep cti_C_ENVIRONMENT_WEATHER_TRANSITION;
		setWind [random [-10,0,10], random [-10,0,10], true];
		_nexttime setWindStr _wind_setting;
	}
}