# frozen_string_literal: true

FactoryBot.define do
  factory :category do
    name { 'NFL' }
    initialize_with { Category.find_or_create_by(name: name) }
  end

  factory :subcategory do
    name { 'AFC East' }
    category
  end
end
