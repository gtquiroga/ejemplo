class PublicacionsController < ApplicationController
  before_action :set_publicacion, only: [:show, :edit, :update, :destroy]

  # GET /publicacions
  # GET /publicacions.json
  def index
    if params[:search]
      @publicacions = Publicacion.where('titulo LIKE ? OR ciudad LIKE ?',"%#{params[:search]}%", "%#{params[:search]}%")
    else
      @publicacions = Publicacion.all
    end
  end

  # GET /publicacions/1
  # GET /publicacions/1.json
  def show
  end

  # GET /publicacions/new
  def new
    @publicacion = Publicacion.new
  end

  # GET /publicacions/1/edit
  def edit
  end

  # POST /publicacions
  # POST /publicacions.json
  def create
    @publicacion = Publicacion.new(publicacion_params)

    respond_to do |format|
      if @publicacion.save
        format.html { redirect_to @publicacion, notice: 'Publicacion was successfully created.' }
        format.json { render :show, status: :created, location: @publicacion }
      else
        format.html { render :new }
        format.json { render json: @publicacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /publicacions/1
  # PATCH/PUT /publicacions/1.json
  def update
    respond_to do |format|
      if @publicacion.update(publicacion_params)
        format.html { redirect_to @publicacion, notice: 'Publicacion was successfully updated.' }
        format.json { render :show, status: :ok, location: @publicacion }
      else
        format.html { render :edit }
        format.json { render json: @publicacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /publicacions/1
  # DELETE /publicacions/1.json
  def destroy
    @publicacion.destroy
    respond_to do |format|
      format.html { redirect_to publicacions_url, notice: 'Publicacion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_publicacion
      @publicacion = Publicacion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def publicacion_params
      params.require(:publicacion).permit(:titulo, :ciudad, :tipo, :texto, :autor, :fecha, :puntaje)
    end
end
