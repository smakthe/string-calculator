module Matcher
    # This is the regular expression which will match the input string:
    # ^ asserts position at start of a line
    # Non-capturing group: (?:\/{2}(\[\D+|\W+|\S+\])\n)*
    # * matches the previous token between zero and unlimited times
    # \/ matches the character / literally
    # {2} matches the previous token exactly 2 times
    # 1st Capturing Group: (\[\D+|\W+|\S+\])
    # 1st Alternative: \[\D+
    # \[ matches the character [ literally
    # \D matches any character that's not a digit
    # + matches the previous token between one and unlimited times
    # 2nd Alternative: \W+
    # \W matches any non-word character
    # + matches the previous token between one and unlimited times
    # 3rd Alternative: \S+\]
    # \S matches any non-whitespace character
    # \] matches the character ] literally
    # \n matches a newline character
    # 2nd Capturing Group: ((?:\d+(?:\D+|\W+|\S+))*\d+)
    # Non-capturing group: (?:\d+(?:\D+|\W+|\S+))*
    # \d matches a digit
    # Non-capturing group: (?:\D+|\W+|\S+)
    # 1st Alternative: \D+
    # 2nd Alternative: \W+
    # 3rd Alternative: \S+
    # $ asserts position at the end of a line
    # Global pattern flag m: multi line
    REGEXP = /^(?:\/{2}(\[\D+|\W+|\S+\])\n)*((?:\d+(?:\D+|\W+|\S+))*\d+)$/m
end