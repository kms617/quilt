  class AddBullhornIdToRecruiter < ActiveRecord::Migration
  def change
    change_table(:recruiters) do |t|
      t.integer :bullhorn_id
    end
  end
end
