# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'
class EmailAddressParser
  attr_reader :address_str

  def initialize(address_str)
    @address_str = address_str
  end

  def parse
    address_str.split(/, | /).uniq
  end
end


email_addresses = "john@doe.com, person@somewhere.org john@doe.com"
parser = EmailAddressParser.new(email_addresses)

parser.parse
