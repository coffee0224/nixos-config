# rime-config.nix
{ pkgs ? import <nixpkgs> {} }:

  pkgs.fetchFromGitHub {
    owner  = "coffee0224";
    repo   = "rime-config";
    rev    = "b51352d95dc3e58e30f86db5a8796b7c981a6652"; # commit id
    sha256 = "0q34gq0a95fxn6gbk6amg1b1vpm1gzvl7sy29f7fc567swpjkdsq";
  };

