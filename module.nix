{ pkgs, config, lib, ... }:
let
  inherit (lib) mkEnableOption mkIf mkOption;
  cfg = config.services.ec2-metadata;
  {
  options = {
    services.ec2-metadata = {
      enable = mkEnableOption (lib.mdDoc "EC2 instance metadata retriever");
    };
  };

  config = mkIf cfg.enable {

    # retrieve ec2 instance metadata
    systemd.services.ec2-metadata = {
      description = "EC2 instance metadata retriever";
      after = [ "network-online.target" ];
      wants = [ "network-online.target" ];
      wantedBy = [ "multi-user.target" ];
      serviceConfig = {
        Type = "oneshot";
        RemainAfterExit = true;
        Restart = "on-failure";
        RestartSec = "20s";
      };
      path = with pkgs; [ ec2_metadata ];
      script = ''
        set -euo pipefail

        echo "Retrieving EC2 metadata"
        ec2_metadata > /etc/nixos/instance.json
        echo "Saved EC2 metadata to /etc/nixos/instance/json"
      '';
    };
  };
  }
