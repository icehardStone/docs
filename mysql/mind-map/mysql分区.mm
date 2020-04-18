<map version="1.0.1">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1586440856842" ID="ID_622289368" MODIFIED="1586440865050" TEXT="mysql&#x5206;&#x533a;">
<node CREATED="1586440865622" ID="ID_258486599" MODIFIED="1586440878726" POSITION="right" TEXT="&#x6982;&#x8ff0;">
<node CREATED="1586440970060" ID="ID_1395690991" MODIFIED="1586440991823" TEXT="&#x5206;&#x533a;&#x652f;&#x6301;InnoDB&#x5f15;&#x64ce;&#x548c;NDB&#x5f15;&#x64ce;"/>
<node CREATED="1586441231413" ID="ID_782213704" MODIFIED="1586441239463" TEXT="&#x5206;&#x533a;&#x7684;&#x4f18;&#x70b9;">
<node CREATED="1586441244989" ID="ID_314699364" MODIFIED="1586441376820" TEXT="&#x5206;&#x533a;&#x4f7f;&#x5f97;&#x5728;&#x4e00;&#x4e2a;&#x8868;&#x4e2d;&#x6bd4;&#x5355;&#x72ec;&#x7684;&#x78c1;&#x76d8;&#x6216;&#x8005;&#x6587;&#x4ef6;&#x7cfb;&#x7edf;&#x5b58;&#x50a8;&#x66f4;&#x591a;&#x7684;&#x6570;&#x636e;&#x6210;&#x4e3a;&#x53ef;&#x80fd;">
<icon BUILTIN="full-1"/>
</node>
<node CREATED="1586441377437" ID="ID_432458010" MODIFIED="1586441583457">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="3">&#22833;&#21435;&#20351;&#29992;&#30340;&#25968;&#25454;&#33021;&#22815;&#36890;&#36807;&#31227;&#38500;&#20998;&#21306;&#31616;&#21333;&#30340;&#21024;&#38500;&#65292;&#30456;&#21453;&#30340;&#65292; </font>
    </p>
    <p>
      <font color="rgb(46, 48, 51)" face="Arial, Microsoft YaHei, &#x5fae;&#x8f6f;&#x96c5;&#x9ed1;, &#x5b8b;&#x4f53;, Malgun Gothic, Meiryo, sans-serif" size="3">&#22312;&#26576;&#20123;&#24773;&#20917;&#19979;&#65292;&#36890;&#36807;&#28155;&#21152;&#19968;&#20010;&#25110;&#22810;&#20010;&#26032;&#30340;&#20998;&#21306;&#26469;&#23384;&#20648;&#29305;&#23450;&#30340;&#25968;&#25454;&#65292;&#21487;&#20197;&#26497;&#22823;&#22320;&#31616;&#21270;&#28155;&#21152;&#26032;&#25968;&#25454;&#30340;&#36807;&#31243;&#12290;</font>
    </p>
  </body>
</html>
</richcontent>
<icon BUILTIN="full-2"/>
</node>
<node CREATED="1586441592126" ID="ID_855721268" MODIFIED="1586441678153" TEXT="&#x4f18;&#x5316;&#x67e5;&#x8be2;&#xff0c;&#x81f3;&#x6b64;&#x67e5;&#x8be2;&#x7684;&#x663e;&#x5f0f;&#x5206;&#x533a;&#x9009;&#x62e9;">
<icon BUILTIN="full-3"/>
</node>
</node>
</node>
<node CREATED="1586440879042" ID="ID_1886332994" MODIFIED="1586440882636" POSITION="right" TEXT="&#x5206;&#x533a;&#x7c7b;&#x578b;">
<node CREATED="1586441706864" ID="ID_1145440429" MODIFIED="1586441715076" TEXT="Range: &#x8303;&#x56f4;&#x5206;&#x533a;">
<node CREATED="1586441780706" ID="ID_1103525008" MODIFIED="1586441804612" TEXT="&#x6982;&#x8ff0;: &#x901a;&#x8fc7;&#x7ed9;&#x4e88;&#x5217;&#x7684;&#x503c;&#x4e00;&#x4e2a;&#x8303;&#x56f4;"/>
<node CREATED="1586441805160" ID="ID_345498921" MODIFIED="1586442194300" TEXT="&#x8bed;&#x6cd5;&#xff1a; A very common use of database partitioning is to segregate data by date. Some database systems support explicit date partitioning, "/>
<node CREATED="1586441812842" ID="ID_1166450144" MODIFIED="1586442156668">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#31034;&#33539;:
    </p>
    <p>
      
    </p>
    <p>
      create table members (
    </p>
    <p>
      firstname varchar(25) not null,
    </p>
    <p>
      lastname&#160;&#160;varchar(25) not null,
    </p>
    <p>
      username varchar(16) not null,
    </p>
    <p>
      email varchar(35),
    </p>
    <p>
      joined date not null
    </p>
    <p>
      )
    </p>
    <p>
      partition by range(year(joined)) (
    </p>
    <p>
      partition p0 values less than (1960),
    </p>
    <p>
      partition p1 values less than (1970),
    </p>
    <p>
      partition p2 values less than (1980),
    </p>
    <p>
      partition p3 values less than (1990),
    </p>
    <p>
      partition p4 values less than maxvalue
    </p>
    <p>
      );
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node CREATED="1586441715407" ID="ID_732191222" MODIFIED="1586441724857" TEXT="List: &#x5217;&#x8868;&#x5206;&#x533a;">
<node CREATED="1586442331268" ID="ID_1401517279" MODIFIED="1586442387937" TEXT="&#x6982;&#x8ff0;&#xff1a;&#x5217;&#x8868;&#x5206;&#x533a;&#x4e0e;&#x8303;&#x56f4;&#x5206;&#x533a;&#x6709;&#x5f88;&#x5927;&#x7684;&#x76f8;&#x8bc6;&#x7684;&#x90e8;&#x5206;&#xff0c;&#x6bcf;&#x4e2a;&#x5206;&#x533a;&#x5fc5;&#x987b;&#x88ab;&#x663e;&#x793a;&#x7684;&#x5b9a;&#x4e49;&#x3002;"/>
<node CREATED="1586442389332" ID="ID_216093616" MODIFIED="1586442394832" TEXT="&#x8bed;&#x6cd5;:"/>
<node CREATED="1586442395372" ID="ID_1217464117" MODIFIED="1586442665471">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#31034;&#33539;:
    </p>
    <p>
      drop table `employees` if exists;
    </p>
    <p>
      create table `employees` (
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;id int not null,
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;fname varchar(30),
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;lname varchar(30),
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;hired date not null default '1970-01-01',
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;separated date not null default '9999-12-31',
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;job_code int,
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;store_id int
    </p>
    <p>
      )
    </p>
    <p>
      partition by list(store_id) (
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;partition pNorth values in (3,4,5,17),
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;partition pEast values in (1,2,47,14),
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;partition pWest values in (89),
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;partition pCenteral values in (90,7)
    </p>
    <p>
      );
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node CREATED="1586441725175" ID="ID_747918892" MODIFIED="1586442826909" TEXT="Hash:hash&#x5206;&#x533a;">
<node CREATED="1586442763927" ID="ID_1384221637" MODIFIED="1586442780186" TEXT="&#x6982;&#x8ff0;:    &#x6563;&#x5217;&#x5206;&#x533a;&#x4e3b;&#x8981;&#x7528;&#x4e8e;&#x786e;&#x4fdd;&#x6570;&#x636e;&#x5728;&#x9884;&#x5b9a;&#x6570;&#x76ee;&#x7684;&#x5206;&#x533a;&#x4e4b;&#x95f4;&#x7684;&#x5747;&#x5300;&#x5206;&#x5e03;&#x3002;"/>
<node CREATED="1586442772055" ID="ID_1094340428" MODIFIED="1586442804683" TEXT="&#x8bed;&#x6cd5;"/>
<node CREATED="1586442804975" ID="ID_505652857" MODIFIED="1586442848232">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#31034;&#33539;:
    </p>
    <p>
      
    </p>
    <pre data-lang="sql" class="programlisting">CREATE TABLE employees (
    id INT NOT NULL,
    fname VARCHAR(30),
    lname VARCHAR(30),
    hired DATE NOT NULL DEFAULT '1970-01-01',
    separated DATE NOT NULL DEFAULT '9999-12-31',
    job_code INT,
    store_id INT
)
PARTITION BY HASH(store_id)
PARTITIONS 4;</pre>
  </body>
</html>
</richcontent>
</node>
</node>
<node CREATED="1586441739631" ID="ID_1215379885" MODIFIED="1586441777712" TEXT="Key:&#x5173;&#x952e;&#x5b57;&#x5206;&#x533a;">
<node CREATED="1586443860118" ID="ID_1239384019" MODIFIED="1586443866044" TEXT="&#x6982;&#x8ff0;: &#x6309;&#x952e;&#x5206;&#x533a;&#x7c7b;&#x4f3c;&#x4e8e;&#x6309;&#x6563;&#x5217;&#x5206;&#x533a;&#xff0c;&#x4e0d;&#x540c;&#x4e4b;&#x5904;&#x662f;&#x6563;&#x5217;&#x5206;&#x533a;&#x4f7f;&#x7528;&#x7528;&#x6237;&#x5b9a;&#x4e49;&#x7684;&#x8868;&#x8fbe;&#x5f0f;t"/>
<node CREATED="1586443868785" ID="ID_1702833162" MODIFIED="1586443873509" TEXT="&#x8bed;&#x6cd5;:"/>
<node CREATED="1586443873930" ID="ID_34222888" MODIFIED="1586443897227">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#31034;&#33539;:
    </p>
    <p>
      
    </p>
    <pre data-lang="sql" class="programlisting">CREATE TABLE k1 (
    id INT NOT NULL,
    name VARCHAR(20),
    UNIQUE KEY (id)
)
PARTITION BY KEY()
PARTITIONS 2;</pre>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node CREATED="1586443967818" ID="ID_1694962702" MODIFIED="1586443983966" POSITION="right" TEXT="&#x5b50;&#x5206;&#x533a;">
<node CREATED="1586443990027" ID="ID_1382946494" MODIFIED="1586444033487" TEXT="&#x6982;&#x8ff0;:  &#x5b50;&#x5206;&#x533a;&#xff0c;&#x590d;&#x6742;&#x7684;&#x5206;&#x533a;&#xff0c;&#x662f;&#x5206;&#x533a;&#x8868;&#x7684;&#x6bcf;&#x4e00;&#x4e2a;&#x5206;&#x533a;&#x7684;&#x8fdb;&#x4e00;&#x6b65;&#x5212;&#x5206;&#x3002;"/>
<node CREATED="1586444034554" ID="ID_1442978814" MODIFIED="1586444040975" TEXT="&#x8bed;&#x6cd5;:"/>
<node CREATED="1586444041322" ID="ID_945944523" MODIFIED="1586444063935">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#31034;&#33539;:
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <pre data-lang="sql" class="programlisting">CREATE TABLE ts (id INT, purchased DATE)
    PARTITION BY RANGE( YEAR(purchased) )
    SUBPARTITION BY HASH( TO_DAYS(purchased) )
    SUBPARTITIONS 2 (
        PARTITION p0 VALUES LESS THAN (1990),
        PARTITION p1 VALUES LESS THAN (2000),
        PARTITION p2 VALUES LESS THAN MAXVALUE
    );</pre>
  </body>
</html>
</richcontent>
</node>
</node>
<node CREATED="1586440883019" ID="ID_1742365412" MODIFIED="1586440886410" POSITION="right" TEXT="&#x5206;&#x533a;&#x7ba1;&#x7406;">
<node CREATED="1586444147867" ID="ID_1275674454" MODIFIED="1586444170695" TEXT="MySQL&#x5206;&#x533a;&#x5982;&#x4f55;&#x5904;&#x7406;NULL?">
<node CREATED="1586444176667" ID="ID_1655879981" MODIFIED="1586444245407" TEXT="MySQL&#x5206;&#x533a;&#x4e0d;&#x5141;&#x8bb8;NULL&#x503c;&#x4f5c;&#x4e3a;&#x5206;&#x533a;&#x8868;&#x8fbe;&#x5f0f;&#x7684;&#x503c;">
<icon BUILTIN="idea"/>
</node>
</node>
<node CREATED="1586444425493" ID="ID_951460036" MODIFIED="1586444458348" TEXT="&#x5206;&#x533a;&#x9009;&#x62e9;&#x67e5;&#x8be2;:   select * from tr partition (p2);"/>
<node CREATED="1586444460333" ID="ID_1397705307" MODIFIED="1586444483721" TEXT="&#x5220;&#x9664;&#x5206;&#x533a;: alter table tr drop partition p2;"/>
<node CREATED="1586444515935" ID="ID_642465964" MODIFIED="1586444522965" TEXT="&#x65b0;&#x589e;&#x5206;&#x533a;: ALTER TABLE members ADD PARTITION (PARTITION p3 VALUES LESS THAN (2010));"/>
<node CREATED="1586444608711" ID="ID_1980245734" MODIFIED="1586444617727" TEXT="&#x83b7;&#x53d6;&#x5206;&#x533a;&#x4fe1;&#x606f;&#x7684;&#x9014;&#x5f84;">
<node CREATED="1586444617727" ID="ID_1037862550" MODIFIED="1586444638530" TEXT="show create table `tablename`">
<icon BUILTIN="full-1"/>
</node>
<node CREATED="1586444638839" ID="ID_1086180547" MODIFIED="1586444649554" TEXT="show table status">
<icon BUILTIN="full-2"/>
</node>
<node CREATED="1586444650006" ID="ID_464824649" MODIFIED="1586444678010" TEXT="information_schema;partitions">
<icon BUILTIN="full-3"/>
</node>
</node>
</node>
<node CREATED="1586440886826" ID="ID_1987808334" MODIFIED="1586440895405" POSITION="right" TEXT="&#x5206;&#x533a;&#x9009;&#x62e9;">
<node CREATED="1586444756096" ID="ID_652769277" MODIFIED="1586444771083" TEXT="&#x652f;&#x6301;&#x663e;&#x793a;&#x5206;&#x533a;&#x9009;&#x7684;">
<node CREATED="1586444771084" ID="ID_533400185" MODIFIED="1586444801210" TEXT="select">
<icon BUILTIN="full-1"/>
</node>
<node CREATED="1586444776134" ID="ID_1563696638" MODIFIED="1586444804272" TEXT="delete">
<icon BUILTIN="full-2"/>
</node>
<node CREATED="1586444778503" ID="ID_514824185" MODIFIED="1586444807038" TEXT="insert">
<icon BUILTIN="full-3"/>
</node>
<node CREATED="1586444781423" ID="ID_832641995" MODIFIED="1586444822923" TEXT="replace">
<icon BUILTIN="full-4"/>
</node>
<node CREATED="1586444785895" ID="ID_859974861" MODIFIED="1586444825516" TEXT="update">
<icon BUILTIN="full-5"/>
</node>
<node CREATED="1586444789095" ID="ID_880369444" MODIFIED="1586444827995" TEXT="load data">
<icon BUILTIN="full-6"/>
</node>
<node CREATED="1586444794631" ID="ID_1082219715" MODIFIED="1586444830691" TEXT="load xml">
<icon BUILTIN="full-7"/>
</node>
</node>
</node>
<node CREATED="1586440905818" ID="ID_383674059" MODIFIED="1586440915899" POSITION="right" TEXT="&#x5206;&#x533a;&#x7ea6;&#x675f;&#x548c;&#x9650;&#x5236;"/>
<node CREATED="1586440925138" ID="ID_1060386629" MODIFIED="1586440951317" POSITION="right" TEXT="&#x5206;&#x533a;&#x88c1;&#x526a;"/>
</node>
</map>
