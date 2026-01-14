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
      source = pkgs.callPackage ./rime-config.nix {};      
      recursive = true;             
    };

    file.".config/nushell/" = {
      source = pkgs.callPackage ./nushell-config.nix {};
      recursive = true;
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
