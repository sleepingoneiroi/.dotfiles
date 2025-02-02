{pkgs, ...}:
{

  imports = [
    #shell and CLI
    ./fish.nix
    ./kitty.nix
    ./starship.nix
    ./fuzzel.nix

    ./vscodium.nix
    ./btop.nix
    ./hyfetch.nix
    ./yazi.nix
    ./easyeffects.nix
    ./gaming.nix
    #./nixvim.nix
    ./cider.nix
    ./floorp.nix
    ./obs.nix

    ./programming
  ];

  home.packages = with pkgs; [
    noto-fonts-color-emoji
    material-icons
    material-design-icons
    #(nerdfonts.override { fonts = [ "NerdFontsSymbolsOnly" "FiraCode"]; })
    nerd-fonts.symbols-only
    nerd-fonts.fira-code
    corefonts
    source-sans
    source-serif
    dejavu_fonts
    inter
    noto-fonts
    maple-mono
    playerctl
    #termusic
    #ffmpeg_7-full
    #yt-dlp
    #musikcube
    
    nil
    alejandra
    #wlogout

    #firefox
    #floorp
    #bun
    brightnessctl
    #dart-sass
    swww
    mpv
    libnotify
    #hyprpicker
    wl-clipboard
    #networkmanager
    #yazi
    
    #mullvad-vpn
    pavucontrol
    ark
    #parsec-bin

    vesktop
    #cider

    grimblast
    grim
    slurp
    python311
    #parsec-bin
    #moonlight-qt
    # python311Packages.zipfile2
    # python311Packages.requests
    # python311Packages.pip
    #audacity
    #p7zip
    #ungoogled-chromium

    #keepassxc

    #xivlauncher
    clinfo
    #rocmPackages.clr.icd
    
    mpvScripts.mpris
    #passExtensions.pass-import
    #dunst
    yt-dlp 
    xorg.xrandr
    read-edid 
    lshw
    #superfile

    #easyeffects

    obsidian
    xfce.ristretto
    libreoffice
    bashmount
    #mullvad-browser
    #tor-browser
  ];

  home.sessionVariables = {
    NIXOS_OZONE_WL = "1";
    #WLR_NO_HARDWARE_CURSORS = "1";
    #ELECTRON_OZONE_PLATFORM_HINT = "wayland";
    #ELECTRON_ENABLE_FEATURES = "WaylandWindowDecorations";
    #DEFAULT_BROWSER = "${pkgs.floorp}/bin/qutebrowser"
  };
  
  #programs.zathura.enable = true;
  # programs.browserpass = {
  #   enable = true;
  #   browsers = ["firefox"];
  # };  
}
