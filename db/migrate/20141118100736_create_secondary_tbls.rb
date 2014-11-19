class CreateSecondaryTbls < ActiveRecord::Migration
  def change
    create_table :secondary_tbls do |t|
      t.string :name
      t.text :description
      t.integer :height
      t.integer :width
      t.integer :distance_starts
      t.integer :distance_ends
      t.references :masters_id, index: true

      t.timestamps
    end
  end
end
