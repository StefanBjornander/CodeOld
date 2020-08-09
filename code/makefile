main: main.o malloc.o ctype.o errno.o locale.o math.o setjmp.o signal.o file.o temp.o scanf.o printf.o stdlib.o time.o string.o printtest.o charactertest.o floattest.o limitstest.o asserttest.o stringtest.o localetest.o setjmptest.o mathtest.o filetest.o stdiotest.o signaltest.o stacktest.o malloctest.o stdlibtest.o timetest.o
	ld -o main main.o malloc.o ctype.o errno.o locale.o math.o setjmp.o signal.o file.o temp.o scanf.o printf.o stdlib.o time.o string.o printtest.o charactertest.o floattest.o limitstest.o asserttest.o stringtest.o localetest.o setjmptest.o mathtest.o filetest.o stdiotest.o signaltest.o stacktest.o malloctest.o stdlibtest.o timetest.o

main.o: main.c main.asmNew stddef.h stdlib.h stdio.h math.h ctype.h stdarg.h stddef.h file.h temp.h scanf.h printf.h math.h string.h errno.h assert.h stdio.h stdlib.h limits.h time.h
	nasm -f elf64 -o main.o main.asmNew

malloc.o: malloc.c malloc.asmNew math.h ctype.h errno.h stdio.h math.h ctype.h stdarg.h stddef.h file.h temp.h scanf.h printf.h stdarg.h stddef.h stdlib.h string.h assert.h stdio.h stdlib.h
	nasm -f elf64 -o malloc.o malloc.asmNew

ctype.o: ctype.c ctype.asmNew ctype.h stdio.h math.h ctype.h stdarg.h stddef.h file.h temp.h scanf.h printf.h locale.h string.h stddef.h
	nasm -f elf64 -o ctype.o ctype.asmNew

errno.o: errno.c errno.asmNew errno.h
	nasm -f elf64 -o errno.o errno.asmNew

locale.o: locale.c locale.asmNew stdio.h math.h ctype.h stdarg.h stddef.h file.h temp.h scanf.h printf.h stdlib.h string.h locale.h
	nasm -f elf64 -o locale.o locale.asmNew

math.o: math.c math.asmNew math.h errno.h stdio.h math.h ctype.h stdarg.h stddef.h file.h temp.h scanf.h printf.h stddef.h stdlib.h
	nasm -f elf64 -o math.o math.asmNew

setjmp.o: setjmp.c setjmp.asmNew setjmp.h stdio.h math.h ctype.h stdarg.h stddef.h file.h temp.h scanf.h printf.h
	nasm -f elf64 -o setjmp.o setjmp.asmNew

signal.o: signal.c signal.asmNew stddef.h signal.h stdio.h math.h ctype.h stdarg.h stddef.h file.h temp.h scanf.h printf.h
	nasm -f elf64 -o signal.o signal.asmNew

file.o: file.c file.asmNew stdio.h math.h ctype.h stdarg.h stddef.h file.h temp.h scanf.h printf.h errno.h locale.h string.h
	nasm -f elf64 -o file.o file.asmNew

temp.o: temp.c temp.asmNew stdio.h math.h ctype.h stdarg.h stddef.h file.h temp.h scanf.h printf.h string.h file.h
	nasm -f elf64 -o temp.o temp.asmNew

scanf.o: scanf.c scanf.asmNew math.h ctype.h stdio.h math.h ctype.h stdarg.h stddef.h file.h temp.h scanf.h printf.h stddef.h stdarg.h string.h scanf.h printf.h
	nasm -f elf64 -o scanf.o scanf.asmNew

printf.o: printf.c printf.asmNew math.h ctype.h stdio.h math.h ctype.h stdarg.h stddef.h file.h temp.h scanf.h printf.h stddef.h stdarg.h stdlib.h scanf.h printf.h
	nasm -f elf64 -o printf.o printf.asmNew

stdlib.o: stdlib.c stdlib.asmNew math.h ctype.h errno.h stdarg.h stddef.h string.h stdlib.h stdio.h math.h ctype.h stdarg.h stddef.h file.h temp.h scanf.h printf.h
	nasm -f elf64 -o stdlib.o stdlib.asmNew

time.o: time.c time.asmNew time.h stdio.h math.h ctype.h stdarg.h stddef.h file.h temp.h scanf.h printf.h stdlib.h string.h locale.h assert.h stdio.h stdlib.h
	nasm -f elf64 -o time.o time.asmNew

string.o: string.c string.asmNew errno.h stdio.h math.h ctype.h stdarg.h stddef.h file.h temp.h scanf.h printf.h stddef.h string.h locale.h
	nasm -f elf64 -o string.o string.asmNew

printtest.o: printtest.c printtest.asmNew stdio.h math.h ctype.h stdarg.h stddef.h file.h temp.h scanf.h printf.h
	nasm -f elf64 -o printtest.o printtest.asmNew

charactertest.o: charactertest.c charactertest.asmNew stdio.h math.h ctype.h stdarg.h stddef.h file.h temp.h scanf.h printf.h ctype.h
	nasm -f elf64 -o charactertest.o charactertest.asmNew

floattest.o: floattest.c floattest.asmNew stdio.h math.h ctype.h stdarg.h stddef.h file.h temp.h scanf.h printf.h float.h
	nasm -f elf64 -o floattest.o floattest.asmNew

limitstest.o: limitstest.c limitstest.asmNew stdio.h math.h ctype.h stdarg.h stddef.h file.h temp.h scanf.h printf.h limits.h
	nasm -f elf64 -o limitstest.o limitstest.asmNew

asserttest.o: asserttest.c asserttest.asmNew stdio.h math.h ctype.h stdarg.h stddef.h file.h temp.h scanf.h printf.h assert.h stdio.h stdlib.h
	nasm -f elf64 -o asserttest.o asserttest.asmNew

stringtest.o: stringtest.c stringtest.asmNew errno.h stdio.h math.h ctype.h stdarg.h stddef.h file.h temp.h scanf.h printf.h string.h
	nasm -f elf64 -o stringtest.o stringtest.asmNew

localetest.o: localetest.c localetest.asmNew
	nasm -f elf64 -o localetest.o localetest.asmNew

setjmptest.o: setjmptest.c setjmptest.asmNew stdio.h math.h ctype.h stdarg.h stddef.h file.h temp.h scanf.h printf.h setjmp.h
	nasm -f elf64 -o setjmptest.o setjmptest.asmNew

mathtest.o: mathtest.c mathtest.asmNew math.h stdio.h math.h ctype.h stdarg.h stddef.h file.h temp.h scanf.h printf.h errno.h string.h
	nasm -f elf64 -o mathtest.o mathtest.asmNew

filetest.o: filetest.c filetest.asmNew math.h stdio.h math.h ctype.h stdarg.h stddef.h file.h temp.h scanf.h printf.h ctype.h errno.h string.h assert.h stdio.h stdlib.h
	nasm -f elf64 -o filetest.o filetest.asmNew

stdiotest.o: stdiotest.c stdiotest.asmNew stdio.h math.h ctype.h stdarg.h stddef.h file.h temp.h scanf.h printf.h
	nasm -f elf64 -o stdiotest.o stdiotest.asmNew

signaltest.o: signaltest.c signaltest.asmNew stdio.h math.h ctype.h stdarg.h stddef.h file.h temp.h scanf.h printf.h stdlib.h signal.h
	nasm -f elf64 -o signaltest.o signaltest.asmNew

stacktest.o: stacktest.c stacktest.asmNew stdio.h math.h ctype.h stdarg.h stddef.h file.h temp.h scanf.h printf.h stdlib.h
	nasm -f elf64 -o stacktest.o stacktest.asmNew

malloctest.o: malloctest.c malloctest.asmNew stddef.h stdlib.h stdio.h math.h ctype.h stdarg.h stddef.h file.h temp.h scanf.h printf.h
	nasm -f elf64 -o malloctest.o malloctest.asmNew

stdlibtest.o: stdlibtest.c stdlibtest.asmNew time.h stdio.h math.h ctype.h stdarg.h stddef.h file.h temp.h scanf.h printf.h stdlib.h
	nasm -f elf64 -o stdlibtest.o stdlibtest.asmNew

timetest.o: timetest.c timetest.asmNew time.h stdio.h math.h ctype.h stdarg.h stddef.h file.h temp.h scanf.h printf.h stdlib.h string.h
	nasm -f elf64 -o timetest.o timetest.asmNew

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
