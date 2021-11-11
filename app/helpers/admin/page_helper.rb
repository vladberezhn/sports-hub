module Admin::PageHelper
  def block_user_href(user_id)
    "/admin/block/#{user_id}"
  end

  def activate_user_href(user_id)
    "/admin/activate/#{user_id}"
  end
end
