require 'rails_helper'

RSpec.describe "professional_profiles/index", type: :view do
  before(:each) do
    assign(:professional_profiles, [
      ProfessionalProfile.create!(
        user: nil,
        cv: "Cv"
      ),
      ProfessionalProfile.create!(
        user: nil,
        cv: "Cv"
      )
    ])
  end

  it "renders a list of professional_profiles" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Cv".to_s), count: 2
  end
end
