+++
title = "Cloudmesh Reservation"
date = 2018-11-24T01:41:03-05:00
draft = false

# Tags: can be used for filtering projects.
# Example: `tags = ["machine-learning", "deep-learning"]`
tags = ["Software", "Cloudmesh"]

# Project summary to display on homepage. 
summary = "A reservation framework for resources that can be reserved via a REST servics."

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
url_code = "https://github.com/cloudmesh/reservation/tree/master/reservation"
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

**Note:** This project needs improvements.

Often we find resources that are limited in nature. We desire a REST
framewor that can reserve resources and display teh reservation in a
convenient manner.


Cloudmesh Resource Reservation is being developed to create and manage
reservationsh. It is important that this is supported in a multiuser
environment. We will be developing for this a time based reservation
system in which users will have access to resources based on time
slices. This project will develop such a reservation system as a
commandline tool and also as a GUI. As a result we will
have a simple commandline tool that allows the administrator or user
to choose a reservation or query the system to find a suitable
reservation. Limits will be put in place so that users do not reserve
too many resources and block the systems while not allowing others to
use it. The system will have an abstract plugin that allows the
integration of a real bare metal provisioning. However, for this
project, we will simulate it and focus only on the management of the
reservation itself and not how they are used or how machines are
leveraged for the actual bare metal provisioning. Convenient tables
and views are developed as part of the GUI development.

```
Usage:
    reservation --rst
    reservation --version
    reservation find [all]
                     [--user=USER_ID]
                     [--label=ID]
                     [--cm_id=ID]
                     [--format=FORMAT]                             
    reservation list [--cm_id=CM_ID]
                     [--user=USER_ID]
                     [--project=PROJECT_ID]
                     [--label=STRING]
                     [--start=TIME_START]
                     [--end=TIME_END]
                     [--host=HOST]
                     [--summary=SUMMARY]
                     [--format=FORMAT]
    reservation duration [--cm_id=CM_ID]
    reservation delete [all]
                       [--cm_id=CM_ID]
                       [--user=USER_ID]
                       [--project=PROJECT_ID]
                       [--label=STRING]
                       [--start=TIME_START]
                       [--end=TIME_END]
                       [--host=HOST]
    reservation update [--cm_id=CM_ID]
                       [--user=USER_ID]
                       [--project=PROJECT_ID]
                       [--label=STRING]
                       [--start=TIME_START]
                       [--end=TIME_END]
                       [--host=HOST]
                       [--summary=SUMMARY]
                       [--cm_id=CM_ID]
	reservation add
	   --cm_id=CM_ID
		--user=USER_ID
		--project=PROJECT_ID
		--label=STRING
		--start=TIME_START
		--end=TIME_END
		--host=HOST
		--summary=SUMMARY
    reservation add --file=FILE
Options:
    --rst                 print an rst manul page
    --version             print the version
    --label=STRING        label id reservation
    --cm_id=CM_ID         reservation cloudmesh id
    --user=USER_ID        user id
    --project=PROJECT_ID  project id
    --start=TIME_START    Start time of the reservation, in
                          YYYY/MM/DD HH:MM:SS format. [default: 1901-01-01]
    --end=TIME_END        End time of the reservation, in
                          YYYY/MM/DD HH:MM:SS format. In addition a duration
                          can be specified if the + sign is the first sign.
                          The duration will than be added to
                          the start time. [default: 2100-12-31]
    --host=HOST           host number 
    --summary=SUMMARY     summary of the reservation
    --file=FILE           Adding multiple reservations from one file
    --format=FORMAT       Format is either table or jaon
                          [default: table]
```

## References

1. <https://github.com/cloudmesh/reservation>
2. <https://github.com/cloudmesh/reservation/blob/master/doc/source/introduction.rst>
