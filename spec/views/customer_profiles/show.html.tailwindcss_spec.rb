require 'rails_helper'

RSpec.describe "customer_profiles/show", type: :view do
  before(:each) do
    assign(:customer_profile, CustomerProfile.create!(
      user: nil,
      name: "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Name/)
  end
end
