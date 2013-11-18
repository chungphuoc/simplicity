require File.dirname(__FILE__) + '/../test_helper'
require 'building_units_controller'

# Re-raise errors caught by the controller.
class BuildingUnitsController; def rescue_action(e) raise e end; end

class BuildingUnitsControllerTest < Test::Unit::TestCase
  fixtures :building_units

  def setup
    @controller = BuildingUnitsController.new
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

    assert_not_nil assigns(:building_units)
  end

  def test_show
    get :show, :id => 1

    assert_response :success
    assert_template 'show'

    assert_not_nil assigns(:building_unit)
    assert assigns(:building_unit).valid?
  end

  def test_new
    get :new

    assert_response :success
    assert_template 'new'

    assert_not_nil assigns(:building_unit)
  end

  def test_create
    num_building_units = BuildingUnit.count

    post :create, :building_unit => {}

    assert_response :redirect
    assert_redirected_to :action => 'list'

    assert_equal num_building_units + 1, BuildingUnit.count
  end

  def test_edit
    get :edit, :id => 1

    assert_response :success
    assert_template 'edit'

    assert_not_nil assigns(:building_unit)
    assert assigns(:building_unit).valid?
  end

  def test_update
    post :update, :id => 1
    assert_response :redirect
    assert_redirected_to :action => 'show', :id => 1
  end

  def test_destroy
    assert_not_nil BuildingUnit.find(1)

    post :destroy, :id => 1
    assert_response :redirect
    assert_redirected_to :action => 'list'

    assert_raise(ActiveRecord::RecordNotFound) {
      BuildingUnit.find(1)
    }
  end
end
