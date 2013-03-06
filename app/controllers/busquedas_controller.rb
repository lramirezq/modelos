class BusquedasController < ApplicationController
  def modelo
    puts "Buscando Modelo...."
    sql_specific = "" 
    sql_specific += "and \"tipo_id\" ilike ?  "
    sql_specific += "and \"tipo_id\" ilike ?  "
    puts sql_specific
    #Recibendo Parametros
    tid = params[:tipo_id]
    if tid !=nil && !tid.empty?
      puts "Tipo ID ***************" + tid + "*********************"
      
    end

    nid = params[:numero_id]
    if nid !=nil && !nid.empty?
      puts "Numero ID ***************" + nid + "*********************"
    end
   
    nombres = params[:nombres]
    if nombres !=nil && !nombres.empty?
      puts "Nombres ***************" + nombres + "*********************"
    end

    apellidos = params[:apellidos]
    if apellidos !=nil && !apellidos.empty?
      puts "Nombres ***************" + apellidos + "*********************"
    end

    sexo = params[:sexo]
    if sexo !=nil && !sexo.empty?
      puts "Sexo ***************" + sexo + "*********************"
    end
 
   fnacimiento = params[:fecha_nacimiento]
   
       puts "fnacimiento ***************" + fnacimiento.to_s + "*********************"
   
    nacionalidad = params[:nacionalidad]
    if nacionalidad !=nil && !nacionalidad.empty?
      puts "nacionalidad ***************" + nacionalidad + "*********************"
    end

    tfijo = params[:telefono_fijo]
     if tfijo !=nil && !tfijo.empty?
       puts "tfijo ***************" + tfijo + "*********************"
     end

    movil = params[:movil]
    if movil !=nil && !movil.empty?
      puts "movil ***************" + movil + "*********************"
    end
      
    direccion = params[:direccion]
    if direccion !=nil && !direccion.empty?
     puts "direccion ***************" + direccion + "*********************"
    end
    
    comuna = params[:comuna]
    if comuna !=nil && !comuna.empty?
      puts "comuna ***************" + comuna + "*********************"
    end
        
    ciudad = params[:ciudad]
    if ciudad !=nil && !ciudad.empty?
     puts "ciudad ***************" + ciudad + "*********************"
    end          
 
    pais = params[:pais]
    if pais !=nil && !pais.empty?
      puts "pais ***************" + pais + "*********************"
    end   
    
    licencia = params[:licencia]
    if licencia !=nil && !licencia.empty?
     puts "licencia ***************" + licencia + "*********************"
    end
  
    agencia = params[:agencia]
    if agencia !=nil && !agencia.empty?
      puts "agencia ***************" + agencia + "*********************"
    end          
    
    email = params[:email]
    if email !=nil && !email.empty?
     puts "email ***************" + email + "*********************"
    end  
 
    r_tipo_id = params[:tipo_id_responsable]
    if r_tipo_id !=nil && !r_tipo_id.empty?
      puts "r_tipo_id ***************" + r_tipo_id + "*********************"
    end   
             
    r_numero_id = params[:numero_id_responsable]
    if r_numero_id !=nil && !r_numero_id.empty?
     puts "r_numero_id ***************" + r_numero_id + "*********************"
    end   
   
    r_nombres = params[:nombres_responsable]
    if r_nombres !=nil && !r_nombres.empty?
      puts "r_nombres ***************" + r_nombres + "*********************"
    end 
   
    r_apellidos = params[:apellidos_responsable]
    if r_apellidos !=nil && !r_apellidos.empty?
       puts "r_apellidos ***************" + r_apellidos + "*********************"
    end 
  
    estatura = params[:estatura]
    if estatura !=nil && !estatura.empty?
      puts "estatura ***************" + estatura + "*********************"
    end  

    calzado = params[:calzado]
    if calzado !=nil && !calzado.empty?
      puts "calzado ***************" + calzado + "*********************"
    end    
   
    idiomas = params[:idiomas]
    if idiomas !=nil && !idiomas.empty?
      puts "idiomas ***************" + idiomas + "*********************"
    end

    tpantalon = params[:tpantalon]
    if tpantalon !=nil && !tpantalon.empty?
      puts "tpantalon ***************" + tpantalon + "*********************"
    end    
       
    tcamisa = params[:tcamisa]
    if tcamisa !=nil && !tcamisa.empty?
      puts "tcamisa ***************" + tcamisa + "*********************"
    end   
   
    busto = params[:busto]
    if busto !=nil && !busto.empty?
      puts "busto ***************" + busto + "*********************"
    end

    cintura = params[:cintura]
    if cintura !=nil && !cintura.empty?
      puts "cintura ***************" + cintura + "*********************"
    end       
   
    cadera = params[:cadera]
    if cadera !=nil && !cadera.empty?
      puts "cadera ***************" + cadera + "*********************"
    end
    
    ccabello = params[:ccabello]
    if ccabello !=nil && !ccabello.empty?
      puts "ccabello ***************" + ccabello + "*********************"
    end    
   
    lcabello = params[:lcabello]
    if lcabello !=nil && !lcabello.empty?
      puts "lcabello ***************" + lcabello + "*********************"
    end
       
    etnia = params[:etnia]
    if etnia !=nil && !etnia.empty?
      puts "etnia ***************" + etnia + "*********************"
    end   
    
    cojos = params[:cojos]
    if cojos !=nil && !cojos.empty?
      puts "cojos ***************" + cojos + "*********************"
    end
    
    hot = params[:hot]
    if hot !=nil && !hot.empty?
      puts "hot ***************" + hot + "*********************"
    else
      hot = false
    end
    

    hobbie = params[:hobbie]
    if hobbie !=nil && !hobbie.empty?
      puts "hobbie ***************" + hobbie + "*********************"
    end       

    mcuello = params[:mcuello]
    if mcuello !=nil && !mcuello.empty?
      puts "mcuello ***************" + mcuello + "*********************"
    end   
   
    terno = params[:terno]
    if terno !=nil && !terno.empty?
      puts "terno ***************" + terno + "*********************"
    end


    desfile = params[:desfile]
    if desfile !=nil && !desfile.empty?
      puts "desfile ***************" + desfile + "*********************"
    else
      desfile = false
    end         
   

    dientes = params[:dientes]
    if dientes !=nil && !dientes.empty?
      puts "dientes ***************" + dientes + "*********************"
    else
      dientes = false
    end
    
    actor = params[:actor]
    if actor !=nil && !actor.empty?
      puts "actor ***************" + actor + "*********************"
    else
      actor = false
    end
            

    frenillos = params[:frenillos]
    if frenillos !=nil && !frenillos.empty?
      puts "frenillos ***************" + frenillos + "*********************"
    else
      frenillos = false
    end
   
    experiencia = params[:experiencia]
    if experiencia !=nil && !experiencia.empty?
      puts "experiencia ***************" + experiencia + "*********************"
    else
      experiencia = false
    end 
        
   
   #Comenzamos a Buscar !!
   query = "select * from modelos inner join caracteristicas
   on modelos.\"id\" = caracteristicas.\"modelo_id\"
   where \"tipo_id\" ilike ? 
   and \"numero_id\" ilike ? 
   and \"nombres\" ilike ?
   and \"apellidos\" ilike ?
   and \"sexo\" ilike ?
   and \"nacionalidad\" ilike ?
   and \"tipo_id_responsable\" ilike ?
   and \"numero_id_responsable\" ilike ?
   and \"nombres_responsable\" ilike ?
   and \"apellidos_responsable\" ilike ?
   and \"telefono_fijo\" ilike ?
   and \"movil\" ilike ?
   and \"direccion\" ilike ?
   and \"comuna\" ilike ?
   and \"ciudad\" ilike ?
   and \"pais\" ilike ?
   and \"licencia\" ilike ?
   and \"email\" ilike ?
   and \"estatura\" ilike ?
   and \"calzado\" ilike ?
   and \"idiomas\" ilike ?
   and \"tpantalon\" ilike ?
   and \"tcamisa\" ilike ?
   and \"busto\" ilike ?
   and \"cintura\" ilike ?
   and \"cadera\" ilike ?
   and \"cojos\" ilike ?
   and \"ccabello\" ilike ?
   and \"lcabello\" ilike ?
   and \"etnia\" ilike ?
   and \"hobbie\" ilike ?
   and \"mcuello\" ilike ?
   and \"terno\" ilike ?
   --Booleans
   and \"desfile\" = ?
   and \"dientes\" = ?
   and \"actor\" = ?
   and \"frenillos\" = ?
   and \"experiencia\" = ?
   and \"hot\" = ?"
   
   puts "Esta query se Ejecutara [" + query +"]" 

     
   
   @modelos = Modelo.find_by_sql [query,
     "%#{tid}%", 
     "%#{nid}%",
     "%#{nombres}%",
     "%#{apellidos}%",
     "%#{sexo}%",
     "%#{nacionalidad}%",
     "%#{r_tipo_id}%",
     "%#{r_numero_id}%",
     "%#{r_nombres}%",
     "%#{r_apellidos}%",
     "%#{tfijo}%",
     "%#{movil}%",
     "%#{direccion}%",
     "%#{comuna}%",
     "%#{ciudad}%",
     "%#{pais}%",
     "%#{licencia}%",
     "%#{email}%",
     "%#{estatura}%",
     "%#{calzado}%",
     "%#{idiomas}%",
     "%#{tpantalon}%",
     "%#{tcamisa}%",
     "%#{busto}%",
     "%#{cintura}%",
     "%#{cadera}%",
     "%#{cojos}%",
     "%#{ccabello}%",
     "%#{lcabello}%",
     "%#{etnia}%",
     "%#{hobbie}%",
     "%#{mcuello}%",
     "%#{terno}%",
     "#{desfile}",
     "#{dientes}",
     "#{actor}",
     "#{frenillos}",
     "#{experiencia}",
     "#{hot}"
     ]



   
   
   #Enviamos resultados a la vista !!
   respond_to do |format|
     format.html # modelo.html.erb
     format.xml  { render :xml => @reports }
   end




  end
end
