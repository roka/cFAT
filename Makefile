all: fat

fat: fat.fs
	gcc fat.c -o fat

fat.fs:
	sh ./createfs.sh

fat12: fat.fs
	/sbin/mkfs.msdos -F 12 fat.fs

fat16: fat.fs
	/sbin/mkfs.msdos -F 16 fat.fs

fat32: fat.fs
	/sbin/mkfs.msdos -F 32 fat.fs

clean:
	rm fat
