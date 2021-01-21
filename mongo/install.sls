{% from "devops-radar/mongo/map.jinja" import mongo with context %}

mongo_repo_script:
  file.managed:
    - name: /tmp/{{ mongo.script }}
    - source: 'salt://devops-radar/mongo/scripts/{{ mongo.script }}'

install_mongo_repo:
  cmd.run:
    - name: bash /tmp/{{ mongo.script }}

install_mongo_package:
  pkg.installed:
    - pkgs:
      - mongodb-org
##      - python-pymongo
