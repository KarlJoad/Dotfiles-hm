{config, lib, pkgs, ...}:

{
    home-manager.enable = true;
  imports =
    [ ./programs/zsh.nix
      ./programs/git.nix
      ./programs/email.nix
    ];

  home.sessionVariables = {
    EDITOR = "${pkgs.emacs}/bin/emacsclient -t -a \"\"";
    VISUAL = "${pkgs.emacs}/bin/emacsclient -c -a \"${pkgs.emacs}/bin/emacs\"";
  };

}
