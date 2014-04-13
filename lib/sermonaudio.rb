
require "sermonaudio/version"     # Always require version
require "savon"                   # Everything depends on the Savon gem. Require it right away.
require "sermonaudio/exceptions"    # For exceptions

# Load Sermonaudio specific files
require "sermonaudio/configuration"
require "sermonaudio/client"

# omitting sermon.rb and finder.rb since their methods can be digested by client
# require "sermonaudio/sermon"
# require "sermonaudio/finder"

module SermonAudio; end
