class CreateDescriptions < ActiveRecord::Migration
  def change
    create_table :descriptions do |t|
      t.text :description
      t.references :master_id, index: true

      t.timestamps
    end
  end
end
