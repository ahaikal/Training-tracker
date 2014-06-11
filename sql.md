<?xml version="1.0" encoding="utf-8" ?>
<!-- SQL XML created by WWW SQL Designer, http://code.google.com/p/wwwsqldesigner/ -->
<!-- Active URL: http://ondras.zarovi.cz/sql/demo/ -->
<sql>
<datatypes db="mysql">
	<group label="Numeric" color="rgb(238,238,170)">
		<type label="Integer" length="0" sql="INTEGER" quote=""/>
	 	<type label="TINYINT" length="0" sql="TINYINT" quote=""/>
	 	<type label="SMALLINT" length="0" sql="SMALLINT" quote=""/>
	 	<type label="MEDIUMINT" length="0" sql="MEDIUMINT" quote=""/>
	 	<type label="INT" length="0" sql="INT" quote=""/>
		<type label="BIGINT" length="0" sql="BIGINT" quote=""/>
		<type label="Decimal" length="1" sql="DECIMAL" re="DEC" quote=""/>
		<type label="Single precision" length="0" sql="FLOAT" quote=""/>
		<type label="Double precision" length="0" sql="DOUBLE" re="DOUBLE" quote=""/>
	</group>

	<group label="Character" color="rgb(255,200,200)">
		<type label="Char" length="1" sql="CHAR" quote="'"/>
		<type label="Varchar" length="1" sql="VARCHAR" quote="'"/>
		<type label="Text" length="0" sql="MEDIUMTEXT" re="TEXT" quote="'"/>
		<type label="Binary" length="1" sql="BINARY" quote="'"/>
		<type label="Varbinary" length="1" sql="VARBINARY" quote="'"/>
		<type label="BLOB" length="0" sql="BLOB" re="BLOB" quote="'"/>
	</group>

	<group label="Date &amp; Time" color="rgb(200,255,200)">
		<type label="Date" length="0" sql="DATE" quote="'"/>
		<type label="Time" length="0" sql="TIME" quote="'"/>
		<type label="Datetime" length="0" sql="DATETIME" quote="'"/>
		<type label="Year" length="0" sql="YEAR" quote=""/>
		<type label="Timestamp" length="0" sql="TIMESTAMP" quote="'"/>
	</group>
	
	<group label="Miscellaneous" color="rgb(200,200,255)">
		<type label="ENUM" length="1" sql="ENUM" quote=""/>
		<type label="SET" length="1" sql="SET" quote=""/>
		<type label="Bit" length="0" sql="bit" quote=""/>
	</group>
</datatypes><table x="602" y="195" name="Departments">
<row name="id" null="1" autoincrement="1">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="Name" null="1" autoincrement="0">
<datatype>VARCHAR(255)</datatype>
<default>NULL</default></row>
<row name="admin_id" null="1" autoincrement="0">
<datatype>INTEGER(255)</datatype>
<default>NULL</default><relation table="Admins" row="id" />
</row>
<row name="hospital_id" null="1" autoincrement="0">
<datatype>INTEGER(255)</datatype>
<default>NULL</default><relation table="Hospitals" row="id" />
</row>
<key type="PRIMARY" name="">
<part>id</part>
</key>
</table>
<table x="606" y="365" name="InServices">
<row name="id" null="1" autoincrement="1">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="Name" null="1" autoincrement="0">
<datatype>VARCHAR(255)</datatype>
<default>NULL</default></row>
<row name="duration" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="date" null="1" autoincrement="0">
<datatype>DATETIME</datatype>
<default>NULL</default></row>
<row name="location" null="1" autoincrement="0">
<datatype>VARCHAR(255)</datatype>
<default>NULL</default></row>
<row name="description" null="1" autoincrement="0">
<datatype>MEDIUMTEXT</datatype>
<default>NULL</default></row>
<row name="attended" null="1" autoincrement="0">
<datatype>VARCHAR</datatype>
<default>NULL</default></row>
<row name="date_completed" null="1" autoincrement="0">
<datatype>DATE</datatype>
<default>NULL</default></row>
<key type="PRIMARY" name="">
<part>id</part>
</key>
</table>
<table x="143" y="360" name="Users">
<row name="id" null="1" autoincrement="1">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="First_name" null="1" autoincrement="0">
<datatype>VARCHAR(255)</datatype>
<default>NULL</default></row>
<row name="Last_name" null="1" autoincrement="0">
<datatype>VARCHAR(255)</datatype>
<default>NULL</default></row>
<row name="supervisor_name" null="1" autoincrement="0">
<datatype>VARCHAR(255)</datatype>
<default>NULL</default></row>
<row name="hire_date" null="1" autoincrement="0">
<datatype>DATE</datatype>
<default>NULL</default></row>
<row name="date_certified" null="1" autoincrement="0">
<datatype>DATE</datatype>
<default>NULL</default></row>
<row name="date_employed" null="1" autoincrement="0">
<datatype>DATE</datatype>
<default>NULL</default></row>
<row name="shift" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="group_id" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default><relation table="Groups" row="id" />
</row>
<row name="InService_id" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default><relation table="InServices" row="id" />
</row>
<key type="PRIMARY" name="">
<part>id</part>
</key>
</table>
<table x="394" y="300" name="Groups">
<row name="id" null="1" autoincrement="1">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="Name" null="1" autoincrement="0">
<datatype>VARCHAR(255)</datatype>
<default>NULL</default></row>
<row name="department_id" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default><relation table="Departments" row="id" />
</row>
<key type="PRIMARY" name="">
<part>id</part>
</key>
</table>
<table x="393" y="79" name="Hospitals">
<row name="id" null="1" autoincrement="1">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="name" null="1" autoincrement="0">
<datatype>VARCHAR(255)</datatype>
<default>NULL</default></row>
<row name="location" null="1" autoincrement="0">
<datatype>VARCHAR(255)</datatype>
<default>NULL</default></row>
<key type="PRIMARY" name="">
<part>id</part>
</key>
</table>
<table x="137" y="166" name="Admins">
<row name="id" null="1" autoincrement="1">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="first_name" null="1" autoincrement="0">
<datatype>VARCHAR(255)</datatype>
<default>NULL</default></row>
<row name="last_name" null="1" autoincrement="0">
<datatype>VARCHAR(255)</datatype>
<default>NULL</default></row>
<row name="email" null="1" autoincrement="0">
<datatype>VARCHAR(255)</datatype>
<default>NULL</default></row>
<row name="password" null="1" autoincrement="0">
<datatype>VARCHAR(255)</datatype>
<default>NULL</default></row>
<row name="hospital_id" null="1" autoincrement="0">
<datatype>INTEGER(255)</datatype>
<default>NULL</default><relation table="Hospitals" row="id" />
</row>
<key type="PRIMARY" name="">
<part>id</part>
</key>
</table>
</sql>
