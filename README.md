# cirrus-st
My fork of suckless st terminal  with patches applied

#+TITLE: cirrus-st
#+DESCRIPTION: cirrus st build
#+AUTHOR: cirrus

 patches :
+ st-alpha -- adds transparency to the background (must have a compositor for this to work)
+ st-font2 -- adds the option to list multiple fonts; great for having a fallback font
+ st-ligatures -- ligature support; requires harfbuzz
+ st-scrollback -- adds scrollback with SHIFT+PageUp/PageDown
+ st-scrollback-mouse -- adds the ability to scroll with SHIFT+MouseWheel
+ st-scrollback-mouse-altscreen -- now you can scroll with just the MouseWhell (no SHIFT required)
+ st-vertcenter -- better vertical alignment of lineszz
+ st-workingdir -- adds option to open st at specific directory (ex: st -d /usr/bin)
* st-externalpipe -- use to open shown urls in rofi/dmenu with keybind

Screenshot
----------------------------
![Screenshot](/screenshot.png)
