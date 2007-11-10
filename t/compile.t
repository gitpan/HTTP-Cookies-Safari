# $Id: compile.t 1479 2004-09-17 18:09:45Z comdog $
BEGIN {
	@classes = qw( HTTP::Cookies::Safari );
	}

use Test::More tests => scalar @classes;
	
foreach my $class ( @classes )
	{
	print "bail out! $class did not compile" unless use_ok( $class );
	}

