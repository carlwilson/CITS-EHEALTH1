# Data Structure and Aggregations

## Case Structure

The names of aggregation levels within an archive and represented within an archival package (IP) will depend on the agreements between data producers (Creators) and archives. EAD3 has defined a set of values (class, collection, file, fonds, item, otherlevel, recordgrp, series, subfonds, subgrp, subseries) for that purpose, and it allows other values to be used in addition if they are defined as “otherlevel”. However, even though the aggregation levels in this context could be described in this way, the EAD template for archival description is considered unsuitable for describing the aggregations in a Patient Health Archive but may be used for general archival information. [Section 8](#metadata).

A Central Patient Health Archive has a single purpose and will most probably (due to security constraints) be instituted as a stand-alone entity or as a sub-entity within a larger institution (e.g. National Archive or Health Authority). The overall aggregation of a health archive is therefore implicit (it is an aggregation of Patient Medical Records), and further aggregation levels must be defined that suit the use cases for navigation within the archive and for the way in which the archive is populated.

Patient data will most likely be submitted by hospitals or other healthcare providers in periodic batches, consisting of multiple Patient records. Patient Medical Records may be submitted to a Central Health Archive when a Patient is known to have died, after a period of time when it is not feasible that a Patient is still alive (determined through regulations) or as periodic submission through the patient’s life. Depending upon the availability of a National Death Register, the accessibility and responsiveness to such a register and the periodic batching of archival extracts at healthcare providers, it cannot be expected that individual Patient submissions from multiple creators will be at all coordinated. Aggregation of a Complete Patient Record at the archive prior to submission into the preservation system is therefore deemed in this specification to be unlikely to be practical.

The proposed data structure for the aggregations of the submissions of Patient Medical Records is as shown in the data model in [Figure 3](#fig3). As Patient data is likely to be submitted in batches, each submission package will contain information from multiple Patients, and it is likely that these submissions will be split by the archive on receipt to create Patient-specific archival information packages (AIPs) in order to simplify the dissemination process. In this context, the submission package could be considered as a submission information collection (SIC) or collation of SIPs which is compiled to simplify extraction and transmission. However, for the purposes of this specification, the term SIP is used to mean both a submission package for a single Patient record or a submission package containing multiple Patient records. 

The levels of the aggregation in an eHealth1 package are proposed as follows:

* Patient: An individual who has received healthcare at any number of healthcare providers and who is described by Patient Personal Information [Section 8](#metadata). Each Patient will be identified by means of a unique identifier (ID) which is provided from the source EMR system. This unique ID connects the Patient Personal Information and the Patient Medical Record in the information package.
* Case: A Patient Medical Record can be structured in various ways, which may be dictated by national standards, guidance or local practice. A Patient’s Complete Medical Record will consist of multiple individual thematic Cases which may be concerned with particular medical conditions, periods or treatments. The proposed aggregation allows for flexibility in this grouping. These cases will be held in a healthcare provider’s local archive and may contain a number of Sub-cases and/or Documents with associated Data Files. 
* Sub-case: A Sub-case is an allowable type of component consisting of a set of Documents and Data Files that is nested below a Case. Sub-cases may originate in departments within a large hospital or may be related to a different diagnosis to other Sub-cases. A Sub-case may have common (to the Case) or specific metadata.
* Document: A Document is a component that may consist of multiple related Data Files with common metadata; for example, a document may be a PDF file together with associated attachments, or there may be a document and a separate signature sheet. A document can be considered to be an entity that is approved/signed as a whole.
* Data File: A Data file is a component that contains data and has an associated MIME file type. A Data File can be a single bit stream or can encapsulate bit streams and attributes according to a standard such as a DICOM or MP4, in which case it will have a recognised MIME file type. A Data File which is a container for multiple byte streams and metadata, can be included in the package as a Data File or can be unpacked and included as separate Byte Streams and metadata in METS. It is expected that containers such as DICOM and MP4 files will be submitted unaltered in Submission Information Packages (SIPs) and that any decision to unpack them is part of a preservation plan at the archive. 
* Byte Stream: A Byte Stream is a component that contains data, has an associated MIME file type and is encapsulated in a container such as MP4, DICOM or Matroska. Each Byte Stream has its own associated metadata, such as technical metadata which is generally only accessible with specialised tools (such as ffprobe for video container formats).

The proposed levels of aggregation are a suggestion and generally will take the form of that in the source EMR system and so may take account of local language and/or source system directory structures. If local terms are used, the addition of a revised vocabulary to the package for data structure terms is recommended, which should be placed in the schemas folder.

<a name="fig3"></a>

![eHealth1 SIP Data Model](figs/fig_3_eHealth1_SIP_Data_Model.svg "Data Model Structure")

**Figure 3:** eHealth1 SIP Data Model Structure

## Examples of Different Patient Record Submissions

With the flexibility of the structure of the eHealth1 archival package and the differences that are likely to be found in making Patient Medical Record extractions from disparate EMR systems, there can be expected to be different cases for the extraction of records.

### Example 1: The entire archived Patient Medical Record as one file (document)

In this example, the extraction of a Patient’s Medical Record consists of one unstructured file in, for example, PDF format, which contains a complete extract from an EMR system. In such a case, an archived Patient Medical Record will consist of one Case containing one Document and one Data File ([Figure 4](#fig4))

<a name="fig4"></a>

![Archived Patient Medical Record as one File](figs/fig_4_archived_patient_medical_record_one_file.svg "Archived Patient Medical Record as one File")

**Figure 4:** Archived Patient Medical Record as one File

### Example 2: The archived Patient Medical Record as a set of thematic files (documents)

In this example, extraction of the Patient’s Medical Record consists of a set of unstructured files, typically PDF documents, where each file includes all of the information within a subject/theme that reflects the organisation of information in the current system. In this example, an Archived Patient Medical Record would consist of a number of Cases, each containing one Document, each containing one Data File ([Figure 5](#fig5)).

<a name="fig5"></a>

![Archived Patient Medical Record as set of Files](figs/fig_5_archived_patient_medical_record_set_files.svg "Archived Patient Medical Record as set of Files")

**Figure 5:** Archived Patient Medical Record as set of Files

### Example 3: The archived Patient Medical Record as a set of Documents per Case

In this example, extraction of the Patient’s Medical Record consists of a set of unstructured files which can be documents, images, videos, DICOM files, etc., and where each Data File may be related to other Data Files within a Document which can be related to each other within a Case or a Sub-case [Figure 6](#fig6).

<a name="fig6"></a>

![Archived Patient Medical Record as set of documents](figs/fig_6_archived_patient_medical_record_set_documents.svg "Archived Patient Medical Record as set of Documents per Case")

**Figure 6:** Archived Patient Medical Record as set of Documents per Case

## Using the eHealth1 specification together with the Common Specification for Information Packages (CSIP)

The eHealth1 specification conforms to and extends the Common Specification for Information Packages (CSIP) and the specification for Submission Information Packages (E-ARK SIP). When extractions are made from EMR systems according to the structure described, they can be transmitted in a package following the principles described in the CSIP and IP specifications.

## Placement of data in an eHealth1 Information Package

As described in [Section 6.1](#case-structure) Patient data as submitted by hospitals or healthcare providers are likely to be periodically extracted from source systems and sent in batches. The eHealth1 specification allows for the inclusion of multiple Patients per package, and so these batches can be transmitted in a single submission. The number of Patients included in each AIP is then a matter for local implementation, although the decision in Norway at the National Health Archive was for each AIP to consist of data from a single Patient and from a single Submitting Organisation.

Patient Medical Records are placed in a single representation within the representations folder of the package. The ID of the representation should have a name that follows the requirements of CSIP.

The Patient Medical Record representation should contain a METS file at its root (Representation METS),  and the folder structure must follow that defined by the CSIP including containing a data folder. Multiple Patient Records are organised within the representation data folder in individual folders that have names that must contain the Patient unique identifier.

It is recommended but not mandated that within each Patient Record folder that there are further folders that physically represent the Case, Sub-case, Document structure to aid human readability and navigation of the archive. If Patient Administrative and/or Patient Clinical Information is provided, then this is held at the appropriate level within the Case structure in the Patient Medical Record. [Figure 7](#fig7) shows an example of a folder structure for a representation where there are multiple Patient submissions and clinical metadata included.

The package should contain a Patient Administrative Information or manifest file within the root metadata/descriptive folder that at minimum contains the names of the Patients whose records are contained in the package and a reference to their Patient ID.

<a name="fig7"></a>

![Example of Package Folder Structure](figs/fig_7_package_structure.svg "Example of Package Folder Structure with Multiple Patient Submissions and Case Structure")

**Figure 7:** Example of Package Folder Structure with Multiple Patient Submissions and Case Structure

## Archival Package (AIP) Representations

The CSIP and SIP specifications allow that packages contain multiple representations of data that form a single intellectual entity, be this an aggregation within an archival taxonomy, geophysical data with a given boundry or a complete archived relational database. Representations allow the same intellectual entity to be represented in different formats for example for long-term preservation or for access purposes.

In this version 2 of the eHealth1 specification Patient Medical Records have been organised into a single representation of a Submission Package such that multiple representations of data can be created within Archival Packages in order to aid preservation. This is a different organisation to version 1 of the specification, but allows the archiving of packages containing multiple, different Patient Records per AIP and for the for generation of additional representations of the data over time.
