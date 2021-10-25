# frozen_string_literal: true
class Subcategory < ApplicationRecord
  belongs_to :category
  validates :name, presence: true, uniqueness: true
end
