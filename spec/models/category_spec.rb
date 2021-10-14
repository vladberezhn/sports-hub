# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Category, type: :model do
  before(:all) do
    @category1 = create(:category)
    # @category2 = create(:category, name: 'NBA')
  end

  it 'should be valid' do
    expect(@category1).to be_valid
  end
end
