# General Requirements & Rationales

**EHGR1** – submission packages MUST contain at least one representation containing data from one or more Patients.

*Rationale* – the eHealth1 SIP is structured to allow aggregations of multiple Patient submissions into a single package, within a minimum single representation.

**EHGR2** – data from multiple Patients if present MUST be divided into separate Patient Record folders in the data folder of the representation.

*Rationale* – aggregations of multiple Patient’s data into a single SIP eases and simplifies the task for data producers to submit many records in batch submisions and subsequent processing at the archive. Organisation of the Patient Records into a single representation in the SIP allows for creating multiple Patient Recoprd AIPs and for generation of additional representations over time.

**EHGR3** – Patient data in a Patient record SHOULD follow a Case/Document/File or Case/Sub-case/Document/File structure.

*Rationale* – the Case/Sub-case/Document/File structure in eHealth1 follows a typical Patient Medical Record structure found in physical and EMR systems. It allows both digitised and born digital records to co-exit in the same archive and the Patient centricity allows secure and simple extraction of all data for a single Patient.

**EHGR4** – each submission package SHOULD contain a submission agreement in the root /documentation folder.

*Rationale* – a submission agreement between producer and archive details the agreement reached between the archive and producer on submission formats and other submission conditions or arrangements. A machine-readable format is recommended sych as that developed by Docuteam GmbH at:  <http://www.loc.gov/standards/mets/profiles/00000041.xml>

**EHGR5** – there MUST be a Patient manifest or Patient Administrative Information file located in the root /metadata/descriptive folder that at a minimum contains Patient names and unique identifiers. The Patient Administrative Information file MAY contain personal, demographic and clinical information such as to aid searches for next of kin and research cohorts.

*Rationale* – metadata in the root of the package should facilitate search and location of individual Patient Records such as to facilitate location of all data associated with a single Patient. It can also contain information such as to support searches based on demographic or clinical information in order to build cohorts of data for researchers.

**EHGR6** – each Patient Record SHOULD contain additional Patient Administrative Information and Clinical Information file(s).

*Rationale* –data/metadata located in the individual Patient Records can be extracted at the archive and used to build search indexes and databases such as to meet use cases for access such as next of kin information requests and creation of cohorts of data for research purposes
