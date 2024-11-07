{
  config,
  lib,
  pkgs,
  user,
  ...
}:

{
  imports = [ ./nixosModules ];

  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];
  nixpkgs.config.allowUnfree = true;
  zramSwap.enable = true;
  boot.kernelPackages = pkgs.linuxPackages_latest;

  #  security.polkit = {
  #    enable = true;
  #package = pkgs.polkit_gnome;
  #  };

  services = {
    blueman.enable = true;
    gnome.gnome-keyring.enable = true;
    libinput.enable = true;
    udisks2.enable = true;
    xserver.enable = false;
    pipewire.enable = true;
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
    hostName = "${user.host}";
    networkmanager.enable = true;
    wireguard.enable = true;
  };

  hardware.bluetooth.enable = true;
  time.timeZone = "Asia/Kolkata";

  users.users.${user.name} = {
    isNormalUser = true;
    shell = pkgs.fish;
    extraGroups = [
      "NetworkManager"
      "wheel"
      "plugdev"
      "adbusers"
    ];
  };

  services.xserver = {
    desktopManager.gnome.enable = true;
    displayManager.gdm.enable = false;
  };

  hyprland.enable = true;
  cosmic.enable = true;
  virtual.enable = false;
  theme.enable = true;

  programs.nh = {
    enable = true;
    flake = "/home/${user.name}/nixcfg";
    clean = {
      enable = true;
      dates = "daily";
      extraArgs = "--keep 3";
    };
  };

  programs = {
    adb.enable = true;
    fish.enable = true;
  };

  environment.systemPackages = with pkgs; [
    btop
    bottles
    curl
    fastfetch
    ffmpeg
    fzf
    git
    neovim
    nixfmt-rfc-style
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
