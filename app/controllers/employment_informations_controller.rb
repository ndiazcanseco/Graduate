class EmploymentInformationsController < ApplicationController
  before_action :set_employment_information, only: [:show, :edit, :update, :destroy]

  # GET /employment_informations
  # GET /employment_informations.json
  def index
    @employment_informations = EmploymentInformation.all
  end

  # GET /employment_informations/1
  # GET /employment_informations/1.json
  def show
  end

  # GET /employment_informations/new
  def new
    @employment_information = EmploymentInformation.new
  end

  # GET /employment_informations/1/edit
  def edit
  end

  # POST /employment_informations
  # POST /employment_informations.json
  def create


    @employment_information = current_user.employment_informations.new(employment_information_params)

    respond_to do |format|
      if @employment_information.save
        format.html { redirect_to new_company_information_path, notice: 'Employment information was successfully created.' }
        format.json { render :show, status: :created, location: @employment_information }
      else
        format.html { render :new }
        format.json { render json: @employment_information.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /employment_informations/1
  # PATCH/PUT /employment_informations/1.json
  def update
    respond_to do |format|
      if @employment_information.update(employment_information_params)
        format.html { redirect_to @employment_information, notice: 'Employment information was successfully updated.' }
        format.json { render :show, status: :ok, location: @employment_information }
      else
        format.html { render :edit }
        format.json { render json: @employment_information.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employment_informations/1
  # DELETE /employment_informations/1.json
  def destroy
    @employment_information.destroy
    respond_to do |format|
      format.html { redirect_to employment_informations_url, notice: 'Employment information was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employment_information
      @employment_information = EmploymentInformation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def employment_information_params
      params.require(:employment_information).permit(:Question1, :Question2, :Question2S, :Question2I, :Question3, :Question4, :Question5, :Question6, :Question6S, :Question7, :Question7O, :Speaks, :Writes, :Read, :ListenTo, :Question9, :Question10, :Question11, :Question12, :Question12O, :Question13)
    end
end
