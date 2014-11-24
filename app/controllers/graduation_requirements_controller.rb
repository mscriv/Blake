class GraduationRequirementsController < ApplicationController
  before_action :set_graduation_requirement, only: [:show, :edit, :update, :destroy]

  # GET /graduation_requirements
  # GET /graduation_requirements.json
  def index
    @graduation_requirements = GraduationRequirement.all
  end

  # GET /graduation_requirements/1
  # GET /graduation_requirements/1.json
  def show
  end

  # GET /graduation_requirements/new
  def new
    @graduation_requirement = GraduationRequirement.new
  end

  # GET /graduation_requirements/1/edit
  def edit
  end

  # POST /graduation_requirements
  # POST /graduation_requirements.json
  def create
    @graduation_requirement = GraduationRequirement.new(graduation_requirement_params)

    respond_to do |format|
      if @graduation_requirement.save
        format.html { redirect_to @graduation_requirement, notice: 'Graduation requirement was successfully created.' }
        format.json { render :show, status: :created, location: @graduation_requirement }
      else
        format.html { render :new }
        format.json { render json: @graduation_requirement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /graduation_requirements/1
  # PATCH/PUT /graduation_requirements/1.json
  def update
    respond_to do |format|
      if @graduation_requirement.update(graduation_requirement_params)
        format.html { redirect_to @graduation_requirement, notice: 'Graduation requirement was successfully updated.' }
        format.json { render :show, status: :ok, location: @graduation_requirement }
      else
        format.html { render :edit }
        format.json { render json: @graduation_requirement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /graduation_requirements/1
  # DELETE /graduation_requirements/1.json
  def destroy
    @graduation_requirement.destroy
    respond_to do |format|
      format.html { redirect_to graduation_requirements_url, notice: 'Graduation requirement was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_graduation_requirement
      @graduation_requirement = GraduationRequirement.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def graduation_requirement_params
      params.require(:graduation_requirement).permit(:year, :description)
    end
end
