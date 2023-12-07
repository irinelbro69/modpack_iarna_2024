  --[[
 Hassled Hud language
	Here you can translate the entire script into your language.

	Aqui você pode traduzir todo o script para o seu idioma

  Здесь вы можете перевести весь сценарий на свой язык.
  ]]



-------------------------------------
-- SELECT YOUT LANGUGE HERE
-- ВЫБЕРИТЕ СВОЙ ЯЗЫК ЗДЕСЬ
local selected = 2      -- ENG: Choose number 1 if your language is Russian. Choose 2 if your language is English or Spanish.
                        -- RU: Выберите номер 1, если ваш язык - русский. Выберите 2, если ваш язык - английский или испанский.

                        -- ENG: After changing the number, you must translate the texts below.  
                        -- RU: после изменения номера должны перевести тексты

 local lang = ({'CP1251', 'ISO-8859-1'  })[selected]
------------------------------------


local encoding = require 'encoding'
encoding.default = lang
local u8 = encoding.UTF8


-- Texts that you must translate with the translator. | Тексты, которые нужно перевести с помощью переводчика.
  local language = {
   	'Estrellas horizontales',  
  	'¡IMPORTANTE! {FFFFFF}Hacer clic en {D1A5E5}Guardar, o {FFFFFF}ESC{D1A5E5} cancelar',
  	'¡Guardado!',
  	'Cancelaste el cambio de ubicación',
  	'Principal:',
    'Mostrar hud estándar',
  	'Cambiar de posición Hud',
  	'Tamaño del HUD:',
  	'Aplicar',
  	'Mostrar iconos',
  	'Mostrar circulo fist',
    'Mostrar estrellas siempre',
  	'Modo 160 HP',
  	'Mostrar munición',
  	'Mostrar cantidad',
    'Colores:',
  	'Salud',
  	'Chaleco',
  	'Dinero',
  	'Oxígeno',
  	'Circulo fist',
  	'Estrellas',
  	'Estrellas inactivas',
  	'Estilos',
  	'Ancho de vida y chaleco',
  	'Altura de vida y chaleco',
  	'Redondeo',
  	'Redondear',
  	'Posición vida',
  	'Posición chale',
  	'Posición dinero',
  	'Posición munición',
    'Posición estrellas',
    'Cantidad',
    'Icono vida',
    'Icono chale',
    'Munición'
  }

  local newdata = {selected}
  for k, v in ipairs(language) do 
    newdata[#newdata + 1] = u8(u8:decode(v))
  end

return newdata

-- by José
-- https://www.youtube.com/@JoseSampMods/videos
 