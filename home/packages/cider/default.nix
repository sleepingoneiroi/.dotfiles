{pkgs, ... }:
{
  home.packages = with pkgs; [
    (pkgs.appimageTools.wrapType2 rec{

  pname = "cider";

  version = "2.4.1";

  src = ./Cider.AppImage;
  theme = ./mocha-lavender.cider-theme;

  extraInstallCommands =
    let contents = appimageTools.extract { inherit pname version src; };
    in ''
      install -m 444 -D ${contents}/${pname}.desktop -t $out/share/applications
      substituteInPlace $out/share/applications/${pname}.desktop \
        --replace 'Exec=AppRun' 'Exec=${pname}'
      cp -r ${contents}/usr/share/icons $out/share
      cp  ${theme} $out/share
    '';


  meta = with pkgs.lib; {

    description = "A new look into listening and enjoying Apple Music in style and performance.";
    homepage = "https://cider.sh/";
    license = licenses.agpl3Only;
    mainProgram = "cider";
    maintainers = [ maintainers.nicolaivds ];
    platforms = [ "x86_64-linux" ];

  };
})
  ];
}
