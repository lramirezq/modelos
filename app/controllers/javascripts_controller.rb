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
  
  def modelos
  
    nombre   =  params[:nombre].to_s
    apellido =  params[:apellido].to_s
    
    if apellido == '' and nombre != ''
      query = "select * from modelos WHERE 1=1  AND \"nombres\" ilike '%#{nombre}%' AND \"estado\" IS NULL  "
    end
    
    if nombre == '' and apellido != ''
       query = "select * from modelos WHERE 1=1  AND \"apellidos\" ilike '%#{apellido}%' AND \"estado\" IS NULL "
    end
    
    
    @modelos = Modelo.find_by_sql query
    respond_to do |format|
      format.html {render :layout => false}
      format.xml  { render :xml => @modelos }
    end
    
  end
  

end
