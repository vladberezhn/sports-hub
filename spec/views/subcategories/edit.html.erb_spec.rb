require 'rails_helper'

RSpec.describe "subcategories/edit", type: :view do
  before(:each) do
    @subcategory = assign(:subcategory, create(:subcategory, name: 'test_subcategory211'))
  end
end
