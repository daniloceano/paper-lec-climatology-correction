# Preserve TeX's default search paths while making the complete Overleaf
# bundle discoverable when latexmk is invoked from the repository root.
my $bundle_search_path = './LEC_climatology_clim_dyn_vCBG//:';

$ENV{'TEXINPUTS'} = $bundle_search_path . ($ENV{'TEXINPUTS'} // '');
$ENV{'BSTINPUTS'} = $bundle_search_path . ($ENV{'BSTINPUTS'} // '');
$ENV{'BIBINPUTS'} = $bundle_search_path . ($ENV{'BIBINPUTS'} // '');
