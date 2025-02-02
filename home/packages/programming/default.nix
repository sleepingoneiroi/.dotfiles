{pkgs, ...}:
{
  home.packages = with pkgs; [
    #jetbrains.idea-community
    jetbrains.idea-ultimate
    temurin-bin
    #jetbrains.rider
    #dotnet-sdk
    #postman
    #jetbrains.clion
    #yarn
  ];

  programs.helix = {
    enable = true;
    defaultEditor = true;
  };
}