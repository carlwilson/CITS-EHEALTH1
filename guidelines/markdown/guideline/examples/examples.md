# Examples of application of the eHealth1 Specification

## Example 1 – the Piql eHealth SIP Creator (piqlIngest)

### Introduction

The Piql EHealth SIP Creator was developed as part of the E-ARK3 project in 2021 by Piql AS of Norway who were also the lead authors of the eHealth1 CITS as part of the project consortium. The objective of the development was to accompany the creation of the eHealth1 specification with: “..new supporting software services ...” and specifically “inclusion of an eHealth1 SIP creation component into the Sample Software Portfolio.” Consequently the Piql activity focused on the creation of an eHealth SIP creation software tool.

The eHealth1 specification builds on work done in Norway for standardisation of submissions to the National Health Archive (NHA), specifically via the EPJ (Electronic Patient Journal) specification for extraction of records from hospital Electronic Medical Record systems (EMR) [^16]. The Norwegian specification assumes that EMR system vendors will adapt their software to produce compliant submissions (as is required of the hospital by law). It is anticipated that this could be problematic in any jurisdiction, as there are few incentives for EMR system vendors to do this work. In general, any data producers requirement will be for simplicity in the production of compliant SIPs, i.e. using the standard database structures of the host EMR, extraction using easily available tools on standard platforms, consistency in processes and efficient production with common IT skills.

The Piql SIP Creator specification described an approach that required a lower level of bespoke work at system vendor or hospital level and proposed a SIP creation tool that could universally produce compliant submissions (to eHealth v1.0) for data exported from source EMR systems through SQL (or similar) queries. In addition the project produced a User Guide detailing the requirements for the submitting organisation.

Any central health archive may introduce additional requirements for the SIPs which extend or make mandatory requirements within the existing specification (e.g. metadata standards, submission agreements). The tool is open-source and available at GitHub at: <https://github.com/E-ARK-Software/piql_ingest>. Any Central Health Archive or data producer can modify the code to suit individual requirements. Note that the tool was written to support v1 of the specification and there is no current plan for it to be adapted to support v2.

### SIP Creator Tool

The Piql E-ARK SIP Creator is a version of an existing Windows desktop ingest tool (PiqlIngest) that was modified by Piql to create conformant E-ARK eHealth1 SIPs (to v1.0) from exports of Electronic Medical Record (EMR) systems structured in a prescribed manner. The tool can also automate bespoke scripts that transform non conformant into conformant exports by mapping and renaming directory structures and by mapping metadata files.

The eHealth1 SIP Creator is delivered as a self-contained zipped directory structure which contains executable code, dependencies, reference metadata schemas and sample data. The code is available from GitHub at: <https://github.com/E-ARK-Software/piql_ingest>. The contents of the SIP Creator package are shown in [Figure 8](#fig8) and the GUI is shown in [Figure 9](#fig9).

<a name="fig8"><a/>

![Piql SIP Creator Contents](figs/fig_8_piql_sip_creator_package.svg "Piql SIP Creator Contents")

**Figure 8:** PIQL SIP Creator Package Contents

<a name="fig9"><a/>

![SIP Creator Window](figs/fig_9_sip_creator_window.svg "SIP Creator Window")

**Figure 9:** SIP Creator Window

### Descriptive Metadata

The eHealth1 CITS Specification requires that Patient Administrative Information must be included in the information package at the root level and that Patient Clinical Information should be included within each Patient Medical Record.The FHIR Patient and Condition resources are recommended but not mandated and the SIP Creator has been configured to use these schemas as standard. At a minimum the Patient Administrative Information should be a simple Patient manifest with Patient names and references to unque identifiers.

eHealth1 SIPs should include all necessary xml schemas and the SIP Creator has been profiled to include schemas for METS, METS extensions, xlink, xml and the fhir base, Patient and condition schemas.

### Extracting Patient Records from EMR Systems

It is assumed that with the skills of a local DBA and basic scripting skills that organisations will be able to:

* Extract Patient administrative metadata together with unique Patient IDs and save to an xml file which will comply to either: the fhir-Patient resource, or a local xml schema. This can be for multiple Patients for each submission.
* Extract Patient medical record information (folders, documents, files) as separate Patient records each organised according to one of the case structures as described in the eHealth1 specification.
* Extract minimum viable Patient case clinical data that conforms to a recognised vocabulary (such as ICD), is linked to Patient cases in one of the above structures, is saved to xml files that comply with either: fhir-condition resource, any other fhir clinical resource, or to a local xml schema. There should be references for each record to the relevant Patient cases.

Patient ID and Case IDs should be included in the Case folder names.

### Using the SIP Creator

Submission packages are ingested into the tool by dragging and dropping from the top level folder of the submission.
The tool presents a metadata editing template with four tabs as follows:

* Software Version – this is pre-filled
* Submission Agreements
* Path or URL to submission agreement
* An identifier or reference code for the submission agreement
* Path or URL to the previous submission agreement
* An identifier or reference code for the previous submission agreement
* Agents
  * Creator organization name
  * Creator organization identifier
  * Archive organization name
  * Archive organization identifier
  * Preservation organization name
  * Preservation organization identifier
  * Submitter name (individual)
  * Submitter details (e.g. email address)
* Metadata schemas
  * Patient personal information schema name 
  * Path or URL to Patient personal information schema
  * Patient clinical information schema name 
  * Patient clinical information schema location
  
The output of the process is placed in the /outputs folder of the package as seen in [Figure 10](#fig10).

<a name="fig10"><a/>

![SIP in output folder](figs/fig_10_sip_in_output_folder.svg "SIP in output folder")

**Figure 10:** SIP in output folder

[^16]: <https://www.ehelse.no/standarder/epj-standard-del-5-arkivuttrekk>
