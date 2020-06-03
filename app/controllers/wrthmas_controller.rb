class WrthmasController < ApplicationController
  before_action :set_wrthma, only: [:show, :edit, :update, :destroy]

  # GET /wrthmas
  # GET /wrthmas.json
  def index
    @wrthmas = Wrthma.all
  end

  # GET /wrthmas/1
  # GET /wrthmas/1.json
  def show
  end

  # GET /wrthmas/new
  def new
    @wrthma = Wrthma.new
  end

  # GET /wrthmas/1/edit
  def edit
  end

  # POST /wrthmas
  # POST /wrthmas.json
  def create
    @wrthma = Wrthma.new(wrthma_params)

    respond_to do |format|
      if @wrthma.save
        format.html { redirect_to @wrthma, notice: 'Wrthma was successfully created.' }
        format.json { render :show, status: :created, location: @wrthma }
      else
        format.html { render :new }
        format.json { render json: @wrthma.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wrthmas/1
  # PATCH/PUT /wrthmas/1.json
  def update
    respond_to do |format|
      if @wrthma.update(wrthma_params)
        format.html { redirect_to @wrthma, notice: 'Wrthma was successfully updated.' }
        format.json { render :show, status: :ok, location: @wrthma }
      else
        format.html { render :edit }
        format.json { render json: @wrthma.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wrthmas/1
  # DELETE /wrthmas/1.json
  def destroy
    @wrthma.destroy
    respond_to do |format|
      format.html { redirect_to wrthmas_url, notice: 'Wrthma was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wrthma
      @wrthma = Wrthma.find(params[:id])

    end

    # Only allow a list of trusted parameters through.
    def wrthma_params
      params.require(:wrthma).permit(:name, :title, :picture)
    end
end
