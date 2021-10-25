#!/usr/bin/perl
use strict;
use warnings;
use CGI;

my $q = CGI->new;
my $name = $q->param('search');
print $q->header('text/html');
$name =~ s/ /+/g;
my $search = cadenaSearch();

print<<BLOCK;
<!DOCTYPE html>
<html>
  <head>
    <title>Google Images</title>
  </head>

  <body>
    <a href="$search=$name&tbm=isch" target="_blank">Search in Google Images</a>
    <a href="../imagesGoogle.html">Return to Google</a>
  </body>
BLOCK

sub cadenaSearch{
  my $google = 'https://www.google.com/search?q';
  return $google;
}
