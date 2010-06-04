require 'test_helper'

class MAnswerTakesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:m_answer_takes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create m_answer_take" do
    assert_difference('MAnswerTake.count') do
      post :create, :m_answer_take => { }
    end

    assert_redirected_to m_answer_take_path(assigns(:m_answer_take))
  end

  test "should show m_answer_take" do
    get :show, :id => m_answer_takes(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => m_answer_takes(:one).to_param
    assert_response :success
  end

  test "should update m_answer_take" do
    put :update, :id => m_answer_takes(:one).to_param, :m_answer_take => { }
    assert_redirected_to m_answer_take_path(assigns(:m_answer_take))
  end

  test "should destroy m_answer_take" do
    assert_difference('MAnswerTake.count', -1) do
      delete :destroy, :id => m_answer_takes(:one).to_param
    end

    assert_redirected_to m_answer_takes_path
  end
end
