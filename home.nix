{config, lib, pkgs, ...}:

{
  programs.home-manager.enable = true;
  imports =
    [ ./modules/zsh.nix
      ./modules/git.nix
      ./modules/email.nix
      ./modules/xresources.nix
      ./modules/doc.nix
    ];

  home.sessionVariables = {
    EDITOR = "${pkgs.emacs}/bin/emacsclient -t -a \"\"";
    VISUAL = "${pkgs.emacs}/bin/emacsclient -c -a \"${pkgs.emacs}/bin/emacs\"";
  };

}
