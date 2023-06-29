class RecenzesController < ApplicationController
  before_action :set_recenze, only: %i[ show edit update destroy ]

  # GET /recenzes or /recenzes.json
  def index
    @recenzes = Recenze.all
  end

  # GET /recenzes/1 or /recenzes/1.json
  def show
  end

  # GET /recenzes/new
  def new
    @recenze = Recenze.new
  end

  # GET /recenzes/1/edit
  def edit
  end

  # POST /recenzes or /recenzes.json
  def create
    @recenze = Recenze.new(recenze_params)

    respond_to do |format|
      if @recenze.save
        format.html { redirect_to recenze_url(@recenze), notice: "Recenze was successfully created." }
        format.json { render :show, status: :created, location: @recenze }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @recenze.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recenzes/1 or /recenzes/1.json
  def update
    respond_to do |format|
      if @recenze.update(recenze_params)
        format.html { redirect_to recenze_url(@recenze), notice: "Recenze was successfully updated." }
        format.json { render :show, status: :ok, location: @recenze }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @recenze.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recenzes/1 or /recenzes/1.json
  def destroy
    @recenze.destroy

    respond_to do |format|
      format.html { redirect_to recenzes_url, notice: "Recenze was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recenze
      @recenze = Recenze.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def recenze_params
      params.require(:recenze).permit(:name, :description, :hodnoceni, :image)
    end
end
