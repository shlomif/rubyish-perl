#!/usr/bin/env perl

use lib qw(lib examples/lib);
use Rubyish;

$obj = Rubyish::Object->new;

Rubyish::Kernel::puts $obj->object_id;

$methods = $obj->methods;

puts $obj->methods;


