# DatadogAPIClient::V1::HostMeta

## Properties

| Name                | Type                                                  | Description                                 | Notes      |
| ------------------- | ----------------------------------------------------- | ------------------------------------------- | ---------- |
| **agent_checks**    | **Array&lt;Array&gt;**                                | A list of Agent checks running on the host. | [optional] |
| **agent_version**   | **String**                                            | The Datadog Agent version.                  | [optional] |
| **cpu_cores**       | **Integer**                                           | The number of cores.                        | [optional] |
| **fbsd_v**          | **Array&lt;String&gt;**                               | An array of Mac versions.                   | [optional] |
| **gohai**           | **String**                                            | JSON string containing system information.  | [optional] |
| **install_method**  | [**HostMetaInstallMethod**](HostMetaInstallMethod.md) |                                             | [optional] |
| **mac_v**           | **Array&lt;String&gt;**                               | An array of Mac versions.                   | [optional] |
| **machine**         | **String**                                            | The machine architecture.                   | [optional] |
| **nix_v**           | **Array&lt;String&gt;**                               | Array of Unix versions.                     | [optional] |
| **platform**        | **String**                                            | The OS platform.                            | [optional] |
| **processor**       | **String**                                            | The processor.                              | [optional] |
| **python_v**        | **String**                                            | The Python version.                         | [optional] |
| **socket_fqdn**     | **String**                                            | The socket fqdn.                            | [optional] |
| **socket_hostname** | **String**                                            | The socket hostname.                        | [optional] |
| **win_v**           | **Array&lt;String&gt;**                               | An array of Windows versions.               | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::HostMeta.new(
  agent_checks: null,
  agent_version: 7.32.3,
  cpu_cores: 1,
  fbsd_v: null,
  gohai: {&quot;cpu&quot;:{&quot;cache_size&quot;:&quot;8192 KB&quot;,&quot;cpu_cores&quot;:&quot;1&quot;,&quot;cpu_logical_processors&quot;:&quot;1&quot;,&quot;family&quot;:&quot;6&quot;,&quot;mhz&quot;:&quot;2712.000&quot;,&quot;model&quot;:&quot;142&quot;,&quot;model_name&quot;:&quot;Intel(R) Core(TM) i7-8559U CPU @ 2.70GHz&quot;,&quot;stepping&quot;:&quot;10&quot;,&quot;vendor_id&quot;:&quot;GenuineIntel&quot;},&quot;filesystem&quot;:[{&quot;kb_size&quot;:&quot;3966896&quot;,&quot;mounted_on&quot;:&quot;/dev&quot;,&quot;name&quot;:&quot;udev&quot;},{&quot;kb_size&quot;:&quot;797396&quot;,&quot;mounted_on&quot;:&quot;/run&quot;,&quot;name&quot;:&quot;tmpfs&quot;},{&quot;kb_size&quot;:&quot;64800356&quot;,&quot;mounted_on&quot;:&quot;/&quot;,&quot;name&quot;:&quot;/dev/mapper/vagrant--vg-root&quot;},{&quot;kb_size&quot;:&quot;3986972&quot;,&quot;mounted_on&quot;:&quot;/dev/shm&quot;,&quot;name&quot;:&quot;tmpfs&quot;},{&quot;kb_size&quot;:&quot;5120&quot;,&quot;mounted_on&quot;:&quot;/run/lock&quot;,&quot;name&quot;:&quot;tmpfs&quot;},{&quot;kb_size&quot;:&quot;3986972&quot;,&quot;mounted_on&quot;:&quot;/sys/fs/cgroup&quot;,&quot;name&quot;:&quot;tmpfs&quot;},{&quot;kb_size&quot;:&quot;488245288&quot;,&quot;mounted_on&quot;:&quot;/vagrant&quot;,&quot;name&quot;:&quot;vagrant&quot;},{&quot;kb_size&quot;:&quot;797392&quot;,&quot;mounted_on&quot;:&quot;/run/user/1000&quot;,&quot;name&quot;:&quot;tmpfs&quot;}],&quot;memory&quot;:{&quot;swap_total&quot;:&quot;1003516kB&quot;,&quot;total&quot;:&quot;7973944kB&quot;},&quot;network&quot;:{&quot;interfaces&quot;:[{&quot;ipv4&quot;:&quot;10.0.2.15&quot;,&quot;ipv4-network&quot;:&quot;10.0.2.0/24&quot;,&quot;ipv6&quot;:&quot;fe80::a00:27ff:fec2:be11&quot;,&quot;ipv6-network&quot;:&quot;fe80::/64&quot;,&quot;macaddress&quot;:&quot;08:00:27:c2:be:11&quot;,&quot;name&quot;:&quot;eth0&quot;},{&quot;ipv4&quot;:&quot;192.168.122.1&quot;,&quot;ipv4-network&quot;:&quot;192.168.122.0/24&quot;,&quot;macaddress&quot;:&quot;52:54:00:6f:1c:bf&quot;,&quot;name&quot;:&quot;virbr0&quot;}],&quot;ipaddress&quot;:&quot;10.0.2.15&quot;,&quot;ipaddressv6&quot;:&quot;fe80::a00:27ff:fec2:be11&quot;,&quot;macaddress&quot;:&quot;08:00:27:c2:be:11&quot;},&quot;platform&quot;:{&quot;GOOARCH&quot;:&quot;amd64&quot;,&quot;GOOS&quot;:&quot;linux&quot;,&quot;goV&quot;:&quot;1.16.7&quot;,&quot;hardware_platform&quot;:&quot;x86_64&quot;,&quot;hostname&quot;:&quot;vagrant&quot;,&quot;kernel_name&quot;:&quot;Linux&quot;,&quot;kernel_release&quot;:&quot;4.15.0-29-generic&quot;,&quot;kernel_version&quot;:&quot;#31-Ubuntu SMP Tue Jul 17 15:39:52 UTC 2018&quot;,&quot;machine&quot;:&quot;x86_64&quot;,&quot;os&quot;:&quot;GNU/Linux&quot;,&quot;processor&quot;:&quot;x86_64&quot;,&quot;pythonV&quot;:&quot;2.7.15rc1&quot;}},
  install_method: null,
  mac_v: null,
  machine: amd64,
  nix_v: null,
  platform: linux,
  processor: Intel(R) Core(TM) i7-8559U CPU @ 2.70GHz,
  python_v: 3.8.11,
  socket_fqdn: vagrant.vm.,
  socket_hostname: vagrant,
  win_v: null
)
```
