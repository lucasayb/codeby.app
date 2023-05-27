require 'rails_helper'

RSpec.describe "professional_contracts/edit", type: :view do
  let(:professional_contract) {
    ProfessionalContract.create!(
      user: nil,
      contract_time: 1,
      professional_profile: nil
    )
  }

  before(:each) do
    assign(:professional_contract, professional_contract)
  end

  it "renders the edit professional_contract form" do
    render

    assert_select "form[action=?][method=?]", professional_contract_path(professional_contract), "post" do

      assert_select "input[name=?]", "professional_contract[user_id]"

      assert_select "input[name=?]", "professional_contract[contract_time]"

      assert_select "input[name=?]", "professional_contract[professional_profile_id]"
    end
  end
end
