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
    @category3 = create(:category, name: 'MLB')
    @category4 = create(:category, name: 'NHL')
    @category5 = create(:category, name: 'CBB')
    @category6 = create(:category, name: 'CFB')
    @category7 = create(:category, name: 'Nascar')
    @category8 = create(:category, name: 'Golf')
    @category9 = create(:category, name: 'Soccer')
    @category10 = create(:category, name: 'Team Hub')
    @category11 = create(:category, name: 'Lifestyle')
    @category12 = create(:category, name: 'Dealbook')
    @category13 = create(:category, name: 'Video')
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

  it 'should be valid' do
    expect(@category3).to be_valid
  end

  it 'should be valid' do
    expect(@category4).to be_valid
  end

  it 'should be valid' do
    expect(@category5).to be_valid
  end

  it 'should be valid' do
    expect(@category6).to be_valid
  end

  it 'should be valid' do
    expect(@category7).to be_valid
  end

  it 'should be valid' do
    expect(@category8).to be_valid
  end

  it 'should be valid' do
    expect(@category9).to be_valid
  end

  it 'should be valid' do
    expect(@category10).to be_valid
  end

  it 'should be valid' do
    expect(@category11).to be_valid
  end

  it 'should be valid' do
    expect(@category12).to be_valid
  end

  it 'should be valid' do
    expect(@category13).to be_valid
  end
end
