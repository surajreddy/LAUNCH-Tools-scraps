require 'test_helper'

class MAssessmentTakesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:m_assessment_takes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create m_assessment_take" do
    assert_difference('MAssessmentTake.count') do
      post :create, :m_assessment_take => { }
    end

    assert_redirected_to m_assessment_take_path(assigns(:m_assessment_take))
  end

  test "should show m_assessment_take" do
    get :show, :id => m_assessment_takes(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => m_assessment_takes(:one).to_param
    assert_response :success
  end

  test "should update m_assessment_take" do
    put :update, :id => m_assessment_takes(:one).to_param, :m_assessment_take => { }
    assert_redirected_to m_assessment_take_path(assigns(:m_assessment_take))
  end

  test "should destroy m_assessment_take" do
    assert_difference('MAssessmentTake.count', -1) do
      delete :destroy, :id => m_assessment_takes(:one).to_param
    end

    assert_redirected_to m_assessment_takes_path
  end
end
