rendering
renderKeepAliveOn: canvas
   | cacheTimeout |
   cacheTimeout := self session application configuration at: #maximumRelativeAge.
   canvas document addLoadScript:
       (canvas jQuery ajax
           callback: [];
           interval: (cacheTimeout - 60) seconds)