class BookersController < ApplicationController
  # GET /bookers
  # GET /bookers.xml
 load_and_authorize_resource
  def index
    @bookers = Booker.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @bookers }
    end
  end

  # GET /bookers/1
  # GET /bookers/1.xml
  def show
    @booker = Booker.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @booker }
    end
  end

  # GET /bookers/new
  # GET /bookers/new.xml
  def new
    @booker = Booker.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @booker }
    end
  end

  # GET /bookers/1/edit
  def edit
    @booker = Booker.find(params[:id])
  end

  # POST /bookers
  # POST /bookers.xml
  def create
    @booker = Booker.new(params[:booker])

    respond_to do |format|
      if @booker.save
        format.html { redirect_to(@booker, :notice => 'Booker was successfully created.') }
        format.xml  { render :xml => @booker, :status => :created, :location => @booker }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @booker.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /bookers/1
  # PUT /bookers/1.xml
  def update
    @booker = Booker.find(params[:id])

    respond_to do |format|
      if @booker.update_attributes(params[:booker])
        format.html { redirect_to(@booker, :notice => 'Booker was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @booker.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /bookers/1
  # DELETE /bookers/1.xml
  def destroy
    @booker = Booker.find(params[:id])
    @booker.destroy

    respond_to do |format|
      format.html { redirect_to(bookers_url) }
      format.xml  { head :ok }
    end
  end
end
