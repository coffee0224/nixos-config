{ pkgs, ... }:
{
  home.packages = with pkgs; [
    nixfmt-rfc-style
    nix-output-monitor
    devbox
  ];

  home.sessionVariables = {
      EDITOR = "helix";
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
    
    gitui = {
  	  enable = true;
      theme = ''
        (
          selected_tab: White,
        )
      '';
    };

    tealdeer = {
    	enable = true;
      settings.updates.auto_update = true;
    };
  };
}
