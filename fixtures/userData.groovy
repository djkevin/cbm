<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  
  

  


  

  <head>
    <title>
      /cbm/trunk/fixtures/userData.groovy – CBM
    </title>
        <link rel="search" href="/CBM/search" />
        <link rel="help" href="/CBM/wiki/TracGuide" />
        <link rel="alternate" href="/CBM/export/515/cbm/trunk/fixtures/userData.groovy" type="text/plain" title="Original Format" />
        <link rel="up" href="/CBM/browser/cbm/trunk/fixtures" title="Parent directory" />
        <link rel="start" href="/CBM/wiki" />
        <link rel="stylesheet" href="/CBM/chrome/common/css/trac.css" type="text/css" /><link rel="stylesheet" href="/CBM/chrome/common/css/code.css" type="text/css" /><link rel="stylesheet" href="/CBM/chrome/common/css/browser.css" type="text/css" />
        <link rel="shortcut icon" href="/CBM/chrome/common/trac.ico" type="image/x-icon" />
        <link rel="icon" href="/CBM/chrome/common/trac.ico" type="image/x-icon" />
      <link type="application/opensearchdescription+xml" rel="search" href="/CBM/search/opensearch" title="Search CBM" />
    <script type="text/javascript" src="/CBM/chrome/common/js/jquery.js"></script><script type="text/javascript" src="/CBM/chrome/common/js/trac.js"></script><script type="text/javascript" src="/CBM/chrome/common/js/search.js"></script>
    <!--[if lt IE 7]>
    <script type="text/javascript" src="/CBM/chrome/common/js/ie_pre7_hacks.js"></script>
    <![endif]-->
    <script type="text/javascript">
      jQuery(document).ready(function($) {
        $("#jumploc input").hide();
        $("#jumploc select").change(function () {
          this.parentNode.parentNode.submit();
        })
      });
    </script>
  </head>
  <body>
    <div id="banner">
      <div id="header">
        <a id="logo" href="/CBM/wiki/TracIni#header_logo-section"><img src="/CBM/chrome/site/40px-Peace_sign.svg.png" alt="(please configure the [header_logo] section in trac.ini)" /></a>
      </div>
      <form id="search" action="/CBM/search" method="get">
        <div>
          <label for="proj-search">Search:</label>
          <input type="text" id="proj-search" name="q" size="18" value="" />
          <input type="submit" value="Search" />
        </div>
      </form>
      <div id="metanav" class="nav">
    <ul>
      <li class="first">logged in as tsiamitas</li><li><a href="/CBM/logout">Logout</a></li><li><a href="/CBM/prefs">Preferences</a></li><li><a href="/CBM/wiki/TracGuide">Help/Guide</a></li><li class="last"><a href="/CBM/about">About Trac</a></li>
    </ul>
  </div>
    </div>
    <div id="mainnav" class="nav">
    <ul>
      <li class="first"><a href="/CBM/wiki">Wiki</a></li><li><a href="/CBM/timeline">Timeline</a></li><li><a href="/CBM/roadmap">Roadmap</a></li><li class="active"><a href="/CBM/browser">Browse Source</a></li><li><a href="/CBM/report">View Tickets</a></li><li><a href="/CBM/newticket">New Ticket</a></li><li><a href="/CBM/search">Search</a></li><li class="last"><a href="/CBM/admin" title="Administration">Admin</a></li>
    </ul>
  </div>
    <div id="main">
      <div id="ctxtnav" class="nav">
        <h2>Context Navigation</h2>
          <ul>
              <li class="first"><a href="/CBM/changeset/514/cbm/trunk/fixtures/userData.groovy">Last Change</a></li><li><a href="/CBM/browser/cbm/trunk/fixtures/userData.groovy?annotate=blame&amp;rev=514" title="Annotate each line with the last changed revision (this can be time consuming...)">Annotate</a></li><li class="last"><a href="/CBM/log/cbm/trunk/fixtures/userData.groovy">Revision Log</a></li>
          </ul>
        <hr />
      </div>
    <div id="content" class="browser">
      <h1>
    <a class="pathentry first" title="Go to root directory" href="/CBM/browser">root</a><span class="pathentry sep">/</span><a class="pathentry" title="View cbm" href="/CBM/browser/cbm">cbm</a><span class="pathentry sep">/</span><a class="pathentry" title="View trunk" href="/CBM/browser/cbm/trunk">trunk</a><span class="pathentry sep">/</span><a class="pathentry" title="View fixtures" href="/CBM/browser/cbm/trunk/fixtures">fixtures</a><span class="pathentry sep">/</span><a class="pathentry" title="View userData.groovy" href="/CBM/browser/cbm/trunk/fixtures/userData.groovy">userData.groovy</a>
    <br style="clear: both" />
  </h1>
      <div id="jumprev">
        <form action="" method="get">
          <div>
            <label for="rev">
              View revision:</label>
            <input type="text" id="rev" name="rev" size="6" />
          </div>
        </form>
      </div>
      <table id="info" summary="Revision info">
        <tr>
          <th scope="col">
            Revision <a href="/CBM/changeset/514">514</a>, <span title="3196 bytes">3.1 KB</span>
            (checked in by tsiamitas, <a class="timeline" href="/CBM/timeline?from=2014-11-27T17%3A06%3A38%2B0100&amp;precision=second" title="2014-11-27T17:06:38+0100 in Timeline">14 minutes</a> ago)
          </th>
        </tr>
        <tr>
          <td class="message searchable">
              <p>
Refactoring bootstrap and data loading.<br />
</p>
          </td>
        </tr>
      </table>
      <div id="preview" class="searchable">
    <table class="code"><thead><tr><th class="lineno" title="Line numbers">Line</th><th class="content"> </th></tr></thead><tbody><tr><th id="L1"><a href="#L1">1</a></th><td>/**</td></tr><tr><th id="L2"><a href="#L2">2</a></th><td> * Created with IntelliJ IDEA.</td></tr><tr><th id="L3"><a href="#L3">3</a></th><td> * User: jutliah</td></tr><tr><th id="L4"><a href="#L4">4</a></th><td> * Date: 5/26/14</td></tr><tr><th id="L5"><a href="#L5">5</a></th><td> * Time: 5:24 PM</td></tr><tr><th id="L6"><a href="#L6">6</a></th><td> * To change this template use File | Settings | File Templates.</td></tr><tr><th id="L7"><a href="#L7">7</a></th><td> */</td></tr><tr><th id="L8"><a href="#L8">8</a></th><td></td></tr><tr><th id="L9"><a href="#L9">9</a></th><td></td></tr><tr><th id="L10"><a href="#L10">10</a></th><td>import cbm.admin.Country</td></tr><tr><th id="L11"><a href="#L11">11</a></th><td>import cbm.admin.StateParty</td></tr><tr><th id="L12"><a href="#L12">12</a></th><td>import cbm.usermgt.SecRole</td></tr><tr><th id="L13"><a href="#L13">13</a></th><td>import cbm.usermgt.SecUserSecRole</td></tr><tr><th id="L14"><a href="#L14">14</a></th><td>import cbm.usermgt.User</td></tr><tr><th id="L15"><a href="#L15">15</a></th><td>import org.joda.time.LocalDate</td></tr><tr><th id="L16"><a href="#L16">16</a></th><td>import cbm.usermgt.AdminUser</td></tr><tr><th id="L17"><a href="#L17">17</a></th><td></td></tr><tr><th id="L18"><a href="#L18">18</a></th><td></td></tr><tr><th id="L19"><a href="#L19">19</a></th><td>/** </td></tr><tr><th id="L20"><a href="#L20">20</a></th><td> * Create various users and grant them roles.</td></tr><tr><th id="L21"><a href="#L21">21</a></th><td> * Should be used for DEV or TEST environments only.</td></tr><tr><th id="L22"><a href="#L22">22</a></th><td> * In PROD users should be created through SQL scripts </td></tr><tr><th id="L23"><a href="#L23">23</a></th><td> * or (if it exists) through the admin interface of the application.  </td></tr><tr><th id="L24"><a href="#L24">24</a></th><td> */</td></tr><tr><th id="L25"><a href="#L25">25</a></th><td>fixture {</td></tr><tr><th id="L26"><a href="#L26">26</a></th><td></td></tr><tr><th id="L27"><a href="#L27">27</a></th><td>        // ------------- the admin user</td></tr><tr><th id="L28"><a href="#L28">28</a></th><td>        </td></tr><tr><th id="L29"><a href="#L29">29</a></th><td>        userAdmin(AdminUser) {</td></tr><tr><th id="L30"><a href="#L30">30</a></th><td>                username = "admin"</td></tr><tr><th id="L31"><a href="#L31">31</a></th><td>                password = "adminpass"</td></tr><tr><th id="L32"><a href="#L32">32</a></th><td>        }</td></tr><tr><th id="L33"><a href="#L33">33</a></th><td></td></tr><tr><th id="L34"><a href="#L34">34</a></th><td>        userRoleAdmin(SecUserSecRole) {</td></tr><tr><th id="L35"><a href="#L35">35</a></th><td>                secUser = userAdmin</td></tr><tr><th id="L36"><a href="#L36">36</a></th><td>                secRole = SecRole.findByAuthority('ROLE_ADMIN')</td></tr><tr><th id="L37"><a href="#L37">37</a></th><td>        }</td></tr><tr><th id="L38"><a href="#L38">38</a></th><td>        </td></tr><tr><th id="L39"><a href="#L39">39</a></th><td>        // ------------- users for some state parties, each user with a specific role.</td></tr><tr><th id="L40"><a href="#L40">40</a></th><td>        </td></tr><tr><th id="L41"><a href="#L41">41</a></th><td>        cheViewer(User) { </td></tr><tr><th id="L42"><a href="#L42">42</a></th><td>                username="cheViewer"</td></tr><tr><th id="L43"><a href="#L43">43</a></th><td>                password="chepass"</td></tr><tr><th id="L44"><a href="#L44">44</a></th><td>                stateParty = StateParty.findByCountry(Country.findByIso3("CHE"))                </td></tr><tr><th id="L45"><a href="#L45">45</a></th><td>        }</td></tr><tr><th id="L46"><a href="#L46">46</a></th><td>        cheEditor(User) {</td></tr><tr><th id="L47"><a href="#L47">47</a></th><td>                username="cheEditor"</td></tr><tr><th id="L48"><a href="#L48">48</a></th><td>                password="chepass"</td></tr><tr><th id="L49"><a href="#L49">49</a></th><td>                stateParty = StateParty.findByCountry(Country.findByIso3("CHE"))</td></tr><tr><th id="L50"><a href="#L50">50</a></th><td>        }</td></tr><tr><th id="L51"><a href="#L51">51</a></th><td>        cheSubmitter(User) {</td></tr><tr><th id="L52"><a href="#L52">52</a></th><td>                username="cheSubmitter"</td></tr><tr><th id="L53"><a href="#L53">53</a></th><td>                password="chepass"</td></tr><tr><th id="L54"><a href="#L54">54</a></th><td>                stateParty = StateParty.findByCountry(Country.findByIso3("CHE"))</td></tr><tr><th id="L55"><a href="#L55">55</a></th><td>        }</td></tr><tr><th id="L56"><a href="#L56">56</a></th><td></td></tr><tr><th id="L57"><a href="#L57">57</a></th><td>        cheViewerRole(SecUserSecRole) {</td></tr><tr><th id="L58"><a href="#L58">58</a></th><td>                secUser = cheViewer</td></tr><tr><th id="L59"><a href="#L59">59</a></th><td>                secRole = SecRole.findByAuthority('ROLE_VIEWER')</td></tr><tr><th id="L60"><a href="#L60">60</a></th><td>        }</td></tr><tr><th id="L61"><a href="#L61">61</a></th><td>        cheEditorRole(SecUserSecRole) {</td></tr><tr><th id="L62"><a href="#L62">62</a></th><td>                secUser = cheEditor</td></tr><tr><th id="L63"><a href="#L63">63</a></th><td>                secRole = SecRole.findByAuthority('ROLE_EDITOR')</td></tr><tr><th id="L64"><a href="#L64">64</a></th><td>        }</td></tr><tr><th id="L65"><a href="#L65">65</a></th><td>        cheSubmitterRole(SecUserSecRole) {</td></tr><tr><th id="L66"><a href="#L66">66</a></th><td>                secUser = cheSubmitter</td></tr><tr><th id="L67"><a href="#L67">67</a></th><td>                secRole = SecRole.findByAuthority('ROLE_SUBMITTER')</td></tr><tr><th id="L68"><a href="#L68">68</a></th><td>        }</td></tr><tr><th id="L69"><a href="#L69">69</a></th><td>        </td></tr><tr><th id="L70"><a href="#L70">70</a></th><td>        // -------------- users for some state parties </td></tr><tr><th id="L71"><a href="#L71">71</a></th><td>        </td></tr><tr><th id="L72"><a href="#L72">72</a></th><td>        user15(User) {</td></tr><tr><th id="L73"><a href="#L73">73</a></th><td>                username = "bel"</td></tr><tr><th id="L74"><a href="#L74">74</a></th><td>                password = "Sunning Bushings"</td></tr><tr><th id="L75"><a href="#L75">75</a></th><td>                stateParty = StateParty.findByCountry(Country.findByIso3("BEL"))</td></tr><tr><th id="L76"><a href="#L76">76</a></th><td>        }       </td></tr><tr><th id="L77"><a href="#L77">77</a></th><td>        user145(User) {</td></tr><tr><th id="L78"><a href="#L78">78</a></th><td>                username = "swe"</td></tr><tr><th id="L79"><a href="#L79">79</a></th><td>                password = "Rationalizing Trustfulness"</td></tr><tr><th id="L80"><a href="#L80">80</a></th><td>                stateParty = StateParty.findByCountry(Country.findByIso3("SWE"))</td></tr><tr><th id="L81"><a href="#L81">81</a></th><td>        }</td></tr><tr><th id="L82"><a href="#L82">82</a></th><td>        user146(User) {</td></tr><tr><th id="L83"><a href="#L83">83</a></th><td>                username = "che"</td></tr><tr><th id="L84"><a href="#L84">84</a></th><td>                password = "Capitalising Immunology"</td></tr><tr><th id="L85"><a href="#L85">85</a></th><td>                stateParty = StateParty.findByCountry(Country.findByIso3("CHE"))</td></tr><tr><th id="L86"><a href="#L86">86</a></th><td>        }    </td></tr><tr><th id="L87"><a href="#L87">87</a></th><td>        user160(User) {</td></tr><tr><th id="L88"><a href="#L88">88</a></th><td>                username = "gbr"</td></tr><tr><th id="L89"><a href="#L89">89</a></th><td>                password = "Compared Jacaranda"</td></tr><tr><th id="L90"><a href="#L90">90</a></th><td>                stateParty = StateParty.findByCountry(Country.findByIso3("GBR"))</td></tr><tr><th id="L91"><a href="#L91">91</a></th><td>        }</td></tr><tr><th id="L92"><a href="#L92">92</a></th><td>        user161(User) {</td></tr><tr><th id="L93"><a href="#L93">93</a></th><td>                username = "usa"</td></tr><tr><th id="L94"><a href="#L94">94</a></th><td>                password = "Kickstarting Limerick"</td></tr><tr><th id="L95"><a href="#L95">95</a></th><td>                stateParty = StateParty.findByCountry(Country.findByIso3("USA"))</td></tr><tr><th id="L96"><a href="#L96">96</a></th><td>        }</td></tr><tr><th id="L97"><a href="#L97">97</a></th><td>        user162(User) {</td></tr><tr><th id="L98"><a href="#L98">98</a></th><td>                username = "ury"</td></tr><tr><th id="L99"><a href="#L99">99</a></th><td>                password = "Imagined Warranties"</td></tr><tr><th id="L100"><a href="#L100">100</a></th><td>                stateParty = StateParty.findByCountry(Country.findByIso3("URY"))</td></tr><tr><th id="L101"><a href="#L101">101</a></th><td>        }       </td></tr><tr><th id="L102"><a href="#L102">102</a></th><td></td></tr><tr><th id="L103"><a href="#L103">103</a></th><td>    roleUser(SecRole) {</td></tr><tr><th id="L104"><a href="#L104">104</a></th><td>        authority = 'ROLE_USER'</td></tr><tr><th id="L105"><a href="#L105">105</a></th><td>    }</td></tr><tr><th id="L106"><a href="#L106">106</a></th><td>        </td></tr><tr><th id="L107"><a href="#L107">107</a></th><td>    userRoleSWE(SecUserSecRole) {</td></tr><tr><th id="L108"><a href="#L108">108</a></th><td>        secUser = user145</td></tr><tr><th id="L109"><a href="#L109">109</a></th><td>        secRole = roleUser</td></tr><tr><th id="L110"><a href="#L110">110</a></th><td>    }</td></tr><tr><th id="L111"><a href="#L111">111</a></th><td>        </td></tr><tr><th id="L112"><a href="#L112">112</a></th><td>    userRoleUS(SecUserSecRole) {</td></tr><tr><th id="L113"><a href="#L113">113</a></th><td>        secUser = user161</td></tr><tr><th id="L114"><a href="#L114">114</a></th><td>        secRole = roleUser</td></tr><tr><th id="L115"><a href="#L115">115</a></th><td>    }</td></tr><tr><th id="L116"><a href="#L116">116</a></th><td></td></tr><tr><th id="L117"><a href="#L117">117</a></th><td>    userRoleUK(SecUserSecRole) {</td></tr><tr><th id="L118"><a href="#L118">118</a></th><td>        secUser = user160</td></tr><tr><th id="L119"><a href="#L119">119</a></th><td>        secRole = roleUser</td></tr><tr><th id="L120"><a href="#L120">120</a></th><td>    }</td></tr><tr><th id="L121"><a href="#L121">121</a></th><td></td></tr><tr><th id="L122"><a href="#L122">122</a></th><td>    userRole162(SecUserSecRole) {</td></tr><tr><th id="L123"><a href="#L123">123</a></th><td>        secUser = user162</td></tr><tr><th id="L124"><a href="#L124">124</a></th><td>        secRole = roleUser</td></tr><tr><th id="L125"><a href="#L125">125</a></th><td>    }</td></tr><tr><th id="L126"><a href="#L126">126</a></th><td>        </td></tr><tr><th id="L127"><a href="#L127">127</a></th><td>    userRoleBEL(SecUserSecRole) {</td></tr><tr><th id="L128"><a href="#L128">128</a></th><td>        secUser = user15</td></tr><tr><th id="L129"><a href="#L129">129</a></th><td>        secRole = roleUser</td></tr><tr><th id="L130"><a href="#L130">130</a></th><td>    }</td></tr><tr><th id="L131"><a href="#L131">131</a></th><td>        </td></tr><tr><th id="L132"><a href="#L132">132</a></th><td>    userRoleCHE(SecUserSecRole) {</td></tr><tr><th id="L133"><a href="#L133">133</a></th><td>        secUser = user146</td></tr><tr><th id="L134"><a href="#L134">134</a></th><td>        secRole = roleUser</td></tr><tr><th id="L135"><a href="#L135">135</a></th><td>    }</td></tr><tr><th id="L136"><a href="#L136">136</a></th><td></td></tr><tr><th id="L137"><a href="#L137">137</a></th><td>}</td></tr></tbody></table>
      </div>
      <div id="help">
        <strong>Note:</strong> See <a href="/CBM/wiki/TracBrowser">TracBrowser</a>
        for help on using the browser.
      </div>
      <div id="anydiff">
        <form action="/CBM/diff" method="get">
          <div class="buttons">
            <input type="hidden" name="new_path" value="/cbm/trunk/fixtures/userData.groovy" />
            <input type="hidden" name="old_path" value="/cbm/trunk/fixtures/userData.groovy" />
            <input type="hidden" name="new_rev" value="514" />
            <input type="hidden" name="old_rev" value="514" />
            <input type="submit" value="View changes..." title="Select paths and revs for Diff" />
          </div>
        </form>
      </div>
    </div>
    <div id="altlinks">
      <h3>Download in other formats:</h3>
      <ul>
        <li class="last first">
          <a rel="nofollow" href="/CBM/export/515/cbm/trunk/fixtures/userData.groovy">Original Format</a>
        </li>
      </ul>
    </div>
    </div>
    <div id="footer" lang="en" xml:lang="en"><hr />
      <a id="tracpowered" href="http://trac.edgewall.org/"><img src="/CBM/chrome/common/trac_logo_mini.png" height="30" width="107" alt="Trac Powered" /></a>
      <p class="left">
        Powered by <a href="/CBM/about"><strong>Trac 0.11.3</strong></a><br />
        By <a href="http://www.edgewall.org/">Edgewall Software</a>.
      </p>
      <p class="right">Visit the Trac open source project at<br /><a href="http://trac.edgewall.org/">http://trac.edgewall.org/</a></p>
    </div>
  </body>
</html>