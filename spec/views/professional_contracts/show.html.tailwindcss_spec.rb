require 'rails_helper'

RSpec.describe "professional_contracts/show", type: :view do
  before(:each) do
    assign(:professional_contract, ProfessionalContract.create!(
      user: nil,
      contract_time: 2,
      professional_profile: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/2/)
    expect(rendered).to match(//)
  end
end
