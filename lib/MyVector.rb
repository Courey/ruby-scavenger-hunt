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

  def <<(num)
    self[2] = num
    self
  end

  def self.calculate(vec1, vec2)
    cos_theta = ((vec1[0] * vec1[1]) + (vec2[0] * vec2[1]))/((Math.sqrt(vec1[1]**2 + vec2[1]**2)) * (Math.sqrt(vec1[0]**2 + vec2[0]**2)))

    theta = Math.acos(cos_theta)
  end

  def calculate_angle(vectorB)
    cos_theta = ((self[0] * self[1]) + (vectorB[0] * vectorB[1]))/((Math.sqrt(self[1]**2 + vectorB[1]**2)) * (Math.sqrt(self[0]**2 + vectorB[0]**2)))

    theta = Math.acos(cos_theta)
    # radians = (theta * Math::PI)/180
  end
end
