/*
 *
 * NOMBRES DE LOS INTEGRANTES EN EL EQUIPO: EMILIO, OMAR, MARCELO, DIEGO
 * ANDREW ID:
 * ÚLTIMA ACTUALIZACIÓN:
 *
 * Este archivo contiene un algoritmo para resolver el laberinto csrtle
 * utilizando la regla de la mano izquierda. El código fue intencionalmente
 * ofuscado al inicio y se ha limpiado para mayor legibilidad.
 */

 #include "student.h"

 // Enumeración para representar las direcciones cardinales
 enum Direction { OESTE = 0, NORTE = 1, ESTE = 2, SUR = 3 }; // Cambio por EMILIO
 
 // Enumeración para representar los estados del movimiento
 enum EstadoMovimiento { GIRAR_IZQUIERDA = 0, AVANZAR = 2, GIRAR_DERECHA = 1 }; // Cambio por MARCELO
 
 #define TIEMPO_ESPERA 40  // Valor mayor ralentiza la simulación para observar el comportamiento
 
 float tiempoRestante, estadoActual;
 float xInicio, yInicio, xDestino, yDestino;
 float puedeAvanzar, enMeta, hayMuro;
 
 // Esta función mueve a la tortuga utilizando la regla de la mano izquierda.
 // Solo se permiten las funciones "bumped()" y "atend()".
 // No se debe acceder directamente al laberinto.
 bool studentMoveTurtle(QPointF& posicion, int& direccion)
 {
	 ROS_INFO("Actualización de tortuga: tiempoRestante=%f", tiempoRestante);
 
	 bool mover = true;
 
	 if (tiempoRestante == 0) {
		 xInicio = posicion.x();
		 yInicio = posicion.y();
		 xDestino = posicion.x();
		 yDestino = posicion.y();
 
		 // Determinar coordenadas del siguiente paso según la dirección
		 if (direccion < 2) {
			 if (direccion == OESTE) yDestino += 1;
			 else                   xDestino += 1;
		 } else {
			 xDestino += 1; yDestino += 1;
			 if (direccion == ESTE) xInicio += 1;
			 else                   yInicio += 1;
		 }
 
		 hayMuro = bumped(xInicio, yInicio, xDestino, yDestino);
		 enMeta = atend(posicion.x(), posicion.y());
 
		 // Lógica para decidir el siguiente estado según la dirección actual
		 if (direccion == OESTE) {
			 if (estadoActual == AVANZAR) { direccion = NORTE; estadoActual = GIRAR_DERECHA; } // Derecha
			 else if (hayMuro)            { direccion = SUR;   estadoActual = GIRAR_IZQUIERDA; } // Izquierda
			 else                         { estadoActual = AVANZAR; }
		 }
		 else if (direccion == NORTE) {
			 if (estadoActual == AVANZAR) { direccion = ESTE;  estadoActual = GIRAR_DERECHA; }
			 else if (hayMuro)            { direccion = OESTE; estadoActual = GIRAR_IZQUIERDA; }
			 else                         { estadoActual = AVANZAR; }
		 }
		 else if (direccion == ESTE) {
			 if (estadoActual == AVANZAR) { direccion = SUR;   estadoActual = GIRAR_DERECHA; }
			 else if (hayMuro)            { direccion = NORTE; estadoActual = GIRAR_IZQUIERDA; }
			 else                         { estadoActual = AVANZAR; }
		 }
		 else if (direccion == SUR) {
			 if (estadoActual == AVANZAR) { direccion = OESTE; estadoActual = GIRAR_DERECHA; }
			 else if (hayMuro)            { direccion = ESTE;  estadoActual = GIRAR_IZQUIERDA; }
			 else                         { estadoActual = AVANZAR; }
		 }
 
		 ROS_INFO("Orientación=%d  EstadoMovimiento=%f", direccion, estadoActual);
 
		 puedeAvanzar = (estadoActual == AVANZAR);
 
		 // Movimiento según dirección si no estamos en la meta
		 if (puedeAvanzar && !enMeta) {
			 if (direccion == NORTE) posicion.setY(posicion.y() - 1);
			 if (direccion == ESTE)  posicion.setX(posicion.x() + 1);
			 if (direccion == SUR)   posicion.setY(posicion.y() + 1);
			 if (direccion == OESTE) posicion.setX(posicion.x() - 1);
		 } // Cambio por DIEGO
	 }
 
	 if (enMeta) return false;
 
	 if (tiempoRestante == 0)
		 tiempoRestante = TIEMPO_ESPERA;
	 else
		 tiempoRestante -= 1;
 
	 if (tiempoRestante == TIEMPO_ESPERA)
		 return true;
 
	 return false; // Cambio por OMAR
 }
 