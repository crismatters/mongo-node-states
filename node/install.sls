{% from "devops-radar/node/map.jinja" import node with context %}

node_repo_script:
  file.managed:
    - name: /tmp/{{ node.script }}
    - source: 'salt://devops-radar/node/scripts/{{ node.script }}'

install_node_repo:
  cmd.run:
    - name: bash /tmp/{{ node.script }}

install_node_package:
  pkg.installed:
    - pkgs:
      - nodejs
