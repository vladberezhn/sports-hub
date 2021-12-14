class User < ApplicationRecord
  scope :active, -> { where(blocked_at: nil) }

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

  enum role: [:user, :admin]

  def account_active?
    blocked_at.nil?
  end

  def active_for_authentication?
    super && account_active?
  end

  def inactive_message
    account_active? ? super : :locked
  end

  def set_as_blocked
    self.blocked_at = Time.now.strftime('%Y-%m-%d %H:%M:%S')
  end

  def set_as_activated
    self.blocked_at = ''
  end

  after_initialize do
    if self.new_record?
      self.role ||= :user
    end
  end
end
