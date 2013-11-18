require File.dirname(__FILE__) + '/../test_helper'
require 'contact_people_controller'

# Re-raise errors caught by the controller.
class ContactPeopleController; def rescue_action(e) raise e end; end

class ContactPeopleControllerTest < Test::Unit::TestCase
  fixtures :contact_people

  def setup
    @controller = ContactPeopleController.new
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

    assert_not_nil assigns(:contact_people)
  end

  def test_show
    get :show, :id => 1

    assert_response :success
    assert_template 'show'

    assert_not_nil assigns(:contact_person)
    assert assigns(:contact_person).valid?
  end

  def test_new
    get :new

    assert_response :success
    assert_template 'new'

    assert_not_nil assigns(:contact_person)
  end

  def test_create
    num_contact_people = ContactPerson.count

    post :create, :contact_person => {}

    assert_response :redirect
    assert_redirected_to :action => 'list'

    assert_equal num_contact_people + 1, ContactPerson.count
  end

  def test_edit
    get :edit, :id => 1

    assert_response :success
    assert_template 'edit'

    assert_not_nil assigns(:contact_person)
    assert assigns(:contact_person).valid?
  end

  def test_update
    post :update, :id => 1
    assert_response :redirect
    assert_redirected_to :action => 'show', :id => 1
  end

  def test_destroy
    assert_not_nil ContactPerson.find(1)

    post :destroy, :id => 1
    assert_response :redirect
    assert_redirected_to :action => 'list'

    assert_raise(ActiveRecord::RecordNotFound) {
      ContactPerson.find(1)
    }
  end
end
