require File.dirname(__FILE__) + '/../test_helper'
require 'super_users_controller'

# Re-raise errors caught by the controller.
class SuperUsersController; def rescue_action(e) raise e end; end

class SuperUsersControllerTest < Test::Unit::TestCase
  fixtures :super_users

  def setup
    @controller = SuperUsersController.new
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

    assert_not_nil assigns(:super_users)
  end

  def test_show
    get :show, :id => 1

    assert_response :success
    assert_template 'show'

    assert_not_nil assigns(:super_user)
    assert assigns(:super_user).valid?
  end

  def test_new
    get :new

    assert_response :success
    assert_template 'new'

    assert_not_nil assigns(:super_user)
  end

  def test_create
    num_super_users = SuperUser.count

    post :create, :super_user => {}

    assert_response :redirect
    assert_redirected_to :action => 'list'

    assert_equal num_super_users + 1, SuperUser.count
  end

  def test_edit
    get :edit, :id => 1

    assert_response :success
    assert_template 'edit'

    assert_not_nil assigns(:super_user)
    assert assigns(:super_user).valid?
  end

  def test_update
    post :update, :id => 1
    assert_response :redirect
    assert_redirected_to :action => 'show', :id => 1
  end

  def test_destroy
    assert_not_nil SuperUser.find(1)

    post :destroy, :id => 1
    assert_response :redirect
    assert_redirected_to :action => 'list'

    assert_raise(ActiveRecord::RecordNotFound) {
      SuperUser.find(1)
    }
  end
end
