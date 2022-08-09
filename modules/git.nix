{config, lib, pkgs, ...}:

{
  programs.git = {
    enable = true;
    package = pkgs.gitAndTools.gitFull; # Get access to ALL Git tools (send-mail)
    attributes = [ ];
    # delta.enable = true;
    ignores = [ "*~"    # Emacs backup files
                ".\#*"  # Emacs autosave files
                "*.swp" # Vim files
                ];
    lfs.enable = true;
    userEmail = "karl@hallsby.com";
    userName = "Karl Hallsby";
  };
}
