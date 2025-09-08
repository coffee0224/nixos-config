# nushell-config.nix
{ pkgs ? import <nixpkgs> {} }:

  pkgs.fetchFromGitHub {
    owner  = "coffee0224";
    repo   = "nushell-config";
  }
