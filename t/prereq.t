#$Id: prereq.t 1364 2004-09-02 01:42:47Z comdog $
use Test::More;
eval "use Test::Prereq";
plan skip_all => "Test::Prereq required to test dependencies" if $@;
prereq_ok();
