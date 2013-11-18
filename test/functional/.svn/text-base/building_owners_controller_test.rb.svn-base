require File.dirname(__FILE__) + '/../test_helper'
require 'building_owners_controller'

# Re-raise errors caught by the controller.
class BuildingOwnersController; def rescue_action(e) raise e end; end

class BuildingOwnersControllerTest < Test::Unit::TestCase
  fixtures :building_owners

  def setup
    @controller = BuildingOwnersController.new
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

    assert_not_nil assigns(:building_owners)
  end

  def test_show
    get :show, :id => 1

    assert_response :success
    assert_template 'show'

    assert_not_nil assigns(:building_owner)
    assert assigns(:building_owner).valid?
  end

  def test_new
    get :new

    assert_response :success
    assert_template 'new'

    assert_not_nil assigns(:building_owner)
  end

  def test_create
    num_building_owners = BuildingOwner.count

    post :create, :building_owner => {}

    assert_response :redirect
    assert_redirected_to :action => 'list'

    assert_equal num_building_owners + 1, BuildingOwner.count
  end

  def test_edit
    get :edit, :id => 1

    assert_response :success
    assert_template 'edit'

    assert_not_nil assigns(:building_owner)
    assert assigns(:building_owner).valid?
  end

  def test_update
    post :update, :id => 1
    assert_response :redirect
    assert_redirected_to :action => 'show', :id => 1
  end

  def test_destroy
    assert_not_nil BuildingOwner.find(1)

    post :destroy, :id => 1
    assert_response :redirect
    assert_redirected_to :action => 'list'

    assert_raise(ActiveRecord::RecordNotFound) {
      BuildingOwner.find(1)
    }
  end
end
