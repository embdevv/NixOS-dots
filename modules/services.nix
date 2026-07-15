  { config, ... }: 
  {
    # Greetd login manager
  services.greetd = {
    enable = true;
    settings = {
      default_session = {
        command = "${config.programs.niri.package}/bin/niri-session";
        user = "embdev";
      };
    };
   };
  systemd.user.services.niri.enableDefaultPath = false;

  
  security.rtkit.enable = true;
  services.xserver.enable = false;
  programs.xwayland.enable = true;
}