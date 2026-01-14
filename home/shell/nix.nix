{ pkgs, ... }:
{
  home.packages = with pkgs; [
    nixfmt-rfc-style
    nix-output-monitor
    devbox
  ];
}
