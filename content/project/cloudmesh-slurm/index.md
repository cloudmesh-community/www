+++
title = "Cloudmesh Virtual Slurm Cluster"
date = 2018-11-24T01:41:03-05:00
draft = false

# Tags: can be used for filtering projects.
# Example: `tags = ["machine-learning", "deep-learning"]`
tags = ["Software", "Cloudmesh"]

# Project summary to display on homepage. 
summary = "An virtual cluster deployment managed with Slurm to use it for batch processing in clouds."

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
url_code = "https://github.com/cloudmesh/cluster"
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

**Note:** We like to update this project to

  * use python instead of shell scripts and
  * use cloudmesh client instead of Euca tools to manage virtual machines
  * use kubernetes in addition to vms whch we want to integrate in
    cloudmesh so this is automatically provided.

Slurm is a workload manager used in clusters and supercomputers.
Virtual Slurm is a tool to help manage slurm deployment in cloudmesh
This project also includes installation of hadoop

The following commands are added to cloudmesh on setting up this project
	slurm
	hadoop

The Slurm command gives the following options:

`slurm info GROUPNAME`

*	This command displays the IP of master node and state of worker nodes

`slurm deploy GROUPNAME LOGINNAME`

*	This command can be used to deploy slurm in a group (Specify the login name used to create the group)

`slurm delete GROUPNAME`

* This command can be used to delete a group form the database
  Note: This does not delete the actual cluster, it just deletes its entries in database

The hadoop command give the following options:

`hadoop info GROUPNAME`

*	This command displays the IP of master node

`hadoop deploy GROUPNAME LOGINNAME`

*	This command can be used to deploy slurm in a group (Specify the login name used to create the group)

`hadoop delete GROUPNAME`

* This command can be used to delete a group form the database
  note: This does not delete the actual cluster, it just deletes its entries in database
