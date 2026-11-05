lineastotal=$( cat $1 | wc -l )
if [[ -z $2 ]]; then X=3; else X=$2; fi
if [[ $lineastotal -le $(( 2 * X)) ]]; then cat $1; else echo "Warning message!!!"; head -n $X $1; echo "..." ; tail -n $X $1; fi
