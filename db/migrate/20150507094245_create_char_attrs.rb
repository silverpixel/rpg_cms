class CreateCharAttrs < ActiveRecord::Migration
  def up
    create_table :char_attrs do |t|
      t.string "att_name", :limit => 15
      t.integer "value"
      # Carrierwave gem - obavezni edit
      t.blob "att_icon"
      t.timestamps
    end
  end

  def down
  	drop_table :char_attrs
  end

end
