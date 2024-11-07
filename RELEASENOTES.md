E-ARK-CITS eHealth1


RELEASE NOTES
=============

Categories of specification change
-----------------------------------

### Major
Changes are not backwardly compatible with previous versions.
A new major version, e.g. from 2.x.y to 3.0.0

### Minor
Backward compatible changes with the current major version.
Often a new feature or extension.

### Corrections
Corrections and improvements to grammar and spelling, not intended
to change the meaning of the specification.

### Administrative:
Standard changes between versions, e.g. version number and release date.

Version 2.0.1
-------------
xxx xxth 2024

### Major
No changes

### Minor
- Converted specification and guideline text to markdown version.
- Widening the scope of the specification to include live patients
·	Providing a description of the OpenEHR standard in the guideline
·	Add the option to include EAD3 (or other general descriptive schemas) at the root of the package
·	Added example SIP
- Corrected mets profile references in mets profiles
- Corrected mets profile references in example

### Corrections
Minor spelling and grammar corrections where found or pointed out.

### Administrative:


Version 2.0.0
-------------
May 17th 2024

### Specification Changes
Update of specification to version 2.0. 
#### Major
Change of patient record aggregation method in packages to remove issue of representations having different information content as identified by Validation Group

#### Minor
- Removal of duplication of requirements with CSIP and package specifications
- Minor corrections to METS requirements cardinality and levels
- Corrections to examples
- Updated requirements format to match CSIP
- Updated example METS to match CSIP
- Updated standard text to align with CSIP
- New diagrams
- Updated glossary
- Added general requirements
- Added statements of principles
- Removed contextual information duplicated with Guideline
- Added explanation of the use case for archiving patient medical records from database systems using SIARD
- Further explanation is given regarding the aggregation of patient medical records into single submissions by producers
- Contextual and explanatory content has been moved to Guideline only
- An example has been added to the Guideline of the piql E-ARK3 eHealth1 SIP Creator tool
- Rationales have been added for statements of principle in the Guideline
- Case of vocabulary terms in the eHealth1 vocabulary have been updated to align with the CSIP vocabulary (VocabularyFileGrpAndStructMapDivisionLabel)

#### Corrections
- Datafile div in structmap is redundant [[#8][]].
- Added dictionary pairs for requirement history to profiles [[#2][]]
- Using requirement pairs for dependencies [[#1][]].

#### Administrative


