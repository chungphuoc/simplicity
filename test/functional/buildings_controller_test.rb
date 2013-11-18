require File.dirname(__FILE__) + '/../test_helper'
require 'buildings_controller'

# Re-raise errors caught by the controller.
class BuildingsController; def rescue_action(e) raise e end; end

class BuildingsControllerTest < Test::Unit::TestCase
  fixtures :buildings

  def setup
    @controller = BuildingsController.new
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

    assert_not_nil assigns(:buildings)
  end

  def test_show
    get :show, :id => 1

    assert_response :success
    assert_template 'show'

    assert_not_nil assigns(:building)
    assert assigns(:building).valid?
  end

  def test_new
    get :new

    assert_response :success
    assert_template 'new'

    assert_not_nil assigns(:building)
  end

  def test_create
    num_buildings = Building.count

    post :create, :building => {}

    assert_response :redirect
    assert_redirected_to :action => 'list'

    assert_equal num_buildings + 1, Building.count
  end

  def test_edit
    get :edit, :id => 1

    assert_response :success
    assert_template 'edit'

    assert_not_nil assigns(:building)
    assert assigns(:building).valid?
  end

  def test_update
    post :update, :id => 1
    assert_response :redirect
    assert_redirected_to :action => 'show', :id => 1
  end

  def test_destroy
    assert_not_nil Building.find(1)

    post :destroy, :id => 1
    assert_response :redirect
    assert_redirected_to :action => 'list'

    assert_raise(ActiveRecord::RecordNotFound) {
      Building.find(1)
    }
  end
end
