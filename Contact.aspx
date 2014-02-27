<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Main.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Buffac.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <title>Buffalo's Mechanical, Inc. | Northern & Central California HVAC Construction Contractor | Contact Us | Ripon, San Francisco Bay Area</title>

        <meta name="description" content="Buffalo's Mechanical, Inc. is a commercial/industrial Mechanical Contractor serving Northern/Central California by providing quality HVAC construction and service since 1995. Contact Us">
        <meta name="keywords" content="Commercial air conditioners, commercial heating, commercial cooling, commercial HVAC systems, heating systems, packaged rooftop units, commercial heat pumps, commercial controls, split systems, Lennox Commercial, Broan, Carrier, Cook, Day & night, Goodman, Greenheck, PennBarry, Titus, Trane, York, American Metal, Contact Us">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
                <div class="breadscrumbs">
                <div class="container">
                    <ul class="clearfix">
                        <li><a href="#">Home</a>/</li>
                        <li><a href="#">Contact</a></li>
                    </ul>
                </div>
            </div>
            <div class="main contactpage">
                    <div class="shortcode-google-frame">
                        <iframe src="https://www.google.com/maps/ms?msa=0&amp;msid=212103207544004487817.0004cffde6c8d0ef9bfad&amp;ie=UTF8&amp;ll=37.654144,-121.580887&amp;spn=0.972339,0.907746&amp;t=m&amp;output=embed"></iframe>
                    </div>
                <div class="container">
                    <div class="row-fluid">
                        <section class="content span12">
                            <div class="span5" style="margin-left:30px; margin-top:55px;">
                            <img src="/Images/slides/slide-2/title.png" /><br />
                            <img src="/Images/slides/slide-2/subtitle.png" /><br />
                             <form runat="server" id="sliderform" style="top: 175px; left: 100px; slidedirection: bottom; slideoutdirection: bottom; delayin: 1400; durationout: 1000;" class="ls-s5 slider-form clearfix" >
                                    <asp:TextBox ID="name" style="width:346px;" runat="server" name="author" value="Your name" class="input-1" 
                                        onfocus="if(this.value=='Your name')this.value='';" onblur="if(this.value=='')this.value='Your name';" /><br />
                                    <asp:TextBox ID="email" style="width:346px;" runat="server" name="email" value="Your email"  class="input-2"  
                                        onfocus="if(this.value=='Your email')this.value='';" onblur="if(this.value=='')this.value='Your email';" />
                                    <asp:TextBox ID="message" runat="server" name="message" value="Your message" class="input-3"
                                        onfocus="if(this.value=='Your message')this.value='';" onblur="if(this.value=='')this.value='Your message';" />
                                    <%--<input type="submit" value="Send." class="button form-button" />--%>
                                    <asp:LinkButton
                                        runat="server"
                                        ID="lbSubmit"
                                        CssClass="button form-button" 
                                        Style="text-align:center"
                                        OnClick="SendMessage">Send</asp:LinkButton>
                                </form>
                                </div>
                            <div class="span5" style="float:right;">
                                <img src="/Images/slides/slide-2/slidelogo.png" />
                            </div>
                        </section>

                        <section class="content span12">
                            <div class="span6">
                                <div class="content-title">
                                    <h4>Central Valley - Headquarters</h4>
                                </div>
                                <ul>
                                    <li class="contact-info-address"><i class="icon-building"></i>800B South Stockton Avenue <br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Ripon, CA 95366</li>
                                    <li class="contact-info-phone"><i class="icon-phone"></i>1 (209) 599-1700</li>
                                    <li class="contact-info-phone"><i class="icon-print"></i>1 (209) 599-1717</li>
                                </ul><br /><br />
                                <ul>
                                 <li class="contact-info-phone"><i class="icon-user"></i>President - Jason Buffalow</li>
                                 <li class="contact-info-phone"><i class="icon-envelope"></i><a href="mailto:jb@buffac.com?Subject=Hello%20">jb@buffac.com</a></li>
                                </ul>
                                 <br />
                                <ul>
                                 <li class="contact-info-phone"><i class="icon-user"></i>Office Manager - Gina Buffalow</li>
                                 <li class="contact-info-phone"><i class="icon-envelope"></i><a href="mailto:gina@buffac.com?Subject=Hello%20">gina@buffac.com</a></li>
                                </ul>
                                 <br />
                                <ul>
                                 <li class="contact-info-phone"><i class="icon-user"></i>Construction Project Manager - &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Jason Hodges</li>
                                 <li class="contact-info-phone"><i class="icon-envelope"></i><a href="mailto:jh@buffac.com?Subject=Hello%20">jh@buffac.com</a></li>
                                </ul>
                            </div>
                            <div class="span6">
                                <div class="content-title">
                                    <h4>San Francisco Bay Area </h4>
                                </div>
                                <ul>
                                    <li class="contact-info-address"><i class="icon-building"></i>544 E. Weddell Drive Suite #08 <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Sunnyvale, CA 94089</li>
                                    <li class="contact-info-phone"><i class="icon-phone"> </i>1(408) 734-1800</li>
                                    <li class="contact-info-phone"><i class="icon-print"></i> 1(408) 734-1888</li>
                                </ul><br /><br />
                                 <ul>
                                 <li class="contact-info-phone"><i class="icon-user"></i>Service & Piping Division &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Manager - Henry Buffalow</li>
                                 <li class="contact-info-phone"><i class="icon-envelope"></i><a href="mailto:hb@buffac.com?Subject=Hello%20">hb@buffac.com</a></li>
                                </ul>
                            </div>
                        </section> <!-- End Content -->

                        <%--<aside class="sidebar widgets-light span3">
                            <!-- Contact info Widget -->
                            <div class="widget-box widget-contact-info">
                                <div class="content-title">
                                    <h4 class="widget-title">Contact Information</h4>
                                </div>
                                <p class="widget-sub-title">Central Valley Headquarters </p>
                                <ul>
                                    <li class="contact-info-address"><i class="icon-building"></i>800B South Stockton Avenue <br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Ripon, CA 95366</li>
                                    <li class="contact-info-phone"><i class="icon-phone"></i>1 (209) 599-1700</li>
                                    <li class="contact-info-phone"><i class="icon-print"></i>1 (209) 599-1717</li>
                                </ul>
                            </div>
                                                        <div class="widget-box widget-contact-info">
                                <p class="widget-sub-title">San Francisco Bay Area</p>
                                <ul>
                                    <li class="contact-info-address"><i class="icon-building"></i>544 E. Weddell Drive Suite #08 <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Sunnyvale, CA 94089</li>
                                    <li class="contact-info-phone"><i class="icon-phone"> </i>1(408) 734-1800</li>
                                    <li class="contact-info-phone"><i class="icon-print"></i> 1(408) 734-1888</li>
                                </ul>
                            </div>

                        </aside>--%>

                    </div>
                </div>
            </div> <!-- Close Main -->
    
    <script type="text/javascript">
        updateCurrentNav("Contact Us");
    </script>
</asp:Content>
