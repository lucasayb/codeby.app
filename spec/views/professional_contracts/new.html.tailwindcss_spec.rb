require 'rails_helper'

RSpec.describe "professional_contracts/new", type: :view do
  before(:each) do
    assign(:professional_contract, ProfessionalContract.new(
      user: nil,
      contract_time: 1,
      professional_profile: nil
    ))
  end

  it "renders new professional_contract form" do
    render

    assert_select "form[action=?][method=?]", professional_contracts_path, "post" do

      assert_select "input[name=?]", "professional_contract[user_id]"

      assert_select "input[name=?]", "professional_contract[contract_time]"

      assert_select "input[name=?]", "professional_contract[professional_profile_id]"
    end
  end
end
