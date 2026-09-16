#!/usr/bin/env bash
set -euo pipefail

SP="$(cd "$(dirname "$0")" && pwd)"
ROOT="$(cd "$SP/.." && pwd)"
SITE="https://reinascarlata.com"

SLUGS=(conjunto-petunia conjunto-jazmin-rosa conjunto-azucena conjunto-hortencia conjunto-reina-de-corazones conjunto-reina-de-rosas conjunto-buganvilla body-burdeos-real bralette-marfil-sueno pijama-saten-champagne)

declare -A SKU NAME CAT CATLABEL PRICE OLDPRICE IMG BADGE ADDED TITLE METADESC ALT DESCLONG SPECS SEOH SEOP1 SEOP2 WANAME GALLERY SIZES NOTA MEDIDAS OGCROP AGOTADO

# Prendas sin stock: su ficha se queda viva y posicionada, pero marcada como agotada
# (sale del catalogo de la portada, del feed de Meta y de las tarjetas relacionadas).
# Cuando vuelva la mercaderia, basta con borrar la linea de aqui y de PRODUCTS en index.html.
AGOTADO[body-burdeos-real]=1
AGOTADO[bralette-marfil-sueno]=1
AGOTADO[pijama-saten-champagne]=1

# ---------------- RS-013 ----------------
SKU[conjunto-petunia]="RS-013"
NAME[conjunto-petunia]="Conjunto Petunia"
CAT[conjunto-petunia]="conjuntos"
CATLABEL[conjunto-petunia]="Conjuntos"
PRICE[conjunto-petunia]="89.90"
OLDPRICE[conjunto-petunia]=""
IMG[conjunto-petunia]="conjunto-petunia-1.jpg"
BADGE[conjunto-petunia]="Nuevo"
ADDED[conjunto-petunia]="2026-09-13"
WANAME[conjunto-petunia]="Conjunto%20Petunia"
TITLE[conjunto-petunia]="Conjunto de encaje rosa Petunia | Reina Scarlata"
METADESC[conjunto-petunia]="Conjunto Petunia: tul rosa con petunias bordadas en degradado de rosa a fucsia y encaje festoneado. Envíos a todo el Perú, pago contra entrega en Lima."
ALT[conjunto-petunia]="Conjunto Petunia de Reina Scarlata, brasier de tul rosa con petunias bordadas en degradado rosa y encaje festoneado"
DESCLONG[conjunto-petunia]="Conjunto de dos piezas en tul rosa transparente con petunias bordadas en relieve, en degradado de rosa claro a fucsia. Brasier con aro, copas de tul bordado con borde de encaje festoneado, lacito de satén al centro y tirantes regulables. Tanga a juego con el mismo bordado al frente, borde de encaje y tirantes finos regulables en la cadera."
SPECS[conjunto-petunia]="Petunias bordadas en relieve sobre tul rosa|Degradado de rosa claro a fucsia en cada flor|Brasier con aro y copas de tul bordado|Borde de encaje festoneado y lacito de satén al centro|Tirantes regulables|Tanga a juego con tirantes finos regulables en la cadera"
SEOH[conjunto-petunia]="El rosa, en <em>todos</em> sus tonos"
SEOP1[conjunto-petunia]="La petunia es la flor de los balcones y los jardines de Lima: cinco pétalos redondos que nunca son de un solo color, sino que se oscurecen hacia el centro. Este conjunto la lleva bordada en relieve sobre tul rosa, y cada flor repite ese degradado, del rosa más claro en los bordes al fucsia en el corazón."
SEOP2[conjunto-petunia]="Lo que lo distingue del resto del catálogo es el encaje festoneado que remata las copas y el frente de la tanga, un borde suave que se nota bajo una blusa de escote abierto. El brasier tiene aro, lacito de satén al centro y tirantes regulables, y la tanga suma tirantes finos regulables en la cadera para ajustarla a tu medida. Disponible en tallas S, M, L y XL, con una unidad de cada una."
GALLERY[conjunto-petunia]="conjunto-petunia-1.jpg::1000::1500::Conjunto Petunia de Reina Scarlata sobre maniquí, brasier de tul rosa con petunias bordadas y encaje festoneado|conjunto-petunia-2.jpg::1000::1500::Conjunto Petunia colgado en percha de madera con lazo marfil sobre pared de lino, con petunias rosadas|conjunto-petunia-3.jpg::1000::1500::Detalle de las petunias bordadas en relieve y el encaje festoneado de la copa del brasier Petunia|conjunto-petunia-4.jpg::1000::1500::Primer plano de las petunias bordadas y el borde de encaje de la tanga Petunia sobre seda marfil"
SIZES[conjunto-petunia]="S,M,L,XL"
NOTA[conjunto-petunia]="Queda <b>una unidad de cada talla</b>: S, M, L y XL."
MEDIDAS[conjunto-petunia]="Talla::Equivalencia US::Contorno bajo busto::Cintura de la tanga|S::32C · 32D · 34A · 34B::74–77 cm::66 cm|M::34C · 36A · 36B::78–81 cm::70 cm|L::34D · 36C · 38A · 38B::82–85 cm::76 cm|XL::36D · 38C::86–89 cm::82 cm"

# ---------------- RS-012 ----------------
SKU[conjunto-jazmin-rosa]="RS-012"
NAME[conjunto-jazmin-rosa]="Conjunto Jazmín Rosa"
CAT[conjunto-jazmin-rosa]="conjuntos"
CATLABEL[conjunto-jazmin-rosa]="Conjuntos"
PRICE[conjunto-jazmin-rosa]="69.90"
OLDPRICE[conjunto-jazmin-rosa]=""
IMG[conjunto-jazmin-rosa]="conjunto-jazmin-rosa-1.jpg"
BADGE[conjunto-jazmin-rosa]="Nuevo"
ADDED[conjunto-jazmin-rosa]="2026-09-13"
WANAME[conjunto-jazmin-rosa]="Conjunto%20Jazm%C3%ADn%20Rosa"
TITLE[conjunto-jazmin-rosa]="Conjunto de encaje rosa Jazmín Rosa | Reina Scarlata"
METADESC[conjunto-jazmin-rosa]="Conjunto Jazmín Rosa: tul rosa con florecitas bordadas en rosa y fucsia, con tallos y hojas en verde. Envíos a todo el Perú, pago contra entrega en Lima."
ALT[conjunto-jazmin-rosa]="Conjunto Jazmín Rosa de Reina Scarlata, brasier de tul rosa con florecitas bordadas en rosa, fucsia y verde"
DESCLONG[conjunto-jazmin-rosa]="Conjunto de dos piezas en tul rosa transparente con florecitas bordadas en rosa y fucsia, con tallos y hojas en verde. Brasier con aro, copas de tul bordado, ribetes rosa y tirantes regulables. Tanga a juego con el mismo bordado al frente y paneles de tul liso a los costados."
SPECS[conjunto-jazmin-rosa]="Florecitas bordadas en rosa y fucsia sobre tul rosa|Tallos y hojas bordados en verde|Brasier con aro y copas de tul bordado|Ribetes rosa y tirantes regulables|Tanga a juego con el bordado al frente|Paneles de tul transparente a los costados"
SEOH[conjunto-jazmin-rosa]="Flores pequeñas, efecto <em>grande</em>"
SEOP1[conjunto-jazmin-rosa]="El jazmín es una flor diminuta que se hace notar por pura cantidad: nunca va sola, siempre en ramillete. Este conjunto sigue la misma idea. No tiene una flor protagonista, sino decenas de florecitas en rosa y fucsia esparcidas por las copas y el frente de la tanga, cada una con sus tallos y hojas bordados en verde."
SEOP2[conjunto-jazmin-rosa]="Ese verde es el detalle que lo cambia todo: le da vida al bordado y hace que se vea como un jardín de verdad y no como un estampado plano. El tul rosa es transparente, así que las flores son las protagonistas. El brasier tiene aro y tirantes regulables, y la tanga suma paneles de tul liso a los costados que no marcan bajo la ropa. Es un conjunto alegre, de los que mejor funcionan como regalo. Disponible en tallas S, M, L y XL: quedan dos unidades en M y una en cada una de las demás."
GALLERY[conjunto-jazmin-rosa]="conjunto-jazmin-rosa-1.jpg::1000::1500::Conjunto Jazmín Rosa de Reina Scarlata sobre maniquí, brasier de tul rosa con florecitas bordadas|conjunto-jazmin-rosa-2.jpg::1000::1500::Conjunto Jazmín Rosa colgado en percha sobre pared marfil con luz de ventana|conjunto-jazmin-rosa-3.jpg::1000::1500::Detalle de las florecitas bordadas en rosa y fucsia sobre la copa del brasier Jazmín Rosa|conjunto-jazmin-rosa-4.jpg::1000::1500::Primer plano del bordado floral de la tanga Jazmín Rosa sobre seda marfil"
SIZES[conjunto-jazmin-rosa]="S,M,L,XL"
NOTA[conjunto-jazmin-rosa]="Stock actual: <b>1 unidad en S, 2 en M, 1 en L y 1 en XL</b>."
MEDIDAS[conjunto-jazmin-rosa]="Talla::Equivalencia US::Contorno bajo busto::Cintura de la tanga|S::32C · 32D · 34A · 34B::74–77 cm::64 cm|M::34C · 36A · 36B::78–81 cm::68 cm|L::34D · 36C · 38A · 38B::82–85 cm::72 cm|XL::36D · 38C::86–89 cm::76 cm"

# ---------------- RS-011 ----------------
SKU[conjunto-azucena]="RS-011"
NAME[conjunto-azucena]="Conjunto Azucena"
CAT[conjunto-azucena]="conjuntos"
CATLABEL[conjunto-azucena]="Conjuntos"
PRICE[conjunto-azucena]="79.90"
OLDPRICE[conjunto-azucena]=""
IMG[conjunto-azucena]="conjunto-azucena-1.jpg"
BADGE[conjunto-azucena]="Nuevo"
ADDED[conjunto-azucena]="2026-09-13"
WANAME[conjunto-azucena]="Conjunto%20Azucena"
TITLE[conjunto-azucena]="Conjunto de encaje blanco Azucena | Reina Scarlata"
METADESC[conjunto-azucena]="Conjunto Azucena: tul nude con azucenas bordadas en relieve en blanco marfil y escote profundo en V. Envíos a todo el Perú, pago contra entrega en Lima."
ALT[conjunto-azucena]="Conjunto Azucena de Reina Scarlata, brasier de tul nude con azucenas bordadas en blanco y escote profundo en V"
DESCLONG[conjunto-azucena]="Conjunto de dos piezas en tul nude con azucenas bordadas en relieve en blanco marfil. Brasier con aro, escote profundo en V, copas de tul bordado con ribete champagne y bordes y tirantes finos en blanco. Tanga a juego con el mismo bordado al frente y bandas anchas de tul transparente en la cadera, enmarcadas en blanco."
SPECS[conjunto-azucena]="Azucenas bordadas en relieve sobre tul nude|Pétalos y hojas en blanco marfil|Brasier con aro y escote profundo en V|Copas de tul bordado con ribete champagne|Bordes y tirantes finos en blanco|Tanga a juego con bandas anchas de tul en la cadera"
SEOH[conjunto-azucena]="Blanco, pero <em>nunca</em> simple"
SEOP1[conjunto-azucena]="La azucena es el lirio blanco de toda la vida: la flor de los ramos de novia y de los altares, la que se asocia a lo puro sin necesitar un solo color. Este conjunto la lleva bordada en blanco marfil, con pétalos grandes y hojas que se abren sobre las copas y cruzan el frente de la tanga, cada una en relieve y con el brillo propio del hilo satinado."
SEOP2[conjunto-azucena]="El truco está en el fondo: el tul es nude y no blanco, así que las flores parecen flotar y el bordado se lee nítido en lugar de perderse. El brasier tiene aro y escote profundo en V, que lo hace perfecto bajo vestidos de escote abierto y para novias, y la tanga suma bandas anchas de tul en la cadera enmarcadas en blanco. Stock actual: tres unidades en talla S, una en M y una en L."
GALLERY[conjunto-azucena]="conjunto-azucena-1.jpg::1000::1500::Conjunto Azucena de Reina Scarlata sobre maniquí, brasier de tul nude con azucenas bordadas en blanco|conjunto-azucena-2.jpg::1000::1500::Conjunto Azucena colgado en percha de madera sobre pared marfil, con azucenas blancas|conjunto-azucena-3.jpg::1000::1500::Primer plano de las azucenas bordadas de la tanga Azucena sobre seda marfil, con collar de perlas"
SIZES[conjunto-azucena]="S,M,L"
NOTA[conjunto-azucena]="Stock actual: <b>3 unidades en talla S, 1 en M y 1 en L</b>."
MEDIDAS[conjunto-azucena]="Talla::Equivalencia US::Contorno bajo busto::Cintura de la tanga|S::32C · 32D · 34A · 34B::74–77 cm::64 cm|M::34C · 36A · 36B::78–81 cm::68 cm|L::34D · 36C · 38A · 38B::82–85 cm::72 cm"

# ---------------- RS-010 ----------------
SKU[conjunto-hortencia]="RS-010"
NAME[conjunto-hortencia]="Conjunto Hortencia"
CAT[conjunto-hortencia]="conjuntos"
CATLABEL[conjunto-hortencia]="Conjuntos"
PRICE[conjunto-hortencia]="89.00"
OLDPRICE[conjunto-hortencia]=""
IMG[conjunto-hortencia]="conjunto-hortencia-1.jpg"
BADGE[conjunto-hortencia]="Nuevo"
ADDED[conjunto-hortencia]="2026-09-12"
WANAME[conjunto-hortencia]="Conjunto%20Hortencia"
TITLE[conjunto-hortencia]="Conjunto de encaje lila Hortencia | Reina Scarlata"
METADESC[conjunto-hortencia]="Conjunto Hortencia: tul menta con hortensias bordadas en lila, marfil y celeste. Brasier con aro. Envíos a todo el Perú, pago contra entrega en Lima."
ALT[conjunto-hortencia]="Conjunto Hortencia de Reina Scarlata, brasier de tul menta con hortensias bordadas en lila, marfil y celeste"
DESCLONG[conjunto-hortencia]="Conjunto de dos piezas en tul menta con hortensias bordadas en relieve en lila, marfil y celeste. Brasier con aro, copas de tul bordado y tirantes anchos cubiertos de flores, con lacito lila al centro y herrajes dorados. Tanga a juego con tirantes finos regulables y el mismo bordado al frente."
SPECS[conjunto-hortencia]="Hortensias bordadas en relieve sobre tul menta|Pétalos en lila, marfil y celeste|Brasier con aro y copas de tul bordado|Tirantes anchos cubiertos de flores, con lacito lila|Herrajes dorados y tirantes regulables|Tanga a juego con el mismo bordado al frente"
SEOH[conjunto-hortencia]="Hortensias bordadas, no <em>estampadas</em>"
SEOP1[conjunto-hortencia]="La hortensia es de esas flores que no necesitan explicación: un ramo entero en una sola flor, con los pétalos apretados unos contra otros. Este conjunto las lleva bordadas sobre el tul menta en lila, marfil y celeste, y no de cualquier manera: cada flor está bordada en relieve, con cuerpo propio y su propia sombra sobre la tela."
SEOP2[conjunto-hortencia]="Esa es la diferencia con casi todo lo que se encuentra a este precio. No es un estampado ni un encaje plano: el bordado se siente al pasar el dedo y cambia según le dé la luz. El brasier lleva aro y copas de tul bordado, con tirantes anchos cubiertos de flores y herrajes dorados, y la tanga repite el mismo jardín al frente. Es además la única pieza pastel del catálogo y la más luminosa de todas. Disponible en tallas S, M, L y XL, con una unidad de cada una."
GALLERY[conjunto-hortencia]="conjunto-hortencia-1.jpg::1000::1500::Conjunto Hortencia de Reina Scarlata sobre maniquí, brasier de tul menta con flores bordadas en lila|conjunto-hortencia-2.jpg::1000::1500::Conjunto Hortencia colgado en percha de madera sobre pared marfil, con lavanda|conjunto-hortencia-3.jpg::1000::1500::Detalle de las hortensias bordadas en relieve sobre la copa del brasier|conjunto-hortencia-4.jpg::1000::1500::Primer plano de las hortensias bordadas de la tanga sobre seda marfil"
SIZES[conjunto-hortencia]="S,M,L,XL"
NOTA[conjunto-hortencia]="Queda <b>una unidad de cada talla</b>: S, M, L y XL."
MEDIDAS[conjunto-hortencia]="Talla::Equivalencia US::Contorno bajo busto::Cintura de la tanga|S::32C · 32D · 34A · 34B::74–77 cm::66 cm|M::34C · 36A · 36B::78–81 cm::70 cm|L::34D · 36C · 38A · 38B::82–85 cm::76 cm|XL::36D · 38C::86–89 cm::82 cm"

# ---------------- RS-009 ----------------
SKU[conjunto-reina-de-corazones]="RS-009"
NAME[conjunto-reina-de-corazones]="Conjunto Reina de Corazones"
CAT[conjunto-reina-de-corazones]="conjuntos"
CATLABEL[conjunto-reina-de-corazones]="Conjuntos"
PRICE[conjunto-reina-de-corazones]="69.00"
OLDPRICE[conjunto-reina-de-corazones]=""
IMG[conjunto-reina-de-corazones]="conjunto-reina-de-corazones-3.jpg"
BADGE[conjunto-reina-de-corazones]="Nuevo"
ADDED[conjunto-reina-de-corazones]="2026-09-12"
WANAME[conjunto-reina-de-corazones]="Conjunto%20Reina%20de%20Corazones"
TITLE[conjunto-reina-de-corazones]="Conjunto de encaje negro con corazones | Reina Scarlata"
METADESC[conjunto-reina-de-corazones]="Conjunto Reina de Corazones: brasier de tul con corazones bordados, tanga de amarrar con cintas de raso. Envíos a todo el Perú, pago contra entrega en Lima."
ALT[conjunto-reina-de-corazones]="Conjunto Reina de Corazones de Reina Scarlata, brasier de encaje negro con corazones bordados y tanga de amarrar"
DESCLONG[conjunto-reina-de-corazones]="Conjunto de dos piezas en tul negro con corazones bordados. Brasier con aro y copas de tul bordado, tirantes de satén con lazos y tiras cruzadas bajo la copa. Tanga de amarrar con cintas largas de satén a los costados y borde de encaje festoneado."
SPECS[conjunto-reina-de-corazones]="Corazones bordados sobre tul transparente|Brasier con aro y copas de tul bordado|Tirantes de satén con lazos y tiras cruzadas|Tanga de amarrar con cintas largas de satén|Borde de encaje festoneado en la tanga"
SEOH[conjunto-reina-de-corazones]="Los corazones no se estampan, se <em>bordan</em>"
SEOP1[conjunto-reina-de-corazones]="Casi toda la lencería con corazones que se ve en el mercado los lleva impresos sobre la tela. Estos están bordados uno a uno sobre el tul, con hilo que tiene brillo y relieve propios. Es la diferencia entre un dibujo y una textura, y se nota tanto en la foto de cerca como cuando la tienes en la mano."
SEOP2[conjunto-reina-de-corazones]="La tanga es de amarrar, con cintas largas de satén a los dos costados. Eso no es solo un detalle bonito: al anudarse, se ajusta a tu cadera en lugar de obligarte a entrar en una medida fija, así que perdona mucho más que una tanga convencional. El brasier suma tiras cruzadas de satén bajo la copa y lacitos en los tirantes, que son los detalles que hacen que esta pieza no se parezca a ninguna otra del catálogo."
GALLERY[conjunto-reina-de-corazones]="conjunto-reina-de-corazones-3.jpg::1000::1500::Conjunto Reina de Corazones de Reina Scarlata sobre maniquí, brasier de encaje negro con corazones bordados y tanga de amarrar|conjunto-reina-de-corazones-1.jpg::1000::1500::Conjunto Reina de Corazones extendido sobre seda marfil, brasier y tanga con corazones bordados|conjunto-reina-de-corazones-4.jpg::1000::1500::Conjunto Reina de Corazones colgado en percha de madera sobre pared marfil"
SIZES[conjunto-reina-de-corazones]="S,M,L"
NOTA[conjunto-reina-de-corazones]="Queda <b>una unidad de cada talla</b>: S, M y L."
MEDIDAS[conjunto-reina-de-corazones]="Talla::Equivalencia US::Contorno bajo busto::Cintura de la tanga|S::32C · 32D · 34A · 34B::74–77 cm::68 cm|M::34C · 36A · 36B::78–81 cm::72 cm|L::34D · 36C · 38A · 38B::82–85 cm::76 cm"

# ---------------- RS-008 ----------------
SKU[conjunto-buganvilla]="RS-008"
NAME[conjunto-buganvilla]="Conjunto Buganvilla"
CAT[conjunto-buganvilla]="conjuntos"
CATLABEL[conjunto-buganvilla]="Conjuntos"
PRICE[conjunto-buganvilla]="79.00"
OLDPRICE[conjunto-buganvilla]=""
IMG[conjunto-buganvilla]="conjunto-buganvilla-1.jpg"
BADGE[conjunto-buganvilla]="Última unidad"
WANAME[conjunto-buganvilla]="Conjunto%20Buganvilla"
TITLE[conjunto-buganvilla]="Conjunto de encaje fucsia Buganvilla | Reina Scarlata"
METADESC[conjunto-buganvilla]="Conjunto Buganvilla: brasier de encaje fucsia con bordado floral en relieve y tanga a juego. Envíos a todo el Perú, pago contra entrega en Lima."
ALT[conjunto-buganvilla]="Conjunto Buganvilla de Reina Scarlata, brasier de encaje fucsia con bordado floral y tanga a juego"
DESCLONG[conjunto-buganvilla]="Conjunto de dos piezas en encaje fucsia con bordado floral sobre malla transparente. Brasier con aro y copas de tul bordado, con tirantes dobles finos y regulables. Tanga a juego con el mismo bordado al frente y tirantes dobles en la cadera."
SPECS[conjunto-buganvilla]="Encaje fucsia con bordado floral sobre malla transparente|Brasier con aro y copas de tul bordado|Tirantes dobles finos y regulables|Tanga a juego con bordado al frente|Tirantes dobles en la cadera, regulables"
SEOH[conjunto-buganvilla]="El fucsia no es para pasar <em>desapercibida</em>"
SEOP1[conjunto-buganvilla]="Hay colores que acompañan y colores que hablan. El fucsia es de los segundos: es el tono de las buganvillas que cubren medio Lima, imposible de ignorar y sin una gota de timidez. Este conjunto es para los días en que no quieres pasar desapercibida, ni siquiera para ti misma."
SEOP2[conjunto-buganvilla]="El bordado floral está cosido sobre malla transparente, así que el dibujo se lee nítido y la pieza no depende de rellenos para verse bien. El brasier tiene aro y copas de tul bordado, con tirantes dobles finos que se regulan a tu altura, y la tanga repite el bordado al frente sumando tirantes dobles en la cadera, que es el detalle que más estiliza. Disponible en talla S: si necesitas otra, escríbenos por WhatsApp y te avisamos en cuanto entre."
GALLERY[conjunto-buganvilla]="conjunto-buganvilla-1.jpg::1000::1500::Conjunto Buganvilla de Reina Scarlata, brasier de encaje fucsia con bordado floral y tanga a juego|conjunto-buganvilla-3.jpg::1600::893::Detalle del bordado floral del conjunto Buganvilla sobre seda marfil|conjunto-buganvilla-4.jpg::1600::893::Primer plano de las copas de tul bordado del brasier Buganvilla"
SIZES[conjunto-buganvilla]="S"
NOTA[conjunto-buganvilla]="Queda <b>una sola unidad</b> en talla S."
MEDIDAS[conjunto-buganvilla]="Talla::Equivalencia US::Contorno bajo busto::Cintura de la tanga|S::32C · 32D · 34A · 34B::74–77 cm::66–98 cm"

# ---------------- RS-007 ----------------
SKU[conjunto-reina-de-rosas]="RS-007"
NAME[conjunto-reina-de-rosas]="Conjunto Reina de Rosas"
CAT[conjunto-reina-de-rosas]="conjuntos"
CATLABEL[conjunto-reina-de-rosas]="Conjuntos"
PRICE[conjunto-reina-de-rosas]="89.00"
OLDPRICE[conjunto-reina-de-rosas]=""
IMG[conjunto-reina-de-rosas]="conjunto-reina-de-rosas-1.jpg"
BADGE[conjunto-reina-de-rosas]="Nuevo"
ADDED[conjunto-reina-de-rosas]="2026-09-12"
WANAME[conjunto-reina-de-rosas]="Conjunto%20Reina%20de%20Rosas"
TITLE[conjunto-reina-de-rosas]="Conjunto de encaje rojo Reina de Rosas | Reina Scarlata"
METADESC[conjunto-reina-de-rosas]="Conjunto Reina de Rosas: corset de tul con varillas y rosas bordadas en relieve, con tanga a juego. Envíos a todo el Perú, pago contra entrega en Lima."
ALT[conjunto-reina-de-rosas]="Conjunto Reina de Rosas de Reina Scarlata, corset de encaje rojo con rosas bordadas y tanga a juego"
DESCLONG[conjunto-reina-de-rosas]="Conjunto de dos piezas: corset de tul con rosas bordadas en relieve y tanga a juego. Copas forradas en satén con aro, varillas que marcan la cintura, escote festoneado y cierre de corchetes regulable en la espalda. La tanga lleva tirantes regulables con argollas."
SPECS[conjunto-reina-de-rosas]="Rosas bordadas en relieve sobre tul transparente|Copas forradas en satén con aro|Varillas que marcan la cintura|Escote festoneado, sin tirantes|Cierre de corchetes regulable en la espalda|Tanga a juego con tirantes regulables y argollas"
SEOH[conjunto-reina-de-rosas]="El bordado que no se ve en <em>ninguna</em> foto"
SEOP1[conjunto-reina-de-rosas]="Hay encaje estampado y hay bordado de verdad, y la diferencia se nota al tocarlo. Cada rosa de este conjunto está cosida sobre el tul, no impresa: tiene relieve, textura y peso. Es el detalle que no se aprecia en una pantalla y que sorprende cuando abres el paquete, porque la prenda se siente mucho más trabajada de lo que parecía."
SEOP2[conjunto-reina-de-rosas]="El corset es la pieza que más transforma la silueta de todo el catálogo. Las varillas marcan la cintura y las copas forradas dan forma real, no solo cobertura. Al no llevar tirantes funciona igual bajo un vestido de escote abierto o sola, y el cierre de corchetes en la espalda tiene varias posiciones, así que se ajusta a ti. Disponible en tallas S, M y L: si dudas entre dos, escríbenos por WhatsApp con tus medidas antes de pedir."
GALLERY[conjunto-reina-de-rosas]="conjunto-reina-de-rosas-1.jpg::1000::1500::Conjunto Reina de Rosas de Reina Scarlata sobre maniquí, corset de encaje rojo con rosas bordadas y tanga a juego|conjunto-reina-de-rosas-2.jpg::1000::1500::Detalle de las rosas bordadas en relieve sobre la copa del corset Reina de Rosas|conjunto-reina-de-rosas-3.jpg::1000::1500::Primer plano de las rosas bordadas de la tanga Reina de Rosas sobre seda marfil"
SIZES[conjunto-reina-de-rosas]="S,M,L"
NOTA[conjunto-reina-de-rosas]="Stock actual: <b>1 unidad en talla S, 2 en M y 1 en L</b>."
MEDIDAS[conjunto-reina-de-rosas]="Talla::Equivalencia US::Contorno bajo busto::Cintura de la tanga|S::32C · 32D · 34A · 34B::74–77 cm::66 cm|M::34C · 36A · 36B::78–81 cm::70 cm|L::34D · 36C · 38A · 38B::82–85 cm::76 cm"

# ---------------- RS-003 ----------------
SKU[body-burdeos-real]="RS-003"
NAME[body-burdeos-real]="Body Burdeos Real"
CAT[body-burdeos-real]="bodys"
CATLABEL[body-burdeos-real]="Bodys"
PRICE[body-burdeos-real]="99.90"
OLDPRICE[body-burdeos-real]=""
IMG[body-burdeos-real]="body-encaje-burdeos-real.jpg"
BADGE[body-burdeos-real]=""
WANAME[body-burdeos-real]="Body%20Burdeos%20Real"
TITLE[body-burdeos-real]="Body de encaje burdeos con escote en V | Reina Scarlata"
METADESC[body-burdeos-real]="Body de encaje floral burdeos con escote profundo en V, cintura marcada y herrajes dorados. Envíos a todo el Perú, pago contra entrega en Lima."
ALT[body-burdeos-real]="Body de encaje floral burdeos Reina Scarlata con escote profundo en V y herrajes dorados"
DESCLONG[body-burdeos-real]="Body de encaje floral burdeos con escote profundo en V, tirantes regulables con herrajes dorados, cintura marcada y corte alto en la cadera."
SPECS[body-burdeos-real]="Encaje floral burdeos|Escote profundo en V|Tirantes regulables con herrajes dorados|Cintura marcada|Corte alto en la cadera"
SEOH[body-burdeos-real]="Una sola pieza, <em>todo</em> el efecto"
SEOP1[body-burdeos-real]="El body es la pieza que más transforma la silueta de todo el catálogo, porque al ser una sola prenda no corta la línea del cuerpo en la cintura. El corte alto en la cadera alarga visualmente la pierna y la cintura marcada hace el resto. Es la opción que recomendamos cuando alguien busca lencería para una fecha señalada y no sabe por dónde empezar."
SEOP2[body-burdeos-real]="El burdeos es además un color que favorece a casi cualquier tono de piel: tiene la intensidad del rojo pero con más profundidad, así que se ve elegante en lugar de estridente. Los herrajes dorados de los tirantes y el escote profundo en V son los detalles que elevan la pieza. También se lleva como top bajo un blazer o una falda de tiro alto."

# ---------------- RS-004 ----------------
SKU[bralette-marfil-sueno]="RS-004"
NAME[bralette-marfil-sueno]="Bralette Marfil Sueño"
CAT[bralette-marfil-sueno]="bralettes"
CATLABEL[bralette-marfil-sueno]="Bralettes"
PRICE[bralette-marfil-sueno]="59.90"
OLDPRICE[bralette-marfil-sueno]="75.00"
IMG[bralette-marfil-sueno]="bralette-encaje-marfil-sueno.jpg"
BADGE[bralette-marfil-sueno]="Oferta"
WANAME[bralette-marfil-sueno]="Bralette%20Marfil%20Sue%C3%B1o"
TITLE[bralette-marfil-sueno]="Bralette de encaje marfil sin aro | Reina Scarlata"
METADESC[bralette-marfil-sueno]="Bralette triangular de encaje marfil, sin aro, con pestaña festoneada y tirantes regulables. Envíos a todo el Perú, pago contra entrega en Lima."
ALT[bralette-marfil-sueno]="Bralette triangular de encaje marfil Reina Scarlata, sin aro, con borde de pestaña festoneada"
DESCLONG[bralette-marfil-sueno]="Bralette triangular sin aro en encaje marfil, con borde de pestaña festoneada, banda ancha de encaje y tirantes finos regulables."
SPECS[bralette-marfil-sueno]="Encaje marfil, corte triangular|Sin aro|Borde de pestaña festoneada|Banda ancha de encaje|Tirantes finos regulables"
SEOH[bralette-marfil-sueno]="La comodidad no está <em>peleada</em> con el encaje"
SEOP1[bralette-marfil-sueno]="Si pasas el día con el brasier puesto y llegas a casa deseando quitártelo, el bralette es la respuesta. Al no llevar aro, no hay varilla que presione las costillas, y la banda ancha de encaje reparte el sostén a lo largo de la espalda en lugar de concentrarlo en un punto. Es la pieza que más se repite entre nuestras clientas que trabajan muchas horas sentadas."
SEOP2[bralette-marfil-sueno]="El marfil es un tono más suave que el blanco puro y por eso se nota menos bajo blusas claras. El borde de pestaña festoneada está pensado para verse a propósito bajo un escote abierto o una camisa con los primeros botones sueltos. Los tirantes finos son regulables, así que puedes ajustarlo a tu altura de busto."

# ---------------- RS-005 ----------------
SKU[pijama-saten-champagne]="RS-005"
NAME[pijama-saten-champagne]="Pijama Satén Champagne"
CAT[pijama-saten-champagne]="pijamas"
CATLABEL[pijama-saten-champagne]="Pijamas"
PRICE[pijama-saten-champagne]="109.90"
OLDPRICE[pijama-saten-champagne]=""
IMG[pijama-saten-champagne]="pijama-saten-champagne.jpg"
BADGE[pijama-saten-champagne]="Nuevo"
ADDED[pijama-saten-champagne]="2026-09-09"
WANAME[pijama-saten-champagne]="Pijama%20Sat%C3%A9n%20Champagne"
TITLE[pijama-saten-champagne]="Pijama de satén champagne de dos piezas | Reina Scarlata"
METADESC[pijama-saten-champagne]="Pijama de satén champagne: top con escote en V y encaje, y short con pretina elástica. Envíos a todo el Perú, pago contra entrega en Lima."
ALT[pijama-saten-champagne]="Pijama de satén champagne Reina Scarlata de dos piezas, top con escote en V y short con encaje"
DESCLONG[pijama-saten-champagne]="Pijama de dos piezas en satén champagne. Top de tirantes finos con escote en V y encaje, y short con pretina elástica y encaje en el ruedo."
SPECS[pijama-saten-champagne]="Satén champagne, dos piezas|Top de tirantes finos con escote en V y encaje|Short con pretina elástica|Encaje en el ruedo del short"
SEOH[pijama-saten-champagne]="Dormir bien también es <em>arreglarse</em>"
SEOP1[pijama-saten-champagne]="El satén no es solo cuestión de verse bien: es una tela fresca, que no se pega al cuerpo en las noches de calor de Lima y que resbala en lugar de engancharse con las sábanas. Por eso un pijama de satén se siente distinto a uno de algodón desde la primera noche, sobre todo en verano."
SEOP2[pijama-saten-champagne]="El champagne es un neutro cálido que no se ve amarillento ni apagado, y el encaje del escote y del ruedo del short lo saca del terreno del pijama corriente. Es de los regalos que mejor funcionan porque es bonito y se usa todos los días, no solo en ocasiones especiales. La pretina elástica del short da margen de talla."

# vista previa para redes: franja vertical de la foto principal (inicio::fin, en fracción del alto)
# que se muestra a la derecha de la imagen de 1200x630. Por defecto encuadra el maniquí.
OGCROP[conjunto-reina-de-corazones]="0.17::0.88"
OGCROP[conjunto-buganvilla]="0.18::0.86"
OGCROP[body-burdeos-real]="0.04::0.99"
OGCROP[bralette-marfil-sueno]="0.10::0.86"
OGCROP[pijama-saten-champagne]="0.02::0.97"

# los productos sin fotos propias todavia usan su imagen unica como galeria
for s in "${SLUGS[@]}"; do
  OGCROP[$s]="${OGCROP[$s]:-0.18::0.90}"
  [ -n "${GALLERY[$s]:-}" ] || GALLERY[$s]="${IMG[$s]}::800::1200::${ALT[$s]}"
  SIZES[$s]="${SIZES[$s]:-}"
  NOTA[$s]="${NOTA[$s]:-}"
  MEDIDAS[$s]="${MEDIDAS[$s]:-}"
  ADDED[$s]="${ADDED[$s]:-}"
done

# ---------------- helpers ----------------
fmt(){ printf 'S/ %s' "$1"; }

galeria_html(){ # $1 = slug
  local IFS='|' e f w h a i=0
  local entradas=(${GALLERY[$1]})
  printf '      <div class="gal-main">\n'
  IFS='|'; for e in "${entradas[@]}"; do
    f="${e%%::*}"; local resto="${e#*::}"
    w="${resto%%::*}"; resto="${resto#*::}"
    h="${resto%%::*}"; a="${resto#*::}"
    if [ $i -eq 0 ]; then
      printf '        <img id="galMain" src="/assets/%s" width="%s" height="%s" fetchpriority="high" decoding="async" alt="%s">\n' "$f" "$w" "$h" "$a"
    fi
    i=$((i+1))
  done
  printf '      </div>\n'
  [ "${#entradas[@]}" -gt 1 ] || return 0
  printf '      <div class="gal-thumbs">\n'
  i=0
  for e in "${entradas[@]}"; do
    f="${e%%::*}"; local resto2="${e#*::}"
    w="${resto2%%::*}"; resto2="${resto2#*::}"
    h="${resto2%%::*}"; a="${resto2#*::}"
    local cur="false"; [ $i -eq 0 ] && cur="true"
    printf '        <button type="button" data-src="/assets/%s" data-alt="%s" data-w="%s" data-h="%s" aria-current="%s" aria-label="Ver foto %s"><img src="/assets/%s" width="%s" height="%s" loading="lazy" decoding="async" alt=""></button>\n' "$f" "$a" "$w" "$h" "$cur" "$((i+1))" "$f" "$w" "$h"
    i=$((i+1))
  done
  printf '      </div>\n'
}

tallas_html(){ # $1 = slug
  [ -n "${SIZES[$1]}" ] || return 0
  local IFS=',' t
  printf '      <div class="tallas">\n'
  printf '        <p class="tallas-t">Tallas disponibles <a href="/guia-de-tallas/">¿cuál es la mía?</a></p>\n'
  printf '        <div class="tallas-op">\n'
  for t in ${SIZES[$1]}; do
    printf '          <button type="button" class="talla" data-talla="%s" aria-pressed="false">%s</button>\n' "$t" "$t"
  done
  printf '        </div>\n      </div>\n'
}

images_json(){ # $1 = slug -> todas las fotos de la galeria
  local IFS='|' e out=""
  local entradas=(${GALLERY[$1]})
  for e in "${entradas[@]}"; do out="${out}\"${SITE}/assets/${e%%::*}\", "; done
  printf '  "image": [%s],' "${out%, }"
}

nota_html(){ # $1 = slug
  [ -n "${NOTA[$1]}" ] || return 0
  printf "        <p>%s</p>
" "${NOTA[$1]}"
}

medidas_html(){ # $1 = slug  (la primera fila es la cabecera)
  [ -n "${MEDIDAS[$1]}" ] || return 0
  local filas fila cols celda i=0
  IFS='|' read -ra filas <<< "${MEDIDAS[$1]}"
  printf '      <div class="medidas">\n'
  printf '        <p class="tallas-t">Medidas de la prenda</p>\n'
  printf '        <div class="tabla-wrap"><table>\n'
  for fila in "${filas[@]}"; do
    IFS='@' read -ra cols <<< "${fila//::/@}"
    if [ $i -eq 0 ]; then
      printf '          <thead><tr>'
      for celda in "${cols[@]}"; do printf '<th>%s</th>' "$celda"; done
      printf '</tr></thead>\n          <tbody>\n'
    else
      printf '            <tr>'
      for celda in "${cols[@]}"; do printf '<td>%s</td>' "$celda"; done
      printf '</tr>\n'
    fi
    i=$((i+1))
  done
  printf '          </tbody>\n        </table></div>\n'
  printf '        <p class="medidas-nota">Medidas de referencia del fabricante. Si quedas entre dos valores, escríbenos por WhatsApp con tus medidas y te asesoramos.</p>\n'
  printf '      </div>\n'
}

sizes_json(){ # $1 = slug
  [ -n "${SIZES[$1]}" ] || return 0
  local IFS=',' t out=""
  for t in ${SIZES[$1]}; do out="${out}\"$t\", "; done
  printf '  "size": [%s],\n' "${out%, }"
}

card(){ # $1 = slug del producto relacionado
  local s="$1" old="" price
  price="${PRICE[$s]}"
  if [ -n "${OLDPRICE[$s]}" ]; then old="<s>S/ ${OLDPRICE[$s]}</s>"; fi
  cat <<CARD
        <a class="rel-card" href="/${s}/">
          <div class="rel-img"><img src="/assets/${IMG[$s]}" width="800" height="1200" loading="lazy" decoding="async" alt="${ALT[$s]}"></div>
          <div class="rel-body">
            <p class="rel-cat">${CATLABEL[$s]}</p>
            <p class="rel-name">${NAME[$s]}</p>
            <p class="rel-price">${old}<strong>S/ ${price}</strong></p>
          </div>
        </a>
CARD
}

specs_html(){ # $1 = slug
  local IFS='|' item
  for item in ${SPECS[$1]}; do printf '        <li>%s</li>\n' "$item"; done
}

# ---------------- generación ----------------
n=${#SLUGS[@]}
for i in "${!SLUGS[@]}"; do
  slug="${SLUGS[$i]}"
  out="$ROOT/$slug"
  mkdir -p "$out"

  price="${PRICE[$slug]}"
  old="${OLDPRICE[$slug]}"
  badge="${BADGE[$slug]}"
  img="${IMG[$slug]}"

  # bloque de precio
  if [ -n "$old" ]; then
    pct=$(awk -v o="$old" -v p="$price" 'BEGIN{printf "%d", (1-p/o)*100}')
    price_html="<s>S/ ${old}</s><strong>S/ ${price}</strong><span class=\"save\">-${pct}%</span>"
  else
    price_html="<strong>S/ ${price}</strong>"
  fi

  # disponibilidad
  if [ -n "${AGOTADO[$slug]:-}" ]; then
    badge="Agotado"
    avail_meta="out of stock"; avail_ld="OutOfStock"
  else
    avail_meta="in stock"; avail_ld="InStock"
  fi

  # badge
  if [ -n "$badge" ]; then
    cls="badge"; [ "$badge" = "Oferta" ] && cls="badge gold"; [ "$badge" = "Agotado" ] && cls="badge agotado"
    # con fecha de alta, "Nuevo" lleva data-nuevo y el script de la ficha lo quita a los 7 días
    nuevo_attr=""
    if [ "$badge" = "Nuevo" ] && [ -n "${ADDED[$slug]}" ]; then nuevo_attr=" data-nuevo=\"${ADDED[$slug]}\""; fi
    badge_html="<span class=\"${cls}\"${nuevo_attr}>${badge}</span>"
  else
    badge_html=""
  fi

  # relacionados: los tres siguientes con stock, en orden cíclico
  rels=()
  for (( k=1; k<n && ${#rels[@]}<3; k++ )); do
    cand="${SLUGS[$(( (i+k) % n ))]}"
    [ -n "${AGOTADO[$cand]:-}" ] || rels+=("$cand")
  done
  r1="${rels[0]}"; r2="${rels[1]}"; r3="${rels[2]}"

  if [ -n "${AGOTADO[$slug]:-}" ]; then
    wa="https://wa.me/51997081492?text=Hola%20Reina%20Scarlata%2C%20me%20interesa%20el%20${WANAME[$slug]}%20(${SKU[$slug]}).%20%C2%BFMe%20avisas%20cuando%20vuelva%20a%20haber%20stock%3F"
    cta_wa="Avísame cuando llegue"
    aviso_html='      <p class="prod-agotado"><b>Agotada por ahora</b><br>Esta prenda se acabó, pero volverá. Escríbenos por WhatsApp y te avisamos apenas llegue la próxima.</p>'
  else
    wa="https://wa.me/51997081492?text=Hola%20Reina%20Scarlata%2C%20me%20interesa%20el%20${WANAME[$slug]}%20(${SKU[$slug]}).%20%C2%BFSigue%20disponible%3F"
    cta_wa="Pedir por WhatsApp"
    aviso_html=""
  fi

  # compartir con una amiga: WhatsApp sin destinatario, con nombre, precio y enlace a la ficha
  url_enc="${SITE}/${slug}/"; url_enc="${url_enc//:/%3A}"; url_enc="${url_enc//\//%2F}"
  # sin precio: el mensaje se queda para siempre en el chat de quien lo recibe
  compartir="https://wa.me/?text=Mira%20este%20${WANAME[$slug]}%20de%20Reina%20Scarlata%20%E2%9C%A8%20${url_enc}"

  {
  cat <<HEAD
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>${TITLE[$slug]}</title>
<meta name="description" content="${METADESC[$slug]}">
<link rel="canonical" href="${SITE}/${slug}/">

<meta property="og:type" content="product">
<meta property="og:site_name" content="Reina Scarlata">
<meta property="og:locale" content="es_PE">
<meta property="og:url" content="${SITE}/${slug}/">
<meta property="og:title" content="${NAME[$slug]} · Reina Scarlata">
<meta property="og:description" content="${METADESC[$slug]}">
<meta property="og:image" content="${SITE}/assets/og/${slug}.jpg">
<meta property="og:image:type" content="image/jpeg">
<meta property="og:image:width" content="1200">
<meta property="og:image:height" content="630">
<meta property="og:image:alt" content="${ALT[$slug]}">
<meta property="product:price:amount" content="${price}">
<meta property="product:price:currency" content="PEN">
<meta property="product:availability" content="${avail_meta}">
<meta name="twitter:card" content="summary_large_image">
<meta name="twitter:title" content="${NAME[$slug]} · Reina Scarlata">
<meta name="twitter:description" content="${METADESC[$slug]}">
<meta name="twitter:image" content="${SITE}/assets/og/${slug}.jpg">
<meta name="twitter:image:alt" content="${ALT[$slug]}">

<link rel="icon" type="image/png" sizes="32x32" href="/assets/favicon-32.png">
<link rel="icon" type="image/png" sizes="192x192" href="/assets/favicon-192.png">
<link rel="apple-touch-icon" href="/assets/apple-touch-icon.png">
<meta name="theme-color" content="#1b1512">

<link rel="preload" as="image" href="/assets/${img}" fetchpriority="high">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Cormorant+Garamond:ital,wght@0,400;0,500;0,600;1,400;1,500&family=Jost:wght@300;400;500;600&display=swap" rel="stylesheet">

<script async src="https://www.googletagmanager.com/gtag/js?id=G-VWT2R5JVRH"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'G-VWT2R5JVRH');
</script>

<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "Product",
  "@id": "${SITE}/${slug}/#producto",
  "name": "${NAME[$slug]}",
  "sku": "${SKU[$slug]}",
  "mpn": "${SKU[$slug]}",
  "category": "${CATLABEL[$slug]}",
  "description": "${DESCLONG[$slug]}",
$(images_json "$slug")
$(sizes_json "$slug")
  "url": "${SITE}/${slug}/",
  "inLanguage": "es-PE",
  "brand": { "@type": "Brand", "name": "Reina Scarlata" },
  "audience": { "@type": "PeopleAudience", "suggestedGender": "female" },
  "offers": {
    "@type": "Offer",
    "url": "${SITE}/${slug}/",
    "price": "${price}",
    "priceCurrency": "PEN",
    "priceValidUntil": "2026-12-31",
    "availability": "https://schema.org/${avail_ld}",
    "itemCondition": "https://schema.org/NewCondition",
    "seller": { "@id": "${SITE}/#tienda" }
  }
}
</script>

<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "BreadcrumbList",
  "itemListElement": [
    { "@type": "ListItem", "position": 1, "name": "Inicio", "item": "${SITE}/" },
    { "@type": "ListItem", "position": 2, "name": "Catálogo", "item": "${SITE}/#catalogo" },
    { "@type": "ListItem", "position": 3, "name": "${NAME[$slug]}" }
  ]
}
</script>

<style>
HEAD

  cat "$SP/base.css"
  cat "$SP/prod.css"

  cat <<BODY1
</style>
</head>
<body>

BODY1

  cat "$SP/header.html"

  cat <<BODY2

<main>
<section class="prod">
  <div class="wrap prod-grid">
    <div class="prod-media-col">
      ${badge_html}
$(galeria_html "$slug")
    </div>
    <div class="prod-info">
      <nav class="crumbs" aria-label="Ruta de navegación">
        <a href="/">Inicio</a> · <a href="/#catalogo">Catálogo</a> · ${NAME[$slug]}
      </nav>
      <p class="prod-cat">${CATLABEL[$slug]}</p>
      <h1>${NAME[$slug]}</h1>
      <p class="prod-price">${price_html}</p>
      <p class="prod-desc">${DESCLONG[$slug]}</p>
      <ul class="prod-specs">
$(specs_html "$slug")
      </ul>
$(tallas_html "$slug")
$(medidas_html "$slug")
${aviso_html}
      <div class="prod-ctas">
        <a href="${wa}" target="_blank" rel="noopener" class="btn btn-gold">${cta_wa}</a>
        <a href="/#catalogo" class="btn btn-dark">Ver todo el catálogo</a>
      </div>
      <a href="${compartir}" target="_blank" rel="noopener" class="compartir">
        <svg viewBox="0 0 24 24" aria-hidden="true"><path d="M12 2a10 10 0 00-8.6 15L2 22l5.2-1.4A10 10 0 1012 2zm0 18.2c-1.6 0-3.1-.4-4.4-1.2l-.3-.2-3.1.8.8-3-.2-.3A8.2 8.2 0 1112 20.2zm4.6-6.1c-.3-.1-1.5-.7-1.7-.8-.2-.1-.4-.1-.6.1-.2.3-.6.8-.8 1-.1.2-.3.2-.5.1a6.7 6.7 0 01-3.3-2.9c-.3-.4.2-.4.6-1.3.1-.2 0-.4 0-.5l-.8-1.8c-.2-.5-.4-.4-.6-.4h-.5c-.2 0-.5.1-.7.3-.2.3-.9.9-.9 2.2s.9 2.5 1.1 2.7c.1.2 1.8 2.8 4.4 3.9 1.6.7 2.3.8 3.1.6.5-.1 1.5-.6 1.7-1.2.2-.6.2-1.1.1-1.2-.1-.1-.3-.2-.5-.3z"/></svg>
        Compártelo con una amiga por WhatsApp
      </a>
      <div class="prod-notes">
$(nota_html "$slug")
        <p>Envíos a Lima y a todo el Perú. El costo y el tiempo de entrega los coordinamos por WhatsApp según tu distrito o ciudad.</p>
        <p>Pago con Yape al 997 081 492 o contra entrega si estás en Lima.</p>
        <p>¿No sabes tu talla? Mide tu bajo busto, busto y cadera con la <a href="/guia-de-tallas/">guía de tallas</a> y te asesoramos por WhatsApp.</p>
        <p>Llega en un empaque listo para obsequiar, con la prenda protegida en una bolsita de tul.</p>
      </div>
    </div>
  </div>
</section>

<section class="prod-extra">
  <div class="wrap">
    <h2>${SEOH[$slug]}</h2>
    <p>${SEOP1[$slug]}</p>
    <p>${SEOP2[$slug]}</p>
    <p>Para que dure años y no meses, revisa cómo <a href="/cuidados-del-encaje/">lavar y guardar tu lencería de encaje</a>: el lavado a mano con agua fría y jabón neutro es lo que marca la diferencia.</p>
  </div>
</section>

<section>
  <div class="wrap">
    <div class="sec-head">
      <div>
        <p class="sec-kicker">También te puede gustar</p>
        <h2 class="sec-title">Otras piezas de la <em>colección</em></h2>
      </div>
      <a href="/#catalogo" class="btn btn-dark">Ver catálogo</a>
    </div>
    <div class="rel-grid">
$(card "$r1")
$(card "$r2")
$(card "$r3")
    </div>
  </div>
</section>
</main>

<div class="cierre">
  <h2>¿Te queda alguna <em>duda</em>?</h2>
  <p>Escríbenos por WhatsApp y te respondemos de lunes a sábado, de 8:00 a 20:00.</p>
  <a href="${wa}" target="_blank" rel="noopener" class="btn btn-gold">Preguntar por esta pieza</a>
</div>

BODY2

  cat "$SP/footer.html"

  cat <<'TAIL'

<script>
  /* la etiqueta "Nuevo" desaparece sola a los 7 días del alta de la ficha */
  document.querySelectorAll('.badge[data-nuevo]').forEach(b=>{
    if((Date.now() - Date.parse(b.dataset.nuevo + 'T00:00:00-05:00')) / 864e5 >= 7) b.remove();
  });
  const burger = document.getElementById('burger');
  const navLinks = document.getElementById('navLinks');
  burger.addEventListener('click', () => {
    const abierto = navLinks.classList.toggle('open');
    burger.classList.toggle('open', abierto);
    burger.setAttribute('aria-expanded', abierto);
  });
  addEventListener('scroll', () => {
    document.getElementById('header').classList.toggle('scrolled', scrollY > 10);
  }, {passive:true});

  /* ---------- galería de fotos ---------- */
  const galMain = document.getElementById('galMain');
  const thumbs = document.querySelectorAll('.gal-thumbs button');
  thumbs.forEach(b=>{
    b.addEventListener('click', ()=>{
      galMain.src = b.dataset.src;
      galMain.alt = b.dataset.alt;
      galMain.setAttribute('width', b.dataset.w);
      galMain.setAttribute('height', b.dataset.h);
      thumbs.forEach(o=>o.setAttribute('aria-current','false'));
      b.setAttribute('aria-current','true');
    });
  });

  /* ---------- selector de talla ---------- */
  const tallas = document.querySelectorAll('.talla');
  const ctas = document.querySelectorAll('.prod-ctas a[href*="wa.me"], .cierre a[href*="wa.me"]');
  tallas.forEach(t=>{
    t.addEventListener('click', ()=>{
      const yaEstaba = t.getAttribute('aria-pressed') === 'true';
      tallas.forEach(o=>o.setAttribute('aria-pressed','false'));
      t.setAttribute('aria-pressed', yaEstaba ? 'false' : 'true');
      const talla = yaEstaba ? null : t.dataset.talla;
      ctas.forEach(a=>{
        if(!a.dataset.base) a.dataset.base = a.getAttribute('href');
        a.setAttribute('href', talla ? a.dataset.base + '%20Talla%20' + encodeURIComponent(talla) : a.dataset.base);
      });
    });
  });

  /* ---------- eventos de conversión (GA4) ---------- */
  document.addEventListener('click', e=>{
    const a = e.target.closest('a[href*="wa.me"]');
    if(!a || typeof gtag !== 'function') return;
    if(a.classList.contains('compartir')){
      gtag('event','share',{ method: 'whatsapp', content_type: 'producto', item_id: location.pathname });
      return;
    }
    const origen = a.classList.contains('wa-float') ? 'boton_flotante'
                 : a.closest('.prod-ctas')          ? 'ficha_producto'
                 : a.closest('.cierre')             ? 'cierre_ficha'
                 : a.closest('footer')              ? 'pie'
                 : 'otro';
    gtag('event','click_whatsapp',{ origen: origen, pagina: location.pathname });
  }, true);
</script>

</body>
</html>
TAIL
  } > "$out/index.html"

  echo "generado: $slug/index.html"
done

# ---------------- vistas previas para redes (1200x630) ----------------
# llevan el nombre impreso, así que se regeneran en cada corrida
ogdatos="$(mktemp)"
for s in "${SLUGS[@]}"; do
  printf '%s\t%s\t%s\t%s\t%s\t%s\n' "$s" "${NAME[$s]}" "${IMG[$s]}" "${OGCROP[$s]%%::*}" "${OGCROP[$s]#*::}" "${AGOTADO[$s]:-}" >> "$ogdatos"
done
powershell.exe -NoProfile -ExecutionPolicy Bypass -File "$(cygpath -w "$SP/og.ps1")" -Datos "$(cygpath -w "$ogdatos")" -Raiz "$(cygpath -w "$ROOT")"
rm -f "$ogdatos"

# ---------------- catálogo de productos ----------------
# Feed RSS con campos g: que leen tanto Meta Commerce Manager (tienda de Instagram
# y Facebook) como Google Merchant Center. Una variante por talla, agrupadas por SKU.
xml_esc(){ local s="${1//&/&amp;}"; s="${s//</&lt;}"; s="${s//>/&gt;}"; printf '%s' "$s"; }
{
  echo '<?xml version="1.0" encoding="UTF-8"?>'
  echo '<rss version="2.0" xmlns:g="http://base.google.com/ns/1.0">'
  echo '<channel>'
  echo '  <title>Reina Scarlata Lencería</title>'
  echo "  <link>${SITE}/</link>"
  echo '  <description>Catálogo de Reina Scarlata Lencería, Lima, Perú</description>'
  for s in "${SLUGS[@]}"; do
    IFS='|' read -ra fotos <<< "${GALLERY[$s]}"
    tallas=("")
    if [ -n "${SIZES[$s]}" ]; then IFS=',' read -ra tallas <<< "${SIZES[$s]}"; fi
    for t in "${tallas[@]}"; do
      echo '  <item>'
      if [ -n "$t" ]; then
        echo "    <g:id>${SKU[$s]}-${t}</g:id>"
        echo "    <g:item_group_id>${SKU[$s]}</g:item_group_id>"
      else
        echo "    <g:id>${SKU[$s]}</g:id>"
      fi
      echo "    <g:title>$(xml_esc "${NAME[$s]}")</g:title>"
      echo "    <g:description>$(xml_esc "${DESCLONG[$s]}")</g:description>"
      echo "    <g:link>${SITE}/${s}/</g:link>"
      echo "    <g:image_link>${SITE}/assets/${fotos[0]%%::*}</g:image_link>"
      for f in "${fotos[@]:1}"; do echo "    <g:additional_image_link>${SITE}/assets/${f%%::*}</g:additional_image_link>"; done
      if [ -n "${AGOTADO[$s]:-}" ]; then
        echo '    <g:availability>out of stock</g:availability>'
      else
        echo '    <g:availability>in stock</g:availability>'
      fi
      echo '    <g:condition>new</g:condition>'
      if [ -n "${OLDPRICE[$s]}" ]; then
        echo "    <g:price>${OLDPRICE[$s]} PEN</g:price>"
        echo "    <g:sale_price>${PRICE[$s]} PEN</g:sale_price>"
      else
        echo "    <g:price>${PRICE[$s]} PEN</g:price>"
      fi
      echo '    <g:brand>Reina Scarlata</g:brand>'
      echo '    <g:google_product_category>Apparel &amp; Accessories &gt; Clothing &gt; Underwear &amp; Socks &gt; Lingerie</g:google_product_category>'
      echo "    <g:product_type>$(xml_esc "${CATLABEL[$s]}")</g:product_type>"
      echo '    <g:gender>female</g:gender>'
      echo '    <g:age_group>adult</g:age_group>'
      if [ -n "$t" ]; then echo "    <g:size>${t}</g:size>"; fi
      echo '  </item>'
    done
  done
  echo '</channel>'
  echo '</rss>'
} > "$ROOT/catalogo.xml"
echo "catálogo: $(grep -c '<item>' "$ROOT/catalogo.xml") artículos"

# ---------------- sitemap ----------------
HOY="$(date +%F)"
{
  echo '<?xml version="1.0" encoding="UTF-8"?>'
  echo '<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9"'
  echo '        xmlns:image="http://www.google.com/schemas/sitemap-image/1.1">'
  echo '  <url>'
  echo "    <loc>${SITE}/</loc>"
  echo "    <lastmod>${HOY}</lastmod>"
  echo '    <changefreq>weekly</changefreq>'
  echo '    <priority>1.0</priority>'
  echo "    <image:image><image:loc>${SITE}/assets/hero.jpg</image:loc></image:image>"
  echo '  </url>'
  for s in "${SLUGS[@]}"; do
    echo '  <url>'
    echo "    <loc>${SITE}/${s}/</loc>"
    echo "    <lastmod>${HOY}</lastmod>"
    echo '    <changefreq>monthly</changefreq>'
    echo '    <priority>0.9</priority>'
    IFS='|' read -ra fotos <<< "${GALLERY[$s]}"
    for f in "${fotos[@]}"; do
      echo "    <image:image><image:loc>${SITE}/assets/${f%%::*}</image:loc></image:image>"
    done
    echo '  </url>'
  done
  cat <<GUIAS
  <url>
    <loc>${SITE}/guia-de-tallas/</loc>
    <lastmod>2026-09-10</lastmod>
    <changefreq>monthly</changefreq>
    <priority>0.8</priority>
  </url>
  <url>
    <loc>${SITE}/cuidados-del-encaje/</loc>
    <lastmod>2026-09-10</lastmod>
    <changefreq>monthly</changefreq>
    <priority>0.7</priority>
  </url>
GUIAS
  echo '</urlset>'
} > "$ROOT/sitemap.xml"
echo "sitemap: $(grep -c '<loc>' "$ROOT/sitemap.xml") urls"
