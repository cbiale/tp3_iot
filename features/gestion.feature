# language: es
# encoding: utf-8
Característica: Gestionar las parejas almacenadas en la lista

Escenario: Verificar el estado de una lista vacía
    Dado una lista vacía
    Entonces la lista tiene 0 elemento almacenado
    Y si busco la clave "clave" no obtengo ningún valor

Escenario: Agregar y eliminar un elemento a una lista vacia
    Dado una lista vacía
    Cuando agrego la clave "clave" con el valor "valor"
    Entonces la lista tiene 1 elemento almacenado
    Y si busco la clave "clave" obtengo el valor "valor"
    Y si busco la clave "clave1" no obtengo ningún valor
    Y si elimino la clave "clave" obtengo true
    Y si elimino la clave "clave1" obtengo false

Escenario: Agregar un nuevo elemento
    Dado una lista con los siguientes elementos
        | clave | valor  |
        | A     | valorA |
        | Z     | valorZ |
        | S     | valorS | 
        | B     | valorB | 
        | C     | valorC | 
    Cuando agrego la clave "J" con el valor "ValorJ"
    Entonces la lista tiene 6 elementos almacenados

Escenario: Actualizar el valor de una clave existente
    Dado una lista con los siguientes elementos
        | clave | valor  |
        | A     | valorA |
        | Z     | valorZ |
        | S     | valorS | 
        | B     | valorB | 
        | C     | valorC | 
    Cuando agrego la clave "A" con el valor "valorAA"
    Entonces la lista tiene 5 elementos almacenados
    Y si busco la clave "A" obtengo el valor "valorAA"

Escenario: Buscar un elemento inexistente
    Dado una lista con los siguientes elementos
        | clave | valor  |
        | A     | valorA |
        | Z     | valorZ |
        | S     | valorS | 
        | B     | valorB | 
        | C     | valorC | 
    Entonces si busco la clave "J" no obtengo ningún valor

Escenario: Buscar un elemento existente
    Dado una lista con los siguientes elementos
        | clave | valor  |
        | A     | valorA |
        | Z     | valorZ |
        | S     | valorS | 
        | B     | valorB | 
        | C     | valorC | 
    Entonces si busco la clave "C" obtengo el valor "valorC"

Escenario: Eliminar un elemento existente
    Dado una lista con los siguientes elementos
        | clave | valor  |
        | A     | valorA |
        | Z     | valorZ |
        | S     | valorS | 
        | B     | valorB | 
        | C     | valorC | 
    Entonces si elimino la clave "C" obtengo true
    Y la lista tiene 4 elementos almacenados

Escenario: Eliminar un elemento inexistente
    Dado una lista con los siguientes elementos
        | clave | valor  |
        | A     | valorA |
        | Z     | valorZ |
        | S     | valorS | 
        | B     | valorB | 
        | C     | valorC | 
    Entonces la lista tiene 5 elementos almacenados
    Y si elimino la clave "D" obtengo false
    Y la lista tiene 5 elementos almacenados

Escenario: Agregar un elemento con clave no String
    Dado una lista con los siguientes elementos
        | clave | valor  |
        | A     | valorA |
        | Z     | valorZ |
        | S     | valorS | 
        | B     | valorB | 
        | C     | valorC | 
    Entonces la lista tiene 5 elementos almacenados
    Y si agrego la clave 1 con valor "valor1" obtengo false
    Y la lista tiene 5 elementos almacenados

    Dado una lista con los siguientes elementos
        | clave | valor  |
        | A     | valorA |
        | Z     | valorZ |
        | S     | valorS | 
        | B     | valorB | 
        | C     | valorC | 
    Entonces la lista ordenada de claves es
        | clave |
        | A     |
        | B     | 
        | C     | 
        | S     |
        | Z     |
    
