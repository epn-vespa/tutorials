<?xml version="1.0" encoding="UTF-8"?>
<resource schema="illu67p">
  <!-- Service metadata -->
  <meta name="title">Illumination map of 67P</meta>
  <meta name="creationDate">2016-04-05T16:00:00</meta>
  <meta name="description" format="plain">Illumination by the Sun of each face of the comet 67P/Churyumov-Gerasimenko based on the shape model CSHP_DV_130_01_______00200.obj (http://npsadev.esac.esa.int/3D/67/Shapes/ ). The service provides the cosine between the normal of each face (in the same order as the faces defined in the shape model) and the Sun direction; both numerical values and images of the illumination are available. Each map is defined for a given position of the Sun in the frame of 67P (67P/C-G_CK). Longitude 0 is at the center of each map. The code is developed by A. Beth, Imperial College, UK and the service is provided by CDPP http://cdpp.eu</meta>
  <meta name="creator.name">Beth, A.</meta>
  <meta name="contact.name">Arnaud Beth</meta>
  <meta name="contact.email">abeth@ic.ac.uk</meta>
  <meta name="contact.address">Imperial College London, Dpt of Physics, Prince Consort Road, SW7 2AZ, London, United Kingdom</meta>
  <meta name="subject">comet</meta>
  <meta name="subject">67P</meta>
  <meta name="subject">body</meta>
  <meta name="utype">ivo://vopdc.obspm/std/EpnCore#schema-2.0</meta>
  <!-- Table definition -->
  <table id="epn_core" onDisk="True" adql="True">
    <!-- We use the epntap2 standard -->
    <mixin spatial_frame_type="body" optional_columns="access_estsize file_name publisher thumbnail_url access_url">//epntap2#table-2_0</mixin>
    <!-- Table metadata -->
    <meta name="info" infoName="SERVICE_PROTOCOL" infoValue="2.0"> EPN-TAP </meta>
    <meta name="description">Illumination maps of 67P-Churyumov-Gerasimenko for different positions of the sun</meta>
    <!-- The columns added to the epntap2 standard (or not defined here: http://docs.g-vo.org/DaCHS/ref.html#the-epntap2-table-2-0-mixin) -->
    <column name="subsolar_longitude" ucd="pos.bodyrc.lon" description="Latitude of the sun according to 67P"/>
    <column name="subsolar_latitude" ucd="pos.bodyrc.lat" description="Longitude of the sun according to 67P"/>
    <column name="shape_model_url" type="text" ucd="meta.ref.url;meta.model"/>

    <!-- If necessary we can use a view -->
    <!-- <viewStatement>			CREATE VIEW \curtable AS (				SELECT \colNames FROM					(SELECT						'blabla' AS pmraMaster,						'pmde' AS pmdeMaster,						component AS compMaster FROM \schema.my_table) AS m				ON (masterNo=catno)				JOIN \schema.gfh				USING (catid, catan))		</viewStatement> -->
  </table>
  <data id="import">
    <sources items="0"/>
    <!-- We use the external python script called illu67p_pub.py stored in the q?rd base directory. -->
    <customGrammar module="illu67p_pub"/>
    <make table="epn_core">
      <!-- Now let's fill our data. We can put small python code in map/bind nodes. -->
      <rowmaker idmaps="*">
        <apply procDef="//epntap2#populate-2_0">
          <!-- All mandatory parameters must be here -->
          <bind key="granule_uid">@type + '-' + @shortName</bind>
          <bind key="dataproduct_type">@dataType</bind>
          <bind key="target_name">'67P'</bind>
          <bind key="instrument_host_name">'Rosetta'</bind>
          <bind key="instrument_name">'navigation camera'</bind>
          <bind key="target_class">'comet'</bind>
          <bind key="processing_level">5</bind>
          <bind key="measurement_type">'pos.incidenceAng'</bind>
          <bind key="granule_gid">@type</bind>
          <bind key="obs_id">@shortName</bind>
          <bind key="access_format">@mime</bind>
          <bind key="creation_date">'2016-04-07'</bind>
          <bind key="modification_date">'2016-04-07'</bind>
          <bind key="release_date">'2016-04-07'</bind>
          <bind key="service_title">'CDPP-AMDA'</bind>
          <bind key="time_scale">'UTC'</bind>
        </apply>
        <!-- And all optional and custom parameters must be here -->
        <map key="subsolar_longitude">@subsLon</map>
        <map key="subsolar_latitude">@subsLat</map>
        <map key="shape_model_url">'http://imagearchives.esac.esa.int/index.php?/page/navcam_3d_models'</map>
        <map key="file_name">@url.split('/')[-1]</map>
        <map key="access_estsize">@size</map>
        <map key="publisher">'CDPP'</map>
        <map key="thumbnail_url">'http://cdpp2.irap.omp.eu/data/illu67p/thumbnails/thumbnail-' + @shortName + '.png'</map>
        <map key="access_url">@url</map>
      </rowmaker>
    </make>
  </data>
  <data id="collection" auto="false">
    <register services="__system__/tap#run"/>
    <make table="epn_core"/>
  </data>
</resource>
