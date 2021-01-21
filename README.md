The state ```init.sls``` will install and configure the NodeJS and MongoDB packages.
## Requisites.
Install SaltStack. [Installation 
Guide](https://docs.saltproject.io/en/latest/topics/installation/index.html) 

 Don't forget to accept your Salt-Keys.
 
 ``` salt-key -A ```

Run as sudoer or root the SaltStack state once it's been moved to File Roots.
 
 
``` salt '*' state.sls mongo-node-states ```
