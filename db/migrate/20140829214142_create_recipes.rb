class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.column :name, :string
      t.column :instructions, :text
      
      t.timestamps
    end
  end
end
