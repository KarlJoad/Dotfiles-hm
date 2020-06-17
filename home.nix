{config, lib, pkgs, ...}:

{
    home-manager.enable = true;
  imports =
    [ ./programs/zsh.nix
      ./programs/git.nix
    ];

  home.sessionVariables = {
    EDITOR = "${pkgs.emacs}/bin/emacsclient -t -a \"\"";
    VISUAL = "${pkgs.emacs}/bin/emacsclient -c -a \"${pkgs.emacs}/bin/emacs\"";
  };

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

      mbsync = {
        enable = true;
        create = "both";
        remove = "none";
        expunge = "both";
        patterns = [ "*" "INBOX"
                     "![Gmail]*" "[Gmail]/Sent Mail" "[Gmail]/Starred" "[Gmail]/Trash" "[Gmail]/Drafts" "[Gmail]/All Mail" ];
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

      mbsync = {
        enable = true;
        create = "both";
        remove = "none";
        expunge = "both";
        patterns = [ "*" "INBOX"
                     "![Gmail]*" "[Gmail]/Sent Mail" "[Gmail]/Starred" "[Gmail]/Trash" "[Gmail]/Drafts" "[Gmail]/All Mail" ];
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
  };

  services.mbsync = {
    enable = true;
    # description = "mbsync Mailbox Synchronization Service";
    postExec = "/run/current-system/sw/bin/mu index";
    # postExec = "${pkgs.mu}/bin/mu index";
    frequency = "*-*-* *:0/10"; # Run this service every 10 minutes.
    verbose = true;
  };
}
