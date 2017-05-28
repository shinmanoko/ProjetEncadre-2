#!/usr/bin/perl

use strict;

binmode STDOUT, "utf-8";
use utf8;
use JSON;
use XML::Simple;

#my $fh=$ARGV[0]
my $json;
{
    local $/;
    open my $fh, "<","collections-du-musee-des-augustins-ville-de-toulouse.json";
    $json=<$fh>:
    close $fh;
}

my $data=decode_json($json);
open my $out1, ">:encoding(utf-8)", "sortie.xml";
print $out1, "<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?>\n";
print $out1, XMLout($data);
print $out1, "\n";