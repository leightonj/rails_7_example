# frozen_string_literal: true

require "rails_helper"

RSpec.describe "users/new" do
  before do
    assign(:user, build(:user))
  end

  it "renders new user form" do
    render

    assert_select "form[action=?][method=?]", users_path, "post" do
      assert_select "input[name=?]", "user[first_name]"

      assert_select "input[name=?]", "user[last_name]"

      assert_select "input[name=?]", "user[email]"
    end
  end
end
