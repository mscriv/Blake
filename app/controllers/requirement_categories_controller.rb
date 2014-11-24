class RequirementCategoriesController < ApplicationController
  before_action :set_requirement_category, only: [:show, :edit, :update, :destroy]

  # GET /requirement_categories
  # GET /requirement_categories.json
  def index
    @requirement_categories = RequirementCategory.all
  end

  # GET /requirement_categories/1
  # GET /requirement_categories/1.json
  def show
  end

  # GET /requirement_categories/new
  def new
    @requirement_category = RequirementCategory.new
  end

  # GET /requirement_categories/1/edit
  def edit
  end

  # POST /requirement_categories
  # POST /requirement_categories.json
  def create
    @requirement_category = RequirementCategory.new(requirement_category_params)

    respond_to do |format|
      if @requirement_category.save
        format.html { redirect_to @requirement_category, notice: 'Requirement category was successfully created.' }
        format.json { render :show, status: :created, location: @requirement_category }
      else
        format.html { render :new }
        format.json { render json: @requirement_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /requirement_categories/1
  # PATCH/PUT /requirement_categories/1.json
  def update
    respond_to do |format|
      if @requirement_category.update(requirement_category_params)
        format.html { redirect_to @requirement_category, notice: 'Requirement category was successfully updated.' }
        format.json { render :show, status: :ok, location: @requirement_category }
      else
        format.html { render :edit }
        format.json { render json: @requirement_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /requirement_categories/1
  # DELETE /requirement_categories/1.json
  def destroy
    @requirement_category.destroy
    respond_to do |format|
      format.html { redirect_to requirement_categories_url, notice: 'Requirement category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_requirement_category
      @requirement_category = RequirementCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def requirement_category_params
      params.require(:requirement_category).permit(:name, :graduation_requirement_id)
    end
end
