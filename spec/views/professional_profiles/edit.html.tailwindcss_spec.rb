require 'rails_helper'

RSpec.describe "professional_profiles/edit", type: :view do
  let(:professional_profile) {
    ProfessionalProfile.create!(
      user: nil,
      cv: "MyString"
    )
  }

  before(:each) do
    assign(:professional_profile, professional_profile)
  end

  it "renders the edit professional_profile form" do
    render

    assert_select "form[action=?][method=?]", professional_profile_path(professional_profile), "post" do

      assert_select "input[name=?]", "professional_profile[user_id]"

      assert_select "input[name=?]", "professional_profile[cv]"
    end
  end
end
