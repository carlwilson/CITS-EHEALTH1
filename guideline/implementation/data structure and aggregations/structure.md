# Data Structure and Aggregations
## Case Structure
The names of aggregation levels within an archive and represented within an archival package (IP) will depend on the agreements between data producers (Creators) and archives. EAD3 has defined a set of values (class, collection, file, fonds, item, otherlevel, recordgrp, series, subfonds, subgrp, subseries) for that purpose, and it allows other values to be used in addition if they are defined as “otherlevel”. However, even though the aggregation levels in this context could be described in this way, the EAD template for archival description is considered broadly unsuitable for a Patient Health Archive.

A Central Patient Health Archive has a single purpose and will most probably (due to security constraints) be instituted as a stand-alone entity or as a sub-entity within a larger institution (e.g. National Archive or Health Authority). The overall aggregation of a health archive is therefore implicit (it is an aggregation of Patient Medical Records), and further aggregation levels must be defined that suit the use cases for navigation within the archive and for the way in which the archive is populated.

Patient data will most likely be submitted by hospitals or other healthcare providers in periodic batches, consisting of multiple Patient records. Patient Medical Records will be submitted to a Central Health Archive either when a Patient is known to have died or after a period of time when it is not feasible that a Patient is still alive (determined through regulations). Depending upon the availability of a National Death Register, the accessibility and responsiveness to such a register and the periodic batching of archival extracts at healthcare providers, it cannot be expected that individual Patient submissions from multiple creators will be at all coordinated. Aggregation of a Complete Patient Record at the archive prior to submission into the preservation system is therefore deemed in this specification to be unlikely to be practical.

The proposed data structure for the aggregations of the submissions of Patient Medical Records is as shown in the data model in Figure 3. As Patient data is likely to be submitted in batches, each submission package will contain information from multiple Patients, and it is likely that these submissions will be split by the archive on receipt to create Patient-specific archival information packages (AIPs) in order to simplify the dissemination process. In this context, the submission package could be considered as a submission information collection (SIC) or collation of SIPs which is compiled to simplify extraction and transmission. However, for the purposes of this specification, the term SIP is used to mean both a submission package for a single Patient record or a submission package containing multiple Patient records. 

The levels of the aggregation in an eHealth1 package are as follows:
- Patient: An individual who has received healthcare at any number of healthcare providers and who is described by Patient Personal Information (see 8.4.2). Each Patient will be identified by means of a unique identifier (ID) which is provided from the source EMR system. This unique ID connects the Patient Personal Information and the Patient Medical Record in the information package.
- Case: A Patient Medical Record can be structured in various ways, which may be dictated by national standards, guidance or local practice. A Patient’s Complete Medical Record will consist of multiple individual thematic Cases which may be concerned with particular medical conditions, periods or treatments. The proposed aggregation allows for flexibility in this grouping. These cases will be held in a healthcare provider’s local archive and may contain a number of Sub-cases and/or Documents with associated Data Files. 
- Sub-case: A Sub-case is an allowable type of component consisting of a set of Documents and Data Files that is nested below a Case. Sub-cases may originate in departments within a large hospital or may be related to a different diagnosis to other Sub-cases. A Sub-case may have common (to the Case) or specific metadata.
- Document: A Document is a component that may consist of multiple related Data Files with common metadata; for example, a document may be a PDF file together with associated attachments, or there may be a document and a separate signature sheet. A document can be considered to be an entity that is approved/signed as a whole.
- Data File: A Data file is a component that contains data and has an associated MIME file type. A Data File can be a single bit stream or can encapsulate bit streams and attributes according to a standard such as a DICOM or MP4, in which case it will have a recognised MIME file type. A Data File which is a container for multiple byte streams and metadata, can be included in the package as a Data File or can be unpacked and included as separate Byte Streams and metadata in METS. It is expected that containers such as DICOM and MP4 files will be submitted unaltered in Submission Information Packages (SIPs) and that any decision to unpack them is part of a preservation plan at the archive. 
- Byte Stream: A Byte Stream is a component that contains data, has an associated MIME file type and is encapsulated in a container such as MP4, DICOM or Matroska. Each Byte Stream has its own associated metadata, such as technical metadata which is generally only accessible with specialised tools (such as ffprobe for video container formats).

<a name="fig3"></a>
![eHealth1 SIP Data Model](/guideline/figs/fig_3_eHealth1_SIP_Data_Model.svg "Data Model Structure")

**Figure 3:** eHealth1 SIP Data Model Structure

## Examples of Different Patient Record Submissions
With the flexibility of the structure of the eHealth1 archival package and the differences that are likely to be found in making Patient Medical Record extractions from disparate EMR systems, there can be expected to be different cases for the extraction of records.
### Example 1: The entire archived Patient Medical Record as one file (document)
In this example, the extraction of a Patient’s Medical Record consists of one unstructured file in, for example, PDF format, which contains a complete extract from an EMR system. In such a case, an archived Patient Medical Record will consist of one Case containing one Document and one Data File(see Figure 4).

<a name="fig4"></a>
![Archived Patient Medical Record as one File](/guideline/figs/fig_4_archived_patient_medical_record_one_file.svg "Archived Patient Medical Record as one File")

**Figure 4:** Archived Patient Medical Record as one File

### Example 2: The archived Patient Medical Record as a set of thematic files (documents)
In this example, extraction of the Patient’s Medical Record consists of a set of unstructured files, typically PDF documents, where each file includes all of the information within a subject/theme that reflects the organisation of information in the current system. In this example, an Archived Patient Medical Record would consist of a number of Cases, each containing one Document, each containing one Data File (see Figure 5).

<a name="fig5"></a>
![Archived Patient Medical Record set of Documents](/guideline/figs/fig_5_archived_patient_medical_record_set_documents.svg "Archived Patient Medical Record as set of Documents")

**Figure 4:** Archived Patient Medical Record as set of Documents file
