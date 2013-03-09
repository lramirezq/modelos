class EventoMailer < ActionMailer::Base
  default :from => "newmodelssl@gmail.com"  
  # Metodo de envio para informes 
  
  def enviar_informes(cliente)  
    mail(:to => cliente.email, :subject => "Enviando Mail")  
  end
end
