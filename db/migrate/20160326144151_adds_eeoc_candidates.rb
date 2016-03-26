class AddsEeocCandidates < ActiveRecord::Migration
  def change
    add_column :candidates, :veteran_status, :boolean
    add_column :candidates, :race, :string
    add_column :candidates, :gender, :string
    add_column :candidates, :disability_status, :boolean
  end
end
