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
      `phIct/build.fan`,
      `docHaystack/build.fan`,
      //`docXeto/build.fan`,
    ]
  }

  @Target { help = "Delete entire lib/ directory" }
  Void superclean()
  {
    Delete(this, Env.cur.workDir + `lib/`).run
  }

  @Target { help = "Update trio versions from build config" }
  Void updateVersion()
  {
    // files to update
    files := File[,]
    childrenScripts.each |uri|
    {
      file := scriptDir.plus(uri.parent.plus(`lib/lib.trio`))
      if (file.exists) files.add(file)
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

