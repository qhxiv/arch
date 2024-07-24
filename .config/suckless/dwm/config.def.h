/* See LICENSE file for copyright and license details. */

/* constants */
#define TERMINAL "alacritty"
#define TERMCLASS "Alacritty"

/* appearance */
static const unsigned int borderpx  = 1;        /* border pixel of windows */
static const unsigned int snap      = 32;       /* snap pixel */
static const int swallowfloating    = 0;        /* 1 means swallow floating windows by default */
static const int showbar            = 1;        /* 0 means no bar */
static const int topbar             = 1;        /* 0 means bottom bar */
static const char *fonts[]          = { "sans-serif:pixelsize=13" };

static char normfgcolor[]           = "#e3e3e3";
static char normbgcolor[]           = "#1f1f1f";
static char normbordercolor[]       = "#686868";
static char selfgcolor[]            = "#1f1f1f";
static char selbgcolor[]            = "#e3e3e3";
static char selbordercolor[]        = "#e3e3e3";

static const char *colors[][3]      = {
  /*               fg         bg         border   */
  [SchemeNorm] = { normfgcolor, normbgcolor, normbordercolor },
  [SchemeSel]  = { selfgcolor,  selbgcolor,  selbordercolor },
};

/* tagging */
static const char *tags[] = { "1", "2", "3", "4", "5", "6", "7", "8", "9" };

static const Rule rules[] = {
	/* xprop(1):
	 *	WM_CLASS(STRING) = instance, class
	 *	WM_NAME(STRING) = title
	 */
	/* class     instance title           tags mask  isfloating  isterminal  noswallow  monitor */
	{ "cmus",    NULL,    NULL,           1 << 7,    0,          0,           0,        -1 },
	{ TERMCLASS, NULL,    NULL,           0,         0,          1,           0,        -1 },
	{ NULL,      NULL,    "Event Tester", 0,         0,          0,           1,        -1 }, /* xev */
};

/* layout(s) */
static const float mfact     = 0.55; /* factor of master area size [0.05..0.95] */
static const int nmaster     = 1;    /* number of clients in master area */
static const int resizehints = 0;    /* 1 means respect size hints in tiled resizals */
static const int attachbelow = 1;    /* 1 means attach after the currently active window */
static const int lockfullscreen = 1; /* 1 will force focus on the fullscreen window */

static const Layout layouts[] = {
	/* symbol     arrange function */
	{ "[]=",      tile },    /* first entry is default */
	{ "><>",      NULL },    /* no layout function means floating behavior */
	{ "[M]",      monocle },
};

/* key definitions */
#define MODKEY Mod4Mask
#define TAGKEYS(KEY,TAG) \
	{ MODKEY,                       KEY,      view,           {.ui = 1 << TAG} }, \
	{ MODKEY|ControlMask,           KEY,      toggleview,     {.ui = 1 << TAG} }, \
	{ MODKEY|ShiftMask,             KEY,      tag,            {.ui = 1 << TAG} }, \
	{ MODKEY|ControlMask|ShiftMask, KEY,      toggletag,      {.ui = 1 << TAG} },

/* helper for spawning shell commands in the pre dwm-5.0 fashion */
#define SHCMD(cmd) { .v = (const char*[]){ "/bin/sh", "-c", cmd, NULL } }

#include "movestack.c"
static const Key keys[] = {
	/* modifier                     key              function        argument */
	{ MODKEY,                       XK_c,            spawn,          {.v = (const char*[]){ "code", NULL } } },
	{ MODKEY,                       XK_d,            spawn,          {.v = (const char*[]){ "dmenu_run", NULL } } },
	{ MODKEY,                       XK_f,            spawn,          {.v = (const char*[]){ "thunar", NULL } } },
	{ MODKEY,                       XK_s,            spawn,          {.v = (const char*[]){ "slock", NULL } } },
	{ MODKEY,                       XK_w,            spawn,          {.v = (const char*[]){ "brave", NULL } } },
	{ MODKEY|ShiftMask,             XK_w,            spawn,          {.v = (const char*[]){ TERMINAL, "-e", "nmtui", NULL } } },
	{ MODKEY|ShiftMask,             XK_b,            spawn,          {.v = (const char*[]){ TERMINAL, "-e", "bluetui", NULL } } },
	{ MODKEY,                       XK_a,            spawn,          {.v = (const char*[]){ TERMINAL, "-e", "ani-cli", NULL } } },
	{ MODKEY,                       XK_Return,       spawn,          {.v = (const char*[]){ TERMINAL, NULL } } },

	{ MODKEY,                       XK_m,            spawn,          SHCMD(TERMINAL " --class cmus -e cmus; kill -37 $(pidof dwmblocks)") },
	{ MODKEY,                       XK_bracketright, spawn,          SHCMD("cmus-remote --next; kill -37 $(pidof dwmblocks)") },
	{ MODKEY,                       XK_bracketleft,  spawn,          SHCMD("cmus-remote --prev; kill -37 $(pidof dwmblocks)") },
	{ MODKEY,                       XK_Left,         spawn,          {.v = (const char*[]){ "cmus-remote", "--seek", "-5", NULL } } },
	{ MODKEY|ShiftMask,             XK_Left,         spawn,          {.v = (const char*[]){ "cmus-remote", "--seek", "-30", NULL } } },
	{ MODKEY,                       XK_Right,        spawn,          {.v = (const char*[]){ "cmus-remote", "--seek", "+5", NULL } } },
	{ MODKEY|ShiftMask,             XK_Right,        spawn,          {.v = (const char*[]){ "cmus-remote", "--seek", "+30", NULL } } },
	{ MODKEY,                       XK_p,            spawn,          {.v = (const char*[]){ "cmus-remote", "--pause", NULL } } },
	{ MODKEY,                       XK_minus,        spawn,          {.v = (const char*[]){ "cmus-remote", "--volume", "-10%", NULL } } },
	{ MODKEY,                       XK_equal,        spawn,          {.v = (const char*[]){ "cmus-remote", "--volume", "+10%", NULL } } },

	{ MODKEY,                       XK_b,            togglebar,      {0} },
	{ MODKEY,                       XK_j,            focusstack,     {.i = +1 } },
	{ MODKEY,                       XK_k,            focusstack,     {.i = -1 } },
	{ MODKEY,                       XK_h,            setmfact,       {.f = -0.05} },
	{ MODKEY,                       XK_l,            setmfact,       {.f = +0.05} },
	{ MODKEY|ShiftMask,             XK_h,            incnmaster,     {.i = +1 } },
	{ MODKEY|ShiftMask,             XK_l,            incnmaster,     {.i = -1 } },
	{ MODKEY|ShiftMask,             XK_j,            movestack,      {.i = +1 } },
	{ MODKEY|ShiftMask,             XK_k,            movestack,      {.i = -1 } },
	{ MODKEY,                       XK_Tab,          view,           {0} },
	{ MODKEY|ShiftMask,             XK_Return,       zoom,           {0} },
	{ MODKEY,                       XK_t,            setlayout,      {.v = &layouts[0]} },
	{ MODKEY,                       XK_y,            setlayout,      {.v = &layouts[1]} },
	{ MODKEY,                       XK_u,            setlayout,      {.v = &layouts[2]} },
	{ MODKEY,                       XK_space,        setlayout,      {0} },
	{ MODKEY|ShiftMask,             XK_space,        togglefloating, {0} },
	{ MODKEY,                       XK_0,            view,           {.ui = ~0 } },
	{ MODKEY|ShiftMask,             XK_0,            tag,            {.ui = ~0 } },
	{ MODKEY,                       XK_comma,        focusmon,       {.i = -1 } },
	{ MODKEY,                       XK_period,       focusmon,       {.i = +1 } },
	{ MODKEY|ShiftMask,             XK_comma,        tagmon,         {.i = -1 } },
	{ MODKEY|ShiftMask,             XK_period,       tagmon,         {.i = +1 } },
	TAGKEYS(                        XK_1,                            0)
	TAGKEYS(                        XK_2,                            1)
	TAGKEYS(                        XK_3,                            2)
	TAGKEYS(                        XK_4,                            3)
	TAGKEYS(                        XK_5,                            4)
	TAGKEYS(                        XK_6,                            5)
	TAGKEYS(                        XK_7,                            6)
	TAGKEYS(                        XK_8,                            7)
	TAGKEYS(                        XK_9,                            8)
	{ MODKEY,                       XK_q,            killclient,     {0} },
	{ MODKEY|ShiftMask,             XK_q,            quit,           {0} },
};

/* button definitions */
/* click can be ClkTagBar, ClkLtSymbol, ClkStatusText, ClkWinTitle, ClkClientWin, or ClkRootWin */
static const Button buttons[] = {
	/* click                event mask      button          function        argument */
	{ ClkLtSymbol,          0,              Button1,        setlayout,      {0} },
	{ ClkLtSymbol,          0,              Button3,        setlayout,      {.v = &layouts[2]} },
	{ ClkWinTitle,          0,              Button2,        zoom,           {0} },
	{ ClkStatusText,        0,              Button2,        spawn,          { .v = (const char*[]){ TERMINAL, NULL } } },
	{ ClkClientWin,         MODKEY,         Button1,        movemouse,      {0} },
	{ ClkClientWin,         MODKEY,         Button2,        togglefloating, {0} },
	{ ClkClientWin,         MODKEY,         Button3,        resizemouse,    {0} },
	{ ClkTagBar,            0,              Button1,        view,           {0} },
	{ ClkTagBar,            0,              Button3,        toggleview,     {0} },
	{ ClkTagBar,            MODKEY,         Button1,        tag,            {0} },
	{ ClkTagBar,            MODKEY,         Button3,        toggletag,      {0} },
};

