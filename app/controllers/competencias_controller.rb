# -*- coding: utf-8 -*-
class CompetenciasController < ApplicationController
  # GET /competencias
  # GET /competencias.xml
  load_and_authorize_resource
  def index
    @competencias = paginamiento Competencia.find(:all, :order => "id DESC")
 

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @competencias }
    end
  end

  # GET /competencias/1
  # GET /competencias/1.xml
  def show
    @competencia = Competencia.find(params[:id])
    #Resuelve el nombre del Cliente 
    c = Cliente.where(:id => @competencia.razonsocial)
    c[0].razonsocial
    @competencia.razonsocial = c[0].razonsocial
  
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @competencia }
    end
  end

  # GET /competencias/new
  # GET /competencias/new.xml
  def new
    @competencia = Competencia.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @competencia }
    end
  end

  # GET /competencias/1/edit
  def edit
    @competencia = Competencia.find(params[:id])
  end

  # POST /competencias
  # POST /competencias.xml
  def create
    @competencia = Competencia.new(params[:competencia])

    respond_to do |format|
      if @competencia.save
        format.html { redirect_to(@competencia, :notice => 'Competencia ha sido creada satisfactoriamente.') }
        format.xml  { render :xml => @competencia, :status => :created, :location => @competencia }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @competencia.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /competencias/1
  # PUT /competencias/1.xml
  def update
    @competencia = Competencia.find(params[:id])

    respond_to do |format|
      if @competencia.update_attributes(params[:competencia])
        format.html { redirect_to(@competencia, :notice => 'Competencia fue actualizada satisfactoriamente.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @competencia.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /competencias/1
  # DELETE /competencias/1.xml
  def destroy
    @competencia = Competencia.find(params[:id])
    @competencia.destroy

    respond_to do |format|
      format.html { redirect_to(competencias_url) }
      format.xml  { head :ok }
    end
  end
  
  # GET /competencias/1/informe_comercial
  def informe_comercial
    @competencia = Competencia.find(params[:id])

    respond_to do |format|
       format.html {render :layout => nil  }
      format.xml  { render :xml => @competencia }
    end
  end
  
  def envio_mail

        
    @competencia = Competencia.find(params[:id])
    puts "Esta es la competencia" + @competencia.tipocompetencia.to_s
    EventoMailer.envio_informe_adjunto(@competencia, root_url).deliver  
    #EventoMailer.enviar_informes(@competencia, root_url).deliver  
  
  respond_to do |format|
    format.html {  }
    format.xml  { render :xml => @competencia }
  end
  end
  
  def excel
   headers['Content-type'] = "application/ms-excel; charset=UTF8"
   headers['Content-Disposition'] = "attachment; filename=competencia_excel.xls"
   headers['Pragma'] = "no-cache"
   headers['Expires'] = "0"
   @competencia = Competencia.find(params[:id])
   
   respond_to do |format|
     format.html { render :layout => nil }
     format.xml  { head :ok }
  end
  
  end
  
    
end
