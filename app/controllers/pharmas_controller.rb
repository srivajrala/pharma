class PharmasController < ApplicationController
  before_action :set_pharma, only: [:show, :edit, :update, :destroy]

  # GET /pharmas
  # GET /pharmas.json
  def index
    @pharmas = Pharma.all
  end

  # GET /pharmas/1
  # GET /pharmas/1.json
  def show
  end

  # GET /pharmas/new
  def new
    @pharma = Pharma.new
  end

  # GET /pharmas/1/edit
  def edit
  end

  # POST /pharmas
  # POST /pharmas.json
  def create
    @pharma = Pharma.new(pharma_params)

    respond_to do |format|
      if @pharma.save
        format.html { redirect_to @pharma, notice: 'Pharma was successfully created.' }
        format.json { render :show, status: :created, location: @pharma }
      else
        format.html { render :new }
        format.json { render json: @pharma.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pharmas/1
  # PATCH/PUT /pharmas/1.json
  def update
    respond_to do |format|
      if @pharma.update(pharma_params)
        format.html { redirect_to @pharma, notice: 'Pharma was successfully updated.' }
        format.json { render :show, status: :ok, location: @pharma }
      else
        format.html { render :edit }
        format.json { render json: @pharma.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pharmas/1
  # DELETE /pharmas/1.json
  def destroy
    @pharma.destroy
    respond_to do |format|
      format.html { redirect_to pharmas_url, notice: 'Pharma was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pharma
      @pharma = Pharma.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pharma_params
      params.require(:pharma).permit(:name, :hsopitalname)
    end
end
