{ config, pkgs, ... }:

{
  # Install firefox.
  programs.steam.enable = true;

  nixpkgs.config.allowUnfree = true;

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    #  vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
    #  wget
    python315
    python313Packages.pip
    konsave
    vscode
    jdk25_headless
    maven
    fastfetch
    hyfetch
    nerd-fonts.meslo-lg
    lutris
    kdePackages.filelight
    firefox
    fish
  ];
}
