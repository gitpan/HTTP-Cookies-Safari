# $Id: compile.t,v 1.2 2004/09/17 18:09:45 comdog Exp $
BEGIN {
	@classes = qw( HTTP::Cookies::Safari );
	}

use Test::More tests => scalar @classes;
	
foreach my $class ( @classes )
	{
	print "bail out! $class did not compile" unless use_ok( $class );
	}

