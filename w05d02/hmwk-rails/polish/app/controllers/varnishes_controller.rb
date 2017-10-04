class VarnishesController < ApplicationController
  before_action :set_varnish, only: [:show, :edit, :update, :destroy]

  # GET /varnishes
  # GET /varnishes.json
  def index
    @varnishes = Varnish.all
  end

  # GET /varnishes/1
  # GET /varnishes/1.json
  def show
    
  end

  # GET /varnishes/new
  def new
    @varnish = Varnish.new
  end

  # GET /varnishes/1/edit
  def edit
  end

  # POST /varnishs
  # POST /varnishes.json
  def create
    @varnish = Varnish.new(varnish_params)

    respond_to do |format|
      if @varnish.save
        format.html { redirect_to @varnish, notice: 'Varnish was successfully created.' }
        format.json { render :show, status: :created, location: @varnish }
      else
        format.html { render :new }
        format.json { render json: @varnish.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /varnishes/1
  # PATCH/PUT /varnishes/1.json
  def update
    respond_to do |format|
      if @varnish.update(varnish_params)
        format.html { redirect_to @varnish, notice: 'Varnish was successfully updated.' }
        format.json { render :show, status: :ok, location: @varnish }
      else
        format.html { render :edit }
        format.json { render json: @varnish.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /varnishes/1
  # DELETE /varnishes/1.json
  def destroy
    @varnish.destroy
    respond_to do |format|
      format.html { redirect_to varnishes_url, notice: 'Varnish was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_varnish
      @varnish = Varnish.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def varnish_params
      params.require(:varnish).permit(:colour, :shade, :sort, :image, :varnish_id, :company_id)
    end
end
