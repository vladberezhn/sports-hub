# frozen_string_literal: true
class Subcategory < ApplicationRecord
  belongs_to :category
  validates :name, presence: true
  validates :name, uniqueness: true
end
