class Grant < ActiveRecord::Base
	has_many :tasks
end
