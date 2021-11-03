class PagePolicy < Struct.new(:user, :page)
  def admin_list?
    user.admin?
  end
end
