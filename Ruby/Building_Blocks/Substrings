def substrings( string, dictionary )
	matches = {}
	
	dictionary.each do |word|
		string.downcase.split(" ").each do |check|
			if check.include? word
				matches[word] = matches[word].to_i + 1
			end
		end
	end
	return matches
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("Howdy partner, sit down! How's it going?", dictionary)
