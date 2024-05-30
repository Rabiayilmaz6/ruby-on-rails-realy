class CreateArticles < ActiveRecord::Migration[7.1]
  def change
    create_table :articles do |t|
      t.string :title, null: false
      t.text :content, default: "content will be here"
      t.integer :status, default: 0, null: false

      t.timestamps
    end
  end
end