require 'rails_helper'

RSpec.describe "customer_profiles/new", type: :view do
  before(:each) do
    assign(:customer_profile, CustomerProfile.new(
      user: nil,
      name: "MyString"
    ))
  end

  it "renders new customer_profile form" do
    render

    assert_select "form[action=?][method=?]", customer_profiles_path, "post" do

      assert_select "input[name=?]", "customer_profile[user_id]"

      assert_select "input[name=?]", "customer_profile[name]"
    end
  end
end
