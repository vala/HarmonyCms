class CreateHarmonyCmsPages < ActiveRecord::Migration
  def change
    create_table :harmony_cms_pages do |t|
      t.string :title
      t.text :content
      t.integer :parent_id
      t.integer :template_id

      t.timestamps
    end
  end
end
