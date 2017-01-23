Ding
====

A Perl-and-Linux reimplementation of the Python-and-OSX Ding by (globau)[https://github.com/globau/ding/] 

Installation
------------

Requires mpg123 for audio playing. To install on Ubuntu:

    sudo apt install mpg321

Also requires DateTime and DateTime::Duration to handle running-time calculations.
To install for system Perl on Ubuntu:

    sudo apt install libdatetime-perl libdatetime-format-duration-perl

Also requires two audio files (ding.mp3 and error.mp3) which are stored in
$HOME/sounds. The included audio files are taken from globau's Ding, but you 
can replace them with your own sounds.

Usage
-----

    ding.pl long_running_task -a 12 -q 45 -q 43 

If the program returns an error, it plays a 'bad' audio file. If, by contrast, 
the program exits normally, it plays a 'good' audio file.

win.pl and fail.pl are included for demonstration purposes as programs that 
will reliably exit or die as desired.
