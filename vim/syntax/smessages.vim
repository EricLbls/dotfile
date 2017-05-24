" $Id: syslog.vim,v 1.1 2002/09/17 16:10:00 rhiestan Exp $
" Vim syntax file
" Language:	SONAS messages log file
" Maintainer:	Suad Musovich <musovich@nz.ibm.com>
" Last Change:	$Date: 2015/09/17 09:50:00 $
" Remark: Add some color to log files produced by sysklogd.

if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syn match	syslogText	/.*$/
		\ contains=messagesSevere,messagesError,messagesWarn,messagesInfo,messagesStack
syn match	syslogFacility	/.\{-1,}:/	nextgroup=syslogText skipwhite
syn match	syslogHost	/\S\+/	nextgroup=syslogFacility,syslogText skipwhite
syn match	syslogDate	/^.\{-}T\d\d:\d\d:\d\d\.[0-9]\{6\}+\d\d:\d\d/	nextgroup=syslogHost skipwhite
		\ contains=syslogTimezone,syslogDatestamp
syn match   syslogTimezone    contained '\.\d\d\d\d\d\d+\d\d:\d\d'
syn match   syslogDatestamp    contained '^\d\d\d\d-\d\d-\d\dT'

syn match   messagesSevere       contained '\c.*\<\(Unable to get ALLDB locks\|oom-killer\|Out of memory:\|Killed process \|Linux version \|GPFS Error\|GPFS quorum loss\|Received SHUTDOWN\|is dead:\|Hung-script\|MMFS_FSTRUCT\|This node has been banned\|Banning this node\|INTERNAL ERROR\).*'
syn match   messagesError        contained '\c.*\<\(Abort command issued\|MMFS_ABNORMAL_SHUTDOWN\|failed RPC check\|I\/O Error\|MMFS_DISKFAIL\|MMFS_SYSTEM_UNMOUNT\|Held tdb lock on db\|MMFS_LONG\|ctdbd-lock\|Unable to get RECORD lock\|Freeze priority\|Killing TCP connecti\|lock_helper:\|db_ctdb_fetch_locked\).*'
syn match   messagesWarn        contained '\c.*\<\(timed out after\|tdb_chainunlock\|[<[0-9a-f]\+>\]\|mmdelsnapshot failed\|took unexpectedly long\|is not responding\|caught signal\|tdb is big\|recoverd:\|stale file handle\|RECORD lock schedule took\).*'
syn match   messagesInfo        contained '\c.*\<\(OK  ]\|WINBINDD_OK\|Node became HEALTHY\|GPFS quorum reached\|children\|authenticated .*mount request from\).*'
syn match   messagesStack 	contained '\c.*\<\(#\d \|Dumping core in\|dump_core\|BACKTRACE\).*'

if !exists("did_syslog_syntax_inits")
  let did_syslog_syntax_inits = 1
endif
  hi link syslogDatestamp	Comment 
  hi link syslogDate  		Normal 
  hi link syslogTimezone  	Comment "Title
  hi link syslogHost		Comment "Title 
  hi link syslogFacility	Normal
  hi link syslogFacilityRed	WarningMsg
  hi link syslogText 		Statement
  hi link syslogNumber 		MoreMsg
  hi link messagesSevere 	ErrorMsg
  hi link messagesError		WarningMsg
  hi link messagesWarn		Special
  hi link messagesInfo  	Type 
  hi link messagesStack 	ErrorMsg

let b:current_syntax="smessages"
