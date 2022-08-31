package Chemistry::File::InChI;

use strict;
use warnings;

use Chemistry::File::InChI::Parser;

# ABSTRACT: InChI format reader
# VERSION

sub parse
{
    my( $string ) = @_;

    my $parser = Chemistry::File::InChI::Parser->new;
    $parser->parse( $string );
}

1;
