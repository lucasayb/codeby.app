require 'rails_helper'

RSpec.describe "professional_contracts/index", type: :view do
  before(:each) do
    assign(:professional_contracts, [
      ProfessionalContract.create!(
        user: nil,
        contract_time: 2,
        professional_profile: nil
      ),
      ProfessionalContract.create!(
        user: nil,
        contract_time: 2,
        professional_profile: nil
      )
    ])
  end

  it "renders a list of professional_contracts" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
