# frozen_string_literal: true

FactoryBot.define do
  factory :category do
    name { 'NHL' }
  end

  factory :subcategory do
    name { 'NHC South' }
    category
  end
end

def category_with_subcategories
  FactoryBot.create(:category) do |category|
    FactoryBot.create(:subcategory, category: category)
    FactoryBot.create(:subcategory, name: 'NHC North', category: category)
  end
end
