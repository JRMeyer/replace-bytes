NUM_BYTES=$1
INFILE="${2:-/dev/stdin}"
OUTFILE="${3:-/dev/stdout}"

if [ $NUM_BYTES -eq 2 ]; then
    sed -e 's/\(.*\)/\L\1/g' $INFILE | \
    sed 's/a/á/g' | \
    sed 's/b/ƅ/g' | \
    sed 's/c/ć/g' | \
    sed 's/d/đ/g' | \
    sed 's/e/é/g' | \
    sed 's/f/ƒ/g' | \
    sed 's/g/ǵ/g' | \
    sed 's/h/ɦ/g' | \
    sed 's/i/ɨ/g' | \
    sed 's/j/ɟ/g' | \
    sed 's/k/ƙ/g' | \
    sed 's/l/ȴ/g' | \
    sed 's/m/ɱ/g' | \
    sed 's/n/ȵ/g' | \
    sed 's/o/ȯ/g' | \
    sed 's/p/ƥ/g' | \
    sed 's/q/ʠ/g' | \
    sed 's/r/ŕ/g' | \
    sed 's/s/ś/g' | \
    sed 's/t/ţ/g' | \
    sed 's/u/ũ/g' | \
    sed 's/v/ʋ/g' | \
    sed 's/w/ŵ/g' | \
    sed 's/x/χ/g' | \
    sed 's/y/ϒ/g' | \
    sed 's/z/ƶ/g' >$OUTFILE
fi

if [ $NUM_BYTES -eq 3 ]; then
    sed -e 's/\(.*\)/\L\1/g' $INFILE | \
    sed 's/a/ঀ/g' | \
    sed 's/b/অ/g' | \
    sed 's/c/আ/g' | \
    sed 's/d/ই/g' | \
    sed 's/e/ঈ/g' | \
    sed 's/f/উ/g' | \
    sed 's/g/ঊ/g' | \
    sed 's/h/ঋ/g' | \
    sed 's/i/ঌ/g' | \
    sed 's/j/এ/g' | \
    sed 's/k/ঐ/g' | \
    sed 's/l/ও/g' | \
    sed 's/m/ঔ/g' | \
    sed 's/n/ক/g' | \
    sed 's/o/খ/g' | \
    sed 's/p/গ/g' | \
    sed 's/q/ঘ/g' | \
    sed 's/r/ঙ/g' | \
    sed 's/s/চ/g' | \
    sed 's/t/ছ/g' | \
    sed 's/u/জ/g' | \
    sed 's/v/ঝ/g' | \
    sed 's/w/ঞ/g' | \
    sed 's/x/ট/g' | \
    sed 's/y/ঠ/g' | \
    sed 's/z/ড/g' >$OUTFILE
fi

if [ $NUM_BYTES -eq 4 ]; then
    sed -e 's/\(.*\)/\L\1/g' $INFILE | \
    sed 's/a/㐌/g' | \
    sed 's/b/㐖/g' | \
    sed 's/c/㐜/g' | \
    sed 's/d/㐽/g' | \
    sed 's/e/㐼/g' | \
    sed 's/f/㐻/g' | \
    sed 's/g/㐺/g' | \
    sed 's/h/㐹/g' | \
    sed 's/i/㐸/g' | \
    sed 's/j/㐷/g' | \
    sed 's/k/㐶/g' | \
    sed 's/l/㐵/g' | \
    sed 's/m/㐴/g' | \
    sed 's/n/㐳/g' | \
    sed 's/o/㐲/g' | \
    sed 's/p/㐱/g' | \
    sed 's/q/㐰/g' | \
    sed 's/r/㐯/g' | \
    sed 's/s/㐮/g' | \
    sed 's/t/㐭/g' | \
    sed 's/u/㐬/g' | \
    sed 's/v/㐫/g' | \
    sed 's/w/㐪/g' | \
    sed 's/x/㐩/g' | \
    sed 's/y/㐨/g' | \
    sed 's/z/㐧/g' >$OUTFILE
fi
