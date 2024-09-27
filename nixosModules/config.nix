{ config, lib, pkgs, user, host, ... }:

{
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  nixpkgs.config.allowUnfree = true;
  zramSwap.enable = true;
  boot.kernelPackages = pkgs.linuxPackages_latest;

  security.polkit = {
    enable = true;
    #package = pkgs.polkit_gnome;
  };

  services = {
    blueman.enable = true;
    gnome.gnome-keyring.enable = true;
    libinput.enable = true;
    udisks2.enable = true;

    pipewire = {
      enable = true;
      pulse.enable = true;
    };
  };

  #boot.plymouth.enable = true;

  boot.loader = {
    efi.canTouchEfiVariables = true;
    grub = {
      enable = true;
      device = "nodev";
      efiSupport = true;
    };
  };

  networking = {
    hostName = "${host}";
    networkmanager.enable = true;
  };

  hardware.bluetooth.enable = true;
  time.timeZone = "Asia/Kolkata";

  users.users.${user} = {
    isNormalUser = true;
    shell = pkgs.fish;
    extraGroups = [ "NetworkManager" "wheel" "plugdev" ];
  };

  hyprland.enable = true;
  virtual.enable = true;
  theme.enable = true;

  programs.nh = {
    enable = true;
    flake = "/home/${user}/nix-config";
    clean = {
      enable = true;
      dates = "daily";
      extraArgs = "--keep 3";
    };
  };

  programs.fish.enable = true;

  environment.systemPackages = with pkgs; [
    android-tools
    btop
    bottles
    curl
    fastfetch
    ffmpeg
    fzf
    git
    neovim
    p7zip
    python3
    rustc
    speedtest-rs
    sbctl
    tlrc
    wget
    winePackages.waylandFull
  ];

  system.stateVersion = "24.05"; # Did you read the comment?
}
