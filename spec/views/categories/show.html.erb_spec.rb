require 'rails_helper'

RSpec.describe "categories/show", type: :view do
  before(:each) do
    @category = assign(:category, create(:category, name: 'test_category1'))
  end

  it "renders attributes in <p>" do
    render
  end
end
