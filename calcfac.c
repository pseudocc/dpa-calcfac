#include <stdlib.h>
#include <stdio.h>
#include <libadvmath/math.h>

int main(int argc, const char* argv[]) {
  if (argc < 2) {
    fprintf(stderr, "usage: calcfac {...numbers}\n");
    return 1;
  }
  for (int i = 1; i < argc; i++) {
    int n = atoi(argv[1]);
    printf("fac(%d) = %d\n", n, fac(n));
  }
  return 0;
}