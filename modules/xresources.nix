{config, lib, pkgs, ...}:

{
  xresources.properties = {
    "Xft.dpi" = 96;
    "Xft.antialias" = true;
    "Xft.hinting" = true;
    "Xft.rgba" = "rgb";
    "Xft.autohint" = true;
    "Xft.hintstyle" = "hintfull";
    "Xft.lcdfilter" = "lcdfilter";

    "URxvt*imLocale" = "en_US.UTF-8";
    "URxvt*termName" = "rxvt-unicode-256color";
    "Urxvt*buffered" = false;

    # URxvt Appearance
    "URxvt*foreground" = "#fcfcfc";
    "URxvt*background" = "#232627";
    # black
    "URxvt.color0" = "#232627";
    "URxvt.color8" = "#7f8c8d";
    # red
    "URxvt.color1" = "#ed1515";
    "URxvt.color9" = "#c0392b";
    # green
    "URxvt.color2" = "#11d116";
    "URxvt.color10" = "#1cdc9a";
    # yellow
    "URxvt.color3" = "#f67400"; # Really more of an orange color
    "URxvt.color11" = "#fdbc4b";
    # blue
    "URxvt.color4" = "#1d99f3";
    "URxvt.color12" = "#3daee9";
    # magenta
    "URxvt.color5" = "#9b59b6";
    "URxvt.color13" = "#8e44ad";
    # cyan
    "URxvt.color6" = "#1abc9c";
    "URxvt.color14" = "#16a085";
    # white
    "URxvt.color7" = "#fcfcfc";
    "URxvt.color15" = "#ffffff";

    "URxvt.intensityStyles" = true;

    "URxvt.font" = [ "xft:SourceCodePro-Regular:pixelsize=13:antialias=true"
	                   "xft:UbuntuMono Nerd Font:size=13"
                     "xft:Inconsolata Nerd Font Mono:size=13"
                     "xft:DejaVuSansMono Nerd Font:size=13"
                     "xft:DroidSansMono Nerd Font:size=13"
                     "xft:FuraMono Nerd Font:size=13"
                     "xft:RobotoMono Nerd Font:size=13"
                     "xft:Noto Sans Mono:size=13"
                     "xft:Monospace:style=Medium:size=13" ];

    "URxvt.boldFont" = "xft:SourceCodePro-Bold:pixelsize=13:antialias=true";
    "URxvt.italicFont" = "xft:SourceCodePro-It:pixelsize=11:antialias=true";
    "URxvt.boldItalicfont" = "xft:SourceCodePro-BoldIt:pixelsize=13:antialias=true";

    "URxvt.letterSpace" = -1;
    "URxvt.lineSpace" = 0;
    "URxvt.internalBorder" = 6;

    "URxvt.cursorBlink" = false;
    "URxvt.cursorUnderline" = false;
    "URxvt*cursorColor" = "#ffffff";

    "URxvt.saveline" = 4096;
    "URxvt.scrollBar" = false;
    "URxvt.scrollBar_right" = false;

    "URxvt.urgentOnBell" = false;
    "URxvt.depth" = 24;
    "URxvt.iso14755" = false;
    "URxvt.urlLauncher" = "firefox";
    "URxvt.underlineURLs" = true;

    # Perl extentions for URxvt
    "URxvt.perl-ext-common" = "default,resize-font,clipboard";

    # resize-font
    "URxvt.resize-font.smaller" = "C-j";
    "URxvt.resize-font.bigger" =  "C-k";

    "URxvt.copyCommand" = "xclip -i -selection clipboard";
    "URxvt.pasteCommand" = "xclip -o -selection clipboard";
    "URxvt.keysym.C-S-c" = "perl:clipboard:copy";
    "URxvt.keysym.C-S-v" = "perl:clipboard:paste";
  };
}
