require 'test_helper'
require 'capybara/rails'
include Capybara::DSL # Adding this line solved the error
Capybara.default_driver = :selenium

class StaticPagesTest < ActionDispatch::IntegrationTest
  test "Static Pages" do
    visit "/"
    get "/"
    assert_response :success
    assert page.has_content("HBA Membership")
  end
end

