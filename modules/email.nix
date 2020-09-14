{config, lib, pkgs, ...}:

{
  programs.mbsync = {
    enable = true;
    extraConfig = ''
Sync All
Create Both
Remove None
Expunge Both
CopyArrivalDate yes
SyncState *
'';
  };
  programs.msmtp = {
    enable = true;
    extraConfig = ''
# Global Settings
defaults
tls on
tls_starttls on
tls_trust_file /etc/ssl/certs/ca-certificates.crt'';
  };
  # programs.mu.enable = true;

  accounts.email = {
    maildirBasePath = "Mail";
    accounts.Personal = {
      address = "karl@hallsby.com";
      imap = {
        host = "imap.gmail.com";
        port = 993;
      };
      smtp = {
        host = "smtp.gmail.com";
        port = 587;
      };
      maildir.path = "Personal";
      folders.drafts = "[Gmail]/Drafts";
      folders.inbox = "Inbox";
      folders.sent = "[Gmail]/Sent Mail";
      folders.trash = "[Gmail]/Trash";

      mbsync = {
        enable = true;
        create = "both";
        remove = "none";
        expunge = "both";
        groups.personal = {
          channels = {
            inbox = {
              masterPattern = "";
              slavePattern = "";
            };
            sent = {
              masterPattern = config.accounts.email.accounts.Personal.folders.sent;
              slavePattern = "Sent";
            };
            trash = {
              masterPattern = config.accounts.email.accounts.Personal.folders.trash;
              slavePattern = "Trash";
            };
            starred = {
              masterPattern = "[Gmail]/Starred";
              slavePattern = "Starred";
            };
            drafts = {
              masterPattern = config.accounts.email.accounts.Personal.folders.drafts;
              slavePattern = "Drafts";
            };
          };
        };

        extraConfig.account = {
          PipelineDepth = 50;
          AuthMechs = "LOGIN";
          SSLType = "IMAPS";
          SSLVersions = "TLSv1.2";
        };
        extraConfig.remote = {
          Account = "Personal";
        };
        extraConfig.local = {
          SubFolders = "Verbatim";
        };
      };

      msmtp = {
        enable = true;
        extraConfig = {
          host = "smtp.gmail.com";
          port = "587";
          protocol = "smtp";
          auth = "on";
          tls = "on";
          tls_starttls = "on";
          from = config.accounts.email.accounts.Personal.address; # "karl@hallsby.com;"
          user = config.accounts.email.accounts.Personal.address;
        };
      };

      primary = true;
      realName = "Karl Hallsby";
      userName = config.accounts.email.accounts.Personal.address;
      passwordCommand = "${pkgs.coreutils}/bin/cat /home/karl/personal";
    };

    accounts.IIT = {
      address = "khallsby@hawk.iit.edu";
      imap = {
        host = "imap.gmail.com";
        port = 993;
      };
      smtp = {
        host = "smtp.gmail.com";
        port = 587;
      };
      maildir.path = "IIT";
      folders.drafts = "[Gmail]/Drafts";
      folders.inbox = "Inbox";
      folders.sent = "[Gmail]/Sent Mail";
      folders.trash = "[Gmail]/Trash";

      mbsync = {
        enable = true;
        create = "both";
        remove = "none";
        expunge = "both";
        groups.IIT = {
          channels = {
            inbox = {
              masterPattern = "";
              slavePattern = "";
            };
            sent = {
              masterPattern = config.accounts.email.accounts.IIT.folders.sent; # "[Gmail]/Sent Mail";
              slavePattern = "Sent";
            };
            trash = {
              masterPattern = config.accounts.email.accounts.IIT.folders.trash; # "[Gmail]/Trash";
              slavePattern = "Trash";
            };
            starred = {
              masterPattern = "[Gmail]/Starred";
              slavePattern = "Starred";
            };
            drafts = {
              masterPattern = config.accounts.email.accounts.IIT.folders.drafts; # "[Gmail]/Drafts";
              slavePattern = "Drafts";
            };
            triangle = {
              masterPattern = "Triangle";
              slavePattern = "Triangle";
            };
            camras = {
              masterPattern = "Camras";
              slavePattern = "Camras";
            };
            cyberhawks = {
              masterPattern = "CyberHawks";
              slavePattern = "CyberHawks";
            };
            coterminal = {
              masterPattern = "Co-Terminal";
              slavePattern = "Co-Terminal";
            };
            github = {
              masterPattern = "GitHub";
              slavePattern = "GitHub";
            };
            blackboard= {
              masterPattern = "BlackBoard Submissions";
              slavePattern = "BlackBoard_Submissions";
            };
            postOffice= {
              masterPattern = "Post Office";
              slavePattern = "Post_Office";
            };
          };
        };
        extraConfig.account = {
          PipelineDepth = 50;
          AuthMechs = "LOGIN";
          SSLType = "IMAPS";
          SSLVersions = "TLSv1.2";
        };
        extraConfig.remote = {
          Account = "IIT";
        };
        extraConfig.local = {
          SubFolders = "Verbatim";
        };
      };

      msmtp = {
        enable = true;
        extraConfig = {
          host = "smtp.gmail.com";
          port = "587";
          protocol = "smtp";
          auth = "on";
          tls = "on";
          tls_starttls = "on";
          from = config.accounts.email.accounts.IIT.address;
          user = config.accounts.email.accounts.IIT.address;
        };
      };

      realName = "Karl Hallsby";
      userName = config.accounts.email.accounts.IIT.address;
      passwordCommand = "${pkgs.coreutils}/bin/cat /home/karl/iit";
    };

    accounts.ServerAdmin = {
      address = "serveradmin@triangleiit.org";
      imap = {
        host = "imap.gmail.com";
        port = 993;
      };
      smtp = {
        host = "smtp.gmail.com";
        port = 587;
      };
      maildir.path = "ServerAdmin";
      folders.drafts = "[Gmail]/Drafts";
      folders.inbox = "Inbox";
      folders.sent = "[Gmail]/Sent Mail";
      folders.trash = "[Gmail]/Trash";

      mbsync = {
        enable = true;
        create = "both";
        remove = "none";
        expunge = "both";
        groups.ServerAdmin = {
          channels = {
            inbox = {
              masterPattern = "";
              slavePattern = "";
            };
            sent = {
              masterPattern = config.accounts.email.accounts.ServerAdmin.folders.sent;
              slavePattern = "Sent";
            };
            trash = {
              masterPattern = config.accounts.email.accounts.ServerAdmin.folders.trash;
              slavePattern = "Trash";
            };
            starred = {
              masterPattern = "[Gmail]/Starred";
              slavePattern = "Starred";
            };
            drafts = {
              masterPattern = config.accounts.email.accounts.ServerAdmin.folders.drafts;
              slavePattern = "Drafts";
            };
          };
        };
        extraConfig.account = {
          PipelineDepth = 50;
          AuthMechs = "LOGIN";
          SSLType = "IMAPS";
          SSLVersions = "TLSv1.2";
        };
        extraConfig.remote = {
          Account = "ServerAdmin";
        };
        extraConfig.local = {
          SubFolders = "Verbatim";
        };
      };

      msmtp = {
        enable = true;
        extraConfig = {
          host = "smtp.gmail.com";
          port = "587";
          protocol = "smtp";
          auth = "on";
          tls = "on";
          tls_starttls = "on";
          from = config.accounts.email.accounts.ServerAdmin.address;
          user = config.accounts.email.accounts.ServerAdmin.address;
        };
      };

      realName = "Karl Hallsby";
      userName = config.accounts.email.accounts.ServerAdmin.address;
      passwordCommand = "${pkgs.coreutils}/bin/cat /home/karl/serveradmin";
    };
  };

  services.mbsync = {
    enable = true;
    # description = "mbsync Mailbox Synchronization Service";
    # Have to use /run/current-system/... because I am running the unstable
    # version of mu, because mu 1.2 is out of date, and in stable.
    # I can switch to ${pkgs.mu} once NixOS 20.09 comes out.
    postExec = "/run/current-system/sw/bin/mu index";
    # postExec = "${pkgs.mu}/bin/mu index";
    frequency = "*-*-* *:0/5"; # Run this service every 5 minutes.
    verbose = true;
  };

}
