# $Id: prereq.t,v 1.2 2003/11/27 12:50:55 comdog Exp $
use strict;

use Test::More tests => 1;

SKIP: {
	eval { require Test::Prereq; };

	skip "Skipping POD tests---No Test::Prereq found", 1 if $@;

	Test::Prereq::prereq_ok();
	}