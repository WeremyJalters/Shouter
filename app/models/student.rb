class Student < ActiveRecord::Base
 has_many :books
 belongs_to :user
end
