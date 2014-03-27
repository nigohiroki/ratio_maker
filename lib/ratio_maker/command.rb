require 'ratio_maker'
require 'thor'

module RatioMaker
  class Command < Thor
    
    desc "width height ratio", "get width"
    option :round, type: :boolean, default: false
    def width(origin_width, origin_height, height)
      width = origin_width.to_i * (height.to_f/origin_height.to_f)
      p options[:round] ? width.round : width
    end

    desc "width height ratio", "get height"
    option :round, type: :boolean, default: false
    def height(origin_width, origin_height, width)
      height = origin_height.to_i * (width.to_f/origin_width.to_f)
      p options[:round] ? height.round : height
    end
  end
end
