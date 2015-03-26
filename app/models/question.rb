class Question < ActiveRecord::Base
  validates :title, :presence => true
  validates :body, :presence => true
  validates :user_id, :presence => true

  has_many :responses
  belongs_to :user

  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
