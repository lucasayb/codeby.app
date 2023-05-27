require 'rails_helper'

RSpec.describe "proposals/new", type: :view do
  before(:each) do
    assign(:proposal, Proposal.new(
      amount: 1,
      task: nil,
      user: nil
    ))
  end

  it "renders new proposal form" do
    render

    assert_select "form[action=?][method=?]", proposals_path, "post" do

      assert_select "input[name=?]", "proposal[amount]"

      assert_select "input[name=?]", "proposal[task_id]"

      assert_select "input[name=?]", "proposal[user_id]"
    end
  end
end
