# -*- coding: utf-8 -*-

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)


# regiones
[ "Tarapacá",
  "Antofagasta",
  "Atacama",
  "Coquimbo",
  "Valparaíso",
  "Libertador General Bernardo O'Higgins",
  "Maule",
  "BioBío",
  "Araucania",
  "Los Lagos",
  "General Carlos Ibañez del Campo",
  "Magallanes y Antártica Chilena",
  "Metropolitana",
  "Los Ríos",
  "Arica y Parinacota"
  ].each_with_index do |region, misc|
  Mantenedor.create(:tipo => :region, :valor => region, :misc => misc + 1)
end

# crear comunas por region
comunas_region = {
  "1" => ["Alto Hospicio","Camiña","Colchane","Huara","Iquique","Paihuano","Pica","Pozo Almonte"],
  "2" => ["Antofagasta","Calama","María Elena","Mejillones","Ollagüe","San Pedro de Atacama","Sierra Gorda","Taltal","Tocopilla"],
  "3" => ["Alto del Carmen","Caldera","Chañaral","Copiapó","Diego de Almagro","Freirina","Huasco","Tierra Amarilla","Vallenar"],
  "4" => ["Andacollo","Canela","Combarbalá","Coquimbo","Illapel","La Higuera","La Serena","Los Vilos","Monte Patria","Ovalle","Punitaqui","Río Hurtado","Salamanca","Vicuña"],
  "5" => ["Algarrobo","Cabildo","Calera","Calle Larga","Cartagena","Casablanca","Catemu","Concón","El Quisco","El Tabo","Hijuelas","Isla de Pascua","Juan Fernández","La Cruz","La Ligua","Limache","Llay Llay","Los Andes","Nogales","Olmué","Panquehue","Papudo","Petorca","Puchuncaví","Putaendo","Quillota","Quilpué","Quintero","Rinconada","San Antonio","San Esteban","San Felipe","Santa María","Santo Domingo","Valparaíso","Villa Alemana","Viña del Mar","Zapallar"],
  "6" => ["Chimbarongo","Chépica","Codegua","Coinco","Coltauco","Doñihue","Graneros","La Estrella","Las Cabras","Lolol","Machalí","Malloa","Marchihue","Mostazal","Nancagua","Navidad","Palmilla","Paredones","Peralillo","Peumo","Pichidegua","Pichilemu","Pumanque","Quinta De Tilcoco","Rancagua","Rengo","Requinoa","San Fernando","San Vicente","Santa Cruz"],
  "7" => ["Cauquenes","Chanco","Colbún","Constitución","Curepto","Curicó","Empedrado","Hualañé","Licantén","Linares","Longaví","Maule","Molina","Parral","Pelarco","Pelluhue","Pencahue","Rauco","Retiro","Romeral","Río Claro","Sagrada Familia","San Clemente","San Javier","San Rafael","Talca","Teno","Vichuquén","Villa Alegre","Yerbas Buenas"],
  "8" => ["Alto Bíobío","Antuco","Arauco","Bulnes","Cabrero","Cañete","Chiguayante","Chillán","Chillán Viejo","Cobquecura","Coelemu","Coihueco","Concepción","Contulmo","Coronel","Curanilahue","El Carmen","Florida","Hualpén","Hualqui","Laja","Lebu","Los Alamos","Los Angeles","Lota","Mulchén","Nacimiento","Negrete","Ninhue","Pemuco","Penco","Pinto","Portezuelo","Quilaco","Quilleco","Quillón","Quirihue","Ranquil","San Carlos","San Fabián","San Ignacio","San Nicolás","San Pedro de La Paz","San Rosendo","Santa Bárbara","Santa Juana","Talcahuano","Tirua","Tomé","Trehuaco","Tucapel","Yumbel","Yungay","Ñiquén"],
  "9" => ["Angol","Carahue","Cholchol","Collipulli","Cunco","Curacautín","Curarrehue","Ercilla","Freire","Galvarino","Gorbea","Lautaro","Loncoche","Lonquimay","Los Sauces","Lumaco","Melipeuco","Nueva Imperial","Padre Las Casas","Perquenco","Pitrufquén","Pucón","Purén","Renaico","Saavedra","Temuco","Teodoro Schmidt","Toltén","Traiguén","Victoria","Vilcún","Villarrica"],
  "10" => ["Ancud","Calbuco","Castro","Chaitén","Chonchi","Cochamó","Curaco de Vélez","Dalcahue","Fresia","Frutillar","Futaleufú","Hualaihue","Llanquihue","Los Muermos","Maullín","Osorno","Palena","Puerto Montt","Puerto Octay","Puerto Varas","Puqueldón","Purranque","Puyehue","Queilén","Quellón","Quemchi","Quinchao","Río Negro","San Juan de La Costa","San Pablo"],
  "11" => ["Aisén","Chile Chico","Cisnes","Cochrane","Coyhaique","Guaitecas","Lago Verde","Ohiggins","Río Ibáñez","Tortel"],
  "12" => ["Antártica", "Cabo de Hornos","Laguna Blanca","Natales","Porvenir","Primavera","Punta Arenas","Río Verde","San Gregorio","Timaukel","Torres del Paine"],
  "13" => ["Alhué","Buin","Calera de Tango","Cerrillos","Cerro Navia","Colina","Conchalí","Curacaví","El Bosque","El Monte","Estación Central","Huechuraba","Independencia","Isla de Maipo","La Cisterna","La Florida","La Granja","La Pintana","La Reina","Lampa","Las Condes","Lo Barnechea","Lo Espejo","Lo Prado","Macul","Maipú","María Pinto","Melipilla","Padre Hurtado","Paine","Pedro  Aguirre Cerda","Peñaflor","Peñalolén","Pirque","Providencia","Pudahuel","Puente Alto","Quilicura","Quinta Normal","Recoleta","Renca","San Bernardo","San Joaquín","San José de Maipo","San Miguel","San Pedro","San Ramón","Santiago","Subdere","Talagante","Tiltil","Vitacura","Ñuñoa"],
  "14" => ["Corral","Futrono","La Unión","Lago Ranco","Lanco","Los Lagos","Mariquina","Máfil","Paillaco","Panguipulli","Río Bueno","Valdivia"],
  "15" => ["Arica","Camarones","General Lagos","Putre"]
  }

comunas_region.each_pair do |region, lista|
  lista.each do |comuna|
    Mantenedor.create(:tipo => :comuna, :valor => comuna, :misc => region)
  end
end



# tipo identificacion
[ "RUN",
  "Pasaporte",
  "Otro"
  ].each do |valor|
  Mantenedor.create(:tipo => :tipoidentificacion, :valor => valor)
end

# tipo sexo
[ "Masculino",
  "Femenino"
  ].each do |valor|
  Mantenedor.create(:tipo => :tiposexo, :valor => valor)
end

# color de ojos
[ "Miel",
  "Castaño Claro",
  "Castaño Oscuro",
  "Azul",
  "Grises",
  "Grises Verde",
  "Grises Azul",
  "Pardos",
  "Verde Claro",
  "Verde Oscuro",
  "Negro"
  ].each do |valor|
  Mantenedor.create(:tipo => :cojos, :valor => valor)
end

# color de cabello
[ "Rubio Claro",
  "Rubio Oscuro",
  "Colorin",
  "Castaño",
  "Rojo",
  "Castaño Oscuro",
  "Negro"
  ].each do |valor|
  Mantenedor.create(:tipo => :ccabello, :valor => valor)
end

# largo de cabello
[ "Largo",
  "Corto"
  ].each do |valor|
  Mantenedor.create(:tipo => :lcabello, :valor => valor)
end

# Etnia
[ "Albino",
  "Asiatico",
  "Negro",
  "Indue",
  "Indio(Indigena)"
  ].each do |valor|
  Mantenedor.create(:tipo => :etnia, :valor => valor)
end

# talla de camisa
[ "XS", "S","M","L","XL"
  ].each do |valor|
  Mantenedor.create(:tipo => :tcamisa, :valor => valor)
end


# roles
[ "Administrador",
  "Ejecutivo"
  ].each do |nombre|
  Role.create(:nombre => nombre)
end

# usuario admin
User.create(
    :nombre => 'Administrador del Sistema',
    :login => 'simone',
    :password => 'newmodels',
    :password_confirmation => 'newmodels',
    :roles => Role.where(:nombre => 'Administrador')
    
    )
    
#Paises
[ "Afganistán " ,
"Akrotiri " ,
"Albania " ,
"Alemania " ,
"Andorra " ,
"Angola " ,
"Anguila " ,
"Antártida " ,
"Antigua y Barbuda " ,
"Antillas Neerlandesas " ,
"Arabia Saudí " ,
"Arctic Ocean " ,
"Argelia " ,
"Argentina " ,
"Armenia " ,
"Aruba " ,
"Ashmore andCartier Islands " ,
"Atlantic Ocean " ,
"Australia " ,
"Austria " ,
"Azerbaiyán " ,
"Bahamas " ,
"Bahráin " ,
"Bangladesh " ,
"Barbados " ,
"Bélgica " ,
"Belice " ,
"Benín " ,
"Bermudas " ,
"Bielorrusia " ,
"Birmania Myanmar " ,
"Bolivia " ,
"Bosnia y Hercegovina " ,
"Botsuana " ,
"Brasil " ,
"Brunéi " ,
"Bulgaria " ,
"Burkina Faso " ,
"Burundi " ,
"Bután " ,
"Cabo Verde " ,
"Camboya " ,
"Camerún " ,
"Canadá " ,
"Chad " ,
"Chile " ,
"China " ,
"Chipre " ,
"Clipperton Island " ,
"Colombia " ,
"Comoras " ,
"Congo " ,
"Coral Sea Islands " ,
"Corea del Norte " ,
"Corea del Sur " ,
"Costa de Marfil " ,
"Costa Rica " ,
"Croacia " ,
"Cuba " ,
"Dhekelia " ,
"Dinamarca " ,
"Dominica " ,
"Ecuador " ,
"Egipto " ,
"El Salvador " ,
"El Vaticano " ,
"Emiratos Árabes Unidos " ,
"Eritrea " ,
"Eslovaquia " ,
"Eslovenia " ,
"España " ,
"Estados Unidos " ,
"Estonia " ,
"Etiopía " ,
"Filipinas " ,
"Finlandia " ,
"Fiyi " ,
"Francia " ,
"Gabón " ,
"Gambia " ,
"Gaza Strip " ,
"Georgia " ,
"Ghana " ,
"Gibraltar " ,
"Granada " ,
"Grecia " ,
"Groenlandia " ,
"Guam " ,
"Guatemala " ,
"Guernsey " ,
"Guinea " ,
"Guinea Ecuatorial " ,
"Guinea-Bissau " ,
"Guyana " ,
"Haití " ,
"Honduras " ,
"Hong Kong " ,
"Hungría " ,
"India " ,
"Indian Ocean " ,
"Indonesia " ,
"Irán " ,
"Iraq " ,
"Irlanda " ,
"Isla Bouvet " ,
"Isla Christmas " ,
"Isla Norfolk " ,
"Islandia " ,
"Islas Caimán " ,
"Islas Cocos " ,
"Islas Cook " ,
"Islas Feroe " ,
"Islas Georgia del Sur y Sandwich del Sur " ,
"Islas Heard y McDonald " ,
"Islas Malvinas " ,
"Islas Marianas del Norte " ,
"IslasMarshall " ,
"Islas Pitcairn " ,
"Islas Salomón " ,
"Islas Turcas y Caicos " ,
"Islas Vírgenes Americanas " ,
"Islas Vírgenes Británicas " ,
"Israel " ,
"Italia " ,
"Jamaica " ,
"Jan Mayen " ,
"Japón " ,
"Jersey " ,
"Jordania " ,
"Kazajistán " ,
"Kenia " ,
"Kirguizistán " ,
"Kiribati " ,
"Kuwait " ,
"Laos " ,
"Lesoto " ,
"Letonia " ,
"Líbano " ,
"Liberia " ,
"Libia " ,
"Liechtenstein " ,
"Lituania " ,
"Luxemburgo " ,
"Macao " ,
"Macedonia " ,
"Madagascar " ,
"Malasia " ,
"Malaui " ,
"Maldivas " ,
"Malí " ,
"Malta " ,
"Man, Isle of " ,
"Marruecos " ,
"Mauricio " ,
"Mauritania " ,
"Mayotte " ,
"México " ,
"Micronesia " ,
"Moldavia " ,
"Mónaco " ,
"Mongolia " ,
"Montserrat " ,
"Mozambique " ,
"Namibia " ,
"Nauru " ,
"Navassa Island " ,
"Nepal " ,
"Nicaragua " ,
"Níger " ,
"Nigeria " ,
"Niue " ,
"Noruega " ,
"Nueva Caledonia " ,
"Nueva Zelanda " ,
"Omán " ,
"Pacific Ocean " ,
"Países Bajos " ,
"Pakistán " ,
"Palaos " ,
"Panamá " ,
"Papúa-Nueva Guinea " ,
"Paracel Islands " ,
"Paraguay " ,
"Perú " ,
"Polinesia Francesa " ,
"Polonia " ,
"Portugal " ,
"Puerto Rico " ,
"Qatar " ,
"Reino Unido " ,
"República Centroafricana " ,
"República Checa " ,
"República Democrática del Congo " ,
"República Dominicana " ,
"Ruanda " ,
"Rumania " ,
"Rusia " ,
"Sáhara Occidental " ,
"Samoa " ,
"Samoa Americana " ,
"San Cristóbal y Nieves " ,
"San Marino " ,
"San Pedro y Miquelón " ,
"San Vicente y las Granadinas " ,
"Santa Helena " ,
"Santa Lucía " ,
"Santo Tomé y Príncipe " ,
"Senegal " ,
"Seychelles " ,
"Sierra Leona " ,
"Singapur " ,
"Siria " ,
"Somalia " ,
"Southern Ocean " ,
"Spratly Islands " ,
"Sri Lanka " ,
"Suazilandia " ,
"Sudáfrica " ,
"Sudán " ,
"Suecia " ,
"Suiza " ,
"Surinam " ,
"Svalbard y Jan Mayen " ,
"Tailandia " ,
"Taiwán " ,
"Tanzania " ,
"Tayikistán " ,
"TerritorioBritánicodel Océano Indico " ,
"Territorios Australes Franceses " ,
"Timor Oriental " ,
"Togo " ,
"Tokelau " ,
"Tonga " ,
"Trinidad y Tobago " ,
"Túnez " ,
"Turkmenistán " ,
"Turquía " ,
"Tuvalu " ,
"Ucrania " ,
"Uganda " ,
"Unión Europea " ,
"Uruguay " ,
"Uzbekistán " ,
"Vanuatu " ,
"Venezuela " ,
"Vietnam " ,
"Wake Island " ,
"Wallis y Futuna " ,
"West Bank " ,
"World " ,
"Yemen " ,
"Yibuti " ,
"Zambia " ,
"Zimbabue" 
  ].each do |valor|
  Mantenedor.create(:tipo => :paises, :valor => valor)
end

# Personajes
[ "Niño",
  "Adulto",
  "Abuelo",
  "Bebe",
  "Joven"  
  ].each do |valor|
  Mantenedor.create(:tipo => :personajes, :valor => valor)
end

# Rol
[ "Protagonista",
  "Secuendario",
  "Extra"  
  ].each do |valor|
  Mantenedor.create(:tipo => :roles, :valor => valor)
end

# Medios
[ "All Media",
  "Gráfica",
  "TV"  
  ].each do |valor|
  Mantenedor.create(:tipo => :medios, :valor => valor)
end

# Tipos de Competencias
[ "Comercial",
  "Fotografia",
  "Desfile"  
  ].each do |valor|
  Mantenedor.create(:tipo => :tcompetencias, :valor => valor)
end

# Tipos de Facturas
[ "Nacional",
  "Internacional",
  "Sin Factura"  
  ].each do |valor|
  Mantenedor.create(:tipo => :tfacturas, :valor => valor)
end

# Categoria Competencias
[ "Adulto",
  "Niño"
  ].each do |valor|
  Mantenedor.create(:tipo => :ccompetencias, :valor => valor)
end


# Direcciones de Correo donde se enviarán mail cuando se creen Eventos
[ "ramirezqueupul@gmail.com"  
  ].each do |valor|
  Mantenedor.create(:tipo => :mail_evento, :valor => valor)
end


