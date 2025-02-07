#!/usr/bin/perl

use strict;
use warnings;

use Chemistry::File::InChI;
use Chemistry::File::SMILES;
use SmilesScripts::Isomorphism qw( smi_compare );
use Test::More;

my @cases = (
    [ 'InChI=1S/C8H10N4O2/c1-10-4-9-6-5(10)7(13)12(3)8(14)11(6)2/h4H,1-3H3', 'CN1C=NC2=C1C(=O)N(C(=O)N2C)C' ], # Caffeine, from Wikipedia
    [ 'InChI=1S/C14H10/c1-2-6-12-10-14-8-4-3-7-13(14)9-11(12)5-1/h1-10H', 'c1ccc2cc3ccccc3cc2c1' ], # Anthracene, from Wikipedia
);

plan tests => scalar @cases;

for my $case (@cases) {
    my( $inchi, $smiles ) = @$case;
    my $mol = Chemistry::File::InChI->parse_string( $inchi );
    my $mol_smiles = $mol->sprintf('%s');
    like smi_compare( $smiles, $mol_smiles ), qr/^isomorphic modulo (aromaticity, )?order$/, $mol_smiles;
}
