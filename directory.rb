def input_students
    puts "Please enter the names of the students"
    puts "To finish, just hit return twice"
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
    puts "The students of Villains Academy"
    puts "-------------"
end
def print(students)
    #if student[:name].start_with?("a") 
    #if student[:name].size < 12 
    index = 0
    until index == students.length  
    #until loop runs until the index matches length of the students array
        student = students[index]
        puts "#{index+1}. #{student[:name]} (#{student[:cohort]} cohort)"
        #using {index +1} so the index begins at 1 instead of 0
        index += 1   #until loop iterates over index
    end
end
def print_footer(students)
    puts "Overall, we have #{students.count} great students."
end
students = input_students
print_header
print(students)
print_footer(students)
