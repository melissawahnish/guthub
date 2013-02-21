class Meal < ActiveRecord::Base
  attr_accessible :course, :cuisine, :flavor, :name

  has_many :dishes
end
