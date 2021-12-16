class TeesController < ApplicationController
  before_action :set_tee, only: %i[ show edit update destroy ]

  # GET /tees or /tees.json
  def index
    @tees = Tee.all
  end

  # GET /tees/1 or /tees/1.json
  def show
  end

  # GET /tees/new
  def new
    @tee = Tee.new
  end

  # GET /tees/1/edit
  def edit
  end

  # POST /tees or /tees.json
  def create
    @tee = Tee.new(tee_params)

    respond_to do |format|
      if @tee.save
        format.html { redirect_to @tee, notice: "Tee was successfully created." }
        format.json { render :show, status: :created, location: @tee }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tees/1 or /tees/1.json
  def update
    respond_to do |format|
      if @tee.update(tee_params)
        format.html { redirect_to @tee, notice: "Tee was successfully updated." }
        format.json { render :show, status: :ok, location: @tee }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tees/1 or /tees/1.json
  def destroy
    @tee.destroy
    respond_to do |format|
      format.html { redirect_to tees_url, notice: "Tee was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tee
      @tee = Tee.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tee_params
      params.require(:tee).permit(:course_id, :name, :hole_1, :hole_2, :hole_3, :hole_4, :hole_5, :hole_6, :hole_7, :hole_8, :hole_9, :out, :hole_10, :hole_11, :hole_12, :hole_13, :hole_14, :hole_15, :hole_16, :hole_17, :hole_18, :in, :tot)
    end
end
