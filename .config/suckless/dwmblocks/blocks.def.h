//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	 /*Icon*/ /*Command*/ /*Update Interval*/ /*Update Signal*/
	{"", "date +%R", 60, 0},
	{", ", "sb-date", 86400, 0},
	//{"", "sb-cmus", 1, 3},
	{";", "sb-bluetooth.min", 1, 0},
	{" ", "sb-wifi", 1, 0},
	//{"", "sb-cpu",          10, 0},
	//{"", "sb-memory",        1, 0},
	{" ", "sb-language", 0, 1},
	{" ", "sb-volume", 1, 2},
	{" ", "sb-battery", 1, 0},
};

//sets delimiter between status commands. NULL character ('\0') means no delimiter.
static char delim[] = "\0";
static unsigned int delimLen = 0;
