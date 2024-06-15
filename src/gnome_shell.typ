//ref https://gist.github.com/rothgar/7079722
#set page(
  "presentation-16-9",
  fill: black,
  margin: 0.5cm)
#set text(size: 11pt, fill: white)
= GNOME Shell
  #columns(3, gutter: 12pt)[
    == Navegación general
    #line(stroke: white, length: 100%)
    #table(
      columns: (1fr, 1.7fr),
      gutter: -4pt,
      `Super`+" o "+`Alt+F1`, "Actividades",
      `Alt+F2`, "Ventana de comando",
      `Super+A`, "Vista de aplicaciones",
      `Super+M`, "Bandeja de mensajes",
      `Super+N`, "Notificaciones",
      `Ctrl+Alt+Tab`, "Alterna el foco",
      `Alt+Esc`, "Alterna entre ventanas",
      `Ctrl+W`, "Cierra una ventana",
      `Ctrl+,`, "Configuración",
      `Ctrl+K Ctrl+S`, "Atajos de teclado",
    )
    == Edición básica
    #table(
      columns: (1fr, 1.7fr),
      gutter: -4pt,
      `Ctrl+X`, "Corta una línea",
      `Ctrl+C`, "Copia una línea",
      `Alt+`+sym.arrow.t+`/`+sym.arrow.b, "Mueve una línea arriba o abajo",
      `Ctrl+Shift+K`, "Borra una línea",
      `Ctrl+Enter`, "Inserta una línea debajo",
      `Ctrl+Shift+Enter`, "Inserta una línea encima",
      `Ctrl+Shift+\`, "Inserta una línea encima",
      `Ctrl+Q`, "Vuelve a pintar en pantalla",
    )
    == Moviendo el cursor
    #table(
      columns: (1fr, 1.7fr),
      gutter: -4pt,
      `Ctrl+A`,  "Al inicio de la línea",
      `Ctrl+E`,  "Al final de la línea",
      `Alt+B`,   "A la izquierda de una palabra",
      `Ctrl+B`,  "A la izquierda un carácter",
      `Alt+F`,   "A la derecha una palabra",
      `Ctrl+F`,  "A la derecha un carácter",
      `Ctrl+XX`, "Del principio al final y al revés",
    )
    == Borrando texto
    #table(
      columns: (1fr, 5fr),
      gutter: -4pt,
      `Ctrl+D`,  "Al inicio de la línea",
      `Alt+D`,  "Al inicio de la línea",
      `Ctrl+H`,  "Al final de la línea",
      `Ctrl+W`,  "A la izquierda un carácter",
      `Alt+F`,   "A la derecha una palabra",
      `Ctrl+F`,  "A la derecha un carácter",
      `Ctrl+XX`, "Del principio al final y al revés",
    )
    == Mayúsculas y minúsculas
    #table(
      columns: (1fr, 5fr),
      gutter: -4pt,
      `Alt+U`,  "Mayúsculas hasta el final de la palabra",
      `Alt+L`,  "Minúsculas hasta el final de la palabra",
      `Alt+C`,  "Mayúsculas para el carácter",
    )
    == Errores
    #table(
      columns: (1fr, 5fr),
      gutter: -4pt,
      `Alt+T`,  "Intercambia la palabra con la anterior",
      `Ctrl+T`,  "Intercambia dos caracteres",
      `Ctrl+_`,  "Deshacer",
    )
    == Autocompletado
    #table(
      columns: (1fr, 5fr),
      gutter: -4pt,
      `tab`,  "Autocompleta",
    )
    == Historial
   #table(
      columns: (1fr, 5fr),
      gutter: -4pt,
      `Ctrl+P`,  "Comando anterior",
      `Ctrl+N`,  "Comando siguiente",
      `Ctrl+R`,  "Busca comandos anteriores",
      `Ctrl+O`,  "Ejecuta el comando encontrado",
      `Ctrl+G`,  "Abandona la búsqueda",
      `Alt+R`,  "Revierte cambios editados",
      `!!`,  "Repite el último comando",
      `!*`,  "Repite solo los árgumentos",
      `history`,  "Mueltra la historia",
    )
    == Atajos de teclado
   #table(
      columns: (1fr, 4fr),
      gutter: -4pt,
      `bind -p`,  "Muestra los atajos de teclado",
   )
    == Copiar y pegar
   #table(
      columns: (1fr, 2fr),
      gutter: -5pt,
      `Ctrl+Shift+C`, "Copia la selección",
      `Ctrl+Shift+P`, "Pega",
   )
  ]
