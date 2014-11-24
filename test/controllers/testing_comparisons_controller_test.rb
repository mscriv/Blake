require 'test_helper'

class TestingComparisonsControllerTest < ActionController::TestCase
  setup do
    @testing_comparison = testing_comparisons(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:testing_comparisons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create testing_comparison" do
    assert_difference('TestingComparison.count') do
      post :create, testing_comparison: { cost: @testing_comparison.cost, general_information: @testing_comparison.general_information, name: @testing_comparison.name, scoring: @testing_comparison.scoring, test_content: @testing_comparison.test_content }
    end

    assert_redirected_to testing_comparison_path(assigns(:testing_comparison))
  end

  test "should show testing_comparison" do
    get :show, id: @testing_comparison
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @testing_comparison
    assert_response :success
  end

  test "should update testing_comparison" do
    patch :update, id: @testing_comparison, testing_comparison: { cost: @testing_comparison.cost, general_information: @testing_comparison.general_information, name: @testing_comparison.name, scoring: @testing_comparison.scoring, test_content: @testing_comparison.test_content }
    assert_redirected_to testing_comparison_path(assigns(:testing_comparison))
  end

  test "should destroy testing_comparison" do
    assert_difference('TestingComparison.count', -1) do
      delete :destroy, id: @testing_comparison
    end

    assert_redirected_to testing_comparisons_path
  end
end
