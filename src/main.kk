struct size
  w: int
  h: int

struct tiled-map
  size: size

fun main()
  val map = Tiled-map(Size(5, 3))
  for(0, map.size.h - 1) fn(y)
    val row = repeat("#", map.size.w)
    println(row)
  println("Hello, rogue!")
