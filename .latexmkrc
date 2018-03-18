# Inspired by https://tex.stackexchange.com/a/44316

# Use gind.ist when calling makeindex as suggested in ltxdoc documentation
$makeindex = "makeindex -s gind.ist %O -o %D %S";

# Custom rule for the ltxdoc changes list
add_cus_dep('glo', 'gls', 0, 'makegls');

sub makegls {
  my ($base) = $_[0];
  # Use the latexmk internal function. The command ends up being called with
  # two -s options, but gglo.ist comes last and is used.
  Run_subst($makeindex, 1, '-s gglo.ist', "$base.glo", "$base.gls");
}

push @generated_exts, 'glo', 'gls', 'glg';
$clean_ext .= ' %R.ist';
