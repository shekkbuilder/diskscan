SRC="main.c ata_check_power_mode.c sense_dump.c"
OBJ=${SRC/.c/.o}
redo-ifchange $OBJ ../libscsicmd.a
gcc -Wall -Werror -I ../include -o $3 $OBJ ../libscsicmd.a
