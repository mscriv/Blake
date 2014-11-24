require 'test_helper'

class GraduationRequirementsControllerTest < ActionController::TestCase
  setup do
    @graduation_requirement = graduation_requirements(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:graduation_requirements)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create graduation_requirement" do
    assert_difference('GraduationRequirement.count') do
      post :create, graduation_requirement: { description: @graduation_requirement.description, year: @graduation_requirement.year }
    end

    assert_redirected_to graduation_requirement_path(assigns(:graduation_requirement))
  end

  test "should show graduation_requirement" do
    get :show, id: @graduation_requirement
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @graduation_requirement
    assert_response :success
  end

  test "should update graduation_requirement" do
    patch :update, id: @graduation_requirement, graduation_requirement: { description: @graduation_requirement.description, year: @graduation_requirement.year }
    assert_redirected_to graduation_requirement_path(assigns(:graduation_requirement))
  end

  test "should destroy graduation_requirement" do
    assert_difference('GraduationRequirement.count', -1) do
      delete :destroy, id: @graduation_requirement
    end

    assert_redirected_to graduation_requirements_path
  end
end
