# -*- coding: utf-8 -*-
class ModelosController < ApplicationController
  # GET /modelos
  # GET /modelos.xml
  # cancan
  load_and_authorize_resource
  
  def index
   
     @modelos =  paginamiento Modelo.all(:order => "id DESC")
     cod = params[:search]

        if cod !=nil && !cod.empty?
           @modelos = paginamiento Modelo.where(:nombres.matches => "%#{cod}%")
        end

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @modelos }
    end
  end

  # GET /modelos/1
  # GET /modelos/1.xml
  def show
    @modelo = Modelo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @modelo }
    end
  end

  # GET /modelos/new
  # GET /modelos/new.xml
  def new
    @modelo = Modelo.new
    @modelo.caracteristica = Caracteristica.new
    
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @modelo }
    end
  end

  # GET /modelos/1/edit
  def edit
    @modelo = Modelo.find(params[:id])
  end

  # POST /modelos
  # POST /modelos.xml
  def create
    @modelo = Modelo.new(params[:modelo])

    respond_to do |format|
      if @modelo.save
        format.html { redirect_to(@modelo, :notice => 'Modelo fue creado satisfactoriamente') }
        format.xml  { render :xml => @modelo, :status => :created, :location => @modelo }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @modelo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /modelos/1
  # PUT /modelos/1.xml
  def update
    @modelo = Modelo.find(params[:id])

    respond_to do |format|
      if @modelo.update_attributes(params[:modelo])
        format.html { redirect_to(@modelo, :notice => 'Modelo fue actualizado satisfactoriamente') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @modelo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /modelos/1
  # DELETE /modelos/1.xml
  def destroy
    @modelo = Modelo.find(params[:id])
    @modelo.destroy

    respond_to do |format|
      format.html { redirect_to(modelos_url) }
      format.xml  { head :ok }
    end
  end
end
