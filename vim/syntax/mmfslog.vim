" $Id: syslog.vim,v 1.1 2002/09/17 16:10:00 rhiestan Exp $
" Vim syntax file
" Language:	GPFS log file
" Maintainer:	Weijian Zang <wjzang@cn.ibm.com>
" Last Change:	$Date: 2017/05/31 00:50:00 $
" Remark: Ver. 0.1 alpha

if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syn match	syslogText	/.*$/
		\ contains=messagesSevere,messagesError,messagesWarn,messagesInfo,messagesStack

" Sat May 27 19:03:58.747 2017: [I] Command: mmdf /dev/fs4
syn match   syslogDatestamp	/\(Mon\|Tue\|Wed\|Thu\|Fri\|Sat\|Sun\)/ nextgroup=syslogDate    skipwhite
syn match   syslogDate	'\(Jan\|Feb\|Mar\|Apr\|May\|Jun\|Jul\|Aug\|Sep\|Oct\|Nov\|Dec\) [ 0-9]\d *' nextgroup=syslogTime skipwhite
syn match   syslogTime   '\d\d:\d\d:\d\d.\d\d\d'    nextgroup=syslogYear    skipwhite 
syn match   syslogYear      '\d\d\d\d[ :] *'  
"syn match   syslogYear      /\d\d\d\d:/     nextgroup=syslogText  skipwhite
syn match   messagesInfo        contained '\c.*\<\([[I]]\).*'
syn match   messagesWarn        contained '\c.*\<\([[N]]\|[[C]]\|No space left on device\|File system has been deleted\|unmount\|mmbackup\|Now serving\|takeover\).*'
syn match   messagesError        contained '\c.*\<\([[W]]\|[[D]]\|Invalid argument\|deadlock\|expel\).*'
syn match   messagesSevere        contained '\c.*\<\([[E]]\|[[X]]\|Input\/output error\|No such device\|Failed to open\|err [1-9]\|SGPanic\).*'

if !exists("did_syslog_syntax_inits")
  let did_syslog_syntax_inits = 1
endif
  hi link syslogYear    	Comment 
  hi link syslogDatestamp    	Comment 
  hi link syslogDate  		Comment 
  hi link syslogTime     	Normal
  hi link syslogText 		Statement
  hi link syslogNumber 		MoreMsg
  hi link messagesSevere 	ErrorMsg
  hi link messagesError		WarningMsg
  hi link messagesWarn		Special
  hi link messagesInfo  	Type 
  hi link messagesStack 	ErrorMsg

let b:current_syntax="mmfslog"
