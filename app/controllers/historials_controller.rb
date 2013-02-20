class HistorialsController < ApplicationController
  respond_to :html, :json, :js

  before_filter :authenticate_user!

  # GET /historials/1/edit
  def edit
    
    @historial = Historial.find(params[:id])
    @cartucho = @historial.cartucho
    @historials =@cartucho.historials
    puts "#{@historial.inspect}".red
    render 'cartuchos/show'
  end

  # POST /historials
  # POST /historials.json
  def create
    @historial = Historial.new(params[:historial])
    @historial.cartucho = Cartucho.find(params[:cartucho_id])
    

    respond_to do |format|
      if @historial.save
        format.html { redirect_to @historial.cartucho, notice: 'Historial was successfully created.' }
      else
        format.html { render action: "new" }
        format.json { render json: @historial.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /historials/1
  # PUT /historials/1.json
  def update
    @historial = Historial.find(params[:id])

    respond_to do |format|
      if @historial.update_attributes(params[:historial])
        format.html { redirect_to @historial.cartucho, notice: 'Historial was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @historial.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @historial = Historial.find(params[:id])
    @cartucho =@historial.cartucho
    @historial.destroy
    respond_with @cartucho
  end
end
