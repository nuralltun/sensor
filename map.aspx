<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="map.aspx.cs" Inherits="BilimselOdev.map" %>

<!DOCTYPE html>



<html>
<head>
<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
<meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
<title>Google Maps JavaScript API v3 Example: Map Geolocation</title>
 <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3179.504975998887!2d28.371497215300245!3d37.1644685798752!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14bf73c9263b4757%3A0x3a1020fa0911b7a4!2zTXXEn2xhIFPEsXRrxLEgS2_Dp21hbiDDnG5pdmVyc2l0ZXNp!5e0!3m2!1str!2str!4v1654518967211!5m2!1str!2str" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
</head>
<body>
<form name="harita_formu" method="post">
            <input type="hidden" name="tur" value="harita">
            <table id="box-table-a">
                <tbody>
                    <tr>
                        <td>Harita</td>
                        <td>
                            <script type="text/javascript"
                                   
                            </script>
                            <script type="text/javascript">
                                function initialize() {
                                    var Koordinatlar = new google.maps.LatLng(39.86156903970107,32.83813489062504);
                                    var myOptions = {
                                        zoom: 6,
                                        center: Koordinatlar,
                                        mapTypeId: google.maps.MapTypeId.HYBRID
                                    };
                                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3179.504975998887!2d28.371497215300245!3d37.1644685798752!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14bf73c9263b4757%3A0x3a1020fa0911b7a4!2zTXXEn2xhIFPEsXRrxLEgS2_Dp21hbiDDnG5pdmVyc2l0ZXNp!5e0!3m2!1str!2str!4v1654518967211!5m2!1str!2str" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                                    var map = new google.maps.Map(document.getElementById("map_canvas"),
                                    myOptions);
                                    var BilgiPenceresi = new google.maps.InfoWindow(
                                    { content: 'google map',
                                        size: new google.maps.Size(50,50),
                                        position: Koordinatlar
                                    });
                                    BilgiPenceresi.open(map);
                                    var Isagretci = new google.maps.Marker({
                                        map:map,
                                        draggable:true,
                                        animation: google.maps.Animation.DROP,
                                        position: Koordinatlar,
                                        icon: 'http://google-maps-icons.googlecode.com/files/factory.png'
                                    });
                                    google.maps.event.addListener(Isagretci, 'dragend', function(){
                                        Isagretci.setAnimation(google.maps.Animation.BOUNCE);
                                    });
                                    google.maps.event.addListener(map, 'click', function(event){
                                        //map.setCenter(event.latLng);
                                        BilgiPenceresi.setPosition(event.latLng);
                                        Isagretci.setPosition(event.latLng);
                                        document.forms['harita_formu'].elements['harita_zoom'].value=map.getZoom();
document.forms['harita_formu'].elements['harita_geo'].value=event.latLng.lat()+","+event.latLng.lng();
                                    });
                                    google.maps.event.addListener(map, 'zoom_changed', function(event) {
                                        document.forms['harita_formu'].elements['harita_zoom'].value=map.getZoom();
//document.forms['harita_formu'].elements['harita_geo'].value=event.latLng.lat()+","+event.latLng.lng();
                                    });
                                }
                            </script>
                            <%--<div id="map_canvas" style="width:605px; height: 400px; border:10px solid #e3e3ca"><script type="text/javascript">initialize()</script></div>--%>
                            <input type="text" name="harita_geo" value="39.86156903970107,32.83813489062504" />
                            <input type="text" name="harita_zoom" value="6"  />
                            <div class="f_kc">
                               
                            </div>
                        </td>
                    </tr>
                    
                    <tr>
                        <td></td>
                        <td><input type="button" class="genel buton buton2" value="Kaydet" onclick="DugmeleriKitle(); submit();" /></td>
                    </tr>
                </tbody>
            </table>
        </form>
</body>
</html>
