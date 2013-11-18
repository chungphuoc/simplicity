require File.dirname(__FILE__) + '/../test_helper'
require 'maintenance_requests_controller'

# Re-raise errors caught by the controller.
class MaintenanceRequestsController; def rescue_action(e) raise e end; end

class MaintenanceRequestsControllerTest < Test::Unit::TestCase
  fixtures :maintenance_requests

  def setup
    @controller = MaintenanceRequestsController.new
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

    assert_not_nil assigns(:maintenance_requests)
  end

  def test_show
    get :show, :id => 1

    assert_response :success
    assert_template 'show'

    assert_not_nil assigns(:maintenance_request)
    assert assigns(:maintenance_request).valid?
  end

  def test_new
    get :new

    assert_response :success
    assert_template 'new'

    assert_not_nil assigns(:maintenance_request)
  end

  def test_create
    num_maintenance_requests = MaintenanceRequest.count

    post :create, :maintenance_request => {}

    assert_response :redirect
    assert_redirected_to :action => 'list'

    assert_equal num_maintenance_requests + 1, MaintenanceRequest.count
  end

  def test_edit
    get :edit, :id => 1

    assert_response :success
    assert_template 'edit'

    assert_not_nil assigns(:maintenance_request)
    assert assigns(:maintenance_request).valid?
  end

  def test_update
    post :update, :id => 1
    assert_response :redirect
    assert_redirected_to :action => 'show', :id => 1
  end

  def test_destroy
    assert_not_nil MaintenanceRequest.find(1)

    post :destroy, :id => 1
    assert_response :redirect
    assert_redirected_to :action => 'list'

    assert_raise(ActiveRecord::RecordNotFound) {
      MaintenanceRequest.find(1)
    }
  end
end
