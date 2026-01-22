#set page(
  paper: "a4",
  flipped: true, 
  margin: (x: 0.5cm, y: 0.5cm),
)

#set text(
  font: "DejaVu Sans",
  size: 13pt,
  lang: "es"
)

// Títulos ultra-compactos
#show heading.where(level: 1): it => [
  #set text(fill: rgb("#2D2D2D"), size: 14pt)
  #block(inset: (bottom: 2pt), stroke: (bottom: 1.5pt + rgb("#007ACC")))[#it]
  #v(4pt)
]

#show heading.where(level: 2): it => [
  #set text(fill: rgb("#007ACC"), size: 9pt)
  #v(2pt)
  #it
  #v(-1pt)
]

// Función de atajo ultra-densa corregida
#let s(action, keys) = {
  grid(
    columns: (1.2fr, 0.8fr),
    gutter: 2pt,
    text(size: 7pt)[#action],
    align(right, raw(keys))
  )
  v(-5.5pt) 
}

= Atajos VS Code (Linux) - atareao.es

#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  column-gutter: 15pt,
  row-gutter: 10pt,
  [
    == 🛠️ General
    #s("Paleta comandos", "C+S+P")
    #s("Abrir archivo", "C+P")
    #s("Nueva terminal", "C+S+ñ")
    #s("Configuración", "C+,")
    #s("Atajos teclado", "C+K C+S")
    #s("Extensiones", "C+S+X")
    #s("Barra lateral", "C+B")
    #s("Zen Mode", "C+K Z")
    #s("Output", "C+S+U")
    #s("Problemas", "C+S+M")
    #s("Zoom In/Out", "C++/ -")
  ],
  [
    == 📝 Edición
    #s("Cortar línea", "C+X")
    #s("Borrar línea", "C+S+K")
    #s("Línea abajo", "C+Ent")
    #s("Línea arriba", "C+S+Ent")
    #s("Mover línea", "A+↑/↓")
    #s("Copiar línea", "S+A+↑/↓")
    #s("Comentar línea", "C+}")
    #s("Comentar bloque", "C+S+A")
    #s("Sangría +/-", "C+] / [")
    #s("Unir líneas", "C+J")
    #s("Toggle Wrap", "A+Z")
  ],
  [
    == 🔍 Navegación
    #s("Ir a línea", "C+G")
    #s("Ir a símbolo", "C+S+O")
    #s("Símbolo proy.", "C+T")
    #s("Definición", "F12")
    #s("Def. rápida", "A+F12")
    #s("Implementación", "C+F12")
    #s("Referencias", "S+F12")
    #s("Cambiar símbolo", "F2")
    #s("Atrás/Adel.", "C+A+- / S+-")
    #s("Sig. error", "F8")
    #s("Bracket match", "C+S+\\")
  ],
  [
    == 🖱️ Cursor/Sel.
    #s("Cursor manual", "A+Click")
    #s("Cursor ↑/↓", "C+A+↑/↓")
    #s("Cur. fin línea", "S+A+I")
    #s("Sel. palabra", "C+D")
    #s("Saltar palabra", "C+K C+D")
    #s("Sel. ocurrencias", "C+S+L")
    #s("Sel. expansiva", "S+A+→")
    #s("Sel. reducida", "S+A+←")
    #s("Cursor columna", "S+A+Drag")
    #s("Inicio pág", "C+S+Home")
  ],
  [
    == 📂 Archivos/Tabs
    #s("Nuevo archivo", "C+N")
    #s("Abrir archivo", "C+O")
    #s("Guardar", "C+S")
    #s("Guardar todo", "C+K S")
    #s("Cerrar tab", "C+W")
    #s("Cerrar carpeta", "C+K F")
    #s("Dividir editor", "C+\\")
    #s("Cambiar grupo", "C+1,2,3")
    #s("Fijar pestaña", "C+K Ent")
    #s("Siguiente tab", "C+Tab")
  ],
  [
    == 🔍 Búsqueda
    #s("Buscar", "C+F")
    #s("Reemplazar", "C+H")
    #s("Buscar global", "C+S+F")
    #s("Reemplazo glob.", "C+S+H")
    #s("Toggle Case", "A+C")
    #s("Toggle Regex", "A+R")
    #s("Toggle Whole W.", "A+W")
    #s("Focus Buscar", "C+S+F")
    #s("Limpiar busc.", "Esc")
  ],
  [
    == 🌿 Git / SC
    #s("Menú Git", "C+S+G")
    #s("Stage cambios", "C+K +")
    #s("Commit", "C+Ent")
    #s("Push", "C+S+P > Push")
    #s("Pull", "C+S+P > Pull")
    #s("Ver Diff", "Click")
    #s("Siguiente camb.", "A+F5")
    #s("Anterior camb.", "S+A+F5")
  ],
  [
    == 🐞 Debug
    #s("Menú Debug", "C+S+D")
    #s("Breakpoint", "F9")
    #s("Start/Continue", "F5")
    #s("Paso a paso", "F10")
    #s("Entrar en", "F11")
    #s("Salir de", "S+F11")
    #s("Detener", "S+F5")
    #s("Reiniciar", "C+S+F5")
  ],
  [
    == 🖥️ Terminal
    #s("Toggle Term.", "C+`")
    #s("Nueva Term.", "C+S+`")
    #s("Scroll Up/Dn", "C+↑/↓")
    #s("Pág Up/Dn", "S+PgUp/Dn")
    #s("Fin terminal", "C+End")
    #s("Inicio term.", "C+Home")
  ],
  [
    == 💡 Otros
    #s("Full screen", "F11")
    #s("MD Preview", "C+S+V")
    #s("Side Preview", "C+K V")
    #s("Ajustar zoom", "C+0")
    #s("Focus barra", "C+0")
    #s("Cerrar todo", "C+K W")
  ]
)

#v(1fr)
#align(center, text(size: 6.5pt, style: "italic")[Leyenda: C=Ctrl, S=Shift, A=Alt, Ent=Enter --- atareao.es])
