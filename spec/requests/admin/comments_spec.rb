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

RSpec.describe "/admin/comments", type: :request do
  
  # Admin::Comment. As you add validations to Admin::Comment, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Admin::Comment.create! valid_attributes
      get admin_comments_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      comment = Admin::Comment.create! valid_attributes
      get admin_comment_url(admin_comment)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_admin_comment_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      comment = Admin::Comment.create! valid_attributes
      get edit_admin_comment_url(admin_comment)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Admin::Comment" do
        expect {
          post admin_comments_url, params: { admin_comment: valid_attributes }
        }.to change(Admin::Comment, :count).by(1)
      end

      it "redirects to the created admin_comment" do
        post admin_comments_url, params: { admin_comment: valid_attributes }
        expect(response).to redirect_to(admin_comment_url(@admin_comment))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Admin::Comment" do
        expect {
          post admin_comments_url, params: { admin_comment: invalid_attributes }
        }.to change(Admin::Comment, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post admin_comments_url, params: { admin_comment: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested admin_comment" do
        comment = Admin::Comment.create! valid_attributes
        patch admin_comment_url(admin_comment), params: { admin_comment: new_attributes }
        comment.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the admin_comment" do
        comment = Admin::Comment.create! valid_attributes
        patch admin_comment_url(admin_comment), params: { admin_comment: new_attributes }
        comment.reload
        expect(response).to redirect_to(admin_comment_url(comment))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        comment = Admin::Comment.create! valid_attributes
        patch admin_comment_url(admin_comment), params: { admin_comment: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested admin_comment" do
      comment = Admin::Comment.create! valid_attributes
      expect {
        delete admin_comment_url(admin_comment)
      }.to change(Admin::Comment, :count).by(-1)
    end

    it "redirects to the admin_comments list" do
      comment = Admin::Comment.create! valid_attributes
      delete admin_comment_url(admin_comment)
      expect(response).to redirect_to(admin_comments_url)
    end
  end
end
