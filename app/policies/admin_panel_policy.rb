class AdminPanelPolicy < Struct.new(:user, :admin_panel)
  def access?
    user.admin?
  end
end
