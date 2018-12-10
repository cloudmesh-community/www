+++
title = "Cloudmesh Inventory"
date = 2018-11-24T01:41:03-05:00
draft = false

# Tags: can be used for filtering projects.
# Example: `tags = ["machine-learning", "deep-learning"]`
tags = ["Software", "Cloudmesh"]

# Project summary to display on homepage. 
summary = "Simple tool to manage a number of resources."

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
url_code = "https://github.com/cloudmesh/cloudmesh.inventory"
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

We have two frameworks for an inventory. We like to reevaluate them
and merge them into a single framework. Framework A allows to define
arbitrary attributes which is more general

## Inventory - A

<https://github.com/cloudmesh/cloudmesh.inventory>

Sometimes its necessary to maintain a simple inventory. Naturally if
you know python you can do this with dicts. However to manage a large
number of items with repeated values its is of advantage to do this
from the commandline.

We have written such a tool that lets you easily manage the resources
in a table format.

## Inventory - B

<https://github.com/cloudmesh/inventory>

This is an older system that was developed for managing Futuresystems
resources at Indiana University. 




## References

1. <https://github.com/cloudmesh/cloudmesh.inventory>
2. <https://github.com/cloudmesh/inventory>
