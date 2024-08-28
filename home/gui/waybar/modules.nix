{...}
: {
  programs.waybar.settings = [
    {
      reload_style_on_change = true;
      layer = "top";
      position = "top";
      modules-center = ["hyprland/workspaces"];
      modules-left = [
        "custom/startmenu"
        "network"
        # "cpu"
        # "memory"
        "pulseaudio"
        "mpris"
      ];
      modules-right = [
        # "custom/hyprbindings"
        "hyprland/window"
        # "custom/notification"
        "battery"
        # "idle_inhibitor"
        # "custom/exit"
        "clock"
      ];

      # MODULE DEFINITIONS
      "hyprland/workspaces" = {
        format = "{name}";
        format-icons = {
          default = " ";
          active = " ";
          urgent = " ";
        };
        # on-scroll-up = "hyprctl dispatch workspace e+1";
        # on-scroll-down = "hyprctl dispatch workspace e-1";
      };
      "clock" = {
        format = ''{:L%I:%M %p} '';
        tooltip = true;
        tooltip-format = "<big>{:%A, %d.%B %Y }</big>\n<tt><small>{calendar}</small></tt>";
      };
      "hyprland/window" = {
        max-length = 30;
        separate-outputs = false;
        justify = "right";
        rewrite = {
          "" = "Welcome to adharmOS!";
        };
      };
      "memory" = {
        interval = 5;
        format = " {}%";
        tooltip = true;
      };
      "cpu" = {
        interval = 5;
        format = " {usage:2}%";
        tooltip = true;
      };
      "disk" = {
        format = " {free}";
        tooltip = true;
      };
      "network" = {
        format-icons = [
          "󰤯"
          "󰤟"
          "󰤢"
          "󰤥"
          "󰤨"
        ];
        format-ethernet = " {bandwidthDownOctets}";
        format-wifi = "{icon} {signalStrength}%";
        format-disconnected = "󰤮 ";
        tooltip = false;
        on-click = "sleep 0.1 && alacritty -e nmtui";
      };
      "tray" = {
        spacing = 12;
      };
      "pulseaudio" = {
        format = "{icon} {volume}% {format_source}";
        format-bluetooth = "{volume}% {icon} {format_source}";
        format-bluetooth-muted = "{icon} {format_source}";
        format-muted = "󰝟 {volume}% {format_source}";
        format-source = " {volume}%";
        format-source-muted = "";
        format-icons = {
          headphone = "";
          hands-free = "";
          headset = "";
          phone = "";
          portable = "";
          car = "";
          default = [
            ""
            ""
            ""
          ];
        };
        on-click = "sleep 0.1 && hyprctl dispatch -- exec [float] alacritty -e pulsemixer";
      };
      "mpris" = {
        hide-empty-text = false;
        max-length = 22;
        format = "{player_icon} {dynamic}";
        format-paused = "{status_icon} <i>{dynamic}</i>";
        player-icons = {
          default = "▶";
          mpv = "🎵";
        };
        status-icons = {
          paused = "⏸";
        };
        rewrite = {
          "" = "Nothing is playing";
        };
        # ignored-players: ["firefox"]
      };
      "custom/exit" = {
        tooltip = false;
        format = "";
        on-click = "sleep 0.1 && wlogout";
      };
      "custom/startmenu" = {
        tooltip = false;
        format = " adithya";
        on-click = "sleep 0.1 && rofi -show drun";
      };
      "custom/hyprbindings" = {
        tooltip = false;
        format = "󱕴";
        on-click = "sleep 0.1 && list-hypr-bindings";
      };
      "idle_inhibitor" = {
        format = "{icon}";
        format-icons = {
          activated = "";
          deactivated = "";
        };
        tooltip = "true";
      };
      "custom/notification" = {
        tooltip = false;
        format = "{icon} {}";
        format-icons = {
          notification = "<span foreground='red'><sup></sup></span>";
          none = "";
          dnd-notification = "<span foreground='red'><sup></sup></span>";
          dnd-none = "";
          inhibited-notification = "<span foreground='red'><sup></sup></span>";
          inhibited-none = "";
          dnd-inhibited-notification = "<span foreground='red'><sup></sup></span>";
          dnd-inhibited-none = "";
        };
        return-type = "json";
        exec-if = "which swaync-client";
        exec = "swaync-client -swb";
        on-click = "sleep 0.1 && task-waybar";
        escape = true;
      };
      "battery" = {
        states = {
          warning = 30;
          critical = 15;
        };
        format = "{icon} {capacity}%";
        format-charging = "󰂄 {capacity}%";
        format-plugged = "󱘖 {capacity}%";
        format-icons = [
          "󰁺"
          "󰁻"
          "󰁼"
          "󰁽"
          "󰁾"
          "󰁿"
          "󰂀"
          "󰂁"
          "󰂂"
          "󰁹"
        ];
        on-click = "";
        tooltip = false;
      };
    }
  ];
}
