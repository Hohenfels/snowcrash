#include <stdio.h>
#include <fcntl.h>
#include <stdlib.h>
#include <unistd.h>


int main(int argc, char **argv) {
    int fd = open(argv[1], O_RDONLY);
    char *buff = (char *)malloc(sizeof(char) * 25);

    read(fd, buff, 25);
    for (int i = 0; i < 25; i++) {
        printf("%c", buff[i] - i);
    }
    printf("\n");
}