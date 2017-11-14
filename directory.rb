def input_students
    puts "Please enter the names of the students".center(50)
    puts "To finish, just hit return twice".center(50)
    # create an empty array
    students = []
    # get the first name
    name = gets.chomp
    # while the name is not emptym repeat this code
    while !name.empty? do
        #add the student hash to the array
        students << {name: name, cohort: :november}
        puts "Now we have #{students.count} students"
        # get another name from the user
        name = gets.chomp
    end
    #return the array of students
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
    #new puts messages to reflect the number of students, if there's just one
end
students = input_students
print_header
print(students)
print_footer(students)
