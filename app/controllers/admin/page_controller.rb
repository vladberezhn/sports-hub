# frozen_string_literal: true

module Admin
  class PageController < ApplicationController
    before_action :admin_page_display

    def index
      @categories = Category.all
    end

    private

    def admin_page_display
      # page display for admin role only
      authorize :page, :admin_list?
    end
  end
end
