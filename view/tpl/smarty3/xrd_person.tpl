<?xml version="1.0" encoding="UTF-8"?>
<XRD xmlns="http://docs.oasis-open.org/ns/xri/xrd-1.0">
 
    <Subject>{{$accturi}}</Subject>
	<Alias>{{$accturi}}</Alias>
    <Alias>{{$profile_url}}</Alias>
 
    <Link rel="http://purl.org/macgirvin/dfrn/1.0"
          href="{{$profile_url}}" />
    <Link rel="http://schemas.google.com/g/2010#updates-from" 
          type="application/atom+xml" 
          href="{{$atom}}" />
    <Link rel="http://webfinger.net/rel/profile-page"
          type="text/html"
          href="{{$profile_url}}" />
    <Link rel="http://microformats.org/profile/hcard"
          type="text/html"
          href="{{$hcard_url}}" />
    <Link rel="http://portablecontacts.net/spec/1.0"
          href="{{$poco_url}}" />
    <Link rel="http://webfinger.net/rel/avatar"
          type="image/jpeg"
          href="{{$photo}}" />
 
	<Property xmlns:mk="http://salmon-protocol.org/ns/magic-key"
          type="http://salmon-protocol.org/ns/magic-key"
          mk:key_id="1">{{$bigkey}}</Property>

</XRD>