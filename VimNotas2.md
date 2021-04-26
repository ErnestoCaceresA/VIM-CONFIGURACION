
-------------------------------------------------------------------
COPIAR Y PEGAR COSAS FUERA DE VIM
-------------------------------------------------------------------
• V  --->  "+y
V para seleccionar toda la linea donde estamos y entrar en modo visual y después "+y para copiar al portapapeles lo que tenemos seleccionado para poder pegarlo en otra ventaja o programa


• seleccionar texto en modo visual --> "ay
básicamente esto guarda en el registro a lo que copiamos que teníamos seleccionado y después podemos pegarlo usando
"ap
o también podemos guardar otra cosa en el registro b con
"by
y después pegarlo
"bp

----------------------------------------------------------------
ATAJOS PERSONALIZADOS
----------------------------------------------------------------
• SI ALGUNO SE TRABA O SE TARDA EN RESPONDER SOLO PRESIONA UN TAB Y SE EJECUTARA AL INSTANTE

• • leader key = <Space>

• jk ( en modo inserción )
esta es como presionar al <esc> pero mientras estamos en  modo escritura en inserción y es muy útil para ya no usar el esc para cambiar de modo

• ctrl + u
saca el :FZF para buscar documentos en el directorio
• ctrl + x 
para cerrar archivo :q
• <Space> + w
para guardar un archivo
• <Space> + q
para cerrar buffer, (si se tarda en ejecutar simplemente con presionar TAB se cerrara mas rapido al instante)
• <Space> + r + tab
saldrán toda la lista de buffers que tengo en el momento para poder moverme entre ellos de una forma fácil, ( si se tarda en ejecutar simplemente presionar TAB al momento que hacemos el atajo y aparecera rapido el autocompletado de todos nuestros buffers )

---------------------------------
SNIPPETS
---------------------------------
• CocList snippets
aparecerá una lista de todos los snippets que tenemos
• home/ernesto/.vim/plugged/vim-snippets
ahi estaran dos principales carpetas las cuales son UltiSnips y snippets


AGREGAR SNIPPETS PERSONALIZADOS EN ALL.SNIPPETS FILE

• • home/ernesto/.vim/plugged/vim-snippets/UltiSnips  --->  all.snippets
ahi estan los snippets que son globales que  ya que con javascript no jalan unicamente los reconoce con typescript, los que estan en los archivos javascript.snippets pues migre los principales snippets que uso a ese apartado de all.snippets
ahi entre comentarios tengo organizado los snippets de javascript y puedo crear mis propios snippets ahí a mi gusto o si me hace falta uno de react me puedo ir a el archivo javascript_react.snippets y de ahí copiar los que quiera al archivo all.snippets


----------------------------------
ATAJOS NUEVOS
----------------------------------
• shift + i ( estando en NERDTree )
esto es para alternar el NERDTreeShowHidden=1 por si quiero ver los archivos ocultos y por si no quiero verlos

----------------------------------
LIVE SERVER
----------------------------------
poner en terminal integrada " live-server " he iniciará un live server que se actualizara cada que hagamos modificaciones al archivo

AIRLINE PERSONALIZACIÓN FLECHA 
----------------------------------------------------------
sudo apt-get install fonts-powerline

• https://vi.stackexchange.com/questions/3359/how-do-i-fix-the-status-bar-symbols-in-the-airline-plugin
• https://www.youtube.com/watch?v=jwpzJquR3Zc&t=538s

• :AirlineTheme {nombre tema}
para cambiar la apariencia del airline

