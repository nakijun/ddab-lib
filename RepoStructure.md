<a href='Hidden comment: 
$Rev$
$Date$
'></a>

# Source Code Repository Structure #

The [Subversion](http://subversion.tigris.org/) repository for the DelphiDabbler Component and Unit Library is structured as follows:

| <pre>branches</pre> | Unused at present. |
|:--------------------|:-------------------|
| <pre>tags</pre> | Contains copies of all stable releases. |
| <pre>  lib</pre> | Unused at present. Reserved for any releases of whole library. Each release will have its own sub-directory named `release-x.x.x` where `x.x.x` is the release version number. |
| <pre>  projects</pre> | Contains stable releases of each sub-project. |
| <pre>    <project-id></pre> | Contains stable releases of a sub-project. There is a separate directory for each sub-project whose name is the ID of the sub-project. |
| <pre>      <release></pre> | Contains a stable release of the sub-project. There is a separate directory for each release named `release-x.x.x` where `x.x.x` is the release version number. |
| <pre>      ...</pre> |  |
| <pre>    ...</pre> |  |
| <pre>trunk</pre> | Main development tree. Contains the current development code. It is not guaranteed to be stable, but contains the latest updates. |
| <pre>  common</pre> | Contains files common to more than one project. The directory structure below this level depends on the documents and code files that need to be stored here. |
| <pre>  lib</pre> | Unused at present. Reserved for any development code and documents relating to the whole library. |
| <pre>  projects</pre> | Development tree for sub-projects. |
| <pre>    <project-id></pre> | Development tree for a sub-project. There is a separate directory for each sub-project whose name is the ID of the sub-project. Any directory structure below this level is project specific. |
| <pre>    ...</pre> |  |
| <pre>wiki</pre> | Contains the documents that make up the library's Wiki on Google Code. |

**Links:**

  * Back to [Wiki Home Page](Welcome.md)