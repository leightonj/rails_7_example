# frozen_string_literal: true

require "rails_helper"

RSpec.describe "users/show" do
  before do
    assign(:user,
           User.create!(first_name: "First Name", last_name: "Last Name", email: "email@test.com",
                        password: "Password01!*!"))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Email/)
  end
end
