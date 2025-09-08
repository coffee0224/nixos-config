{pkgs, config, ...}: {
  xdg.autostart = {
    enable = true;
    entries = [
      "${pkgs.heynote}/share/applications/heynote.desktop"
      "${pkgs.snipaste}/share/applications/Snipaste.desktop"
    ];   
  };
  
  xdg.userDirs = {
    createDirectories = true;
    enable = true;
    desktop = "${config.home.homeDirectory}/userdata/desktop";
    documents = "${config.home.homeDirectory}/userdata/documents";
    download  = "${config.home.homeDirectory}/userdata/download";
    pictures  = "${config.home.homeDirectory}/userdata/pictures";
    videos    = "${config.home.homeDirectory}/userdata/videos";
    templates = "${config.home.homeDirectory}/userdata/templates";
    publicShare = "${config.home.homeDirectory}/userdata/public";
    music     = "${config.home.homeDirectory}/userdata/music";
  };
  
}
