{ pkgs, username, ... }: {
  imports = [
    ../../home
  ];
  
  home = {
    # packages = with pkgs; [
    #   # tool
    #   fd
    #   ripgrep
    #   tealdeer
    #   starship
    #   zoxide
    #   fzf
    #   bat
    #   gitui
    #   bottom
    #   devbox
    #   nix-output-monitor
    #   direnv
    #   bash-env-json
                  
    #   # studying
    #   microsoft-edge
    #   snipaste
    #   obsidian
    #   zotero
    #   wechat
    
    #   #editor
    #   helix
    #   heynote

            
    #   # archives
    #   unzip
    #   zip
      
    #   # network
    #   wget
    #   curl

    #   # chat
      
    # ];

    sessionVariables = {
      EDITOR = "helix";
    };

    file.".local/share/fcitx5/rime/" = {
      source = pkgs.callPackage ./rime-config.nix {};      
      recursive = true;             
    };

    file.".config/nushell/" = {
      source = pkgs.callPackage ./nushell-config.nix {};
      recursive = true;
    };
    file.".config/starship/starship.toml" = {
      source = ./starship.toml;
    };
  };

  programs = {
    git = {
      enable = true;
      userName = "coffee";
      userEmail = "hyiz0224@gmail.com";
      extraConfig = {
        core.editor = "hx";
      };
    };
  };
}
