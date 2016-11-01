require 'test_helper'

class PRemindersControllerTest < ActionController::TestCase
  setup do
    @p_reminder = p_reminders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:p_reminders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create p_reminder" do
    assert_difference('PReminder.count') do
      post :create, p_reminder: { description: @p_reminder.description, genus: @p_reminder.genus, solution: @p_reminder.solution, subgenus: @p_reminder.subgenus, title: @p_reminder.title }
    end

    assert_redirected_to p_reminder_path(assigns(:p_reminder))
  end

  test "should show p_reminder" do
    get :show, id: @p_reminder
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @p_reminder
    assert_response :success
  end

  test "should update p_reminder" do
    patch :update, id: @p_reminder, p_reminder: { description: @p_reminder.description, genus: @p_reminder.genus, solution: @p_reminder.solution, subgenus: @p_reminder.subgenus, title: @p_reminder.title }
    assert_redirected_to p_reminder_path(assigns(:p_reminder))
  end

  test "should destroy p_reminder" do
    assert_difference('PReminder.count', -1) do
      delete :destroy, id: @p_reminder
    end

    assert_redirected_to p_reminders_path
  end
end
