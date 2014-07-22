class Distance < Vector
  def initialize(x, y)
    @vector1 = Vector[x, y]
  end

  def total_distance(vector2)
    Math.sqrt(Math.pow((vector2[0]-vector1[0]), 2) + Math.pow((vector2[1] - vector1[1]), 2))
  end

end
