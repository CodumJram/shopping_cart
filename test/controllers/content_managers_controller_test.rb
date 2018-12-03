require 'test_helper'

class ContentManagersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @content_manager = content_managers(:one)
  end

  test "should get index" do
    get content_managers_url
    assert_response :success
  end

  test "should get new" do
    get new_content_manager_url
    assert_response :success
  end

  test "should create content_manager" do
    assert_difference('ContentManager.count') do
      post content_managers_url, params: { content_manager: { email: @content_manager.email, password: 'secret', password_confirmation: 'secret' } }
    end

    assert_redirected_to content_manager_url(ContentManager.last)
  end

  test "should show content_manager" do
    get content_manager_url(@content_manager)
    assert_response :success
  end

  test "should get edit" do
    get edit_content_manager_url(@content_manager)
    assert_response :success
  end

  test "should update content_manager" do
    patch content_manager_url(@content_manager), params: { content_manager: { email: @content_manager.email, password: 'secret', password_confirmation: 'secret' } }
    assert_redirected_to content_manager_url(@content_manager)
  end

  test "should destroy content_manager" do
    assert_difference('ContentManager.count', -1) do
      delete content_manager_url(@content_manager)
    end

    assert_redirected_to content_managers_url
  end
end
