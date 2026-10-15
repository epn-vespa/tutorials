# Contributor guide

This document describes how to write, structure, and maintain a tutorial in the VESPA tutorials repository (2026 version)

[Summary](#summary)  
[Before you start](#before-you-start)  
[Naming and directories](#naming-and-directories)  
[Tutorial structure](#tutorial-structure)  
[Images](#images)  
[Videos](#videos)  
[Writing style](#writing-style)  
[Versioning and change log](#versioning-and-change-log)  
[Updating content](#updating-content)  
[Repository and support](#repository-and-support)



## Change log

| Version       | Author        | Notes  |
| ------------- |:-------------:| -----: |
| 1.0             | A. P. Rossi      |  4/10/2015      |
| 1.1             | M. Ganglof      |  28/09/2018  |
| 1.2             | S. Erard      |  10/10/2026  |


## Summary

How to contribute a tutorial: naming conventions, mandatory document structure, image handling, writing style, and the update procedure.

## Introduction

VESPA tutorials are distributed on GitHub as markdown files. They are available here:

[https://github.com/epn-vespa/tutorials/](https://github.com/epn-vespa/tutorials/)

Typical VESPA tutorials describe a workflow for a certain type of data, using the Virtual Observatory environment. They are intended to introduce the user to this environment while addressing science questions.

## Before you start

- Browse the [repository](https://github.com/epn-vespa/tutorials) and read 2 or 3 recent tutorials to get the tone and structure (start with the README list of "main" tutorials).
- Check whether a tutorial already covers your topic — prefer extending or cross-linking an existing one over creating a near-duplicate.
- Do not convert old PDF/PPT material verbatim, rewrite the content as a step-by-step narrative instead. Keep the old file only as "original version (old)" link if useful.

## Naming and directories

Each tutorial lives in its own directory under a topical area:

* `atmospheres`
* `exoplanets`
* `magnetospheres`
* `misc` (miscellaneous)
* `surfaces`

Directory names: short, self-explanatory, no spaces — e.g. `titan_vims`, `mars_craters`.

Inside the tutorial directory:

* the tutorial file: same name as the directory, `tuto_name.md`
* images: in an `img/` subdirectory (see [Images](#images))

## Tutorial structure

All tutorials follow the same skeleton (use the [template](/template/template.md) as a starting point):

```markdown
## <Title>

<One-paragraph Summary: what the reader will learn.>

[Table of contents with anchor links]

### Change log
| Version | Author | Notes |
| ------- | ------ | ----- |
| 1.0     | ...    | date  |

### Requirements and dependencies
<Tools to download, with links; minimal versions if relevant.>

### Keywords
<Short list, semicolon or line separated.>

## Introduction
<Context and motivation; what data/services are used.>

## 1- <First step or section>
...

## To go further
<Cross-links to related tutorials, references, support contact.>
```

Rules:

* **Table of contents**: anchors are case-sensitive on GitHub — always use lowercase anchors matching the auto-generated heading ids (e.g. heading `## 1- VESPA portal` → anchor `#1--vespa-portal`). Check every TOC link after the first render.
* **Summary first**: the reader must know what the tutorial does before any requirement.
* **Sections**: use numbered top-level sections (`## 1- ...`); keep short, logical steps. Put alternatives and side notes in blockquotes (`> Alternative: ...`).
* **End every tutorial with "To go further"**: link related tutorials in the repository (relative links), the VESPA portal, and the support contact (support.vespa@obspm.fr). Cross-link both ways: if tutorial A cites tutorial B, B should cite A where relevant.
* **References**: cite the original material (PDF, paper) with a link, and credit converters/editors in the change log.

## Images

* Store all images in the tutorial's `img/` subdirectory, committed to the repository — never hotlink third-party sites or personal forks (links rot, and the tutorial must remain self-contained).
* Meaningful, short filenames, no spaces: `TOPCAT_query.png`, not `capture d'écran 2.PNG`. Simple sequential names (`1.png`, `2.png`) are fine and encouraged for step-by-step screenshots.
* Format: PNG or JPEG, reasonably small file size.
* Embed with a width setting and a caption, numbered through the whole document:

```html
<img src="img/TOPCAT_query.png" width="600" alt="TOPCAT query">

*Figure 3. TOPCAT: TAP query window.*
```

* Use relative paths (`img/...`) — not absolute URLs to the repository.
* Prefer fresh screenshots over recycled ones: re-capture when the interface has evolved.

## Videos

Videos can be linked from YouTube/Vimeo or similar, preferably with a placeholder screenshot, e.g. as described [here](http://stackoverflow.com/questions/4279611/how-to-embed-a-video-into-github-readme-md).

## Writing style

* **English**: Keep UK spelling (optimise, colour) as the baseline, but stay consistent within a document — do not mix UK and US spelling in the same tutorial. Tutorials in other languages may be linked as external resources.
* **Prose, not captions**: never publish a gallery of screenshots without text. A reader must be able to follow the reasoning without guessing from images.
* **Reproducible steps**: exact menu paths (`VO > EPN-TAP Query`), exact button names, exact ADQL queries in fenced code blocks.
* **Metadata conventions**: EPNCore columns and parameter names in backticks (`` `access_url` ``, `` `measurement_type` ``); UI elements in plain text with the exact label.
* **Verify factual claims on screen**: run every step against the current tools before publishing. Check figure captions against what the figure actually shows (a mislabeled figure is worse than no figure).
* **State limitations honestly**: if a tool does not support something, say so — the collection's value comes from tested, honest content.

## Versioning and change log

* `1.0` — first release of a new tutorial.
* `1.x` — corrections, additions of steps or figures, updates after re-testing.
* `2.0` — restructuration (merge with another tutorial, change of scope).
* One line in the change log per version: date, author, and what changed. The change log is the only place where document maturity is tracked — keep it accurate.

## Updating content

Once a tutorial exists, it can be updated either:

* directly — if you are in charge of the current version
* by forking the repository, making your changes, and creating a pull request — see [GitHub's creating a pull request from a fork](https://help.github.com/articles/creating-a-pull-request-from-a-fork/).

When updating, re-test the modified steps on screen and increment the change log. Do not rewrite frozen tutorials in passing: if you spot issues in a tutorial you are not updating, open an issue or contact the author instead of mixing unrelated changes into your pull request.

## Repository and support

* The working copy of each tutorial is in the [VESPA tutorials repository](https://github.com/epn-vespa/tutorials). The README lists the tutorials and is the single point of entry.
* Markdown is authoritative: old PDF/PPT versions remain available as historical references, but only the .md files are maintained.
* For any question about the collection, contact the VESPA team: [support.vespa@obspm.fr](mailto:support.vespa@obspm.fr) — use this address in tutorials and documentation instead of personal or older project addresses.