class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :title
      t.string :link
      t.text :content

      t.timestamps
    end
  end
end
