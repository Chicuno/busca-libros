#!/bin/sh
# Reinicia la app cada vez que el visitante se desconecta,
# para que el siguiente visitante siempre vea un estado limpio.
trap 'echo "Deteniendo..."; kill $PID 2>/dev/null; exit 0' INT TERM
 
PUERTO="${PORT:-7681}"
 
while true; do
  echo "[log] Iniciando nueva sesión de literalura en puerto $PUERTO..."
  ttyd -p "$PUERTO" -W -o sh -c '
    echo "Cargando literalura, un momento...";
    ( sleep 6; clear ) &
    java -jar /app/app.jar --spring.profiles.active=demo
  ' &
  PID=$!
  wait $PID
  echo "[log] Sesión terminada. Reiniciando..."
done
 