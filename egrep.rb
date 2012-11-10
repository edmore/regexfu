#! /usr/bin/env ruby

def evaluate( expression, description )
  puts description + "\n" + "[ Regex:  " + expression + " ] "
  system "egrep '#{expression}' supadupafile.txt"
end

evaluate '[Gg]r[ae]y', '# Test character classes'

evaluate '</?H[1-6]>', '# Extracting some HTML using range within character class'

evaluate '^[a-z0-9]@[a-z].[a-z]', '# Character classes represent one character'

evaluate '01.12.82', '# Dot matches any character; can be too forgiving at times'

evaluate '^(From|Subject):', '# Alternatives'

evaluate '(Fir|1)st [Ss]treet', '# More alternatives'

evaluate '(First|1st) (S|s)treet', '# More readable maybe?'
