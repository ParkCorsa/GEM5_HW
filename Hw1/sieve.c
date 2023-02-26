#include<stdio.h>

#define N 1000005
// #define N 10005

int n;

short IsPrime[N];

int Prime[N];

int Eratosthenes(int n) {
  int p = 0;
  for (int i = 0; i <= n; ++i) IsPrime[i] = 1;
  IsPrime[0] = IsPrime[1] = 0;
  for (int i = 2; i <= n; ++i) {
    if (IsPrime[i]) {
      Prime[p++] = i;  
      if ((long long)i * i <= n)
        for (int j = i * i; j <= n; j += i) IsPrime[j] = 0;
    }
  }
  return p;
}

int main(int argc, char* argv[]){
    scanf("%d",&n);
    printf("%d",Eratosthenes(n));
    return 0;
}
