{ config, lib, pkgs, ...}:

{
  programs.emacs.enable = false;

  services.emacs = {
    enable = false; # Whether to enable the emacs daemon
    client.arguments = [ "-c" "-a \"\"" ];
    # socketActivation.enable = true;
  };
}
