# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  attr_accessor

  def initialize (email)
    @email=email
  end


  def parse
    email_list=@email.split(/[ ,]/)
    email_list=email_list.select do |email|
      email != ""
    end
    email_list.uniq
  end

end
