#include <stdio.h>
 
int fibo(int n)
{
  
  int a, b, auxiliar, i;

  a = 0;
  b = 1;
  printf("Digite um número: ");
  printf("Série de Fibonacci:\n");
  printf("%d\n", b);
  for(i = 0; i < n; i++)
  {
    auxiliar = a + b;
    a = b;
    b = auxiliar;
    printf("%d\n", auxiliar);
  }
  return auxiliar;
}
