class Member < ActiveRecord::Base
  has_many :contacts
  has_many :addresses
  validates :name, presence: true,
            length: { minimum: 5 }


  contacts = Contact.new
  #member.contact = contacts

end
