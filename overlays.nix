{
    nixpkgs.overlays = [
        (self: super: {
            sway = super.sway.overrideAttrs (oldAttrs: rec {
                patches = oldAttrs.patches or [] ++ [
                    ./keyboard-lang.patch
                ];
            });
        })
    ];
    #nixpkgs.overlays = [
    #    (self: super: {
    #        git-gui = super.git.override { guiSupport = true; };
    #    })
    #];
}
