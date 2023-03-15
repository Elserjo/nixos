{
  nixpkgs.overlays = [
    (self: super: {
      quodlibet-patched = super.quodlibet.override { withDbusPython = true; };
    })
  ];
}
