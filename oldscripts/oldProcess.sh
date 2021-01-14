##########################################################################
# Title      :	psold - show old processes
# Requires   :	awk
# Category   :	SysAdmin
##########################################################################
# Description
#   Check for Old processes running on sys
##########################################################################

# SYSV or BSD ps?
[ $# -gt 0 ] && Args=`echo "$@" | sed 's:[ 	-]::g'`
if ps aux >/dev/null 2>&1
then
    PsArgs=auxww
    TimeCol=9			# Column for the starting time
else
    PsArgs=-ef
    TimeCol=5
fi

ps $PsArgs${Args} |
    awk "\$$TimeCol ~ /^[a-zA-Z][a-z][a-z]/" |
    sort

    echo "$PsArgs${Args}"h
