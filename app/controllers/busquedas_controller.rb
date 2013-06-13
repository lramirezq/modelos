class BusquedasController < ApplicationController
  
  def datos_modelo
  puts "Buscar por datos de modelos....."  
  query = "select * from modelos WHERE 1=1 and estado = null "  
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

  respond_to do |format|
     format.html # modelo.html.erb
     format.xml  { render :xml => @reports }
   end

  end

  
  def caracteristicas_modelo
    puts "Buscar caracteristicas de modelos"  
    query = "select * from modelos inner join caracteristicas on modelos.\"id\" = caracteristicas.\"modelo_id\" where 1=1  "

  #sexo
  sexo = params[:sexo]
  if sexo !=nil && !sexo.empty?
    puts "sexo ***************" + sexo + "*********************"
    query = query + " AND \"sexo\" ilike '%#{sexo}%'  "
  end

    
  #estatura
  estatura_desde = params[:estatura_desde]
  estatura_hasta = params[:estatura_hasta]
  if estatura_desde !=nil && !estatura_desde.empty?
   puts "estatura ***************" + estatura_desde + "*********************"
   if estatura_hasta!=nil && !estatura_hasta.empty?
     query += "and CASE WHEN (estatura = '') THEN '0.00' ELSE CAST(estatura AS FLOAT) END BETWEEN #{estatura_desde} AND #{estatura_hasta}  "
   else
     query += "and CASE WHEN (estatura = '') THEN '0.00' ELSE CAST(estatura AS FLOAT) END =  #{estatura_desde} " 
   end
  end


  #calzado
  calzado_desde = params[:calzado_desde]
  calzado_hasta = params[:calzado_hasta]
  if calzado_desde !=nil && !calzado_desde.empty?
   puts "calzado ***************" + calzado_desde + "*********************"
   if calzado_hasta!=nil && !calzado_hasta.empty?
     query += "and CASE WHEN (calzado = '') THEN '0.00' ELSE CAST(calzado AS FLOAT) END BETWEEN #{calzado_desde} AND #{calzado_hasta}  "
   else
     query += "and CASE WHEN (calzado = '') THEN '0.00' ELSE CAST(calzado AS FLOAT) END =  #{calzado_desde} " 
   end
  end
  
  #cintura
  cintura_desde = params[:cintura_desde]
  cintura_hasta = params[:cintura_hasta]
  if cintura_desde !=nil && !cintura_desde.empty?
   puts "cintura ***************" + cintura_desde + "*********************"
   if cintura_hasta!=nil && !cintura_hasta.empty?
     query += "and CASE WHEN (cintura = '') THEN '0.00' ELSE CAST(cintura AS FLOAT) END BETWEEN #{cintura_desde} AND #{cintura_hasta}  "
   else
     query += "and CASE WHEN (cintura = '') THEN '0.00' ELSE CAST(cintura AS FLOAT) END =  #{cintura_desde} " 
   end
  end
  

  #cadera
  cadera_desde = params[:cadera_desde]
  cadera_hasta = params[:cadera_hasta]
  if cadera_desde !=nil && !cadera_desde.empty?
   puts "cadera_desde ***************" + cadera_desde + "*********************"
   if cadera_hasta!=nil && !cadera_hasta.empty?
     query += "and CASE WHEN (cadera = '') THEN '0.00' ELSE CAST(cadera AS FLOAT) END BETWEEN #{cadera_desde} AND #{cadera_hasta}  "
   else
     query += "and CASE WHEN (cadera = '') THEN '0.00' ELSE CAST(cadera AS FLOAT) END =  #{cadera_desde} " 
   end
  end


  #pantalon
  pantalon_desde = params[:pantalon_desde]
  pantalon_hasta = params[:pantalon_hasta]
  if pantalon_desde !=nil && !pantalon_desde.empty?
   puts "pantalon_desde ***************" + pantalon_desde + "*********************"
   if pantalon_hasta!=nil && !pantalon_hasta.empty?
     query += "and CASE WHEN (tpantalon = '') THEN '0.00' ELSE CAST(tpantalon AS FLOAT) END BETWEEN #{pantalon_desde} AND #{pantalon_hasta}  "
   else
     query += "and CASE WHEN (tpantalon = '') THEN '0.00' ELSE CAST(tpantalon AS FLOAT) END =  #{pantalon_desde} " 
   end
  end
  
  
  #busto
  busto_desde = params[:busto_desde]
  busto_hasta = params[:busto_hasta]
  if busto_desde !=nil && !busto_desde.empty?
   puts "busto_desde ***************" + busto_desde + "*********************"
   if busto_hasta!=nil && !busto_hasta.empty?
     query += "and CASE WHEN (busto = '') THEN '0.00' ELSE CAST(busto AS FLOAT) END BETWEEN #{busto_desde} AND #{busto_hasta}  "
   else
     query += "and CASE WHEN (busto = '') THEN '0.00' ELSE CAST(busto AS FLOAT) END =  #{busto_desde} " 
   end
  end
  
  
  #edad
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
  

  

  
  tcamisa = params[:tcamisa]
  if tcamisa !=nil && !tcamisa.empty?
   puts "tcamisa ***************" + tcamisa + "*********************"
   query += "and \"tcamisa\" ilike '%#{tcamisa}%' "
  end
  
  
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
  
  cicatriz = params[:cicatriz]
  if cicatriz !=nil && !cicatriz.empty?
   puts "cicatriz ***************" + cicatriz + "*********************"
 
      if (cicatriz == "0")
    query += "and \"cicatriz\" = false "
   else
    query += "and \"cicatriz\" = true "
   end
  end 

  tatuaje = params[:tatuaje]
  if tatuaje !=nil && !tatuaje.empty?
   puts "tatuaje ***************" + tatuaje + "*********************"
 
      if (tatuaje == "0")
    query += "and \"tatuaje\" = false "
   else
    query += "and \"tatuaje\" = true "
   end
  end 
 
 
  piercing = params[:piercing]
  if piercing !=nil && !piercing.empty?
   puts "piercing ***************" + piercing + "*********************"
 
      if (piercing == "0")
    query += "and \"piercing\" = false "
   else
    query += "and \"piercing\" = true "
   end
  end 
  
  
  
   puts query
  @m = Modelo.find_by_sql query 
  @total = @m.count
  @modelos =  paginamiento @m
    
  respond_to do |format|
     format.html # modelo.html.erb
     format.xml  { render :xml => @reports }
   end
  end
  
  
    def envio_cotizacion
    @cotizacione = Cotizacione.find(params[:id])
    correo = params[:correo]
    puts "a este mail envio" + correo.to_s
   
    EventoMailer.envio_cotizacion_excel(@cotizacione, root_url, correo).deliver  
  
  respond_to do |format|
    format.html {  }
    format.xml  { render :xml => @competencia }
  end
end


  



  end

