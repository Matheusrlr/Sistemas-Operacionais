#include <stdio.h>

int fato(int n){
int fat;
printf("Insira um valor para o qual deseja calcular seu fatorial: ");
for(fat = 1; n > 1; n = n - 1)
fat = fat * n;
printf("\nFatorial calculado: %d", fat);
return fat;
}
