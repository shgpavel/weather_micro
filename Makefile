CFLAGS := -Wall -Wextra -O3 -std=c2x ${CFLAGS}

CC = clang
LD = clang

SRC = main.c get_weather.c get_location.c write_callback.c
LIBS = -lcurl -lcjson

INSTALL_DIR = /opt/weather_app
SYSTEMD_UNIT_PATH = /usr/lib/systemd/system
BIN_INSTALL_PATH = /usr/bin

all: current_weather

current_weather: $(SRC)
	$(CC) $(CFLAGS) $(LIBS) $(SRC) -o current_weather

install: current_weather
	@mkdir -p $(INSTALL_DIR)
	cp weather.service $(SYSTEMD_UNIT_PATH)
	cp current_weather $(BIN_INSTALL_PATH)

uninstall:
	rm -rf $(INSTALL_DIR)/*
	rm $(SYSTEMD_UNIT_PATH)/weather.service
	rm $(BIN_INSTALL_PATH)/current_weather

clean:
	rm current_weather
