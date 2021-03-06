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
  
    puts  competencia.id
    url = root_url.to_s.gsub(/\/+$/, '') + "/reportes/informe_excel?id="+competencia.id.to_s
    
    require 'net/http'
    uri = URI(url)
    contents = Net::HTTP.get(uri)
    attachments["informe.xls"] = contents 
    mail(:to =>  @destinos, :subject => "New Models | Envio Informe -  #{competencia.id.to_s}")  
  end
  
  def envio_cotizacion_excel(cotizacione, root_url, destinatario)
     @destinos = destinatario
      require 'open-uri'
      url = root_url.to_s.gsub(/\/+$/, '') + "/reportes/cotizacion_excel?id="+cotizacione.id.to_s
      puts url.to_s
      require 'net/http'
      uri = URI(url)
      contents = Net::HTTP.get(uri)
      attachments["cotizacion.xls"] = contents 
      mail(:to => @destinos, :subject => "New Models | Envio Cotizacion -  #{cotizacione.id.to_s}")
    
  end
  
  
  
  
end
