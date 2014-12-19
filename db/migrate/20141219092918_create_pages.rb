class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :title
      t.text :description
      t.integer :account_id
      t.integer :plan_id
      t.references :site, index: true

      t.timestamps
    end
  end
end
