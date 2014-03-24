require 'ratio_maker'
require 'thor'

module RatioMaker
  class Command < Thor
    desc "width height ratio", "get width"
    def width(origin_width, origin_height, height)
      p origin_width.to_i * (height.to_f/origin_height.to_f)
    end

    desc "width height ratio", "get height"
    def height(origin_width, origin_height, width)
      p origin_height.to_i * (width.to_f/origin_width.to_f)
    end
  end
end
