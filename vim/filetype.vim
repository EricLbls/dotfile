au BufRead,BufNewFile messages.*,*.messages.sml setfiletype smessages  " format for SONAS messages file
au BufRead,BufNewFile *.messages,*.messages.all setfiletype emessages  " format for ESS messages file
au BufRead,BufNewFile *mmfs.log*,*mmfslogs*,mmlsrecoverygroupevents* setfiletype mmfslog " format for GPFS log file
