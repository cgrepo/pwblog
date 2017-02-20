require 'test_helper'

class CodeTasksControllerTest < ActionController::TestCase
  setup do
    @code_task = code_tasks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:code_tasks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create code_task" do
    assert_difference('CodeTask.count') do
      post :create, code_task: { description: @code_task.description, done: @code_task.done, title: @code_task.title, user_id: @code_task.user_id }
    end

    assert_redirected_to code_task_path(assigns(:code_task))
  end

  test "should show code_task" do
    get :show, id: @code_task
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @code_task
    assert_response :success
  end

  test "should update code_task" do
    patch :update, id: @code_task, code_task: { description: @code_task.description, done: @code_task.done, title: @code_task.title, user_id: @code_task.user_id }
    assert_redirected_to code_task_path(assigns(:code_task))
  end

  test "should destroy code_task" do
    assert_difference('CodeTask.count', -1) do
      delete :destroy, id: @code_task
    end

    assert_redirected_to code_tasks_path
  end
end
