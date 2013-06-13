class AgenciamadresController < ApplicationController
  # GET /agenciamadres
  # GET /agenciamadres.xml
  load_and_authorize_resource
  def index
    @agenciamadres = Agenciamadre.where(:estado => nil)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @agenciamadres }
    end
  end

  # GET /agenciamadres/1
  # GET /agenciamadres/1.xml
  def show
    @agenciamadre = Agenciamadre.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @agenciamadre }
    end
  end

  # GET /agenciamadres/new
  # GET /agenciamadres/new.xml
  def new
    @agenciamadre = Agenciamadre.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @agenciamadre }
    end
  end

  # GET /agenciamadres/1/edit
  def edit
    @agenciamadre = Agenciamadre.find(params[:id])
  end

  # POST /agenciamadres
  # POST /agenciamadres.xml
  def create
    @agenciamadre = Agenciamadre.new(params[:agenciamadre])

    respond_to do |format|
      if @agenciamadre.save
        format.html { redirect_to(@agenciamadre, :notice => 'Agencia Madre fue creada satisfactoriamente.') }
        format.xml  { render :xml => @agenciamadre, :status => :created, :location => @agenciamadre }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @agenciamadre.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /agenciamadres/1
  # PUT /agenciamadres/1.xml
  def update
    @agenciamadre = Agenciamadre.find(params[:id])

    respond_to do |format|
      if @agenciamadre.update_attributes(params[:agenciamadre])
        format.html { redirect_to(@agenciamadre, :notice => 'Agencia Madre fue actualizada satisfactoriamente.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @agenciamadre.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /agenciamadres/1
  # DELETE /agenciamadres/1.xml
  def destroy
    @agenciamadre = Agenciamadre.find(params[:id])
    @agenciamadre.estado = "1"
    @agenciamadre.save

    respond_to do |format|
      format.html { redirect_to(agenciamadres_url) }
      format.xml  { head :ok }
    end
  end
end
