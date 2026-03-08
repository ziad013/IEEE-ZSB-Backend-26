GET vs POST:

Get:
-Sends form data in the URL after ?
-Easy to test
-Good for simple data
but
-Not secure for sensitive data because it appears in the URL.
-Limited amount of data
Post:
-Sends form data in the request body
-Secure for sensitive data.
-Can send large amounts
but 
-Cannot share the URL to replicate the request.




Semantic HTML:

We could build the whole website using only <div>
tags. Why is it "better" to use tags like <header>,
<main>, <section>, and <footer>????

- because describe the purpose of each part of the Page
(<header> = page header, <main> = main content, <section> = specific section, <footer> = page footer.)
-Developers can understand the page structure quickly
-More meaningful than <div>
<div> has no semantic meaning it is just a container.



The Request/Response Cycle:

The Request/Response Cycle:
● When you type google.com and hit Enter, briefly
explain the steps your browser takes to fetch the
page (Mention DNS and IP).

1-Check Cache

The browser first checks if it already has a cached copy of the page or the DNS info.

If found, it can use it without asking the server again.

2-DNS Lookup

The browser asks a DNS server to translate google.com into its IP address.

3-Open Connection

The browser opens a TCP connection with the server at the IP address, usually on port 443 for HTTPS.

4-Send HTTP/HTTPS Request

The browser sends an HTTP GET request asking for the page content.

5-Server Response

The server processes the request and sends back the HTML, CSS, JS, images, etc.

6-Render Page

The browser reads the HTML, builds the DOM, applies CSS, runs JS, and displays the page on the screen.