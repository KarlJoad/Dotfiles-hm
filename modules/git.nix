{config, lib, pkgs, ...}:

{
  programs.git = {
    enable = true;
    package = pkgs.gitAndTools.gitFull; # Get access to ALL Git tools (send-mail)
    attributes = [ ];
    # delta.enable = true;
    ignores = [ "*~" "*.swp" ];
    lfs.enable = true;
    userEmail = "karl@hallsby.com";
    userName = "Karl Hallsby";
  };
}
