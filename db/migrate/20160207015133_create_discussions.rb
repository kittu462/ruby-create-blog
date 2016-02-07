class CreateDiscussions < ActiveRecord::Migration
  def change
    create_table :discussions do |t|
      t.string :commenter
      t.text :body
      t.references :post, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
