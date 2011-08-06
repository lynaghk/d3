require("./../../lib/env-js/envjs/node");
require("./../../lib/sizzle/sizzle");
require("./../../d3");

var svg = d3.select("body").append("svg:svg")
    .style("border", "1px solid black");

console.log("constant style:");
console.log("  ", document.body.innerHTML);
console.log("");

d3.select("body").selectAll("div")
    .data("abcdefghijk".split(""))
  .enter().append("div")
    .style("z-index", function(d, i) { return i; });


console.log("function style:");
d3.selectAll("div").each(function() {
  var d = d3.select(this);
  console.log("  ", d.style("z-index"));
});
console.log("");

d3.select("body").selectAll("div").remove();

svg.style({
  width: null,
  height: null,
  left: "10",
  top: function() { return 20; }
});

console.log("map style:");
console.log("  ", document.body.innerHTML);
console.log("");

svg.style(function() {
  return {
    foo: "foo",
    bar: 42,
    left: null,
    top: null
  };
});

console.log("map function style:");
console.log("  ", document.body.innerHTML);
console.log("");
