#! /usr/bin/env ruby

def evaluate( expression )
  system "egrep '#{expression}' supadupafile.txt"
end

# Test character classes
evaluate '[Gg]r[ae]y'
# More testing
evaluate '^(From|Subject):'
# Extracting some HTML using range within character class
evaluate '<H[1-2]>'
# Character classes represent one character
evaluate '^[a-z0-9]@[a-z].[a-z]'
