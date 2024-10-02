{ config, lib, pkgs, inputs, ... }:

{
  imports = [ inputs.nixvim.homeManagerModules.nixvim ];

  options.cliPrograms.nixvim = lib.mkEnableOption "enables nixvim";
  config = lib.mkIf config.cliPrograms.nixvim {

    programs.nixvim = {
      enable = true;
      defaultEditor = true;
      #colorschemes.catppuccin.enable = true;
      
      clipboard = {
        register = "unnamedplus";
        providers.wl-copy.enable = true;
      };

      opts = {
        number = true;
        relativenumber = true;
        splitbelow = true;
        splitright = true;
        #scrolloff = 4;

        fileencoding = "utf-8";
        termguicolors = true;

        #autoindent = true;
        expandtab = true;
        shiftwidth = 2;
        smartindent = true;
        tabstop = 2;

        ignorecase = true;
        incsearch = true;
        smartcase = true;
      };
    };

  };
}
