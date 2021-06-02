{ config, lib, pkgs, ...}:

{
  programs.emacs.enable = true;

  services.emacs = {
    enable = false; # Whether to enable the emacs daemon
    client.arguments = [ "-c" "-a \"\"" ];
    # socketActivation.enable = true;
  };
}
