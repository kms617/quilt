class CreateIndustries < ActiveRecord::Migration
  def change
    create_table :industries do |t|
      t.string :name
      t.integer :bullhorn_id
      t.string :image
    end
  end
end
