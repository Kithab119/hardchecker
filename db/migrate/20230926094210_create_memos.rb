class CreateMemos < ActiveRecord::Migration[6.1]
  def change
    create_table :memos do |t|
      t.string :title
      t.text :message
      t.integer :level
      t.text :code
      t.timestamps
    end
  end
end
