SRC="main.c ata_smart_read_data.c sense_dump.c"
OBJ=${SRC/.c/.o}
redo-ifchange $OBJ ../libscsicmd.a
gcc -g -Wall -Werror -I ../include -I ../smartdb -o $3 $OBJ ../libscsicmd.a
