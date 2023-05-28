require 'rails_helper'

RSpec.describe "customer_profiles/index", type: :view do
  before(:each) do
    assign(:customer_profiles, [
      CustomerProfile.create!(
        user: nil,
        name: "Name"
      ),
      CustomerProfile.create!(
        user: nil,
        name: "Name"
      )
    ])
  end

  it "renders a list of customer_profiles" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
  end
end
