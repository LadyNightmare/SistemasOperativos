#include<stdlib.h>
#include<stdio.h>

int main (int argc, char *argv[], char *env[]) {

	for (int i = 0; i < argc; ++i) {

		printf("parámetro %d: %s\n", i, argv[i]);

	}

}
