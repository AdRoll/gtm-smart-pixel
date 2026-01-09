# AdRoll Smart Pixel - Official
This repository contains the GTM template for: AdRoll Smart Pixel - Official.

## Requirements
- You must have a GTM Account with the required permissions to manage and publish containers in GTM.
- Have your Advertisable EID and Pixel EID ready.

## Create a New Tag
1. Navigate to Google Tag Manager > Workspace > Default Workspace.
2. Click New Tag and name it AdRoll Smart Pixel.
3. Click Tag Configuration.
4. Under Choose tag type scroll down and click on "AdRoll Smart Pixel - Official".
5. Enter the appropriate fields in your GTM tag: Advertisable EID and Pixel EID.
6. Click Continue.

## Select or Create a Trigger
1. Click Trigger Configuration.
2. Select an existing trigger that fires on All DOM Ready Events with Page View - DOM Ready trigger type.
3. If you don't have this trigger available, create a new one from scratch:
4. Click the + icon on the top right corner.
5. Name your trigger All Page View - DOM Ready Events Trigger.
6. Under Choose a Trigger Type click DOM Ready in Page View.
7. Select All DOM Ready Events.
8. Save.

## Submit and Publish your Container
To make these changes live, click Submit on the upper right corner.
This will give you the option to name your version, type AdRoll Smart Pixel.
Make sure that you select Live environment.
And go ahead and click Publish in the top right corner.
Once this page re-loads your pixel will be placed across your website and you will start seeing traffic being tracked in AdRoll under Website Audiences within a few hours.

## Install Google Tag Manager
If you have not yet installed GTM to your website, click on the link corresponding to your "GTM-ContainerID" and follow the instructions to add it to your website.

## Development: Instructions for Updating
To update the template, open a GTM account and import the template.tpl from this repository. Once the changes have been made to the configuration and code, export the template. Rename it as template.tpl and update the file in this repository.
