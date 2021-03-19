class DropTableUsers < ActiveRecord::Migration[6.0]
  def change
    drop_table :actions do |t|
      t.integer :genre_id , null: false
      t.string :title , null: false
      t.text :content , null: false
      t.text :inpression , null: false
      t.references :user, null: false , foreign_key: true
      
      t.timestamps
    end    
  end
end
