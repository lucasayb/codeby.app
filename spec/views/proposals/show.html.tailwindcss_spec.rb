require 'rails_helper'

RSpec.describe "proposals/show", type: :view do
  before(:each) do
    assign(:proposal, Proposal.create!(
      amount: 2,
      task: nil,
      user: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
