window.p = (x) ->
  console.log x
  x

data = [0..5].map (x) ->
  i: x
  z: if x == 3 then 1 else 0

ol = d3.select("#html_scratch")
  .append("ol")

ol.selectAll("li")
  .data(data)
  .enter()
  .append("li")
  #  .sort((a, b) -> b.z - a.z)
  .zindex((d) -> d.z)
  .text((d) -> "#{d.i} has z-index: #{d.z}")



svg_data = ["red", "green", "blue"].map (x, i) ->
  color: x
  z: if i == 0 then 1 else 0


w = 200
svg = d3.select("#svg_scratch").append("svg:svg")
  .attr("width", w)
  .attr("height", w)

svg.selectAll("circle")
  .data(svg_data)
  .enter()
  .append("svg:circle")
  .attr("r", 50)
  .attr("cx", w/2)
  .attr("cy", w/2)
  .zindex((d) -> d.z)
  .attr("fill", (d) -> d.color)

