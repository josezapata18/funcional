class MettersController < ApplicationController
  before_action :set_metter, only: [:show, :edit, :update, :destroy]

  # GET /metters
  # GET /metters.json
  def index
    @metters = Metter.all
  end

  # GET /metters/1
  # GET /metters/1.json
  def show
  end

  # GET /metters/new
  def new
    @metter = Metter.new
  end

  # GET /metters/1/edit
  def edit
  end

  # POST /metters
  # POST /metters.json
  def create
    @metter = Metter.new(metter_params)

    respond_to do |format|
      if @metter.save
        format.html { redirect_to @metter, notice: 'Metter was successfully created.' }
        format.json { render :show, status: :created, location: @metter }
      else
        format.html { render :new }
        format.json { render json: @metter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /metters/1
  # PATCH/PUT /metters/1.json
  def update
    respond_to do |format|
      if @metter.update(metter_params)
        format.html { redirect_to @metter, notice: 'Metter was successfully updated.' }
        format.json { render :show, status: :ok, location: @metter }
      else
        format.html { render :edit }
        format.json { render json: @metter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /metters/1
  # DELETE /metters/1.json
  def destroy
    @metter.destroy
    respond_to do |format|
      format.html { redirect_to metters_url, notice: 'Metter was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_metter
      @metter = Metter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def metter_params
      params.require(:metter).permit(:name, :program_id)
    end
end
