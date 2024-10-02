# generated by datamodel-codegen:
#   filename:  0.DOIP_Op.ERROR-Response.json
#   version:   0.26.0

from __future__ import annotations

from typing import Literal, Optional

from pydantic import BaseModel, Extra, Field, conint


class Attributes(BaseModel):
    class Config:
        extra = Extra.forbid

    serviceName: Optional[str] = Field(
        None, description='the name of the DOIP service.'
    )
    serviceDescription: Optional[str] = Field(
        None, description='the description of the service.'
    )
    ipAddress: str = Field(..., description='the IP address of the service.')
    port: conint(ge=0, le=65535) = Field(
        ..., description='the listening port on the IP address.'
    )
    protocol: str = Field(..., description='the default shall be ‘TCP’.')
    protocolVersion: str = Field(
        ..., description='highest version of the DOIP protocol supported.'
    )
    publicKey: str = Field(
        ..., description='the public key expressed in JWK format as a default.'
    )


class Output(BaseModel):
    class Config:
        extra = Extra.forbid

    id: str = Field(..., description='id: the identifier of the DO.')
    type: Literal['DOIPServiceInfo'] = Field(
        ...,
        description='type: the DO type. Must be 0.TYPE/DO or its extension. See Types section.',
    )
    attributes: Attributes = Field(
        ...,
        description='attributes: one or more fields (key-value pairs) serialized as a JSON (sub) object.',
    )


class ERRORResponse(BaseModel):
    class Config:
        extra = Extra.forbid

    requestId: Optional[str] = Field(
        None,
        description='requestId: the identifier of the request to which this is a response. The DOIP service must include in its response the requestId provided by the client.',
    )
    status: Literal[
        '0.DOIP/Status.001',
        '0.DOIP/Status.101',
        '0.DOIP/Status.102',
        '0.DOIP/Status.103',
        '0.DOIP/Status.104',
        '0.DOIP/Status.105',
        '0.DOIP/Status.200',
        '0.DOIP/Status.500',
    ] = Field(
        ...,
        description='status: an identifier that indicates the status of the request. Status codes shall have associated unique identifiers resolvable as specified in the IRP.',
    )
    output: Output
