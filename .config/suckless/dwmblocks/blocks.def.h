//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	 /*Icon*/ /*Command*/ /*Update Interval*/ /*Update Signal*/
	{"", "sb-bluetooth", 1 , 0},
	{"", "sb-volume", 1, 2},
	{"", "sb-battery", 1, 0},
	{"", "sb-cpu", 1, 0},
	{"", "sb-memory", 1, 0},
	{"", "sb-wifi", 1, 0},
	{"", "sb-language", 0, 1},
	{"", "sb-date", 86400, 0},
	{"", "date +%R", 60, 0},
};

//sets delimiter between status commands. NULL character ('\0') means no delimiter.
static char delim[] = "  ";
static unsigned int delimLen = 5;
