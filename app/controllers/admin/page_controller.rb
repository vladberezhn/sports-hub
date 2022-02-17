# frozen_string_literal: true

module Admin
  class PageController < ApplicationController
    before_action :restrict_admin_access

    def index
      @categories = Category.all
      @pagy, @users = pagy(User.all)

      @test_solution = solution(2)

      @active_users = User.active

      @category = Category.find(21)
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

    def solution(n)
      return (1..n).inject { |sum, n| sum + (n * n + 1) }
      #
      # Test.assert_equals(validate_pin(""),false)
      #     Test.assert_equals(validate_pin("1"),false)
      #     Test.assert_equals(validate_pin("1111"),true)
      #     Test.assert_equals(validate_pin("123456"),true)
      #     Test.assert_equals(validate_pin("1234567890"),false)
      #     Test.assert_equals(validate_pin("12"),false)
    end
  end
end
