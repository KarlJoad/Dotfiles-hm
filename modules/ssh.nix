{config, lib, pkgs, ...}:

{
  programs.ssh = {
    enable = true;
    compression = true;
    matchBlocks = {
      desktop-iit = {
        hostname = "dhcp68.ssv1.iit.edu";
        user = "karl";
        identityFile = "~/.ssh/id_rsa";
      };
      website = {
        hostname = "karl.hallsby.com";
        user = "root";
        identityFile = "~/.ssh/id_rsa";
      };
      ci = {
        hostname = "192.168.1.6";
        user = "root";
        identityFile = "~/.ssh/ci_rsa";
      };
      fpga-dev = {
        hostname = "ec2-44-201-192-87.compute-1.amazonaws.com";
        user = "centos";
        identityFile = "~/.ssh/constellation-fpga.pem";
      };
      "*.cs.northwestern.edu" = {
        user = "kgh0080";
        identityFile = "~/.ssh/nu";
      };
      leviathan = {
        hostname = "leviathan.cs.northwestern.edu";
        user = "kgh0080";
        identityFile = "~/.ssh/nu";
      };
      "*.eecs.northwestern.edu" = {
        user = "kgh0080";
        identityFile = "~/.ssh/nu";
      };
      moore = {
        hostname = "moore.wot.eecs.northwestern.edu";
        user = "kgh0080";
        identityFile = "~/.ssh/nu";
      };
    };
  };
}
