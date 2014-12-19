class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|
      t.string :title
      t.text :description
      t.integer :account_id
      t.integer :plan_id

      t.timestamps
    end
  end
end
