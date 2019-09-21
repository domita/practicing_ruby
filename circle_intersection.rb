def circle_intersection(x1,y1,r1, x2, y2, r2)
  x        = x2 - x1
  y        = y2 - y1
  distance = Math.sqrt((x**2) +(y**2))

  if distance < (r1 + r2) && distance > (r1 -r2)
    puts "The circles overlap."
  end

  if distance == (r2 - r1) || distance == (r2 + r1)
    puts "The circles are tangential."
  end

end

# Task description https://tausiq.wordpress.com/2013/08/11/uab-2006-problem-2-circle-intersection/