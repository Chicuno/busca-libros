#!/bin/sh
# Usa el puerto de la variable de entorno, o el 8000 por defecto
PUERTO="${PORT:-8000}"
SESION="literalura"
PID_TTYD=""

detener_sesion() {
  tmux has-session -t "$SESION" 2>/dev/null && tmux kill-session -t "$SESION"
}

detener_contenedor() {
  echo "Deteniendo contenedor..."
  [ -n "$PID_TTYD" ] && kill -TERM "$PID_TTYD" 2>/dev/null
  detener_sesion
  exit 0
}

trap detener_contenedor INT TERM

while true; do
  # Spring se inicia de inmediato, antes de que alguien abra el navegador.
  # Se ejecuta dentro de tmux para que sobreviva a la conexión de ttyd.
  detener_sesion
  echo "[log] Iniciando Spring limpio en segundo plano..."
  tmux new-session -d -s "$SESION" \
    'exec java -jar /app/app.jar --spring.profiles.active=demo'
  tmux set-option -t "$SESION" status off

  echo "[log] Esperando un visitante en el puerto $PUERTO..."
  # ttyd solo conecta el navegador a la sesión ya iniciada. Con -o finaliza
  # al desconectarse el visitante, sin terminar la sesión principal de tmux.
  ttyd -p "$PUERTO" -W -o tmux attach-session -t "$SESION" &
  PID_TTYD=$!
  wait "$PID_TTYD" 2>/dev/null
  PID_TTYD=""

  # Al salir el visitante, se mata Java: la H2 en memoria se borra. El bucle
  # crea de inmediato una instancia nueva y limpia, lista para la próxima visita.
  echo "[log] Visitante desconectado. Reiniciando la aplicación..."
  detener_sesion
  sleep 1
done
