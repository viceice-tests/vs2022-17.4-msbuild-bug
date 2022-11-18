# vs2022-17.4-msbuild-bug

Reproduction repo for a MSBuild bug in VisualStudio 2022 17.4


see https://developercommunity.visualstudio.com/t/MSBuild-no-longer-respects-DOTNET_ROOT/10198900

## details

`c:\tools\bin` contains simple shims from [kiennq/scoop-better-shimexe](https://github.com/kiennq/scoop-better-shimexe), which simply forwards to real executable via the `.shim` file.
This is done to get around the `PATH` issue below


`ghcr.io/visualon/builder:2.5.71` contains Visual Studio 2022 17.4

`ghcr.io/visualon/builder:2.5.70` contains Visual Studio 2022 17.3

## Jenkins PATH issue

`C:\Program Files\dotnet` is removed from PATH, because on my real repo it's also not there.
This is because of the Jenkins docker execution, which passes the host `PATH` to the container.
There is no dotnet installed on the host, so it's also not on `PATH` there.