require 'test_helper'

class SeniorChecklistsControllerTest < ActionController::TestCase
  setup do
    @senior_checklist = senior_checklists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:senior_checklists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create senior_checklist" do
    assert_difference('SeniorChecklist.count') do
      post :create, senior_checklist: { month: @senior_checklist.month }
    end

    assert_redirected_to senior_checklist_path(assigns(:senior_checklist))
  end

  test "should show senior_checklist" do
    get :show, id: @senior_checklist
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @senior_checklist
    assert_response :success
  end

  test "should update senior_checklist" do
    patch :update, id: @senior_checklist, senior_checklist: { month: @senior_checklist.month }
    assert_redirected_to senior_checklist_path(assigns(:senior_checklist))
  end

  test "should destroy senior_checklist" do
    assert_difference('SeniorChecklist.count', -1) do
      delete :destroy, id: @senior_checklist
    end

    assert_redirected_to senior_checklists_path
  end
end
