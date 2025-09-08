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
      microsoft-edge
      
      # studying
      obsidian
      zotero
    
      #editor
      helix
      heynote
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

    file.".local/share/fcitx5/rime/" = {
      source = pkgs.callPackage ./rime-config.nix {};      
      recursive = true;             
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


  # autostart
  xdg.autostart = {
    enable = true;
    entries = [
      "${pkgs.heynote}/share/applications/heynote.desktop"
      "${pkgs.snipaste}/share/applications/Snipaste.desktop"
    ];   
  };

}
