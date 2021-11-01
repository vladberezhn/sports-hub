# frozen_string_literal: true

class PageController < ApplicationController
  def index
    @categories = Category.all
  end
end
