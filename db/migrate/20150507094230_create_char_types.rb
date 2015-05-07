class CreateCharTypes < ActiveRecord::Migration
  def up
    create_table :char_types do |t|
      t.string "name", :limit => 20
      # Carrierwave gem - obavezni edit
      t.blob "avatar"
      t.timestamps
    end
  end

  def down
  	drop_table :char_types
  end

end
