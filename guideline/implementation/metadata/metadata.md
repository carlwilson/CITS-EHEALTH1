# 8	Metadata
<a name="section8.1"><a/>
## 8.1 Use of METS in eHealth1
CSIP specifies that METS files be located at the root of the package folder structure (Root METS) and optionally in each of the Representations within its respective root folder (Representation METS). As has been described previously, the eHealth1 CITS defines a package that has been submitted by a single institution and may contain information concerning either single or multiple Patients. In the case of a multiple Patient submission, there will be multiple Patient Records within a data folder in a single  Representation, with its own Representation METS file.
<a name="section8.2"><a/>
## 8.2 Root METS File
The root METS file must adhere to the requirements of the CSIP and Information Package specifications. In addition, there are specific requirements for the eHealth1 CITS, and in some cases, the level of the CSIP or package requirements have been increased (but never decreased). Detailed requirements for the root METS file are found in the specification document.
<a name="section8.3"><a/>
## 8.3 Representation METS File
The Representation METS file is used to describe the data structure of the Patient Medical Records held in the data folder of the Representation via the structMap element and to reference any additional technical metadata. Details of requirements for the Representation METS can be found in the specification document.
<a name="section8.4"><a/>
## 8.4 Use of Descriptive Metadata in eHealth1
### 8.4.1 Archival Description
If the health archive is a distincy entity containing only Patient Medical Records
### 8.4.2 Patient Identifiers
Patients must have a nationally unique identifier that is referenced within the source EMR system, such as a Social Security or other unique individual identifier.
### 8.4.3 Patient Personal Information
Patient Personal Information should, wherever possible conform to an international or national standard for describing Patient information within EMR of EHR systems (e.g. HL7 FHIR contains a well-specified resource for Patient Personal Information and provides schemas in a number of formats)[^1].  At a minimum the file located in the root/metadata/descriptive folder must contain Patient names and unique identifiers and may contain personal and demographic information.
### 8.4.4 Patient Clinical Information
Structured Patient Clinical Information such as diagnoses, procedures, medication, allergies, etc., can add significant value to the Health Archive and, in particular, to the research use cases as described above. Patient Clinical Information associated with the Patient or Patient Cases can be added to the individual Patient Records either at Patient or appropriate Case, Sub-case or Document level. Patient Clinical Information should, wherever possible, conform to an international or national standard for describing Patient Clinical Information with EMR or EHR systems (e.g. HL7 FHIR contains well-specified resources for clinical, diagnostic and medication data and provides schemas in a number of formats)[^2].  Clinical Information should use recognised vocabularies and coding such as ICD and SNOMED.

[^1]: https://www.hl7.org/fhir/Patient.html
[^2]: https://www.hl7.org/fhir/clinicalsummary-module.html, https://www.hl7.org/fhir/diagnostics-module.html, https://www.hl7.org/fhir/medications-module.html
