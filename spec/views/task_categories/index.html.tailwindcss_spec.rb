require 'rails_helper'

RSpec.describe "task_categories/index", type: :view do
  before(:each) do
    assign(:task_categories, [
      TaskCategory.create!(
        title: "Title",
        slug: "Slug"
      ),
      TaskCategory.create!(
        title: "Title",
        slug: "Slug"
      )
    ])
  end

  it "renders a list of task_categories" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Title".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Slug".to_s), count: 2
  end
end
