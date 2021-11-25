# frozen_string_literal: true

class CustomMailer < ApplicationMailer
  default from: 'sportshub@localhost.com'

  def block_email
    @user = params[:user]
    @url = ActionMailer::Base.default_url_options[:host]
    mail(to: @user.email, subject: 'Your account has been blocked')
  end
end
