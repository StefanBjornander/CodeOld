main: main.o malloc.o ctype.o errno.o locale.o math.o setjmp.o signal.o file.o temp.o scanf.o printf.o stdlib.o time.o string.o printtest.o charactertest.o floattest.o limitstest.o asserttest.o stringtest.o localetest.o setjmptest.o mathtest.o filetest.o stdiotest.o signaltest.o stacktest.o malloctest.o stdlibtest.o timetest.o
	ld -o main main.o malloc.o ctype.o errno.o locale.o math.o setjmp.o signal.o file.o temp.o scanf.o printf.o stdlib.o time.o string.o printtest.o charactertest.o floattest.o limitstest.o asserttest.o stringtest.o localetest.o setjmptest.o mathtest.o filetest.o stdiotest.o signaltest.o stacktest.o malloctest.o stdlibtest.o timetest.o

main.o: main.c main.asm stddef.h stdlib.h stdio.h math.h ctype.h stdarg.h stddef.h file.h temp.h scanf.h printf.h math.h string.h errno.h assert.h stdio.h stdlib.h limits.h time.h
	nasm -f elf64 -o main.o main.asm

malloc.o: malloc.c malloc.asm math.h ctype.h errno.h stdio.h math.h ctype.h stdarg.h stddef.h file.h temp.h scanf.h printf.h stdarg.h stddef.h stdlib.h string.h assert.h stdio.h stdlib.h
	nasm -f elf64 -o malloc.o malloc.asm

ctype.o: ctype.c ctype.asm ctype.h stdio.h math.h ctype.h stdarg.h stddef.h file.h temp.h scanf.h printf.h locale.h string.h stddef.h
	nasm -f elf64 -o ctype.o ctype.asm

errno.o: errno.c errno.asm errno.h
	nasm -f elf64 -o errno.o errno.asm

locale.o: locale.c locale.asm stdio.h math.h ctype.h stdarg.h stddef.h file.h temp.h scanf.h printf.h stdlib.h string.h locale.h
	nasm -f elf64 -o locale.o locale.asm

math.o: math.c math.asm math.h errno.h stdio.h math.h ctype.h stdarg.h stddef.h file.h temp.h scanf.h printf.h stddef.h stdlib.h
	nasm -f elf64 -o math.o math.asm

setjmp.o: setjmp.c setjmp.asm setjmp.h stdio.h math.h ctype.h stdarg.h stddef.h file.h temp.h scanf.h printf.h
	nasm -f elf64 -o setjmp.o setjmp.asm

signal.o: signal.c signal.asm stddef.h signal.h stdio.h math.h ctype.h stdarg.h stddef.h file.h temp.h scanf.h printf.h
	nasm -f elf64 -o signal.o signal.asm

file.o: file.c file.asm stdio.h math.h ctype.h stdarg.h stddef.h file.h temp.h scanf.h printf.h errno.h locale.h string.h
	nasm -f elf64 -o file.o file.asm

temp.o: temp.c temp.asm stdio.h math.h ctype.h stdarg.h stddef.h file.h temp.h scanf.h printf.h string.h file.h
	nasm -f elf64 -o temp.o temp.asm

scanf.o: scanf.c scanf.asm math.h ctype.h stdio.h math.h ctype.h stdarg.h stddef.h file.h temp.h scanf.h printf.h stddef.h stdarg.h string.h scanf.h printf.h
	nasm -f elf64 -o scanf.o scanf.asm

printf.o: printf.c printf.asm math.h ctype.h stdio.h math.h ctype.h stdarg.h stddef.h file.h temp.h scanf.h printf.h stddef.h stdarg.h stdlib.h scanf.h printf.h
	nasm -f elf64 -o printf.o printf.asm

stdlib.o: stdlib.c stdlib.asm math.h ctype.h errno.h stdarg.h stddef.h string.h stdlib.h stdio.h math.h ctype.h stdarg.h stddef.h file.h temp.h scanf.h printf.h
	nasm -f elf64 -o stdlib.o stdlib.asm

time.o: time.c time.asm time.h stdio.h math.h ctype.h stdarg.h stddef.h file.h temp.h scanf.h printf.h stdlib.h string.h locale.h assert.h stdio.h stdlib.h
	nasm -f elf64 -o time.o time.asm

string.o: string.c string.asm errno.h stdio.h math.h ctype.h stdarg.h stddef.h file.h temp.h scanf.h printf.h stddef.h string.h locale.h
	nasm -f elf64 -o string.o string.asm

printtest.o: printtest.c printtest.asm stdio.h math.h ctype.h stdarg.h stddef.h file.h temp.h scanf.h printf.h
	nasm -f elf64 -o printtest.o printtest.asm

charactertest.o: charactertest.c charactertest.asm stdio.h math.h ctype.h stdarg.h stddef.h file.h temp.h scanf.h printf.h ctype.h
	nasm -f elf64 -o charactertest.o charactertest.asm

floattest.o: floattest.c floattest.asm stdio.h math.h ctype.h stdarg.h stddef.h file.h temp.h scanf.h printf.h float.h
	nasm -f elf64 -o floattest.o floattest.asm

limitstest.o: limitstest.c limitstest.asm stdio.h math.h ctype.h stdarg.h stddef.h file.h temp.h scanf.h printf.h limits.h
	nasm -f elf64 -o limitstest.o limitstest.asm

asserttest.o: asserttest.c asserttest.asm stdio.h math.h ctype.h stdarg.h stddef.h file.h temp.h scanf.h printf.h assert.h stdio.h stdlib.h
	nasm -f elf64 -o asserttest.o asserttest.asm

stringtest.o: stringtest.c stringtest.asm errno.h stdio.h math.h ctype.h stdarg.h stddef.h file.h temp.h scanf.h printf.h string.h
	nasm -f elf64 -o stringtest.o stringtest.asm

localetest.o: localetest.c localetest.asm
	nasm -f elf64 -o localetest.o localetest.asm

setjmptest.o: setjmptest.c setjmptest.asm stdio.h math.h ctype.h stdarg.h stddef.h file.h temp.h scanf.h printf.h setjmp.h
	nasm -f elf64 -o setjmptest.o setjmptest.asm

mathtest.o: mathtest.c mathtest.asm math.h stdio.h math.h ctype.h stdarg.h stddef.h file.h temp.h scanf.h printf.h errno.h string.h
	nasm -f elf64 -o mathtest.o mathtest.asm

filetest.o: filetest.c filetest.asm math.h stdio.h math.h ctype.h stdarg.h stddef.h file.h temp.h scanf.h printf.h ctype.h errno.h string.h assert.h stdio.h stdlib.h
	nasm -f elf64 -o filetest.o filetest.asm

stdiotest.o: stdiotest.c stdiotest.asm stdio.h math.h ctype.h stdarg.h stddef.h file.h temp.h scanf.h printf.h
	nasm -f elf64 -o stdiotest.o stdiotest.asm

signaltest.o: signaltest.c signaltest.asm stdio.h math.h ctype.h stdarg.h stddef.h file.h temp.h scanf.h printf.h stdlib.h signal.h
	nasm -f elf64 -o signaltest.o signaltest.asm

stacktest.o: stacktest.c stacktest.asm stdio.h math.h ctype.h stdarg.h stddef.h file.h temp.h scanf.h printf.h stdlib.h
	nasm -f elf64 -o stacktest.o stacktest.asm

malloctest.o: malloctest.c malloctest.asm stddef.h stdlib.h stdio.h math.h ctype.h stdarg.h stddef.h file.h temp.h scanf.h printf.h
	nasm -f elf64 -o malloctest.o malloctest.asm

stdlibtest.o: stdlibtest.c stdlibtest.asm time.h stdio.h math.h ctype.h stdarg.h stddef.h file.h temp.h scanf.h printf.h stdlib.h
	nasm -f elf64 -o stdlibtest.o stdlibtest.asm

timetest.o: timetest.c timetest.asm time.h stdio.h math.h ctype.h stdarg.h stddef.h file.h temp.h scanf.h printf.h stdlib.h string.h
	nasm -f elf64 -o timetest.o timetest.asm

clear:
	rm main.o
	rm malloc.o
	rm ctype.o
	rm errno.o
	rm locale.o
	rm math.o
	rm setjmp.o
	rm signal.o
	rm file.o
	rm temp.o
	rm scanf.o
	rm printf.o
	rm stdlib.o
	rm time.o
	rm string.o
	rm printtest.o
	rm charactertest.o
	rm floattest.o
	rm limitstest.o
	rm asserttest.o
	rm stringtest.o
	rm localetest.o
	rm setjmptest.o
	rm mathtest.o
	rm filetest.o
	rm stdiotest.o
	rm signaltest.o
	rm stacktest.o
	rm malloctest.o
	rm stdlibtest.o
	rm timetest.o
	rm main
