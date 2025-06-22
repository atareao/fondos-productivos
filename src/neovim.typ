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
  title: [Neovim],
  icon: image("images/neovim.svg"),
  column-number: 3,
)
#set table(columns: (1fr, 1fr))


#table(
  theader[Navegación (Modo Normal)],
  kbd("h"),                 [Mover cursor a la izquierda],
  kbd("j"),                 [Mover cursor abajo],
  kbd("k"),                 [Mover cursor arriba],
  kbd("l"),                 [Mover cursor a la derecha],
  kbd("w"),                 [Saltar al inicio de la siguiente palabra],
  kbd("b"),                 [Saltar al inicio de la palabra anterior],
  kbd("e"),                 [Saltar al final de la palabra actual],
  kbd("0"),                 [Ir al inicio de la línea],
  kbd("$"),                 [Ir al final de la línea],
  kbd("gg"),                [Ir al inicio del archivo],
  kbd("G"),                 [Ir al final del archivo],
  kbd("n", "G"),            [Ir a la línea `n`],
  kbd("Ctrl", "f"),         [Avanzar una pantalla],
  kbd("Ctrl", "b"),         [Retroceder una pantalla],
  kbd("H"),                 [Mover cursor a la parte superior de la pantalla],
  kbd("M"),                 [Mover cursor al medio de la pantalla],
  kbd("L"),                 [Mover cursor a la parte inferior de la pantalla],
)

#table(
  theader[Modos],
  kbd("i"),                 [Entrar al modo Insert (en la posición actual)],
  kbd("a"),                 [Entrar al modo Insert (después del cursor)],
  kbd("A"),                 [Entrar al modo Insert (al final de la línea)],
  kbd("o"),                 [Entrar al modo Insert (nueva línea debajo)],
  kbd("O"),                 [Entrar al modo Insert (nueva línea arriba)],
  kbd("v"),                 [Entrar al modo Visual (carácter)],
  kbd("V"),                 [Entrar al modo Visual (línea)],
  kbd("Ctrl", "v"),         [Entrar al modo Visual (bloque)],
  kbd("esc"),               [Salir de cualquier modo al modo Normal],
  kbd("I"),                 [Entrar modo Insert al inicio de la línea],
  kbd("s"),                 [Borrar carácter y entrar modo Insert],
)

#table(
  theader[Edición y Eliminación (Modo Normal)],
  kbd("x"),                 [Borrar carácter bajo el cursor],
  kbd("d", "d"),            [Borrar la línea actual],
  kbd("n", "d", "d"),       [Borrar `n` líneas desde la actual],
  kbd("d", "w"),            [Borrar hasta el inicio de la siguiente palabra],
  kbd("d", "e"),            [Borrar hasta el final de la palabra actual],
  kbd("d", "$"),            [Borrar hasta el final de la línea],
  kbd("r"),                 [Reemplazar un carácter],
  kbd("R"),                 [Entrar al modo Reemplazar],
  kbd("c", "c"),            [Borrar la línea y entrar al modo Insert],
  kbd("c", "w"),            [Borrar hasta la palabra y entrar al modo Insert],
  kbd("u"),                 [Deshacer],
  kbd("Ctrl", "r"),         [Rehacer],
  kbd("."),                  [Repetir el último comando],
)

#table(
  theader[Copiar y Pegar (Yank y Put - Modo Normal)],
  kbd("y", "y"),            [Copiar (yank) la línea actual],
  kbd("n", "y", "y"),       [Copiar `n` líneas desde la actual],
  kbd("y", "w"),            [Copiar hasta el inicio de la siguiente palabra],
  kbd("y", "e"),            [Copiar hasta el final de la palabra actual],
  kbd("y", "$"),            [Copiar hasta el final de la línea],
  kbd("p"),                 [Pegar (put) después del cursor],
  kbd("P"),                 [Pegar (put) antes del cursor],
)

#table(
  theader[Búsqueda y Reemplazo],
  kbd("/"),                 [Iniciar búsqueda (hacia adelante)],
  kbd("?"),                 [Iniciar búsqueda (hacia atrás)],
  kbd("n"),                 [Ir a la siguiente ocurrencia de búsqueda],
  kbd("N"),                 [Ir a la ocurrencia de búsqueda anterior],
  kbd("asterisk"),          [Buscar palabra bajo el cursor (hacia adelante)],
  kbd("hash"),              [Buscar palabra bajo el cursor (hacia atrás)],
  kbd("colon", "s"),        [Comenzar comando de sustitución (`:s/buscar/reemplazar/g`)],
)

#table(
  theader[Archivos y Salir (Modo Command-line)],
  kbd("colon", "w"),        [Guardar el archivo],
  kbd("colon", "q"),        [Salir de Neovim],
  kbd("colon", "wq"),       [Guardar y salir],
  kbd("colon", "x"),        [Guardar y salir (similar a `wq`)],
  kbd("colon", "q!"),       [Salir sin guardar],
  kbd("colon", "e"),        [Abrir un archivo (`:e /ruta/al/archivo`)],
  kbd("colon", "ls"),       [Listar buffers abiertos],
  kbd("colon", "bn"),       [Ir al siguiente buffer],
  kbd("colon", "bp"),       [Ir al buffer anterior],
)

#table(
  theader[Ventanas y Splits (Modo Normal)],
  kbd("Ctrl", "w", ",", "s"), [Dividir ventana horizontalmente],
  kbd("Ctrl", "w", ",", "v"), [Dividir ventana verticalmente],
  kbd("Ctrl", "w", ",", "h"), [Moverse a la ventana de la izquierda],
  kbd("Ctrl", "w", ",", "j"), [Moverse a la ventana de abajo],
  kbd("Ctrl", "w", ",", "k"), [Moverse a la ventana de arriba],
  kbd("Ctrl", "w", ",", "l"), [Moverse a la ventana de la derecha],
  kbd("Ctrl", "w", ",", "c"), [Cerrar ventana actual],
  kbd("Ctrl", "w", ",", "o"), [Cerrar todas las ventanas excepto la actual],
)
