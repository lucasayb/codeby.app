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

RSpec.describe "/task_categories", type: :request do
  
  # This should return the minimal set of attributes required to create a valid
  # TaskCategory. As you add validations to TaskCategory, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      TaskCategory.create! valid_attributes
      get task_categories_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      task_category = TaskCategory.create! valid_attributes
      get task_category_url(task_category)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_task_category_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      task_category = TaskCategory.create! valid_attributes
      get edit_task_category_url(task_category)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new TaskCategory" do
        expect {
          post task_categories_url, params: { task_category: valid_attributes }
        }.to change(TaskCategory, :count).by(1)
      end

      it "redirects to the created task_category" do
        post task_categories_url, params: { task_category: valid_attributes }
        expect(response).to redirect_to(task_category_url(TaskCategory.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new TaskCategory" do
        expect {
          post task_categories_url, params: { task_category: invalid_attributes }
        }.to change(TaskCategory, :count).by(0)
      end

    
      it "renders a response with 422 status (i.e. to display the 'new' template)" do
        post task_categories_url, params: { task_category: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested task_category" do
        task_category = TaskCategory.create! valid_attributes
        patch task_category_url(task_category), params: { task_category: new_attributes }
        task_category.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the task_category" do
        task_category = TaskCategory.create! valid_attributes
        patch task_category_url(task_category), params: { task_category: new_attributes }
        task_category.reload
        expect(response).to redirect_to(task_category_url(task_category))
      end
    end

    context "with invalid parameters" do
    
      it "renders a response with 422 status (i.e. to display the 'edit' template)" do
        task_category = TaskCategory.create! valid_attributes
        patch task_category_url(task_category), params: { task_category: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested task_category" do
      task_category = TaskCategory.create! valid_attributes
      expect {
        delete task_category_url(task_category)
      }.to change(TaskCategory, :count).by(-1)
    end

    it "redirects to the task_categories list" do
      task_category = TaskCategory.create! valid_attributes
      delete task_category_url(task_category)
      expect(response).to redirect_to(task_categories_url)
    end
  end
end
