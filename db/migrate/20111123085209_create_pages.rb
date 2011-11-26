class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :name
      t.string :title
      t.text   :content

      t.timestamps
    end

    add_index :pages, :name, :unique => true
  end
end

