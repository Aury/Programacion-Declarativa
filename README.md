#Práctica 1
Primera práctica de la asignatura **Programación Declarativa**.

##Tareas

###1. Representación de matrices
La estructura de datos con la que representaremos las matrices será una lista formada por las filas de la matriz. De esta forma, el término que corresponde a la matriz
```a  b
      c  d```
es el siguiente: ``` [[a,b],[c,d]]```

Las tareas a realizar en este apartado son:

* Definir un predicado que obtenga una fila de la matriz - `row(X,N,C)`: C es la fila N-esima de la matriz X.

* Definir un predicado que obtenga una columna de la matriz - `column(X,N,C)`: C es la columna N-esima de la matriz X.

* Definir un predicado que nos permita descomponer una matriz en la primera columna y el resto de la matriz - `first_column(X,C,R)`: la matriz X esta formada por la primera columna C y el resto de la matriz R.

### 2. Operaciones con matrices
* Definir un predicado que determine si una matriz (cuadrada) es simétrica respecto a la diagonal principal - `symmetrical(X)`: X es una matriz (cuadrada) simétrica respecto a la diagonal principal.

* Definir un predicado que permita obtener la traspuesta de una matriz (cuadrada) - `transpose(X,Y)`: Y es la matriz traspuesta de X.

Considerar y discutir dos posibles definiciones diferentes del predicado symmetrical/1.

### 3. Representación matricial de un sistema de ecuaciones
* Definir un predicado que permita obtener el producto de dos matrices - `product(M,N,P)`: P = M x N, siendo M, N y P matrices.

    El producto de dos elementos a y b se representa como el par a*b. La suma de los elementos a, b, c y d se representa como la secuencia a+b+c+d. (No se utilizan operaciones matemáticas sino solo su representación).

* Definir un predicado que describa la representación matricial de un sistema de ecuaciones - `ecuaciones(M,N,P,E)`: E es el sistema de ecuaciones M x N = P, siendo M la matriz de coeficientes, N el vector --lista-- de variables y P el vector de términos independientes.

Considerar y discutir dos posibles definiciones diferentes del predicado ecuaciones/4, utilizando o no product/3.
