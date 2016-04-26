class ChangeArticles < ActiveRecord::Migration
  def change
    remove_column :articles, :autor_id, :reference
  end
end
