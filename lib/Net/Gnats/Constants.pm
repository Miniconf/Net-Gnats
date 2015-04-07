package Net::Gnats::Constants;
use strictures;
require Exporter;
our @ISA = qw(Exporter);

our @EXPORT_OK =
  qw( CODE_GREETING CODE_CLOSING CODE_OK CODE_SEND_PR CODE_SEND_TEXT
      CODE_NO_PRS_MATCHED CODE_NO_ADM_ENTRY CODE_PR_READY CODE_TEXT_READY
      CODE_INFORMATION CODE_INFORMATION_FILLER CODE_NONEXISTENT_PR
      CODE_EOF_PR CODE_UNREADABLE_PR CODE_INVALID_PR_CONTENTS
      CODE_INVALID_FIELD_NAME CODE_INVALID_ENUM CODE_INVALID_DATE
      CODE_INVALID_FIELD_CONTENTS CODE_INVALID_SEARCH_TYPE CODE_INVALID_EXPR
      CODE_INVALID_LIST CODE_INVALID_DATABASE CODE_INVALID_QUERY_FORMAT
      CODE_NO_KERBEROS CODE_AUTH_TYPE_UNSUP CODE_NO_ACCESS CODE_LOCKED_PR
      CODE_GNATS_LOCKED CODE_GNATS_NOT_LOCKED
      CODE_PR_NOT_LOCKED
      CODE_INVALID_FTYPE_PROPERTY
      CODE_CMD_ERROR CODE_WRITE_PR_FAILED CODE_ERROR CODE_TIMEOUT 
      CODE_NO_GLOBAL_CONFIG CODE_INVALID_GLOBAL_CONFIG CODE_NO_INDEX
      CODE_FILE_ERROR

      SENDINCLUDE REASONCHANGE READONLY AUDITINCLUDE SENDREQUIRED
      REPLY_CONT REPLY_END RESTART_CHECK_THRESHOLD

      CATEGORY_FIELD SYNOPSIS_FIELD SUBMITTER_ID_FIELD ORIGINATOR_FIELD
      AUDIT_TRAIL_FIELD RESPONSIBLE_FIELD LAST_MODIFIED_FIELD NUMBER_FIELD
      STATE_FIELD UNFORMATTED_FIELD RELEASE_FIELD REPLYTO_FIELD

      CR LF CRLF DOT CONT

      MAX_NEW_PRS);

BEGIN {
  sub CR () { "\015" }
  sub LF () { "\012" }
  sub CRLF () { "\015\012" }
  sub DOT () { '.' }
  sub CONT () { '-' }


  sub CODE_GREETING () { 200 }
  sub CODE_CLOSING () { 201 }
  sub CODE_OK () { 210 }
  sub CODE_SEND_PR () { 211 }
  sub CODE_SEND_TEXT () { 212 }
  sub CODE_NO_PRS_MATCHED () { 220 }
  sub CODE_NO_ADM_ENTRY () { 221 }
  sub CODE_PR_READY () { 300 }
  sub CODE_TEXT_READY () { 301 }
  sub CODE_INFORMATION () { 350 }
  sub CODE_INFORMATION_FILLER () { 351 }
  sub CODE_NONEXISTENT_PR () { 400 }
  sub CODE_EOF_PR () { 401 }
  sub CODE_UNREADABLE_PR () { 402 }
  sub CODE_INVALID_PR_CONTENTS    () { 403 }
  sub CODE_INVALID_FIELD_NAME    () { 410 }
  sub CODE_INVALID_ENUM           () { 411 }
  sub CODE_INVALID_DATE           () { 412 }
  sub CODE_INVALID_FIELD_CONTENTS () { 413 }
  sub CODE_INVALID_SEARCH_TYPE    () { 414 }
  sub CODE_INVALID_EXPR            () { 415 }
  sub CODE_INVALID_LIST            () { 416 }
  sub CODE_INVALID_DATABASE       () { 417 }
  sub CODE_INVALID_QUERY_FORMAT   () { 418 }
  sub CODE_NO_KERBEROS             () { 420 }
  sub CODE_AUTH_TYPE_UNSUP         () { 421 }
  sub CODE_NO_ACCESS                () { 422 }
  sub CODE_LOCKED_PR                () { 430 }
  sub CODE_GNATS_LOCKED            () { 431 }
  sub CODE_GNATS_NOT_LOCKED        () { 432 }
  sub CODE_PR_NOT_LOCKED           () { 433 }
  sub CODE_INVALID_FTYPE_PROPERTY () { 435 }
  sub CODE_CMD_ERROR                () { 440 }
  sub CODE_WRITE_PR_FAILED         () { 450 }
  sub CODE_ERROR                    () { 600 }
  sub CODE_TIMEOUT                  () { 610 }
  sub CODE_NO_GLOBAL_CONFIG        () { 620 }
  sub CODE_INVALID_GLOBAL_CONFIG  () { 621 }
  sub CODE_NO_INDEX                 () { 630 }
  sub CODE_FILE_ERROR               () { 640 }

# bits in fieldinfo(field, flags) has (set=yes not-set=no) whether the
# send command should include the field
  sub SENDINCLUDE                 () { 1 }

# whether change to a field requires reason
  sub REASONCHANGE                () { 2 }

# if set, can't be edited
  sub READONLY                    () { 4 }

# if set, save changes in Audit-Trail
  sub AUDITINCLUDE                () { 8 }

# whether the send command _must_ include this field
  sub SENDREQUIRED                () { 16 }

# The possible values of a server reply type.  $REPLY_CONT means that
# there are more reply lines that will follow, $REPLY_END Is the final
# line.
  sub REPLY_CONT                  () { 1 }
  sub REPLY_END                   () { 2 }

# This was found as an 'arbitrary' restart value.
  sub RESTART_CHECK_THRESHOLD     () { 5 }

# Various PR field names that should probably not be referenced in
# here.
#

# Actually, the majority of uses are probably OK--but we need to map
# internal names to external ones.  (All of these field names
# correspond to internal fields that are likely to be around for a
# long time.)
#

  sub CATEGORY_FIELD              () { 'Category' }
  sub SYNOPSIS_FIELD              () { 'Synopsis' }
  sub SUBMITTER_ID_FIELD          () { 'Submitter-Id' }
  sub ORIGINATOR_FIELD            () { 'Originator' }
  sub AUDIT_TRAIL_FIELD           () { 'Audit-Trail' }
  sub RESPONSIBLE_FIELD           () { 'Responsible' }
  sub LAST_MODIFIED_FIELD         () { 'Last-Modified' }

  sub NUMBER_FIELD                () { 'builtinfield:Number' }
  sub STATE_FIELD                 () { 'State' }
  sub UNFORMATTED_FIELD           () { 'Unformatted' }
  sub RELEASE_FIELD               () { 'Release' }
  sub REPLYTO_FIELD               () { 'Reply-To' }

  sub MAX_NEW_PRS () { 100 }

  
}



=head1 PROTOCOL RESPONSE CODES

=head2 CODE_GREETING

=cut

*CR = \CR();
*LF = \LF();
*CRLF = \CRLF();
*DOT = \DOT();
*CONT = \CONT();
*CODE_GREETING = \CODE_GREETING();
*CODE_CLOSING = \CODE_CLOSING();
*CODE_OK = \CODE_OK();
*CODE_SEND_PR = \CODE_SEND_PR();
*CODE_SEND_TEXT = \CODE_SEND_TEXT();
*CODE_NO_PRS_MATCHED = \CODE_NO_PRS_MATCHED();
*CODE_NO_ADM_ENTRY = \CODE_NO_ADM_ENTRY();
*CODE_PR_READY = \CODE_PR_READY();
*CODE_TEXT_READY = \CODE_TEXT_READY();
*CODE_INFORMATION = \CODE_INFORMATION();
*CODE_INFORMATION_FILLER = \CODE_INFORMATION_FILLER();
*CODE_NONEXISTENT_PR = \CODE_NONEXISTENT_PR();
*CODE_EOF_PR = \CODE_EOF_PR();
*CODE_UNREADABLE_PR = \CODE_UNREADABLE_PR();
*CODE_INVALID_PR_CONTENTS = \CODE_INVALID_PR_CONTENTS();
*CODE_INVALID_FIELD_NAME = \CODE_INVALID_FIELD_NAME();
*CODE_INVALID_ENUM = \CODE_INVALID_ENUM();
*CODE_INVALID_DATE = \CODE_INVALID_DATE();
*CODE_INVALID_FIELD_CONTENTS = \CODE_INVALID_FIELD_CONTENTS();
*CODE_INVALID_SEARCH_TYPE = \CODE_INVALID_SEARCH_TYPE();
*CODE_INVALID_EXPR = \CODE_INVALID_EXPR();
*CODE_INVALID_LIST = \CODE_INVALID_LIST();
*CODE_INVALID_DATABASE = \CODE_INVALID_DATABASE();
*CODE_INVALID_QUERY_FORMAT = \CODE_INVALID_QUERY_FORMAT();
*CODE_NO_KERBEROS = \CODE_NO_KERBEROS();
*CODE_AUTH_TYPE_UNSUP = \CODE_AUTH_TYPE_UNSUP;
*CODE_NO_ACCESS = \CODE_NO_ACCESS();
*CODE_LOCKED_PR = \CODE_LOCKED_PR();
*CODE_GNATS_LOCKED = \CODE_GNATS_LOCKED();
*CODE_GNATS_NOT_LOCKED = \CODE_GNATS_NOT_LOCKED();
*CODE_PR_NOT_LOCKED = \CODE_PR_NOT_LOCKED();
*CODE_INVALID_FTYPE_PROPERTY = \CODE_INVALID_FTYPE_PROPERTY();
*CODE_CMD_ERROR = \CODE_CMD_ERROR();
*CODE_WRITE_PR_FAILED = \CODE_WRITE_PR_FAILED();
*CODE_ERROR = \CODE_ERROR();
*CODE_TIMEOUT = \CODE_TIMEOUT();
*CODE_NO_GLOBAL_CONFIG = \CODE_NO_GLOBAL_CONFIG();
*CODE_INVALID_GLOBAL_CONFIG = \CODE_INVALID_GLOBAL_CONFIG();
*CODE_NO_INDEX = \CODE_NO_INDEX();
*CODE_FILE_ERROR = \CODE_FILE_ERROR();

*SENDINCLUDE = \SENDINCLUDE();
*REASONCHANGE = \REASONCHANGE();
*READONLY = \READONLY();
*AUDITINCLUDE = \AUDITINCLUDE();
*SENDREQUIRED = \SENDREQUIRED();
*REPLY_CONT = \REPLY_CONT();
*REPLY_END = \REPLY_END();

*RESTART_CHECK_THRESHOLD = \RESTART_CHECK_THRESHOLD();

*CATEGORY_FIELD = \CATEGORY_FIELD();
*SYNOPSIS_FIELD = \SYNOPSIS_FIELD();
*SUBMITTER_ID_FIELD = \SUBMITTER_ID_FIELD();
*ORIGINATOR_FIELD = \ORIGINATOR_FIELD();
*AUDIT_TRAIL_FIELD = \AUDIT_TRAIL_FIELD();
*RESPONSIBLE_FIELD = \RESPONSIBLE_FIELD();
*LAST_MODIFIED_FIELD = \LAST_MODIFIED_FIELD();
*NUMBER_FIELD = \NUMBER_FIELD();
*STATE_FIELD = \STATE_FIELD();
*UNFORMATTED_FIELD = \UNFORMATTED_FIELD();
*RELEASE_FIELD = \RELEASE_FIELD();
*REPLYTO_FIELD = \REPLYTO_FIELD();

1;

