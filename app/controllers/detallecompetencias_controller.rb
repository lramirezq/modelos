class DetallecompetenciasController < ApplicationController
  # GET /detallecompetencias
  # GET /detallecompetencias.xml
  def index
    @detallecompetencias = Detallecompetencia.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @detallecompetencias }
    end
  end

  # GET /detallecompetencias/1
  # GET /detallecompetencias/1.xml
  def show
    @detallecompetencia = Detallecompetencia.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @detallecompetencia }
    end
  end

  # GET /detallecompetencias/new
  # GET /detallecompetencias/new.xml
  def new
    @detallecompetencia = Detallecompetencia.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @detallecompetencia }
    end
  end

  # GET /detallecompetencias/1/edit
  def edit
    @detallecompetencia = Detallecompetencia.find(params[:id])
  end

  # POST /detallecompetencias
  # POST /detallecompetencias.xml
  def create
    @detallecompetencia = Detallecompetencia.new(params[:detallecompetencia])

    respond_to do |format|
      if @detallecompetencia.save
        format.html { redirect_to(@detallecompetencia, :notice => 'Detallecompetencia was successfully created.') }
        format.xml  { render :xml => @detallecompetencia, :status => :created, :location => @detallecompetencia }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @detallecompetencia.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /detallecompetencias/1
  # PUT /detallecompetencias/1.xml
  def update
    @detallecompetencia = Detallecompetencia.find(params[:id])

    respond_to do |format|
      if @detallecompetencia.update_attributes(params[:detallecompetencia])
        format.html { redirect_to(@detallecompetencia, :notice => 'Detallecompetencia was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @detallecompetencia.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /detallecompetencias/1
  # DELETE /detallecompetencias/1.xml
  def destroy
    @detallecompetencia = Detallecompetencia.find(params[:id])
    @detallecompetencia.destroy

    respond_to do |format|
      format.html { redirect_to(detallecompetencias_url) }
      format.xml  { head :ok }
    end
  end
end
