require 'test_helper'

class RequirementCategoriesControllerTest < ActionController::TestCase
  setup do
    @requirement_category = requirement_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:requirement_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create requirement_category" do
    assert_difference('RequirementCategory.count') do
      post :create, requirement_category: { graduation_requirement_id: @requirement_category.graduation_requirement_id, name: @requirement_category.name }
    end

    assert_redirected_to requirement_category_path(assigns(:requirement_category))
  end

  test "should show requirement_category" do
    get :show, id: @requirement_category
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @requirement_category
    assert_response :success
  end

  test "should update requirement_category" do
    patch :update, id: @requirement_category, requirement_category: { graduation_requirement_id: @requirement_category.graduation_requirement_id, name: @requirement_category.name }
    assert_redirected_to requirement_category_path(assigns(:requirement_category))
  end

  test "should destroy requirement_category" do
    assert_difference('RequirementCategory.count', -1) do
      delete :destroy, id: @requirement_category
    end

    assert_redirected_to requirement_categories_path
  end
end
