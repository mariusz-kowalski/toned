require 'set'

# Dummy class that does dummy things

class Person
  attr_accessor :Paddress
  attr_reader :skills

  def initialize(first_name, last_name)
    @skills = {}
    @name = [first_name, last_name]
  end

  def to_s
    if @name.first =~ /^M(o|a)[^\d]{1,3}/
      print_line true
    end
    puts "first name: #{@name.first}, last name: #{@name.last}"
  end

  def add_skills(skills = {})
    @skills.merge! skills
  end

  private

  def print_line(bold = false)
    puts (bold ? '=' : '-') * 80
  end
end

monica = Person.new 'Monica', 'Jones'
monica.address = "21 Jump Street"

monica.to_s.each { |letter| print rand(2).zero? ? letter.upcase : letter }

monica.add_skills(ruby: 5, javascript: 3)

monica.skills.each do |skill, level|
  puts "skill: #{skill}, \tlevel: #{level}"
end
