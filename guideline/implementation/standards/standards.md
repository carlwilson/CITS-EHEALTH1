# 5 Standards
<a name="section5.1"></a>
## 5.1 eHealth Standards and their use in the eHealth1 Specification
Controlled vocabularies and coding provide a standardised way for the unambiguous recording of health data. Most EMR and all EHR systems will hold coded data concerning Patient Cases that can be extracted as metadata for the Patient Medical Record and will use an international standard such as ICD or SNOMED. Data can be recorded in a standardised (such as OpenEHR) formats or to a local format which is specified by the health archive and referenced within a Submission Agreement.
<a name="section5.2"></a>
##  5.2 HL7 FHIR [^1] 
Fast Healthcare Interoperability Resources (FHIR, pronounced “fire”) is a standard describing data formats and elements (known as ‘resources’) and an application programming interface (API) for exchanging electronic health records (EHR). The standard was created by the Health Level Seven International (HL7) healthcare standards organisation.

Its goals are to facilitate interoperation between legacy healthcare systems, to make it easy to provide healthcare information to healthcare providers and individuals on a wide variety of devices from computers to tablets to mobile phones and to allow third-party application developers to provide medical applications which can be easily integrated into existing systems [^2]. 

FHIR provides resources that can be used for the standardised description of Patient Personal Information and Patient Clinical Information, which reference controlled vocabulary and coding standards such as ICD and SNOMED. The use of FHIR is suggested within eHealth1, but local standards for encoding metadata are allowable if specified elsewhere and referenced within a Submission Agreement.
<a name="section5.3"></a>
## 5.3 HL7 Clinical Document Architecture and CDA R2 International Patient Summary [^3]
HL7 CDA provides a standard for the organisation of material within clinical documents for exchange between systems. By using XML, the HL7 v3 standard and coded vocabularies, the CDA facilitates the exchange of both machine and human-readable documents, enabling electronic processing for decision support, etc., whilst being easily retrieved and used by the people who need them (HL7 UK, 2018).

According to HL7 : “An International Patient Summary (IPS) document is an electronic health record extract containing essential healthcare information intended for use in the unscheduled, cross-border care scenario, comprising at least the required elements of the IPS dataset. The IPS dataset is a minimal and non-exhaustive Patient summary dataset, specialty agnostic, condition-independent, but readily usable by clinicians for the cross-border unscheduled care of a Patient.”
<a name="section5.4"></a>
## 5.4 ICD [^4]
The International Classification of Diseases is the foundation for the identification of health trends and statistics globally and the international standard for reporting diseases and health conditions. It is the diagnostic classification standard for all clinical and research purposes. ICD defines the universe of diseases, disorders, injuries and other related health conditions, listed in a comprehensive, hierarchical fashion that allows for:

- easy storage, retrieval and analysis of health information for evidence-based decision making;
- sharing and comparing health information between hospitals, regions, settings and countries; and
- data comparisons in the same location across different time periods.

ICD is mapped from other standards such as HL7 FHIR and will be part of the process used by many institutions to record Patient Clinical Information. The use of international standards such as ICD within supplied clinical metadata is encouraged but will be limited by their use within the source EMR or EHR system.
<a name="section5.5"></a>
## 5.5 SNOMED [^5]
SNOMED CT or SNOMED Clinical Terms is a systematically organised computer processable collection of medical terms providing codes, terms, synonyms and definitions used in clinical documentation and reporting. SNOMED CT is considered the most comprehensive, multilingual clinical healthcare terminology in the world. The primary purpose of SNOMED CT is to encode the meanings that are used in health information and to support the effective clinical recording of data to improve Patient care. SNOMED CT provides the general core terminology for electronic health records [^10].  

SNOMED CT is mapped from other standards such as HL7 FHIR and will be part of the process used by many institutions to record Patient Clinical Information. The use of international standards such as SNOMED CT within supplied clinical metadata is encouraged but will be limited by their use within the source EMR or EHR system.
<a name="section5.6"></a>
## 5.6 DICOM [^6]
Digital Imaging and Communications in Medicine (DICOM) is the standard for the communication and management of medical imaging information and related data.

A DICOM file is a file that encapsulates attributes and bit streams (image, video, etc.) and has embedded Patient Personal Information and IDs. DICOM files have a recognised MIME file type. Extraction of DICOM files from specialised EMR systems for inclusion in Patient Medical Records should present no problem, but it should be ensured that Patient IDs in DICOM files match those in archival package Patient Personal Information. 
<a name="section5.7"></a>
## 5.7 eHealth DSI (eHealth Digital Service Infrastructure) [^7]
The eHealth Digital Service Infrastructure (eHDSI or eHealth DSI) is the initial deployment and operation of services for cross-border health data exchange under the Connecting Europe Facility (CEF). It defines a document framework or Clinical Document Architecture (CDA) for sharing medical data across borders (Patient Summary). As E-ARK eHealth1 considers the totality of a Patient Medical Record, the eHDSI is too limited in scope to be useful in this context, eHDSI aims to specify an interchangeable derivation and extract of a Patient Medical Record, whereas the E-ARK eHealth1 CITs aims to preserve the Patient Medical Record in its entirety.

[^1]: https://www.hl7.org/fhir/summary.html
[^2]: https://en.wikipedia.org/wiki/Fast_Healthcare_Interoperability_Resources
[^3]: http://www.hl7.org/implement/standards/product_brief.cfm?product_id=483
[^4]: https://www.who.int/classifications/icd/en/
[^5]: http://www.snomed.org
 
[^6]: https://en.wikipedia.org/wiki/SNOMED_CT#:~:text=SNOMED%20CT%20or%20SNOMED%20Clinical,in%20clinical%20documentation%20and%20reporting.
[^7]: https://www.dicomstandard.org/current/
[^8]: https://ec.europa.eu/cefdigital/wiki/display/EHOPERATIONS/eHealth+DSI+Operations+Home
