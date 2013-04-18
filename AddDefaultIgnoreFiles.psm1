function Add-HgIgnore()
{
  (new-object Net.WebClient).DownloadString("https://raw.github.com/skalinets/add-default-ignores/master/Content/hgignore") | out-file -encoding UTF8 -filepath .hgignore
<#
.Synopsis
    Adds VS optimized .hgignore to current directory.
.Description 
    Command will download default .hgignore file from github repository (https://github.com/skalinets/add-default-ignores/blob/master/Content/hgignore) and put it to the current folder. File contains patterns that usually should be ignored by Mercurial.
.Link
    https://github.com/skalinets/add-default-ignores
.Example
    Add-HgIgnore
#>
}

function Add-GitIgnore()
{
  (new-object Net.WebClient).DownloadString("https://raw.github.com/github/gitignore/master/VisualStudio.gitignore") | out-file -encoding UTF8 -filepath .gitignore

<#
.Synopsis
    Adds VS optimized .gitignore to current directory.
.Description 
    Command will download default .gitignore file from github repository (https://github.com/skalinets/add-default-ignores/blob/master/Content/gitignore) and put it to the current folder. File contains patterns that usually should be ignored by git.
.Link
    https://github.com/skalinets/add-default-ignores
.Example
    Add-GitIgnore
#>

}

function Add-GitAttr()
{
  (new-object Net.WebClient).DownloadString("https://raw.github.com/skalinets/add-default-ignores/master/Content/gitattributes") | out-file -encoding UTF8 -filepath .gitattributes

<#
.Synopsis
    Adds VS optimized .gitattributes to current directory.
.Description 
    Command will download default .gitattributes file from github repository (https://github.com/skalinets/add-default-ignores/blob/master/Content/gitattributes) and put it to the current folder. File contains line ending defaults for major file types.
.Link
    https://github.com/skalinets/add-default-ignores
.Example
    Add-GitAttr
#>

}


Export-ModuleMember Add-GitIgnore, Add-HgIgnore, Add-GitAttr
