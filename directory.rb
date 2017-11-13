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
    students.each_with_index do |student, index|
        if student[:name].start_with?("a") 
            if student[:name].size < 12  
            #if statement which finds students whose names are < 12 characters
                puts "#{index}. #{student[:name]} (#{student[:cohort]} cohort)" 
            end
        end
    end
end
def print_footer(students)
    puts "Overall, we have #{students.count} great students."
end
students = input_students
print_header
print(students)
print_footer(students)
