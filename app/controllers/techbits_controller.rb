class TechbitsController < ApplicationController
  before_action :set_techbit, only: %i[ show edit update destroy ]

  # GET /techbits or /techbits.json
  def index
    @techbits = Techbit.all
  end

  # GET /techbits/1 or /techbits/1.json
  def show
  end

  # GET /techbits/new
  def new
    @techbit = Techbit.new
  end

  # GET /techbits/1/edit
  def edit
  end

  # POST /techbits or /techbits.json
  def create
    @techbit = Techbit.new(techbit_params)

    respond_to do |format|
      if @techbit.save
        format.html { redirect_to @techbit, notice: "Techbit was successfully created." }
        format.json { render :show, status: :created, location: @techbit }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @techbit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /techbits/1 or /techbits/1.json
  def update
    respond_to do |format|
      if @techbit.update(techbit_params)
        format.html { redirect_to @techbit, notice: "Techbit was successfully updated." }
        format.json { render :show, status: :ok, location: @techbit }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @techbit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /techbits/1 or /techbits/1.json
  def destroy
    @techbit.destroy
    respond_to do |format|
      format.html { redirect_to techbits_url, notice: "Techbit was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_techbit
      @techbit = Techbit.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def techbit_params
      params.require(:techbit).permit(:bit)
    end
end
