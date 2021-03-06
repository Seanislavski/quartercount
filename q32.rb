require 'rubygems'
#require 'json'
#require 'pry'

=begin
Objective:
    Program which I can easily keep track of my state quarter collection
=end

buffer = File.read('q1.txt')
check_states = File.read('q2.rb')
#p buffer

class State
  attr_accessor :state
    def initialize
      @state = gets()
      end
    def year_old(year)
      @year = year
    end
end

#print "Do you have a new quarter?"
print "Do you have a new quarter? "

haveNew = gets()

if haveNew.chomp.downcase == "yes" or haveNew.chomp.downcase == "y" then
  print "Which state? "
  newb = State.new
  newQuarter = newb.instance_variable_get(:@state).chomp
  mission = 0

else
  puts "You said '" + haveNew.chomp + "', so we'll stop here"
  exit
end

  if buffer.downcase.include? newQuarter.downcase
    puts "You already have it"
  elsif
  if ! check_states.downcase.include? newQuarter.downcase
      puts "Nice try, but that's not even real."
      exit
  elsif
    #p newQuarter
    buffer << newQuarter.capitalize
    File.open("q1.txt", "w+") do |i|
      i.puts(buffer)
    end

    puts "I have stored it for you, Dave"
    end
puts "Press Enter to Continue"
gets #takes Enter

count = File.foreach("q1.txt").inject(0) {|c, line| c+1}
#File.read("q1.txt", "r")
puts "You have " + count.to_s + " state quarters!"

if count <= 50 then
  amount_left = 50 - count
  puts "That's " + amount_left.to_s + " to go!"

elsif count > 50 then
  puts "There are only 50 though!"
else
  puts "You got 'em all!"
end
end
