require 'rails_helper'

RSpec.describe "subcategories/show", type: :view do
  before(:each) do
    @subcategory = assign(:subcategory, create(:subcategory, name: 'test_subcategory211'))
  end

  it "renders attributes in <p>" do
    render
  end
end
