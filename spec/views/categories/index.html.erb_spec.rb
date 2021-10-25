require 'rails_helper'

RSpec.describe "categories/index", type: :view do
  before(:each) do
    assign(:categories, [
      create(:category, name: 'test_category1'),
      create(:category, name: 'test_category2')
    ])
  end

  it "renders a list of categories" do
    render
  end
end
