{ username, ... }:
{
  home = {
    file.".config/starship/starship.toml" = {
      source = ./starship.toml;
    };
  };
}