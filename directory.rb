def input_students
    puts "Please enter the names of the students".center(50)
    puts "To finish, just hit return twice".center(50)
    students = []
    name = gets.gsub(/\n/, "")   #the regexp n captures the expression to be placed in array 
    while !name.empty? do
        students << {name: name, cohort: :november}
        puts "Now we have #{students.count} students"
        name = gets.gsub(/\n/, "")    #other alternatives are chop, break, delete
    end
    students
end
#and then print them
def print_header
    puts "The students of Villains Academy".center(50)
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
    puts "Overall, we have #{students.count} great students.".center(50) if students.count != 1
    puts "Overall, we have #{students.count} great student.".center(50) if students.count == 1
end
students = input_students
print_header
print(students)
print_footer(students)
