class Metter < ActiveRecord::Base
  belongs_to :program
  
  has_many :has_matter
  has_many :users, through: :has_matter
  
  after_create :save_users
  
  def users=(value)
    @users = value
  end
  
  private
  
  def save_users
        
        unless @users.nil?
            
            @users.each do |user_id|
                HasMatter.create(user_id: user_id,metter_id: self.id) #self es una instancia de article, es decir una instancia de article
            end 
        end 
  end
  
end
