{ pkgs, config, ... }:
{
   home = {
    packages = with pkgs; [
        (vscode-with-extensions.override {
        vscodeExtensions = with vscode-extensions; [
        bbenoist.nix
        mkhl.direnv
        ms-vscode-remote.remote-ssh
        ms-vscode-remote.remote-ssh-edit
        ];
      })
    ];
   };
}