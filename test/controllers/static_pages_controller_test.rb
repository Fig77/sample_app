require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

test "should get root" do
 get "http://localhost:3000/"
 assert_response :success
end

 test "should get home" do
  get static_pages_home_url
  assert_response :success
  assert_select "title", "Home | Ruby on Rails Tutorial#{@base_title}"
 end

 test "should get help" do
  get static_pages_help_url
  assert_response :success
  assert_select "title", "Help | Ruby on Rails Tutorial#{@base_title}"
 end

 test "should get about" do
  get static_pages_about_url
  assert_response :success
  assert_select "title", "About | Ruby on Rails Tutorial#{@base_title}"
 end

 test "should get contact" do
  get static_pages_about_url
  assert_response :success
  assert_select "title", "Contact | Ruby on Rails Tutorial#{@base_title}"
 end
end
