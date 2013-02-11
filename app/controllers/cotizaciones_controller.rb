class CotizacionesController < ApplicationController
  # GET /cotizaciones
  # GET /cotizaciones.xml
   load_and_authorize_resource
  def index
    @cotizaciones = Cotizacione.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @cotizaciones }
    end
  end

  # GET /cotizaciones/1
  # GET /cotizaciones/1.xml
  def show
    @cotizacione = Cotizacione.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @cotizacione }
    end
  end
  
  # GET /cotizaciones/1
  # GET /cotizaciones/1.xml
  def show_pdf
    @cotizacione = Cotizacione.find(params[:id])
        
    respond_to do |format|
      format.html  { render :layout => nil }
      format.xml  { render :xml => @cotizacione }
    end

 
    
  end 
  

  # GET /cotizaciones/new
  # GET /cotizaciones/new.xml
  def new
    @cotizacione = Cotizacione.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @cotizacione }
    end
  end

  # GET /cotizaciones/1/edit
  def edit
    @cotizacione = Cotizacione.find(params[:id])
  end

  # POST /cotizaciones
  # POST /cotizaciones.xml
  def create
    @cotizacione = Cotizacione.new(params[:cotizacione])

    respond_to do |format|
      if @cotizacione.save
        format.html { redirect_to(@cotizacione, :notice => 'Cotizacione was successfully created.') }
        format.xml  { render :xml => @cotizacione, :status => :created, :location => @cotizacione }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @cotizacione.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /cotizaciones/1
  # PUT /cotizaciones/1.xml
  def update
    @cotizacione = Cotizacione.find(params[:id])

    respond_to do |format|
      if @cotizacione.update_attributes(params[:cotizacione])
        format.html { redirect_to(@cotizacione, :notice => 'Cotizacione was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @cotizacione.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /cotizaciones/1
  # DELETE /cotizaciones/1.xml
  def destroy
    @cotizacione = Cotizacione.find(params[:id])
    @cotizacione.destroy

    respond_to do |format|
      format.html { redirect_to(cotizaciones_url) }
      format.xml  { head :ok }
    end
  end
end
