#import "@preview/fletcher:0.4.5" as fletcher: diagram, node, edge
#set page(
  "presentation-16-9",
  fill: black,
  margin: 0.5cm)
#set text(size: 13pt, fill: white)
= Bash
  #columns(3, gutter: 12pt)[
    == Trabajando con procesos
    #table(
      columns: (1fr, 5fr),
      gutter: -4pt,
      `Ctrl+C`, "Mata un proceso",
      `Ctlr+Z`, "Suspende un proceso",
      `Ctlr+D`, "Cierra la shell",
    )
    == Controlando la pantalla
    #table(
      columns: (1fr, 5fr),
      gutter: -4pt,
      `Ctrl+L`, "Limpia la pantalla",
      `Ctrl+S`, "Deja de pintar en pantalla",
      `Ctrl+Q`, "Vuelve a pintar en pantalla",
    )
    == Moviendo el cursor
    #table(
      columns: (1fr, 5fr),
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
    == Movimientos
    #set text(12pt)
    #diagram(
      node-stroke: 3pt,
      edge-stroke: white + 1pt,
      spacing: 0pt,
      node((0, 0), `$`),
      node((1, 0), ``),
      node((2, 0), `rm`),
      node((3, 0), ``),
      node((4, 0), `file1.txt`),
      node((5,0), `|`),
      node((6,0), `file2.txt`),
      node((7, 0), ``),
      node((8,0), `file3.txt`),
      node((9,0), ``),
      edge((5,0), (9,0), `Ctrl+E`, "-|>", bend: 90deg),
      edge((5,0), (7,0), `Alt+F`, "-|>", bend: 90deg),
      edge((5,0), (1,0), `Ctrl+A`, "-|>", bend: -100deg),
      edge((5,0), (3,0), `Alt+B`, "-|>", bend: -80deg),
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
