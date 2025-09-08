# rime-config.nix
{ pkgs ? import <nixpkgs> {} }:

  pkgs.fetchFromGitHub {
    owner  = "coffee0224";
    repo   = "rime-config";
    rev    = "c90005bd0f02e0a02917acfed3f50494f6572b9b"; # commit id
    sha256 = "0n74ayf85cdb2bbi5scmziixld5pgj5d9vcg06kxbmqjawn96q0h";
  }

