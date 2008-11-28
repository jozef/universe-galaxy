#!/usr/bin/perl

use strict;
use warnings;

#use Test::More 'no_plan';
use Test::More tests => 3;
use Test::Differences;
use Test::Exception;

use FindBin qw($Bin);
use lib "$Bin/lib";

BEGIN {
    use_ok ( 'Universe::SuperCluster::Cluster::Galaxy::SolarSystem::Planet::Earth' ) or exit;
}

exit main();

sub main {
    ok(
        Universe::SuperCluster::Cluster::Galaxy::SolarSystem::Planet::Earth->info,
        'Get Earth information'
    );
    
    is(
        Universe::SuperCluster::Cluster::Galaxy::SolarSystem::Planet::Earth->ultimate_answer,
        42,
        'Check ultimate answer to the ultimate question'
    );
    
    return 0;
}
