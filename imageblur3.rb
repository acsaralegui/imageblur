ruby imageblur3.#!/usr/bin/env ruby -wKU class Apple

class Image

  
  def initialize(image)
    @image = image
    @row_length = image.length
    @col_length = image[0].length   
  end

  def output_image
    @image.each do |row|
      row.each do |pixel|
        print pixel, ' '
      end 
      puts    
    end 
  end 

  def blur(row_index, col_index)
    # we are at the upper left corner
    @image[row_index -1][col_index] = 1 unless row_index == 0
     # we are at the upper right corner
    @image[row_index +1][col_index] = 1 unless row_index >= @row_length-1
     # we are at the lower left corner
    @image[row_index][col_index -1] = 1 unless col_index == 0
    # we are at the lower right corner
    @image[row_index][col_index +1] = 1 unless col_index >= @col_length-1
  end

  def ones
    one_pixel = []

    @image.each_with_index do |row_array, row_index|
        row_array.each_with_index do |cell, col_index|
        if cell == 1
          one_pixel << [row_index, col_index]
        end
      end
    end    
    one_pixel  
  end


  def transform
    image_coords = ones

    image_coords.each do |x, y|
      blur(x, y)
    end  
  end
end


image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
])

image.output_image
puts "imageblur 3"
image.transform
image.output_image