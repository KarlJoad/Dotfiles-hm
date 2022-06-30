{config, lib, pkgs, ...}:

{
  programs.ssh = {
    enable = true;
    compression = true;
    matchBlocks = {
      "ci" = {
        hostname = "192.168.1.6";
        user = "root";
        identityFile = "~/.ssh/ci_rsa";
      };
      fpga-sim = {
        hostname = "54.88.139.91";
        user = "centos";
        identityFile = "~/.ssh/id_rsa";
      };
      fpga-f1 = {
        hostname = "52.207.43.20";
        user = "centos";
        identityFile = "~/.ssh/id_rsa";
      };
      "*.cs.northwestern.edu" = {
        user = "kgh0080";
        identityFile = "~/.ssh/nu";
      };
    };
  };
}
