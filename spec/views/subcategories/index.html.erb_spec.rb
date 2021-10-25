require 'rails_helper'

RSpec.describe "subcategories/index", type: :view do
  before(:each) do
    assign(:subcategories, [
             create(:subcategory, name: 'test_subcategory211'),
             create(:subcategory, name: 'test_subcategory212')
           ])
  end

  it "renders a list of subcategories" do
    render
  end
end
