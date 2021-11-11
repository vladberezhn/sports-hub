module Admin::PageHelper
  def block_or_activate_user_link(user)
    unless user.role.eql?('admin')
      if user.account_active?
        link_to('Block', admin_block_user_url(user.id))
      else
        link_to('Activate', admin_activate_user_url(user.id))
      end
    end
  end
end
