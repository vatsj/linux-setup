if ! test -f blah.txt
then
  echo 3
fi

touch blah.txt

if ! test -f blah.txt
then
  echo 4
fi

rm blah.txt
