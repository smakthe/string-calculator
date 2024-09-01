module Matcher
    # This is the regular expression which will match the input string
    # ^ asserts position at start of a line
    # This is a non-capturing group: (?:\/{2}(\[\D+|\W+|\S+\])\n)*
    # * matches the previous token between zero and unlimited times
    # \/ matches the character "/" literally
    # {2} matches the previous token exactly 2 times
    # This is the first capturing Group: (\[\D+|\W+|\S+\])
    # 1st alternative: \[\D+
    # \[ matches the character "[" literally
    # \D matches any character that's not a digit
    # + matches the previous token between one and unlimited times
    # 2nd alternative: \W+
    # \W matches any non-word character
    # + matches the previous token between one and unlimited times
    # 3rd alternative: \S+\]
    # \S matches any non-whitespace character
    # \] matches the character "]" literally
    # \n matches a newline character
    # This is the second capturing Group: ((?:\d+(?:\D+|\W+|\S+))*\d+)
    # This is a non-capturing group: (?:\d+(?:\D+|\W+|\S+))*
    # \d matches a digit
    # This is a non-capturing group: (?:\D+|\W+|\S+)
    # 1st alternative: \D+
    # 2nd alternative: \W+
    # 3rd alternative: \S+
    # $ asserts position at the end of a line
    # m: multi-line global pattern flag
    REGEXP = /^(?:\/{2}(\[\D+|\W+|\S+\])\n)*((?:\d+(?:\D+|\W+|\S+))*\d+)$/m
end