use Test::More tests => 2;

BEGIN {
    use_ok('WWW::BashOrg');
    use_ok( 'App::ZofCMS::Plugin::RandomBashOrgQuote' );
}

diag( "Testing App::ZofCMS::Plugin::RandomBashOrgQuote $App::ZofCMS::Plugin::RandomBashOrgQuote::VERSION, Perl $], $^X" );
