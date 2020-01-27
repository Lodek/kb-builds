TRANSCRIBER_PATH := ~/projects/kb-map-generator/map-generator/transcriber.py
KB_FIRM_PATH := ~/projects/KB_Firm
KB_FIRM_MAKE_TARGET := leonardo-firm.tar
FIRMWARE_DIR := leonardo-firm

all: maps.h defines

defines:
	cp defines.h $(FIRMWARE_DIR)

maps.h: leonardo-firm
	python $(TRANSCRIBER_PATH) -t maps/transpose maps > $(FIRMWARE_DIR)/maps.h

leonardo-firm:
	cd $(KB_FIRM_PATH) && make
	cp $(KB_FIRM_PATH)/leonardo-firm.tar .
	cd $(KB_FIRM_PATH) && make clean
	tar -xf $(FIRMWARE_DIR).tar
	rm $(KB_FIRM_MAKE_TARGET)

clean:
	rm -r $(FIRMWARE_DIR)
