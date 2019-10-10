___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "displayName": "RegExp Extract",
  "description": "Extract a part of a string faster by using the regular expression group syntax with parentheses (by Sublimetrix)",
  "securityGroups": [],
  "id": "cvt_temp_public_id",
  "type": "MACRO",
  "version": 1,
  "containerContexts": [
    "WEB"
  ],
  "brand": {
    "displayName": "Custom Template"
  }
}


___TEMPLATE_PARAMETERS___

[
  {
    "valueValidators": [
      {
        "type": "NON_EMPTY"
      }
    ],
    "displayName": "Extraction source",
    "simpleValueType": true,
    "name": "entry",
    "type": "TEXT"
  },
  {
    "valueValidators": [
      {
        "type": "REGEX",
        "args": [
          ".*\\(.+\\).*"
        ],
        "errorMessage": "Enter a regular expression containing one or more groups in parentheses."
      }
    ],
    "displayName": "Regular expression",
    "simpleValueType": true,
    "name": "regex",
    "type": "TEXT"
  },
  {
    "macrosInSelect": false,
    "selectItems": [
      {
        "displayValue": "Group 1",
        "value": 1
      },
      {
        "displayValue": "Group 2",
        "value": 2
      },
      {
        "displayValue": "Group 3",
        "value": 3
      },
      {
        "displayValue": "Group 4",
        "value": 4
      },
      {
        "displayValue": "Group 5",
        "value": 5
      },
      {
        "displayValue": "Custom",
        "value": "custom"
      }
    ],
    "displayName": "Output group",
    "simpleValueType": true,
    "name": "group",
    "type": "SELECT",
    "subParams": [
      {
        "type": "TEXT",
        "name": "custom",
        "displayName": "Custom group number",
        "simpleValueType": true,
        "valueValidators": [
          {
            "type": "PERCENTAGE"
          }
        ],
        "enablingConditions": [
          {
            "paramName": "group",
            "paramValue": "custom",
            "type": "EQUALS"
          }
        ]
      }
    ]
  }
]


___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "logging",
        "versionId": "1"
      },
      "param": [
        {
          "key": "environments",
          "value": {
            "type": 1,
            "string": "debug"
          }
        }
      ]
    },
    "isRequired": true
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

// Enter your template code here.
const log = require('logToConsole');
log('data =', data);

const entry = data.entry;
const regex = data.regex;
let group = data.group;
group = 'custom' == group ? data.custom : group;

// Variables must return a value.
return entry.match(regex)[group];


___NOTES___

/*** SUBLIMETRIX ***/
Version: 1.0.0
Author: Sublimetrix
Date: 2019.10.10
/*******************/
