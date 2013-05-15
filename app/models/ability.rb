class Ability
  include CanCan::Ability
  
  def initialize(user)
    user ||= User.new # impide nil exception
    
    # aquí se definen los permisos por rol, formato es:
    # can :nombre_accion, ClaseModelo
    # acciones especiales
    #   :read     => leer?
    #   :manage   => todo
    # clases especiales
    #   :all      => cualquier clase
    # casos especiales, ver http://railscasts.com/episodes/192-authorization-with-cancan
    
    if user.role? :administrador
      can :manage, User
      can :manage, Mantenedor
      can :manage, Modelo
      can :manage, Cliente
      can :manage, Agenciaextranjera
      can :manage, Agenciamadre
      can :manage, Cotizacione
      can :manage, Competencia
    end
    
    if user.role? :booker
      can :read, Modelo
      can :edit, Modelo
      can :update, Modelo
      can :create, Modelo
      
      can :read, Cliente
      can :edit, Cliente
      can :update, Cliente
      can :create, Cliente
      
      can :read, Cotizacione
      can :edit, Cotizacione
      can :update, Cotizacione
      can :create, Cotizacione      
      
      can :read, Agenciaextranjera
      can :edit, Agenciaextranjera
      can :update, Agenciaextranjera
      can :create, Agenciaextranjera    
      
      can :read, Agenciamadre
      can :edit, Agenciamadre
      can :update, Agenciamadre
      can :create, Agenciamadre
      
      can :read, Competencia
      can :edit, Competencia
      can :envio_mail, Competencia
      can :update, Competencia
      can :create, Competencia
    end
    
    if user.role? :contabilidad
      can :read, Modelo
      can :edit, Modelo
      can :update, Modelo
      can :create, Modelo
      
      can :manage, Cliente
   
      can :read, Cotizacione
      can :edit, Cotizacione
      can :update, Cotizacione
      can :create, Cotizacione      
      
      can :read, Agenciaextranjera
      can :edit, Agenciaextranjera
      can :update, Agenciaextranjera
      can :create, Agenciaextranjera    
      
      can :read, Agenciamadre
      can :edit, Agenciamadre
      can :update, Agenciamadre
      can :create, Agenciamadre
      
      can :manager, Competencia
 
    end
    
    if user.blank?
      can :informe_comercial, Competencia 
    end
    
  end
end