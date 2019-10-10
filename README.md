
# Regex Extract


## Description

Extract a part of a string faster by using the regular expression group syntax.


## Example

### User email
If an email is valentin@sublimetrix.com
|Variable name|Extraction source|Regular expression|Extraction group|Return|
| ---- | ---- | ---- | ---- | ---- |
|User name|{{User Email}}|(.+)@(.+)|Group 1|valentin|
|Email provider|{{User Email}}|(.+)@(.+)|Group 2|sublimetrix.com|

### Date from a string

If the string is Article published the August 19th 2020

|Variable name|Extraction source|Regular expression|Extraction group|Return|
| ---- | ---- | ---- | ---- | ---- |
|Year|{{Publish date}}|the (.+) ([0-9]{1,2}).. ([0-9]{4})|Group 3|2020|
|Month|{{Publish date}}|the (.+) ([0-9]{1,2}).. ([0-9]{4})|Group 1|August|
|Day|{{Publish date}}|the (.+) ([0-9]{1,2}).. ([0-9]{4})|Group 2|19|
