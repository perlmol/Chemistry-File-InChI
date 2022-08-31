package Chemistry::File::InChI;

use strict;
use warnings;

use Chemistry::File::InChI::Parser;
use Chemistry::Mol;

# ABSTRACT: InChI format reader
# VERSION

sub parse
{
    my( $string ) = @_;

    my $parser = Chemistry::File::InChI::Parser->new;
    my $mol = Chemistry::Mol->new;
    $parser->parse( $string, $mol );
}

1;
