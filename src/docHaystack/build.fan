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
               "license.name": "Academic Free License 3.0",
               "vcs.name":     "Git",
               "vcs.uri":      "https://github.com/Project-Haystack/haystack-defs"]
    depends = Str[,]
    resDirs = [`doc/`]
  }
}