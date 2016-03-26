class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.integer :bullhorn_id
      t.integer :candidate_id
    end
  end
end
