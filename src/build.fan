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

  @Target { help = "Update trio versions from build config" }
  Void updateVersion()
  {
    // files to update
    files := File[,]
    childrenScripts.each |uri|
    {
      files.add(scriptDir.plus(uri.parent.plus(`lib/lib.trio`)))
    }

    // update each one
    version := Version(config("buildVersion", "0")).toStr
    files.each |file|
    {
      echo("Update $file [$version]")
      src := file.readAllStr
      s := src.index("\"3.9.")
      e := src.index("\"", s+1)
      src = src[0..<s] + version.toCode + src[e+1..<-1]
      file.out.print(src).close
    }
  }

}

