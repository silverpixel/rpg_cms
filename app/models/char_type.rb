class CharType < ActiveRecord::Base
		belongs_to :users
		has_many :char_attrs
end
