#!/usr/bin/env perl

use strict;

use lib 't/lib';

use Rubyish;

use Test::More;
plan tests => 7;

my $array = Array([0..100]);

is $array->at(3), 3, "Array#at";
is $array->[3], 3;
is $array->size, 101, "Array#size";
is $array->length, 101, "Array#length";

{
    my $array = Array[0..3];
    is $array->join, "0123";
    is $array->join(","), "0,1,2,3";
    local $, = ",";
    is $array->join, "0,1,2,3";
}
