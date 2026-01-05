{ username, ... }:
{
  services = {
    displayManager = {
      sddm.enable = true;
      autoLogin = {
        enable = true;
        user = username;
      };
    };

    # desktopManager.plasma6.enable = true;
    xserver.enable = true;

    pipewire = {
        enable = true;
        alsa.enable = true;
        alsa.support32Bit = true;
        pulse.enable = true;
        # If you want to use JACK applications, uncomment this
        #jack.enable = true;

        # use the example session manager (no others are packaged yet so this is enabled by default,
        # no need to redefine it in your config for now)
        #media-session.enable = true;
      };

    # backend service of vpn
    mihomo.tunMode = true;

    # key bingding
    keyd = {
        enable = true;
        keyboards = {
          default = {
            ids = [ "*" ];
            settings = {
              main = {
                capslock = "esc";
                # https://github.com/rvaiya/keyd/issues/209#issuecomment-1121386837
              };
              control = {
                comma = "home";
                dot = "end";
              };
            };
          };
        };
    };
  };
}
