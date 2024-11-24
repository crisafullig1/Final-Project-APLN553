

file="TS_lyrics"


stopwords=("ooh" "oh" "ah" "ahh" "whoa" "na" "la" "uh" "huh" "ohh" "doo" "mm" "mmm" "woo" "ba" "da" "hey" "yeah" "i" "you" "all" "the" "to" "me" "a" "in" "it" "my" "your" "of" "but" "that" "im" "all" "like" "on" "was" "we" "be" "is" "this" "so" "its" "dont" "just" "never" "for" "with" "were" "and" "when" "youre" "if" "what" "at" "are" "id" "ive" "did" "not") 

tr 'A-Z' 'a-z' < "$file" | sed 's/[^a-z ]//g' | tr ' ' '\n' | sort | grep -v '^$' > TS_cleaned 

for word in "${stopwords[@]}"; do
	grep -v -w "$word" "TS_cleaned" > temp && mv temp "TS_cleaned"
done




