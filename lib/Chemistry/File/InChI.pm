package Chemistry::File::InChI;

use strict;
use warnings;

use base 'Chemistry::File';

use Chemistry::File::InChI::Parser;

# ABSTRACT: InChI format reader
# VERSION

Chemistry::Mol->register_format(inchi => __PACKAGE__);

sub parse
{
    my ($string) = @_;

    my $parser = Chemistry::File::InChI::Parser->new;
    return $parser->parse( $string );
}

sub name_is {
    my ($self, $fname) = @_;
    $fname =~ /\.inchi$/i;
}

sub file_is {
    my ($self, $fname) = @_;
    $fname =~ /\.inchi$/i;
}

1;
