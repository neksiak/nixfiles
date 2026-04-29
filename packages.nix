{ config, pkgs, ... }:
{
 environment.systemPackages = with pkgs; [
  fastfetch
  kitty
  vesktop
  steam
  home-manager
  git
  ungoogled-chromium
  ];
}
