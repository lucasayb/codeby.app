require 'rails_helper'

RSpec.describe "task_categories/new", type: :view do
  before(:each) do
    assign(:task_category, TaskCategory.new(
      title: "MyString",
      slug: "MyString"
    ))
  end

  it "renders new task_category form" do
    render

    assert_select "form[action=?][method=?]", task_categories_path, "post" do

      assert_select "input[name=?]", "task_category[title]"

      assert_select "input[name=?]", "task_category[slug]"
    end
  end
end
