#### Root METS structural map (element structMap)

The METS structural map element is the only mandatory element in the METS specification. It provides an overview of the components described in the METS document. It can also link the elements in the structure to associated content files and metadata. In the eHealth1 CITS, the package structMap describes the high-level structure of all the content in the package and links to at least one representation.

The representation METS file is referenced from the package METS.xml via the `<mptr>` element, and hence the requirements for the structMap element within the package METS.xml (CSIP requirements CSIP80 to CSIP118) are unchanged. Because a representation is present, the need for a Content Division in the package METS.xml structMap is not required (CSIP101 to CSIP104 and CSIP109).

Implementers are welcome to define additional structural maps for their internal purposes by repeating the structMap element. The specific requirements for elements, sub-elements and attributes for eHealth1 CITS, which differ from the CSIP, are listed in the following table.

<a name="Section4.1.2"><a/>

### Representation METS File

The representation METS files is used to describe the data structure as included in the data folder of the Representation  Medical Record) via the structMap element and to reference any additional descriptive metadata.

#### Representation METS root element

Particular notice is drawn to the specific requirements for a representation METS root element as described in the CSIP specification.
