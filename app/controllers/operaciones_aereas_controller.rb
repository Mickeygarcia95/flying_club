class OperacionesAereasController < ApplicationController
  before_action :authenticate_usuario!
  before_action :set_operaciones_aerea, only: %i[ show edit update destroy ]
  layout 'operaciones'

  # GET /operaciones_aereas or /operaciones_aereas.json
  def index
    @operaciones_aereas = OperacionesAerea.all
  end

  # GET /operaciones_aereas/1 or /operaciones_aereas/1.json
  def show
  end

  # GET /operaciones_aereas/new
  def new
    @operaciones_aerea = OperacionesAerea.new
    @aeronaves = Aeronave.all
  end

  # GET /operaciones_aereas/1/edit
  def edit
  end

  # POST /operaciones_aereas or /operaciones_aereas.json
  def create
    @operaciones_aerea = OperacionesAerea.new(operaciones_aerea_params)

    respond_to do |format|
      if @operaciones_aerea.save
        format.html { redirect_to new_operaciones_aerea_url, notice: "Operación aérea guardada con éxito." }
        format.json { render :new, status: :created }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @operaciones_aerea.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /operaciones_aereas/1 or /operaciones_aereas/1.json
  def update
    respond_to do |format|
      if @operaciones_aerea.update(operaciones_aerea_params)
        format.html { redirect_to operaciones_aerea_url(@operaciones_aerea), notice: "Operaciones aerea was successfully updated." }
        format.json { render :show, status: :ok, location: @operaciones_aerea }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @operaciones_aerea.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /operaciones_aereas/1 or /operaciones_aereas/1.json
  def destroy
    @operaciones_aerea.destroy

    respond_to do |format|
      format.html { redirect_to operaciones_aereas_url, notice: "Operaciones aerea was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_operaciones_aerea
      @operaciones_aerea = OperacionesAerea.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def operaciones_aerea_params
      params.require(:operaciones_aerea).permit(:aeronave_id, :piloto_id, :fecha_operacion, :horas_vuelo, :toque_y_despegue, :aterrizajes, :incidentes, :comentarios, :aerodromos)
    end
end
