class User < ActiveRecord::Base
  belongs_to :editorial
  before_save :up_full_name
  
  def full_name
  	paternal.to_s + " " + maternal.to_s + " " + name.to_s
  end
  def up_full_name
  	self.name = self.name.upcase
  	self.paternal = self.paternal.upcase
	self.maternal = self.maternal.upcase
  end
end
