{config, lib, pkgs, ...}:

{
  programs.zsh = {
    enable = true;
    enableAutosuggestions = true;
    enableCompletion = true; # Add environment.pathsToLink = [ "/share/zsh" ]; to get system-level completions.
    # enableVteIntegration = true;
    defaultKeymap = "emacs"; # When using the terminal, use Emacs-like movement commands to edit input
    history = {
      extended = true;
      ignoreDups = true;
      ignoreSpace = true;
      path = ".zshhistfile";
      size = 10000;
      save = 10000;
      share = true;
    };
    shellAliases = {
      ll = "la -l";
    };
    oh-my-zsh = {
      enable = true;
      plugins = [ "git" "sudo" "docker" ];
      theme = "agnoster";
    };
  };
}
