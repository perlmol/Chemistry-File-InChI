package Chemistry::File::InChI;

use strict;
use warnings;

use base 'Chemistry::File';

use Chemistry::File::InChI::Parser;

# ABSTRACT: InChI identifier reader
# VERSION

=head1 NAME

Chemistry::File::InChI - InChI identifier reader

=head1 SYNOPSIS

    use Chemistry::File::InChI;

    # read a molecule
    my $mol = Chemistry::Mol->parse('InChI=1S/H2N2/c1-2/h1-2H', format => 'inchi');

=head1 DESCRIPTION

InChI identifier reader.

=cut

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

=head1 SOURCE CODE REPOSITORY

L<https://github.com/perlmol/Chemistry-File-InChI>

=head1 SEE ALSO

L<Chemistry::Mol>, L<Chemistry::File>

InChI grammar L<https://github.com/metamolecular/inchi-grammar>

=head1 AUTHOR

Andrius Merkys <merkys@cpan.org>

=head1 COPYRIGHT

Copyright (c) 2022-2026 Andrius Merkys. All rights reserved. This program is
free software; you can redistribute it and/or modify it under the same terms as
Perl itself.

=cut

1;
