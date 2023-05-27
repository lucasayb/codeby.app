require 'rails_helper'

RSpec.describe "proposals/index", type: :view do
  before(:each) do
    assign(:proposals, [
      Proposal.create!(
        amount: 2,
        task: nil,
        user: nil
      ),
      Proposal.create!(
        amount: 2,
        task: nil,
        user: nil
      )
    ])
  end

  it "renders a list of proposals" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
