require "rails_helper"

RSpec.describe ProfessionalContractsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/professional_contracts").to route_to("professional_contracts#index")
    end

    it "routes to #new" do
      expect(get: "/professional_contracts/new").to route_to("professional_contracts#new")
    end

    it "routes to #show" do
      expect(get: "/professional_contracts/1").to route_to("professional_contracts#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/professional_contracts/1/edit").to route_to("professional_contracts#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/professional_contracts").to route_to("professional_contracts#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/professional_contracts/1").to route_to("professional_contracts#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/professional_contracts/1").to route_to("professional_contracts#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/professional_contracts/1").to route_to("professional_contracts#destroy", id: "1")
    end
  end
end
