class Student
  attr_reader :registry, :name

  def initialize(registry, name)
    @registry = registry
    @name = name
  end

  def to_s
    "#{registry}\t#{name}"
  end
end

class StudentParser
  def initialize(file_path)
    @file_path = file_path
  end
  
  def parse
    students = []
    File.foreach(@file_path) do |line|
      if line =~ /(\d{2}\/\d{7})\s+(.+)/
        registry = $1.strip
        name = $2.strip
        students << Student.new(registry, name)
      end
    end
    students
  end
end

class StudentPrinter
  def initialize(students)
    @students = students
  end

  def print_sorted
    sorted = block_given? ? yield(@students) : @students

    sorted.each do |student|
      puts "#{student.registry}\t#{student.name}"
    end
  end
end

file = "engsoft.txt"
parser = StudentParser.new(file)
students = parser.parse

puts "\nOrdenação por matrícula:"
StudentPrinter.new(students).print_sorted do |list|
  list.sort_by(&:registry)
end

puts "\nOrdenação por nome:"
StudentPrinter.new(students).print_sorted do |list|
  list.sort_by { |s| s.name.downcase }
end