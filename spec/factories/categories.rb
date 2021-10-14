# frozen_string_literal: true

FactoryBot.define do
  factory :category do
    name { 'NHL' }
  end

  category1 = create(:category)
  category2 = create(:category, name: 'NBA')
end
