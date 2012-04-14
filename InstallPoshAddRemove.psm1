function Add-HgIgnore()
{
  (new-object Net.WebClient).DownloadString("https://raw.github.com/skalinets/add-default-ignores/master/Content/hgignore") > .hgignore

}

function Add-GitIgnore()
{
  (new-object Net.WebClient).DownloadString("https://raw.github.com/skalinets/add-default-ignores/master/Content/gitignore") > .gitignore

}

Export-ModuleMember Add-GitIgnore, Add-HgIgnore