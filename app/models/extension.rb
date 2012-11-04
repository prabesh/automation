class Extension < ActiveRecord::Base
  attr_accessible :name

  has_many :dependencies
  has_many :dependents, :through => :dependencies

end
