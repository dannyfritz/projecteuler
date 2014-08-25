var fs = require('fs');
var data = fs.readFileSync('triangle.dat', 'ascii');

var lines = data.split('\n').reverse()
var graph = []
for (var i in lines)
{
	var line = lines[i];
	var values = line.split(' ')
	graph[i] = []
	for (var j in values)
	{
		graph[i][j] = Number(values[j])
	}
}

for (var i in graph)
{
	var level = graph[i]
	if (i == 0)
		continue
	for (var j in level)
	{
		var j = Number(j)
		graph[i][j] += Math.max(graph[i-1][j], graph[i-1][j+1])
	}
}
console.log(graph[graph.length-1][0])