class Zombie < ActiveRecord::Base
  attr_accessible :age, :bio, :name, :decomp
  has_one :brain, dependent: :destroy
  has_many :assignments
  has_many :roles, through: :assignments
  # after_save :decomp_change_notification, if: :decomp_changed?


  def as_json(options = nil)
  	super(options ||
  			{include: :brain, except: [:created_at, :updated_at, :id]})
  end
  
  # private

  # def decomp_change_notification
  # 	ZombieMailer.decomp_change(self).deliver
  # end
end
