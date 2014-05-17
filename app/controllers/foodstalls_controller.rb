class FoodstallsController < ApplicationController
  before_action :set_foodstall, only: [:show, :edit, :update, :destroy]

  # GET /foodstalls
  # GET /foodstalls.json
  def index
    @foodstalls = Foodstall.all
  end

  # GET /foodstalls/1
  # GET /foodstalls/1.json
  def show
  end

  # GET /foodstalls/new
  def new
    @foodstall = Foodstall.new
  end

  # GET /foodstalls/1/edit
  def edit
  end

  # POST /foodstalls
  # POST /foodstalls.json
  def create
    @foodstall = Foodstall.new(foodstall_params)

    respond_to do |format|
      if @foodstall.save
        format.html { redirect_to @foodstall, notice: 'Foodstall was successfully created.' }
        format.json { render :show, status: :created, location: @foodstall }
      else
        format.html { render :new }
        format.json { render json: @foodstall.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foodstalls/1
  # PATCH/PUT /foodstalls/1.json
  def update
    respond_to do |format|
      if @foodstall.update(foodstall_params)
        format.html { redirect_to @foodstall, notice: 'Foodstall was successfully updated.' }
        format.json { render :show, status: :ok, location: @foodstall }
      else
        format.html { render :edit }
        format.json { render json: @foodstall.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foodstalls/1
  # DELETE /foodstalls/1.json
  def destroy
    @foodstall.destroy
    respond_to do |format|
      format.html { redirect_to foodstalls_url, notice: 'Foodstall was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foodstall
      @foodstall = Foodstall.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def foodstall_params
      params.require(:foodstall).permit(:food, :price)
    end
end
