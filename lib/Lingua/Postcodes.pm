use strict;
use warnings;
package Lingua::Postcodes;
use base 'Exporter';
our @EXPORT = 'name';

our %POSTCODES = (
    GB => 'Postcode',
    IE => 'Eircode',
    IN => 'PIN Code',
    US => 'Zip code',
);

sub name {
    my $country_code = shift;
    return undef unless exists $POSTCODES{$country_code};

    return $POSTCODES{$country_code};
}
1;
