#!/usr/bin/env perl

use feature qw{ say state } ;
use strict ;
use warnings ;
use utf8 ;

use DateTime ;
use DateTime::Duration ;

my $sound = join '/', $ENV{HOME}, 'sounds' ;
my $ding  = join '/', $sound, 'ding.mp3' ;
my $error = join '/', $sound, 'error.mp3' ;

if ( scalar @ARGV ) {
    my $start = DateTime->now() ;
    if ( system(@ARGV) == 0 ) {
        qx{mpg123 -q $ding} ;
        }
    else {
        qx{mpg123 -q $error} ;
        }
    my $end      = DateTime->now() ;
    my $duration = $end->subtract_datetime_absolute($start) ;
    my $seconds = $duration->delta_seconds();
    say qq{process took $seconds seconds};
    }
else {
    qx{mpg123 -q $ding} ;
    }

__DATA__

    As I understand ding

    if there's something in ARGV
        get starting timestamp
        try
            sound = error
            syscall ARGV
            sound = ding
        catch
            if error, print error
        get ending timestamp
        find duration between both 
        if duration > 1 seconds
            print elaptsed time

    else
        play ding

