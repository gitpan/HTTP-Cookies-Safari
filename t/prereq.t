#$Id: prereq.t,v 1.3 2004/09/02 01:42:47 comdog Exp $
use Test::More;
eval "use Test::Prereq";
plan skip_all => "Test::Prereq required to test dependencies" if $@;
prereq_ok();
