{ pkgs, ... }:
{
  home.packages = with pkgs; [
    # system
    grub2

    # fetch
    wget
    curl

    # archives
    zip
    unzip
    unrar

    # utils
    fd
    fzf
    ripgrep
    tealdeer
    starship
    zoxide
    bat
    gitui
    direnv
    bash-env-json
    bottom

    # editor
    helix
    vim
  ];

  programs = {
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