##########################################################################
# Title      :	tippyTop - show top 10 disk usage users
# Requires   :	nawk
# Category   :	SysAdmin
# SCCS-Id.   :	@(#) dusage	1.2 03/12/19
##########################################################################
#!/bin/zsh
PN=`basename "$0"`			# Program name
VER='1.2'

Tmp=${TMPDIR:=/tmp}/hdu$$	# Temporary file
UserFile=no			# Got file with arg "-f"?
Header=no			# Header line? (yes/nein)
Min=0				# min. percent value that should be printed

usage () {
    echo >&2 "$PN - special version of \"du\", $VER (stv '94)
usage: $PN [-H] [-p percent] [-f file] [directory ...]
    -H (header)    print header
    -p (percent)   only print lines counting for more than <percent>
    -f (file)      use specified file (default: call 'du')

The file specified with option \"-f\" must have only numbers
in the first column."
    exit 1
}

fatal () {
    for i
    do echo "$PN: $i" >&2
    done
    exit 1
}

set -- `getopt 'f:Hhp:' "$@"` || usage
while [ $# -gt 0 ]
do
    case "$1" in
	-f)	# File name follows. "-" means standard input.
		# File may be read more than once, so create a copy
		cat "$2" > "$Tmp" || exit 1
		UserFile=yes
		shift;;
	-H)	Header=yes;;
	-p)	Min="$2"; shift
		case "$Min" in
		    [0-9]*)	;;	# seems to be a number
		    *)	fatal "-p needs a number between 0 and 100!"
		esac ;;
	--)	break;;			# end of flags
	-h|-*)	usage;;
    esac
    shift
done
shift				# getopt appends terminating '--'

# Remove temporary file in case of exit or signal
trap "rm -f $Tmp; exit 1" 0
trap "exit 1" 1 2 3 15

if [ $UserFile = yes ]
then
    [ $# -gt 0 ] &&
	fatal "no directory names allowed with option -f"
    Total=`awk '{s+=$1}; END {print s}' "$Tmp"`
else
    du "$@" > "$Tmp" || exit 1

    # If "du" was called with less than two arguments, the totals
    # are summarized in the last line. Otherwise we have to
    # calculate them ourselves.
    if [ $# -lt 2 ]
    then Total=`tail -1 $Tmp | sed 's/^[ 	]*\([0-9][0-9]*\).*/\1/'`
    else Total=`awk '{s+=$1}; END {print s}' $Tmp`
    fi
fi

[ $Header = yes ] && echo "Percent	KB	Directory"
cat "$Tmp" |
    awk '{ p=($1*100)/'$Total'; if (p>'$Min') printf "%d\t%s\n", p, $0}' |
    sort -r -n +1