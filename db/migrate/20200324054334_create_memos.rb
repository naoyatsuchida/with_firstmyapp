class CreateMemos < ActiveRecord::Migration[5.2]
  def change
    create_table :memos do |t|
      t.string :title
      t.text :image
      t.text :body
      t.text :memomemo

      t.timestamps
    end
  end
end
