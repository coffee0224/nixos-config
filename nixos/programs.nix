{ pkgs, ... }:
{
  # vpn
  programs.clash-verge = {
    enable = true;
    tunMode = true;
    serviceMode = true;
  };

  # niri
  # programs.niri.enable = true;
}
