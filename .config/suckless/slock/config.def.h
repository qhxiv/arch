/* user and group to drop privileges to */
static const char *user  = "nobody";
static const char *group = "nobody";

static const char *colorname[NUMCOLS] = {
	[INIT] =   "#1f1f28",     /* after initialization */
	[INPUT] =  "#dcd7ba",   /* during input */
	[FAILED] = "#c34043",   /* wrong password */
};

/* treat a cleared input like a wrong password (color) */
static const int failonclear = 1;
