class Applicant < ActiveRecord::Base
  has_many :external_posts, dependent: :destroy

  # validates_formatting_of :email
  validates :fullname, presence: true

end
