require File.dirname(__FILE__) + '/../test_helper'
require 'tanent_posts_controller'

# Re-raise errors caught by the controller.
class TanentPostsController; def rescue_action(e) raise e end; end

class TanentPostsControllerTest < Test::Unit::TestCase
  fixtures :tanent_posts

  def setup
    @controller = TanentPostsController.new
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

    assert_not_nil assigns(:tanent_posts)
  end

  def test_show
    get :show, :id => 1

    assert_response :success
    assert_template 'show'

    assert_not_nil assigns(:tanent_post)
    assert assigns(:tanent_post).valid?
  end

  def test_new
    get :new

    assert_response :success
    assert_template 'new'

    assert_not_nil assigns(:tanent_post)
  end

  def test_create
    num_tanent_posts = TanentPost.count

    post :create, :tanent_post => {}

    assert_response :redirect
    assert_redirected_to :action => 'list'

    assert_equal num_tanent_posts + 1, TanentPost.count
  end

  def test_edit
    get :edit, :id => 1

    assert_response :success
    assert_template 'edit'

    assert_not_nil assigns(:tanent_post)
    assert assigns(:tanent_post).valid?
  end

  def test_update
    post :update, :id => 1
    assert_response :redirect
    assert_redirected_to :action => 'show', :id => 1
  end

  def test_destroy
    assert_not_nil TanentPost.find(1)

    post :destroy, :id => 1
    assert_response :redirect
    assert_redirected_to :action => 'list'

    assert_raise(ActiveRecord::RecordNotFound) {
      TanentPost.find(1)
    }
  end
end
