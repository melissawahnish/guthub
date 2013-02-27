class Meal < ActiveRecord::Base
  attr_accessible :course, :cuisine, :flavor, :name, :dishes

  has_many :dishes

  belongs_to :user


end
