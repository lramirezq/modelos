class BusquedasController < ApplicationController
  
  def datos_modelo
  puts "Buscar por datos de modelos....."  
  query = "select * from modelos WHERE 1=1 "  
  parametros = []
  #Recibendo Parametros
  tipo_id = params[:tipo_id]
  if tipo_id !=nil && !tipo_id.empty?
    puts "Tipo ID ***************" + tipo_id + "*********************"
    query = query + " AND \"tipo_id\" ilike '%#{tipo_id}%' "
  end
  
  numero_id = params[:numero_id]
  if numero_id !=nil && !numero_id.empty?
    puts "numero_id ***************" + numero_id + "*********************"
    query = query + " AND \"numero_id\" ilike '%#{numero_id}%' "
  end
  
  nombres = params[:nombres]
  if nombres !=nil && !nombres.empty?
    puts "nombres ***************" + nombres + "*********************"
    query = query + " AND \"nombres\" ilike '%#{nombres}%' "
  end
  
  apellidos = params[:apellidos]
  if apellidos !=nil && !apellidos.empty?
    puts "apellidos ***************" + apellidos + "*********************"
    query = query + " AND \"apellidos\" ilike '%#{apellidos}%' "
  end  

  sexo = params[:sexo]
  if sexo !=nil && !sexo.empty?
    puts "sexo ***************" + sexo + "*********************"
    query = query + " AND \"sexo\" ilike '%#{sexo}%'  "
  end   

  edad_desde = params[:edad_desde]
  edad_hasta = params[:edad_hasta]
  if edad_desde !=nil && !edad_desde.empty? && edad_hasta.empty?
    puts "edad_desde ***************" + edad_desde + "*********************"
    query = query + " AND extract(year from age(fecha_nacimiento)) = #{edad_desde} "
  end  
 
  edad_hasta = params[:edad_hasta]
  if edad_hasta !=nil && !edad_hasta.empty? && edad_desde !=nil && !edad_desde.empty?
    puts "edad_hasta ***************" + edad_hasta + "*********************"
    query = query + " AND extract(year from age(fecha_nacimiento)) between #{edad_desde} and #{edad_hasta} "
  end    
  
  nacionalidad = params[:nacionalidad]
  if nacionalidad !=nil && !nacionalidad.empty?
    puts "nacionalidad ***************" + nacionalidad + "*********************"
    query = query + " AND \"nacionalidad\" ilike '%#{nacionalidad}%' "
  end  

  telefono_fijo = params[:telefono_fijo]
  if telefono_fijo !=nil && !telefono_fijo.empty?
    puts "telefono_fijo ***************" + telefono_fijo + "*********************"
    query = query + "AND \"telefono_fijo\" ilike '%#{telefono_fijo}%' "
  end 
 
  movil = params[:movil]
  if movil !=nil && !movil.empty?
    puts "movil ***************" + movil + "*********************"
    query = query + "AND \"movil\" ilike '%#{movil}%' "
  end   
 
  direccion = params[:direccion]
  if direccion !=nil && !direccion.empty?
    puts "direccion ***************" + direccion + "*********************"
    query = query + "AND \"direccion\" ilike '%#{direccion}%' "
  end     

  comuna = params[:comuna]
  if comuna !=nil && !comuna.empty?
    puts "comuna ***************" + comuna + "*********************"
    query = query + "AND \"comuna\" ilike '%#{comuna}%' "
  end      
  
  ciudad = params[:ciudad]
  if ciudad !=nil && !ciudad.empty?
    puts "ciudad ***************" + ciudad + "*********************"
    query = query + "AND \"ciudad\" ilike '%#{ciudad}%' "
  end  

  licencia = params[:licencia]
  if licencia !=nil && !licencia.empty?
    puts "licencia ***************" + licencia + "*********************"
    query = query + "AND \"licencia\" ilike '%#{licencia}%' "
  end   

  email = params[:email]
  if email !=nil && !email.empty?
    puts "email ***************" + email + "*********************"
    query = query + "AND \"email\" ilike '%#{email}%' "
  end   
  
  tipo_id_responsable = params[:tipo_id_responsable]
  if tipo_id_responsable !=nil && !tipo_id_responsable.empty?
    puts "tipo_id_responsable ***************" + tipo_id_responsable + "*********************"
    query = query + "AND \"tipo_id_responsable\" ilike '%#{tipo_id_responsable}%' "
  end     

  numero_id_responsable = params[:numero_id_responsable]
  if numero_id_responsable !=nil && !numero_id_responsable.empty?
    puts "numero_id_responsable ***************" + numero_id_responsable + "*********************"
    query = query + "AND \"numero_id_responsable\" ilike '%#{numero_id_responsable}%' "
  end    
  
  nombres_responsable = params[:nombres_responsable]
  if nombres_responsable !=nil && !nombres_responsable.empty?
    puts "nombres_responsable ***************" + nombres_responsable + "*********************"
    query = query + "AND \"nombres_responsable\" ilike '%#{nombres_responsable}%' "
  end   

  apellidos_responsable = params[:apellidos_responsable]
  if apellidos_responsable !=nil && !apellidos_responsable.empty?
    puts "apellidos_responsable ***************" + apellidos_responsable + "*********************"
    query = query + "AND \"apellidos_responsable\" ilike '%#{apellidos_responsable}%' "
  end   
  
  pais = params[:pais]
  if pais !=nil && !pais.empty?
    puts "pais ***************" + pais + "*********************"
    query = query + "AND \"pais\" ilike '%#{pais}%' "
  end  
 
  agencia = params[:agencia]
  if agencia !=nil && !agencia.empty?
    puts "pais ***************" + pais + "*********************"
    query = query + "AND \"agencia\" ilike '%#{agencia}%' "
  end  
  
  puts query
  @m = Modelo.find_by_sql query 
  @total = @m.count
  @modelos =  paginamiento @m
  @total = @modelos.count
  respond_to do |format|
     format.html # modelo.html.erb
     format.xml  { render :xml => @reports }
   end

  end

  
  def caracteristicas_modelo
    puts "Buscar caracteristicas de modelos"  
    query = "select * from modelos inner join caracteristicas on modelos.\"id\" = caracteristicas.\"modelo_id\" where 1=1 "
    
  #estatura_desde
  #estatura_hasta
  #calzado_desde
  #calzado_hasta
  
  idiomas = params[:idiomas]
  if idiomas !=nil && !idiomas.empty?
   puts "idiomas ***************" + idiomas + "*********************"
   query += "and \"idiomas\" ilike '%#{idiomas}%' "
  end
  
  #pantalon_desde
  #pantalon_hasta
  
  tcamisa = params[:tcamisa]
  if tcamisa !=nil && !tcamisa.empty?
   puts "tcamisa ***************" + tcamisa + "*********************"
   query += "and \"tcamisa\" ilike '%#{tcamisa}%' "
  end
  
  #cintura_desde
  #cintura_hasta
  #cadera_desde
  #cadera_hasta
  
  cojos = params[:cojos]
  if cojos !=nil && !cojos.empty?
   puts "cojos ***************" + cojos + "*********************"
   query += "and \"cojos\" ilike '%#{cojos}%' "
  end
  
  ccabello = params[:ccabello]
  if ccabello !=nil && !ccabello.empty?
   puts "ccabello ***************" + ccabello + "*********************"
   query += "and \"ccabello\" ilike '%#{ccabello}%' "
  end
  
  lcabello = params[:lcabello]
  if lcabello !=nil && !lcabello.empty?
   puts "lcabello ***************" + lcabello + "*********************"
   query += "and \"lcabello\" ilike '%#{lcabello}%' "
  end
  
  etnia = params[:etnia]
  if etnia !=nil && !etnia.empty?
   puts "etnia ***************" + etnia + "*********************"
   query += "and \"etnia\" ilike '%#{etnia}%' "
  end
      
  hot = params[:hot]

  
  if hot !=nil && !hot.empty?
   puts "hot ***************" + hot + "*********************"
   if (hot == "0")
    query += "and \"hot\" = false "
   else
    query += "and \"hot\" = true "
   end


  end 
  
  hobbie = params[:hobbie]
  if hobbie !=nil && !hobbie.empty?
   puts "hobbie ***************" + hobbie + "*********************"
   query += "and \"hobbie\"  ilike '%#{hobbie}%' "
  end 
  
  mcuello = params[:mcuello]
  if mcuello !=nil && !mcuello.empty?
   puts "mcuello ***************" + mcuello + "*********************"
   query += "and \"mcuello\"  ilike '%#{mcuello}%' "
  end 
  
  terno = params[:terno]
  if terno !=nil && !terno.empty?
   puts "terno ***************" + terno + "*********************"
   query += "and \"terno\"  ilike '%#{terno}%' "
  end 
 
  desfile = params[:desfile]
  if desfile !=nil && !desfile.empty?
   puts "desfile ***************" + desfile + "*********************"
   if (desfile == "0")
    query += "and \"desfile\" = false "
   else
    query += "and \"desfile\" = true "
   end
 
  end 

  dientes = params[:dientes]
  if dientes !=nil && !dientes.empty?
   puts "dientes ***************" + dientes + "*********************"
   
    if (dientes == "0")
    query += "and \"dientes\" = false "
   else
    query += "and \"dientes\" = true "
   end
  
  end 
  
  actor = params[:actor]
  if actor !=nil && !actor.empty?
   puts "actor ***************" + actor + "*********************"

   if (actor == "0")
    query += "and \"actor\" = false "
   else
    query += "and \"actor\" = true "
   end
  
  end 
  
  frenillos = params[:frenillos]
  if frenillos !=nil && !frenillos.empty?
   puts "actor ***************" + frenillos + "*********************"
  
   if (frenillos == "0")
    query += "and \"frenillos\" = false "
   else
    query += "and \"frenillos\" = true "
   end
  end 
  
  experiencia = params[:experiencia]
  if experiencia !=nil && !experiencia.empty?
   puts "experiencia ***************" + experiencia + "*********************"
 
      if (experiencia == "0")
    query += "and \"experiencia\" = false "
   else
    query += "and \"experiencia\" = true "
   end
  end 
  
  

  @modelos = Modelo.find_by_sql query 

    
  respond_to do |format|
     format.html # modelo.html.erb
     format.xml  { render :xml => @reports }
   end
  end
  
  
  



  end

