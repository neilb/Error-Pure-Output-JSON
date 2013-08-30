#!/usr/bin/env perl

# Pragmas.
use strict;
use warnings;

# Modules.
use Error::Pure::Output::JSON qw(err_json);

# Set pretty output.
$Error::Pure::Output::JSON::PRETTY = 1;

# Fictional error structure.
my $err_hr = {
        'msg' => [
                'FOO',
                'KEY',
                'VALUE',
        ],
        'stack' => [
                {
                        'args' => '(2)',
                        'class' => 'main',
                        'line' => 1,
                        'prog' => 'script.pl',
                        'sub' => 'err',
                }, {
                        'args' => '',
                        'class' => 'main',
                        'line' => 20,
                        'prog' => 'script.pl',
                        'sub' => 'eval {...}',
                }
        ],
};

# Print out.
print err_json($err_hr);

# Output:
# TODO