## 3.6 METS

<a name="section 3.6.1"><a/>

### 3.6.1 Use of METS in eHealth1
CSIP specifies that METS files be located at the root of the package folder structure (Root METS) and optionally in each of the representations within its respective root folder (Representation METS). 

<a name="section 3.6.2"><a/>

### 3.6.2 Root METS File
The root METS file must adhere to the requirements of the CSIP and Information Package specifications. In addition, there are specific requirements for the eHealth1 CITS, and in some cases, the level of the CSIP or package requirements have been increased (but never decreased).

#### 3.6.2.1 Root METS root element
The eHealth1 CITS specification does not change or extend any of the requirements for the Root METS root element. Information is given below regarding the specific content type attributes to be used in an eHealth1 CITS.

#### 3.6.2.2 Root METS header element (element metsHdr)
The following describes the differences in the package metsHdr element between CSIP, IP and the eHealth 1 CITS specification.

#### 3.6.2.3 Root METS descriptive metadata section (element dmdSec)
The CSIP and IP specifications do not make any assumptions regarding the use of specific descriptive metadata schemas. The structure of the eHealth1 CITS is built on the concept of being patient-centric, and so a standardised metadata schema is preferred for Patient Administrative Information. The use of schemas such as ISO 13606 or HL7 FHIR is suggested but is not mandatory as local regulations and standards may be used.

#### 3.6.2.4 Root METS administrative metadata section (element amdSec)
The eHealth1 CITS specification does not change or extend any of the requirements already defined by the CSIP or IP specifications’ administrative metadata section. The eHealth1 root METS document amdSec element SHOULD comply with the amdSec requirements in the CSIP profile. Note that in eHealth1, it is required that any rights or digital provenance metadata that is general to the package should be held within the root metadata folder and that any rights or digital provenance metadata that is specific to the data held in the representations should be held in the respective representation metadata folder.

#### 3.6.2.5 Root METS file section (element fileSec)
The CSIP does not make the use of the METS fileSec element mandatory, but it is strongly recommended. In the eHEALTH CITS, the use of the METS fileSec element at the package level becomes mandatory, such as to reference the mets files within each representation.

#### 3.6.2.6 Root METS structural map (element structMap)
The METS structural map element is the only mandatory element in the METS specification. It provides an overview of the components described in the METS document. It can also link the elements in the structure to associated content files and metadata. In the eHealth1 CITS, the package structMap describes the high-level structure of all the content in the package and links to at least one representation. 

The representation METS file is referenced from the package METS.xml via the <mptr> element, and hence the requirements for the structMap element within the package METS.xml (CSIP requirements CSIP80 to CSIP118) are unchanged. Because a representation is present, the need for a Content Division in the package METS.xml structMap is not required (CSIP101 to CSIP104 and CSIP109).

Implementers are welcome to define additional structural maps for their internal purposes by repeating the structMap element. The specific requirements for elements, sub-elements and attributes for eHealth1 CITS, which differ from the CSIP, are listed in the following table. 

<a name="section3.7"><a/>

### 3.6.3 Representation METS
The representation METS files is used to describe the data structure as included in the data folder of the Representation  Medical Record) via the structMap element and to reference any additional descriptive metadata.

#### 3.6.3.1 Representation METS root element
Particular notice is drawn to the specific requirements for a representation METS root element as described in the CSIP specification.

#### 3.6.3.2 Representation METS header element (element metsHdr)
There are no requirements for a specific header element in the representation METS. The eHealth1 representation metsHdr element should comply with the metsHdr requirements in the SIP profile.
Note that the information contained in the representation header element relate specifically to the representation METS document.   

#### 3.6.3.3 Representation METS descriptive metadata section (element dmdSec)
The Representation may contain additional descriptive metadata within the metadata/descriptive folder as described in the CSIP. It is recommended however that Patient Clinical Information related to the Patient Cases that can contain clinical information (diagnoses, conditions, procedures, allergies, family history, care plans) such as can be found in ISO 13606 or the HL7 FHIR Clinical Module  and that has been extracted from the source EMR system is included within each individual Patient Record in the repname/data folder, such as to simplify separation of Patient records into individual SIPs at the Archive. Use of metadata standards and codings (e.g. International Classification of Diseases ICD, https://www.who.int/classifications/icd/en/, Systematized Nomenclature of Medicine, SNOMED CT, www.snomed.org) is encouraged. Where used, references to the specific schemas os resources should be given together with relevant version information.

#### 3.6.3.4 Representation METS administrative metadata section (element amdSec)
The administrative metadata section contains four sub-sections, each used to record different types of metadata for package content:

•	technical metadata (element techMD) records technical metadata;
•	rights metadata (element rightsMD) records intellectual property rights information;
•	source metadata (element sourceMD) records descriptive, technical or rights metadata for an analogue source for a digital library object; and
•	digital provenance metadata (element digiprovMD) records digital preservation information (e.g. audit information covering a digital library object’s life-cycle).

The CSIP only describes the use of the elements digiprovMD and rightsMD within the administrative metadata section of the METS.

The CSIP (and METS) categorises preservation metadata as administrative metadata, specifically Digital Provenance metadata (following the available guidelines published by the PREMIS EC guidelines: http://www.loc.gov/standards/premis/guidelines2017-premismets.pdf). Hence all preservation metadata should be referenced from a digiprovMD element within the amdSec.

The METS amdSec element should include references to all relevant metadata located in the folder “repname/metadata/preservation”. The package level METS.xml file should only reference package level preservation metadata. Representation level METS.xml files should only reference representation level preservation metadata.

In eHealth1, it is required that any rights or digital provenance metadata that is general to the package can be held within the root metadata folder and that any rights or digital provenance metadata that is specific to the data held in the representation should be held in the representation metadata folder.

The eHealth1 representation METS document amdSec element should comply with the requirements in the CSIP profile.

#### 3.6.3.5 Representation METS structural map (structMap element)
The METS structural map element is the only mandatory element in the METS specification and is hence mandatory within the representation METS. The representation METS.xml is referenced from the package METS.xml via the <mptr> element, and hence the requirements for the structMap element within the package METS.xml (CSIP requirements CSIP80 to CSIP118) are unchanged. Because a representation is present, the need for a Content Division in the package METS.xml structMap is not required (CSIP101 to CSIP112 and CSIP 116, 118 and 119).

# 5 Deprecated Requirements in eHealth1
The work to improve this specification is ongoing. On occasion we retire a requirement, these are listed here for information. The majority of these deprecated requirements were duplicates of those in the CSIP and SIP specifications and have been removed for reasons of maintaining currency.

|**ID**        |**Name**`, Location and Description|**Cardinality & Level**|
|----------|----------------------------------------------|------------------|
|EHR17 ref CSIP59|File section identifier, fileSec/@ID, An xml:id identifier for the file section used for internal package references. It must be unique within the package.| 1..1, MUST|`
|EHR18 ref CSIP60|Documentation file group, fileSec/fileGrp/@USE, All documentation pertaining to the package should be referenced from one or more file groups with the ‘mets/fileSec/fileGrp/@USE’ attribute value ”Documentation”. Note that any documentation pertaining to the transferred content is referenced within the representation METS files.|1..n, MUST|
|EHR19 ref CSIP113|Schema file group, fileSec/fileGrp/@USE, All XML schemas used in the information package MUST be referenced from one or more file group elements with ‘mets/fileSec/fileGrp/@USE’ attribute value ”Schemas”. Schemas common to the transferred content should be held in the root schemas folder.|1..n, MUST|
|EHR20 ref CSIP114|Representations file group, fileSec/fileGrp/@USE, Pointers to each of the METS documents describing the representations MUST be present in file groups with the ‘mets/fileSec/fileGrp/ @USE’ attribute ”Representations”.|1..n, MUST|
|EHR21 ref CSIP61|Reference to administrative metadata, fileSec/filegrp/@ADMID, If administrative metadata has been provided at file group ‘mets/fileSec/fileGrp/’ level, this attribute refers to its administrative metadata section by ID. For example, there are rights and/or digital provenance metadata that are general to the package.|0..1, MAY|
|EHR23 ref CSIP105|Representation division, mets/structMap[@LABEL=’CSIP’]/div/div, There must be a discrete `div` element for each Patient Medical Record.|1..n, MUST|
|EH6 Ref CSIP17|Descriptive metadata, dmdSec, Used to reference Patient Clinical Information held in the metadata/descriptive folder of the representation. There is one dmdSec present for each descriptive metadata file located in the “metadata/descriptive” section of the representation.|1..n, MUST|
|EH7 ref CSIP18|Descriptive metadata identifier, dmdSec/@ID, An xml:id identifier for the descriptive metadata section (<dmdSec>) used for internal package references. It must be unique within the package.|1..1, MUST|
|EH8 ref CSIP21|Reference to the document with the descriptive metadata, mets/dmdSec/mdRef, There MUST be a reference to the descriptive metadata file located in the folder “metadata/descriptive” of the representation.|1..1, MUST|
|EH9 ref CSIP25|Type of metadata, mets/dmdSec/mdref/@MDTYPE, The value for the metadata type is set to “OTHER”.|1..1, MUST|
|EH10 ref CSIP21|Reference to the document with the descriptive metadata, dmdSec/mdRef, There MUST be a reference to the descriptive metadata file located in the folder “metadata/descriptive” of the representation.|1..1, MUST|
|EH11 ref CSIP25|Type of metadata, dmdSec/mdref/@MDTYPE, The value for the metadata type is set to “OTHER”.|1..1, MUST|
|EH12|Type of other metadata, dmdSec/mdref/@OTHERMDTYPE, Specifies the type of metadata used for Patient Clinical  Information. For example, the value will be “fhircondition” if the FHIR Condition resource is used.|1..1, MUST|
|EH16 Ref CSIP61|Reference to Patient Document administrative metadata, fileSec/filegrp/@ADMID, If administrative metadata has been provided at a filegroup level. For example there are rights and/or digital provenance metadata that is specific to the Patient Document, then this attribute refers to the <amdSec> of the representation METS.xml by ID.|1..1, MAY|
|EH18 ref CSIP65|Representation (Patient Document) file group identifier, fileSec/fileGrp/@ID, An xml:id identifier for the file group used for internal package references. It must be unique within the package.|1..1, MUST|
|EH20 ref CSIP66|File, fileSec/filegrp/file, The file group <fileGrp> contains the file elements which describe the digital objects.|1..1, MUST|
|EH21 ref CSIP75|File reference to Descriptive Metadata, fileSec/fileGrp/file/@DMDID, If descriptive metadata had been provided per file, this attribute refers to the file’s descriptive metadata by ID.|0..1, MAY|
|EH27 ref CSIP80|Structural description of the representation, Each representation METS file must include ONE structural map <structMap> element exactly as described here. Institutions can add their own additional custom structural maps as separate <structMap> sections.|1..n, MUST|
|EH29 ref CSIP81|Type of structural division, mets/structMap/@TYPE, The ‘mets/structMap/@TYPE’ attribute MUST take the value of  ”PHYSICAL” from the vocabulary. An additional structural description @TYPE “Virtual” could be added to describe a virtual Case structure that has not been realised in physical folders. See also: Structural map typing.|1..1, MUST|
|EH32 Ref CSIP84|Main structural division, structMap/div/@LABEL, The representation’s top-level structural division <div> element’s `@LABEL` attribute value must be identical to the representation (Patient Medical Record) identifier, i.e. the same value as the `mets/@OBJID` attribute.|1..1, MUST|
|EH33 Ref CSIP85|Main structural division identifier, structMap/div/@ID, Mandatory, ‘xml:id’ identifier must be unique within the package.|1..1, MUST|
|EH34 Ref CSIP86|Main structural division label, structMap/div/@LABEL, The representation’s top-level structural division <div> element’s `@LABEL` attribute value must be identical to the representation (Patient Medical Record) identifier, i.e. the same value as the `mets/@OBJID` attribute.|1..1,MUST|
|EH35 Ref CSIP88|Metadata division, structMap/div/div, The metadata referenced in the administrative and/or descriptive metadata section is described in the structural map with one sub division. When the transfer consists of only administrative and/or descriptive metadata this is the only sub division that occurs.|1..1, MUST|
|EH36 Ref CSIP89|Metadata division identifier, structMap/div/div/@ID, Mandatory xml:id identifier must be unique within the package.|1..1, MUST|
|EH37 Ref CSIP90|Metadata division label, structMap/div/div/@LABEL, The metadata division <div> element's `@LABEL` attribute value must be "Metadata".|1..1, MUST|
|EH38 Ref CSIP91|Metadata division administrative metadata referencing, structMap/div/div/@ADMID, When there is administrative metadata, and the <amdSec> is present, all administrative metadata MUST be referenced via the administrative sections different identifiers. All of the <amdSec> identifiers are listed in a single `@ADMID` using spaces as delimiters.|0..1, SHOULD|
|EH39 Ref CSIP92|Metadata division descriptive metadata referencing, structMap/div/div/@DMDID, When there are descriptive metadata and one or more <dmdSec> is present, all descriptive metadata MUST be referenced via the descriptive section identifiers. Every <dmdSec> identifier is listed in a single `@DMDID` attribute using spaces as delimiters. Descriptive metadata in the representation will include clinical metadata as described in 7.3.3.|0..1, SHOULD|
|EH40 Ref CSIP93|Documentation division, structmap/div/div/, The documentation referenced in the file section file groups is described in the structural map with one sub-division.|0..1, SHOULD|
|EH41 Ref CSIP94|Documentation division identifier, structMap/div/div/@ID, Mandatory, xml:id identifier must be unique within the package.|1..1, MUST|
|EH42 Ref CSIP95|Documentation division label, structMap/div/div/@LABEL. The documentation division <div> element in the package uses the value “Documentation” from the vocabulary as the value for the `@LABEL` attribute.|1..1, MUST|
|EH43 Ref CSIP96|Documentation file referencing, structMap/div/div/@CONTENTID, All file groups containing documentation described in the package are referenced via the relevant file group identifiers. There MUST be one file group reference per <fptr> element.|1..1, MUST|
|EH44 Ref CSIP116|Documentation file group pointer, structMap/div/div/fptr/@ID, A reference, by ID, to the “Documentation” file group. Related to the requirements which describe the “Documentation” file group in CSIP and the requirement which describes the file group identifier.|1..1, MUST|
|EH53|Data File division, mets/structMap[@LABEL=’eHealth1’]/div/div/div/div/div/div/, Data Files are components that contain data and have associated MIME file types. A Data File can be a single bit stream or can encapsulate bit streams and attributes according to a standard such as a DICOM or MP4.|1..n, MUST|
|EH54|Data File division identifier, mets/structMap[@LABEL=’eHealth1’]/div/div/div/div/div/div/@ID, Mandatory, xml:id identifier must be unique within the package.|1..1, MUST|
|EH55|Data File division label, mets/structMap[@LABEL=’eHealth1’]/div/div/div/div/div/div/[@LABEL=’DATAFILE’], The Data File division `<div> element must have the `@LABEL` attribute value “DATAFILE”, taken from the vocabulary.|1..1, MUST|
|EH56|Data File division file group  reference, mets/structMap[@LABEL=’eHealth1’]/div/div/div/div/div/div/fptr, All file groups containing content described in the package are referenced via the relevant file group identifiers. One file group reference per fptr-element.|1..1, MUST|
|EH57|Data File division file group reference ID. mets/structMap[@LABEL=’eHealth1’]/div/div/div/div/div/div/fptr/@FILEID, The pointer to the identifier for the file group containing the data files.|1..1, MUST|
|EH58|Data File division file group reference ID,structMap/div/div/div/div/div/fptr/@FILEID, The pointer to the identifier for the file group containing the data files.|1..1, MUST|
|EH65|Data File division, structMap/div/div/div/div/div/div/, Data Files are components that contain data and have associated MIME file types.  A Data File can be a single bit stream or can encapsulate bit streams and attributes according to a standard such as a DICOM or MP4.|1..n, MAY|
|EH66|Data File division identifier, structMap/div/div/div/div/div/div/@ID, Mandatory, xml:id identifier must be unique within the package.|1..1, MUST|
|EH67|Data File division label, StructMap/div/div/div/div/div/div/@LABEL, The Data File division <div> elements must have the @LABEL attribute value ”DATAFILE”, taken from the vocabulary.|1..1, MUST|
|EH68|Data File division file group reference, structMap/div/div/div/div/div/div/fptr/, All file groups containing content described in the package are referenced via the relevant file group identifiers—one file group reference per fptr-element.|1..1, MUST|
|EH69|Data File division file group reference ID, mets/structMap[@LABEL=’eHealth1’]/div/div/div/div/div/div/div/fptr/@FILEID, The pointer to the identifier for the file group containing the data files. |1..1, MUST|
