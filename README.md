# DOIP Segments Specification

Following the DIGITAL OBJECT INTERFACE PROTOCOL SPECIFICATION VERSION 2.0 NOVEMBER 12, 2018
this repository hosts the Json Schema Objects for validating the
segmentes described in the specification.

Please refer to https://www.dona.net/sites/default/files/2018-11/DOIPv2Spec_1.pdf

The specification includes the following basic operations: hello, create, access, update, delete, search, and
listOperations

## Structure

- The subfolders "doip-request-segments" and "doip-response-segments" contain the request and response segments for the
  DOIP basic operations. Those operations are: Hello, Create, Retrieve, Update, Delete, Search, and ListOperations.
- The subfolder "doip_do_serialization" contains the JSON schema for a serialized DO.
- The subfolders "doip-ex-request-segments" and "doip-ex-response-segments" contain the request and response segments
  for two extended operations: Extended-Create and Extended-Update. Those operations have the same effect as the basic
  Create and Update operations, except that the type-value-pairs that should be written into the PID record by the
  repository are specified in the respective request/response schema.
- Further extended Operations such as Op.CreateFDO can be added following the naming convention.

## Work in Progress

* Other serialization next to json will be created and uploaded.
* The segments might be registered in the type registry https://typeregistry.lab.pidconsortium.net and the Json schemas
  will then be derived from those defintions.
