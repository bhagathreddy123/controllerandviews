class AddDescriptionToSubjects < ActiveRecord::Migration[6.0]
  def change
    add_column :subjects, :description, :text
  end
end
