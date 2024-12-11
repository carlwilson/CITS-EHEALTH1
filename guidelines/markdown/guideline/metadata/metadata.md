# Metadata

## Use of METS in eHealth1

CSIP specifies that METS files be located at the root of the package folder structure (Root METS) and optionally in each of the Representations within its respective root folder (Representation METS). As has been described previously, the eHealth1 CITS defines a package that has been submitted by a single institution and may contain information concerning either single or multiple Patients. In the case of a multiple Patient submission, there will be multiple Patient Records within a data folder in a single  Representation, with its own Representation METS file.

## Root METS File

The root METS file must adhere to the requirements of the CSIP and Information Package specifications. In addition, there are specific requirements for the eHealth1 CITS, and in some cases, the level of the CSIP or package requirements have been increased (but never decreased). Detailed requirements for the root METS file are found in the specification document.

## Representation METS File

The Representation METS file is used to describe the data structure of the Patient Medical Records held in the data folder of the Representation via the structMap element and to reference any additional technical metadata. Details of requirements for the Representation METS can be found in the specification document.

## Use of Descriptive Metadata in eHealth1

### Archival Information

According to local factors the health archive may be a distinct, specialised entity containing only Patient Medical Records or a mixed archive containing other types of records. In the case of a single subject archive the description of the archive is implicit and archival description information may be recorded outside of the archival packages themselves. In the case of a mixed archive it will be necessary to include archival description records in each archival package which should then follow the requirements of the Common Specification for Archival Information, use a standardised schema such as EAD3 or Dublin Core or a localised schema definition.

### Patient Identifiers

Patients must have a nationally unique identifier that is referenced within the source EMR system, such as a Social Security or other unique individual identifier.

### Patient Personal Information

Patient Personal Information should, wherever possible conform to an international or national standard for extracting Patient information within EMR of EHR systems (e.g. ISO 13606 or HL7 FHIR)
[Section 5](/guideline/implementation/standards.md)  At a minimum the file located in the root/metadata/descriptive folder must contain Patient names and unique identifiers and may contain personal and demographic information.

### Patient Clinical Information

Structured Patient Clinical Information such as diagnoses, procedures, medication, allergies, etc., can add significant value to the Health Archive and, in particular, to the research use cases as described above. Patient Clinical Information associated with the Patient or Patient Cases can be added to the individual Patient Records either at Patient or appropriate Case, Sub-case or Document level. Patient Clinical Information should, wherever possible, conform to an international or national standard for extracting Patient Clinical Information from EMR or EHR systems (e.g. ISO 13606 or HL7 FHIR) [Section 5](/guideline/implementation/standards.md).  Clinical Information should use recognised vocabularies and coding such as ICD and SNOMED.
