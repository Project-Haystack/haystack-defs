#! /usr/bin/env fan
//
// Copyright (c) 2017, Project-Haystack
// Licensed under the Academic Free License version 3.0
//
// History:
//   22 Nov 2017  Brian Frank  Creation
//

using build

**
** Build: ph
**
class Build : BuildPod
{
  new make()
  {
    podName = "ph"
    summary = "Project Haystack core definitions"
    meta    = ["org.name":     "Project Haystack",
               "org.uri":      "https://project-haystack.org/",
               "license.name": "Academic Free License 3.0"]
    resDirs = [`lib/`]
  }
}