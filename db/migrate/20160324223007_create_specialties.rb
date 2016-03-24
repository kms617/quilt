class CreateSpecialties < ActiveRecord::Migration
  def change
    create_table :specialties do |t|
      t.timestamps
      t.string :name
      t.integer :bullhorn_id
      t.integer :category_id
    end
  end
end
