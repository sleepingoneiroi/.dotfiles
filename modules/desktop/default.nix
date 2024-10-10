{...}:
{
  imports = [
    ../shared #system config
    ../shared/audio.nix #audio
    ./virtualization.nix #vm stuff
    ./gaming.nix #gamin
    ./rdp.nix #sunshine
  ];
}