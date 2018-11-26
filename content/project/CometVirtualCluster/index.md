+++
title = "Virtual Cluster on Comet"
date = 2018-11-26T14:40:03-05:00
draft = true

# Tags: can be used for filtering projects.
# Example: `tags = ["machine-learning", "deep-learning"]`
tags = ["Software", "virtual cluster", "cloud", "HPC"]

# Project summary to display on homepage.
summary = "Comet VC"

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
url_code = ""
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

Virtual cluster on Comet is a project to provide a virtual cluster to HPC users on
Comet resources in on-demand fashion [1]. This marries the cloud computing usage scenario
and the traditional HPC resources. On one hand, it provides a fully user-controlled
cluster with totally customizable OS and software and service stacks; on another hand,
this is built on top of HPC environment so users get a close-to-baremetal experience
with regards to the performance.

The projects consists of a set of backend configuration scripts; a comet nucleus API;
and a client side tool - cloudmesh comet - to enable users' interaction with the system.

Since the inception of the project, we had ~15 different groups that used this feature.

We are also working on providing a templated environment for dbGaP researchers, in which
we provide customized configurations on top of preset dgGaP images, based on the common
Comet VC feature, to provide dbGaP researchers a computing environemnt that meets
the usage guidance of dbGaP data [2].

Refs:
[1] Rick Wagner, Philip Papadopoulos, Dmitry Mishin, Trevor Cooper, Mahidhar Tatineti, Gregor von Laszewski,
Fugang Wang, and Geoffrey C. Fox. 2016. User Managed Virtual Clusters in Comet. In Proceedings of the
XSEDE16 Conference on Diversity, Big Data, and Science at Scale (XSEDE16). ACM, New York, NY, USA
[2] https://osp.od.nih.gov/scientific-sharing/genomic-data-sharing/