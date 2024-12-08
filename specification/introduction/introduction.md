# Introduction

## Purpose
The purpose of this document is to describe the Content Information Type Specification (CITS) for Patient Medical Records (eHealth1). This specification is supported by METS profiles for the Root and Representation METS files and an accompanying Guideline document. 

## Scope

This specification makes the following assumptions:

- A business case for the creation of an eHealth archive includes the incorporation of a backlog of physical and digital patient records. 
- An eHealth archive concerns the Complete Patient Medical Records for patients within the jurisdiction. Note that the term ‘jurisdiction’ does not imply that a Central Health Archive must be at a national or federal level. Many health administrations are organised at a state or region level, and the specification is equally valid for this scenario. Note also that there are significant potential benefits for the use of the standard for archiving of Patient Medical Records if complied with by all regional administrations within a federation. This can also apply to environments where there are private healthcare providers, and a Central Health Archive is being created by a controlling administration.
- The use cases considered by the specification for an eHealth archive are described in the accompanying Guideline.

There are two options for extracting patient records from an EMR or EHR system which can be dependent to a certain extent on the source system data structure:

### Extracting data in a relational database structure

If the structure of the source EHR/EMR system is wholly a relational database, then the extraction of selected records can be made into a long-term database preservation format (SIARD) that preserves the properties of the database such that the data can be imported into a relational database management system (RDBMS) at the time of access. Access can happen through database queries or a search field. 

Further information on the limitations of this approach, particularly for the use cases behind the eHealth1 CITS is given in the accompanying Guideline.

The SIARD specification, together with a Content Information Type Specification for SIARD, represents the SIP profile for the relational databases content type. More information can be found at <https://dilcis.eu/content-types/siard>.

Extractions can be made from such wholly relational database systems programmatically that create the aggregated structure required for eHealth1 and as seen in traditional EMR systems and physical Patient Record archives. For the use cases described in this Content Information Specification it is recommended that this approach is followed.

### Extracting data and metadata as aggregations of patient medical records

Digitisation of physical Patient Medical Records or extraction of electronic records from more traditional EMR systems produces a case type structure of files and accompanying metadata as described in the Guideline. Being extracted in this manner makes them directly accessible for validation, data management, indexing and searching. The structured semantic metadata description is explicit rather than hidden inside an RDBMS.  This methodology also supports the incremental extraction of records over time for submission to the Archive and in addition:

- Records from different sources can be merged (complete Patient Medical Records can be synthesised from multiple submissions)
- Search and access is possible across all records and sources
- Records can be managed individually and uniformly
- The original EMR/EHR system software does not need to be licensed or preserved

This specification considers this particular extraction method within the context of the use cases as described in the Guideline.

## Layered Data Model

This section introduces the role of the CITS eHealth1 and its dependencies on the basic structures of the Information Package.

> This specification is created based on the requirements of the Common Specification for Information Packages (CSIP),  the specification for Submission Information Packages (E-ARK SIP) and the specification for Archival Information Packages (E-ARK AIP). To fully understand its requirements, we highly recommend that users review the requirements and the terminology of the source documents, before using this specification.

The data model structure is based on a layered approach for information package definitions [Figure 2](#fig2). The Common Specification for Information Packages (CSIP) forms the outermost layer. The general SIP, AIP and DIP specifications add respectively, submission, archiving and dissemination information to the CSIP specification. The third layer of the model represents specific content information type specifications, such as this CITS eHealth1 specification. Additional layers for business-specific specifications and local variant implementations of any specification can be added to suit the needs of the organisation.

<a name="fig2"></a>
![Data Model Structure](/specification/figs/fig_2_data_model_structure.svg "Data Model Structure")

**Figure 2:** Data Model Structure

Every level in the data model structure inherits metadata entities and elements from the higher levels. In order to increase adoption, a flexible schema has been developed. This will allow for extension points where the schema in each layer can be extended to accommodate additional information on the next specific layer until, finally, the local implementation can add specific entities or metadata elements to satisfy specific local needs. Extension points can be implemented by:

Embedding foreign extension schemas (in the same way as supported by METS [http://www.loc.gov/standards/mets/] and PREMIS [http://www.loc.gov/standards/premis/]). These both support increasing the granularity of existing metadata elements by using more detailed data structures as well as adding new types of metadata.

Substituting metadata schemas for standards more appropriate for the local implementation. 

The structure allows the addition of more detailed requirements for metadata entities, for example, by:

- Increasing the granularity of metadata elements by using more detailed data structures, or
- Adding local controlled vocabularies.
- For consistency, design principles are reused between layers as much as possible.
