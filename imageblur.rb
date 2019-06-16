
class Image
  attr_reader :blurred_image
  
  def initialize(image_array)
    if image_array.empty?
      puts "Your image is empty"
    end
    @image_array = image_array
      
  end
  
  def output_image
    @image_array.each do |element|   
      element.each do |sub_element|
        print sub_element             
      end
      puts
    end
  end

  def blur(distance)
    
    distance.times do      
      blur_image            
    end
    
    
  end   
  
  def image_length                
    @image_array.length
  end

  def row_length                  
    @image_array[0].length
  end
  
end     
    
image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
])

puts "imageblur"
image.output_image
puts