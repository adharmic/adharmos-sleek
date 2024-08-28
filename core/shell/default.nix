{config, ...}
: {
  programs.fish.enable = true;
  # TODO: Extract bat theme into separate bat config.
  programs.fish.shellInit = ''
    # Environment variables
    set -Ux BAT_THEME 'ansi'
    set -Ux FZF_CTRL_T_OPTS "--preview 'bat -n --color=always --line-range :500 {}'"
    set -Ux FZF_ALT_C_OPTS "--preview 'eza --tree --color=always {} | head -200'"
    set -Ux NIX_CONF '/home/adi/projects/adharmos'
    set -Ux EDITOR 'hx'
    set -Ux MAIN_VAULT 'satyaloka'

    # App initializers
    fzf --fish | source
    zoxide init fish | source
    source (/home/adi/.nix-profile/bin/starship init fish --print-full-init | psub)
  '';
  programs.fish.shellAbbrs = {
    # TODO: Replace with global variable to config path
    hrb = "home-manager switch --flake ~/projects/adharmos#adi@adharmos";
    nrb = "sudo nixos-rebuild switch --flake ~/projects/adharmos#adharmos";
    lg = "lazygit";
    lst = "eza --tree --level=2";
    vh = "${config.globalConfig.editor} .";
    zke = "zk edit --interactive";
    os = "cd $NIX_CONF && ${config.globalConfig.editor} .";
    fb = "cd ~/vaults/$MAIN_VAULT && zk edit --interactive";
    mux = "tmuxinator";
    osconf = "tmuxinator s osconf";
    coding = "tmuxinator s coding";
    satya = "tmuxinator s satya";
  };
  programs.fish.shellAliases = {
    ls = "eza --color=always --long --git --no-filesize --icons=always --no-time --no-user --no-permissions";
    cd = "z";
    cat = "bat";
  };
}
