require 'test_helper'

class MQuestionsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:m_questions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create m_question" do
    assert_difference('MQuestion.count') do
      post :create, :m_question => { }
    end

    assert_redirected_to m_question_path(assigns(:m_question))
  end

  test "should show m_question" do
    get :show, :id => m_questions(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => m_questions(:one).to_param
    assert_response :success
  end

  test "should update m_question" do
    put :update, :id => m_questions(:one).to_param, :m_question => { }
    assert_redirected_to m_question_path(assigns(:m_question))
  end

  test "should destroy m_question" do
    assert_difference('MQuestion.count', -1) do
      delete :destroy, :id => m_questions(:one).to_param
    end

    assert_redirected_to m_questions_path
  end
end
