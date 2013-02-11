class EventoMailer < ActionMailer::Base
  default :from => "ramirezqueupul@gmail.com"
  
  def registration_confirmation(root_url)
    
    @root_url = root_url.to_s.gsub(/\/+$/, '')
    #attachments["metrosantiago.jpg"] = File.read("#{Rails.root}/public/images/metrosantiago.jpg")

    #Recibo destinos desde el mantenedor    
    @destinos = Mantenedor.mail_evento.collect {|d| d.valor}.join(', ')
    mail(:to => @destinos, :subject => "Cotiza")
  end
  
  
end
