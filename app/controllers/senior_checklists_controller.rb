class SeniorChecklistsController < ApplicationController
  before_action :set_senior_checklist, only: [:show, :edit, :update, :destroy]

  # GET /senior_checklists
  # GET /senior_checklists.json
  def index
    @senior_checklists = SeniorChecklist.all
  end

  # GET /senior_checklists/1
  # GET /senior_checklists/1.json
  def show
  end

  # GET /senior_checklists/new
  def new
    @senior_checklist = SeniorChecklist.new
  end

  # GET /senior_checklists/1/edit
  def edit
  end

  # POST /senior_checklists
  # POST /senior_checklists.json
  def create
    @senior_checklist = SeniorChecklist.new(senior_checklist_params)

    respond_to do |format|
      if @senior_checklist.save
        format.html { redirect_to @senior_checklist, notice: 'Senior checklist was successfully created.' }
        format.json { render :show, status: :created, location: @senior_checklist }
      else
        format.html { render :new }
        format.json { render json: @senior_checklist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /senior_checklists/1
  # PATCH/PUT /senior_checklists/1.json
  def update
    respond_to do |format|
      if @senior_checklist.update(senior_checklist_params)
        format.html { redirect_to @senior_checklist, notice: 'Senior checklist was successfully updated.' }
        format.json { render :show, status: :ok, location: @senior_checklist }
      else
        format.html { render :edit }
        format.json { render json: @senior_checklist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /senior_checklists/1
  # DELETE /senior_checklists/1.json
  def destroy
    @senior_checklist.destroy
    respond_to do |format|
      format.html { redirect_to senior_checklists_url, notice: 'Senior checklist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_senior_checklist
      @senior_checklist = SeniorChecklist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def senior_checklist_params
      params.require(:senior_checklist).permit(:month)
    end
end
