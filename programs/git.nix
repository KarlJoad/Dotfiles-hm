{config, lib, pkgs, ...}:

{
  programs.git = {
    enable = true;
    attributes = [ ];
    # delta.enable = true;
    lfs.enable = true;
    userEmail = "karl@hallsby.com";
    userName = "Karl Hallsby";
  };
}
