{
    "id": "63d5ec80-2754-4501-8f8b-07bf349e3c29",
    "modelName": "GMObject",
    "mvc": "1.0",
    "name": "Alien",
    "eventList": [
        {
            "id": "883388e2-9fe7-4a74-959f-b88102d65d13",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 76,
            "eventtype": 8,
            "m_owner": "63d5ec80-2754-4501-8f8b-07bf349e3c29"
        },
        {
            "id": "5c296ffd-8566-4e23-ae44-5099e14cc115",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 73,
            "eventtype": 8,
            "m_owner": "63d5ec80-2754-4501-8f8b-07bf349e3c29"
        },
        {
            "id": "5353b721-1a5a-4320-a6cb-40bd34d2f792",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 2,
            "m_owner": "63d5ec80-2754-4501-8f8b-07bf349e3c29"
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
    "physicsKinematic": false,
    "physicsLinearDamping": 0.1,
    "physicsObject": false,
    "physicsRestitution": 0.1,
    "physicsSensor": false,
    "physicsShape": 1,
    "physicsShapePoints": null,
    "physicsStartAwake": true,
    "properties": [
        {
            "id": "02bd5314-5721-4acc-81fb-f7226c5c9a05",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "60",
            "varName": "max_health",
            "varType": 0
        },
        {
            "id": "171dd462-fa79-4ab6-bf0b-3b227bb8f75d",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "60",
            "varName": "current_health",
            "varType": 0
        },
        {
            "id": "3d095d2b-4a30-4b7d-85b8-95784b4a80cb",
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
            "id": "4c0c2466-6126-4e8f-88ff-39fbabe328ad",
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
            "id": "8d18a622-15de-4b71-a036-d3b264a0b95b",
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
            "id": "c0734eb5-6390-4df3-8250-57b1de07f578",
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
        },
        {
            "id": "3993653d-bcf8-4fe9-b6cf-7e81eafc5b5d",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "falling",
            "varName": "STATE",
            "varType": 2
        },
        {
            "id": "3f5b7e55-d6c2-4b0e-a38c-1486217a5ea3",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "1",
            "varName": "movement_direction",
            "varType": 0
        },
        {
            "id": "810bcf7a-3b04-46ed-8aae-115e879ee95b",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "falling",
            "varName": "LEFT_FOOT_STATE",
            "varType": 2
        },
        {
            "id": "951826a2-859e-49de-8fd3-0cb3d9b76ef7",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "falling",
            "varName": "RIGHT_FOOT_STATE",
            "varType": 2
        },
        {
            "id": "d8dc692b-4f45-4772-be02-99d54fe5a56b",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "Player",
            "varName": "player_instance",
            "varType": 5
        },
        {
            "id": "c6c944ea-e3a3-47c0-ad86-0c8c1f4e6a50",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "400",
            "varName": "aggro_range",
            "varType": 0
        },
        {
            "id": "b30219e1-a982-46c9-b130-f7df57a47fd6",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "is_aggroed",
            "varType": 3
        },
        {
            "id": "b8b79f25-b1e4-45b3-8f3e-74919b0f6b72",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "True",
            "varName": "can_shoot",
            "varType": 3
        },
        {
            "id": "868a5391-cb40-434d-ae8e-10214905b45a",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "False",
            "varName": "prev_facing_player",
            "varType": 3
        }
    ],
    "solid": false,
    "spriteId": "a45d9293-9511-45d8-9e7c-142ee065a7de",
    "visible": true
}