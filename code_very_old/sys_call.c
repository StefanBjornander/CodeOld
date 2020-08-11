#include <errno.h>

/* file flags fcntl.h */
#define O_RDONLY    0x0000      /* open for reading only */
#define O_WRONLY    0x0001      /* open for writing only */
#define O_CREAT     0x0200      /* create if nonexistant */
#define O_TRUNC     0x0400      /* truncate to zero length */

#define FILE_DESC_STDOUT 1

#define SYS_EXIT 1
#define SYS_READ 3
#define SYS_WRITE 4
#define SYS_OPEN 5
#define SYS_CLOSE 6

#define IN_MESSAGE_LEN 9
#define OUT_MESSAGE_LEN 9

char inBuffer[IN_MESSAGE_LEN];
char outBuffer[OUT_MESSAGE_LEN];

int main (int argc, char *argv[])
{
    int inFileDesc, outFileDesc;

    // Apertura fine di input
    inFileDesc = syscall(SYS_OPEN, "testinput.txt", O_RDONLY, 438);
    if(inFileDesc == -1) {
        char str[] = "Unable to open \"testinput.txt\"\n";
        syscall(SYS_WRITE, FILE_DESC_STDOUT, str, sizeof(str)/sizeof(char));
        syscall(SYS_EXIT, 1);
        return 1;   
    }

    // Apertura fine di output
    outFileDesc = syscall(SYS_OPEN, "testoutput.txt", O_WRONLY | O_TRUNC | O_CREAT, 438);
    if(outFileDesc == -1) {
        int code = errno;

        char str[] = "Unable to open \"testoutput.txt\"\n";
        syscall(SYS_WRITE, FILE_DESC_STDOUT, str, sizeof(str)/sizeof(char));
        syscall(SYS_CLOSE, inFileDesc);
        syscall(SYS_EXIT, 1);
        return 1;   
    }

    // Travaso contenuto file di input in file di output
    int read, i;
    while((read = syscall(SYS_READ, inFileDesc, inBuffer, IN_MESSAGE_LEN)) != 0) {

        for(i = 0; i < IN_MESSAGE_LEN; i++) {
            outBuffer[i] = inBuffer[i];
        }

        syscall(SYS_WRITE, outFileDesc, outBuffer, OUT_MESSAGE_LEN);
    }

    syscall(SYS_CLOSE, inFileDesc);
    syscall(SYS_CLOSE, outFileDesc);

    syscall(SYS_EXIT, 0);
    return 0;
}