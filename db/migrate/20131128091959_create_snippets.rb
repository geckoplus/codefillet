class CreateSnippets < ActiveRecord::Migration
  def change
    create_table :snippets do |t|
      t.text :content
      t.references :code_fillet, index: true

      t.timestamps
    end
  end
end
