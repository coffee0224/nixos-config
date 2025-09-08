{pkgs, home, ...}: {
  xdg.autostart = {
    enable = true;
    entries = [
      "${pkgs.heynote}/share/applications/heynote.desktop"
      "${pkgs.snipaste}/share/applications/Snipaste.desktop"
    ];   
  };
  
  xdg.userDirs = {
    enable = true;
    desktop = "${home.homeDirectory}/userdata/desktop";
    documents = "${home.homeDirectory}/userdata/documents";
    download  = "${home.homeDirectory}/userdata/download";
    pictures  = "${home.homeDirectory}/userdata/pictures";
    videos    = "${home.homeDirectory}/userdata/videos";
    templates = "${home.homeDirectory}/userdata/templates";
    publicShare = "${home.homeDirectory}/userdata/public";
    music     = "${home.homeDirectory}/userdata/music";
  };
  
}
