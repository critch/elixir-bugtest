# BugTest

This is to show an odd behaviour found while looking at porcelain. This should be about as simple as I could make this example.

## Installation

1. Clone from github.
2. Cd into project
3. mix deps.get
4. mix deps.compile
5. mix release
6. cd rel/bugtest
7. bin/bugtest install
8. bin/bugtest console  # Should run fine, will loop and show a message
9. bin/bugtest start    # crashes while searching for the goon binary
