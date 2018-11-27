+++
title = "Scientific Impact Analysis of XSEDE"
date = 2018-11-26T14:20:03-05:00
draft = true

# Tags: can be used for filtering projects.
# Example: `tags = ["machine-learning", "deep-learning"]`
tags = ["Software", "scientific impact", "metrics", "data analysis"]

# Project summary to display on homepage.
summary = "Scientific Impact"

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

We are evaluating XSEDE's scientific impact using the bibliographical approach.
This project involves getting publications related to XSEDE, vetting them and
externally verifying them with a third-party source, e.g., Google Scholar, Web
of Science, or Microsoft Academic Graph. We then retrieve the citation count for
each vetted publications, and while correlating with XSEDE entities (user, project,
organization, Field of Study, etc.) we calculate the scientific impact metrics (
number of publications, citation count, h-index, g-index, etc.) for the entities [1].
This process are updated regularly at a monthly basis so the impact metrics are
always updated. Furthermore the availability of the historical data makes it possible
that we see the historical trends of the impact metrics.
The results are presented via a scientific impact portal [4] and also integrated into
the XDMoD portal [5]. The results are reported to NSF at quarterly basis.

Based on these data and other related dataset we curated, we were also able to conduct
some other analysis, e.g., the peer comparison study of XSEDE publications versus their
peers published in the same journal issues [2][3]; and the Field Weighted Citation Impact 
(FWCI) for XSEDE publications [3].

Refs:

[1] F. Wang, G. von Laszewski, G. C. Fox, T. R. Furlani, R. L. DeLeon, S. M. Gallo, "Towards a Scientific Impact
Measuring Framework for Large Computing Facilities - a Case Study on XSEDE", to appear in Proceedings of the
Conference on Extreme Science and Engineering Discovery Environment: Gateway to Discovery (XSEDE '14),
Atlanta, Georgia, July 13 - 18, 2014.
[3] Fugang Wang, Gregor von Laszewski, Timothy Whitson, Geoffrey C. Fox, Thomas R. Furlani, Robert L. DeLeon, 
and Steven M. Gallo. 2018. Evaluating the Scientific Impact of XSEDE. In Proceedings of the Practice and 
Experience on Advanced Research Computing (PEARC '18). ACM, New York, NY, USA, Article 10, 8 pages. 
DOI: https://doi.org/10.1145/3219104.3219124
[2] Gregor von Laszewski, Fugang Wang, Geoffrey C. Fox, David L. Hart, Thomas R. Furlani, Robert L. DeLeon,
Steven M. Gallo, “Peer comparison of XSEDE and NCAR publication data”, IEEE Custer Computing, Sep. 2015,
Chicago IL, USA
[4] https://sciimp.ccr.xdmod.org/xdportalpub/overview
[5] https://xdmod.ccr.buffalo.edu/