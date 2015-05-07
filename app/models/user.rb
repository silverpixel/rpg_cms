class User < ActiveRecord::Base
	has_many :char_types
end
