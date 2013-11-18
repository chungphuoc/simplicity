require File.dirname(__FILE__) + '/../test_helper'
require 'mt_companies_controller'

# Re-raise errors caught by the controller.
class MtCompaniesController; def rescue_action(e) raise e end; end

class MtCompaniesControllerTest < Test::Unit::TestCase
  fixtures :mt_companies

  def setup
    @controller = MtCompaniesController.new
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

    assert_not_nil assigns(:mt_companies)
  end

  def test_show
    get :show, :id => 1

    assert_response :success
    assert_template 'show'

    assert_not_nil assigns(:mt_company)
    assert assigns(:mt_company).valid?
  end

  def test_new
    get :new

    assert_response :success
    assert_template 'new'

    assert_not_nil assigns(:mt_company)
  end

  def test_create
    num_mt_companies = MtCompany.count

    post :create, :mt_company => {}

    assert_response :redirect
    assert_redirected_to :action => 'list'

    assert_equal num_mt_companies + 1, MtCompany.count
  end

  def test_edit
    get :edit, :id => 1

    assert_response :success
    assert_template 'edit'

    assert_not_nil assigns(:mt_company)
    assert assigns(:mt_company).valid?
  end

  def test_update
    post :update, :id => 1
    assert_response :redirect
    assert_redirected_to :action => 'show', :id => 1
  end

  def test_destroy
    assert_not_nil MtCompany.find(1)

    post :destroy, :id => 1
    assert_response :redirect
    assert_redirected_to :action => 'list'

    assert_raise(ActiveRecord::RecordNotFound) {
      MtCompany.find(1)
    }
  end
end
