#!/bin/sh
# Reinicia la app cada vez que el visitante se desconecta,
# para que el siguiente visitante siempre vea un estado limpio.

# Captura limpia de señales para apagar el contenedor de inmediato
trap 'echo "Deteniendo contenedor..."; kill -TERM "$PID" 2>/dev/null; exit 0' INT TERM

# Usa el puerto de la variable de entorno, o el 8000 por defecto
PUERTO="${PORT:-8000}"

while true; do
  echo "[log] Iniciando nueva sesión en puerto $PUERTO..."
  
  # Ejecutamos ttyd en segundo plano
  ttyd -p "$PUERTO" -W -o sh -c '
    echo "Cargando Busca Libros, un momento...";
    ( sleep 2; clear) &
    java -jar /app/app.jar --spring.profiles.active=demo
  ' &
  
  PID=$!
  
  # Al usar "wait" sin argumentos en un bucle con trampas, 
  # el shell procesará el SIGTERM inmediatamente en lugar de congelarse.
  wait "$PID" 2>/dev/null
  
  echo "[log] Sesión terminada. Reiniciando..."
  sleep 1 # Evita bucles infinitos ultra rápidos si ttyd falla al arrancar
done
