# RegExp Extract


## Description

Extract a part of a string faster by using the regular expression group syntax with parentheses.


## Example

### User email

Example source: erwin.schrodinger@gmail.com

|Variable name|Extraction source|Regular expression|Output group|Return|
| ---- | ---- | ---- | ---- | ---- |
|User name|{{User Email}}|(.+)@(.+)|Group 1|erwin.schrodinger|
|Email provider|{{User Email}}|(.+)@(.+)|Group 2|gmail.com|

### Date from a string

Example source: Article published the August 19th 2020

|Variable name|Extraction source|Regular expression|Output group|Return|
| ---- | ---- | ---- | ---- | ---- |
|Year|{{Publish date}}|the (.+) ([0-9]{1,2}).. ([0-9]{4})|Group 3|2020|
|Month|{{Publish date}}|the (.+) ([0-9]{1,2}).. ([0-9]{4})|Group 1|August|
|Day|{{Publish date}}|the (.+) ([0-9]{1,2}).. ([0-9]{4})|Group 2|19|
