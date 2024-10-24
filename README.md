# DOIP Segments Specification

Following the DIGITAL OBJECT INTERFACE PROTOCOL SPECIFICATION VERSION 2.0 NOVEMBER 12, 2018
this repository hosts the Json Schema Objects for validating the
segmentes described in the specification.

Please refer to https://www.dona.net/sites/default/files/2018-11/DOIPv2Spec_1.pdf

The specification includes the following basic operations: hello, create, access, update, delete, search, and listOperations

## Structure

The subfolders contain the request and answer segments for the specific operations.
Those operations are: hello, create, access, update, delete, search, and listOperations.
Extended Operations such as Op.CreateFDO can be added following the naming convention.


## Work in Progress
* Other serializtaion next to json will be created and uploaded.
* The segments might be registered in the type registry https://typeregistry.lab.pidconsortium.net and the Json schemas will then be derived from those defintions.
