class CreateCharAttrs < ActiveRecord::Migration
  def up
    create_table :char_attrs do |t|
      t.integer "char_type_id"
      t.string "att_name", :limit => 15
      t.integer "value"
      # Carrierwave gem - obavezni edit
      #t.blob "att_icon"
      t.timestamps
    end
    add_index("char_attrs", "char_type_id")
  end
end
