#! /usr/bin/env fan
//
// Copyright (c) 2018, Project-Haystack
// Licensed under the Academic Free License version 3.0
//
// History:
//   25 Dec 2018  Brian Frank  Creation
//

using build

**
** Build: phScience
**
class Build : BuildPod
{
  new make()
  {
    podName = "phScience"
    summary = "Project Haystack scientific definitions"
    meta    = ["org.name":     "Project Haystack",
               "org.uri":      "https://project-haystack.org/",
               "proj.name":    "Project Haystack Defs",
               "license.name": "Academic Free License 3.0"]
    resDirs = [`lib/`]
  }
}