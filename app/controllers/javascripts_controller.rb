# -*- coding: utf-8 -*-
class JavascriptsController < ApplicationController
  def comunas
    @comunas = Mantenedor.comunas
    @regiones = Mantenedor.regiones
    
    respond_to do |format|
      format.js {render :layout => false}
    end
  end
  
  def cliente
    @cliente = Cliente.find(params[:id])
   
    respond_to do |format|
       format.js {render :layout => false}
     end
    
  end

  def modelo
  
    m = Modelo.where(:numero_id => params[:numero_id])
    @modelo = m[0]
    puts "elnombre => " + @modelo.to_s
    respond_to do |format|
       format.js {render :layout => false}
     end
    
  end
  

end
