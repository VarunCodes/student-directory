def interactive_menu
  students = []
  loop do
    # 1. print the menu and ask the user what to do
    puts "1. Input the students"
    puts "2. Show the students"
    puts "9. Exit" # 9 because we'll be adding more items
    # 2. read the input and save it into a variable
    selection = gets.chomp
    # 3. do what the user has asked
    case selection
    when "1"
      students = input_students
    when "2"
      print_header
      print(students)
      print_footer(students)
    when "9"
      exit # this will cause the program to terminate
    else
      puts "I don't know what you meant, try again"
    end
  end
end
def input_students
    puts "Please enter the names of the students".center(50)
    puts "To finish, just hit return twice".center(50)
    students = []
    name = gets.gsub(/\n/, "") 
    while !name.empty? do
        students << {name: name, cohort: :november}
        puts "Now we have #{students.count} students"
        name = gets.gsub(/\n/, "") 
    end
    students
end
#and then print them
def print_header
    puts "The students of Makers Academy".center(50)
    puts "-------------".center(50)
end
def print(students)
    #if student[:name].start_with?("a") 
    #if student[:name].size < 12 
    index = 0
    until index == students.length  
        student = students[index]
        puts "#{index+1}. #{student[:name]} (#{student[:cohort]} cohort)".center(50)
        index += 1  
    end
end
def print_footer(students)
    if students.count == 0  # if statement to determine if students array is empty
        puts "No students to be found!".center(50)
    else
        puts "Overall, we have #{students.count} great students.".center(50) if students.count != 1
        puts "Overall, we have #{students.count} great student.".center(50) if students.count == 1
    end
end
interactive_menu
students = input_students