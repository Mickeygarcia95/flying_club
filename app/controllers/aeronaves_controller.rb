class AeronavesController < ApplicationController
  before_action :authenticate_usuario!
  before_action :set_aeronafe, only: %i[ show edit update destroy ]
  layout 'dashboard'

  # GET /aeronaves or /aeronaves.json
  def index
    @aeronaves = Aeronave.all
  end

  # GET /aeronaves/1 or /aeronaves/1.json
  def show
    @operaciones = @aeronave.operaciones_aereas.includes(piloto: :usuario).order(fecha_operacion: :desc)
  end

  # GET /aeronaves/new
  def new
    @aeronafe = Aeronave.new
  end

  # GET /aeronaves/1/edit
  def edit
  end

  # POST /aeronaves or /aeronaves.json
  def create
    @aeronafe = Aeronave.new(aeronafe_params)

    respond_to do |format|
      if @aeronafe.save
        format.html { redirect_to aeronafe_url(@aeronafe), notice: "Aeronave was successfully created." }
        format.json { render :show, status: :created, location: @aeronafe }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @aeronafe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aeronaves/1 or /aeronaves/1.json
  def update
    respond_to do |format|
      if @aeronafe.update(aeronafe_params)
        format.html { redirect_to aeronafe_url(@aeronafe), notice: "Aeronave was successfully updated." }
        format.json { render :show, status: :ok, location: @aeronafe }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @aeronafe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aeronaves/1 or /aeronaves/1.json
  def destroy
    @aeronafe.destroy

    respond_to do |format|
      format.html { redirect_to aeronaves_url, notice: "Aeronave was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aeronafe
      @aeronave = Aeronave.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def aeronafe_params
      params.require(:aeronave).permit(:modelo, :matricula, :horas_vuelo_acumulado, :horas_vuelo_mantencion, :mantencion_total)
    end
end
