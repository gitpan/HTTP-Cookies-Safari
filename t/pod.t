# $Id: pod.t,v 1.1 2003/01/08 05:44:47 comdog Exp $
BEGIN {
	use File::Find::Rule;
	@files = File::Find::Rule->file()->name( '*.pm' )->in( 'blib/lib' );
	}

use Test::More tests => scalar @files;
use Test::Pod;

foreach my $file ( @files )
	{
	pod_ok( $file );
	}

