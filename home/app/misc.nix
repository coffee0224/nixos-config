{ pkgs, ... }: 
{
    home.packages = with pkgs; [
      # browser
      microsoft-edge

      # study
      obsidian
      zotero
      heynote

      # utils
      snipaste

      # chat
      wechat
    ];
}