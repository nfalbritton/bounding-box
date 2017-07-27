class BoundingArea

  def initialize(boxes)
    @boxes = boxes
  end

  def boxes_contain_point?(x,y)
    @boxes.each do |box|
      if box.contains_point?(x,y)
        return true
      end
    end
    return false
  end
end
