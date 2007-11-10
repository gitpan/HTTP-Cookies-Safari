# $Id: pod_coverage.t 1623 2005-03-12 05:55:17Z comdog $

use Test::More;
eval "use Test::Pod::Coverage";

if( $@ )
	{
	plan skip_all => "Test::Pod::Coverage required for testing POD";
	}
else
	{
	plan tests => 1;

	pod_coverage_ok( "HTTP::Cookies::Safari", {
		trustme => [ qr/load|save/ ],
		}
		);      
	}
