class Members < ActiveRecord::Base
  has_many :contacts
  has_many :addresses
  validates :name, presence: true,
            length: { minimum: 5 }
  accepts_nested_attributes_for :contacts


  #contacts = Contact.new
  #member.contact = contacts

end
