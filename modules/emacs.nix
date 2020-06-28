{ config, lib, pkgs, ...}:

{
  programs.emacs.enable = true;

  services.emacs = {
    enable = false;
    client.arguments = [ "-c" "-a \"\"" ];
    # socketActivation.enable = true;
  };
}
