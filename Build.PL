#!/usr/bin/env perl

use strict;
use warnings;
use Module::Build;

my $build = Module::Build->new(
	build_requires => {
		'Test::More' => 0,
		'Test::Compile' => 0,
		'Test::Pod' => 0,
		'Test::Command' => 0,
	},
	dist_name => 'efa',
	dist_version_from => 'bin/efa',
	license => 'unrestricted',
	requires => {
		'perl' => '5.10.0',
		'Getopt::Long' => 0,
		'XML::LibXML' => 0,
		'WWW::Mechanize' => 0,
	},
	script_files => 'bin/',
);
$build->create_build_script;