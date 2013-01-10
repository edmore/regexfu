#! /usr/bin/env ruby

def evaluate( expression, description )
  puts description + " ... " + "\n" + "[ Regex:  " + expression + " ] "
  system "egrep '#{expression}' `find . -name \"*.txt\"`"
end

puts "File(s) used for regex matching:" + "\n" + `find . -name \"*.txt\"`

evaluate '[Gg]r[ae]y', '# Test character classes'

evaluate '</?H[1-6]>', '# Extracting some HTML using range within character class'

evaluate '^[a-z0-9]@[a-z].[a-z]', '# Character classes represent one character'

evaluate '01.12.82', '# Dot matches any character; can be too forgiving at times'

evaluate '^(From|Subject):', '# Alternatives'

evaluate '(Fir|1)st [Ss]treet', '# More alternatives'

evaluate '(First|1st) (S|s)treet', '# More readable maybe?'

evaluate '\<cat\>', '# Word boundaries'

evaluate '\<cat', '# Words starting with a particular string'

evaluate '\<[Cc]at', '# Word boundaries and character class'

evaluate '[Cc]olou?r', '# Optional [?], zero or one'

evaluate '(gr)?eat', '# More use of optionals'

evaluate '[^r]eat', '# Character class with negation [^]'

evaluate '\<(gr)?eat\>', '# Optional [?] + parenthesis + word boundary '

evaluate '\<gr(e)+t\>', '# One or more (+)'

evaluate '[Cc]olou{0,1}r', '# Optional [?] === interval {0,1}, zero or one'

evaluate '\<the +the\>', '# Match any words that repeat regardless of blanks'

evaluate '([A-Za-z]+) +\1', '# Match any words that match parentheses using backreferences'

evaluate '\([A-Za-z]+\)', '# Match special characters as literals'

evaluate '"[^"]*"', '# Match anything within quotes or just an empty quote'

evaluate '[-0-9]', "# Match a literal dash or a range of digits"

evaluate '([1-9]|1[012]):[0-5][0-9] (am|pm)', "# 12 hour time"

evaluate '((0|1)[0-9]|2[0-3]):[0-5][0-9]', "# 24 hour time"

