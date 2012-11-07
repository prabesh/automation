# This class(Model) represents any extension 
# for e.g cockpit
class Extension < ActiveRecord::Base
  # Attributes that needs to be accessed meaning getter and setter are created here
  attr_accessible :name

  #Relationships Defined here
  has_many :dependencies   # Extension has dependency to other extension i.e self referential relation
  has_many :dependents, :through => :dependencies

  #Validation defined here

end
