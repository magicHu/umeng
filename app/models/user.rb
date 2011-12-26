class User < ActiveRecord::Base
  
  validates :nickname, :presence => true, :uniqueness => true
  validates :imsi, :presence => true
  
  
  private 
  def check_imsi_format
    
  end
end
