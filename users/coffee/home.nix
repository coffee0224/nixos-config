{ pkgs, username, ... }: {
  imports = [
    ../../home
    ../../config
  ];
  
  home = {
    sessionVariables = {
      EDITOR = "helix";
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
