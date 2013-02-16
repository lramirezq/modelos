class Mantenedor < ActiveRecord::Base
 validates_presence_of :tipo, :valor
  def self.comunas
    Mantenedor.where(:tipo => :comuna).order(:id)
  end
  
  def self.regiones
    Mantenedor.where(:tipo => :region).order(:id)
  end
  
  def self.region(id)
    Mantenedor.where(:tipo => :region, :misc => id).first().valor
  end
  
  def self.lugarocurrencias
    Mantenedor.where(:tipo => :lugaroccurrencia).order(:id)
  end
  
  def self.tipovictimas
    Mantenedor.where(:tipo => :tipovictima).order(:id)
  end

  def self.cargovictimas
    Mantenedor.where(:tipo => :cargovictima).order(:id)
  end  
  
  def self.tipoidentificacions
    Mantenedor.where(:tipo => :tipoidentificacion).order(:id)
  end
  
  def self.tiposexos
    Mantenedor.where(:tipo => :tiposexo).order(:id)
  end
  
  def self.delitos
    Mantenedor.where(:tipo => :delito).order(:valor)
  end
  
  def self.lugares
    Mantenedor.where(:tipo => :lugar).order(:id)
  end
  
  def self.especies
    Mantenedor.where(:tipo => :especie).order(:id)
  end
  
  def self.detenciones
    Mantenedor.where(:tipo => :detencion).order(:id)
  end
  
  
  
 
  def self.mail_evento
    Mantenedor.where(:tipo => :mail_evento).order(:id)
  end
  
  def self.mail_causa
    Mantenedor.where(:tipo => :mail_causa).order(:id)
  end
  
  
  def self.mail_validacion
    Mantenedor.where(:tipo => :mail_validacion).order(:id)
  end
  
  
  def self.medio_contactos
    Mantenedor.where(:tipo => :medio_contacto).order(:id)
  end
  
  
  def self.servicio_prestados
    Mantenedor.where(:tipo => :servicio_prestado).order(:id)
  end
  
  def self.forma_inicios
    Mantenedor.where(:tipo => :forma_inicio).order(:id)
  end
  
  def self.comparece_gtc
    Mantenedor.where(:tipo => :comparece_gtc).order(:id)
  end
  
  def self.estado_causas
    Mantenedor.where(:tipo => :estado_causa).order(:id)
  end
  
  
  def self.termino_irregular
    Mantenedor.where(:tipo => :termino_irregular).order(:valor)
  end
  
  def self.termino_judicial
    Mantenedor.where(:tipo => :termino_judicial).order(:valor)
  end
  
  def self.suspension_condicional
    Mantenedor.where(:tipo => :suspension_condicional).order(:id)
  end
  
  def self.beneficios
    Mantenedor.where(:tipo => :beneficio).order(:valor)
  end
  
  def self.condenas
    Mantenedor.where(:tipo => :condena).order(:valor)
  end
  
  def self.sectores
    Mantenedor.where(:tipo => :sector).order(:id)
  end
  
  def self.fiscalias
    Mantenedor.where(:tipo => :fiscalia).order(:id)
  end
  
  def self.juzgados
    Mantenedor.where(:tipo => :juzgado).order(:id)
  end
  
  
  def self.tops
    Mantenedor.where(:tipo => :tribunalOralPenal).order(:id)
  end
  
  def comparencias
    Mantenedor.where(:tipo => :comparencias).order(:id)
  end
  
  def self.ambientes
     Mantenedor.where(:tipo => :ambiente).order(:id)
   end
   
  def self.paises
      Mantenedor.where(:tipo => :paises).order(:id)
  end
  
  def self.cojos
       Mantenedor.where(:tipo => :cojos).order(:id)
  end
  
  
  def self.ccabello
      Mantenedor.where(:tipo => :ccabello).order(:id)
  end
  
  def self.lcabello
      Mantenedor.where(:tipo => :lcabello).order(:id)
  end
  
  def self.etnia
      Mantenedor.where(:tipo => :etnia).order(:id)
  end
  
  def self.tcamisa
      Mantenedor.where(:tipo => :tcamisa).order(:id)
  end
  
  def self.personajes
       Mantenedor.where(:tipo => :personajes).order(:id)
   end

   def self.roles
        Mantenedor.where(:tipo => :roles).order(:id)
    end
    
  def self.medios
       Mantenedor.where(:tipo => :medios).order(:id)
  end
  
  def self.tcompetencias
        Mantenedor.where(:tipo => :tcompetencias).order(:id)
  end
  
  def self.tfacturas
         Mantenedor.where(:tipo => :tfacturas).order(:id)
  end
  
  def self.ccompetencias
         Mantenedor.where(:tipo => :ccompetencias).order(:id)
  end
      
  def self.search(search)
   if search
      where(:tipo.matches => "%#{search}%")
    else
      all
    end
  end
  
  
end
