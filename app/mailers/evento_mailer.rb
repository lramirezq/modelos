class EventoMailer < ActionMailer::Base
  default :from => "newmodelssl@gmail.com"  
  
  
 
  # Metodo de envio para informes 
  def enviar_informes(competencia, root_url)
    
    @root_url = root_url.to_s.gsub(/\/+$/, '')
    @competencia = competencia
    @destinos = Mantenedor.mail_evento.collect {|d| d.valor}.join(', ')
    puts "Esto llego aca !" + competencia.tipocompetencia.to_s
    #Recibo destinos desde el mantenedor    
    mail(:to =>  @destinos, :subject => "New Models | Envio Detalle de Competencias -  #{competencia.id.to_s}")  
  end
  
  
  # Metodo de envio para informes 
  def enviar_cotizacion(cotizacione, root_url, destinatario)
    @root_url = root_url.to_s.gsub(/\/+$/, '')
    @cotizacione = cotizacione
    @destinos = destinatario
    
      
    mail(:to =>  @destinos, :subject => "New Models | Cotizacion  -  #{cotizacione.id.to_s} ")  
  end
  
  
  def borrado_modelo(modelo, current_user)
    @usuario = current_user
    @modelo = modelo
    @destinos = Mantenedor.mail_evento.collect {|d| d.valor}.join(', ')
    mail(:to =>  @destinos, :subject => "New Models | Se Ha eliminado el modelo -  #{modelo.nombres.to_s} #{modelo.apellidos.to_s} ")  
  end

  def envio_informe_adjunto(competencia, root_url)
    puts "Llegue al metodo"
   
    @destinos = Mantenedor.mail_evento.collect {|d| d.valor}.join(', ')
    require 'open-uri'
  
    url = root_url.to_s.gsub(/\/+$/, '') + "/reportes/informe_excel?id=2"
    #url = "http://es.kioskea.net/faq/1750-crear-una-lista-desplegable-simple-en-excel"
    #url_data = open(url).read()
    
    #puts "la URL => " + url.to_s
      #url = "http://es.kioskea.net/faq/1750-crear-una-lista-desplegable-simple-en-excel"
      
      require 'net/http'
      uri = URI(url)
      contents = Net::HTTP.get(uri)
      
    
    
    
    
    
    attachments["informe.xls"] = contents 
    #File.read(root_url.to_s.gsub(/\/+$/, '')+"/competencias/2/excel")  

    
    
    mail(:to =>  @destinos, :subject => "New Models | Envio Informe -  #{competencia.id.to_s}")  
  end
  
end
