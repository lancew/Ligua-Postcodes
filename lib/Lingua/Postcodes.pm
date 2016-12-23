use strict;

package Lingua::Postcodes;

use warnings;
use utf8;

# ABSTRACT: Returns the names of postcodes/zipcodes

use base 'Exporter';
our @EXPORT = 'name';

our %POSTCODES = (
    AL => { EN => 'Post Code',   AL => 'Kodi Postar' },
    FR => { EN => 'Postal Code', FR => 'Code Postal' },
    GB => { EN => 'Postcode',    FR => '?' },
    IE => { EN => 'Eircode',     FR => '?' },
    IN => { EN => 'PIN Code',    FR => '?' },
    RO => { EN => 'Postal Code', RO => 'Cod poștal' },
    US => { EN => 'Zip code',    FR => '?' },
);

sub name {
    my $country_code = shift;
    if ( @_ == 0 ) {
        return undef unless exists $POSTCODES{$country_code};

        return $POSTCODES{$country_code}{'EN'};
    }
    else {
        my $language = shift;
        return undef unless exists $POSTCODES{$country_code}{$language};

        return $POSTCODES{$country_code}{$language};
    }
}
1;

=head1 NAME 

Lingua::Postcodes - Provide names for postcodes/zipcodes

=cut
