def extract_student_info(file)
  
  File.open(file,"r") do |file|
    file.each_line do |line|
      if line =~ /(\d{2}\/\d{7})\s+(.+)/
        registry = $1.strip
        name = $2.strip
        puts "#{registry}\t#{name}"
      end
    end
  end
end

file = "engsoft.txt"

extract_student_info(file)