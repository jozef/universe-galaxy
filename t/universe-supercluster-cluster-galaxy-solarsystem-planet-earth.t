#!/usr/bin/perl

use strict;
use warnings;

#use Test::More 'no_plan';
use Test::More tests => 2;
use Test::Differences;
use Test::Exception;

use FindBin qw($Bin);
use lib "$Bin/lib";

BEGIN {
    use_ok ( 'Universe::SuperCluster::Cluster::Galaxy::SolarSystem::Planet::Earth' ) or exit;
}

exit main();

sub main {
    is(
        Universe::SuperCluster::Cluster::Galaxy::SolarSystem::Planet::Earth->ultimate_answer,
        42,
        'Check utimate answer to the utimate question'
    );
    
    return 0;
}
