{ pkgs, ... }:
{
  # vpn
  programs.clash-verge = {
    enable = true;
    autoStart = true;
  };

  # niri
  # programs.niri.enable = true;
}
