# gcc -Wall:    Enable all warnings
# gcc -c:       Do not link
# gcc -g:       Add debug symbols
# gcc -lm:      Link to libm(ath)
# gcc -o:       Output file name
#
# Makefile $@:  The file name of the target of the rule
# Makefile $^:  The names of all the prerequisites
#
# ar -c:        Create the archive
# ar -r:        Update existing files in an archive
# ar -s:        Add or update an archive index

main: main.c liba.a libb.a
	gcc -g -Wall -o $@ $^ -lm

liba.o: liba.c
	gcc -g -Wall -c -o $@ $^

libb.o: libb.c
	gcc -g -Wall -c -o $@ $^

liba.a: liba.o
	ar -csr $@ $^

libb.a: libb.o
	ar -csr $@ $^

libab.a: liba.a libb.a
	echo 'CREATE $@\nADDLIB liba.a\nADDLIB libb.a\nSAVE\nEND' | ar -M

clean:
	rm -rf *.o *.a main
