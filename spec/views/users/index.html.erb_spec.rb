# frozen_string_literal: true

require "rails_helper"

RSpec.describe "users/index" do
  before do
    assign(:users, [
             User.create!(
               first_name: "First Name",
               last_name: "Last Name",
               email: "email@test.com",
               password: "PAssword01!*!"
             ),
             User.create!(
               first_name: "First Name",
               last_name: "Last Name",
               email: "email2@test.com",
               password: "PAssword01!*!"
             )
           ])
  end

  it "renders a list of users" do
    render
    cell_selector = Rails::VERSION::STRING >= "7" ? "div>p" : "tr>td"
    assert_select cell_selector, text: Regexp.new("First Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Last Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Email".to_s), count: 2
  end
end
