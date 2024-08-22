# 3 Specification
## 3.1 CITS eHealth1 Specification Requirements Structure
The Content Information Type Specification for Patient Medical Records (CITS eHealth1) aims to define the necessary elements required to preserve the accessibility and authenticity of Patient Medical Records over time and across changing technical environments. The specification elevates the level (and adjusts the cardinality) of some of the requirements set out in the Common Specification (CSIP) and package specifications (namely SIP) and adds new requirements for the package structure, descriptive metadata and accompanying METS files. The specification sets out general principles that underpin the specific requirements. Further context for the requirements and principles can be found in the accompanying Guideline to this document.

<a name="Section3.2"><a/>

## 3.2 Principles

<a name="Section3.2.1"><a/>

### 3.2.1 Principle 1– use of existing standards
Wherever possible the eHealth1 specification encourages the use of existing international specifications for patient administrative, clinical, diagnostics, medication information and vocabularies for diseases, conditions and treatments.

<a name="Section3.2.2"><a/>

### 3.2.2 Principle 2 – the Complete Patient Medical Record and Patient centricity
CITS eHealth1 supports the creation of a centralised (national or regional) health archive of Complete Patient Medical Records, where the intention is to make data available to next of kin and should contain as much of the original data from source systems as possible. Data is organised to be patient centric and so access to a complete record from multiple submissions is possible.

<a name="Section3.2.3"><a/>

### 3.2.3 Principle 3 – ability to create cohorts for research purposes
CITS eHealth1 supports the creation of a centralised (national or regional) health archive of Complete Patient Medical Records, where the intention is to make data available to researchers and should allow the creation of search databases and indexes based on key patient demographic and clinical data.

<a name="Section3.2.4"><a/>

### 3.2.4 Principle 4 – support for born digital and digitised records
The specifaction allows for data submitted by producers (or generated at the archive) to be extractions from Electronic Record Management (EMR) or Electronic Health Record (EHR) systems or to be data generated through digitisation of physical records.

<a name="Section3.2.5"><a/>

### 3.2.5 Principle 5 – bulk submission of Patient records from producers
Based on the principals above, the intellectual content of archival information packages (AIPs) in a health archive will most likely be limited to data about a single Patient. However, the specification recognises that submissions are likely to be made from healthcare providers on a batch basis on a regular schedule and the submission format should allow inclusion of multiple Patient records. Processes at the archive can then parse submission collections into individual patient SIPs and ingest into the archive such as to create individual patient AIPs.  

## 3.3 Standards
Controlled vocabularies and coding provide a standardised way for the unambiguous recording of health data. Most EMR and all EHR systems will hold coded data concerning Patient Cases that can be extracted as metadata for the Patient Medical Record and will use international standard vocabularies such as ICD or SNOMED. Data can be recorded in standardised (such as ISO 13606 or FHIR) formats or to a local format which is specified by the health archive and referenced within a Submission Agreement. Background information on eHealth standards such as ISO 13606, FHIR, ICD and SNOMED is given in the Guideline.

## 3.4 Data Structure and Aggregations

<a name="section3.4.1"><a/>

### 3.4.1 Case Structure and Data Aggregation
The names of aggregation levels within an archive and represented within an archival package (IP) will depend on the agreements between data producers (Creators) and archives. EAD3 has defined a set of values (class, collection, file, fonds, item, otherlevel, recordgrp, series, subfonds, subgrp, subseries) for that purpose, and it allows other values to be used in addition if they are defined as “otherlevel”. However, even though the aggregation levels in this context could be described in this way, the EAD template for archival description is considered unsuitable for describing the aggregations in a Patient Health Archive but may be used for general archival information [Section 10](descriptive_metadata.md).

A Central Patient Health Archive has a single purpose and may be instituted as a stand-alone entity or as a sub-entity within a larger institution (e.g. National Archive or Health Authority). The overall aggregation of a health archive is therefore implicit (it is an aggregation of Patient Medical Records), and further aggregation levels must be defined that suit the use cases for navigation within the archive and for the way in which the archive is populated.

Patient Medical Records will be submitted to a Central Health Archive either when a patient is known to have died or after a period of time when it is not feasible that a patient is still alive (determined through regulations). Depending upon the availability of a National Death Register, the accessibility and responsiveness to such a register and the periodic batching of archival extracts at healthcare providers, it cannot be expected that individual patient submissions from multiple creators will be at all coordinated. Aggregation of a total patient record at the archive prior to submission into the preservation system is therefore deemed impractical in this specification.

The proposed data structure for the aggregations of the submissions of Patient Medical Records is as shown in the data model in Figure 3. As patient data is likely to be submitted in batches, each submission package will contain information from multiple Patients, and it is likely that these submissions will be split by the archive on receipt to create Patient-specific archival information packages (AIPs) in order to simplify the dissemination process. In this context, the submission package could be considered as a submission information collection (SIC) or collation of SIPs which is compiled to simplify extraction and transmission. However, for the purposes of this specification, the term SIP is used to mean both a submission package for a single Patient Record or a submission package containing multiple Patient Records. 

The levels of the aggregation in an eHealth1 package are as follows:

- Patient: An individual who has received healthcare at any number of healthcare providers and who is described by Patient Personal Information [Section 10](descriptive_metadata.md). Each patient will be identified by means of a unique identifier (ID) which is provided from the source EMR system. This unique ID connects the Patient Personal Information and the Patient Medical Record in the information package.
- Case: A Patient Medical Record can be structured in various ways, which may be dictated by national standards, guidance or local practice. A Patient’s Complete Medical Record will consist of multiple individual thematic Cases which may be concerned with particular medical conditions, periods or treatments. The proposed aggregation allows for flexibility in this grouping. These cases will be held in a healthcare provider’s local archive and may contain a number of Sub-cases and/or Documents with associated Data Files. 
- Sub-case: A Sub-case is an allowable type of component consisting of a set of Documents and Data Files that is nested below a Case. Sub-cases may originate in departments within a large hospital or may be related to a different diagnosis to other Sub-cases. A Sub-case may have common (to the Case) or specific metadata.
- Document: A Document is a component that may consist of multiple related Data Files with common metadata; for example, a document may be a PDF file together with associated attachments, or there may be a document and a separate signature sheet. A document can be considered to be an entity that is approved/signed as a whole.
- Data File: A Data file is a component that contains data and has an associated MIME file type. A Data File can be a single bit stream or can encapsulate bit streams and attributes according to a standard such as a DICOM or MP4, in which case it will have a recognised MIME file type. A Data File, which is a container for multiple byte streams and metadata, can be included in the package as a Data File or can be unpacked and included as separate Byte Streams and metadata in METS. It is expected that containers such as DICOM and MP4 files will be submitted unaltered in Submission Information Packages (SIPs) and that any decision to unpack them is part of a preservation plan at the archive. 
- Byte Stream: A Byte Stream is a component that contains data, has an associated MIME file type and is encapsulated in a container such as MP4, DICOM or Matroska. Each Byte  Stream has its own associated metadata, such as technical metadata, but which is generally only accessible with specialised tools (such as ffprobe for video container formats).

<a name="fig3"></a>

![eHealth1 SIP Data Model](/specification/figs/fig_3_eHealth1_SIP_Data_Model.svg "eHealth1 SIP Data Model")

**Figure 3:** eHealth1 SIP Data Model

<a name="section3.4.2"><a/>

### 3.4.2 Using the eHealth1 specification together with the Common Specification for Information Packages (CSIP)
The eHealth1 specification conforms to and extends the Common Specification for Information Packages (CSIP) and the Specification for Submission Information Packages (E-ARK SIP). When extractions are made from EMR systems according to the structure described, they can be transmitted in a package following the principles described in the CSIP and IP specifications.

<a name="section3.4.3"><a/>

### 3.4.3 Placement of data in an eHealth1 Information Package
Patient data will most likely be submitted by hospitals or other healthcare providers in periodic batches, consisting of multiple patient records. The eHealth1 specification allows for the inclusion of multiple patients per package, and so these batches can be transmitted in a single submission. The number of patients included in each AIP is then a matter for local implementation, [Section 6.1](#section6.1).

Patient Medical Records are placed in a single representation within the ‘representations’ folder of the package. The representation should contain a METS file at its root (Representation METS), the folder structure of the representation should follow that defined by the CSIP and it must have a data folder. Within the data folder, there should be a folder for each Patient Record identified by a name that is unique within the package scope, follows the requirements of CSIP and contains to the Patient’s unique individual ID.

It is recommended, but not mandated that within each Patient Record folder that there are further folders that physically represent a Case, Sub-case, Document structure to aid human readability and navigation of the archive. If Patient Administrative and Patient Clinical Information is to be supplied, then this should be included at the root of each Patient Record. [Figure 4](#fig4) shows an example of a folder structure for a package where there are multiple Patient submissions and Patient Clinical information is included.

The package should contain a patient administrative information or manifest file within the root metadata/descriptive folder that at minimum contains the names of the patients whose records are contained in the package and a reference to their Patient ID.

<a name="fig4"></a>

![eHealth_SIP_Package_Structure](/specification/figs/fig_4_package_structure.svg "eHealth1_Package_Structure")

**Figure 4:** Example of Package Folder Structure and Multiple Patient Submissions and Case Structure

<a name="Section3.5"></a>

## 3.5 General Requirements

**EHGR1** – submission packages MUST contain at least one representation containing data from one or more Patients.

**EHGR2** – data from multiple Patients if present MUST be divided into separate Patient Record folders in the data folder of the representation. 

**EHGR3** – Patient data in a Patient Record SHOULD follow a Case/Document/File or Case/Sub-case/Document/File structure.

**EHGR4** – each submission package SHOULD contain a submission agreement in the root /documentation folder.

**EHGR5** – there MUST be a Patient manifest or Patient Administrative Information file located in the root /metadata/descriptive folder that at minimum contains  a list of Patient names and unique identifiers. The Patient Administrative Information file MAY contain personal and demographic information such as to aid searches for next of kin and research cohorts.

**EHGR6** – each Patient Record SHOULD contain Patient Administrative and Clinical Information file(s).

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

There MUST be one structural map present following the requirements of the CSIP.
