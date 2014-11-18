class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :image_name
      t.references :description_id, index: true

      t.timestamps
    end
  end
end
