class FlattenArray
  
  def self.flatten(array)
    array_present = true
    arr = array

    while array_present
      result = []
      array_present = false

      arr.each do |element|
        if element.is_a?(Array)
          array_present = true
          element.each do |e|
            result << e
          end
        elsif element != nil
          result << element
        end
      end
      arr = result
    end
    arr
  end

end
