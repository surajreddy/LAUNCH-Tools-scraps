require 'test_helper'

class MAssessmentsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:m_assessments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create m_assessment" do
    assert_difference('MAssessment.count') do
      post :create, :m_assessment => { }
    end

    assert_redirected_to m_assessment_path(assigns(:m_assessment))
  end

  test "should show m_assessment" do
    get :show, :id => m_assessments(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => m_assessments(:one).to_param
    assert_response :success
  end

  test "should update m_assessment" do
    put :update, :id => m_assessments(:one).to_param, :m_assessment => { }
    assert_redirected_to m_assessment_path(assigns(:m_assessment))
  end

  test "should destroy m_assessment" do
    assert_difference('MAssessment.count', -1) do
      delete :destroy, :id => m_assessments(:one).to_param
    end

    assert_redirected_to m_assessments_path
  end
end
