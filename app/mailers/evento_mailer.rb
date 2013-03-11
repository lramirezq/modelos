class EventoMailer < ActionMailer::Base
  default :from => "newmodelssl@gmail.com"  
  # Metodo de envio para informes 
  
  
 
  
  def enviar_informes(competencia)  
    @destinos = Mantenedor.mail_evento.collect {|d| d.valor}.join(', ')
    #Recibo destinos desde el mantenedor    
    mail(:to =>  @destinos, :subject => "New Models | Envio Detalle de Competencias")  
  end
end
