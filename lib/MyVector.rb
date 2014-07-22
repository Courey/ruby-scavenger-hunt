require 'matrix'
class MyVector < Vector

  def total_distance(vector2)
    Math.sqrt(Math.pow((vector2[0]-self[0]), 2) + Math.pow((vector2[1] - self[1]), 2))
  end

  def self.pathlength(*paths)
    length = 0
    count = 0
    paths.each{ |line|  @length += paths[count].total_distance(line)
    count += 1
    }
    length
  end
end
