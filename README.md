## Usage example:
![img](https://github.com/shgpavel/weather_micro/blob/09a36a87c9940647919577a34a051cc8c7c13a2c/Thu%20Jul%2011%2015%3A29%3A43%20MSK%202024.png)

## Overview:
	Simple app that creates /opt/weather_app/weather file
	with current geolocation weather data
	I'm using this in i3status, but ofc it can fit more usecases

	By default:
		Geolocation updates every service restart
		Weather updates every 10 sec
	Also note that location is not very precise (by city)

## Important:
	You need to create a /opt/weather_app/api_key file
	that contains api key from openweathermap

## Status:
    Released

## Dependencies:
    clang    >= 17
	libcurl  >= 8.7.1
	cJSON    >= 1.7.18

## Install:
	sudo make install
## Uninstall:
	sudo make uninstall

## Use:
	sudo systemctl daemon-reload
	sudo systemctl enable --now weather.service
