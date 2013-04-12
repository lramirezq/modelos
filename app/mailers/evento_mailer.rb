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
  
  def borrado_modelo(modelo, current_user)
    @usuario = current_user
    @modelo = modelo
    @destinos = Mantenedor.mail_evento.collect {|d| d.valor}.join(', ')
    mail(:to =>  @destinos, :subject => "New Models | Se Ha eliminado el modelo -  #{modelo.nombres.to_s} #{modelo.apellidos.to_s} ")  
  end
end
