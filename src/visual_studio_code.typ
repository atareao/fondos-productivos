#set page(
  "presentation-16-9",
  fill: black,
  margin: 0.5cm)
#set text(size: 11pt, fill: white)
= Visual Studio Code
  #columns(3, gutter: 12pt)[
    == General
    #line(stroke: white, length: 100%)
    #table(
      columns: (1fr, 1.7fr),
      gutter: -4pt,
      `Ctrl+Shift+P`, "Paleta de comandos",
      `Ctrl+P`, "Abre un archivo",
      `Ctrl+Shift+N`, "Nueva ventana",
      `Ctrl+W`, "Cierra una ventana",
      `Ctrl+,`, "Configuración",
      `Ctrl+K Ctrl+S`, "Atajos de teclado",
    )
    == Moviendo el cursor
     #table(
      columns: (1fr, 1.7fr),
      gutter: -4pt,
      `Ctrl+➡️`,  "Mueve el cursor al principio de la siguiente palabra",
      `Ctrl+⬅️`, "Mueve el cursor al principio de la anterior palabra",
      `🏠`, "Mueve el cursor al principio de la línea",
      `🔚`, "Mueve el cursor al final de la línea",
     )
    == Seleccionar
    #table(
      columns: (1fr, 1.7fr),
      gutter: -4pt,
      `Ctrl+L`, "Selecciona la línea bajo el cursor",
      `Ctrl+D`, "Selecciona la palabra bajo el cursor",
      `Ctrl+K`, "Se salta la ocurrencia bajo el cursor",
      `Ctrl+U`, "Selecciona la ocurrencia anterior",
      `Ctrl+Shift+L`, "Selecciona todas las ocurrencias de la selección",
      `Shift+Alt+➡️`, "Expande la selección",
      `Shift+Alt+⬅️`, "Reduce la selección",
      `Ctrl+Shift+➡️`, "Selecciona la siguiente palabra a la derecha",
      `Ctrl+Shift+⬅️`, "Selecciona la siguiente palabra a la izquierda",
      `Ctrl+A`, "Selecciona todo el texto",
    )
    == Edición básica
    #table(
      columns: (1fr, 1.7fr),
      gutter: -4pt,
      `Ctrl+Shift+\`, "Inserta una línea encima",
      `Ctrl+Q`, "Vuelve a pintar en pantalla",
      `Ctrl+L`, "Selecciona la línea en curso",
      `Ctrl+D`, "Selecciona la palabra en curso",

      `Ctrl+X`, "Cortar línea (sin selección)",
      `Ctrl+C`, "Copiar línea (sin selección)",
      `Alt+ ↓ / ↑`, "Mover línea abajo/arriba",
      `Ctrl+Shift+K`, "Eliminar línea",
      `Ctrl+Enter / Ctrl+Shift+Enter`, "Insertar línea debajo/encima",
      `Ctrl+Shift+\`, "Saltar al corchete coincidente",
      `Ctrl+] / Ctrl+[ `, "Aumentar/disminuir sangría de la línea",
      `Home / End`, "Ir al principio/final de la línea",
      `Ctrl+Home / End`, "Ir al principio/final del archivo",
      `Ctrl+ ↑ / ↓`, "Desplazar línea arriba/abajo",
      `Alt+ PgUp / PgDn`, "Desplazar página arriba/ abajo",
      `Ctrl+Shift+ [ / ]`, "Plegar/desplegar región",
      `Ctrl+K Ctrl+ [ / ]`, "Plegar/desplegar todas las subregiones",
      `Ctrl+K Ctrl+0 / Ctrl+K Ctrl+J`, "Plegar/Desplegar todas las regiones",
      `Ctrl+K Ctrl+C`, "Añadir comentario de línea",
      `Ctrl+K Ctrl+U`, "Quitar comentario de línea",
      `Ctrl+/`, "Alternar comentario de línea",
      `Ctrl+Shift+A`, "Alternar comentario de bloque",
      `Alt+Z`, "Alternar ajuste de línea",
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
