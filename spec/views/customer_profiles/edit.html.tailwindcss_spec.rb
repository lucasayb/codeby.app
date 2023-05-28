require 'rails_helper'

RSpec.describe "customer_profiles/edit", type: :view do
  let(:customer_profile) {
    CustomerProfile.create!(
      user: nil,
      name: "MyString"
    )
  }

  before(:each) do
    assign(:customer_profile, customer_profile)
  end

  it "renders the edit customer_profile form" do
    render

    assert_select "form[action=?][method=?]", customer_profile_path(customer_profile), "post" do

      assert_select "input[name=?]", "customer_profile[user_id]"

      assert_select "input[name=?]", "customer_profile[name]"
    end
  end
end
