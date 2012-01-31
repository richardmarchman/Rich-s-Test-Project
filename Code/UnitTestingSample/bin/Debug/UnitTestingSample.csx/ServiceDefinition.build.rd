<?xml version="1.0" encoding="utf-8"?>
<serviceModel xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" name="UnitTestingSample" generation="1" functional="0" release="0" Id="fb5a5102-f921-4696-8bbb-9d9d4fa69bb7" dslVersion="1.2.0.0" xmlns="http://schemas.microsoft.com/dsltools/RDSM">
  <groups>
    <group name="UnitTestingSampleGroup" generation="1" functional="0" release="0">
      <componentports>
        <inPort name="MyWebSite:Endpoint1" protocol="http">
          <inToChannel>
            <lBChannelMoniker name="/UnitTestingSample/UnitTestingSampleGroup/LB:MyWebSite:Endpoint1" />
          </inToChannel>
        </inPort>
      </componentports>
      <settings>
        <aCS name="MyWebSite:?IsSimulationEnvironment?" defaultValue="">
          <maps>
            <mapMoniker name="/UnitTestingSample/UnitTestingSampleGroup/MapMyWebSite:?IsSimulationEnvironment?" />
          </maps>
        </aCS>
        <aCS name="MyWebSite:?RoleHostDebugger?" defaultValue="">
          <maps>
            <mapMoniker name="/UnitTestingSample/UnitTestingSampleGroup/MapMyWebSite:?RoleHostDebugger?" />
          </maps>
        </aCS>
        <aCS name="MyWebSite:?StartupTaskDebugger?" defaultValue="">
          <maps>
            <mapMoniker name="/UnitTestingSample/UnitTestingSampleGroup/MapMyWebSite:?StartupTaskDebugger?" />
          </maps>
        </aCS>
        <aCS name="MyWebSite:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="">
          <maps>
            <mapMoniker name="/UnitTestingSample/UnitTestingSampleGroup/MapMyWebSite:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </maps>
        </aCS>
        <aCS name="MyWebSiteInstances" defaultValue="[1,1,1]">
          <maps>
            <mapMoniker name="/UnitTestingSample/UnitTestingSampleGroup/MapMyWebSiteInstances" />
          </maps>
        </aCS>
      </settings>
      <channels>
        <lBChannel name="LB:MyWebSite:Endpoint1">
          <toPorts>
            <inPortMoniker name="/UnitTestingSample/UnitTestingSampleGroup/MyWebSite/Endpoint1" />
          </toPorts>
        </lBChannel>
      </channels>
      <maps>
        <map name="MapMyWebSite:?IsSimulationEnvironment?" kind="Identity">
          <setting>
            <aCSMoniker name="/UnitTestingSample/UnitTestingSampleGroup/MyWebSite/?IsSimulationEnvironment?" />
          </setting>
        </map>
        <map name="MapMyWebSite:?RoleHostDebugger?" kind="Identity">
          <setting>
            <aCSMoniker name="/UnitTestingSample/UnitTestingSampleGroup/MyWebSite/?RoleHostDebugger?" />
          </setting>
        </map>
        <map name="MapMyWebSite:?StartupTaskDebugger?" kind="Identity">
          <setting>
            <aCSMoniker name="/UnitTestingSample/UnitTestingSampleGroup/MyWebSite/?StartupTaskDebugger?" />
          </setting>
        </map>
        <map name="MapMyWebSite:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" kind="Identity">
          <setting>
            <aCSMoniker name="/UnitTestingSample/UnitTestingSampleGroup/MyWebSite/Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </setting>
        </map>
        <map name="MapMyWebSiteInstances" kind="Identity">
          <setting>
            <sCSPolicyIDMoniker name="/UnitTestingSample/UnitTestingSampleGroup/MyWebSiteInstances" />
          </setting>
        </map>
      </maps>
      <components>
        <groupHascomponents>
          <role name="MyWebSite" generation="1" functional="0" release="0" software="c:\users\richardm\documents\visual studio 2010\Projects\UnitTestingSample\UnitTestingSample\bin\Debug\UnitTestingSample.csx\roles\MyWebSite" entryPoint="base\x64\WaHostBootstrapper.exe" parameters="base\x64\WaIISHost.exe " memIndex="1792" hostingEnvironment="frontendadmin" hostingEnvironmentVersion="2">
            <componentports>
              <inPort name="Endpoint1" protocol="http" portRanges="80" />
            </componentports>
            <settings>
              <aCS name="?IsSimulationEnvironment?" defaultValue="" />
              <aCS name="?RoleHostDebugger?" defaultValue="" />
              <aCS name="?StartupTaskDebugger?" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="" />
              <aCS name="__ModelData" defaultValue="&lt;m role=&quot;MyWebSite&quot; xmlns=&quot;urn:azure:m:v1&quot;&gt;&lt;r name=&quot;MyWebSite&quot;&gt;&lt;e name=&quot;Endpoint1&quot; /&gt;&lt;/r&gt;&lt;/m&gt;" />
            </settings>
            <resourcereferences>
              <resourceReference name="DiagnosticStore" defaultAmount="[4096,4096,4096]" defaultSticky="true" kind="Directory" />
              <resourceReference name="EventStore" defaultAmount="[1000,1000,1000]" defaultSticky="false" kind="LogStore" />
            </resourcereferences>
          </role>
          <sCSPolicy>
            <sCSPolicyIDMoniker name="/UnitTestingSample/UnitTestingSampleGroup/MyWebSiteInstances" />
            <sCSPolicyFaultDomainMoniker name="/UnitTestingSample/UnitTestingSampleGroup/MyWebSiteFaultDomains" />
          </sCSPolicy>
        </groupHascomponents>
      </components>
      <sCSPolicy>
        <sCSPolicyFaultDomain name="MyWebSiteFaultDomains" defaultPolicy="[2,2,2]" />
        <sCSPolicyID name="MyWebSiteInstances" defaultPolicy="[1,1,1]" />
      </sCSPolicy>
    </group>
  </groups>
  <implements>
    <implementation Id="987a4183-85ec-4c26-ab1b-6b72d061b31d" ref="Microsoft.RedDog.Contract\ServiceContract\UnitTestingSampleContract@ServiceDefinition.build">
      <interfacereferences>
        <interfaceReference Id="f0c7dcd2-b224-4617-8664-aaa7894197d6" ref="Microsoft.RedDog.Contract\Interface\MyWebSite:Endpoint1@ServiceDefinition.build">
          <inPort>
            <inPortMoniker name="/UnitTestingSample/UnitTestingSampleGroup/MyWebSite:Endpoint1" />
          </inPort>
        </interfaceReference>
      </interfacereferences>
    </implementation>
  </implements>
</serviceModel>