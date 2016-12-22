use Test::More tests => 4;
 
BEGIN {
        use_ok( 'Lingua::Postcodes' );
}
 
is name('XPTO'), undef, 'Returns UNDEF if country code does not exist'; 

is name('GB'), 'Postcode', '"GB" returns "Postcode"';
is name('IE'), 'Eircode', '"IE" returns "Eircode"';
