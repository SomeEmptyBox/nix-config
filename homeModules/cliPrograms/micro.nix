{ config, lib, pkgs, ... }:

{
  options.cliPrograms.micro = lib.mkEnableOption "micro";
  config = lib.mkIf config.cliPrograms.micro {

  	home.sessionVariables = {
  	  EDITOR = "micro";
  	  MICRO_TRUECOLOR = 1;
  	};
  
  	programs.micro = {
  	  enable = true;
  	  settings = {
  	  	basename = true;
  	  	eofnewline = false;
  	  	matchbracestyle = "highlight";
  	  	mkparents = true;
  	  	savecursor = true;
  	  	tabsize = 2;
  	  };
  	};
  	
  };
}
