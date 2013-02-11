class AgenciaextranjerasController < ApplicationController
  # GET /agenciaextranjeras
  # GET /agenciaextranjeras.xml
   load_and_authorize_resource
  def index
    @agenciaextranjeras = Agenciaextranjera.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @agenciaextranjeras }
    end
  end

  # GET /agenciaextranjeras/1
  # GET /agenciaextranjeras/1.xml
  def show
    @agenciaextranjera = Agenciaextranjera.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @agenciaextranjera }
    end
  end

  # GET /agenciaextranjeras/new
  # GET /agenciaextranjeras/new.xml
  def new
    @agenciaextranjera = Agenciaextranjera.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @agenciaextranjera }
    end
  end

  # GET /agenciaextranjeras/1/edit
  def edit
    @agenciaextranjera = Agenciaextranjera.find(params[:id])
  end

  # POST /agenciaextranjeras
  # POST /agenciaextranjeras.xml
  def create
    @agenciaextranjera = Agenciaextranjera.new(params[:agenciaextranjera])

    respond_to do |format|
      if @agenciaextranjera.save
        format.html { redirect_to(@agenciaextranjera, :notice => 'Agencia Extranjera fue creada satisfactoriamente.') }
        format.xml  { render :xml => @agenciaextranjera, :status => :created, :location => @agenciaextranjera }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @agenciaextranjera.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /agenciaextranjeras/1
  # PUT /agenciaextranjeras/1.xml
  def update
    @agenciaextranjera = Agenciaextranjera.find(params[:id])

    respond_to do |format|
      if @agenciaextranjera.update_attributes(params[:agenciaextranjera])
        format.html { redirect_to(@agenciaextranjera, :notice => 'Agencia Extranjera fue actualizada satisfactoriamente.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @agenciaextranjera.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /agenciaextranjeras/1
  # DELETE /agenciaextranjeras/1.xml
  def destroy
    @agenciaextranjera = Agenciaextranjera.find(params[:id])
    @agenciaextranjera.destroy

    respond_to do |format|
      format.html { redirect_to(agenciaextranjeras_url) }
      format.xml  { head :ok }
    end
  end
end
