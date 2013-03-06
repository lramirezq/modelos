class HistorialsController < ApplicationController
  # GET /historials
  # GET /historials.xml
  def index
    @historials = Historial.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @historials }
    end
  end

  # GET /historials/1
  # GET /historials/1.xml
  def show
    @historial = Historial.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @historial }
    end
  end

  # GET /historials/new
  # GET /historials/new.xml
  def new
    @historial = Historial.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @historial }
    end
  end

  # GET /historials/1/edit
  def edit
    @historial = Historial.find(params[:id])
  end

  # POST /historials
  # POST /historials.xml
  def create
    @historial = Historial.new(params[:historial])

    respond_to do |format|
      if @historial.save
        format.html { redirect_to(@historial, :notice => 'Historial was successfully created.') }
        format.xml  { render :xml => @historial, :status => :created, :location => @historial }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @historial.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /historials/1
  # PUT /historials/1.xml
  def update
    @historial = Historial.find(params[:id])

    respond_to do |format|
      if @historial.update_attributes(params[:historial])
        format.html { redirect_to(@historial, :notice => 'Historial was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @historial.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /historials/1
  # DELETE /historials/1.xml
  def destroy
    @historial = Historial.find(params[:id])
    @historial.destroy

    respond_to do |format|
      format.html { redirect_to(historials_url) }
      format.xml  { head :ok }
    end
  end
end
