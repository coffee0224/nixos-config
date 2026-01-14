{ pkgs, username, ... }: {
  imports = [
    ../../home
    ../../config
  ];
  
  home = {
    sessionVariables = {
      EDITOR = "helix";
    };

    file.".local/share/fcitx5/rime/" = {
      source = pkgs.callPackage ../../config/rime-config.nix {};      
      recursive = true;             
    };
  };

  programs = {
    git = {
      enable = true;
      settings = {
        user = {
          name = "coffee";
          email = "hyiz0224@gmail.com";
        };
        core.editor = "hx";
      };
    };
  };
}
