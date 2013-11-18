require File.dirname(__FILE__) + '/../test_helper'
require 'building_owner_controller'

# Re-raise errors caught by the controller.
class BuildingOwnerController; def rescue_action(e) raise e end; end

class BuildingOwnerControllerTest < Test::Unit::TestCase
  def setup
    @controller = BuildingOwnerController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new
  end

  # Replace this with your real tests.
  def test_truth
    assert true
  end
end
