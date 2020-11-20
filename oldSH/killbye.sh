##########################################################################
# Title      :	killBye - kill process by name
# Date       :	September, 12, 2018
# Requires   :	xargs
# Category   :	System Utilities
##########################################################################
# Notes
#	BSD / sunOS compatible
##########################################################################

PN=`basename "$0"`			# Program name
VER='1.3'

# Grace period to wait after "kill" for process to terminate
Grace=3

if ps ax >/dev/null 2>&1
then
    PsDefault=ax			# Arguments to "ps"
    PIDCol=1				# Column number of PID
else
    PsDefault=-ef
    PIDCol=2
fi

usage () {
    echo >&2 "$PN - kill process by name, $VER (hs '95)
usage: $PN [-signal] [-psargs] name [name ...]
    -signal:	signal number (default is first 15, then 9)
    -psargs:	arguments to the 'ps'-command

name is any string matching the 'ps' output. There is no way to
kill a command named $PN.

The default ps command is
	ps -$PsDefault."
    exit 1
}

msg ()	{ echo "$PN: $*" >&2; }
fatal () { msg "$@"; exit 1; }

# Collect Parameters for ps
while [ $# -gt 0 ]
do
    case "$1" in
	--)	shift; break;;
	-[1-9]|-[1-3][0-9])		# Signal number
		Sig=`expr "$1" : '-\(.*\)'`
		;;
	-h)	usage;;
	# Special Handling for BSD ps:
	-u)	;;
	-t)	PsOpt="${PsOpt}t$2";;
	-*)	PsOpt="${PsOpt}`echo "$1" | sed 's:^-::'`";;
	*)	break;;			# First process name
    esac
    shift
done

[ $# -lt 1 ] && usage

: ${PsOpt:=$PsDefault}			# Default for ps
PsOpt="${PsOpt}"			# Show real command name

# Bring process names in a form suitable for awk:
#	"one two tree" -> "[o]ne|[t]wo|[t]hree"
# The square brackerts assert that awk does not match itself.
Search=
for i
do Search="${Search:+$Search|}`echo "$i" | sed -e 's:^\(.\):\[\1\]:'`"
done

PIDS=`ps "$PsOpt" |
	awk '($0 ~ /'"$Search"'/ && $0 !~ /'"$PN"'/) {print $'$PIDCol'}'`

[ -z "$PIDS" ] && fatal "no matching processes found"
msg ${Sig:+"signal $Sig, "}pids: $PIDS

if expr "$Sig" + 0 > /dev/null 2>&1
then
    # Signal explicitely given: don't send SIGKILL
    echo $PIDS | xargs kill -"$Sig"
else
    (echo $PIDS | xargs kill
    sleep ${Grace:-1}
    echo $PIDS | xargs kill -9 > /dev/null 2>&1)&
fi