class CreateMemos < ActiveRecord::Migration[5.2]
  def change
    create_table :memos do |t|
      t.string :title
      t.string :image
      t.text :body
      t.text :memo

      t.timestamps
    end
  end
end
