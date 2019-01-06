# Show Firefox Addons
jshon -e addons -a -e defaultLocale -e name -u < ~/.mozilla/firefox/*.[dD]efault/extensions.json

# convert javascript DICT to JSON
js -e 'JSON.stringify({hello:"world"})'

# Convert JSON to YAML
json2yaml result.json

# JVM Garbage Collector Stats
jstat -gc [jvmpid]

# Convert JSON to YAML
json2yaml ./example.json > ./example.yml

# convert javascript DICT to JSON
js -e 'JSON.stringify({hello:"world"})'

# Convert JSON to YAML
json2yaml result.json
