/*
 **************************************************
  ___    __    ___    __    ___  ___  _   _  ____ 
 / __)  /__\  / __)  /__\  / __)/ __)( )_( )(_  _)
( (_-. /(__)\ \__ \ /(__)\( (__( (__  ) _ (  _)(_ 
 \___/(__)(__)(___/(__)(__)\___)\___)(_) (_)(____)
***************************************************
            (  _ \( \/\/ )(  \/  )                 
             )(_) ))    (  )    (                  
            (____/(__/\__)(_/\/\_)                 
  ___  _____  _  _  ____  ____  ___        _   _  
 / __)(  _  )( \( )( ___)(_  _)/ __)      ( )_( ) 
( (__  )(_)(  )  (  )__)  _)(_( (_-.       ) _ (  
 \___)(_____)(_)\_)(__)  (____)\___/  ()  (_) (_) 
 **************************************************
 Author: Gasacchi
 Website: https://gasacchi.com
 **************************************************
 */

/* appearance */
static const unsigned int borderpx          = 1;        /* border pixel of windows */
static const unsigned int snap              = 32;       /* snap pixel */
static const int showbar                    = 1;        /* 0 means no bar */
static const int topbar                     = 0;        /* 0 means bottom bar */
static const char *fonts[]                  = {
  "Hasklug Nerd Font:size=9",
};
static const char dmenufont[]               = "Hasklug Nerd Font:size=8";
/* background color */
static const char col_bg[]                  = "#0D070D"; 
/* inactive border color */
static const char col_border_inactive[]     = "#0D070D";
/* font color */
static const char col_fg[]                  = "#A253BD"; 

/* top bar second color */
static const char col_bg_second[]           = "#1B0E1B"; 
static const char *colors[][3]              = {
  /*               fg         bg         border   */
  [SchemeNorm] = { col_fg, col_bg, col_border_inactive },
  [SchemeSel]  = { col_fg, col_bg_second,  col_fg  },
};

/* tagging */
static const char *tags[] = { "", "", "", "", "" };

static const Rule rules[] = {
/* xprop(1):
 * WM_CLASS(STRING) = instance, class
 WM_NAME(STRING) = title
*/
  /* class      instance    title       tags mask     isfloating   monitor */
  /* { "Gimp",     NULL,       NULL,       0,            1,           -1 }, */
  { "Chromium",  NULL,       NULL,       1 << 1,       0,           -1 },
  // { "obs",  NULL,       NULL,       1 << 2,       0,           -1 },
  // { "kdenlive",  NULL,       NULL,       1 << 2,       0,           -1 },
  { "vlc",  NULL,       NULL,       1 << 2,       0,           -1 },

  /* if there is no rule for app */
  /* { NULL,       NULL,       NULL,       0,            False,       -1 }, */
};

/* layout(s) */
static const float mfact     = 0.55; /* factor of master area size [0.05..0.95] */
static const int nmaster     = 1;    /* number of clients in master area */
static const int resizehints = 1;    /* 1 means respect size hints in tiled resizals */

static const Layout layouts[] = {
  /* symbol     arrange function */
  { "  ",        tile },    /* first entry is default */
  { "  ",        NULL },    /* no layout function means floating behavior */
  { "[M]  ",      monocle },
};

/* key definitions */
#define MODKEY Mod1Mask
#define TAGKEYS(KEY,TAG) \
  { MODKEY,                       KEY,      view,           {.ui = 1 << TAG} }, \
  { MODKEY|ControlMask,           KEY,      toggleview,     {.ui = 1 << TAG} }, \
  { MODKEY|ShiftMask,             KEY,      tag,            {.ui = 1 << TAG} }, \
  { MODKEY|ControlMask|ShiftMask, KEY,      toggletag,      {.ui = 1 << TAG} },

#include <X11/XF86keysym.h>
/* helper for spawning shell commands in the pre dwm-5.0 fashion */
#define SHCMD(cmd) { .v = (const char*[]){ "/bin/sh", "-c", cmd, NULL } }

/* commands */
static char dmenumon[2] = "0"; /* component of dmenucmd, manipulated in spawn() */
static const char *dmenucmd[] = { "dmenu_run", "-m", dmenumon, "-fn", dmenufont, "-nb", col_bg, "-nf", col_fg, "-sb", col_bg_second, "-sf", col_fg, NULL };
static const char *termcmd[]  = { "kitty", NULL };

static Key keys[] = {
  /* modifier                     key        function        argument */

  /* set mod+d to exec dmenu */
  { MODKEY,                       XK_s,      spawn,          {.v = dmenucmd } },
  /* set mod+return to exec st terminal */
  { MODKEY,                       XK_Return, spawn,          {.v = termcmd } },
  /* set mod+b to toggle bar*/
  { MODKEY,                       XK_b,      togglebar,      {0} },
  /* set mod+j to next focus window*/
  { MODKEY,                       XK_j,      focusstack,     {.i = +1 } },
  /* set mod+k to prev focus window*/
  { MODKEY,                       XK_k,      focusstack,     {.i = -1 } },
  /* set mod+l to inc windows on master*/
  { MODKEY,                       XK_i,      incnmaster,     {.i = +1 } },
  /* set mod+d to dec windows on master*/
  { MODKEY,                       XK_d,      incnmaster,     {.i = -1 } },
  /* set mod+h dec window size*/
  { MODKEY,                       XK_h,      setmfact,       {.f = -0.05} },
  /* set mod+l inc window size*/
  { MODKEY,                       XK_l,      setmfact,       {.f = +0.05} },
  /* set mod+shift+return change active window to master */
  { MODKEY|ShiftMask,             XK_Return, zoom,           {0} },
  /* set mod+tab view other tag */
  { MODKEY,                       XK_Tab,    view,           {0} },
  /* set mod+shift+q to kill program */
  { MODKEY|ShiftMask,             XK_c,      killclient,     {0} },

  /* set mod+t to switch to tiling mode */
  { MODKEY,                       XK_t,      setlayout,      {.v = &layouts[0]} },

  /* set mod+f to switch to float mode */
  { MODKEY,                       XK_f,      setlayout,      {.v = &layouts[1]} },
  /* set mod+m to switch to monocle mode */
  { MODKEY,                       XK_m,      setlayout,      {.v = &layouts[2]} },
  /* set mod+space to toggle float and tiling mode */
  { MODKEY,                       XK_space,  setlayout,      {0} },
  /* set mod+shift+space to toggle float */
  { MODKEY|ShiftMask,             XK_space,  togglefloating, {0} },
  { MODKEY,                       XK_0,      view,           {.ui = ~0 } },
  { MODKEY|ShiftMask,             XK_0,      tag,            {.ui = ~0 } },
  { MODKEY,                       XK_comma,  focusmon,       {.i = -1 } },
  { MODKEY,                       XK_period, focusmon,       {.i = +1 } },
  { MODKEY|ShiftMask,             XK_comma,  tagmon,         {.i = -1 } },
  { MODKEY|ShiftMask,             XK_period, tagmon,         {.i = +1 } },
  TAGKEYS(                        XK_1,                      0)
  TAGKEYS(                        XK_2,                      1)
  TAGKEYS(                        XK_3,                      2)
  TAGKEYS(                        XK_4,                      3)
  TAGKEYS(                        XK_5,                      4)
  { MODKEY|ShiftMask,             XK_q,      quit,           {0} },
  
  /* keyXF86 */
  { 0,                            XF86XK_AudioMute,                    spawn,                     SHCMD("pamixer -t --sink 1; kill -44 $(pidof dwmblocks)") },
  { 0,                            XF86XK_AudioRaiseVolume,             spawn,                     SHCMD("pamixer -i 5 --sink 1; kill -44 $(pidof dwmblocks)") },
  { 0,                            XF86XK_AudioLowerVolume,             spawn,                     SHCMD("pamixer -d 5 --sink 1; kill -44 $(pidof dwmblocks)") },
  { 0,                            XF86XK_MonBrightnessUp,              spawn,                     SHCMD("xbacklight -inc 15; kill -44 $(pidof dwmblocks)") },
  { 0,                            XF86XK_MonBrightnessDown,            spawn,                     SHCMD("xbacklight -dec 15; kill -44 $(pidof dwmblocks)") },

  /* app launch */
  /* { MODKEY,                       XK_s,                                spawn,                     SHCMD("st -e alsamixer") }, */
  { MODKEY,                       XK_w,                                spawn,                     SHCMD("chromium") },


};

/* button definitions */
/* click can be ClkTagBar, ClkLtSymbol, ClkStatusText, ClkWinTitle, ClkClientWin, or ClkRootWin */
static Button buttons[] = {
  /* click                event mask      button          function        argument */
  { ClkLtSymbol,          0,              Button1,        setlayout,      {0} },
  { ClkLtSymbol,          0,              Button3,        setlayout,      {.v = &layouts[2]} },
  { ClkWinTitle,          0,              Button2,        zoom,           {0} },
  { ClkStatusText,        0,              Button2,        spawn,          {.v = termcmd } },
  { ClkClientWin,         MODKEY,         Button1,        movemouse,      {0} },
  { ClkClientWin,         MODKEY,         Button2,        togglefloating, {0} },
  { ClkClientWin,         MODKEY,         Button3,        resizemouse,    {0} },
  { ClkTagBar,            0,              Button1,        view,           {0} },
  { ClkTagBar,            0,              Button3,        toggleview,     {0} },
  { ClkTagBar,            MODKEY,         Button1,        tag,            {0} },
  { ClkTagBar,            MODKEY,         Button3,        toggletag,      {0} },
};

