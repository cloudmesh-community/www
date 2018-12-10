+++
title = "Cloudmesh Cmd5"
date = 2018-11-24T01:41:03-05:00
draft = false

# Tags: can be used for filtering projects.
# Example: `tags = ["machine-learning", "deep-learning"]`
tags = ["Software", "Cloudmesh"]

# Project summary to display on homepage. 
summary = "A Python module to easily create dynamic command shells from docopts enabled plugins."

# Slides (optional).
#   Associate this page with Markdown slides.
#   Simply enter your slide deck's filename without extension.
#   E.g. `slides = "example-slides"` references 
#   `content/slides/example-slides.md`.
#   Otherwise, set `slides = ""`.
slides = ""

# Optional external URL for project (replaces project detail page).
external_link = ""

# Links (optional).
url_pdf = ""
url_code = "https://github.com/cloudmesh/cloudmesh.cmd5"
url_dataset = ""
url_project = ""
url_slides = ""
url_video = ""
url_poster = ""

# Custom links (optional).
#   Uncomment line below to enable. For multiple links, use the form `[{...}, {...}, {...}]`.
# url_custom = [{icon_pack = "fab", icon="twitter", name="Follow", url = "https://twitter.com"}]

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder. 
[image]
  # Caption (optional)
  caption = "Image caption"

  # Focal point (optional)
  # Options: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight
  focal_point = ""
+++


An dynamically extensible CMD based command shell.

An example for the bar command is presented at:

https://github.com/cloudmesh/cloudmesh.bar/blob/master/cloudmesh/bar/command/bar.py
It shows how simple the command definition is (bar.py)::

```
from __future__ import print_function
from cloudmesh.shell.command import command
from cloudmesh.shell.command import PluginCommand

class BarCommand(PluginCommand):

    @command
    def do_bar(self, args, arguments):
        """
        ::
       
          Usage:
                command -f FILE
                command FILE
                command list
          This command does some useful things.
          Arguments:
              FILE   a file name
          Options:
              -f      specify the file
        """
        print(arguments)
```
		
An important difference to other CMD solutions is that our commands
can leverage (besides the standrad definition), docopts as a way to
define the manual page. This allows us to use arguments as dict and
use simple if conditions to interpret the command. Using docopts has
the advantage that contributors are forced to think about the command
and its options and document them from the start. Previously we used
not to use docopts and argparse was used. However we noticed that for
some contributions the lead to commands that were either not properly
documented or the developers delivered ambiguous commands that
resulted in confusion and wrong ussage by the users. Hence, we do
recommend that you use docopts.

The transformation is enabled by the `@`command decorator that takes
also the manual page and creates a proper help message for the shell
automatically. Thus there is no need to introduce a sepaarte help
method as would normally be needed in CMD.


