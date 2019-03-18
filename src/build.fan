#! /usr/bin/env fan
//
// Copyright (c) 2019, Project-Haystack
// Licensed under the Academic Free License version 3.0
//
// History:
//   16 Jan 2019  Brian Frank  Creation
//

using build

**
** Build ph definition pods
**
class Build : BuildGroup
{
  new make()
  {
    childrenScripts =
    [
      `ph/build.fan`,
      `phScience/build.fan`,
      `phIoT/build.fan`,
    ]
  }
}

