# RegExp Extract


## Description

Extract a part of a string faster by using the regular expression group syntax with parentheses.

## How to install
1. Open a Google Tag Manager container and go to the **Templates** menu.
2. In the **Variables Templates** section, click on **Search Gallery** button.
3. In the opened side panel, click on the **Search Icon** then type *"**sublimetrix**"*
4. Select the variable you want then click **Add to workspace** and publish your workspace.

*Do not forget to visit the **Templates** section sometimes to update gallery templates if a rounded blue arrow is visible.*

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
