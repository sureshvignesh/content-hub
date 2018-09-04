## content-hub
Powerful content management platform for users to upload their photos

## Instructions to set up
1. Clone the repository
2. bundle install
3. brew install imagemagick (MacOS)
4. rails server

## Uploading a File 

Endpoint: [http://localhost:3000/api/v1/upload](http://localhost:3000/api/v1/upload)

Method: POST

curl Example: 

curl -X POST \
  http://localhost:3000/api/v1/upload \
  -F file=@/Users/Vignesh/Desktop/28616667_1816898328329833_3003518477070257105_o.jpg

## Fetching Files 

Endpoint: [http://localhost:3000/api/v1/list](http://localhost:3000/api/v1/list)

Method: GET

curl Example: 

curl -X GET \
  http://localhost:3000/api/v1/list \


## Explanation 
----
# Choosing Form Data over Base64
Base64 adds some computational overhead for the encoding/decoding process and actually increases the size of a file by 33%, making it less suitable particularly for larger files.

# ImageMagick over IO stream or ruby validation 
1. Imagemagick is not a rails gem or library (specified in the problem)
2. ImageMagick can read, process, or write mega-, giga-, or tera-pixel image sizes. An image width or height can range from 1 to 2 giga-pixels on a 32 bit OS and up to 9 exa-pixels on a 64-bit OS. This helps to validate larger images without crashing and eating up lot of memory
3. Many of ImageMagick's internal algorithms are threaded to take advantage of speed-ups offered by the multicore processor chips.
