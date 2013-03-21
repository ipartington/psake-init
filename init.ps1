.\create-project.ps1

function create-folderStructure {
New-item -Name build -Type Directory -Force
New-item -Name src -Type Directory -Force
New-item -Name tools -Type Directory -Force

}

function Create-gitfiles {
$gitignore = "[Oo]bj
[Bb]in
*.user
*.suo
*.[Cc]ache
*.bak
*.ncb
*.log 
*.DS_Store
[Tt]humbs.db 
_ReSharper.*

# Ignore NCrunch cache files.
*.crunchproject.local.xml
*.crunchsolution.local.xml

# Ignore test output
TestResult.xml

# Ignore NuGet package files.
*.nupkg
lib

*.userprefs
test-results"


$gitattributes = "# Auto detect text files and perform LF normalization
* text=auto

*.cs     text eol=crlf
*.xml    text eol=crlf
*.XML    text eol=crlf
*.xsd    text eol=crlf
*.ps1    text eol=crlf
*.config     text eol=crlf
*.sln    text eol=crlf
*.csproj text eol=crlf
*.vbproj text eol=crlf
*.fsproj text eol=crlf
*.dbproj text eol=crlf


# Custom for Visual Studio
*.cs     diff=csharp
*.sln    merge=union
*.csproj merge=union
*.vbproj merge=union
*.fsproj merge=union
*.dbproj merge=union

# Standard to msysgit
*.doc	 diff=astextplain
*.DOC	 diff=astextplain
*.docx diff=astextplain
*.DOCX diff=astextplain
*.dot  diff=astextplain
*.DOT  diff=astextplain
*.pdf  diff=astextplain
*.PDF	 diff=astextplain
*.rtf	 diff=astextplain
*.RTF	 diff=astextplain"
new-item .\.gitignore -value $gitIgnore -Type File -Force
new-item .\.gitattributes -value $gitattributes -Type File -Force

}

create-folderStructure 
Create-gitfiles
create-project