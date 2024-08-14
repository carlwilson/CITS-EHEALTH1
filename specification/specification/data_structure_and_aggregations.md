# 6 Data Structure and Aggregations

<a name="section 6.1"><a/>

## 6.1 Case Structure and Data Aggregation
The names of aggregation levels within an archive and represented within an archival package (IP) will depend on the agreements between data producers (Creators) and archives. EAD3 has defined a set of values (class, collection, file, fonds, item, otherlevel, recordgrp, series, subfonds, subgrp, subseries) for that purpose, and it allows other values to be used in addition if they are defined as “otherlevel”. However, even though the aggregation levels in this context could be described in this way, the EAD template for archival description is considered unsuitable for describing the aggregations in a Patient Health Archive but may be used for general archival information [Section 10](descriptive_metadata.md).

A Central Patient Health Archive has a single purpose and may be instituted as a stand-alone entity or as a sub-entity within a larger institution (e.g. National Archive or Health Authority). The overall aggregation of a health archive is therefore implicit (it is an aggregation of Patient Medical Records), and further aggregation levels must be defined that suit the use cases for navigation within the archive and for the way in which the archive is populated.

Patient Medical Records will be submitted to a Central Health Archive either when a patient is known to have died or after a period of time when it is not feasible that a patient is still alive (determined through regulations). Depending upon the availability of a National Death Register, the accessibility and responsiveness to such a register and the periodic batching of archival extracts at healthcare providers, it cannot be expected that individual patient submissions from multiple creators will be at all coordinated. Aggregation of a total patient record at the archive prior to submission into the preservation system is therefore deemed impractical in this specification.

The proposed data structure for the aggregations of the submissions of Patient Medical Records is as shown in the data model in Figure 3. As patient data is likely to be submitted in batches, each submission package will contain information from multiple Patients, and it is likely that these submissions will be split by the archive on receipt to create Patient-specific archival information packages (AIPs) in order to simplify the dissemination process. In this context, the submission package could be considered as a submission information collection (SIC) or collation of SIPs which is compiled to simplify extraction and transmission. However, for the purposes of this specification, the term SIP is used to mean both a submission package for a single Patient Record or a submission package containing multiple Patient Records. 

The levels of the aggregation in an eHealth1 package are as follows:
- Patient: An individual who has received healthcare at any number of healthcare providers and who is described by Patient Personal Information (see 7.3.2). Each patient will be identified by means of a unique identifier (ID) which is provided from the source EMR system. This unique ID connects the Patient Personal Information and the Patient Medical Record in the information package.
- Case: A Patient Medical Record can be structured in various ways, which may be dictated by national standards, guidance or local practice. A Patient’s Complete Medical Record will consist of multiple individual thematic Cases which may be concerned with particular medical conditions, periods or treatments. The proposed aggregation allows for flexibility in this grouping. These cases will be held in a healthcare provider’s local archive and may contain a number of Sub-cases and/or Documents with associated Data Files. 
- Sub-case: A Sub-case is an allowable type of component consisting of a set of Documents and Data Files that is nested below a Case. Sub-cases may originate in departments within a large hospital or may be related to a different diagnosis to other Sub-cases. A Sub-case may have common (to the Case) or specific metadata.
- Document: A Document is a component that may consist of multiple related Data Files with common metadata; for example, a document may be a PDF file together with associated attachments, or there may be a document and a separate signature sheet. A document can be considered to be an entity that is approved/signed as a whole.
- Data File: A Data file is a component that contains data and has an associated MIME file type. A Data File can be a single bit stream or can encapsulate bit streams and attributes according to a standard such as a DICOM or MP4, in which case it will have a recognised MIME file type. A Data File, which is a container for multiple byte streams and metadata, can be included in the package as a Data File or can be unpacked and included as separate Byte Streams and metadata in METS. It is expected that containers such as DICOM and MP4 files will be submitted unaltered in Submission Information Packages (SIPs) and that any decision to unpack them is part of a preservation plan at the archive. 
- Byte Stream: A Byte Stream is a component that contains data, has an associated MIME file type and is encapsulated in a container such as MP4, DICOM or Matroska. Each Byte  Stream has its own associated metadata, such as technical metadata, but which is generally only accessible with specialised tools (such as ffprobe for video container formats).
<a name="fig3"></a>
![eHealth1 SIP Data Model](/specification/figs/fig_3_eHealth1_SIP_Data_Model.svg "eHealth1 SIP Data Model")

**Figure 3:** eHealth1 SIP Data Model

<a name="section 6.2"><a/>

## 6.2 Using the eHealth1 specification together with the Common Specification for Information Packages (CSIP)
The eHealth1 specification conforms to and extends the Common Specification for Information Packages (CSIP) and the Specification for Submission Information Packages (E-ARK SIP). When extractions are made from EMR systems according to the structure described, they can be transmitted in a package following the principles described in the CSIP and IP specifications.

<a name="section 6.3"><a/>

## 6.3 Placement of data in an eHealth1 Information Package
Patient data will most likely be submitted by hospitals or other healthcare providers in periodic batches, consisting of multiple patient records. The eHealth1 specification allows for the inclusion of multiple patients per package, and so these batches can be transmitted in a single submission. The number of patients included in each AIP is then a matter for local implementation, [Section 6.1](#section6.1).

Patient Medical Records are placed in a single representation within the ‘representations’ folder of the package. The representation should contain a METS file at its root (Representation METS), the folder structure of the representation should follow that defined by the CSIP and it must have a data folder. Within the data folder, there should be a folder for each Patient Record identified by a name that is unique within the package scope, follows the requirements of CSIP and contains to the Patient’s unique individual ID.

It is recommended, but not mandated that within each Patient Record folder that there are further folders that physically represent a Case, Sub-case, Document structure to aid human readability and navigation of the archive. If Patient Administrative and Patient Clinical Information is to be supplied, then this should be included at the root of each Patient Record. [Figure 4](#fig4) shows an example of a folder structure for a package where there are multiple Patient submissions and Patient Clinical information is included.

The package should contain a patient administrative information or manifest file within the root metadata/descriptive folder that at minimum contains the names of the patients whose records are contained in the package and a reference to their Patient ID.
<a name="fig4"></a>
![eHealth_SIP_Package_Structure](/specification/figs/fig_4_package_structure.svg "eHealth1_Package_Structure")

**Figure 4:** Example of Package Folder Structure and Multiple Patient Submissions and Case Structure
