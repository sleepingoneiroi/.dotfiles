{pkgs, ...}:
{
  home.packages = with pkgs; [
    #jetbrains.idea-community
    jetbrains.idea-ultimate
    temurin-bin
  ];
}