require_relative '../../db/config'
class Contact <  ActiveRecord::Base
# implement your Contact model here
VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z][a-z]+\z/i
validates :email uniqueness: true, presence: true, :format => {with: }

VALID_PHONE_NUMBER = /\(?\d{3}\)?-?\s?\d{3}\-\d{4}/
validates :phone, presence: true, :format => {with: VALID_PHONE_NUMBER}

validates :company, presence: true {message: 'Must have a company'}

def name
  self[:first_name] + " " + self[:last_name]
end

def area_code
  self[:phone].match(/^\(?\d{3}\)?/)[0]
end

end
