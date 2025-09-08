# nushell-config.nix
{ pkgs ? import <nixpkgs> {} }:

  pkgs.fetchFromGitHub {
    owner  = "coffee0224";
    repo   = "nushell-config";
    rev = "f4dd27c5d72d8d559b67e3b0057436268c488be6";
    sha256 = "0iz26dnyj3fcfa96rg45svizrrz4zdhspkrz5av1nvpiqh79cfqf";
  }
