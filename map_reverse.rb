# an array of strings, use #map to return an array of reversed strings

strings = ["string one", "second string", "third string", "last one"]

strings.map! {|letters| letters.reverse}
p strings
