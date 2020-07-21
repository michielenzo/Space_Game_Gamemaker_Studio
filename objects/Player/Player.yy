{
    "id": "1010109f-6a48-4a65-b7c6-5977d523b613",
    "modelName": "GMObject",
    "mvc": "1.0",
    "name": "Player",
    "eventList": [
        {
            "id": "73186817-8fa6-4d9a-b782-8047a5fa1fc8",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 37,
            "eventtype": 5,
            "m_owner": "1010109f-6a48-4a65-b7c6-5977d523b613"
        },
        {
            "id": "ecde60ba-5d92-40e4-9d8d-b1c343e100ac",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 39,
            "eventtype": 5,
            "m_owner": "1010109f-6a48-4a65-b7c6-5977d523b613"
        },
        {
            "id": "cf96f043-7f2f-4829-bdf2-81e52c58ef94",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 37,
            "eventtype": 10,
            "m_owner": "1010109f-6a48-4a65-b7c6-5977d523b613"
        },
        {
            "id": "cf8d7ec2-0fee-40c0-93d5-cfc328568e6c",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 39,
            "eventtype": 10,
            "m_owner": "1010109f-6a48-4a65-b7c6-5977d523b613"
        },
        {
            "id": "6d94a461-5b92-4f09-992a-d48d78de1c67",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 76,
            "eventtype": 8,
            "m_owner": "1010109f-6a48-4a65-b7c6-5977d523b613"
        },
        {
            "id": "c933b470-76b3-4a69-b2c4-84320c1cea66",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 32,
            "eventtype": 5,
            "m_owner": "1010109f-6a48-4a65-b7c6-5977d523b613"
        }
    ],
    "maskSpriteId": "00000000-0000-0000-0000-000000000000",
    "overriddenProperties": null,
    "parentObjectId": "00000000-0000-0000-0000-000000000000",
    "persistent": false,
    "physicsAngularDamping": 0.1,
    "physicsDensity": 0.5,
    "physicsFriction": 0.2,
    "physicsGroup": 0,
    "physicsKinematic": true,
    "physicsLinearDamping": 0.1,
    "physicsObject": false,
    "physicsRestitution": 0.1,
    "physicsSensor": false,
    "physicsShape": 1,
    "physicsShapePoints": [
        {
            "id": "1ebff20d-93c8-4818-8cef-092007af1ece",
            "modelName": "GMPoint",
            "mvc": "1.0",
            "x": 0,
            "y": 0
        },
        {
            "id": "3a67aa6f-c4d2-46c8-8170-1bb124a502bf",
            "modelName": "GMPoint",
            "mvc": "1.0",
            "x": 64,
            "y": 0
        },
        {
            "id": "fd5a52da-e16e-4f7f-8c69-c22fae7d7a77",
            "modelName": "GMPoint",
            "mvc": "1.0",
            "x": 64,
            "y": 64
        },
        {
            "id": "396df62d-aab7-45a2-b8a6-79b8873655da",
            "modelName": "GMPoint",
            "mvc": "1.0",
            "x": 0,
            "y": 64
        }
    ],
    "physicsStartAwake": true,
    "properties": [
        {
            "id": "452ef733-e342-402c-bd63-ea739c398731",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "velocity",
            "varType": 0
        },
        {
            "id": "28adc241-39bb-480b-9a79-d966422b94fc",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0.08",
            "varName": "acceleration",
            "varType": 0
        },
        {
            "id": "6b1152a1-c40e-484b-9479-a99c4e3a18f2",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "yprevious_from_fall_left",
            "varType": 0
        },
        {
            "id": "c7321301-c94b-41d6-9e0f-c337c4ffa74a",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "yprevious_from_fall_right",
            "varType": 0
        }
    ],
    "solid": false,
    "spriteId": "95a28ab0-6c3a-4358-819f-35eede1bdf72",
    "visible": true
}