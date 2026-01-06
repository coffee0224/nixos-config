{ pkgs, ... }:
{
  # vpn
  programs.clash-verge = {
    enable = true;
    autoStart = true;
    tunMode = true;
    serviceMode = true;
  };

  # niri
  programs.niri.enable = true;
}
