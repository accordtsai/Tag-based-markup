require 'test_helper'

class PatientListsControllerTest < ActionController::TestCase
  setup do
    @patient_list = patient_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:patient_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create patient_list" do
    assert_difference('PatientList.count') do
      post :create, patient_list: { content: @patient_list.content, name: @patient_list.name }
    end

    assert_redirected_to patient_list_path(assigns(:patient_list))
  end

  test "should show patient_list" do
    get :show, id: @patient_list
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @patient_list
    assert_response :success
  end

  test "should update patient_list" do
    patch :update, id: @patient_list, patient_list: { content: @patient_list.content, name: @patient_list.name }
    assert_redirected_to patient_list_path(assigns(:patient_list))
  end

  test "should destroy patient_list" do
    assert_difference('PatientList.count', -1) do
      delete :destroy, id: @patient_list
    end

    assert_redirected_to patient_lists_path
  end
end
