+++
title = "Cloudmesh Batch"
date = 2018-11-24T01:41:03-05:00
draft = false

# Tags: can be used for filtering projects.
# Example: `tags = ["machine-learning", "deep-learning"]`
tags = ["Software", "Cloudmesh"]

# Project summary to display on homepage. 
summary = "A python interface to HPC batch systems."

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
url_code = "https://github.com/cloudmesh/pbs"
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

**Note: project needs update to newer version of cmd, eg. cmd5**

Cloudmesh PBS provides an easy mechanism to interface with queuing
systems. It integrates nicely with cmd3 and therefore provides a
convenient shell and commandline interface.

The advantage of Cloudmesh PBS is that it can start pbs jobs on remote
machines while using job templates to do so. Jobs submitted with
Cloudmesh PBS are entered in a local database and their status on the
remote machines can be monitored. Thus even if the job disappears from
the queuing system either due to system issues or because they are
long finished a record of it is maintained. In addition to the cmd3
commandshell we provide a simple python API. A REST interface is being
developed.
