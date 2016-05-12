class AddNewsLinkToAdminNews < ActiveRecord::Migration
  def change
    add_column :admin_news, :news_link, :string
  end
end
