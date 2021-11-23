# frozen_string_literal: true

module Admin
  class PageController < ApplicationController
    before_action :restrict_admin_access

    def index
      @categories = Category.all
      @pagy, @users = pagy(User.all)
    end

    def block_user
      @user = User.find(params[:id])
      @user.set_as_blocked
      if @user.save
        CustomMailer.with(user: @user).block_email.deliver_later
        redirect_to admin_url, notice: 'User has been blocked.'
      else
        redirect_to admin_url, notice: 'Something went wrong, try again.'
      end
    end

    def activate_user
      @user = User.find(params[:id])
      @user.set_as_activated
      if @user.save
        redirect_to admin_url, notice: 'User has been activated.'
      else
        redirect_to admin_url, notice: 'Something went wrong, try again.'
      end
    end

    private

    # display for admin role only
    def restrict_admin_access
      authorize :admin_panel, :access?
    end
  end
end
