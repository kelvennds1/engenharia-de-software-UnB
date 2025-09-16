class Class
  def attr_accessor_with_history(attr_name)
    attr_name = attr_name.to_s
    attr_reader attr_name
    attr_reader attr_name+"_history"
    
    class_eval %Q{
      def #{attr_name}=(value)
        @#{attr_name}_history ||= [nil]
        
        @#{attr_name} = value
        
        @#{attr_name}_history << value
      end
    }
  end
end

class Foo
  attr_accessor_with_history :bar
end
f = Foo.new
f.bar = 1
f.bar = 2
print(f.bar_history) # => if your code works, should be [nil,1,2]