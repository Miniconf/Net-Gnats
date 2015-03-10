use strict;
use warnings;
use Test::More;
use Test::MockObject;
use Test::MockObject::Extends;
use Net::Gnats;

my $module = Test::MockObject::Extends->new('IO::Socket::INET');
$module->fake_new( 'IO::Socket::INET' );
$module->set_true( 'print' );
$module->set_series( 'getline',
                     "200 my.gnatsd.com GNATS server 4.1.0 ready.\r\n",
                     "440 CODE_CMD_ERROR\r\n",
                     "400 CODE_NONEXISTENT_PR\r\n",
                     "430 CODE_LOCKED_PR\r\n",
                     "666 THE_EVIL_CODE\r\n",
                     "300 CODE_PR_READY\r\n",
                     get_pr(),
                     "301 CODE_TEXT_READY\r\n",
                     "301 CODE_TEXT_READY\r\n",
                     "301 CODE_TEXT_READY\r\n",  # from creating new PR
                   );

my $g = Net::Gnats->new();
$g->gnatsd_connect;

is $g->lock_pr         , undef, 'need two args, got zero';
is $g->lock_pr(1)      , undef, 'need two args, got one';
is $g->lock_pr(1, 'me'), undef, '440 CODE_CMD_ERROR';
is $g->lock_pr(1, 'me'), undef, '400 CODE_NONEXISTENT_PR';
is $g->lock_pr(1, 'me'), undef, '430 CODE_LOCKED_PR (someone else got it first)';
is $g->lock_pr(1, 'me'), undef, '666 THE_EVIL_CODE';
isa_ok $g->lock_pr(1, 'me'), 'Net::Gnats::PR', '300 CODE_PR_READY (recv)';

done_testing();

sub get_pr {
  return <<PR;
Message-Id:  message-id
Date:        date
From:        address
Reply-To:    address
To:          bug-address
Subject:     subject

>Number:       gnats-id
>Category:     category
>Synopsis:     synopsis
>Confidential: yes or no
>Severity:     critical, serious, or non-critical
>Priority:     high, medium or low
>Responsible:  responsible
>State:        open, analyzed, suspended, feedback, or closed
>Class:        sw-bug, doc-bug, change-request, support, 
duplicate, or mistaken
>Submitter-Id: submitter-id
>Arrival-Date: date
>Originator:   name
>Organization: organization
>Release:      release
>Environment:
   environment
>Description:
   description
>How-To-Repeat:
   how-to-repeat
>Fix:
   fix
>Audit-Trail:
appended-messages…
State-Changed-From-To: from-to
State-Changed-When: date
State-Changed-Why:
   reason
Responsible-Changed-From-To: from-to
Responsible-Changed-When: date
Responsible-Changed-Why:
   reason
>Unformatted:
   miscellaneous
.
PR
}

sub get_list {
  return <<END;
foo
bar
baz
END
}
