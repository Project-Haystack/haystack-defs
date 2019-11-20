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
** Build: phIoT
**
class Build : BuildPod
{
  new make()
  {
    podName = "phIoT"
    summary = "Project Haystack definitions for Internet of Things"
    meta    = ["org.name":     "Project Haystack",
               "org.uri":      "https://project-haystack.org/",
               "proj.name":    "Project Haystack Defs",
               "license.name": "Academic Free License 3.0"
               ]
    resDirs = [`lib/`]
    index   = [ "ph.lib": "phIoT"]

  }
}