class CobradesController < ApplicationController
  before_action :set_cobrade, only: %i[ show edit update destroy ]

  # GET /cobrades or /cobrades.json
  def index
    @cobrades = Cobrade.all
  end

  # GET /cobrades/1 or /cobrades/1.json
  def show
  end

  # GET /cobrades/new
  def new
    @cobrade = Cobrade.new
  end

  # GET /cobrades/1/edit
  def edit
  end

  # POST /cobrades or /cobrades.json
  def create
    @cobrade = Cobrade.new(cobrade_params)

    respond_to do |format|
      if @cobrade.save
        format.html { redirect_to cobrade_url(@cobrade), notice: "Cobrade was successfully created." }
        format.json { render :show, status: :created, location: @cobrade }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cobrade.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cobrades/1 or /cobrades/1.json
  def update
    respond_to do |format|
      if @cobrade.update(cobrade_params)
        format.html { redirect_to cobrade_url(@cobrade), notice: "Cobrade was successfully updated." }
        format.json { render :show, status: :ok, location: @cobrade }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cobrade.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cobrades/1 or /cobrades/1.json
  def destroy
    @cobrade.destroy

    respond_to do |format|
      format.html { redirect_to cobrades_url, notice: "Cobrade was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cobrade
      @cobrade = Cobrade.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cobrade_params
      params.require(:cobrade).permit(:cod, :description)
    end
end
