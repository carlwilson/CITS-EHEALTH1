## Use of Descriptive Metadata in eHealth1

<a name="Section4.2.1"><a/>

###  Archival Information

Medical Records or a mixed archive containing other types of records. In the case of a single subject archive the description of the archive is implicit and may be recorded outside of the archival packages themselves. In the case of a mixed archive it will be necessary to include archival description records in each archival package which should then follow the requirements of the Common Specification for Archival Information and use a standardised schema such as EAD3 or Dublin Core.

<a name="Section4.2.2"><a/>

### Patient Identifiers

Patients must have a nationally unique identifier that is referenced within the source EMR system and can be referenced to a National Death Register, such as a Social Security or other unique individual identifier.

<a name="Section4.2.3"><a/>

### Patient Personal Information

Patient Personal Information should, wherever possible conform to an international or national standard for describing patient information within EMR of EHR systems (e.g. HL7 FHIR contains a well-specified resource for Patient Personal Information and provides schemas in a number of formats)[^1].  At a minimum this file must contain patient names and unique identifiers and should contain personal and demographic information.

<a name="Section4.2.4"><a/>

### Patient Clinical Information

Structured Patient Clinical Information such as diagnoses, procedures, medication, allergies, etc., can add significant value to the Health Archive and, in particular, to the research use cases as described in 4.3. Clinical metadata associated with the Patient or Patient Cases can be added to the package or PatientRecord_ID/metadata/descriptive folders in the package. Clinical metadata should, wherever possible, conform to an international or national standard for describing patient clinical information with EMR and EHR systems (e.g. HL7 FHIR contains well-specified resources for clinical, diagnostic and medication data and provides schemas in a number of formats)[^2].  Clinical metadata should use recognised vocabularies and coding such as ICD and SNOMED.

[^1]: <https://www.hl7.org/fhir/patient.html>
[^2]: <https://www.hl7.org/fhir/clinicalsummary-module.html>, <https://www.hl7.org/fhir/diagnostics-module.html>, <https://www.hl7.org/fhir/medications-module.html>
