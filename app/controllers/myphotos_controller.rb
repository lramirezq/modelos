class MyphotosController < ApplicationController
  # GET /myphotos
  # GET /myphotos.xml
  def index
    @myphotos = Myphoto.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @myphotos }
    end
  end

  # GET /myphotos/1
  # GET /myphotos/1.xml
  def show
    @myphoto = Myphoto.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @myphoto }
    end
  end

  # GET /myphotos/new
  # GET /myphotos/new.xml
  def new
    @myphoto = Myphoto.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @myphoto }
    end
  end

  # GET /myphotos/1/edit
  def edit
    @myphoto = Myphoto.find(params[:id])
  end

  # POST /myphotos
  # POST /myphotos.xml
  def create
    @myphoto = Myphoto.new(params[:myphoto])

    respond_to do |format|
      if @myphoto.save
        format.html { redirect_to(@myphoto, :notice => 'Myphoto was successfully created.') }
        format.xml  { render :xml => @myphoto, :status => :created, :location => @myphoto }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @myphoto.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /myphotos/1
  # PUT /myphotos/1.xml
  def update
    @myphoto = Myphoto.find(params[:id])

    respond_to do |format|
      if @myphoto.update_attributes(params[:myphoto])
        format.html { redirect_to(@myphoto, :notice => 'Myphoto was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @myphoto.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /myphotos/1
  # DELETE /myphotos/1.xml
  def destroy
    @myphoto = Myphoto.find(params[:id])
    @myphoto.destroy

    respond_to do |format|
      format.html { redirect_to(myphotos_url) }
      format.xml  { head :ok }
    end
  end
end
