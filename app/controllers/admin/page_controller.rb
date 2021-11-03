# frozen_string_literal: true

module Admin
  class PageController < ApplicationController
    before_action :restrict_admin_access

    def index
      @categories = Category.all
    end

    private

    # display for admin role only
    def restrict_admin_access
      authorize :admin_panel, :access?
    end
  end
end
