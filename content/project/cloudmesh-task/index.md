+++
title = "Cloudmesh Task"
date = 2018-11-24T01:41:03-05:00
draft = false

# Tags: can be used for filtering projects.
# Example: `tags = ["machine-learning", "deep-learning"]`
tags = ["Software", "Cloudmesh"]

# Project summary to display on homepage. 
summary = "A simple python library to execute shell commands on remote computers either in sequence or in parallel.."

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
url_code = "https://github.com/cloudmesh/task"
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

# task

Often you may want to execute a number of commands in parallel. This
project shows an example on how to do this easily with Celery. 

Our example creates a task that executes a shell command remotely on a
machine. However, this is just an example you can realy create other
tasks as you please.

One of the issues is how to easily stage such tasks with a number of
given parameters. To make the passing uniform, we pass all arguments
via kwargs.

In our example we simply devined a function such as::

```
@app.task
def cm_ssh(host, username, command):
    result = ssh("{0}@{1}".format(username, host), command)
    return str(result)
``

In our main program we can than call it with our Sequential or
parallel constructs such as 


from cloudmesh_task.parallel import Parallel, Sequential::

```
  hosts = ["server1.futuregrid.org",
           "server2.futuregrid.org",
           "server3.futuregrid.org",
           "server4.futuregrid.org"]

  result = Sequential(hosts, cm_ssh, 
                      username="gvonlasz", 
                      command="qstat")

  result = Parallel(hosts, cm_ssh, 
                    username="gvonlasz", 
                    command="qstat")
```

The first command executes the task sequentially over the array given
in the first parameter. The second one executes it in parallel


First start in one terminal the celery server::

```
  cm-task.py start
```

In a second version start the test program::

```
  python prg.py
```
