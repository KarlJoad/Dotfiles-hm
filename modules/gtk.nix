{ config, lib, pkgs, ... }:

{
  gtk = {
    enable = true;
    theme = {
      package = pkgs.libsForQt5.breeze-gtk;
      name = "Breeze-Dark";
    };

    iconTheme = {
      package = pkgs.breeze-icons;
      name = "breeze-dark";
    };

    font = {
      package = null;
      name = "Noto Sans, 10";
    };

    gtk2.extraConfig = ''
      gtk-fallback-icon-theme="hicolor"
      gtk-cursor-theme-name="breeze_cursors"
      gtk-toolbar-style=GTK_TOOLBAR_ICONS
      gtk-menu-images=1
      gtk-button-images=1
    '';

    gtk3 = {
      extraConfig = {
        gtk-application-prefer-dark-theme = true;
        gtk-button-images = 1;
        gtk-cursor-theme-name = "breeze_cursors";
        gtk-fallback-icon-theme = "hicolor";
        gtk-menu-images = 1;
        gtk-primary-button-warps-slider = 0;
        gtk-toolbar-style= "GTK_TOOLBAR_ICONS";
      };

      extraCss = ''
        @define-color theme_fg_color #eff0f1;
        @define-color theme_bg_color #31363b;
        @define-color theme_text_color #eff0f1;
        @define-color theme_base_color #232629;
        @define-color theme_view_hover_decoration_color #3daee9;
        @define-color theme_hovering_selected_bg_color #3daee9;
        @define-color theme_selected_bg_color #3daee9;
        @define-color theme_selected_fg_color #eff0f1;
        @define-color theme_view_active_decoration_color #3daee9;
        @define-color theme_button_background_normal #31363b;
        @define-color theme_button_decoration_hover #3daee9;
        @define-color theme_button_decoration_focus #3daee9;
        @define-color theme_button_foreground_normal #eff0f1;
        @define-color theme_button_foreground_active #eff0f1;
        @define-color borders #606468;
        @define-color warning_color #f67400;
        @define-color success_color #27ae60;
        @define-color error_color #da4453;
        @define-color theme_unfocused_fg_color #eff0f1;
        @define-color theme_unfocused_text_color #eff0f1;
        @define-color theme_unfocused_bg_color #31363b;
        @define-color theme_unfocused_base_color #232629;
        @define-color theme_unfocused_selected_bg_color_alt #224e65;
        @define-color theme_unfocused_selected_bg_color #224e65;
        @define-color theme_unfocused_selected_fg_color #eff0f1;
        @define-color theme_button_background_backdrop #31363b;
        @define-color theme_button_decoration_hover_backdrop #3daee9;
        @define-color theme_button_decoration_focus_backdrop #3daee9;
        @define-color theme_button_foreground_backdrop #eff0f1;
        @define-color theme_button_foreground_active_backdrop #eff0f1;
        @define-color unfocused_borders #606468;
        @define-color warning_color_backdrop #f67400;
        @define-color success_color_backdrop #27ae60;
        @define-color error_color_backdrop #da4453;
        @define-color insensitive_fg_color #6e7175;
        @define-color insensitive_base_fg_color #65686a;
        @define-color insensitive_bg_color #2e3338;
        @define-color insensitive_base_color #212427;
        @define-color insensitive_selected_bg_color #2e3338;
        @define-color insensitive_selected_fg_color #6e7175;
        @define-color theme_button_background_insensitive #2e3338;
        @define-color theme_button_decoration_hover_insensitive #325b72;
        @define-color theme_button_decoration_focus_insensitive #325b72;
        @define-color theme_button_foreground_insensitive #6e7175;
        @define-color theme_button_foreground_active_insensitive #6e7175;
        @define-color insensitive_borders #3e4347;
        @define-color warning_color_insensitive #683e19;
        @define-color success_color_insensitive #225139;
        @define-color error_color_insensitive #5e2e35;
        @define-color insensitive_unfocused_fg_color #6e7175;
        @define-color theme_unfocused_view_text_color #65686a;
        @define-color insensitive_unfocused_bg_color #2e3338;
        @define-color theme_unfocused_view_bg_color #212427;
        @define-color insensitive_unfocused_selected_bg_color #2e3338;
        @define-color insensitive_unfocused_selected_fg_color #6e7175;
        @define-color theme_button_background_backdrop_insensitive #2e3338;
        @define-color theme_button_decoration_hover_backdrop_insensitive #325b72;
        @define-color theme_button_decoration_focus_backdrop_insensitive #325b72;
        @define-color theme_button_foreground_backdrop_insensitive #6e7175;
        @define-color theme_button_foreground_active_backdrop_insensitive #6e7175;
        @define-color unfocused_insensitive_borders #3e4347;
        @define-color warning_color_insensitive_backdrop #683e19;
        @define-color success_color_insensitive_backdrop #225139;
        @define-color error_color_insensitive_backdrop #5e2e35;
        @define-color link_color #2980b9;
        @define-color link_visited_color #7f8c8d;
        @define-color tooltip_text #eff0f1;
        @define-color tooltip_background #31363b;
        @define-color tooltip_border #606468;
        @define-color content_view_bg #232629;
        @define-color theme_titlebar_background rgb(49,54,59);
        @define-color theme_titlebar_foreground rgb(239,240,241);
        @define-color theme_titlebar_background_light #31363b;
        @define-color theme_titlebar_foreground_backdrop rgb(127,140,141);
        @define-color theme_titlebar_background_backdrop rgb(49,54,59);
        @define-color theme_titlebar_foreground_insensitive rgb(127,140,141);
        @define-color theme_titlebar_foreground_insensitive_backdrop rgb(127,140,141);
      '';
    };
  };
}
