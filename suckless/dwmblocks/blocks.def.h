//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/

  /* cpu load */
  {"   ", "~/xxx/.dev/github/gsclinux/suckless/dwmblocks/scripts/cpu.sh",     1,     0},

  /* watt */
  {"", "~/xxx/.dev/github/gsclinux/suckless/dwmblocks/scripts/watt.sh",     1,     0},

  /* cpu temp */
  {" ", "~/xxx/.dev/github/gsclinux/suckless/dwmblocks/scripts/temp.sh",     1,     0},
  /* fan speed */
  /* {" ", "~/xxx/.dev/github/gsclinux/suckless/dwmblocks/scripts/fan.sh",     1,     0}, */

  /* disk usage */
  {" ", "~/xxx/.dev/github/gsclinux/suckless/dwmblocks/scripts/disk.sh",     60,     0},

  /* memory usage */
  {" ", "~/xxx/.dev/github/gsclinux/suckless/dwmblocks/scripts/memory.sh",     3,     0},

  /* backlight */
  /* {"ﯧ ", "~/xxx/.dev/github/gsclinux/suckless/dwmblocks/scripts/backlight.sh",     0,     12}, */
  
  /* volume level */
  {"", "~/xxx/.dev/github/gsclinux/suckless/dwmblocks/scripts/volume.sh",     0,     10},

  /* battery */
  {"", "~/xxx/.dev/github/gsclinux/suckless/dwmblocks/scripts/battery.sh",     10,     0},

  /* Date is formatted like like this: "[Mon 01-01-00 00:00] */
  {" ", "~/xxx/.dev/github/gsclinux/suckless/dwmblocks/scripts/time.sh",     60,     0},
};

//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim[] = "  ";
static unsigned int delimLen = 5;
