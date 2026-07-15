 { pkgs, ... }: {
 # Graphics
  hardware.graphics = {
    enable = true;
    enable32Bit = true;
  };

  services.xserver.videoDrivers = [ "amdgpu" "nvidia" ];
   
  hardware.nvidia = { 
   modesetting.enable = true;
   powerManagement.enable = false;
   powerManagement.finegrained = false;

   open = true;
   nvidiaSettings = true;

   prime = {
    offload = {
       enable = true;
       enableOffloadCmd = true;
      };

   amdgpuBusId = "PCI:6:0:0";
   nvidiaBusId = "PCI:1:0:0";
  };
 };
}