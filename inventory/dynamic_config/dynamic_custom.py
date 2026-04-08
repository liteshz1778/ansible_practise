#!/usr/bin/env python3

import argparse
import json

class ExampleInventory(object):

    def __init__(self):
        self.inventory = {}
        self.read_cli_args()

        if self.args.list:
            self.inventory = self.example_inventory()
        elif self.args.host:
            self.inventory = self.empty_inventory()
        else:
            self.inventory = self.empty_inventory()

        print(json.dumps(self.inventory))

    def example_inventory(self):
        return {
            "all": {
                "children": ["group"]
            },
            "group": {
                "hosts": ["172.20.1.101", "172.20.1.102", "172.20.1.103"],
                "vars": {
                    "ansible_user": "root",
                    "ansible_password": "Passw0rd"
                }
            },
            "_meta": {
                "hostvars": {
                    "172.20.1.101": {"host_specific_var": "custom1"},
                    "172.20.1.102": {"host_specific_var": "custom2"},
                    "172.20.1.103": {"host_specific_var": "custom3"}
                }
            }
        }

    def empty_inventory(self):
        return {"_meta": {"hostvars": {}}}

    def read_cli_args(self):
        parser = argparse.ArgumentParser()
        parser.add_argument("--list", action="store_true")
        parser.add_argument("--host", action="store")
        self.args = parser.parse_args()

ExampleInventory()
