#! /usr/bin/env fan
//
// Copyright (c) 2019, Project-Haystack
// Licensed under the Academic Free License version 3.0
//
// History:
//   21 Mar 2019  Brian Frank  Creation
//

using build

**
** Build: docHaystack
**
class Build : BuildPod
{
  new make()
  {
    podName = "docHaystack"
    summary = "Haystack documentation"
    meta    = ["org.name":     "Project Haystack",
               "org.uri":      "https://project-haystack.org/",
               "proj.name":    "Project Haystack Defs",
               "license.name": "Academic Free License 3.0"]
    depends = Str[,]
    resDirs = [`doc/`]
  }
}