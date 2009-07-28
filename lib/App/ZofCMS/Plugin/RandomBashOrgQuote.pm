package App::ZofCMS::Plugin::RandomBashOrgQuote;

use warnings;
use strict;

our $VERSION = '0.0102';
use WWW::BashOrg;

sub new { bless {}, shift }

sub process {
    my ( $self, $t ) = @_;

    my $b = WWW::BashOrg->new;
    my $quote = $b->random;

    $t->{t}{plug_random_bash_org_quote} = $quote ? $quote : "Error: " . $b->error;
}

1;
__END__

=head1 NAME

App::ZofCMS::Plugin::RandomBashOrgQuote - tiny plugin to fetch random quotes from http://bash.org/

=head1 SYNOPSIS

Include the plugin

    plugins => [
        qw/RandomBashOrgQuote/
    ],

In HTML::Template file:

    <pre><tmpl_var escape='html' name='plug_random_bash_org_quote'></pre>

=head1 DESCRIPTION

The module is a plugin for L<App::ZofCMS> that provides means to fetch a random
quote from L<http://bash.org/>.

This documentation assumes you've read L<App::ZofCMS>, L<App::ZofCMS::Config> and
L<App::ZofCMS::Template>

=head1 TO RUN THE PLUGIN

    plugins => [
        qw/RandomBashOrgQuote/
    ],

Unlike many other plugins, this plugin does not have any configuration options and will
run if it's included in the list of plugins to run.

=head1 OUTPUT

    <pre><tmpl_var escape='html' name='plug_random_bash_org_quote'></pre>

Plugin will set C<< $t->{t}{plug_random_bash_org_quote} >> to the fetched random quote
or to an error message if an error occured; in case of an error the message will be prefixed
with C<Error:> (in case you wanna mingle with that).

=head1 AUTHOR

'Zoffix, C<< <'zoffix at cpan.org'> >>
(L<http://haslayout.net/>, L<http://zoffix.com/>, L<http://zofdesign.com/>)

=head1 BUGS

Please report any bugs or feature requests to C<bug-app-zofcms-plugin-randombashorgquote at rt.cpan.org>, or through
the web interface at L<http://rt.cpan.org/NoAuth/ReportBug.html?Queue=App-ZofCMS-Plugin-RandomBashOrgQuote>.  I will be notified, and then you'll
automatically be notified of progress on your bug as I make changes.


=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc App::ZofCMS::Plugin::RandomBashOrgQuote

You can also look for information at:

=over 4

=item * RT: CPAN's request tracker

L<http://rt.cpan.org/NoAuth/Bugs.html?Dist=App-ZofCMS-Plugin-RandomBashOrgQuote>

=item * AnnoCPAN: Annotated CPAN documentation

L<http://annocpan.org/dist/App-ZofCMS-Plugin-RandomBashOrgQuote>

=item * CPAN Ratings

L<http://cpanratings.perl.org/d/App-ZofCMS-Plugin-RandomBashOrgQuote>

=item * Search CPAN

L<http://search.cpan.org/dist/App-ZofCMS-Plugin-RandomBashOrgQuote/>

=back



=head1 COPYRIGHT & LICENSE

Copyright 2009 'Zoffix, all rights reserved.

This program is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.


=cut

