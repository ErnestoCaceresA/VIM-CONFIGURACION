
Documentación de cualquier cosa
----------------------------------------------------
• :help ( plugin o accion/tema )
nos dara la documentación de los comandos y todo de ese plugin o tema ej.
:help window
:help terminal
:help :FZF
:help :buffer


Git integrado  
----------------------------------------------------------------------------------------
• https://www.chrisatmachine.com/Neovim/12-git-integration/


• :SignifyToggle
habilita y deshabilita los signos en cada linea cuando se tiene un repositorio que indica que linea se modifico, cual se agrego, etc
• :SignifyToggleHiightlight
habilita y deshabilita igual que el anterior, pero con colores verde y rojo si queremos visualizar que se agrego y que se borro, osea los cambios
• :SignifyDiff
muestra una ventana nueva con dos divisiones, una con el archivo como estaba antes de los cambios y uno con los cambios con colores rojo y verde

• :Gbrowse
nos lleva directamente al repositorio de github en el archivo o carpeta que estamos en es momento
 
• :Git {comando git}
basicamente para correr git ahi mismo en vim se usa asi con una G mayuscula ej.
:Git status   ,  :Git log --oneline ,  etc

• :!git status
para poner comandos de consola nativos, y aqui mismo pones los de git

 • :GV
para abrir commit browser
• :GV!         # will only list commits that affected the current file
• :GV?         # fills the location list with the revisions of the current file
• :GV          # or :GV? can be used in visual mode to track the changes in the            selected lines.


Sneak ( buscador palabras para posicionar cursor rápido )
----------------------------------------------------------------------------------------
• s {caracter} { caracter }
para buscar en el archivo hacia abajo de donde estamos posicionados buscamos dos caracteres y se nos resaltaran todos los resultados y con una letra en azul, presionamos la letra que esta en la palabra a la cual nos queremos posicionar y se posicionara el cursor en esa palabra
• s
si no queremos poner la letra que se mostro para navegar, podemos hacerlo con la letra s, esta va cambiando entre los distintos resultados
• S {caracter} { caracter }
lo mismo que s para buscar palabras y posicionar el cursor pero este para las palabras que están encima de donde estas posicionados
• f {char}  --> ;
sirve igual que la s para hacer búsquedas y posicionarnos en la palabra que queremos pero esta solo toma como scope la line en la que esta y solo adelante de donde estamos posicionados, en esta para cambiar entre resultados se hace con la tecla " ; "
• F { char }  --> ;
igual pero  solo toma en cuenta los de la linea actual, atras de donde estamos posicionados


terminal nativa
-------------------------------------------------------
• preferencias --> apariencia --> letra
en esta direccion se puede cambiar el tipo de letra de la terminal que tambien afectara a vim
cat  index.html  -  para ver por la terminal los archivos
mkdir - para crear carpetas
touch index.html   -  para crear archivos
ls -la     :  mostrar todos los archivos incluyendo los ocultos

* cd .oh-my-bash/themes/          ( en rama raiz )
das un ls a esa carpeta y vendrán todos los temas que tiene el framework oh-my-bash
• vim .bashrc
ahi en la linea 5 viene para poner algun tema, pones cualquier tema de los que estan en la carpeta themes que escribi arriba
OSH_THEME="powerline-plain"
• source .bashrc
para aplicar el tema nuevo

• http-server -o
para abrir un live server muy útil para el frontend cuando corremos un html y css

SNIPPETS
-----------------------------------
• https://github.com/garbas/vim-snipmate#installing-snipmate
• https://www.vim.org/scripts/script.php?script_id=2540
• snipMate - TextMate Style Snippets - Linux VIM      ( video youtube )

• ernesto/.vim/snippets/javascript.snippets
aqui estan todos los snippets personalizados para los archivos javascript
• :SnipMateOpenSnippetFile
abrirá los diferentes archivos donde estan los Snippets

• CREACIÓN DE UN SNIPPET
• snippet {palabra referente al snippet}
                           { lo que pondrá el snippet }
• para poner donde se va a posicionar el curso se usa ${VISUAL:default}

EJEMPLO:
snippet cl
           console.log( ${VISUAL:default} )

• en la carpeta snippets por el momento tengo para cuatro scopes
-javascript para archivos javascript
-html para archivos html
-foo.snippets  para archivos donde ponga   :SnipMateLoadScope foo    y se cargará esa carpeta de snippets
- ._snippets   para los snippets de scope global osea en todos los archivos



CHECAR DONDE SE MODIFICO POR ULTIMO UN ATAJO DE TECLA
---------------------------------------------------------------------------------------------------
:verbose

:verbose imap <tab>
en este caso diría en que plugin o en que linea del .vimrc se modifico por ultima vez el atajo de tecla tab
:verbose imap
saldrán todos los atajos de tecla que tengan imap ( recuerda el curso atajos personalizados) y tambien donde se modifico por ultima vez ese atajo
:verbose nnoremap
saldra una lista de todos los atajos de teclas que tiene el nnoremap (curso VIM atajos personalizados explica que es nnoremap) y donde se modifico por ultima vez
:verbose nnoremap <C-n>
saldra en donde se modificó por ultima vez el comando Ctrl + n de un nnoremap osea donde se modifico la acción a realizar al hacer ese atajo


PLIEGUES EN VIM
-----------------------------------------------------
• https://atareao.es/tutorial/vim/pliegues-en-vim/
aqui esta toda la info sobre este tema

• za 
abre o cierra el pliegue en el que te encuentres ( ya sea función, clase , etc )
• zR 
abre todos los pliegues en la memoria actual 
• zM 
Cierra todos los pliegues en la memoria actual


BUFFERS
-----------------------------------
• :buffer <TAB>
te saldran todos los buffers que tienes para abrirlo solo cambias con tab y das enter

•  :buffers 
muestra todos los buffers que tenemos abiertos con su respectivo numero de posicion
• :ls
también muestra los buffers de igual manera que la anterior
• :b(numero de bufer)
después de ver todos los buffers que tenemos con :buffers, sale su respectivo número de buffer así que podemos navegar al buffer especifico que queremos con ese numero
ej.
:b3


• :bd
para borrar el buffer actual
• :bwipeout
para borrar todos los buffers que tenemos

sirve por si tenemos abierta una terminal en un buffer y queremos navegar hacia esa terminal

WINDOWS
--------------------------------
•  :help window
documentación de comando para este tema

• ctrl + w + n
abre una nueva ventana de edición sin guardar
• ctrl + w + ( < , > )
para incrementar o decrementar la anchura de la ventana
• ctrl + w + (  )

• :below 
abre nueva ventana en la parte inferior

• ctrl + w + ( flecha arriba o flecha abajo )
para mover el cursor o la posición entre ventanas que tengamos arriba y abajo, sirve si tenemos una terminal abajo que abrimos con :below terminal
• ctrl + w + ( j , k )
igual para arriba y abajo
• ctrl + w + w 
cambia entre todas las ventadas que tengamos abiertas
• ctrl + ( h , l )
para movernos entre derecha e izquierda


TERMINAL INTEGRADA
--------------------------------
• :help terminal
documentación de este tema
• :terminal
abre una terminal
• :below terminal

hay veces que no se abre la terminal abajo y se abre en un buffer asi que con 
:buffers podemos ver el numero de buffer que tiene la terminal y con
:b4  remplazando el numero 4 por el numero donde esta la terminal podemos viajar rápido a la terminal que tengamos abierta


FZF ( buscador profesional )
--------------------------------------------------
* https://www.youtube.com/watch?v=on1AzaZzQ7k

• :FZF
abre un buscador de archivos igual que hacíamos en ctrl + p en VScode y ahi puedes escribir el archivo a buscar
• :Lines
abre un buscador de string para buscar algo un string que tengamos en los buffers que tengamos abiertos
• Rg
parecido al Lines para buscar strings pero este es en todos los archivos del directorio
• :history
para abrir el historial de todos los archivos que he abierto

• HACK EXTRA:
• cd ( posicionado en un directorio en NEERDTree )
basicamente cambia el cd de donde estamos posicionados, asi que poniendo el atajo cd posicionados en la carpeta que queremos estar (en nerdTree) para despues hacer la busqueda con
:FZF de toda esa carpeta a la que le hicimos el cd


NERDTree   (  Demasiado util )
--------------------------------------------------

•  CREAR ARCHIVOS, ELIMINAR, COPIAR, ETC
• m
al estar posicionados en un nodo ( carpeta o archivo ) y al presionar m
te saldran varias opciones ya sea para crear un nuevo nodo, eliminar, copiar, etc,  para crear un nuevo archivo en el directorio que presionamos m solamente le damos en la opción de add y ponemos el nombre del archivo y para eliminar pues ponemos la opcion de eliminar y así es demasiado util

• cd
primero nos movemos por NERDTree y al estar posicionados en la carpeta donde queremos crear una nueva carpeta presionamos el atajo cd y se cambiara la ruta donde estamos
* R
despues de crear la nueva carpeta esta no se mostrara hasta que refresquemos NERDTree asi que con R podemos refrescar y aparecera la nueva carpeta 

• :Bookmark nombre_bookmark
sirve para crear como rutas, primo con cd vas navegando a la carpeta que quieres y estando ahi haces un :Bookmark y le pones nombre y ya lo tendras ahi en la para poder cambiarte entre carpetas de una forma rapido y sencilla
• B
para sacar lo bookmarks que tenemos creados ( son como paths ) de carpetas o archivos para navegar rapido, podemos crear uno con 
Tengo un Bookmark para la carpeta visual studio code asi que estando includo en la rama principal puedo sacar vim y sacar el nerdtree despues los bookmarks e ir directamente al directorio de visual studio code y ahi con 
C
cd
ir navegando entre los directorios

• C
para abrir la carpeta en pantalla completa en el NERDTree por si solo queremos visualizar lo que tenemos dentro de esa carpeta y ya después podemos regresar a la carpeta anterior con el up a dir

• q
para cerrar el nerdtree


VIM EN VISUAL STUDIO CODE
------------------------------------------------
extensión que se llama Vim y es un emulador para usar en visual studio code, PROBAR

FUNDAMENTOS DE VIM
-------------------------------------------------------------
• • vim   -  abrir archivo en blanco
• vim index.html  -    abrir algun archivo que tengamos en la carpeta
• • :q   - salir
• :q!  -  forzar cierre sin guardar cambios
•  ZQ (mayúsculas)  -  salir sin guardar( rápido y forzado :q! )
•  vim nombre_archivo.js
para crear archivos estando en la terminal en el directorio donde queremos ese archivo con cualquier extension
• :w 
guardar archivo en el que estás trabajando o guardar cambios hechos 
• i      ||    a      /     esc
i modo inserción para escribir en el archivo, esc para salir de modo inserción
• :wq 
guardar cambios y cerrar archivo
• :x
mas corto para poder hacer un :wq y guardar cambios y salir rápido
• ZZ ( mayúsculas )
guardar y salir
• :w nombre_archivo.js
si estamos editando algo con solo vim (escribiendo vim en la consola en la carpeta) podemos estar en el editor de texto y al acabar con :w hola.js se creará el archivo que indiquemos con lo que ya hicimos ahí
• j   ,  k  ,  l  ,  h ( en modo normal no modo comando )
sirven como flechas de navegación la j y k para ir arriba y abajo y l y h para ir de derecha a izquierda, es muy cómodo
• e  ,  b    ( en modo normal )
sirve la e para ir al final de la linea donde estas posicionado y la b para ir backwards en las palabras, es demasiado comodo mas que usar ctrl + flechas
• ctrl + v  -> seleccionar lineas a editar ->  I  ( i mayúscula )  -> esc
primero se cambia a modo bloque y se seleccionan las lineas en las cuales queremos escribir el mismo texto, y despues insertas texto y al darle a esc se escribira en las lineas que seleccionaste


MODO INSERCIÓN
-------------------------------------------------------------
• I  (mayuscula en modo normal)
te cambia hacia el inicio de la linea y cambia a modo inserción
• A (mayuscula en modo normal)
te cambia al final de la linea y cambia a modo inserción y da un espacio
• o (minuscula en modo normal)
da un salto de linea y cambia a modo inserción
• O ( mayúscula y en modo normal )
da un salto de linea en la linea actual y te posiciona arriba en modo inserción
 

MANIPULACIONES
-------------------------------------------------------------
• dd ( en modo normal )
para eliminar completamente la linea
• r  ( minuscula en modo normal )
modo reemplazar para remplazar el caracter en el que estamos posicionador
• R ( mayuscula en modo normal)
modo remplazar completo, ira remplazando todo lo que vaya por enfrente
• s  ,  S
la minúscula borra el carácter posicionado y entra en modo inserción y la mayúscula borra toda la linea y entra en modo inserción
• x  ,  X
minuscula para borrar hacia delante y mayuscula para borrar hacia atras
• u  ,  ctrl + r
u sirve para hacer un undo como un ctrl + z para deshacer y ctrl + r sirve para hacer borrar el undo osea traer todo lo que deshizo de vuelta 
• shift + tab ( en modo inserccion )
para borrar cosas mas cómodo sin tener que ir a la tecla de borrar

• • c (para borrar cosas con combinacion de navegacion)
 
• cl
para borrar caracter donde se esta posicionado y cambiar a modo inserccion
• cw
para borrar la palabra enfrente, tambien podemos combinar en vez de "w" poner la b o corchetes o j o k o todas las de navegacion incluso con numeros
• V
mayusula lo que hara es entrar en modo insercion pero ya selecciona en automatico toda la linea donde te encuentras


MANIPULACIONES AVANZADAS
-------------------------------------------------------------
• $  ,  0
signo de dolar te posiciona al final de la linea y el cero te posiciona al principio de la linea

• { }
sirve para posicionarse al final o al principio de un párrafo ( sirve para avanzar el cursor rapido

• COMBINACIONES DE TECLAS ( con d que es de borrar y los de navegacion )
• dw
borra la palabra en la que estamos posicionados, solo lo que este enfrente de donde estemos posicionados
• d$
de despues dolar borra la linea entera pero solo lo que este adelante de donde estamos posicionados
• d0
de despues cero sirve para borrar toda la linea pero solo lo que este antes de donde estamos posicionados
• cw
para borrar palabra enfrente de donde estamos y entrar en modo insercion
• cc 
borrar toda la linea y entrar en modo insercion

• COPIAR Y PEGAR
• yy 
la "yy" sirve para copiar completamente la linea
• p   ,   P
minuscula para pegar hacia abajo o adelante y mayuscula para pegar hacia arriba o hacia atrás
• dd
sirve para cortar la linea y se queda guardado para pegar
• yw
combinación para copiar la palabra o lo que este hacia adelante de donde estamos posicionados pero hasta el espacio osea la palabra
• y$   ,   y0
para copiar toda la linea desde donde estemos posicionados hacia adelante lo contrario con y0 cero


COMANDOS Y BÚSQUEDAS
-------------------------------------------------------------
• :! comandos_terminal
poniendo dos puntos y depues exclamacion podemos ejecutar comandos de la terminal del sistema operativo sin tener que salir de vim por ejemplo
:!node server.js   ||   :!git status
• /   ,   ?
para hacer búsquedas en nuestro documento como ctrl + f SE PUEDE HACER MEDIANTE EXPRESIONES REGULARES
la barra hace la busqueda hacia atras y con el signo de admiracion hacia adelante de donde estamos posicionados

• :noh
quita el remarcado de la búsqueda que hicimos

MAS ATAJOS
-------------------------------------------------------------
• .
punto, replica el ultimo comando que hicimos, asi si quieres hacer varias veces ese ultimo comando, el punto lo hace
• gg  ,  G
minuscular para ir al principio del documento, mayuscula para ir al final del documento, TAMBIEN SIRVE PARA COMBINAR CON OTRAS YA SEA PARA BORRAR, COPIAR, CORTAR, Y ESO, DESDE DONDE ESTEMOS POSICIONADOS HASTA ABAJO DEL DOCUMENTO O ALREVEZ

• • COMBINACIÓN CON NUMEROS
• 5dd
los números sirve para combinar por ejemplo aqui borraria las siguientes 5 lineas de codigo desde donde estamos posicionados
• 9e
te posiciona 9 palabras adelante
• shift + k
te muestra la información de la función o clase en la que estas posicionado como lo hace vscode al poner encima el cursor


CONFIGURACIÓN NATIVA
-------------------------------------------------------------
todas las configuraciones y plugins estan en la raíz, en el archivo .vimrc
* * poner en terminal vim .vimrc para abrirlo estando posicionados en la raiz

para arreglar el pedo de neovim que no agarra ese archivo .vimrc en el video numero 45 explica como hacer una carpeta en la raiz llamada .vim adentro con un archivo llamado init.vim y ahi sacamos el codigo para arreglar este pedo de neovim que no sucedería con vim normal, para poder en el .vimrc ya meter ahí todas las configuraciones y que se apliquen 



PLUGINS
-------------------------------------------------------------

|    PLUGINS INSTALADOS   |

• https://github.com/junegunn/vim-plug
ese es el tipo gestor de plugins para instalar y nos va ayudar a instalar plugins e aplicarlos a vim
• https://github.com/rafi/awesome-vim-colorschemes
variedad de temas para vim
• https://github.com/vim-airline/vim-airline
airline para la barra de estado de vim
• https://github.com/preservim/nerdtree
para tener a kla izquierda un tree del directorio para cambiar entre archivos
CONFIGURAR PARA PERSONALIZAR MAS 
• https://github.com/jiangmiao/auto-pairs
para que se pongan comillas dobles, paréntesis dobles y todo eso
• https://github.com/tpope/vim-commentary
para al escribir gcc se comente la linea
• https://github.com/neoclide/coc.nvim
inteligence para el autocompletado de lenguajes de programacion
• https://github.com/neoclide/coc.nvim/wiki/Language-servers
lista de lenguajes para coc se instalan de la siguiente manera
:CocInstall coc-html     ( o ahí en la pagina viene como instalar para cada lenguaje )
• https://github.com/ryanoasis/vim-devicons
para agregarlo iconos a los archivos dependindo que es, checar video en https://www.youtube.com/watch?v=fR4ThXzhQYI    ahi explica como instalar algo antes de instalar el plugin
• 


|    INSTALACIÓN DE PLUGINS VIDEO 47  |

primero se tiene que buscar en google el plugin que queramos y despues irnos al repositorio de gihub, despues entramos a " vim .vimrc " donde estan todas nuestras configuraciones de vim y entre los call que se llamga plugin#begin y plugin#end poner ahí adentro:

Plug ' todo_lo_que_este_despues_del_github,com_ '

se copi y pega de la url de github el nombre del autor y repositorio ej. joshdick/onedark.vim
despues se guardan los cambios y se ejecuta el comando

:PlugInstall ( con tab te salen las opciones )

y eso instalara el plugin y dspues lo cierras con :q y refrescas y ya esta instalado

abajo puedes poner las configuraciones de ese plugin, los puedes encontrar en la documentación de ese plugin que esta en el repositorio de github

|  DESINSTALACIÓN DE PLUGINS  |

• poniendo :PlugClean

COMANDOS DE PLUGINS
-------------------------------------------------------------
• cntrl + n 
sacar NERDTreeToggle para navegar en el directorio
• s ( en el archivo que estemos posicionados en el NERDTree )
sirve para dividir la pantalla en dos, se pone tecla s en el archivo a abrir en pantalla dividida
• CocCommad Prettier
para ejecutar el prettier para dar formato al archivo
• ctrl + h   ,   ctrl + l
la h para navegar a ventanas hacia la izquierda y la ele para navegar a ventanas hacia la derecha, ya sea en pantalla dividida o en el NERDTree
• gcc
para comentar la linea de codigo, para comentar varias lineas podemos con la tecla "v" entrar a modo visual y seleccionar lo que queremos comentar y después al tenerlo seleccionado ahora si gcc para comentar



COMANDOS PERSONALIZADOS
-------------------------------------------------------------
• ctrl + s
para guardar :w
• ctrl + m
para guardar y salir :wq
• ctrl + p  || ctrl + o
p    -   :bprev ,   o   -   :bnext          | para navegar entre los buffers que tengamos abiertos
• :bd
para eliminar un buffer

