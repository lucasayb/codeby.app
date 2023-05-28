require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/customer_profiles", type: :request do
  
  # This should return the minimal set of attributes required to create a valid
  # CustomerProfile. As you add validations to CustomerProfile, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      CustomerProfile.create! valid_attributes
      get customer_profiles_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      customer_profile = CustomerProfile.create! valid_attributes
      get customer_profile_url(customer_profile)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_customer_profile_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      customer_profile = CustomerProfile.create! valid_attributes
      get edit_customer_profile_url(customer_profile)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new CustomerProfile" do
        expect {
          post customer_profiles_url, params: { customer_profile: valid_attributes }
        }.to change(CustomerProfile, :count).by(1)
      end

      it "redirects to the created customer_profile" do
        post customer_profiles_url, params: { customer_profile: valid_attributes }
        expect(response).to redirect_to(customer_profile_url(CustomerProfile.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new CustomerProfile" do
        expect {
          post customer_profiles_url, params: { customer_profile: invalid_attributes }
        }.to change(CustomerProfile, :count).by(0)
      end

    
      it "renders a response with 422 status (i.e. to display the 'new' template)" do
        post customer_profiles_url, params: { customer_profile: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested customer_profile" do
        customer_profile = CustomerProfile.create! valid_attributes
        patch customer_profile_url(customer_profile), params: { customer_profile: new_attributes }
        customer_profile.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the customer_profile" do
        customer_profile = CustomerProfile.create! valid_attributes
        patch customer_profile_url(customer_profile), params: { customer_profile: new_attributes }
        customer_profile.reload
        expect(response).to redirect_to(customer_profile_url(customer_profile))
      end
    end

    context "with invalid parameters" do
    
      it "renders a response with 422 status (i.e. to display the 'edit' template)" do
        customer_profile = CustomerProfile.create! valid_attributes
        patch customer_profile_url(customer_profile), params: { customer_profile: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested customer_profile" do
      customer_profile = CustomerProfile.create! valid_attributes
      expect {
        delete customer_profile_url(customer_profile)
      }.to change(CustomerProfile, :count).by(-1)
    end

    it "redirects to the customer_profiles list" do
      customer_profile = CustomerProfile.create! valid_attributes
      delete customer_profile_url(customer_profile)
      expect(response).to redirect_to(customer_profiles_url)
    end
  end
end