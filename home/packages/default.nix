{pkgs, ...}:
{

  imports = [
    #shell and CLI
    ./fish.nix
    ./kitty.nix
    ./starship.nix
    ./fuzzel.nix

    #./cider
    ./vscodium.nix
    ./btop.nix
    ./hyfetch.nix
    ./yazi.nix
    ./easyeffects.nix
    #./gpg.nix
  ];

  home.packages = with pkgs; [
    noto-fonts-color-emoji
    material-icons
    material-design-icons
    (nerdfonts.override { fonts = [ "NerdFontsSymbolsOnly" "FiraCode"]; })
    corefonts
    source-sans
    source-serif
    dejavu_fonts
    inter
    noto-fonts
    maple-mono
    
    nil
    #firefox
    floorp
    bun
    brightnessctl
    dart-sass
    swww
    mpv
    libnotify
    hyprpicker
    wl-clipboard
    #networkmanager
    #yazi
    
    mullvad-vpn
    pavucontrol

    vesktop
    #cider

    grimblast
    grim
    slurp
    python3

    #keepassxc

    #xivlauncher
    starsector
    clinfo
    rocmPackages.clr.icd
    
    mpvScripts.mpris
    #passExtensions.pass-import
    #dunst

    #easyeffects
  ];

  programs.browserpass = {
    enable = true;
    browsers = ["firefox"];
  };

  
}