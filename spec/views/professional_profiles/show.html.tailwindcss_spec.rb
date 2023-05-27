require 'rails_helper'

RSpec.describe "professional_profiles/show", type: :view do
  before(:each) do
    assign(:professional_profile, ProfessionalProfile.create!(
      user: nil,
      cv: "Cv"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Cv/)
  end
end
