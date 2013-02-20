class CartuchosController < ApplicationController
  
 respond_to :html, :json, :js
 before_filter :authenticate_user!

  def index
    @cartuchos = Cartucho.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cartuchos }
    end
  end

  # GET /cartuchos/1
  # GET /cartuchos/1.json
  def show
    @cartucho = Cartucho.find(params[:id])
    @historials =@cartucho.historials
    @historial = Historial.new

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cartucho }
    end
  end

  # GET /cartuchos/new
  # GET /cartuchos/new.json
  def new
    @cartucho = Cartucho.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cartucho }
    end
  end

  # GET /cartuchos/1/edit
  def edit
    @cartucho = Cartucho.find(params[:id])
  end

  # POST /cartuchos
  # POST /cartuchos.json
  def create
    @cartucho = Cartucho.new(params[:cartucho])

    respond_to do |format|
      if @cartucho.save
        format.html { redirect_to @cartucho, notice: 'Cartucho was successfully created.' }
        format.json { render json: @cartucho, status: :created, location: @cartucho }
      else
        format.html { render action: "new" }
        format.json { render json: @cartucho.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cartuchos/1
  # PUT /cartuchos/1.json
  def update
    @cartucho = Cartucho.find(params[:id])

    respond_to do |format|
      if @cartucho.update_attributes(params[:cartucho])
        format.html { redirect_to @cartucho, notice: 'Cartucho was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @cartucho.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cartuchos/1
  # DELETE /cartuchos/1.json
  def destroy
    @cartucho = Cartucho.find(params[:id])
    @cartucho.destroy

    respond_to do |format|
      format.html { redirect_to cartuchos_url }
      format.json { head :no_content }
    end
  end



  def search
    #puts "#{params[:cartucho][:codigo]}".red
    @cartucho = Cartucho.find_by_codigo(params[:cartucho][:codigo])
    if @cartucho      
      redirect_to @cartucho
    else
      redirect_to root_path, notice: 'Cartucho not found.'
    end
    
    
  end
end
