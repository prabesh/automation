class Dependency < ActiveRecord::Base
  attr_accessible :dependent_id, :extension_id
  belongs_to :extension
  belongs_to :dependent, :class_name => "Extension"
end
