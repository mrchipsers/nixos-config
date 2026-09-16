{
  config,
  pkgs,
  inputs,
  lib,
  ...
}:

{
  home.username = "sofia";
  home.homeDirectory = "/home/sofia";
  home.stateVersion = "26.05";

  programs.git = {
    enable = true;
    settings = {
      user = {
        name = "Git name";
        email = "email@example.com";
      };
      init.defaultBranch = "main";
      pull.rebase = false;
      push.autoSetupRemote = true;
    };
  };

  programs.bash = {
    enable = true;
    shellAliases = {
      rebuild = "sudo nixos-rebuild switch --flake /home/sofia/.config/nixos/";
      update = "sudo nix flake update --flake /home/sofia/.config/nixos/";
    };
  };
}
