class LcotizasController < ApplicationController
  # GET /lcotizas
  # GET /lcotizas.xml
  load_and_authorize_resource
  def index
    @lcotizas = Lcotiza.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @lcotizas }
    end
  end

  # GET /lcotizas/1
  # GET /lcotizas/1.xml
  def show
    @lcotiza = Lcotiza.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @lcotiza }
    end
  end

  # GET /lcotizas/new
  # GET /lcotizas/new.xml
  def new
    @lcotiza = Lcotiza.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @lcotiza }
    end
  end

  # GET /lcotizas/1/edit
  def edit
    @lcotiza = Lcotiza.find(params[:id])
  end

  # POST /lcotizas
  # POST /lcotizas.xml
  def create
    @lcotiza = Lcotiza.new(params[:lcotiza])

    respond_to do |format|
      if @lcotiza.save
        format.html { redirect_to(@lcotiza, :notice => 'Lcotiza was successfully created.') }
        format.xml  { render :xml => @lcotiza, :status => :created, :location => @lcotiza }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @lcotiza.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /lcotizas/1
  # PUT /lcotizas/1.xml
  def update
    @lcotiza = Lcotiza.find(params[:id])

    respond_to do |format|
      if @lcotiza.update_attributes(params[:lcotiza])
        format.html { redirect_to(@lcotiza, :notice => 'Lcotiza was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @lcotiza.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /lcotizas/1
  # DELETE /lcotizas/1.xml
  def destroy
    @lcotiza = Lcotiza.find(params[:id])
    @lcotiza.destroy

    respond_to do |format|
      format.html { redirect_to(lcotizas_url) }
      format.xml  { head :ok }
    end
  end
end
