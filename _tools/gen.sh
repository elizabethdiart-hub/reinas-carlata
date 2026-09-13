#!/usr/bin/env bash
set -euo pipefail

SP="$(cd "$(dirname "$0")" && pwd)"
ROOT="$(cd "$SP/.." && pwd)"
SITE="https://reinascarlata.com"

SLUGS=(conjunto-hortencia conjunto-reina-de-corazones conjunto-reina-de-rosas conjunto-buganvilla conjunto-reina-negra conjunto-rosa-carlata body-burdeos-real bralette-marfil-sueno pijama-saten-champagne)

declare -A SKU NAME CAT CATLABEL PRICE OLDPRICE IMG BADGE TITLE METADESC ALT DESCLONG SPECS SEOH SEOP1 SEOP2 WANAME GALLERY SIZES NOTA MEDIDAS

# ---------------- RS-010 ----------------
SKU[conjunto-hortencia]="RS-010"
NAME[conjunto-hortencia]="Conjunto Hortencia"
CAT[conjunto-hortencia]="conjuntos"
CATLABEL[conjunto-hortencia]="Conjuntos"
PRICE[conjunto-hortencia]="89.00"
OLDPRICE[conjunto-hortencia]=""
IMG[conjunto-hortencia]="conjunto-hortencia-1.jpg"
BADGE[conjunto-hortencia]="Nuevo"
WANAME[conjunto-hortencia]="Conjunto%20Hortencia"
TITLE[conjunto-hortencia]="Conjunto de encaje lila Hortencia | Reina Scarlata"
METADESC[conjunto-hortencia]="Conjunto Hortencia: tul menta con hortensias bordadas en relieve en lila, marfil y celeste. S/ 89.00, tallas S a XL. Envíos a todo el Perú y pago con Yape."
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
WANAME[conjunto-reina-de-corazones]="Conjunto%20Reina%20de%20Corazones"
TITLE[conjunto-reina-de-corazones]="Conjunto de encaje negro con corazones | Reina Scarlata"
METADESC[conjunto-reina-de-corazones]="Conjunto Reina de Corazones: brasier de tul con corazones bordados y tanga de amarrar con cintas de satén. S/ 69.00, tallas S, M y L. Envíos a todo el Perú."
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
METADESC[conjunto-buganvilla]="Conjunto Buganvilla: brasier de encaje fucsia con bordado floral y tanga a juego. S/ 79.00, talla S. Envíos a todo el Perú y pago con Yape o contra entrega."
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
WANAME[conjunto-reina-de-rosas]="Conjunto%20Reina%20de%20Rosas"
TITLE[conjunto-reina-de-rosas]="Conjunto de encaje rojo Reina de Rosas | Reina Scarlata"
METADESC[conjunto-reina-de-rosas]="Conjunto Reina de Rosas: corset de tul con rosas bordadas en relieve y tanga a juego. S/ 89.00, tallas S, M y L. Envíos a todo el Perú y pago con Yape."
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

# ---------------- RS-001 ----------------
SKU[conjunto-reina-negra]="RS-001"
NAME[conjunto-reina-negra]="Conjunto Reina Negra"
CAT[conjunto-reina-negra]="conjuntos"
CATLABEL[conjunto-reina-negra]="Conjuntos"
PRICE[conjunto-reina-negra]="89.90"
OLDPRICE[conjunto-reina-negra]="120.00"
IMG[conjunto-reina-negra]="p1.jpg"
BADGE[conjunto-reina-negra]="Oferta"
WANAME[conjunto-reina-negra]="Conjunto%20Reina%20Negra"
TITLE[conjunto-reina-negra]="Conjunto de encaje negro Reina Negra | Reina Scarlata"
METADESC[conjunto-reina-negra]="Conjunto de encaje floral negro: brasier con aro y calzón festoneado. S/ 89.90 antes S/ 120. Envíos a todo el Perú, Yape o pago contra entrega en Lima."
ALT[conjunto-reina-negra]="Conjunto de lencería de encaje floral negro Reina Scarlata, brasier con aro y calzón festoneado"
DESCLONG[conjunto-reina-negra]="Conjunto de dos piezas en encaje floral negro. Brasier con aro y copa forrada, tirantes regulables y lazo satinado al centro. Calzón a juego con encaje festoneado y transparencias."
SPECS[conjunto-reina-negra]="Encaje floral negro en las dos piezas|Brasier con aro y copa forrada|Tirantes regulables|Lazo satinado al centro|Calzón a juego con encaje festoneado y transparencias"
SEOH[conjunto-reina-negra]="El negro que <em>nunca</em> falla"
SEOP1[conjunto-reina-negra]="El conjunto de encaje negro es la pieza con la que casi todas empiezan, y por una buena razón: combina con todo, se siente elegante sin esfuerzo y funciona igual para un día cualquiera que para una ocasión especial. El encaje floral de este conjunto tiene cuerpo y caída, no se arruga dentro del cajón y mantiene su forma lavado tras lavado si lo cuidas a mano."
SEOP2[conjunto-reina-negra]="El brasier tiene aro y copa forrada, así que sostiene de verdad en lugar de solo cubrir, y los tirantes regulables te dejan ajustarlo a tu espalda. El calzón repite el encaje festoneado con transparencias en los costados. Si dudas entre dos tallas, escríbenos por WhatsApp con tus medidas antes de pedir."

# ---------------- RS-002 ----------------
SKU[conjunto-rosa-carlata]="RS-002"
NAME[conjunto-rosa-carlata]="Conjunto Rosa Carlata"
CAT[conjunto-rosa-carlata]="conjuntos"
CATLABEL[conjunto-rosa-carlata]="Conjuntos"
PRICE[conjunto-rosa-carlata]="79.90"
OLDPRICE[conjunto-rosa-carlata]=""
IMG[conjunto-rosa-carlata]="p2.jpg"
BADGE[conjunto-rosa-carlata]="Nuevo"
WANAME[conjunto-rosa-carlata]="Conjunto%20Rosa%20Carlata"
TITLE[conjunto-rosa-carlata]="Conjunto de satén rosa palo con encaje | Reina Scarlata"
METADESC[conjunto-rosa-carlata]="Conjunto de satén rosa palo con encaje festoneado, copa acolchada y lazos. S/ 79.90. Envíos a todo el Perú, Yape o pago contra entrega en Lima."
ALT[conjunto-rosa-carlata]="Conjunto de lencería de satén rosa palo Reina Scarlata con encaje festoneado y lazos"
DESCLONG[conjunto-rosa-carlata]="Conjunto en satén rosa palo con encaje festoneado. Brasier de copa acolchada con lazos en los tirantes y al centro, y calzón satinado con paneles de encaje a los costados."
SPECS[conjunto-rosa-carlata]="Satén rosa palo con encaje festoneado|Brasier de copa acolchada|Lazos en los tirantes y al centro|Calzón satinado con paneles de encaje a los costados"
SEOH[conjunto-rosa-carlata]="Satén rosa, el lado más <em>suave</em>"
SEOP1[conjunto-rosa-carlata]="El rosa palo es el tono al que vuelven las clientas que quieren algo romántico sin caer en lo obvio. El satén le da un brillo discreto que el encaje solo no consigue, y la combinación de las dos telas hace que el conjunto se vea mucho más caro de lo que cuesta. Es también de los tonos que mejor quedan bajo ropa clara."
SEOP2[conjunto-rosa-carlata]="La copa acolchada da forma sin necesidad de relleno extra y los lazos, tanto en los tirantes como al centro, son el detalle que hace que esta pieza funcione muy bien como regalo. El calzón repite el satén con paneles de encaje a los costados. El satén pide lavado a mano con agua fría: en nuestra guía de cuidados te explicamos cómo hacerlo sin que pierda el brillo."

# ---------------- RS-003 ----------------
SKU[body-burdeos-real]="RS-003"
NAME[body-burdeos-real]="Body Burdeos Real"
CAT[body-burdeos-real]="bodys"
CATLABEL[body-burdeos-real]="Bodys"
PRICE[body-burdeos-real]="99.90"
OLDPRICE[body-burdeos-real]=""
IMG[body-burdeos-real]="p3.jpg"
BADGE[body-burdeos-real]=""
WANAME[body-burdeos-real]="Body%20Burdeos%20Real"
TITLE[body-burdeos-real]="Body de encaje burdeos con escote en V | Reina Scarlata"
METADESC[body-burdeos-real]="Body de encaje floral burdeos con escote profundo en V y herrajes dorados. S/ 99.90. Envíos a todo el Perú, Yape o pago contra entrega en Lima."
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
IMG[bralette-marfil-sueno]="p4.jpg"
BADGE[bralette-marfil-sueno]="Oferta"
WANAME[bralette-marfil-sueno]="Bralette%20Marfil%20Sue%C3%B1o"
TITLE[bralette-marfil-sueno]="Bralette de encaje marfil sin aro | Reina Scarlata"
METADESC[bralette-marfil-sueno]="Bralette triangular de encaje marfil, sin aro, con pestaña festoneada. S/ 59.90 antes S/ 75. Envíos a todo el Perú, Yape o pago contra entrega en Lima."
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
IMG[pijama-saten-champagne]="p5.jpg"
BADGE[pijama-saten-champagne]="Nuevo"
WANAME[pijama-saten-champagne]="Pijama%20Sat%C3%A9n%20Champagne"
TITLE[pijama-saten-champagne]="Pijama de satén champagne de dos piezas | Reina Scarlata"
METADESC[pijama-saten-champagne]="Pijama de satén champagne: top con escote en V y encaje, y short con pretina elástica. S/ 109.90. Envíos a todo el Perú y pago con Yape."
ALT[pijama-saten-champagne]="Pijama de satén champagne Reina Scarlata de dos piezas, top con escote en V y short con encaje"
DESCLONG[pijama-saten-champagne]="Pijama de dos piezas en satén champagne. Top de tirantes finos con escote en V y encaje, y short con pretina elástica y encaje en el ruedo."
SPECS[pijama-saten-champagne]="Satén champagne, dos piezas|Top de tirantes finos con escote en V y encaje|Short con pretina elástica|Encaje en el ruedo del short"
SEOH[pijama-saten-champagne]="Dormir bien también es <em>arreglarse</em>"
SEOP1[pijama-saten-champagne]="El satén no es solo cuestión de verse bien: es una tela fresca, que no se pega al cuerpo en las noches de calor de Lima y que resbala en lugar de engancharse con las sábanas. Por eso un pijama de satén se siente distinto a uno de algodón desde la primera noche, sobre todo en verano."
SEOP2[pijama-saten-champagne]="El champagne es un neutro cálido que no se ve amarillento ni apagado, y el encaje del escote y del ruedo del short lo saca del terreno del pijama corriente. Es de los regalos que mejor funcionan porque es bonito y se usa todos los días, no solo en ocasiones especiales. La pretina elástica del short da margen de talla."

# los productos sin fotos propias todavia usan su imagen unica como galeria
for s in "${SLUGS[@]}"; do
  [ -n "${GALLERY[$s]:-}" ] || GALLERY[$s]="${IMG[$s]}::800::1200::${ALT[$s]}"
  SIZES[$s]="${SIZES[$s]:-}"
  NOTA[$s]="${NOTA[$s]:-}"
  MEDIDAS[$s]="${MEDIDAS[$s]:-}"
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

  # badge
  if [ -n "$badge" ]; then
    cls="badge"; [ "$badge" = "Oferta" ] && cls="badge gold"
    badge_html="<span class=\"${cls}\">${badge}</span>"
  else
    badge_html=""
  fi

  # relacionados: los tres siguientes en orden cíclico
  r1="${SLUGS[$(( (i+1) % n ))]}"
  r2="${SLUGS[$(( (i+2) % n ))]}"
  r3="${SLUGS[$(( (i+3) % n ))]}"

  wa="https://wa.me/51997081492?text=Hola%20Reina%20Scarlata%2C%20me%20interesa%20el%20${WANAME[$slug]}%20(${SKU[$slug]}).%20%C2%BFSigue%20disponible%3F"

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
<meta property="og:image" content="${SITE}/assets/${img}">
<meta property="og:image:alt" content="${ALT[$slug]}">
<meta property="product:price:amount" content="${price}">
<meta property="product:price:currency" content="PEN">
<meta property="product:availability" content="in stock">
<meta name="twitter:card" content="summary_large_image">
<meta name="twitter:title" content="${NAME[$slug]} · Reina Scarlata">
<meta name="twitter:description" content="${METADESC[$slug]}">
<meta name="twitter:image" content="${SITE}/assets/${img}">

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
    "availability": "https://schema.org/InStock",
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
      <div class="prod-ctas">
        <a href="${wa}" target="_blank" rel="noopener" class="btn btn-gold">Pedir por WhatsApp</a>
        <a href="/#catalogo" class="btn btn-dark">Ver todo el catálogo</a>
      </div>
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
