{ config, lib, pkgs, inputs, ... }:

{
  options.displayManager.sddm.enable = lib.mkEnableOption "sddm";
  config = lib.mkIf config.displayManager.sddm.enable {
    
    services.displayManager.sddm = {
      enable = true;
      wayland.enable = true;
      package = pkgs.kdePackages.sddm;
    };

  };
}
