{config, lib, pkgs, ...}:

{
  nixpkgs.config.allowUnfree = true;
  programs.home-manager.enable = true;
  imports =
    [ ./modules/zsh.nix
      ./modules/emacs.nix
      ./modules/vim.nix
      ./modules/git.nix
      ./modules/email.nix
      ./modules/xresources.nix
      ./modules/gtk.nix
      ./modules/doc.nix
      ./modules/kdeconnect.nix
      ./modules/obs.nix
    ];

  # # Install packages to /etc/profiles symlink instead. This allows hm
  # # packages to be shared to a VM if nixos-rebuild build-vm is used.
  # useUserPackages = true;
  # # Instead of using a private pkgs instance that is configured via the
  # # home-manager.users.<name>.nixpkgs options, use global pkgs configured via
  # # the system level nixpkgs options.
  # useGlobalPkgs = true;

  home.sessionVariables = {
    EDITOR = "${pkgs.emacs}/bin/emacsclient -t -a \"\"";
    VISUAL = "${pkgs.emacs}/bin/emacsclient -c -a \"${pkgs.emacs}/bin/emacs\"";
    PATH = "${config.home.homeDirectory}/.cargo/bin\${PATH:+:$PATH}";
    # PATH is set like this because if $PATH is ever unset, the naive implementation
    # would break.
  };

}
