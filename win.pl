#!/usr/bin/env perl

use feature qw{ say state } ;
use strict ;
use warnings ;
use utf8 ;

if ( $ARGV[0] and $ARGV[0] !~ /\D/ ) {
    sleep $ARGV[0] ;
    }

say 'WIN' ;
exit 0 ;

