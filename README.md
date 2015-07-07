hashutils Cookbook
==================
Installs hashutils from a zip file.

Requirements
------------
Runs on windows. The zip file needs to be laid out like this:
````
zip.file
  |- <bin_folder>
    |- <executable>
````

#### packages
- `windows` - hashutils needs windows to unzip files.

Attributes
----------
````
default['hashutils']['out_path'] = 'c:/tools/hashutils'
default['hashutils']['zip_path'] = 'c:/vagrant/installers/hashutils.zip'
default['hashutils']['bin_folder'] = 'bin.x86-64'
````

Usage
-----
Just include `hashutils` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[hashutils]"
  ]
}
```

Contributing
------------
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: Ivan Li
