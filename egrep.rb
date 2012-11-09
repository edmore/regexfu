#! /usr/bin/env ruby

def evaluate( expression )
  system "egrep '#{expression}' supadupafile.txt"
end

# Test character classes
evaluate '[Gg]r[ae]y'
# Extracting some HTML using range within character class
evaluate '</?H[1-6]>'
# Character classes represent one character
evaluate '^[a-z0-9]@[a-z].[a-z]'
# Dot matches any character; can be too forgiving at times
evaluate '01.12.82'
# Alternatives
evaluate '^(From|Subject):'
