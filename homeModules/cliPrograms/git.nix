{ config, lib, user, ... }:

{
  options.cliPrograms.git = lib.mkEnableOption "git";
  config = lib.mkIf config.cliPrograms.git {

    programs.git = {
      enable = true;
      userName = "${user.name}";
      userEmail = "peace@nixos.me";
      extraConfig.init.defaultBranch = "main";
    };

  };
}
