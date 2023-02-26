#include <iostream>
#include <cmath>
#include <fstream>
#include <cstdlib>
#include <cstring>
float subtract(float in1, float in2) {
    float ret = 0.0;
    asm ("fsubr %2, %0" : "=&t" (ret) : "%0" (in1), "u" (in2));
    return ret;
}
int main() {
     FILE *fp = fopen("configs/tutorial/part1/data.txt", "r");
    if(!fp){
        printf("error");
        return 0;
    }
    float a, b;
    fscanf(fp, "%f\n", &a);
    fscanf(fp, "%f\n", &b);
    printf("%f\n", subtract(a, b));
    return 0;
}