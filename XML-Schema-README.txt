I describe a XML schema for storing tag-based mark-up of electronic medical records.

Purpose:
Retrospective chart reviews have long been a part of medical research. In its original form, individual patient data are collected and their aggregate outcomes calculated. Multiple prognostic factors are also recorded, and statistical analysis is performed to determine if they have any significance in affecting the outcomes of interest. I propose to build a system which facilitates this process in an electronic fashion, with automation applied wherever possible, to improve the speed of conducting such research. The XML schema for storing such information is described here.

The basic element must include a date and an info type descriptor. For extensibility concerns, the info type descriptor need not be limited to a predefined list. This element describes an event at a fixed timepoint, including OPD records, imaging scans, lab tests, or arbitrarily inserted records. 

Children elements includes more detailed info, preferably separated into specific child elements if possible. 

One special child element is the markup, or comment. This is analogous to a post-it note taped to a page of the chart. Comments by the reviewing clinician can be free-form text, but a tag-based system similar to twitter is employed to provide a semantic understanding for further processing. Each comment is required to have an author attribute. They can also "inherit/extend" several types such as date, text, number, boolean.