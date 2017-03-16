class CreateArticles < ActiveRecord::Migration
  
  def change
    create_table :articles do |t|
      t.string :title
      t.text :text

      t.timestamps null: false
    end
  end
  
  
  def drop
    drop_table :articles
  end
  
end
