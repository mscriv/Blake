class TestDatesController < ApplicationController
  before_action :set_test_date, only: [:show, :edit, :update, :destroy]

  # GET /test_dates
  # GET /test_dates.json
  def index
    @test_dates = TestDate.all
  end

  # GET /test_dates/1
  # GET /test_dates/1.json
  def show
  end

  # GET /test_dates/new
  def new
    @test_date = TestDate.new
  end

  # GET /test_dates/1/edit
  def edit
  end

  # POST /test_dates
  # POST /test_dates.json
  def create
    @test_date = TestDate.new(test_date_params)

    respond_to do |format|
      if @test_date.save
        format.html { redirect_to @test_date, notice: 'Test date was successfully created.' }
        format.json { render :show, status: :created, location: @test_date }
      else
        format.html { render :new }
        format.json { render json: @test_date.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /test_dates/1
  # PATCH/PUT /test_dates/1.json
  def update
    respond_to do |format|
      if @test_date.update(test_date_params)
        format.html { redirect_to @test_date, notice: 'Test date was successfully updated.' }
        format.json { render :show, status: :ok, location: @test_date }
      else
        format.html { render :edit }
        format.json { render json: @test_date.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /test_dates/1
  # DELETE /test_dates/1.json
  def destroy
    @test_date.destroy
    respond_to do |format|
      format.html { redirect_to test_dates_url, notice: 'Test date was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_test_date
      @test_date = TestDate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def test_date_params
      params.require(:test_date).permit(:date, :deadline, :testing_id)
    end
end
