{config, lib, pkgs, ...}:

{
  programs.home-manager.enable = true;
  programs.home-manager.path = "/home/karl/Repos/home-manager";
  imports =
    [ ./modules/zsh.nix
      ./modules/emacs.nix
      ./modules/git.nix
      ./modules/email.nix
      ./modules/xresources.nix
      ./modules/doc.nix
    ];

  home.sessionVariables = {
    EDITOR = "${pkgs.emacs}/bin/emacsclient -t -a \"\"";
    VISUAL = "${pkgs.emacs}/bin/emacsclient -c -a \"${pkgs.emacs}/bin/emacs\"";
    PATH = "${config.home.homeDirectory}/.cargo/bin\${PATH:+:$PATH}";
    # PATH is set like this because if $PATH is ever unset, the naive implementation
    # would break.
  };

  home.enableDebugInfo = true;
}
