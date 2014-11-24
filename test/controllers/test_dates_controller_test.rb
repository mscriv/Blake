require 'test_helper'

class TestDatesControllerTest < ActionController::TestCase
  setup do
    @test_date = test_dates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:test_dates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create test_date" do
    assert_difference('TestDate.count') do
      post :create, test_date: { date: @test_date.date, deadline: @test_date.deadline, testing_id: @test_date.testing_id }
    end

    assert_redirected_to test_date_path(assigns(:test_date))
  end

  test "should show test_date" do
    get :show, id: @test_date
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @test_date
    assert_response :success
  end

  test "should update test_date" do
    patch :update, id: @test_date, test_date: { date: @test_date.date, deadline: @test_date.deadline, testing_id: @test_date.testing_id }
    assert_redirected_to test_date_path(assigns(:test_date))
  end

  test "should destroy test_date" do
    assert_difference('TestDate.count', -1) do
      delete :destroy, id: @test_date
    end

    assert_redirected_to test_dates_path
  end
end
