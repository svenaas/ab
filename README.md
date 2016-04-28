# A/B
Simple Rack utility for A/B testing via URL redirect

## Usage

Pass A/B a querystring with one or more key/value pairs. A/B ignores the keys and assumes the values are valid URLs. One of these values is chosen and random, and the requester is 302-redirected to that URL.

### Example

With the querystring

```
?a=http://google.com/&b=http://yahoo.com/
```

A/B will randomly redirect visitors to either `http://google.com/` or `http://yahoo.com/`.

## Requirements

Bundler and Rack availability are assumed. This script has been tested locally using rackup and on a server running Passenger.

