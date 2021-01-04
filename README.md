# PDD Proposal Code

This repo contains code used to help automate parts of collecting proposals from Google Forms for use in a double blind review process for conference.

Our project stored private identifiable information in `.csv` files and therefore has been added to the `.gitignore` file for protection of said data. If your project does not have this concern, simply remove it from the `.gitignore` file to save input and output data. 

The `_tmp` directory is where we store intermediate outputs. While these are generally useful for debugging, they are not files that generally need to be tracked as they are recreated each time the script runs. We have loaded this initially to show our overall project structure, but have since added it to the `.gitignore` file to prevent accidental pushes to github. You can remove this `**_tmp/` from the `.gitignore` file if you wish to track these files.
