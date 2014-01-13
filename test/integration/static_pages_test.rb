require 'test_helper'
require 'capybara/rails'
require 'rspec-rails'
require 'rspec/rails'

include Capybara::DSL # Adding this line solved the error
Capybara.default_driver = :selenium


class StaticPagesTest < ActionDispatch::IntegrationTest
  test "Static Pages" do
    visit "/"
    get "/"
    assert_response :success
    assert page.has_content?("HBA Memberships")
  end

  test "New Members" do
    visit new_member_path
    expect{ fill_in 'Name', with: "My Company"
            check 'member_is_member'
            check 'member_active'
            #fill_in 'office', with: "555-3324"
            #fill_in 'mobile', with: "555-7888"
            click_button "Save Member" }

            page.should have_content "Sucessfully created member My Company."
            #within 'h1' do page.should have_content "John Smith"
    #page.should have_content "home 555-1234"
    #page.should have_content "office 555-3324"
    #page.should have_content "mobile 555-7888"

  end


end

