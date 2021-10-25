# frozen_string_literal: true
#
class Category < ApplicationRecord
  has_many :subcategories, dependent: :destroy
  validates :name, presence: true, uniqueness: true
end
