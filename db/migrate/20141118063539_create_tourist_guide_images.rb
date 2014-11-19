class CreateTouristGuideImages < ActiveRecord::Migration
  def change
    create_table :tourist_guide_images do |t|
      t.string :image_name
      t.string :image_createdby
      t.references :description_id, index: true

      t.timestamps
    end
  end
end
