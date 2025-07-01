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
  title: [Niri],
  icon: image("images/zed-icon.png"),
  column-number: 3,
)
#set table(columns: (1fr, 1fr))

#table(
  theader[Básicos],
  kbd("Mod", "Shift", "/"),         [Muestra una lista de los atajos más importantes de Niri],
  kbd("Mod", "T"),                  [Abre una terminal],
  kbd("Mod", "D"),                  [Abre el lanzador de aplicaciones],
  kbd("Super", "Alt", "L"),         [Bloquea la pantalla con Swaylock],
  kbd("Mod", "Q"),                  [Cierra la ventana enfocada],
  kbd("Mod", "Shift", "E"),         [Sale de Niri],
)

#table(
  theader[Movimientos],
  kbd("Mod", "Ctrl", "H"),          [Mueve la columna enfocada a la izquierda],
  kbd("Mod", "Ctrl", "L"),          [Mueve la columna enfocada a la derecha],
  kbd("Mod", "Ctrl", "J"),          [Mueve la ventana enfocada hacia abajo en la columna],
  kbd("Mod", "Ctrl", "K"),          [Mueve la ventana enfocada hacia arriba en la columna],
  kbd("Mod", "Ctrl", "Shift", "H"), [Mueve la columna enfocada al monitor de la izquierda],
  kbd("Mod", "Ctrl", "Shift", "J"), [Mueve la columna enfocada al monitor inferior],
  kbd("Mod", "Ctrl", "Shift", "K"), [Mueve la columna enfocada al monitor superior],
  kbd("Mod", "Ctrl", "Shift", "L"), [Mueve la columna enfocada al monitor de la derecha],
  kbd("Mod", "Ctrl", "U"),          [Mueve la columna enfocada al espacio de trabajo inferior],
  kbd("Mod", "Ctrl", "I"),          [Mueve la columna enfocada al espacio de trabajo superior],
  kbd("Mod", "Shift", "U"),         [Mueve el espacio de trabajo enfocado hacia abajo],
  kbd("Mod", "Shift", "I"),         [Mueve el espacio de trabajo enfocado hacia arriba],
)
#table(
  theader[Enfoques],
  kbd("Mod", "H"),                  [Enfoca la columna de la izquierda],
  kbd("Mod", "L"),                  [Enfoca la columna de la derecha],
  kbd("Mod", "J"),                  [Enfoca la ventana inferior en la columna],
  kbd("Mod", "K"),                  [Enfoca la ventana superior en la columna],
  kbd("Mod", "Shift", "H"),         [Enfoca el monitor a la izquierda],
  kbd("Mod", "Shift", "J"),         [Enfoca el monitor inferior],
  kbd("Mod", "Shift", "K"),         [Enfoca el monitor superior],
  kbd("Mod", "Shift", "L"),         [Enfoca el monitor a la derecha],
  kbd("Mod", "U"),                  [Enfoca el espacio de trabajo inferior],
  kbd("Mod", "I"),                  [Enfoca el espacio de trabajo superior],
)

#table(
  theader[Redimensiona],
  kbd("Mod", "R"),                  [Alterna entre anchos predefinidos de columna],
  kbd("Mod", "Shift", "R"),         [Alterna entre alturas predefinidas de columna],
  kbd("Mod", "F"),                  [Maximiza la columna],
  kbd("Mod", "-"),                  [Reduce el ancho de la columna un 10%],
  kbd("Mod", "="),                  [Aumenta el ancho de la columna un 10%],
  kbd("Mod", "Shift", "-"),         [Reduce la altura de la ventana un 10%],
  kbd("Mod", "Shift", "="),         [Aumenta la altura de la ventana un 10%],
  kbd("Mod", "Ctrl", "R"),          [Restaura la altura de la ventana a modo automático],
  kbd("Mod", "Shift", "F"),         [Activa o desactiva el modo de pantalla completa en la ventana enfocada],
)

#table(
  theader[Modos],
  kbd("Mod", ","),                  [Absorbe la ventana a la derecha en la columna enfocada],
  kbd("Mod", "."),                  [Expulsa la ventana inferior en la columna a su propia columna],
  kbd("Mod", "["),                  [Absorbe o expulsa la ventana enfocada hacia la izquierda],
  kbd("Mod", "]"),                  [Absorbe o expulsa la ventana enfocada hacia la derecha],
  kbd("Mod", "C"),                  [Centra la columna en la vista],
  kbd("Mod", "V"),                  [Mueve la ventana enfocada entre modo flotante y modo mosaico],
  kbd("Mod", "Shift", "V"),         [Cambia el enfoque entre modo flotante y modo mosaico],
)

#table(
  theader[Captura de pantalla],
  kbd("PrtSc"),                     [Captura una zona de la pantalla. Selecciona con el ratón, pulsa Espacio para guardar o Escape para cancelar],
  kbd("Alt", "PrtSc"),              [Captura una imagen de la ventana enfocada al portapapeles y la guarda en ~/Pictures/Screenshots/],
  kbd("Ctrl", "PrtSc"),             [Captura una imagen del monitor enfocado al portapapeles y la guarda en ~/Pictures/Screenshots/],
)
