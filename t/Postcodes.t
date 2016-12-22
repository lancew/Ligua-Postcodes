use Test::More tests => 8;
 
BEGIN {
        use_ok( 'Lingua::Postcodes' );
}
 
is name('XPTO'), undef, 'Returns UNDEF if country code does not exist'; 

is name('GB'), 'Postcode', '"GB" returns "Postcode"';
is name('IE'), 'Eircode', '"IE" returns "Eircode"';

is name('GB', 'EN'), 'Postcode', '"GB" returns "Postcode" when using "EN" language parameter';
is name('GB', 'FR'), '?', '"GB" returns "?" when using "FR" language parameter - As I do not know the French';

is name('FR', 'EN'), 'Postal Code', '"FR" returns "Postal Code" when using "EN" language parameter';
is name('FR', 'FR'), 'Code Postal', '"FR" returns "Code Postal" when using "FR" language parameter';