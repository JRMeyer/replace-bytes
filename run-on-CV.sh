NUM_BYTES=$1
INFILE=$2
OUTFILE=$3

paste -d"," <( cut -d"," -f1,2 $INFILE ) \
<( \
   cat <( head -1 $INFILE | cut -d"," -f3- ) \
   <(tail +2 $INFILE | cut -d"," -f3- | ./replace-bytes.sh $NUM_BYTES) \
   ) \
>$OUTFILE
