{ config, ... }:
let
  starshipPath = "${config.home.homeDirectory}/nix-config/config/starship.toml"; 
  nushellPath = "${config.home.homeDirectory}/nix-config/config/nushell"; 
in
{
  home = {
    file.".config/starship/starship.toml" = {
      source = config.lib.file.mkOutOfStoreSymlink starshipPath;
    };
    file.".config/nushell" = {
      source = config.lib.file.mkOutOfStoreSymlink nushellPath;
    };
  };
}