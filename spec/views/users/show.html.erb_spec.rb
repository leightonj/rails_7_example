# frozen_string_literal: true

require "rails_helper"

RSpec.describe "users/show" do
  before do
    assign(:user, create(:user, first_name: "Tom", last_name: "Jones", email: "tom@jones.com"))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Tom/)
    expect(rendered).to match(/Jones/)
    expect(rendered).to match(/tom@jones.com/)
  end
end
