function Add-HgIgnore()
{
  (new-object Net.WebClient).DownloadString("https://raw.github.com/skalinets/add-default-ignores/master/Content/hgignore") | out-file -encoding UTF8 -filepath .hgignore
<#
.Synopsis
    Adds VS optimized .hgignore to current directory.
.Description 
    Command will download default .hgignore file from github repository (https://raw.github.com/skalinets/add-default-ignores/master/Content/hgignore) and put it to the current folder. File contains patterns that usually should be ignored by Mercurial.
.Link
    https://github.com/skalinets/add-default-ignores
.Example
    Add-HgIgnore
#>
}

function Add-GitIgnore()
{
  (new-object Net.WebClient).DownloadString("https://raw.github.com/skalinets/add-default-ignores/master/Content/gitignore") | out-file -encoding UTF8 -filepath .gitignore

<#
.Synopsis
    Adds VS optimized .gitignore to current directory.
.Description 
    Command will download default .gitignore file from github repository (https://raw.github.com/skalinets/add-default-ignores/master/Content/gitignore) and put it to the current folder. File contains patterns that usually should be ignored by git.
.Link
    https://github.com/skalinets/add-default-ignores
.Example
    Add-GitIgnore
#>

}

Export-ModuleMember Add-GitIgnore, Add-HgIgnore