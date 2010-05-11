class PartidosController < ApplicationController
  # GET /partidos
  # GET /partidos.xml
  def index
    @partidos = Partido.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @partidos }
    end
  end

  # GET /partidos/1
  # GET /partidos/1.xml
  def show
    @partido = Partido.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @partido }
    end
  end

  # GET /partidos/new
  # GET /partidos/new.xml
  def new
    @partido = Partido.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @partido }
    end
  end

  # GET /partidos/1/edit
  def edit
    @partido = Partido.find(params[:id])
  end

  # POST /partidos
  # POST /partidos.xml
  def create
    @partido = Partido.new(params[:partido])

    respond_to do |format|
      if @partido.save
        flash[:notice] = 'Partido was successfully created.'
        format.html { redirect_to(@partido) }
        format.xml  { render :xml => @partido, :status => :created, :location => @partido }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @partido.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /partidos/1
  # PUT /partidos/1.xml
  def update
    @partido = Partido.find(params[:id])

    respond_to do |format|
      if @partido.update_attributes(params[:partido])
        flash[:notice] = 'Partido was successfully updated.'
        format.html { redirect_to(@partido) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @partido.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /partidos/1
  # DELETE /partidos/1.xml
  def destroy
    @partido = Partido.find(params[:id])
    @partido.destroy

    respond_to do |format|
      format.html { redirect_to(partidos_url) }
      format.xml  { head :ok }
    end
  end
end
