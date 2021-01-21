mongouser-coedevops:
  mongodb_user.present:
  - name: coedevops
  - passwd: {{ pillar['db_password'] }}
  - database: coedevops
  - roles:
      - dbOwner
  - user: root
