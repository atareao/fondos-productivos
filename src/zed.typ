#import "@preview/cram-snap:0.2.2": cram-snap, theader
#import "@preview/keyle:0.2.0"
#let kbd = keyle.config(theme: keyle.themes.standard)

#set page(
  paper: "a4",
  flipped: true,
  margin: 0.5cm,
)
#set text(font: "Iosevka NF", size: 11pt)

#show: cram-snap.with(
  title: [Zed],
  icon: image("zed-icon.png"),
  column-number: 3,
)
#set table(columns: (1fr, 1fr))


#table(
  theader[General y Ventanas],
  kbd("Ctrl", "Shift", "P"), [Abrir paleta de comandos],
  kbd("Ctrl", "O"),          [Abrir/Cerrar archivo],
  kbd("Ctrl", "S"),          [Guardar archivo],
  kbd("Ctrl", "Alt", "S"),   [Guardar todos los archivos],
  kbd("Ctrl", "W"),          [Cerrar pestaña],
  kbd("Ctrl", "Shift", "N"), [Nueva ventana],
  kbd("Ctrl", "Shift", "W"), [Cerrar ventana],
  kbd("Ctrl", "K"),          [Cambiar entre paneles],
  kbd("Ctrl", "P"),          [Abrir búsqueda global],
)

#table(
     theader[Edición de Texto],
     kbd("Ctrl", "X"),           [Cortar línea (sin selección)],
     kbd("Ctrl", "C"),           [Copiar línea (sin selección)],
     kbd("Ctrl", "V"),           [Pegar],
     kbd("Ctrl", "Z"),           [Deshacer],
     kbd("Ctrl", "Y"),           [Rehacer (o `Ctrl + Shift + Z`)],
     kbd("Ctrl", "A"),           [Seleccionar todo],
     kbd("Ctrl", "/"),           [Comentar/Descomentar línea],
     kbd("Shift", "Alt", "Up/Down"), [Duplicar línea],
     kbd("Alt", "Up/Down"),      [Mover línea],
   )

   #table(
     theader[Navegación],
     kbd("Ctrl", "Click"),       [Ir a la definición (o `F12`)],
     kbd("Ctrl", "G"),           [Saltar a la línea],
     kbd("Alt", "Left"),         [Volver al anterior],
     kbd("Alt", "Right"),        [Ir al siguiente],
     kbd("Ctrl", "F"),           [Buscar en archivo],
     kbd("Ctrl", "H"),           [Reemplazar en archivo],
     kbd("Ctrl", "R"),           [Saltar entre símbolos],
   )

   #table(
     theader[Depuración y Terminal],
     kbd("Ctrl", "J"),           [Abrir/Cerrar terminal],
     kbd("F5"),                  [Iniciar depuración/Continuar],
     kbd("F10"),                 [Paso a paso (step over)],
     kbd("F11"),                 [Paso a paso (step into)],
     kbd("Shift", "F11"),        [Paso a paso (step out)],
   )

   #table(
     theader[Varios],
     kbd("Ctrl", "K", "Z"),      [Activar/Desactivar Zen Mode],
     kbd("Ctrl", "B"),           [Alternar barra lateral],
     kbd("Ctrl", "K", "T"),      [Cambiar tema],
     kbd("Ctrl", "R"),           [Recargar ventana],
   )
