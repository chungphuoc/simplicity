require File.dirname(__FILE__) + '/../test_helper'
require 'shared_documents_controller'

# Re-raise errors caught by the controller.
class SharedDocumentsController; def rescue_action(e) raise e end; end

class SharedDocumentsControllerTest < Test::Unit::TestCase
  fixtures :shared_documents

  def setup
    @controller = SharedDocumentsController.new
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

    assert_not_nil assigns(:shared_documents)
  end

  def test_show
    get :show, :id => 1

    assert_response :success
    assert_template 'show'

    assert_not_nil assigns(:shared_document)
    assert assigns(:shared_document).valid?
  end

  def test_new
    get :new

    assert_response :success
    assert_template 'new'

    assert_not_nil assigns(:shared_document)
  end

  def test_create
    num_shared_documents = SharedDocument.count

    post :create, :shared_document => {}

    assert_response :redirect
    assert_redirected_to :action => 'list'

    assert_equal num_shared_documents + 1, SharedDocument.count
  end

  def test_edit
    get :edit, :id => 1

    assert_response :success
    assert_template 'edit'

    assert_not_nil assigns(:shared_document)
    assert assigns(:shared_document).valid?
  end

  def test_update
    post :update, :id => 1
    assert_response :redirect
    assert_redirected_to :action => 'show', :id => 1
  end

  def test_destroy
    assert_not_nil SharedDocument.find(1)

    post :destroy, :id => 1
    assert_response :redirect
    assert_redirected_to :action => 'list'

    assert_raise(ActiveRecord::RecordNotFound) {
      SharedDocument.find(1)
    }
  end
end
