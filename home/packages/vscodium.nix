{pkgs, ...}:
{

  programs.vscode = {
    enable = true;
    package = pkgs.vscodium;
    extensions = with pkgs.vscode-extensions; [
      jnoortheen.nix-ide



      #catppuccin
      (pkgs.catppuccin-vsc.override {
        accent = "lavender";
        boldKeywords = true;
        italicComments = true;
        italicKeywords = true;
        extraBordersEnabled = false;
        workbenchMode = "flat";
        bracketMode = "rainbow";
      })
    ];
  };
}