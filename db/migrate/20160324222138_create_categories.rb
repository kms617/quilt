class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.timestamps
      t.string :name
      t.string :bullhorn_id
    end
  end
end
