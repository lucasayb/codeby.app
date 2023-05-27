require 'rails_helper'

RSpec.describe "proposals/edit", type: :view do
  let(:proposal) {
    Proposal.create!(
      amount: 1,
      task: nil,
      user: nil
    )
  }

  before(:each) do
    assign(:proposal, proposal)
  end

  it "renders the edit proposal form" do
    render

    assert_select "form[action=?][method=?]", proposal_path(proposal), "post" do

      assert_select "input[name=?]", "proposal[amount]"

      assert_select "input[name=?]", "proposal[task_id]"

      assert_select "input[name=?]", "proposal[user_id]"
    end
  end
end
