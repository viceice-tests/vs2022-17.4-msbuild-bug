# vs2022-17.4-msbuild-bug

Reproduction repo for a MSBuild bug in VisualStudio 2022 17.4


see https://developercommunity.visualstudio.com/t/MSBuild-no-longer-respects-DOTNET_ROOT/10198900

## details

`c:\tools\bin` contains simple shims from [kiennq/scoop-better-shimexe](https://github.com/kiennq/scoop-better-shimexe), which simply forwards to real executable via the `.shim` file

`C:\Program Files\dotnet` is removed from PATH, because on my real repo it's also not there, because of the Jenkins docker execution, which passes the host `PATH` to the container.
On the host is of cause no dotnet installed, so it's also not on `PATH` there.