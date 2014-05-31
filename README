Tag-based-markup
====
*Hopefully, we will get a better name in the future.*

Retrospective chart reviews are an important part of medical research. Tons of data resides in current electronic medical record (EMR) systems, but we are unable to use them due to their non-structured nature. 

This system attempts to make that non-structured data accessible, by providing physicians a tool to review these charts and "tag" records for future use. 

This system will be able to provide:
1. An intuitive tool for physicians to perform chart review, since the workflow is essentially the same with paper-based records.
1. Accurate data, in the sense that all data is generated from the "gold standard" of physician interpretation.
1. A way to combine information from different institutions (i.e. different data silos in different formats) through collaboration into meaningful data
1. Construction of complex queries that can be computed in relatively short time compared with paper-based methods.

This system is not:
* An automated information retrieval tool
* A replacement of physician interpretation of records or lab data

Design Concepts
----
The system is built with our target audience in mind:
> For physicians, by physicians

The workflow is made to mimic the traditional way of chart reviewing paper-based medical records as much as possible.
Minimal training should be required on the user part.

Workflow
---
1. Import existing EMR
1. Review (and tag) individual chart records
1. Perform queries on database of multiple patients

Components
----
### Import modules
Specific tools (filters) must be written for each institution, which extracts data from the specific IT infrastructure and converts it into the standardized form.

### Review (tag) 
Display patient records as if reviewing paper-based chart. Reviewing physicians can add tags to records, which will be indexed for future search.

### Query
Queries can be constructed to generate secondary data, and ultimately, to answer clinical questions.

Example use cases
----
### Survival
We might want to know what the median survival of stage III lung cancer patients are. 
We can obtain this data by:
* Reviewing all stage III lung cancer patients and tag:
** Treatment start date
** Date of death
** Last follow-up (censor) date, which may be tagged automatically and confirmed manually
* Computing survival between treatment start and death/censor

### Epidemiology
* Hospital-wide practice patterns






