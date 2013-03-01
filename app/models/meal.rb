class Meal < ActiveRecord::Base
  attr_accessible :course, :cuisine, :flavor, :name, :dishes_attributes

  validates :name, :presence => true, :length => {:minimum => 5, :maximum => 20}, :uniqueness => true
  validates :course, :presence => true, :inclusion => {:in => %w(dinner breakfast lunch supper brunch)} 
  validates :dishes, :presence => true validates_associated :dishes
  	
  has_many :dishes

  belongs_to :user
  accepts_nested_attributes_for :dishes


end
