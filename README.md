# base-cookbook

Base chef cookbook to setup my servers.

## Supported Platforms

* Ubuntu 12.04
* Ubuntu 14.04

## Attributes

Some basic attributes are:

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['tz']</tt></td>
    <td>String</td>
    <td>Server's timezone</td>
    <td><tt>'Etc/UTC'</tt></td>
  </tr>
  <tr>
    <td><tt>['authorization']['sudo']['groups']</tt></td>
    <td>Array</td>
    <td>Groups enabled to use sudo</td>
    <td><tt>['sudo']</tt></td>
  </tr>
  <tr>
    <td><tt>['authorization']['sudo']['passwordless']</tt></td>
    <td>Boolean</td>
    <td>Enable passwordless sudo</td>
    <td><tt>true</tt></td>
  </tr>
  <tr>
    <td><tt>['openssh']['server']['port']</tt></td>
    <td>String</td>
    <td>SSH port</td>
    <td><tt>'22'</tt></td>
  </tr>
  <tr>
    <td><tt>['openssh']['server']['permit_root_login']</tt></td>
    <td>String</td>
    <td>Enables or disables root login through SSH (yes, no, without-password)</td>
    <td><tt>'without-password'</tt></td>
  </tr>
  <tr>
    <td><tt>default['base']['monit']['fs']</tt></td>
    <td>Array</td>
    <td>Checks free space in specified disk's partition</td>
    <td><tt>[]</tt></td>
  </tr>
</table>

## Usage

### base::default

Include `base::default` in your node's `run_list` and it will install
some basic packages, configure the server's timezone and sudo.

### base::openssh

This recipe will install and configure openssh service with some basic
security options.

### base::monit

This recipe installs monit and configure it to monitor the server.

## License and Authors

Author:: Pablo Gutiérrez del Castillo (<pablogutierrezdelc@gmail.com>)
