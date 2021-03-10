A=$@

line=`grep -i -r "^#+\(TITLE\|ALIAS\)" | grep -i "\(: \|, \|\[\[\)$A\($\|\]\]\)" | head -n 1 | cut -d":" -f1`

if [[ "$line" != "" ]]
then
    echo -n $line
else
    fn=`echo "$A" | sed 's/[^a-zA-Zа-яА-Я0-9]/_/g' | sed 's/№/_/g'`.org
    echo "#+TITLE: $A" > $fn
    echo -n $fn
fi
