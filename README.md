# Proyecto Arquitectura

## Documentación

En este segmento se estará agregando la documentación del proyecto y su respectivo código.

## Progreso

Lista de progreso:

- [x] Parte 1 - Circuito
- [x] Parte 2 - Ensamblador

## Herramientas en uso

Detallar con mayor profundidad.

## Participantes

- Alejandro Araya Jiménez (aarayaj@ucenfotec.ac.cr)
- Valeria Villatoro Méndez (vvillatorom@ucenfotec.ac.cr)

## Parte 1 - Progreso

Directorio/Paquete:

https://github.com/Araya2001/ucenfotec-arqui-proyecto/tree/main/parte-1

Imagenes:

`Circuito A:`

![Circuito A](https://github.com/Araya2001/ucenfotec-arqui-proyecto/blob/main/parte-1/circuito-a-avance-proyecto-arquitectura.png)

`Circuito B:`

![Circuito B](https://github.com/Araya2001/ucenfotec-arqui-proyecto/blob/main/parte-1/circuito-b-avance-proyecto-arquitectura.png)

## Parte 2

### Configuración DOSBOX

Se utilizó MSX88portable para realizar el proyecto, para instalar en la distribución en la que se realizó

```
$ sudo pacman -Sy dosbox
```

Modificación de archivo de configuración para optimizar rendimiento

```
$ nano ~/.dosbox/dosbox-0.74-3.conf
```

Dentro de `dosbox-0.74-3.conf`

Buscar el segmento de CPU y realizar los siguientes cambios:

```bash
core=dynamic
cputype=auto
cycles=max
cycleup=10
cycledown=20
```

Para modificación del archivo, se hizo un link simbólico de el archivo `parte2.asm` al directorio base de MSX88

```
$ pwd
> /home/aaj/Public/MSX88Portable/msx88
$ ln -s /home/aaj/aaj_stuff/UNIVERSIDAD/2021-3/ARQUI/ucenfotec-arqui-proyecto/parte-2/parte2.asm .
```

Para levantar MSX88, hay que estar en el directorio `MSX88Portable/msx88` y ejecutar el binario de dosbox

```
$ pwd
> /home/aaj/Public/MSX88Portable/msx88
$ dosbox .
```

### Código del programa en ensamblador:

Paquete/Directorio:

https://github.com/Araya2001/ucenfotec-arqui-proyecto/tree/main/parte-2

Ejemplo de resta en MSX88

![Ejemplo MSX88](https://github.com/Araya2001/ucenfotec-arqui-proyecto/blob/main/parte-2/img/2021-12-09_11-57.png)

Link de video de programa en ejecución en Google Drive:

https://drive.google.com/file/d/18BCRlDZ0p8rNhnq6s1rvZccR7Natf6Ey/view?usp=sharing

## Adicional

### Código del programa realizado en C

Paquete/Directorio:

https://github.com/Araya2001/ucenfotec-arqui-proyecto/tree/main/resta

Instalación y/o Compilación:

```
$ git clone https://github.com/Araya2001/ucenfotec-arqui-proyecto.git
$ cd ucenfotec-arqui-proyecto/resta/target
$ cmake .
$ make
$ cd bin
$ ./resta --help
Usage: resta [OPTION...] 
resta -- programa que toma 2 números como entrada y retorna la sustracción de
estos.

  -x, --num1= [INT]          Número 1
  -y, --num2= [INT]          Número 2
  -?, --help                 Give this help list
      --usage                Give a short usage message
  -V, --version              Print program version

Mandatory or optional arguments to long options are also mandatory or optional
for any corresponding short options.

Report bugs to <araya2001@outlook.es>.
```

Opcional, Agregar al entorno de variables

> NOTA: No usar el path que se usará como ejemplo, consultar primero la ubicación con `pwd`

```
$ cd ucenfotec-arqui-proyecto/resta/target/bin
$ pwd
/home/aaj/aaj_stuff/UNIVERSIDAD/2021-3/ARQUI/ucenfotec-arqui-proyecto/resta/target/bin
$ export PATH="$PATH:$(pwd)"
$ echo $PATH
```

Ahora el binario generado del programa de resta, puede ser utilizado en cualquier ubicación o directorio. Siempre y cuando se mantenga la misma sesión en la terminal

```
$ cd ~; resta --help
Usage: resta [OPTION...] 
resta -- programa que toma 2 números como entrada y retorna la sustracción de
estos.

  -x, --num1= [INT]          Número 1
  -y, --num2= [INT]          Número 2
  -?, --help                 Give this help list
      --usage                Give a short usage message
  -V, --version              Print program version

Mandatory or optional arguments to long options are also mandatory or optional
for any corresponding short options.

Report bugs to <araya2001@outlook.es>.
```

Uso

```
$ resta -x 4 -y 6
Resta con dos opciones: 
-> Número 1: 4
-> Número 2: 6
-> Resultado: -2
```

