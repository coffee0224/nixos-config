{ pkgs, username, ... }: {
  home = {
    inherit username;
    homeDirectory = "/home/${username}";
    stateVersion = "25.05";

    packages = with pkgs; [
      # tool
      fd
      ripgrep
      tealdeer
      zoxide
      fzf
      bat
      gitui
      bottom
      devbox
      nix-output-monitor
      snipaste

      # studying
      obsidian
      zotero
    
      #editor
      helix
      (vscode-with-extensions.override {
        vscodeExtensions = with vscode-extensions; [
        bbenoist.nix
        mkhl.direnv
        ms-vscode-remote.remote-ssh
        ms-vscode-remote.remote-ssh-edit
        ];
      })
      
      # archives
      unzip
      zip
      
      # network
      wget
      curl

      # chat
      wechat
      
    ];

    sessionVariables = {
      EDITOR = "helix";
    };
  };


  programs = {
    alacritty = {
      enable = true;
      settings = {
        window = {
          decorations = "Full";
          opacity = 0.8;
        };
        font.normal = {
          family = "FiraCode Nerd Font";
          style = "Regular";
        };
      };
      theme = "tokyo_night";
    };
  };

  programs.plasma.configFile."kwinrc".Wayland = {
    "InputMethod" = {
      shellExpand = true;
      value = "/run/current-system/sw/share/applications/fcitx5-wayland-launcher.desktop";
    };
  };


  programs.home-manager.enable = true;
  
  programs.git = {
    enable = true;
    userName = "coffee";
    userEmail = "hyiz0224@gmail.com";
  };

  # personalize
  xdg = {
    userDirs = {
      enable = true;
      documents = null;
      download = null;
      pictures = null;
      videos = null;
      templates = null;
      publicShare = null;
      music = null;
    };
  };
}
