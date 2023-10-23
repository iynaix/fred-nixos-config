{ pkgs, anyrun, ... }: {
	home.username = "fred";
	home.homeDirectory = "/home/fred";

	programs.home-manager.enable = true;

	imports = [
		./modules/anyrun.nix
		./modules/fish.nix
		./modules/alacritty.nix
		./modules/waybar.nix
		./modules/hyprpaper.nix
		./modules/hyprland.nix
		./modules/wlogout.nix
	];

	dconf.settings = {
		"org/virt-manager/virt-manager/connections" = {
			autoconnect = ["qemu:///system"];
			uris = ["qemu:///system"];
		};
	};

	home.packages = with pkgs; [
		firefox
		vivaldi
		vivaldi-ffmpeg-codecs
		thunderbird
		steam
		discord
		spotify
#vscodium
#vscodium-revision
		dunst #mako		
		shotman
# waybar
		blender
		freecad
		obsidian
		qemu # virtualization
		virt-manager # virtualization
		github-desktop
#sqlite
		#anyrun.packages.x86_64-linux.anyrun-with-all-plugins
	];

	home.stateVersion = "23.11";
}
