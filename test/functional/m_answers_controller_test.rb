require 'test_helper'

class MAnswersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:m_answers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create m_answer" do
    assert_difference('MAnswer.count') do
      post :create, :m_answer => { }
    end

    assert_redirected_to m_answer_path(assigns(:m_answer))
  end

  test "should show m_answer" do
    get :show, :id => m_answers(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => m_answers(:one).to_param
    assert_response :success
  end

  test "should update m_answer" do
    put :update, :id => m_answers(:one).to_param, :m_answer => { }
    assert_redirected_to m_answer_path(assigns(:m_answer))
  end

  test "should destroy m_answer" do
    assert_difference('MAnswer.count', -1) do
      delete :destroy, :id => m_answers(:one).to_param
    end

    assert_redirected_to m_answers_path
  end
end
