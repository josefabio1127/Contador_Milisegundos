# Contador_Milisegundos
Este proyecto describe el diseño de un contador de milisegundos mediante el uso de la lógica digital secuencial, y su implementación mediante el lenguaje de descripción de hadware Verilog. Se controla mediante señales de start y reset (asíncrono), y muestra su salida en BCD, utilizando un vector de 8 bits (4 para las unidades y 4 para las decenas). El contador se reinicia cuando alcanza el valor de 99, y se detiene en este valor hasta que se recibe una señal de start.

En el folder "implementation" se encuentran los archivos fuente y de simulación, de los diferentes módulos utilizados para el diseño planteado.
