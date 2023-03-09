#Thanks to
#https://gist.github.com/sampointer/b506369b926ad395123aa7f18275de92

{ pkgs, cfg, ... }:

let 
    unstable = import <nixos-unstable> {};
in
{
    environment.systemPackages = with pkgs; [
        unstable.nicotine-plus
        unstable.tdesktop
        unstable.yt-dlp
        ];    
}
