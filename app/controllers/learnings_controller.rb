class LearningsController < ApplicationController
  before_action :set_learning, only: [:show, :edit, :update, :destroy]

  # GET /learning
  # GET /learning.json
  def index
    @learning = Learning.all
  end

  # GET /learning/1
  # GET /learning/1.json
  def show
  end

  # GET /learning/new
  def new
    @learning = Learning.new
  end

  # GET /learning/1/edit
  def edit
  end

  # POST /learning
  # POST /learning.json
  def create



    @learning= current_user.learnings.new(learning_params)

    respond_to do |format|
      if @learning.save
        format.html { redirect_to new_employment_information_path, notice: 'Personal information was successfully created.' }
        format.json { render :show, status: :created, location: @learning }
      else
        format.html { render :new }
        format.json { render json: @learning.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /learning/1
  # PATCH/PUT /learning/1.json
  def update
    respond_to do |format|
      if @learning.update(learning_params)
        format.html { redirect_to @learning, notice: 'Personal information was successfully updated.' }
        format.json { render :show, status: :ok, location: @learning }
      else
        format.html { render :edit }
        format.json { render json: @learning.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /learning/1
  # DELETE /learning/1.json
  def destroy
    @learning.destroy
    respond_to do |format|
      format.html { redirect_to learning_url, notice: 'Personal information was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_learning
      @learning = Learning.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def learning_params
      params.require(:learning).permit(:Quality, :Studies, :Projects, :Investigation, :Infrastructure, :Experience)
    end
    
end

 

    


