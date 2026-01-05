{ mylib, ... }:
{
  imports = mylib.scanPaths ./.;

  # Set your time zone.
  time.timeZone = "Asia/Shanghai";

  # Enable networking
  networking = {
    hostName = "nixos";
    networkmanager.enable = true;
    firewall.enable = false;
  };

  environment = {
    variables = {
      # set the default editor to vim
      EDITOR = "hx";
      VISUAL = "hx";
    };

    sessionVariables = {
      NIXOS_OZONE_WL = "1";
      QT_IM_MODULE = "fcitx";
      XMODIFIERS = "@im=fcitx";
    };
  };
}
