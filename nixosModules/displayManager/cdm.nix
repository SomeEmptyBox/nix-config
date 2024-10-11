{ config, lib, inputs, ... }:

{
  imports = [ inputs.nixos-cosmic.nixosModules.default ];

  options.displayManager.cdm.enable = lib.mkEnableOption "cosmic greeter";
  config = lib.mkIf config.displayManager.cdm.enable {

    services.displayManager.cosmic-greeter.enable = true;

  };
}
