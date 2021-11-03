# frozen_string_literal: true

module Admin
  class PageController < ApplicationController
    def index
      admin_list
      @categories = Category.all
    end

    def admin_list
      authorize User
    end
  end
end
