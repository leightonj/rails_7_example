# frozen_string_literal: true

require "rails_helper"

RSpec.describe "users/edit" do
  let(:user) { create(:user) }

  before do
    assign(:user, user)
  end

  it "renders the edit user form" do
    render

    assert_select "form[action=?][method=?]", user_path(user), "post" do
      assert_select "input[name=?]", "user[first_name]"
      assert_select "input[name=?]", "user[last_name]"
      assert_select "input[name=?]", "user[email]"
    end
  end
end
