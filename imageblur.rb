 class Image
  attr_reader :blurred_image
  
  def initialize(image)
    @image = image   
  end

  def output_image
    @image.each do |image|
      puts image.join
    end
  end
end

   
image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
])
puts "imageblur 1"
image.output_image




