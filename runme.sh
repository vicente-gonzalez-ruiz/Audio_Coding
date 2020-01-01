export BIBINPUTS=":.:/home/vruiz/bibs/:"
make clean
make index.pdf
rm -f citations
grep citation ~/differential_coding/index.aux >> citations
grep citation ~/MP3/index.aux >> citations
grep citation ~/Vorbis/index.aux >> citations
cat citations >> index.aux
bibtex index
make index.html
