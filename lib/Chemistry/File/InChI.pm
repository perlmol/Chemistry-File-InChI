package Chemistry::File::InChI;

use strict;
use warnings;

use base 'Chemistry::File';

use Chemistry::File::InChI::Parser;

# ABSTRACT: InChI format reader
# VERSION

Chemistry::Mol->register_format(inchi => __PACKAGE__);

sub read_mol
{
    my ($self, $fh, %opts) = @_;

    my $line = <$fh>;
    return unless defined $line;
    $line =~ s/\r\n//g;

    my $parser = Chemistry::File::InChI::Parser->new;
    return $parser->parse( $line );
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
