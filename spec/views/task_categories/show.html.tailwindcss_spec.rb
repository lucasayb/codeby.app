require 'rails_helper'

RSpec.describe "task_categories/show", type: :view do
  before(:each) do
    assign(:task_category, TaskCategory.create!(
      title: "Title",
      slug: "Slug"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Slug/)
  end
end
