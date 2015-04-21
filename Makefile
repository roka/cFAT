all: fat

fat: fat.fs
	gcc fat.c -o fat

fat.fs: fat12.fs fat16.fs fat32.fs

fat12.fs:
	dd if=/dev/zero of=fat12.fs bs=512 count=100000
	/sbin/mkfs.msdos -F 12 fat12.fs

fat16.fs:
	dd if=/dev/zero of=fat16.fs bs=512 count=100000
	/sbin/mkfs.msdos -F 16 fat16.fs

fat32.fs:
	dd if=/dev/zero of=fat32.fs bs=512 count=100000
	/sbin/mkfs.msdos -F 32 fat32.fs

clean:
	rm fat
