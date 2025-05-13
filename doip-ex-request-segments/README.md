# Specification of the extended operations

## Extended-Create
An operation to create a digital object within the DOIP service. The
target of a creation operation is the DOIP service itself.
* Request attributes:
  * record: a serialized object with a Profile Reference as minimal requirement attribute
* Input: a serialized digital object. The default serialization may be used if the object lacks element data; otherwise the serialization is a multi-segment DO serialization as described above. The "id" can be omitted to ask the DOIP service to automatically choose the id. 
* Response attributes: 
  * record: a serialized object which contains the attributes in the FDO record
* Output: the default serialization of the created object omitting element data. Notably, includes the identifier of the object (even if chosen by the client) and any changes to the object automatically performed by the DOIP service.

