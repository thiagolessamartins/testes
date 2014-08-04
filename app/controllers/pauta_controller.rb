class PautaController < ApplicationController
  before_action :set_pautum, only: [:show, :edit, :update, :destroy]

  # GET /pauta
  # GET /pauta.json
  def index
    @pauta = Pautum.all
  end

  # GET /pauta/1
  # GET /pauta/1.json
  def show
  end

  # GET /pauta/new
  def new
    @pautum = Pautum.new
  end

  # GET /pauta/1/edit
  def edit
  end

  # POST /pauta
  # POST /pauta.json
  def create
    @pautum = Pautum.new(pautum_params)

    respond_to do |format|
      if @pautum.save
        format.html { redirect_to @pautum, notice: 'Pautum was successfully created.' }
        format.json { render :show, status: :created, location: @pautum }
      else
        format.html { render :new }
        format.json { render json: @pautum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pauta/1
  # PATCH/PUT /pauta/1.json
  def update
    respond_to do |format|
      if @pautum.update(pautum_params)
        format.html { redirect_to @pautum, notice: 'Pautum was successfully updated.' }
        format.json { render :show, status: :ok, location: @pautum }
      else
        format.html { render :edit }
        format.json { render json: @pautum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pauta/1
  # DELETE /pauta/1.json
  def destroy
    @pautum.destroy
    respond_to do |format|
      format.html { redirect_to pauta_url, notice: 'Pautum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pautum
      @pautum = Pautum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pautum_params
      params.require(:pautum).permit(:titulo, :data, :status)
    end
end
