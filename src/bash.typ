#set page(
  "presentation-16-9",
  fill: black,
  margin: 0.5cm)
#set text(size: 10pt, fill: white)
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

  ]