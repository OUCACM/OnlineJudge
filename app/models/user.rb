class User < ActiveRecord::Base
  attr_accessible :admin, :email, :motto, :name, :password, :solved, :submitted ,:password_confirmation

  validates :name, :presence => true, :uniqueness => {:case_sensitive => false}, :format => {:with => /\A[a-z0-9-]+\z/, :message => I18n.t('errors.messages.space_name') }, :length => {:in => 4..20}
  validates :email, :presence => true, :uniqueness => {:case_sensitive => false}, :format => {:with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/}
  validates :password ,:confirmation => true , :on => :create
  validates :motto , :length => { maximum: 500 }

  has_many  :status

  protected
  def getname
    this.name
  end

end




