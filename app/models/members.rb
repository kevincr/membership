class Members < ActiveRecord::Base
  has_many :contacts
  has_many :addresses

  contacts = Contact.new
  member.contact = contacts

end
