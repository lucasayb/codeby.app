require 'rails_helper'

RSpec.describe "task_categories/edit", type: :view do
  let(:task_category) {
    TaskCategory.create!(
      title: "MyString",
      slug: "MyString"
    )
  }

  before(:each) do
    assign(:task_category, task_category)
  end

  it "renders the edit task_category form" do
    render

    assert_select "form[action=?][method=?]", task_category_path(task_category), "post" do

      assert_select "input[name=?]", "task_category[title]"

      assert_select "input[name=?]", "task_category[slug]"
    end
  end
end
