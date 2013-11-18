require File.dirname(__FILE__) + '/../test_helper'
require 'tenant_posts_controller'

# Re-raise errors caught by the controller.
class TenantPostsController; def rescue_action(e) raise e end; end

class TenantPostsControllerTest < Test::Unit::TestCase
  fixtures :tenant_posts

  def setup
    @controller = TenantPostsController.new
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

    assert_not_nil assigns(:tenant_posts)
  end

  def test_show
    get :show, :id => 1

    assert_response :success
    assert_template 'show'

    assert_not_nil assigns(:tenant_post)
    assert assigns(:tenant_post).valid?
  end

  def test_new
    get :new

    assert_response :success
    assert_template 'new'

    assert_not_nil assigns(:tenant_post)
  end

  def test_create
    num_tenant_posts = TenantPost.count

    post :create, :tenant_post => {}

    assert_response :redirect
    assert_redirected_to :action => 'list'

    assert_equal num_tenant_posts + 1, TenantPost.count
  end

  def test_edit
    get :edit, :id => 1

    assert_response :success
    assert_template 'edit'

    assert_not_nil assigns(:tenant_post)
    assert assigns(:tenant_post).valid?
  end

  def test_update
    post :update, :id => 1
    assert_response :redirect
    assert_redirected_to :action => 'show', :id => 1
  end

  def test_destroy
    assert_not_nil TenantPost.find(1)

    post :destroy, :id => 1
    assert_response :redirect
    assert_redirected_to :action => 'list'

    assert_raise(ActiveRecord::RecordNotFound) {
      TenantPost.find(1)
    }
  end
end
