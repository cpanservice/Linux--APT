#!/usr/bin/perl

use Linux::APT;
use Data::Dumper;

my $apt = Linux::APT->new;
my $search = $apt->search({in=>['name', 'description']}, 'linux[\s-]image', 'linux[\s-]source', 'linux kernel image');
print Dumper($search);
