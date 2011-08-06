window.p = (x) ->
  console.log x
  x

data = [0..5].map (x) ->
  i: x
  z: if x == 3 then 1 else 0

ol = d3.select("#html_scratch").selectAll("div")
    .data("abcdefghijk".split(""))
  .enter().append("div")
    .attr("value", (d, i) -> d)
    .style("z-index", (d, i)-> i)

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
  .attr("fill", (d) -> d.color)

