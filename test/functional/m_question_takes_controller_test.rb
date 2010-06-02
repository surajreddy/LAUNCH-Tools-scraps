require 'test_helper'

class MQuestionTakesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:m_question_takes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create m_question_take" do
    assert_difference('MQuestionTake.count') do
      post :create, :m_question_take => { }
    end

    assert_redirected_to m_question_take_path(assigns(:m_question_take))
  end

  test "should show m_question_take" do
    get :show, :id => m_question_takes(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => m_question_takes(:one).to_param
    assert_response :success
  end

  test "should update m_question_take" do
    put :update, :id => m_question_takes(:one).to_param, :m_question_take => { }
    assert_redirected_to m_question_take_path(assigns(:m_question_take))
  end

  test "should destroy m_question_take" do
    assert_difference('MQuestionTake.count', -1) do
      delete :destroy, :id => m_question_takes(:one).to_param
    end

    assert_redirected_to m_question_takes_path
  end
end
