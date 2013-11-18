require File.dirname(__FILE__) + '/../test_helper'
require 'condo_questions_controller'

# Re-raise errors caught by the controller.
class CondoQuestionsController; def rescue_action(e) raise e end; end

class CondoQuestionsControllerTest < Test::Unit::TestCase
  fixtures :condo_questions

  def setup
    @controller = CondoQuestionsController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new
  end

  def test_index
    get :index
    assert_response :success
    assert_template 'list'
  end

  def test_list
    get :list

    assert_response :success
    assert_template 'list'

    assert_not_nil assigns(:condo_questions)
  end

  def test_show
    get :show, :id => 1

    assert_response :success
    assert_template 'show'

    assert_not_nil assigns(:condo_question)
    assert assigns(:condo_question).valid?
  end

  def test_new
    get :new

    assert_response :success
    assert_template 'new'

    assert_not_nil assigns(:condo_question)
  end

  def test_create
    num_condo_questions = CondoQuestion.count

    post :create, :condo_question => {}

    assert_response :redirect
    assert_redirected_to :action => 'list'

    assert_equal num_condo_questions + 1, CondoQuestion.count
  end

  def test_edit
    get :edit, :id => 1

    assert_response :success
    assert_template 'edit'

    assert_not_nil assigns(:condo_question)
    assert assigns(:condo_question).valid?
  end

  def test_update
    post :update, :id => 1
    assert_response :redirect
    assert_redirected_to :action => 'show', :id => 1
  end

  def test_destroy
    assert_not_nil CondoQuestion.find(1)

    post :destroy, :id => 1
    assert_response :redirect
    assert_redirected_to :action => 'list'

    assert_raise(ActiveRecord::RecordNotFound) {
      CondoQuestion.find(1)
    }
  end
end
