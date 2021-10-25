class CreateAdminArticles < ActiveRecord::Migration[6.1]
  def change
    create_table :admin_articles do |t|

      t.timestamps
    end
  end
end
