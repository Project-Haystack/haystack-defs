#! /usr/bin/env fan
//
// Copyright (c) 2019, Project-Haystack
// Licensed under the Academic Free License version 3.0
//
// History:
//   20 May 2019  Brian Frank  Creation
//

using build

**
** Build: phIct
**
class Build : BuildPod
{
  new make()
  {
    podName = "phIct"
    summary = "Project Haystack information and communication technology definitions"
    meta    = ["org.name":     "Project Haystack",
               "org.uri":      "https://project-haystack.org/",
               "proj.name":    "Project Haystack Defs",
               "license.name": "Academic Free License 3.0"]
    resDirs = [`lib/`]
    index   = [ "ph.lib": "phIct"]
  }
}