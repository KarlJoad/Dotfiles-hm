{config, lib, pkgs, ...}:

{
  nixpkgs.config.allowUnfree = true;
  programs.home-manager.enable = true;
  imports =
    [ ./modules/zsh.nix
      ./modules/emacs.nix
      ./modules/vim.nix
      ./modules/ssh.nix
      ./modules/git.nix
      ./modules/email.nix
      ./modules/xresources.nix
      ./modules/gtk.nix
      ./modules/doc.nix
      ./modules/kdeconnect.nix
      ./modules/obs.nix
    ];

  home.packages = with pkgs; [
    metals
  ];

  home.username = "karl";
  home.homeDirectory = "/home/karl";
  home.sessionVariables = {
    EDITOR = "${pkgs.emacs}/bin/emacsclient -t -a \"\"";
    VISUAL = "${pkgs.emacs}/bin/emacsclient -c -a \"${pkgs.emacs}/bin/emacs\"";
    PATH = "${config.home.homeDirectory}/.cargo/bin\${PATH:+:$PATH}";
    # PATH is set like this because if $PATH is ever unset, the naive implementation
    # would break.
  };
}
