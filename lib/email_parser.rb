# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
# "avi@test.com, arel@test.com test@avi.com, test@arel.com"
# ["avi@test.com", "arel@test.com"]
require 'pry'
class EmailParser
  attr_accessor :emails

  def initialize emails
    @emails = emails
  end

  def parse
    email_addressses = @emails

    splat = email_addressses.split(" ").uniq
    splat.map do |email|
      if email[-1] == ","
        email.delete(",")
      else
        email
      end
    end.uniq 

  end

end
