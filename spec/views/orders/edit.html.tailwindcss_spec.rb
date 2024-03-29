require 'rails_helper'

RSpec.describe "orders/edit", type: :view do
  let(:order) {
    Order.create!(
      user: nil,
      amount: 1,
      proposal: nil,
      task: nil
    )
  }

  before(:each) do
    assign(:order, order)
  end

  it "renders the edit order form" do
    render

    assert_select "form[action=?][method=?]", order_path(order), "post" do

      assert_select "input[name=?]", "order[user_id]"

      assert_select "input[name=?]", "order[amount]"

      assert_select "input[name=?]", "order[proposal_id]"

      assert_select "input[name=?]", "order[task_id]"
    end
  end
end
