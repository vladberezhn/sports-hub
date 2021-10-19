# frozen_string_literal: true

require 'rails_helper'
require 'database_cleaner/active_record'

RSpec.describe Category, type: :model do
  before(:all) do
    DatabaseCleaner.strategy = :truncation
    DatabaseCleaner.clean

    # @category1 = create(:category)
    @category1 = category_with_subcategories
    @category2 = create(:category, name: 'NBA')
  end

  it 'should be valid' do
    expect(@category1).to be_valid
  end

  it 'should be valid' do
    expect(@category2).to be_valid
  end

  it 'subcategories should be valid' do
    expect(@category1.subcategories.length).to eq(8)
    @category1.subcategories.each do |subcategory|
      expect(subcategory).to be_valid
    end
  end
end
