# cirrus-st
My fork of suckless st terminal with patches applied.

 $(PREFIX) is set to ~/.local so as is cirrus-st will install to ~/.local/bin/st
 
 edit PREFIX = path in config.mk if you wish to change it.
 
+ MODKEY|ShiftMask,  XK_N,   will open rofi to show/execute URL'S
+ MODKEY|ShiftMask,  XK_D,   will open dmenu to show/execute URL'S

 By design config.h gets rm so config.def.h is your pal.



# patches :
* st-externalpipe -- use to open shown urls in rofi/dmenu with keybind
+ st-alpha -- adds transparency to the background (must have a compositor for this to work)
+ st-font2 -- adds the option to list multiple fonts; great for having a fallback font
+ st-ligatures -- ligature support; requires harfbuzz
+ st-scrollback -- adds scrollback with SHIFT+PageUp/PageDown
+ st-scrollback-mouse -- adds the ability to scroll with SHIFT+MouseWheel
+ st-scrollback-mouse-altscreen -- now you can scroll with just the MouseWhell (no SHIFT required)
+ st-vertcenter -- better vertical alignment of lines
+ st-workingdir -- adds option to open st at specific directory (ex: st -d /usr/bin)

Screenshot
----------------------------
![Screenshot](/screenshot.png)
