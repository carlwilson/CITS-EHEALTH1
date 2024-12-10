#### Representation METS header element (element metsHdr)

There are no requirements for a specific header element in the representation METS. The eHealth1 representation metsHdr element should comply with the metsHdr requirements in the SIP profile.
Note that the information contained in the representation header element relate specifically to the representation METS document.

#### Representation METS descriptive metadata section (element dmdSec)

The Representation may contain additional descriptive metadata within the metadata/descriptive folder as described in the CSIP. It is recommended however that Patient Clinical Information related to the Patient Cases that can contain clinical information (diagnoses, conditions, procedures, allergies, family history, care plans) such as can be found in ISO 13606 or the HL7 FHIR Clinical Module  and that has been extracted from the source EMR system is included within each individual Patient Record in the repname/data folder, such as to simplify separation of Patient records into individual SIPs at the Archive. Use of metadata standards and codings (e.g. International Classification of Diseases ICD, <https://www.who.int/classifications/icd/en/>, Systematized Nomenclature of Medicine, SNOMED CT, <www.snomed.org>) is encouraged. Where used, references to the specific schemas os resources should be given together with relevant version information.

#### Representation METS administrative metadata section (element amdSec)

The administrative metadata section contains four sub-sections, each used to record different types of metadata for package content:

- technical metadata (element techMD) records technical metadata;
- rights metadata (element rightsMD) records intellectual property rights information;
- source metadata (element sourceMD) records descriptive, technical or rights metadata for an analogue source for a digital library object; and
- digital provenance metadata (element digiprovMD) records digital preservation information (e.g. audit information covering a digital library object’s life-cycle).

The CSIP only describes the use of the elements digiprovMD and rightsMD within the administrative metadata section of the METS.

The CSIP (and METS) categorises preservation metadata as administrative metadata, specifically Digital Provenance metadata (following the available guidelines published by the PREMIS EC guidelines: <http://www.loc.gov/standards/premis/guidelines2017-premismets.pdf>). Hence all preservation metadata should be referenced from a digiprovMD element within the amdSec.

The METS amdSec element should include references to all relevant metadata located in the folder “repname/metadata/preservation”. The package level METS.xml file should only reference package level preservation metadata. Representation level METS.xml files should only reference representation level preservation metadata.

In eHealth1, it is required that any rights or digital provenance metadata that is general to the package can be held within the root metadata folder and that any rights or digital provenance metadata that is specific to the data held in the representation should be held in the representation metadata folder.

The eHealth1 representation METS document amdSec element should comply with the requirements in the CSIP profile.
