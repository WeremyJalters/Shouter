class Student < ActiveRecord::Base
 has_many :books
 belongs_to :user
 has_many :lessons
end
