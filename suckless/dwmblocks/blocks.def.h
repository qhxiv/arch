//Modify this file to change what commands output to your statusbar, and recompile using the make command.
#define DELIM " "

static const Block blocks[] = {
	 /*Icon*/ /*Command*/ /*Update Interval*/	/*Update Signal*/
	//{"",  "sb-cmus",      1, 3},
	{"",  "sb-time",     60, 0},
	//{"",  "sb-memory",    1, 0},
	{";",  "sb-language",  0, 1},
	{" ",  "sb-bluetooth", 1, 0},
	{" ",  "sb-wifi",      1, 0},
	{" ",  "sb-volume",    1, 2},
	{" ",  "sb-battery",   1, 0},
};

//sets delimiter between status commands. NULL character ('\0') means no delimiter.
static char delim[] = "\0";
static unsigned int delimLen = 5;
