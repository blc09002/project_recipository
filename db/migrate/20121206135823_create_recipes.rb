class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :content
      t.string :user_id

      t.timestamps
    end
        add_index :recipes, [:user_id, :created_at]

  end
end
