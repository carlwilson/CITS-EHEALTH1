# Elements of an eHealth Archive

## Physical and Electronic Patient Records

A Patient Medical Record can be defined as: “a collection or compilation of recorded information about a Patient in connection with healthcare; the Patient record is the principal repository for information concerning a Patient’s health care”[^1].  Prior to the widespread implementation of Electronic Medical Record (EMR) systems, the recording of Patient health records was paper and film-based (plus additional materials which could be images, video, audio).

Electronic Medical Records (EMRs) are digital versions of paper or film records. A healthcare provider may have a single EMR system for all of its Patient records or for larger organisations; there can be fragmentation because of specialisation or organisational sub-division, and a Patient’s total medical record at that organisation may be constituted from many subsidiary systems. A considerable volume of these Patient records exist at healthcare providers and within centralised organisations because of legal remits to store the records for extended periods.

A Complete Patient Medical Record may contain information that is sourced from several different organisations’ systems (e.g. different hospitals, specialist healthcare providers, primary healthcare providers) and viewed from an archive/academic perspective; the information in each of these organisations constitutes an archive (or several archives).  In creating a Central Health Archive, it is necessary for a healthcare provider to make separate extractions from each system, for each Patient to be included in a delivery and to aggregate them before submission to the central archive.

The creation of a Central Health Archive can encompass the digitisation and preservation of physical records as well as the collection and preservation of electronic records from EMR systems. A Patient’s aggregated medical record is not complete until there are no new additions to it (i.e. when the individual has died), but depending on local practice a health archive can consist only of records for Patients who are known or who are believed to be deceased or of live and deceased patients.


## Electronic Medical Record and Health Record Systems

The terms “electronic medical record” and “electronic health record” (or “EMR” and “EHR”) can be used interchangeably. However, the difference between the two terms is quite significant and particularly so in the context of archiving standards.

EMR is the older term, and early EMRs were medical in nature; they were for use by clinicians mostly for diagnosis and treatment. Because of a lack of available standards when EMR systems were first developed, the information in EMRs does not travel easily out of a healthcare provider. In fact, the Patient’s record might have to be printed out and delivered by mail to specialists or other members of the care team. In that regard, EMRs are not much better than paper records.

Electronic health records (EHRs) focus on the total health of the Patient—going beyond standard clinical data collected in the provider’s office and inclusive of a broader view on a Patient’s care. EHRs are designed to reach out beyond the health organisation that originally collects and compiles the information. They are built to share information with other healthcare providers, such as laboratories and specialists, so they contain information from all the clinicians involved in the Patient’s care. The National Alliance for Health Information Technology stated that EHR data “can be created, managed, and consulted by authorised clinicians and staff across more than one healthcare organisation”[^2].

The information moves with the Patient—to the specialist, the hospital, the nursing home, or even across a region or country. In comparing the differences between record types, HIMSS [^3]  Analytics stated that “the EHR represents the ability to easily share medical information among stakeholders and to have a Patient’s information follow him or her through the various modalities of care engaged by that individual.” EHRs are designed to be accessed by all people involved in the Patient’s care—including the Patients themselves. Indeed, that is an explicit expectation in the Stage 1 definition of “meaningful use” of EHRs.

The benefits of EHR systems to Patient care mean that the trajectory for healthcare worldwide is towards national or regional EHR systems. The complexity and lack of standards in existing systems mean that realisation is difficult and expensive. Adoption is hence not yet widespread. Implementations of EHR systems can also rely on summary Patient data gathered by means of standardised clinical documents (such as HL7 CDAs). This means that extractions from EHR systems can sometimes only yield Patient summary data and not the Complete Patient Medical Record.

The development of standards and technology that make EHR systems possible (such as the encoding of key clinical data, medical data interoperability standards such ICD, DICOM, SNOMED and HL7 FHIR) makes the future scope of a national health archive a different proposition; systems will exist containing a Patient’s total health history, richly encoded and ideally suited to analytical techniques for ‘big data’. Systems in principle will be able to grow over time containing records from both live and deceased Patients.

## Use Cases for a Central Health Archive

The eHealth1 Centent Information Specification (CITS) was developed as a result of creation of a centralised Patient Medical Record archive in Norway. According to the health archive regulation, the mission of the Norwegian National Health Archive (NHA) [^4] is to:

1. receive and preserve Patient archives from public and private hospitals, and
2. to disseminate health information for researchers and the Patients next of kin in compliance with regulations and confidentiality acts.

There is no limit to the age of the records to be presented to the NHA from hospitals and so consist of physical and electronic Patient records.

The Norwegian regulation envisions two possible use cases for the archive when built, which are:

1. To provide records to next of kin in compliance with open information regulation;
2. To harvest the vast amount of historical healthcare-related data within the archive for medical research.

In order to achieve use case a, it is necessary to ensure that the specification allows for access to all of the records pertaining to a single Patient, regardless of the submitting institution.

Use case 2. requires that the specification allows for ingestion of digitised records and the ingestion of extracts from EMR systems for all Patients and that sufficient metadata is provided to enable searches across the archive to create cohorts to support medical research. Metadata regarding Patient personal information and Patient clinical information may be encoded in EMR systems or may have to be entered at a digitisation stage. The scope of the metadata to be included in the archive is therefore very much a determination for the local and national organisations based on the existing records, resources available, standards, etc.

[^1]:Institute of Medicine (US) Committee on Improving the Patient Record; Dick RS, Steen EB, Detmer DE, editors. The Computer-Based Patient Record: Revised Edition: An Essential Technology for Health Care. Washington (DC): National Academies Press (US); 1997. 1, Introduction. Available from: <https://www.ncbi.nlm.nih.gov/books/NBK233055/>
[^2]: <https://www.healthcareusability.com/article/terminology-hit-emr-ehr>
[^3]: HIMSS Analytics himssanalytics.org
[^4]: <https://ehandbok.arkivverket.no/folder/92>
