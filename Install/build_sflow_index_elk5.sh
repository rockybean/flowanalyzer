# Copyright (c) 2016, Manito Networks, LLC
# All rights reserved.

# Build the sFlow index in Elasticsearch
curl -XPOST localhost:9200/_template/sflow_template?pretty -d '
{
"template": "sflow*",
"settings": {
},

"mapping": {
"nested_fields": {
"limit": "600"
}
},

"mappings": {

"sFlow": {
"_all": {
"enabled":false
},
"properties": {

"BGP IPv4 Next Hop":                    {"type":"ip"},
"Broadcast Packets In":                 {"type":"long"},
"Broadcast Packets Out":                {"type":"long"},
"Bytes In":                             {"type":"long"},
"Bytes Out":                            {"type":"long"},
"Bytes Read":                           {"type":"long"},
"Bytes Written":                        {"type":"long"},
"Content":                              {"type":"keyword","index":"true"},
"Context Switch Count":                 {"type":"long"},
"CPU Count":                            {"type":"integer"},
"CPU Idle Time":                        {"type":"long"},
"CPU MHz":                              {"type":"integer"},
"CPU Nice Time":                        {"type":"long"},
"CPU System Time":                      {"type":"long"},
"CPU Time Servicing INT":               {"type":"long"},
"CPU Time Servicing SINT":              {"type":"long"},
"CPU Time Waiting":                     {"type":"long"},
"CPU User Time":                        {"type":"long"},
"Data Length":                          {"type":"integer"},
"Destination AS":                       {"type":"integer"},
"Destination Domain":                   {"type":"keyword","index":"true"},
"Destination FQDN":                     {"type":"keyword","index":"true"},
"Destination MAC":                      {"type":"keyword","index":"true"},
"Destination Mask":                     {"type":"integer"},
"Destination Port":                     {"type":"integer"},
"Destination Priority":                 {"type":"integer"},
"Destination Type of Service":          {"type":"integer"},
"Destination VLAN":                     {"type":"integer"},
"Direction":                            {"type":"keyword","index":"true"},
"Disk Free":                            {"type":"long"},
"Disk Total":                           {"type":"long"},
"Dot-1q Customer VLAN ID":              {"type":"integer"},
"Dot-1q VLAN ID":                       {"type":"integer"},
"Drops":                                {"type":"long"},
"Drops In":                             {"type":"long"},
"Drops Out":                            {"type":"long"},
"Elapsed Time Milliseconds":            {"type":"long"},
"Enterprise, Format":                   {"type":"keyword","index":"true"},
"Errors In":                            {"type":"long"},
"Errors Out":                           {"type":"long"},
"First Switched":                       {"type":"long"},
"Flows":                                {"type":"integer"},
"Flow End Milliseconds":                {"type":"long"},
"Flow End Reason":                      {"type":"keyword","index":"true"},
"Flow Sampler ID":                      {"type":"integer"},
"Flow Start Milliseconds":              {"type":"long"},
"Flow Type":                            {"type":"keyword","index":"true"},
"Frame Length":                         {"type":"integer"},
"Header":                               {"type":"text","index":"true"},
"Header Protocol":                      {"type":"keyword","index":"true"},
"Header Protocol Number":               {"type":"integer"},
"Header Size":                          {"type":"integer"},
"Hostname":                             {"type":"keyword","index":"true"},
"ICMP Code":                            {"type":"integer"},
"ICMP In Address Mask Replies":         {"type":"long"},
"ICMP In Address Masks":                {"type":"long"},
"ICMP In Echo Replies":                 {"type":"long"},
"ICMP In Echos":                        {"type":"long"},
"ICMP In Errors":                       {"type":"long"},
"ICMP In Messages":                     {"type":"long"},
"ICMP In Redirects":                    {"type":"long"},
"ICMP Out Echos":                       {"type":"long"},
"ICMP Out Errors":                      {"type":"long"},
"ICMP Out Messages":                    {"type":"long"},
"ICMP Out Timestamps":                  {"type":"long"},
"ICMP Type":                            {"type":"integer"},
"Incoming Destination MAC":             {"type":"keyword","index":"true"},
"Incoming Source MAC":                  {"type":"keyword","index":"true"},
"Input Interface":                      {"type":"integer"},
"Input SNMP Index":                     {"type":"integer"},
"Interface Direction":                  {"type":"keyword","index":"true"},
"Interface Index":                      {"type":"integer"},
"Interface Status":                     {"type":"keyword","index":"true"},
"Interface Speed":                      {"type":"long"},
"Interface Type":                       {"type":"keyword","index":"true"},
"Interrupts":                           {"type":"long"},
"IP Default TTL":                       {"type":"integer"},
"IP Forward Datagrams":                 {"type":"long"},
"IP Forwarding":                        {"type":"long"},
"IP Protocol Version":                  {"type":"integer"},
"IPv4 Destination":                     {"type":"ip"},
"IPv4 ICMP Type":                       {"type":"integer"},
"IPv4 Next Hop":                        {"type":"ip"},
"IPv4 Source":                          {"type":"ip"},
"IPv6 Destination":                     {"type":"keyword","index":"true"},
"IPv6 Destination Mask":                {"type":"integer"},
"IPv6 Next Hop":                        {"type":"keyword","index":"true"},
"IPv6 Source":                          {"type":"keyword","index":"true"},
"IPv6 Source Mask":                     {"type":"integer"},
"Last Switched":                        {"type":"long"},
"Machine Type":                         {"type":"keyword","index":"true"},
"Maximum TTL":                          {"type":"integer"},
"Memory Buffers":                       {"type":"long"},
"Memory Cached":                        {"type":"long"},
"Memory Free":                          {"type":"long"},
"Memory Shared":                        {"type":"long"},
"Memory Total":                         {"type":"long"},
"Minimum TTL":                          {"type":"integer"},
"Multicast Packets In":                 {"type":"long"},
"Multicast Packets Out":                {"type":"long"},
"MPLS Label Stack Length":              {"type":"integer"},
"Observation Domain":                   {"type":"integer"},
"On Channel Busy Time Milliseconds":    {"type":"long"},
"On Channel Time Milliseconds":         {"type":"long"},
"OS Name":                              {"type":"keyword","index":"true"},
"OS Release":                           {"type":"keyword","index":"true"},
"OS Type":                              {"type":"keyword","index":"true"},
"Outgoing Destination MAC":             {"type":"keyword","index":"true"},
"Outgoing Source MAC":                  {"type":"keyword","index":"true"},
"Output Interface":                     {"type":"integer"},
"Output SNMP Index":                    {"type":"integer"},
"Packets In":                           {"type":"long"},
"Packets Out":                          {"type":"long"},
"Page In":                              {"type":"long"},
"Page Out":                             {"type":"long"},
"Post-NAT Destination IPv4":            {"type":"ip"},
"Post-NAT Destination Transport Port":  {"type":"integer"},
"Post-NAT Source IPv4":                 {"type":"ip"},
"Post-NAT Source Transport Port":       {"type":"integer"},
"Protocol":                             {"type":"keyword","index":"true"},
"Protocol Number":                      {"type":"integer"},
"Record Count":                         {"type":"integer"},
"Sample Pool":                          {"type":"integer"},
"Sampling Rate":                        {"type":"integer"},
"Sensor":                               {"type":"keyword","index":"true"},
"Sequence":                             {"type":"integer"},
"Source AS":                            {"type":"integer"},
"Source Domain":                        {"type":"keyword","index":"true"},
"Source FQDN":                          {"type":"keyword","index":"true"},
"Source ID Type":                       {"type":"keyword","index":"true"},
"Source MAC":                           {"type":"keyword","index":"true"},
"Source Mask":                          {"type":"integer"},
"Source Port":                          {"type":"integer"},
"Source Type":                          {"type":"keyword","index":"true"},
"Source Type of Service":               {"type":"integer"},
"Source VLAN":                          {"type":"integer"},
"Stripped":                             {"type":"integer"},
"Sub Agent":                            {"type":"integer"},
"Swap Free":                            {"type":"long"},
"Swap In":                              {"type":"long"},
"Swap Out":                             {"type":"long"},
"Swap Total":                           {"type":"long"},
"TCP Active Opens":                     {"type":"long"},
"TCP Attempt Fails":                    {"type":"long"},
"TCPCurrent Established":               {"type":"long"},
"TCP Established Resets":               {"type":"long"},
"TCP Flags":                            {"type":"integer"},
"TCP In Checksum Errors":               {"type":"long"},
"TCP In Errors":                        {"type":"long"},
"TCP In Segments":                      {"type":"long"},
"TCP Max Connections":                  {"type":"long"},
"TCP Out Resets":                       {"type":"long"},
"TCP Out Segments":                     {"type":"long"},
"TCP Passive Opens":                    {"type":"long"},
"TCP Retransmit Segments":              {"type":"long"},
"Time":                                 {"type":"date"},
"Total Processes":                      {"type":"integer"},
"Traffic":                              {"type":"keyword","index":"true"},
"Traffic Category":                     {"type":"keyword","index":"true"},
"Type of Service":                      {"type":"integer"},
"UDP In Checksum Errors":               {"type":"long"},
"UDP In Datagrams":                     {"type":"long"},
"UDP In Errors":                        {"type":"long"},
"UDP No Ports":                         {"type":"long"},
"UDP Out Datagrams":                    {"type":"long"},
"UDP Receive Buffer Errors":            {"type":"long"},
"UDP Send Buffer Errors":               {"type":"long"},
"Unicast Packets In":                   {"type":"long"},
"Unicast Packets Out":                  {"type":"long"},
"Uptime":                               {"type":"long"},
"UUID":                                 {"type":"keyword","index":"true"},
"Write Time":                           {"type":"long"},
"Writes":                               {"type":"long"}
},

"dynamic_templates": [
{"integers": {"match_mapping_type":"integer","mapping":{"type":"integer"}}},
{"integers": {"match_mapping_type":"long","mapping":{"type":"long"}}},
{"strings": {"match_mapping_type":"string","mapping":{"type":"keyword","index":"true"}}},
{"strings": {"match_mapping_type":"ip","mapping":{"type":"ip"}}},
{"strings": {"match_mapping_type":"boolean","mapping":{"type":"boolean"}}}
]
}
}
}'