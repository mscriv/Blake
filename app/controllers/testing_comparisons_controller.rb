class TestingComparisonsController < ApplicationController
  before_action :set_testing_comparison, only: [:show, :edit, :update, :destroy]

  # GET /testing_comparisons
  # GET /testing_comparisons.json
  def index
    @testing_comparisons = TestingComparison.all
  end

  # GET /testing_comparisons/1
  # GET /testing_comparisons/1.json
  def show
  end

  # GET /testing_comparisons/new
  def new
    @testing_comparison = TestingComparison.new
  end

  # GET /testing_comparisons/1/edit
  def edit
  end

  # POST /testing_comparisons
  # POST /testing_comparisons.json
  def create
    @testing_comparison = TestingComparison.new(testing_comparison_params)

    respond_to do |format|
      if @testing_comparison.save
        format.html { redirect_to @testing_comparison, notice: 'Testing comparison was successfully created.' }
        format.json { render :show, status: :created, location: @testing_comparison }
      else
        format.html { render :new }
        format.json { render json: @testing_comparison.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /testing_comparisons/1
  # PATCH/PUT /testing_comparisons/1.json
  def update
    respond_to do |format|
      if @testing_comparison.update(testing_comparison_params)
        format.html { redirect_to @testing_comparison, notice: 'Testing comparison was successfully updated.' }
        format.json { render :show, status: :ok, location: @testing_comparison }
      else
        format.html { render :edit }
        format.json { render json: @testing_comparison.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /testing_comparisons/1
  # DELETE /testing_comparisons/1.json
  def destroy
    @testing_comparison.destroy
    respond_to do |format|
      format.html { redirect_to testing_comparisons_url, notice: 'Testing comparison was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_testing_comparison
      @testing_comparison = TestingComparison.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def testing_comparison_params
      params.require(:testing_comparison).permit(:name, :cost, :general_information, :test_content, :scoring)
    end
end
