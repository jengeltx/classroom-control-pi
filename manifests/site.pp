## site.pp ##

# This file (/etc/puppetlabs/puppet/manifests/site.pp) is the main entry point
# used when an agent connects to a master and asks for an updated configuration.
#
# Global objects like filebuckets and resource defaults should go in this file,
# as should the default node definition. (The default node can be omitted
# if you use the console and don't define any other nodes in site.pp. See
# http://docs.puppetlabs.com/guides/language_guide.html#nodes for more on
# node definitions.)

## Active Configurations ##

# DEFAULT NODE
# Node definitions in this file are merged with node data from the console. See
# http://docs.puppetlabs.com/guides/language_guide.html#nodes for more on
# node definitions.

# The default node definition matches any node lacking a more specific node
# definition. If there are no other nodes in this file, classes declared here
# will be included in every node's catalog, *in addition* to any classes
# specified in the console for that node.

#if [${::osfamily}=RedHat;
#  node linux {
  #   class { 'my_class': }
#  include examples::puppetize
#  notify { "An awesome Unix server called ${::hostname} and running ${::osfamily}": }
#  ]elseif[
#  ${::osfamily}=windows;
#  node windows {
#  include examples::puppetize
#  notify { "An sorry windows server called ${::hostname} and running ${::osfamily}": }
#  ]else[
  node default {
  include examples::puppetize
  notify { "This is ${::hostname} running ${::osfamily}": }
  }
  node irustan.puppetlabs.vm {
  include examples::puppetize
  notify { "This is the Linux VM running ${::osfamily}": }
  }
