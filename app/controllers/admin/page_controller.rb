# frozen_string_literal: true

module Admin
  class PageController < ApplicationController
    def index
      @categories = Category.all
    end
  end
end
