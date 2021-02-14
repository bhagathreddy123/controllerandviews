class CreatePages < ActiveRecord::Migration[6.0]
  def change
    create_table :pages do |t|
      t.string :name
      t.string :permalink
      t.integer :position
      t.text :content
      t.boolean :visible
      t.belongs_to :subject, null: false, foreign_key: true

      t.timestamps
    end
  end
end
