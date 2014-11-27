<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  
  

  


  

  <head>
    <title>
      /cbm/trunk/fixtures/roleData.groovy – CBM
    </title>
        <link rel="search" href="/CBM/search" />
        <link rel="help" href="/CBM/wiki/TracGuide" />
        <link rel="alternate" href="/CBM/export/515/cbm/trunk/fixtures/roleData.groovy" type="text/plain" title="Original Format" />
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
              <li class="first"><a href="/CBM/changeset/515/cbm/trunk/fixtures/roleData.groovy">Last Change</a></li><li><a href="/CBM/browser/cbm/trunk/fixtures/roleData.groovy?annotate=blame&amp;rev=515" title="Annotate each line with the last changed revision (this can be time consuming...)">Annotate</a></li><li class="last"><a href="/CBM/log/cbm/trunk/fixtures/roleData.groovy">Revision Log</a></li>
          </ul>
        <hr />
      </div>
    <div id="content" class="browser">
      <h1>
    <a class="pathentry first" title="Go to root directory" href="/CBM/browser">root</a><span class="pathentry sep">/</span><a class="pathentry" title="View cbm" href="/CBM/browser/cbm">cbm</a><span class="pathentry sep">/</span><a class="pathentry" title="View trunk" href="/CBM/browser/cbm/trunk">trunk</a><span class="pathentry sep">/</span><a class="pathentry" title="View fixtures" href="/CBM/browser/cbm/trunk/fixtures">fixtures</a><span class="pathentry sep">/</span><a class="pathentry" title="View roleData.groovy" href="/CBM/browser/cbm/trunk/fixtures/roleData.groovy">roleData.groovy</a>
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
            Revision <a href="/CBM/changeset/515">515</a>, <span title="621 bytes">0.6 KB</span>
            (checked in by tsiamitas, <a class="timeline" href="/CBM/timeline?from=2014-11-27T17%3A10%3A23%2B0100&amp;precision=second" title="2014-11-27T17:10:23+0100 in Timeline">10 minutes</a> ago)
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
    <table class="code"><thead><tr><th class="lineno" title="Line numbers">Line</th><th class="content"> </th></tr></thead><tbody><tr><th id="L1"><a href="#L1">1</a></th><td>/**</td></tr><tr><th id="L2"><a href="#L2">2</a></th><td> * Created with IntelliJ IDEA.</td></tr><tr><th id="L3"><a href="#L3">3</a></th><td> * User: jutliah</td></tr><tr><th id="L4"><a href="#L4">4</a></th><td> * Date: 5/26/14</td></tr><tr><th id="L5"><a href="#L5">5</a></th><td> * Time: 5:24 PM</td></tr><tr><th id="L6"><a href="#L6">6</a></th><td> * To change this template use File | Settings | File Templates.</td></tr><tr><th id="L7"><a href="#L7">7</a></th><td> */</td></tr><tr><th id="L8"><a href="#L8">8</a></th><td></td></tr><tr><th id="L9"><a href="#L9">9</a></th><td></td></tr><tr><th id="L10"><a href="#L10">10</a></th><td>import cbm.admin.Country</td></tr><tr><th id="L11"><a href="#L11">11</a></th><td>import cbm.admin.StateParty</td></tr><tr><th id="L12"><a href="#L12">12</a></th><td>import cbm.usermgt.SecRole</td></tr><tr><th id="L13"><a href="#L13">13</a></th><td>import cbm.usermgt.SecUserSecRole</td></tr><tr><th id="L14"><a href="#L14">14</a></th><td>import cbm.usermgt.User</td></tr><tr><th id="L15"><a href="#L15">15</a></th><td>import org.joda.time.LocalDate</td></tr><tr><th id="L16"><a href="#L16">16</a></th><td></td></tr><tr><th id="L17"><a href="#L17">17</a></th><td></td></tr><tr><th id="L18"><a href="#L18">18</a></th><td></td></tr><tr><th id="L19"><a href="#L19">19</a></th><td>/** create application roles */</td></tr><tr><th id="L20"><a href="#L20">20</a></th><td>fixture {</td></tr><tr><th id="L21"><a href="#L21">21</a></th><td></td></tr><tr><th id="L22"><a href="#L22">22</a></th><td>        roleViewer(SecRole) {</td></tr><tr><th id="L23"><a href="#L23">23</a></th><td>        authority = 'ROLE_VIEWER'</td></tr><tr><th id="L24"><a href="#L24">24</a></th><td>    }</td></tr><tr><th id="L25"><a href="#L25">25</a></th><td>        </td></tr><tr><th id="L26"><a href="#L26">26</a></th><td>    roleEditor(SecRole) {</td></tr><tr><th id="L27"><a href="#L27">27</a></th><td>        authority = 'ROLE_EDITOR'</td></tr><tr><th id="L28"><a href="#L28">28</a></th><td>    }</td></tr><tr><th id="L29"><a href="#L29">29</a></th><td>        </td></tr><tr><th id="L30"><a href="#L30">30</a></th><td>        roleSubmitter(SecRole) {</td></tr><tr><th id="L31"><a href="#L31">31</a></th><td>                authority = 'ROLE_SUBMITTER'</td></tr><tr><th id="L32"><a href="#L32">32</a></th><td>        }</td></tr><tr><th id="L33"><a href="#L33">33</a></th><td>        </td></tr><tr><th id="L34"><a href="#L34">34</a></th><td>        roleAdmin(SecRole) {</td></tr><tr><th id="L35"><a href="#L35">35</a></th><td>                authority = 'ROLE_ADMIN'</td></tr><tr><th id="L36"><a href="#L36">36</a></th><td>        }</td></tr><tr><th id="L37"><a href="#L37">37</a></th><td>}</td></tr></tbody></table>
      </div>
      <div id="help">
        <strong>Note:</strong> See <a href="/CBM/wiki/TracBrowser">TracBrowser</a>
        for help on using the browser.
      </div>
      <div id="anydiff">
        <form action="/CBM/diff" method="get">
          <div class="buttons">
            <input type="hidden" name="new_path" value="/cbm/trunk/fixtures/roleData.groovy" />
            <input type="hidden" name="old_path" value="/cbm/trunk/fixtures/roleData.groovy" />
            <input type="hidden" name="new_rev" value="515" />
            <input type="hidden" name="old_rev" value="515" />
            <input type="submit" value="View changes..." title="Select paths and revs for Diff" />
          </div>
        </form>
      </div>
    </div>
    <div id="altlinks">
      <h3>Download in other formats:</h3>
      <ul>
        <li class="last first">
          <a rel="nofollow" href="/CBM/export/515/cbm/trunk/fixtures/roleData.groovy">Original Format</a>
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