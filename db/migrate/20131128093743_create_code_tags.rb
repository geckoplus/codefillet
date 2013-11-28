class CreateCodeTags < ActiveRecord::Migration
  def change
    create_table :code_tags do |t|
      t.references :code_fillet, index: true
      t.references :tag, index: true

      t.timestamps
    end
  end
end
